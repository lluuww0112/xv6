#include "types.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "x86.h"
#include "proc.h"
#include "spinlock.h"

// MLFQ
// Don't modify
enum queuelevel{
  HIGH,
  MID,
  LOW,
};
// Don't modify
enum tSlice{  //time slice size (3 level)
  tHigh = 200,
  tMid = 300,
  tLow = 350,
};


struct {
  struct spinlock lock;
  struct proc proc[NPROC];
} ptable;

struct queue_node {
  struct proc *p;
  struct queue_node *next;
};

struct queue {
  struct queue_node *head;
  struct queue_node *tail;
};

struct mlfq {
  struct queue q[3];  // HIGH, MID, LOW 3개의 큐
}mlfq;


int queue_count[3] = {0, 0, 0};
int get_max_mlfq_height(){
  int i = 0;
  for(i = 0; i < 3; i++){
    if(queue_count[i] != 0)
      return i;
  }
  
  return -1;
}


static struct proc *initproc;

int nextpid = 1;
extern void forkret(void);
extern void trapret(void);

static void wakeup1(void *chan);

// Add a process to the appropriate queue based on its level
int enqueue(struct mlfq *mlfq, struct proc *p) { // Change return type to int
  // Check all queues for a process with the same pid
  for (int level = HIGH; level <= LOW; level++) {
    struct queue *q = &mlfq->q[level];
    struct queue_node *node = q->head;
    while (node) {
      if (node->p->pid == p->pid) {
        return 0; // Do not insert if the pid already exists in any queue
      }
      node = node->next;
    }
  }

  struct queue *q = &mlfq->q[p->level];
  struct queue_node *new_node = (struct queue_node *)kalloc();
  if (!new_node)
    panic("enqueue: out of memory");
  new_node->p = p;
  new_node->next = 0;

  if (q->tail) {
    q->tail->next = new_node;
    q->tail = new_node;
  } else {
    q->head = q->tail = new_node;
  }

  queue_count[p->level]++; // Increment the count for the corresponding queue
  return 1; // Successfully inserted
}

// Remove and return the first process from the queue at the given level
struct proc* dequeue(struct mlfq *mlfq, int level) {
  struct queue *q = &mlfq->q[level];
  if (!q->head)
    return 0;

  struct queue_node *node = q->head;
  struct proc *p = node->p;
  q->head = node->next;
  if (!q->head)
    q->tail = 0;

  kfree((char *)node);
  queue_count[level]--; // Decrement the count for the corresponding queue
  return p;
}

// Remove a specific process from the queue based on its pointer
int remove_from_mlfq(struct mlfq *mlfq, struct proc *p) {
  for (int level = HIGH; level <= LOW; level++) {
    struct queue *q = &mlfq->q[level];
    struct queue_node *prev = 0;
    struct queue_node *cur = q->head;

    while (cur) {
      if (cur->p == p) { // Compare pointers directly
        if (prev) {
          prev->next = cur->next;
        } else {
          q->head = cur->next;
        }
        if (cur == q->tail) {
          q->tail = prev;
        }
        kfree((char *)cur);
        queue_count[level]--; // Decrement the count for the corresponding queue
        return 1; // Successfully removed
      }
      prev = cur;
      cur = cur->next;
    }
  }
  return 0; // Not found
}

// Print the pids and states of processes in each queue
void print_mlfq_pids(struct mlfq *mlfq) {
  static char *states[] = {
    [UNUSED]    "UNUSED",
    [EMBRYO]    "EMBRYO",
    [SLEEPING]  "SLEEPING",
    [RUNNABLE]  "RUNNABLE",
    [RUNNING]   "RUNNING",
    [ZOMBIE]    "ZOMBIE"
  };

  for (int level = HIGH; level <= LOW; level++) {
    struct queue *q = &mlfq->q[level];
    struct queue_node *node = q->head;

    cprintf("Queue Level %d: ", level);
    if (!node) {
      cprintf("Empty\n");
      continue;
    }

    while (node) {
      if (node->p) {
        char *state = (node->p->state >= 0 && node->p->state < NELEM(states)) ? states[node->p->state] : "UNKNOWN";
        cprintf("[pid: %d, state: %s] ", node->p->pid, state);
      } else {
        cprintf("[NULL] ");
      }
      node = node->next;
    }
    cprintf("\n");
  }
}

void print_ptable_states(void) {
  static char *states[] = {
    [UNUSED]    "UNUSED",
    [EMBRYO]    "EMBRYO",
    [SLEEPING]  "SLEEPING",
    [RUNNABLE]  "RUNNABLE",
    [RUNNING]   "RUNNING",
    [ZOMBIE]    "ZOMBIE"
  };

  cprintf("PTable States:\n");
  for (struct proc *p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
    if (p->state == RUNNABLE || p->state == RUNNING || 
        p->state == ZOMBIE || p->state == SLEEPING) {
      char *state = (p->state >= 0 && p->state < NELEM(states)) ? states[p->state] : "UNKNOWN";
      cprintf("[pid: %d, state: %s, level: %d, chan: %p]\n", p->pid, state, p->level, p->chan);
    }
  }
}

void
pinit(void)
{
  initlock(&ptable.lock, "ptable");
}

// Must be called with interrupts disabled
int
cpuid() {
  return mycpu()-cpus;
}

// Must be called with interrupts disabled to avoid the caller being
// rescheduled between reading lapicid and running through the loop.
struct cpu*
mycpu(void)
{
  int apicid, i;
  
  if(readeflags()&FL_IF)
    panic("mycpu called with interrupts enabled\n");
  
  apicid = lapicid();
  // APIC IDs are not guaranteed to be contiguous. Maybe we should have
  // a reverse map, or reserve a register to store &cpus[i].
  for (i = 0; i < ncpu; ++i) {
    if (cpus[i].apicid == apicid)
      return &cpus[i];
  }
  panic("unknown apicid\n");
}

// Disable interrupts so that we are not rescheduled
// while reading proc from the cpu structure
struct proc*
myproc(void) {
  struct cpu *c;
  struct proc *p;
  pushcli();
  c = mycpu();
  p = c->proc;
  popcli();
  return p;
}

//PAGEBREAK: 32
// Look in the process table for an UNUSED proc.
// If found, change state to EMBRYO and initialize
// state required to run in the kernel.
// Otherwise return 0.
static struct proc*
allocproc(void)
{
  struct proc *p;
  char *sp;

  acquire(&ptable.lock);

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    if(p->state == UNUSED)
      goto found;

  release(&ptable.lock);
  return 0;

found:
  p->state = EMBRYO;
  p->pid = nextpid++;

  release(&ptable.lock);

  // Allocate kernel stack.
  if((p->kstack = kalloc()) == 0){
    p->state = UNUSED;
    return 0;
  }
  sp = p->kstack + KSTACKSIZE;

  // Leave room for trap frame.
  sp -= sizeof *p->tf;
  p->tf = (struct trapframe*)sp;

  // Set up new context to start executing at forkret,
  // which returns to trapret.
  sp -= 4;
  *(uint*)sp = (uint)trapret;

  sp -= sizeof *p->context;
  p->context = (struct context*)sp;
  memset(p->context, 0, sizeof *p->context);
  p->context->eip = (uint)forkret;

  return p;
}

//PAGEBREAK: 32
// Set up first user process.
void
userinit(void)
{
  struct proc *p;
  extern char _binary_initcode_start[], _binary_initcode_size[];

  p = allocproc();
  
  initproc = p;
  if((p->pgdir = setupkvm()) == 0)
    panic("userinit: out of memory?");
  inituvm(p->pgdir, _binary_initcode_start, (int)_binary_initcode_size);
  p->sz = PGSIZE;
  memset(p->tf, 0, sizeof(*p->tf));
  p->tf->cs = (SEG_UCODE << 3) | DPL_USER;
  p->tf->ds = (SEG_UDATA << 3) | DPL_USER;
  p->tf->es = p->tf->ds;
  p->tf->ss = p->tf->ds;
  p->tf->eflags = FL_IF;
  p->tf->esp = PGSIZE;
  p->tf->eip = 0;  // beginning of initcode.S

  safestrcpy(p->name, "initcode", sizeof(p->name));
  p->cwd = namei("/");

  // this assignment to p->state lets other cores
  // run this process. the acquire forces the above
  // writes to be visible, and the lock is also needed
  // because the assignment might not be atomic.
  acquire(&ptable.lock);

  p->state = RUNNABLE;
  p->level = HIGH;
  p->leftTime = tHigh;

  release(&ptable.lock);

}

// Grow current process's memory by n bytes.
// Return 0 on success, -1 on failure.
int
growproc(int n)
{
  uint sz;
  struct proc *curproc = myproc();

  sz = curproc->sz;
  if(n > 0){
    if((sz = allocuvm(curproc->pgdir, sz, sz + n)) == 0)
      return -1;
  } else if(n < 0){
    if((sz = deallocuvm(curproc->pgdir, sz, sz + n)) == 0)
      return -1;
  }
  curproc->sz = sz;
  switchuvm(curproc);
  return 0;
}

// Create a new process copying p as the parent.
// Sets up stack to return as if from system call.
// Caller must set state of returned proc to RUNNABLE.
int
fork(void)
{
  int i, pid;
  struct proc *np;
  struct proc *curproc = myproc();

  // Allocate process.
  if((np = allocproc()) == 0){
    return -1;
  }

  // Copy process state from proc.
  if((np->pgdir = copyuvm(curproc->pgdir, curproc->sz)) == 0){
    kfree(np->kstack);
    np->kstack = 0;
    np->state = UNUSED;
    return -1;
  }
  np->sz = curproc->sz;
  np->parent = curproc;
  *np->tf = *curproc->tf;

  /* ******************** */
  np->level = HIGH;
  np->leftTime = tHigh;
  /* ******************** */
  
  // Clear %eax so that fork returns 0 in the child.
  np->tf->eax = 0;

  for(i = 0; i < NOFILE; i++)
    if(curproc->ofile[i])
      np->ofile[i] = filedup(curproc->ofile[i]);
  np->cwd = idup(curproc->cwd);

  safestrcpy(np->name, curproc->name, sizeof(curproc->name));

  pid = np->pid;

  acquire(&ptable.lock);

  np->state = RUNNABLE;

  release(&ptable.lock);

  return pid;
}

// Exit the current process.  Does not return.
// An exited process remains in the zombie state
// until its parent calls wait() to find out it exited.
void
exit(void)
{
  struct proc *curproc = myproc();
  struct proc *p;
  int fd;

  if(curproc == initproc)
    panic("init exiting");

  // Close all open files.
  for(fd = 0; fd < NOFILE; fd++){
    if(curproc->ofile[fd]){
      fileclose(curproc->ofile[fd]);
      curproc->ofile[fd] = 0;
    }
  }

  begin_op();
  iput(curproc->cwd);
  end_op();
  curproc->cwd = 0;

  acquire(&ptable.lock);

  // Parent might be sleeping in wait().
  wakeup1(curproc->parent);

  // Pass abandoned children to init.
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
    if(p->parent == curproc){
      p->parent = initproc;
      if(p->state == ZOMBIE)
        wakeup1(initproc);
    }
  }

  // Jump into the scheduler, never to return.
  curproc->state = ZOMBIE;

  sched();
  panic("zombie exit");
}

// Wait for a child process to exit and return its pid.
// Return -1 if this process has no children.
int
wait(void)
{
  struct proc *p;
  int havekids, pid;
  struct proc *curproc = myproc();
  
  acquire(&ptable.lock);
  for(;;){
    // Scan through table looking for exited children.
    havekids = 0;
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
      if(p->parent != curproc)
        continue;
      havekids = 1;
      if(p->state == ZOMBIE){
        // Found one.
        pid = p->pid;
        kfree(p->kstack);
        p->kstack = 0;
        freevm(p->pgdir);
        p->pid = 0;
        p->parent = 0;
        p->name[0] = 0;
        p->killed = 0;
        p->state = UNUSED;
        release(&ptable.lock);
        return pid;
      }
    }

    // No point waiting if we don't have any children.
    if(!havekids || curproc->killed){
      release(&ptable.lock);
      return -1;
    }

    // Wait for children to exit.  (See wakeup1 call in proc_exit.)
    sleep(curproc, &ptable.lock);  //DOC: wait-sleep
  }
}

//PAGEBREAK: 42
// Per-CPU process scheduler.
// Each CPU calls scheduler() after setting itself up.
// Scheduler never returns. It loops, doing:
//  - choose a process to run
//  - swtch to start running that process
//  - eventually that process transfers control
//      via swtch back to the scheduler.
void recover_time(struct proc* p){
  switch (p->level)
  {
  case HIGH:
    p->leftTime = tHigh;
    break;
  case MID:
    p->leftTime = tMid;
    break;
  case LOW:
    p->leftTime = tLow;
    break;
  }
}

void down_level(struct proc* p){
  if(p->level < LOW){
    p->level++;
  }
  recover_time(p);
}

int get_top(){
  int height = LOW;
  struct proc* p;

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
    if(p->state == RUNNABLE && p->level <= height)
      height = p->level;
  }

  return height;
}


void
scheduler(void)
{
  struct proc *p;
  struct cpu *c = mycpu();
  c->proc = 0;
  
  for(;;){
    // Enable interrupts on this processor.
    sti();

    // Loop over process table looking for process to run.
    acquire(&ptable.lock);

    // 현재 프로세스 들 중 가낭 높은 우선도를 검색하여 저장
    int height = get_top();

    // 검색된 층에 대해서만 프로세스 스위칭을 실행
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
      if(p->level != height)
        continue;
      if(p->state != RUNNABLE)
        continue;

      recover_time(p);
      
      // 실행
      c->proc = p;
      switchuvm(p);
      p->state = RUNNING;


      swtch(&(c->scheduler), p->context);
      switchkvm();

      c->proc = 0;

      if(p->state == RUNNABLE){
        if(p->leftTime == 0){
          down_level(p);
        }
      }

      // cprintf("\n");
      // print_ptable_states();
      // cprintf("\n");

    }
    release(&ptable.lock);

  }
}



// Enter scheduler.  Must hold only ptable.lock
// and have changed proc->state. Saves and restores
// intena because intena is a property of this
// kernel thread, not this CPU. It should
// be proc->intena and proc->ncli, but that would
// break in the few places where a lock is held but
// there's no process.
void
sched(void)
{
  int intena;
  struct proc *p = myproc();

  if(!holding(&ptable.lock))
    panic("sched ptable.lock");
  if(mycpu()->ncli != 1)
    panic("sched locks");
  if(p->state == RUNNING)
    panic("sched running");
  if(readeflags()&FL_IF)
    panic("sched interruptible");
  intena = mycpu()->intena;
  swtch(&p->context, mycpu()->scheduler);
  mycpu()->intena = intena;
}

// Give up the CPU for one scheduling round.
void
yield(void)
{
  acquire(&ptable.lock);  //DOC: yieldlock
  myproc()->state = RUNNABLE;
  sched();
  release(&ptable.lock);
}

// A fork child's very first scheduling by scheduler()
// will swtch here.  "Return" to user space.
void
forkret(void)
{
  static int first = 1;
  // Still holding ptable.lock from scheduler.
  release(&ptable.lock);

  if (first) {
    // Some initialization functions must be run in the context
    // of a regular process (e.g., they call sleep), and thus cannot
    // be run from main().
    first = 0;
    iinit(ROOTDEV);
    initlog(ROOTDEV);
  }

  // Return to "caller", actually trapret (see allocproc).
}

// Atomically release lock and sleep on chan.
// Reacquires lock when awakened.
void
sleep(void *chan, struct spinlock *lk)
{
  struct proc *p = myproc();
  
  if(p == 0)
    panic("sleep");

  if(lk == 0)
    panic("sleep without lk");

  // Must acquire ptable.lock in order to
  // change p->state and then call sched.
  // Once we hold ptable.lock, we can be
  // guaranteed that we won't miss any wakeup
  // (wakeup runs with ptable.lock locked),
  // so it's okay to release lk.
  if(lk != &ptable.lock){  //DOC: sleeplock0
    acquire(&ptable.lock);  //DOC: sleeplock1
    release(lk);
  }
  // Go to sleep.
  p->chan = chan;
  p->state = SLEEPING;

  sched();

  // Tidy up.
  p->chan = 0;

  // Reacquire original lock.
  if(lk != &ptable.lock){  //DOC: sleeplock2
    release(&ptable.lock);
    acquire(lk);
  }
}

//PAGEBREAK!
// Wake up all processes sleeping on chan.
// The ptable lock must be held.
static void
wakeup1(void *chan)
{
  struct proc *p;

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    if(p->state == SLEEPING && p->chan == chan)
      p->state = RUNNABLE;
}

// Wake up all processes sleeping on chan.
void
wakeup(void *chan)
{
  acquire(&ptable.lock);
  wakeup1(chan);
  release(&ptable.lock);
}

// Kill the process with the given pid.
// Process won't exit until it returns
// to user space (see trap in trap.c).
int
kill(int pid)
{
  struct proc *p;

  acquire(&ptable.lock);
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
    if(p->pid == pid){
      p->killed = 1;
      // Wake process from sleep if necessary.
      if(p->state == SLEEPING)
        p->state = RUNNABLE;
      release(&ptable.lock);
      return 0;
    }
  }
  release(&ptable.lock);
  return -1;
}

//PAGEBREAK: 36
// Print a process listing to console.  For debugging.
// Runs when user types ^P on console.
// No lock to avoid wedging a stuck machine further.
void
procdump(void)
{
  static char *states[] = {
  [UNUSED]    "unused",
  [EMBRYO]    "embryo",
  [SLEEPING]  "sleep ",
  [RUNNABLE]  "runble",
  [RUNNING]   "run   ",
  [ZOMBIE]    "zombie"
  };
  int i;
  struct proc *p;
  char *state;
  uint pc[10];

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
    if(p->state == UNUSED)
      continue;
    if(p->state >= 0 && p->state < NELEM(states) && states[p->state])
      state = states[p->state];
    else
      state = "???";
    cprintf("%d %s %s", p->pid, state, p->name);
    if(p->state == SLEEPING){
      getcallerpcs((uint*)p->context->ebp+2, pc);
      for(i=0; i<10 && pc[i] != 0; i++)
        cprintf(" %p", pc[i]);
    }
    cprintf("\n");
  }
}

// MLFQ debugging function provided
// Just debugging for Process's level in MLFQ test case
int getlevel(void)
{
  struct proc *p;
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
    if (p -> state == RUNNING)
      return p->level;
  }

  return -1;
}
