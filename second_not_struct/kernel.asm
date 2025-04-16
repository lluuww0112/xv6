
kernel:     file format elf32-i386


Disassembly of section .text:

80100000 <multiboot_header>:
80100000:	02 b0 ad 1b 00 00    	add    0x1bad(%eax),%dh
80100006:	00 00                	add    %al,(%eax)
80100008:	fe 4f 52             	decb   0x52(%edi)
8010000b:	e4                   	.byte 0xe4

8010000c <entry>:
8010000c:	0f 20 e0             	mov    %cr4,%eax
8010000f:	83 c8 10             	or     $0x10,%eax
80100012:	0f 22 e0             	mov    %eax,%cr4
80100015:	b8 00 90 10 00       	mov    $0x109000,%eax
8010001a:	0f 22 d8             	mov    %eax,%cr3
8010001d:	0f 20 c0             	mov    %cr0,%eax
80100020:	0d 00 00 01 80       	or     $0x80010000,%eax
80100025:	0f 22 c0             	mov    %eax,%cr0
80100028:	bc d0 b5 10 80       	mov    $0x8010b5d0,%esp
8010002d:	b8 8b 2a 10 80       	mov    $0x80102a8b,%eax
80100032:	ff e0                	jmp    *%eax

80100034 <binit>:
80100034:	55                   	push   %ebp
80100035:	89 e5                	mov    %esp,%ebp
80100037:	53                   	push   %ebx
80100038:	83 ec 0c             	sub    $0xc,%esp
8010003b:	68 40 69 10 80       	push   $0x80106940
80100040:	68 e0 b5 10 80       	push   $0x8010b5e0
80100045:	e8 8b 3f 00 00       	call   80103fd5 <initlock>
8010004a:	c7 05 2c fd 10 80 dc 	movl   $0x8010fcdc,0x8010fd2c
80100051:	fc 10 80 
80100054:	c7 05 30 fd 10 80 dc 	movl   $0x8010fcdc,0x8010fd30
8010005b:	fc 10 80 
8010005e:	83 c4 10             	add    $0x10,%esp
80100061:	bb 14 b6 10 80       	mov    $0x8010b614,%ebx
80100066:	a1 30 fd 10 80       	mov    0x8010fd30,%eax
8010006b:	89 43 54             	mov    %eax,0x54(%ebx)
8010006e:	c7 43 50 dc fc 10 80 	movl   $0x8010fcdc,0x50(%ebx)
80100075:	83 ec 08             	sub    $0x8,%esp
80100078:	68 47 69 10 80       	push   $0x80106947
8010007d:	8d 43 0c             	lea    0xc(%ebx),%eax
80100080:	50                   	push   %eax
80100081:	e8 45 3e 00 00       	call   80103ecb <initsleeplock>
80100086:	a1 30 fd 10 80       	mov    0x8010fd30,%eax
8010008b:	89 58 50             	mov    %ebx,0x50(%eax)
8010008e:	89 1d 30 fd 10 80    	mov    %ebx,0x8010fd30
80100094:	81 c3 5c 02 00 00    	add    $0x25c,%ebx
8010009a:	83 c4 10             	add    $0x10,%esp
8010009d:	81 fb dc fc 10 80    	cmp    $0x8010fcdc,%ebx
801000a3:	72 c1                	jb     80100066 <binit+0x32>
801000a5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801000a8:	c9                   	leave  
801000a9:	c3                   	ret    

801000aa <bread>:
801000aa:	55                   	push   %ebp
801000ab:	89 e5                	mov    %esp,%ebp
801000ad:	57                   	push   %edi
801000ae:	56                   	push   %esi
801000af:	53                   	push   %ebx
801000b0:	83 ec 18             	sub    $0x18,%esp
801000b3:	8b 75 08             	mov    0x8(%ebp),%esi
801000b6:	8b 7d 0c             	mov    0xc(%ebp),%edi
801000b9:	68 e0 b5 10 80       	push   $0x8010b5e0
801000be:	e8 5a 40 00 00       	call   8010411d <acquire>
801000c3:	8b 1d 30 fd 10 80    	mov    0x8010fd30,%ebx
801000c9:	83 c4 10             	add    $0x10,%esp
801000cc:	81 fb dc fc 10 80    	cmp    $0x8010fcdc,%ebx
801000d2:	75 26                	jne    801000fa <bread+0x50>
801000d4:	8b 1d 2c fd 10 80    	mov    0x8010fd2c,%ebx
801000da:	81 fb dc fc 10 80    	cmp    $0x8010fcdc,%ebx
801000e0:	75 4e                	jne    80100130 <bread+0x86>
801000e2:	83 ec 0c             	sub    $0xc,%esp
801000e5:	68 4e 69 10 80       	push   $0x8010694e
801000ea:	e8 55 02 00 00       	call   80100344 <panic>
801000ef:	8b 5b 54             	mov    0x54(%ebx),%ebx
801000f2:	81 fb dc fc 10 80    	cmp    $0x8010fcdc,%ebx
801000f8:	74 da                	je     801000d4 <bread+0x2a>
801000fa:	3b 73 04             	cmp    0x4(%ebx),%esi
801000fd:	75 f0                	jne    801000ef <bread+0x45>
801000ff:	3b 7b 08             	cmp    0x8(%ebx),%edi
80100102:	75 eb                	jne    801000ef <bread+0x45>
80100104:	83 43 4c 01          	addl   $0x1,0x4c(%ebx)
80100108:	83 ec 0c             	sub    $0xc,%esp
8010010b:	68 e0 b5 10 80       	push   $0x8010b5e0
80100110:	e8 6f 40 00 00       	call   80104184 <release>
80100115:	8d 43 0c             	lea    0xc(%ebx),%eax
80100118:	89 04 24             	mov    %eax,(%esp)
8010011b:	e8 de 3d 00 00       	call   80103efe <acquiresleep>
80100120:	83 c4 10             	add    $0x10,%esp
80100123:	eb 44                	jmp    80100169 <bread+0xbf>
80100125:	8b 5b 50             	mov    0x50(%ebx),%ebx
80100128:	81 fb dc fc 10 80    	cmp    $0x8010fcdc,%ebx
8010012e:	74 b2                	je     801000e2 <bread+0x38>
80100130:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
80100134:	75 ef                	jne    80100125 <bread+0x7b>
80100136:	f6 03 04             	testb  $0x4,(%ebx)
80100139:	75 ea                	jne    80100125 <bread+0x7b>
8010013b:	89 73 04             	mov    %esi,0x4(%ebx)
8010013e:	89 7b 08             	mov    %edi,0x8(%ebx)
80100141:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80100147:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
8010014e:	83 ec 0c             	sub    $0xc,%esp
80100151:	68 e0 b5 10 80       	push   $0x8010b5e0
80100156:	e8 29 40 00 00       	call   80104184 <release>
8010015b:	8d 43 0c             	lea    0xc(%ebx),%eax
8010015e:	89 04 24             	mov    %eax,(%esp)
80100161:	e8 98 3d 00 00       	call   80103efe <acquiresleep>
80100166:	83 c4 10             	add    $0x10,%esp
80100169:	f6 03 02             	testb  $0x2,(%ebx)
8010016c:	74 0a                	je     80100178 <bread+0xce>
8010016e:	89 d8                	mov    %ebx,%eax
80100170:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100173:	5b                   	pop    %ebx
80100174:	5e                   	pop    %esi
80100175:	5f                   	pop    %edi
80100176:	5d                   	pop    %ebp
80100177:	c3                   	ret    
80100178:	83 ec 0c             	sub    $0xc,%esp
8010017b:	53                   	push   %ebx
8010017c:	e8 0e 1d 00 00       	call   80101e8f <iderw>
80100181:	83 c4 10             	add    $0x10,%esp
80100184:	eb e8                	jmp    8010016e <bread+0xc4>

80100186 <bwrite>:
80100186:	55                   	push   %ebp
80100187:	89 e5                	mov    %esp,%ebp
80100189:	53                   	push   %ebx
8010018a:	83 ec 10             	sub    $0x10,%esp
8010018d:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100190:	8d 43 0c             	lea    0xc(%ebx),%eax
80100193:	50                   	push   %eax
80100194:	e8 f2 3d 00 00       	call   80103f8b <holdingsleep>
80100199:	83 c4 10             	add    $0x10,%esp
8010019c:	85 c0                	test   %eax,%eax
8010019e:	74 14                	je     801001b4 <bwrite+0x2e>
801001a0:	83 0b 04             	orl    $0x4,(%ebx)
801001a3:	83 ec 0c             	sub    $0xc,%esp
801001a6:	53                   	push   %ebx
801001a7:	e8 e3 1c 00 00       	call   80101e8f <iderw>
801001ac:	83 c4 10             	add    $0x10,%esp
801001af:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801001b2:	c9                   	leave  
801001b3:	c3                   	ret    
801001b4:	83 ec 0c             	sub    $0xc,%esp
801001b7:	68 5f 69 10 80       	push   $0x8010695f
801001bc:	e8 83 01 00 00       	call   80100344 <panic>

801001c1 <brelse>:
801001c1:	55                   	push   %ebp
801001c2:	89 e5                	mov    %esp,%ebp
801001c4:	56                   	push   %esi
801001c5:	53                   	push   %ebx
801001c6:	8b 5d 08             	mov    0x8(%ebp),%ebx
801001c9:	8d 73 0c             	lea    0xc(%ebx),%esi
801001cc:	83 ec 0c             	sub    $0xc,%esp
801001cf:	56                   	push   %esi
801001d0:	e8 b6 3d 00 00       	call   80103f8b <holdingsleep>
801001d5:	83 c4 10             	add    $0x10,%esp
801001d8:	85 c0                	test   %eax,%eax
801001da:	74 6b                	je     80100247 <brelse+0x86>
801001dc:	83 ec 0c             	sub    $0xc,%esp
801001df:	56                   	push   %esi
801001e0:	e8 6b 3d 00 00       	call   80103f50 <releasesleep>
801001e5:	c7 04 24 e0 b5 10 80 	movl   $0x8010b5e0,(%esp)
801001ec:	e8 2c 3f 00 00       	call   8010411d <acquire>
801001f1:	8b 43 4c             	mov    0x4c(%ebx),%eax
801001f4:	83 e8 01             	sub    $0x1,%eax
801001f7:	89 43 4c             	mov    %eax,0x4c(%ebx)
801001fa:	83 c4 10             	add    $0x10,%esp
801001fd:	85 c0                	test   %eax,%eax
801001ff:	75 2f                	jne    80100230 <brelse+0x6f>
80100201:	8b 43 54             	mov    0x54(%ebx),%eax
80100204:	8b 53 50             	mov    0x50(%ebx),%edx
80100207:	89 50 50             	mov    %edx,0x50(%eax)
8010020a:	8b 43 50             	mov    0x50(%ebx),%eax
8010020d:	8b 53 54             	mov    0x54(%ebx),%edx
80100210:	89 50 54             	mov    %edx,0x54(%eax)
80100213:	a1 30 fd 10 80       	mov    0x8010fd30,%eax
80100218:	89 43 54             	mov    %eax,0x54(%ebx)
8010021b:	c7 43 50 dc fc 10 80 	movl   $0x8010fcdc,0x50(%ebx)
80100222:	a1 30 fd 10 80       	mov    0x8010fd30,%eax
80100227:	89 58 50             	mov    %ebx,0x50(%eax)
8010022a:	89 1d 30 fd 10 80    	mov    %ebx,0x8010fd30
80100230:	83 ec 0c             	sub    $0xc,%esp
80100233:	68 e0 b5 10 80       	push   $0x8010b5e0
80100238:	e8 47 3f 00 00       	call   80104184 <release>
8010023d:	83 c4 10             	add    $0x10,%esp
80100240:	8d 65 f8             	lea    -0x8(%ebp),%esp
80100243:	5b                   	pop    %ebx
80100244:	5e                   	pop    %esi
80100245:	5d                   	pop    %ebp
80100246:	c3                   	ret    
80100247:	83 ec 0c             	sub    $0xc,%esp
8010024a:	68 66 69 10 80       	push   $0x80106966
8010024f:	e8 f0 00 00 00       	call   80100344 <panic>

80100254 <consoleread>:
  }
}

int
consoleread(struct inode *ip, char *dst, int n)
{
80100254:	55                   	push   %ebp
80100255:	89 e5                	mov    %esp,%ebp
80100257:	57                   	push   %edi
80100258:	56                   	push   %esi
80100259:	53                   	push   %ebx
8010025a:	83 ec 28             	sub    $0x28,%esp
8010025d:	8b 7d 0c             	mov    0xc(%ebp),%edi
80100260:	8b 75 10             	mov    0x10(%ebp),%esi
  uint target;
  int c;

  iunlock(ip);
80100263:	ff 75 08             	pushl  0x8(%ebp)
80100266:	e8 3d 13 00 00       	call   801015a8 <iunlock>
  target = n;
8010026b:	89 75 e4             	mov    %esi,-0x1c(%ebp)
  acquire(&cons.lock);
8010026e:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
80100275:	e8 a3 3e 00 00       	call   8010411d <acquire>
  while(n > 0){
8010027a:	83 c4 10             	add    $0x10,%esp
    while(input.r == input.w){
8010027d:	bb 40 ff 10 80       	mov    $0x8010ff40,%ebx
  while(n > 0){
80100282:	85 f6                	test   %esi,%esi
80100284:	7e 68                	jle    801002ee <consoleread+0x9a>
    while(input.r == input.w){
80100286:	8b 83 80 00 00 00    	mov    0x80(%ebx),%eax
8010028c:	3b 83 84 00 00 00    	cmp    0x84(%ebx),%eax
80100292:	75 2e                	jne    801002c2 <consoleread+0x6e>
      if(myproc()->killed){
80100294:	e8 58 33 00 00       	call   801035f1 <myproc>
80100299:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
8010029d:	75 71                	jne    80100310 <consoleread+0xbc>
        release(&cons.lock);
        ilock(ip);
        return -1;
      }
      sleep(&input.r, &cons.lock);
8010029f:	83 ec 08             	sub    $0x8,%esp
801002a2:	68 20 a5 10 80       	push   $0x8010a520
801002a7:	68 c0 ff 10 80       	push   $0x8010ffc0
801002ac:	e8 ea 38 00 00       	call   80103b9b <sleep>
    while(input.r == input.w){
801002b1:	8b 83 80 00 00 00    	mov    0x80(%ebx),%eax
801002b7:	83 c4 10             	add    $0x10,%esp
801002ba:	3b 83 84 00 00 00    	cmp    0x84(%ebx),%eax
801002c0:	74 d2                	je     80100294 <consoleread+0x40>
    }
    c = input.buf[input.r++ % INPUT_BUF];
801002c2:	8d 50 01             	lea    0x1(%eax),%edx
801002c5:	89 93 80 00 00 00    	mov    %edx,0x80(%ebx)
801002cb:	89 c2                	mov    %eax,%edx
801002cd:	83 e2 7f             	and    $0x7f,%edx
801002d0:	0f b6 0c 13          	movzbl (%ebx,%edx,1),%ecx
801002d4:	0f be d1             	movsbl %cl,%edx
    if(c == C('D')){  // EOF
801002d7:	83 fa 04             	cmp    $0x4,%edx
801002da:	74 5c                	je     80100338 <consoleread+0xe4>
        // caller gets a 0-byte result.
        input.r--;
      }
      break;
    }
    *dst++ = c;
801002dc:	83 c7 01             	add    $0x1,%edi
801002df:	88 4f ff             	mov    %cl,-0x1(%edi)
    --n;
801002e2:	83 ee 01             	sub    $0x1,%esi
    if(c == '\n')
801002e5:	83 fa 0a             	cmp    $0xa,%edx
801002e8:	74 04                	je     801002ee <consoleread+0x9a>
  while(n > 0){
801002ea:	85 f6                	test   %esi,%esi
801002ec:	75 98                	jne    80100286 <consoleread+0x32>
      break;
  }
  release(&cons.lock);
801002ee:	83 ec 0c             	sub    $0xc,%esp
801002f1:	68 20 a5 10 80       	push   $0x8010a520
801002f6:	e8 89 3e 00 00       	call   80104184 <release>
  ilock(ip);
801002fb:	83 c4 04             	add    $0x4,%esp
801002fe:	ff 75 08             	pushl  0x8(%ebp)
80100301:	e8 e0 11 00 00       	call   801014e6 <ilock>

  return target - n;
80100306:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100309:	29 f0                	sub    %esi,%eax
8010030b:	83 c4 10             	add    $0x10,%esp
8010030e:	eb 20                	jmp    80100330 <consoleread+0xdc>
        release(&cons.lock);
80100310:	83 ec 0c             	sub    $0xc,%esp
80100313:	68 20 a5 10 80       	push   $0x8010a520
80100318:	e8 67 3e 00 00       	call   80104184 <release>
        ilock(ip);
8010031d:	83 c4 04             	add    $0x4,%esp
80100320:	ff 75 08             	pushl  0x8(%ebp)
80100323:	e8 be 11 00 00       	call   801014e6 <ilock>
        return -1;
80100328:	83 c4 10             	add    $0x10,%esp
8010032b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80100330:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100333:	5b                   	pop    %ebx
80100334:	5e                   	pop    %esi
80100335:	5f                   	pop    %edi
80100336:	5d                   	pop    %ebp
80100337:	c3                   	ret    
      if(n < target){
80100338:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
8010033b:	73 b1                	jae    801002ee <consoleread+0x9a>
        input.r--;
8010033d:	a3 c0 ff 10 80       	mov    %eax,0x8010ffc0
80100342:	eb aa                	jmp    801002ee <consoleread+0x9a>

80100344 <panic>:
{
80100344:	55                   	push   %ebp
80100345:	89 e5                	mov    %esp,%ebp
80100347:	56                   	push   %esi
80100348:	53                   	push   %ebx
80100349:	83 ec 30             	sub    $0x30,%esp
}

static inline void
cli(void)
{
  asm volatile("cli");
8010034c:	fa                   	cli    
  cons.locking = 0;
8010034d:	c7 05 54 a5 10 80 00 	movl   $0x0,0x8010a554
80100354:	00 00 00 
  cprintf("lapicid %d: panic: ", lapicid());
80100357:	e8 e4 20 00 00       	call   80102440 <lapicid>
8010035c:	83 ec 08             	sub    $0x8,%esp
8010035f:	50                   	push   %eax
80100360:	68 6d 69 10 80       	push   $0x8010696d
80100365:	e8 77 02 00 00       	call   801005e1 <cprintf>
  cprintf(s);
8010036a:	83 c4 04             	add    $0x4,%esp
8010036d:	ff 75 08             	pushl  0x8(%ebp)
80100370:	e8 6c 02 00 00       	call   801005e1 <cprintf>
  cprintf("\n");
80100375:	c7 04 24 9b 73 10 80 	movl   $0x8010739b,(%esp)
8010037c:	e8 60 02 00 00       	call   801005e1 <cprintf>
  getcallerpcs(&s, pcs);
80100381:	83 c4 08             	add    $0x8,%esp
80100384:	8d 5d d0             	lea    -0x30(%ebp),%ebx
80100387:	53                   	push   %ebx
80100388:	8d 45 08             	lea    0x8(%ebp),%eax
8010038b:	50                   	push   %eax
8010038c:	e8 5f 3c 00 00       	call   80103ff0 <getcallerpcs>
80100391:	8d 75 f8             	lea    -0x8(%ebp),%esi
80100394:	83 c4 10             	add    $0x10,%esp
    cprintf(" %p", pcs[i]);
80100397:	83 ec 08             	sub    $0x8,%esp
8010039a:	ff 33                	pushl  (%ebx)
8010039c:	68 81 69 10 80       	push   $0x80106981
801003a1:	e8 3b 02 00 00       	call   801005e1 <cprintf>
801003a6:	83 c3 04             	add    $0x4,%ebx
  for(i=0; i<10; i++)
801003a9:	83 c4 10             	add    $0x10,%esp
801003ac:	39 f3                	cmp    %esi,%ebx
801003ae:	75 e7                	jne    80100397 <panic+0x53>
  panicked = 1; // freeze other CPU
801003b0:	c7 05 58 a5 10 80 01 	movl   $0x1,0x8010a558
801003b7:	00 00 00 
801003ba:	eb fe                	jmp    801003ba <panic+0x76>

801003bc <consputc>:
  if(panicked){
801003bc:	83 3d 58 a5 10 80 00 	cmpl   $0x0,0x8010a558
801003c3:	74 03                	je     801003c8 <consputc+0xc>
801003c5:	fa                   	cli    
801003c6:	eb fe                	jmp    801003c6 <consputc+0xa>
{
801003c8:	55                   	push   %ebp
801003c9:	89 e5                	mov    %esp,%ebp
801003cb:	57                   	push   %edi
801003cc:	56                   	push   %esi
801003cd:	53                   	push   %ebx
801003ce:	83 ec 0c             	sub    $0xc,%esp
801003d1:	89 c6                	mov    %eax,%esi
  if(c == BACKSPACE){
801003d3:	3d 00 01 00 00       	cmp    $0x100,%eax
801003d8:	74 5f                	je     80100439 <consputc+0x7d>
    uartputc(c);
801003da:	83 ec 0c             	sub    $0xc,%esp
801003dd:	50                   	push   %eax
801003de:	e8 86 51 00 00       	call   80105569 <uartputc>
801003e3:	83 c4 10             	add    $0x10,%esp
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
801003e6:	bb d4 03 00 00       	mov    $0x3d4,%ebx
801003eb:	b8 0e 00 00 00       	mov    $0xe,%eax
801003f0:	89 da                	mov    %ebx,%edx
801003f2:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
801003f3:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
801003f8:	89 ca                	mov    %ecx,%edx
801003fa:	ec                   	in     (%dx),%al
  pos = inb(CRTPORT+1) << 8;
801003fb:	0f b6 c0             	movzbl %al,%eax
801003fe:	c1 e0 08             	shl    $0x8,%eax
80100401:	89 c7                	mov    %eax,%edi
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80100403:	b8 0f 00 00 00       	mov    $0xf,%eax
80100408:	89 da                	mov    %ebx,%edx
8010040a:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
8010040b:	89 ca                	mov    %ecx,%edx
8010040d:	ec                   	in     (%dx),%al
  pos |= inb(CRTPORT+1);
8010040e:	0f b6 d8             	movzbl %al,%ebx
80100411:	09 fb                	or     %edi,%ebx
  if(c == '\n')
80100413:	83 fe 0a             	cmp    $0xa,%esi
80100416:	74 48                	je     80100460 <consputc+0xa4>
  else if(c == BACKSPACE){
80100418:	81 fe 00 01 00 00    	cmp    $0x100,%esi
8010041e:	0f 84 93 00 00 00    	je     801004b7 <consputc+0xfb>
    crt[pos++] = (c&0xff) | 0x0700;  // black on white
80100424:	89 f0                	mov    %esi,%eax
80100426:	0f b6 c0             	movzbl %al,%eax
80100429:	80 cc 07             	or     $0x7,%ah
8010042c:	66 89 84 1b 00 80 0b 	mov    %ax,-0x7ff48000(%ebx,%ebx,1)
80100433:	80 
80100434:	8d 5b 01             	lea    0x1(%ebx),%ebx
80100437:	eb 35                	jmp    8010046e <consputc+0xb2>
    uartputc('\b'); uartputc(' '); uartputc('\b');
80100439:	83 ec 0c             	sub    $0xc,%esp
8010043c:	6a 08                	push   $0x8
8010043e:	e8 26 51 00 00       	call   80105569 <uartputc>
80100443:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
8010044a:	e8 1a 51 00 00       	call   80105569 <uartputc>
8010044f:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
80100456:	e8 0e 51 00 00       	call   80105569 <uartputc>
8010045b:	83 c4 10             	add    $0x10,%esp
8010045e:	eb 86                	jmp    801003e6 <consputc+0x2a>
    pos += 80 - pos%80;
80100460:	b9 50 00 00 00       	mov    $0x50,%ecx
80100465:	89 d8                	mov    %ebx,%eax
80100467:	99                   	cltd   
80100468:	f7 f9                	idiv   %ecx
8010046a:	29 d1                	sub    %edx,%ecx
8010046c:	01 cb                	add    %ecx,%ebx
  if(pos < 0 || pos > 25*80)
8010046e:	81 fb d0 07 00 00    	cmp    $0x7d0,%ebx
80100474:	77 4a                	ja     801004c0 <consputc+0x104>
  if((pos/80) >= 24){  // Scroll up.
80100476:	81 fb 7f 07 00 00    	cmp    $0x77f,%ebx
8010047c:	7f 4f                	jg     801004cd <consputc+0x111>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
8010047e:	be d4 03 00 00       	mov    $0x3d4,%esi
80100483:	b8 0e 00 00 00       	mov    $0xe,%eax
80100488:	89 f2                	mov    %esi,%edx
8010048a:	ee                   	out    %al,(%dx)
  outb(CRTPORT+1, pos>>8);
8010048b:	89 d8                	mov    %ebx,%eax
8010048d:	c1 f8 08             	sar    $0x8,%eax
80100490:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
80100495:	89 ca                	mov    %ecx,%edx
80100497:	ee                   	out    %al,(%dx)
80100498:	b8 0f 00 00 00       	mov    $0xf,%eax
8010049d:	89 f2                	mov    %esi,%edx
8010049f:	ee                   	out    %al,(%dx)
801004a0:	89 d8                	mov    %ebx,%eax
801004a2:	89 ca                	mov    %ecx,%edx
801004a4:	ee                   	out    %al,(%dx)
  crt[pos] = ' ' | 0x0700;
801004a5:	66 c7 84 1b 00 80 0b 	movw   $0x720,-0x7ff48000(%ebx,%ebx,1)
801004ac:	80 20 07 
}
801004af:	8d 65 f4             	lea    -0xc(%ebp),%esp
801004b2:	5b                   	pop    %ebx
801004b3:	5e                   	pop    %esi
801004b4:	5f                   	pop    %edi
801004b5:	5d                   	pop    %ebp
801004b6:	c3                   	ret    
    if(pos > 0) --pos;
801004b7:	85 db                	test   %ebx,%ebx
801004b9:	7e b3                	jle    8010046e <consputc+0xb2>
801004bb:	83 eb 01             	sub    $0x1,%ebx
801004be:	eb ae                	jmp    8010046e <consputc+0xb2>
    panic("pos under/overflow");
801004c0:	83 ec 0c             	sub    $0xc,%esp
801004c3:	68 85 69 10 80       	push   $0x80106985
801004c8:	e8 77 fe ff ff       	call   80100344 <panic>
    memmove(crt, crt+80, sizeof(crt[0])*23*80);
801004cd:	83 ec 04             	sub    $0x4,%esp
801004d0:	68 60 0e 00 00       	push   $0xe60
801004d5:	68 a0 80 0b 80       	push   $0x800b80a0
801004da:	68 00 80 0b 80       	push   $0x800b8000
801004df:	e8 7c 3d 00 00       	call   80104260 <memmove>
    pos -= 80;
801004e4:	83 eb 50             	sub    $0x50,%ebx
    memset(crt+pos, 0, sizeof(crt[0])*(24*80 - pos));
801004e7:	83 c4 0c             	add    $0xc,%esp
801004ea:	b8 80 07 00 00       	mov    $0x780,%eax
801004ef:	29 d8                	sub    %ebx,%eax
801004f1:	01 c0                	add    %eax,%eax
801004f3:	50                   	push   %eax
801004f4:	6a 00                	push   $0x0
801004f6:	8d 04 1b             	lea    (%ebx,%ebx,1),%eax
801004f9:	2d 00 80 f4 7f       	sub    $0x7ff48000,%eax
801004fe:	50                   	push   %eax
801004ff:	e8 c7 3c 00 00       	call   801041cb <memset>
80100504:	83 c4 10             	add    $0x10,%esp
80100507:	e9 72 ff ff ff       	jmp    8010047e <consputc+0xc2>

8010050c <printint>:
{
8010050c:	55                   	push   %ebp
8010050d:	89 e5                	mov    %esp,%ebp
8010050f:	57                   	push   %edi
80100510:	56                   	push   %esi
80100511:	53                   	push   %ebx
80100512:	83 ec 1c             	sub    $0x1c,%esp
80100515:	89 d6                	mov    %edx,%esi
  if(sign && (sign = xx < 0))
80100517:	85 c9                	test   %ecx,%ecx
80100519:	74 04                	je     8010051f <printint+0x13>
8010051b:	85 c0                	test   %eax,%eax
8010051d:	78 0e                	js     8010052d <printint+0x21>
    x = xx;
8010051f:	89 c2                	mov    %eax,%edx
80100521:	bf 00 00 00 00       	mov    $0x0,%edi
  i = 0;
80100526:	b9 00 00 00 00       	mov    $0x0,%ecx
8010052b:	eb 0d                	jmp    8010053a <printint+0x2e>
    x = -xx;
8010052d:	f7 d8                	neg    %eax
8010052f:	89 c2                	mov    %eax,%edx
  if(sign && (sign = xx < 0))
80100531:	bf 01 00 00 00       	mov    $0x1,%edi
    x = -xx;
80100536:	eb ee                	jmp    80100526 <printint+0x1a>
    buf[i++] = digits[x % base];
80100538:	89 d9                	mov    %ebx,%ecx
8010053a:	8d 59 01             	lea    0x1(%ecx),%ebx
8010053d:	89 d0                	mov    %edx,%eax
8010053f:	ba 00 00 00 00       	mov    $0x0,%edx
80100544:	f7 f6                	div    %esi
80100546:	0f b6 92 b0 69 10 80 	movzbl -0x7fef9650(%edx),%edx
8010054d:	88 54 1d d7          	mov    %dl,-0x29(%ebp,%ebx,1)
  }while((x /= base) != 0);
80100551:	89 c2                	mov    %eax,%edx
80100553:	85 c0                	test   %eax,%eax
80100555:	75 e1                	jne    80100538 <printint+0x2c>
  if(sign)
80100557:	85 ff                	test   %edi,%edi
80100559:	74 08                	je     80100563 <printint+0x57>
    buf[i++] = '-';
8010055b:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
80100560:	8d 59 02             	lea    0x2(%ecx),%ebx
  while(--i >= 0)
80100563:	83 eb 01             	sub    $0x1,%ebx
80100566:	78 12                	js     8010057a <printint+0x6e>
    consputc(buf[i]);
80100568:	0f be 44 2b d8       	movsbl -0x28(%ebx,%ebp,1),%eax
8010056d:	e8 4a fe ff ff       	call   801003bc <consputc>
  while(--i >= 0)
80100572:	83 eb 01             	sub    $0x1,%ebx
80100575:	83 fb ff             	cmp    $0xffffffff,%ebx
80100578:	75 ee                	jne    80100568 <printint+0x5c>
}
8010057a:	83 c4 1c             	add    $0x1c,%esp
8010057d:	5b                   	pop    %ebx
8010057e:	5e                   	pop    %esi
8010057f:	5f                   	pop    %edi
80100580:	5d                   	pop    %ebp
80100581:	c3                   	ret    

80100582 <consolewrite>:

int
consolewrite(struct inode *ip, char *buf, int n)
{
80100582:	55                   	push   %ebp
80100583:	89 e5                	mov    %esp,%ebp
80100585:	57                   	push   %edi
80100586:	56                   	push   %esi
80100587:	53                   	push   %ebx
80100588:	83 ec 18             	sub    $0x18,%esp
8010058b:	8b 75 0c             	mov    0xc(%ebp),%esi
8010058e:	8b 7d 10             	mov    0x10(%ebp),%edi
  int i;

  iunlock(ip);
80100591:	ff 75 08             	pushl  0x8(%ebp)
80100594:	e8 0f 10 00 00       	call   801015a8 <iunlock>
  acquire(&cons.lock);
80100599:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
801005a0:	e8 78 3b 00 00       	call   8010411d <acquire>
  for(i = 0; i < n; i++)
801005a5:	83 c4 10             	add    $0x10,%esp
801005a8:	85 ff                	test   %edi,%edi
801005aa:	7e 13                	jle    801005bf <consolewrite+0x3d>
801005ac:	89 f3                	mov    %esi,%ebx
801005ae:	01 fe                	add    %edi,%esi
    consputc(buf[i] & 0xff);
801005b0:	0f b6 03             	movzbl (%ebx),%eax
801005b3:	e8 04 fe ff ff       	call   801003bc <consputc>
801005b8:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; i < n; i++)
801005bb:	39 f3                	cmp    %esi,%ebx
801005bd:	75 f1                	jne    801005b0 <consolewrite+0x2e>
  release(&cons.lock);
801005bf:	83 ec 0c             	sub    $0xc,%esp
801005c2:	68 20 a5 10 80       	push   $0x8010a520
801005c7:	e8 b8 3b 00 00       	call   80104184 <release>
  ilock(ip);
801005cc:	83 c4 04             	add    $0x4,%esp
801005cf:	ff 75 08             	pushl  0x8(%ebp)
801005d2:	e8 0f 0f 00 00       	call   801014e6 <ilock>

  return n;
}
801005d7:	89 f8                	mov    %edi,%eax
801005d9:	8d 65 f4             	lea    -0xc(%ebp),%esp
801005dc:	5b                   	pop    %ebx
801005dd:	5e                   	pop    %esi
801005de:	5f                   	pop    %edi
801005df:	5d                   	pop    %ebp
801005e0:	c3                   	ret    

801005e1 <cprintf>:
{
801005e1:	55                   	push   %ebp
801005e2:	89 e5                	mov    %esp,%ebp
801005e4:	57                   	push   %edi
801005e5:	56                   	push   %esi
801005e6:	53                   	push   %ebx
801005e7:	83 ec 1c             	sub    $0x1c,%esp
  locking = cons.locking;
801005ea:	a1 54 a5 10 80       	mov    0x8010a554,%eax
801005ef:	89 45 e0             	mov    %eax,-0x20(%ebp)
  if(locking)
801005f2:	85 c0                	test   %eax,%eax
801005f4:	75 2b                	jne    80100621 <cprintf+0x40>
  if (fmt == 0)
801005f6:	8b 7d 08             	mov    0x8(%ebp),%edi
801005f9:	85 ff                	test   %edi,%edi
801005fb:	74 36                	je     80100633 <cprintf+0x52>
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
801005fd:	0f b6 07             	movzbl (%edi),%eax
  argp = (uint*)(void*)(&fmt + 1);
80100600:	8d 4d 0c             	lea    0xc(%ebp),%ecx
80100603:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
80100606:	bb 00 00 00 00       	mov    $0x0,%ebx
8010060b:	85 c0                	test   %eax,%eax
8010060d:	75 41                	jne    80100650 <cprintf+0x6f>
  if(locking)
8010060f:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80100613:	0f 85 0d 01 00 00    	jne    80100726 <cprintf+0x145>
}
80100619:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010061c:	5b                   	pop    %ebx
8010061d:	5e                   	pop    %esi
8010061e:	5f                   	pop    %edi
8010061f:	5d                   	pop    %ebp
80100620:	c3                   	ret    
    acquire(&cons.lock);
80100621:	83 ec 0c             	sub    $0xc,%esp
80100624:	68 20 a5 10 80       	push   $0x8010a520
80100629:	e8 ef 3a 00 00       	call   8010411d <acquire>
8010062e:	83 c4 10             	add    $0x10,%esp
80100631:	eb c3                	jmp    801005f6 <cprintf+0x15>
    panic("null fmt");
80100633:	83 ec 0c             	sub    $0xc,%esp
80100636:	68 9f 69 10 80       	push   $0x8010699f
8010063b:	e8 04 fd ff ff       	call   80100344 <panic>
      consputc(c);
80100640:	e8 77 fd ff ff       	call   801003bc <consputc>
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
80100645:	83 c3 01             	add    $0x1,%ebx
80100648:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
8010064c:	85 c0                	test   %eax,%eax
8010064e:	74 bf                	je     8010060f <cprintf+0x2e>
    if(c != '%'){
80100650:	83 f8 25             	cmp    $0x25,%eax
80100653:	75 eb                	jne    80100640 <cprintf+0x5f>
    c = fmt[++i] & 0xff;
80100655:	83 c3 01             	add    $0x1,%ebx
80100658:	0f b6 34 1f          	movzbl (%edi,%ebx,1),%esi
    if(c == 0)
8010065c:	85 f6                	test   %esi,%esi
8010065e:	74 af                	je     8010060f <cprintf+0x2e>
    switch(c){
80100660:	83 fe 70             	cmp    $0x70,%esi
80100663:	74 4c                	je     801006b1 <cprintf+0xd0>
80100665:	83 fe 70             	cmp    $0x70,%esi
80100668:	7f 2a                	jg     80100694 <cprintf+0xb3>
8010066a:	83 fe 25             	cmp    $0x25,%esi
8010066d:	0f 84 a4 00 00 00    	je     80100717 <cprintf+0x136>
80100673:	83 fe 64             	cmp    $0x64,%esi
80100676:	75 26                	jne    8010069e <cprintf+0xbd>
      printint(*argp++, 10, 1);
80100678:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010067b:	8d 70 04             	lea    0x4(%eax),%esi
8010067e:	b9 01 00 00 00       	mov    $0x1,%ecx
80100683:	ba 0a 00 00 00       	mov    $0xa,%edx
80100688:	8b 00                	mov    (%eax),%eax
8010068a:	e8 7d fe ff ff       	call   8010050c <printint>
8010068f:	89 75 e4             	mov    %esi,-0x1c(%ebp)
      break;
80100692:	eb b1                	jmp    80100645 <cprintf+0x64>
    switch(c){
80100694:	83 fe 73             	cmp    $0x73,%esi
80100697:	74 37                	je     801006d0 <cprintf+0xef>
80100699:	83 fe 78             	cmp    $0x78,%esi
8010069c:	74 13                	je     801006b1 <cprintf+0xd0>
      consputc('%');
8010069e:	b8 25 00 00 00       	mov    $0x25,%eax
801006a3:	e8 14 fd ff ff       	call   801003bc <consputc>
      consputc(c);
801006a8:	89 f0                	mov    %esi,%eax
801006aa:	e8 0d fd ff ff       	call   801003bc <consputc>
      break;
801006af:	eb 94                	jmp    80100645 <cprintf+0x64>
      printint(*argp++, 16, 0);
801006b1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801006b4:	8d 70 04             	lea    0x4(%eax),%esi
801006b7:	b9 00 00 00 00       	mov    $0x0,%ecx
801006bc:	ba 10 00 00 00       	mov    $0x10,%edx
801006c1:	8b 00                	mov    (%eax),%eax
801006c3:	e8 44 fe ff ff       	call   8010050c <printint>
801006c8:	89 75 e4             	mov    %esi,-0x1c(%ebp)
      break;
801006cb:	e9 75 ff ff ff       	jmp    80100645 <cprintf+0x64>
      if((s = (char*)*argp++) == 0)
801006d0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801006d3:	8d 50 04             	lea    0x4(%eax),%edx
801006d6:	89 55 dc             	mov    %edx,-0x24(%ebp)
801006d9:	8b 00                	mov    (%eax),%eax
801006db:	85 c0                	test   %eax,%eax
801006dd:	74 11                	je     801006f0 <cprintf+0x10f>
801006df:	89 c6                	mov    %eax,%esi
      for(; *s; s++)
801006e1:	0f b6 00             	movzbl (%eax),%eax
      if((s = (char*)*argp++) == 0)
801006e4:	89 55 e4             	mov    %edx,-0x1c(%ebp)
      for(; *s; s++)
801006e7:	84 c0                	test   %al,%al
801006e9:	75 0f                	jne    801006fa <cprintf+0x119>
801006eb:	e9 55 ff ff ff       	jmp    80100645 <cprintf+0x64>
        s = "(null)";
801006f0:	be 98 69 10 80       	mov    $0x80106998,%esi
      for(; *s; s++)
801006f5:	b8 28 00 00 00       	mov    $0x28,%eax
        consputc(*s);
801006fa:	0f be c0             	movsbl %al,%eax
801006fd:	e8 ba fc ff ff       	call   801003bc <consputc>
      for(; *s; s++)
80100702:	83 c6 01             	add    $0x1,%esi
80100705:	0f b6 06             	movzbl (%esi),%eax
80100708:	84 c0                	test   %al,%al
8010070a:	75 ee                	jne    801006fa <cprintf+0x119>
      if((s = (char*)*argp++) == 0)
8010070c:	8b 45 dc             	mov    -0x24(%ebp),%eax
8010070f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80100712:	e9 2e ff ff ff       	jmp    80100645 <cprintf+0x64>
      consputc('%');
80100717:	b8 25 00 00 00       	mov    $0x25,%eax
8010071c:	e8 9b fc ff ff       	call   801003bc <consputc>
      break;
80100721:	e9 1f ff ff ff       	jmp    80100645 <cprintf+0x64>
    release(&cons.lock);
80100726:	83 ec 0c             	sub    $0xc,%esp
80100729:	68 20 a5 10 80       	push   $0x8010a520
8010072e:	e8 51 3a 00 00       	call   80104184 <release>
80100733:	83 c4 10             	add    $0x10,%esp
}
80100736:	e9 de fe ff ff       	jmp    80100619 <cprintf+0x38>

8010073b <consoleintr>:
{
8010073b:	55                   	push   %ebp
8010073c:	89 e5                	mov    %esp,%ebp
8010073e:	57                   	push   %edi
8010073f:	56                   	push   %esi
80100740:	53                   	push   %ebx
80100741:	83 ec 28             	sub    $0x28,%esp
80100744:	8b 7d 08             	mov    0x8(%ebp),%edi
  acquire(&cons.lock);
80100747:	68 20 a5 10 80       	push   $0x8010a520
8010074c:	e8 cc 39 00 00       	call   8010411d <acquire>
  while((c = getc()) >= 0){
80100751:	83 c4 10             	add    $0x10,%esp
  int c, doprocdump = 0;
80100754:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
      if(c != 0 && input.e-input.r < INPUT_BUF){
8010075b:	bb 40 ff 10 80       	mov    $0x8010ff40,%ebx
  while((c = getc()) >= 0){
80100760:	e9 c2 00 00 00       	jmp    80100827 <consoleintr+0xec>
    switch(c){
80100765:	83 fe 08             	cmp    $0x8,%esi
80100768:	0f 84 dd 00 00 00    	je     8010084b <consoleintr+0x110>
      if(c != 0 && input.e-input.r < INPUT_BUF){
8010076e:	85 f6                	test   %esi,%esi
80100770:	0f 84 b1 00 00 00    	je     80100827 <consoleintr+0xec>
80100776:	8b 83 88 00 00 00    	mov    0x88(%ebx),%eax
8010077c:	89 c2                	mov    %eax,%edx
8010077e:	2b 93 80 00 00 00    	sub    0x80(%ebx),%edx
80100784:	83 fa 7f             	cmp    $0x7f,%edx
80100787:	0f 87 9a 00 00 00    	ja     80100827 <consoleintr+0xec>
        c = (c == '\r') ? '\n' : c;
8010078d:	83 fe 0d             	cmp    $0xd,%esi
80100790:	0f 84 fd 00 00 00    	je     80100893 <consoleintr+0x158>
        input.buf[input.e++ % INPUT_BUF] = c;
80100796:	8d 50 01             	lea    0x1(%eax),%edx
80100799:	89 93 88 00 00 00    	mov    %edx,0x88(%ebx)
8010079f:	83 e0 7f             	and    $0x7f,%eax
801007a2:	89 f1                	mov    %esi,%ecx
801007a4:	88 0c 03             	mov    %cl,(%ebx,%eax,1)
        consputc(c);
801007a7:	89 f0                	mov    %esi,%eax
801007a9:	e8 0e fc ff ff       	call   801003bc <consputc>
        if(c == '\n' || c == C('D') || input.e == input.r+INPUT_BUF){
801007ae:	83 fe 0a             	cmp    $0xa,%esi
801007b1:	0f 84 f6 00 00 00    	je     801008ad <consoleintr+0x172>
801007b7:	83 fe 04             	cmp    $0x4,%esi
801007ba:	0f 84 ed 00 00 00    	je     801008ad <consoleintr+0x172>
801007c0:	8b 83 80 00 00 00    	mov    0x80(%ebx),%eax
801007c6:	83 e8 80             	sub    $0xffffff80,%eax
801007c9:	39 83 88 00 00 00    	cmp    %eax,0x88(%ebx)
801007cf:	75 56                	jne    80100827 <consoleintr+0xec>
801007d1:	e9 d7 00 00 00       	jmp    801008ad <consoleintr+0x172>
      while(input.e != input.w &&
801007d6:	8b 83 88 00 00 00    	mov    0x88(%ebx),%eax
801007dc:	3b 83 84 00 00 00    	cmp    0x84(%ebx),%eax
801007e2:	74 43                	je     80100827 <consoleintr+0xec>
            input.buf[(input.e-1) % INPUT_BUF] != '\n'){
801007e4:	83 e8 01             	sub    $0x1,%eax
801007e7:	89 c2                	mov    %eax,%edx
801007e9:	83 e2 7f             	and    $0x7f,%edx
      while(input.e != input.w &&
801007ec:	80 3c 13 0a          	cmpb   $0xa,(%ebx,%edx,1)
801007f0:	74 35                	je     80100827 <consoleintr+0xec>
        input.e--;
801007f2:	89 83 88 00 00 00    	mov    %eax,0x88(%ebx)
        consputc(BACKSPACE);
801007f8:	b8 00 01 00 00       	mov    $0x100,%eax
801007fd:	e8 ba fb ff ff       	call   801003bc <consputc>
      while(input.e != input.w &&
80100802:	8b 83 88 00 00 00    	mov    0x88(%ebx),%eax
80100808:	3b 83 84 00 00 00    	cmp    0x84(%ebx),%eax
8010080e:	74 17                	je     80100827 <consoleintr+0xec>
            input.buf[(input.e-1) % INPUT_BUF] != '\n'){
80100810:	83 e8 01             	sub    $0x1,%eax
80100813:	89 c2                	mov    %eax,%edx
80100815:	83 e2 7f             	and    $0x7f,%edx
      while(input.e != input.w &&
80100818:	80 3c 13 0a          	cmpb   $0xa,(%ebx,%edx,1)
8010081c:	75 d4                	jne    801007f2 <consoleintr+0xb7>
8010081e:	eb 07                	jmp    80100827 <consoleintr+0xec>
      doprocdump = 1;
80100820:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
  while((c = getc()) >= 0){
80100827:	ff d7                	call   *%edi
80100829:	89 c6                	mov    %eax,%esi
8010082b:	85 c0                	test   %eax,%eax
8010082d:	78 3f                	js     8010086e <consoleintr+0x133>
    switch(c){
8010082f:	83 fe 10             	cmp    $0x10,%esi
80100832:	74 ec                	je     80100820 <consoleintr+0xe5>
80100834:	83 fe 10             	cmp    $0x10,%esi
80100837:	0f 8e 28 ff ff ff    	jle    80100765 <consoleintr+0x2a>
8010083d:	83 fe 15             	cmp    $0x15,%esi
80100840:	74 94                	je     801007d6 <consoleintr+0x9b>
80100842:	83 fe 7f             	cmp    $0x7f,%esi
80100845:	0f 85 23 ff ff ff    	jne    8010076e <consoleintr+0x33>
      if(input.e != input.w){
8010084b:	8b 83 88 00 00 00    	mov    0x88(%ebx),%eax
80100851:	3b 83 84 00 00 00    	cmp    0x84(%ebx),%eax
80100857:	74 ce                	je     80100827 <consoleintr+0xec>
        input.e--;
80100859:	83 e8 01             	sub    $0x1,%eax
8010085c:	89 83 88 00 00 00    	mov    %eax,0x88(%ebx)
        consputc(BACKSPACE);
80100862:	b8 00 01 00 00       	mov    $0x100,%eax
80100867:	e8 50 fb ff ff       	call   801003bc <consputc>
8010086c:	eb b9                	jmp    80100827 <consoleintr+0xec>
  release(&cons.lock);
8010086e:	83 ec 0c             	sub    $0xc,%esp
80100871:	68 20 a5 10 80       	push   $0x8010a520
80100876:	e8 09 39 00 00       	call   80104184 <release>
  if(doprocdump) {
8010087b:	83 c4 10             	add    $0x10,%esp
8010087e:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
80100882:	75 08                	jne    8010088c <consoleintr+0x151>
}
80100884:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100887:	5b                   	pop    %ebx
80100888:	5e                   	pop    %esi
80100889:	5f                   	pop    %edi
8010088a:	5d                   	pop    %ebp
8010088b:	c3                   	ret    
    procdump();  // now call procdump() wo. cons.lock held
8010088c:	e8 34 35 00 00       	call   80103dc5 <procdump>
}
80100891:	eb f1                	jmp    80100884 <consoleintr+0x149>
        input.buf[input.e++ % INPUT_BUF] = c;
80100893:	8d 50 01             	lea    0x1(%eax),%edx
80100896:	89 93 88 00 00 00    	mov    %edx,0x88(%ebx)
8010089c:	83 e0 7f             	and    $0x7f,%eax
8010089f:	c6 04 03 0a          	movb   $0xa,(%ebx,%eax,1)
        consputc(c);
801008a3:	b8 0a 00 00 00       	mov    $0xa,%eax
801008a8:	e8 0f fb ff ff       	call   801003bc <consputc>
          input.w = input.e;
801008ad:	8b 83 88 00 00 00    	mov    0x88(%ebx),%eax
801008b3:	89 83 84 00 00 00    	mov    %eax,0x84(%ebx)
          wakeup(&input.r);
801008b9:	83 ec 0c             	sub    $0xc,%esp
801008bc:	68 c0 ff 10 80       	push   $0x8010ffc0
801008c1:	e8 55 34 00 00       	call   80103d1b <wakeup>
801008c6:	83 c4 10             	add    $0x10,%esp
801008c9:	e9 59 ff ff ff       	jmp    80100827 <consoleintr+0xec>

801008ce <consoleinit>:

void
consoleinit(void)
{
801008ce:	55                   	push   %ebp
801008cf:	89 e5                	mov    %esp,%ebp
801008d1:	83 ec 10             	sub    $0x10,%esp
  initlock(&cons.lock, "console");
801008d4:	68 a8 69 10 80       	push   $0x801069a8
801008d9:	68 20 a5 10 80       	push   $0x8010a520
801008de:	e8 f2 36 00 00       	call   80103fd5 <initlock>

  devsw[CONSOLE].write = consolewrite;
801008e3:	c7 05 8c 09 11 80 82 	movl   $0x80100582,0x8011098c
801008ea:	05 10 80 
  devsw[CONSOLE].read = consoleread;
801008ed:	c7 05 88 09 11 80 54 	movl   $0x80100254,0x80110988
801008f4:	02 10 80 
  cons.locking = 1;
801008f7:	c7 05 54 a5 10 80 01 	movl   $0x1,0x8010a554
801008fe:	00 00 00 

  ioapicenable(IRQ_KBD, 0);
80100901:	83 c4 08             	add    $0x8,%esp
80100904:	6a 00                	push   $0x0
80100906:	6a 01                	push   $0x1
80100908:	e8 f9 16 00 00       	call   80102006 <ioapicenable>
}
8010090d:	83 c4 10             	add    $0x10,%esp
80100910:	c9                   	leave  
80100911:	c3                   	ret    

80100912 <exec>:
80100912:	55                   	push   %ebp
80100913:	89 e5                	mov    %esp,%ebp
80100915:	57                   	push   %edi
80100916:	56                   	push   %esi
80100917:	53                   	push   %ebx
80100918:	81 ec 0c 01 00 00    	sub    $0x10c,%esp
8010091e:	e8 ce 2c 00 00       	call   801035f1 <myproc>
80100923:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
80100929:	e8 7f 1e 00 00       	call   801027ad <begin_op>
8010092e:	83 ec 0c             	sub    $0xc,%esp
80100931:	ff 75 08             	pushl  0x8(%ebp)
80100934:	e8 4a 13 00 00       	call   80101c83 <namei>
80100939:	83 c4 10             	add    $0x10,%esp
8010093c:	85 c0                	test   %eax,%eax
8010093e:	74 42                	je     80100982 <exec+0x70>
80100940:	89 c3                	mov    %eax,%ebx
80100942:	83 ec 0c             	sub    $0xc,%esp
80100945:	50                   	push   %eax
80100946:	e8 9b 0b 00 00       	call   801014e6 <ilock>
8010094b:	6a 34                	push   $0x34
8010094d:	6a 00                	push   $0x0
8010094f:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
80100955:	50                   	push   %eax
80100956:	53                   	push   %ebx
80100957:	e8 1e 0e 00 00       	call   8010177a <readi>
8010095c:	83 c4 20             	add    $0x20,%esp
8010095f:	83 f8 34             	cmp    $0x34,%eax
80100962:	74 3a                	je     8010099e <exec+0x8c>
80100964:	83 ec 0c             	sub    $0xc,%esp
80100967:	53                   	push   %ebx
80100968:	e8 c2 0d 00 00       	call   8010172f <iunlockput>
8010096d:	e8 b6 1e 00 00       	call   80102828 <end_op>
80100972:	83 c4 10             	add    $0x10,%esp
80100975:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010097a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010097d:	5b                   	pop    %ebx
8010097e:	5e                   	pop    %esi
8010097f:	5f                   	pop    %edi
80100980:	5d                   	pop    %ebp
80100981:	c3                   	ret    
80100982:	e8 a1 1e 00 00       	call   80102828 <end_op>
80100987:	83 ec 0c             	sub    $0xc,%esp
8010098a:	68 c1 69 10 80       	push   $0x801069c1
8010098f:	e8 4d fc ff ff       	call   801005e1 <cprintf>
80100994:	83 c4 10             	add    $0x10,%esp
80100997:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010099c:	eb dc                	jmp    8010097a <exec+0x68>
8010099e:	81 bd 24 ff ff ff 7f 	cmpl   $0x464c457f,-0xdc(%ebp)
801009a5:	45 4c 46 
801009a8:	75 ba                	jne    80100964 <exec+0x52>
801009aa:	e8 2b 5d 00 00       	call   801066da <setupkvm>
801009af:	89 c7                	mov    %eax,%edi
801009b1:	85 c0                	test   %eax,%eax
801009b3:	74 af                	je     80100964 <exec+0x52>
801009b5:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
801009bb:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
801009c1:	66 83 bd 50 ff ff ff 	cmpw   $0x0,-0xb0(%ebp)
801009c8:	00 
801009c9:	0f 84 bf 00 00 00    	je     80100a8e <exec+0x17c>
801009cf:	c7 85 ec fe ff ff 00 	movl   $0x0,-0x114(%ebp)
801009d6:	00 00 00 
801009d9:	be 00 00 00 00       	mov    $0x0,%esi
801009de:	eb 12                	jmp    801009f2 <exec+0xe0>
801009e0:	83 c6 01             	add    $0x1,%esi
801009e3:	0f b7 85 50 ff ff ff 	movzwl -0xb0(%ebp),%eax
801009ea:	39 f0                	cmp    %esi,%eax
801009ec:	0f 8e a6 00 00 00    	jle    80100a98 <exec+0x186>
801009f2:	6a 20                	push   $0x20
801009f4:	89 f0                	mov    %esi,%eax
801009f6:	c1 e0 05             	shl    $0x5,%eax
801009f9:	03 85 f0 fe ff ff    	add    -0x110(%ebp),%eax
801009ff:	50                   	push   %eax
80100a00:	8d 85 04 ff ff ff    	lea    -0xfc(%ebp),%eax
80100a06:	50                   	push   %eax
80100a07:	53                   	push   %ebx
80100a08:	e8 6d 0d 00 00       	call   8010177a <readi>
80100a0d:	83 c4 10             	add    $0x10,%esp
80100a10:	83 f8 20             	cmp    $0x20,%eax
80100a13:	0f 85 c2 00 00 00    	jne    80100adb <exec+0x1c9>
80100a19:	83 bd 04 ff ff ff 01 	cmpl   $0x1,-0xfc(%ebp)
80100a20:	75 be                	jne    801009e0 <exec+0xce>
80100a22:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
80100a28:	3b 85 14 ff ff ff    	cmp    -0xec(%ebp),%eax
80100a2e:	0f 82 a7 00 00 00    	jb     80100adb <exec+0x1c9>
80100a34:	03 85 0c ff ff ff    	add    -0xf4(%ebp),%eax
80100a3a:	0f 82 9b 00 00 00    	jb     80100adb <exec+0x1c9>
80100a40:	83 ec 04             	sub    $0x4,%esp
80100a43:	50                   	push   %eax
80100a44:	ff b5 ec fe ff ff    	pushl  -0x114(%ebp)
80100a4a:	57                   	push   %edi
80100a4b:	e8 29 5b 00 00       	call   80106579 <allocuvm>
80100a50:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)
80100a56:	83 c4 10             	add    $0x10,%esp
80100a59:	85 c0                	test   %eax,%eax
80100a5b:	74 7e                	je     80100adb <exec+0x1c9>
80100a5d:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
80100a63:	a9 ff 0f 00 00       	test   $0xfff,%eax
80100a68:	75 71                	jne    80100adb <exec+0x1c9>
80100a6a:	83 ec 0c             	sub    $0xc,%esp
80100a6d:	ff b5 14 ff ff ff    	pushl  -0xec(%ebp)
80100a73:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
80100a79:	53                   	push   %ebx
80100a7a:	50                   	push   %eax
80100a7b:	57                   	push   %edi
80100a7c:	e8 bb 59 00 00       	call   8010643c <loaduvm>
80100a81:	83 c4 20             	add    $0x20,%esp
80100a84:	85 c0                	test   %eax,%eax
80100a86:	0f 89 54 ff ff ff    	jns    801009e0 <exec+0xce>
80100a8c:	eb 4d                	jmp    80100adb <exec+0x1c9>
80100a8e:	c7 85 ec fe ff ff 00 	movl   $0x0,-0x114(%ebp)
80100a95:	00 00 00 
80100a98:	83 ec 0c             	sub    $0xc,%esp
80100a9b:	53                   	push   %ebx
80100a9c:	e8 8e 0c 00 00       	call   8010172f <iunlockput>
80100aa1:	e8 82 1d 00 00       	call   80102828 <end_op>
80100aa6:	8b 85 ec fe ff ff    	mov    -0x114(%ebp),%eax
80100aac:	05 ff 0f 00 00       	add    $0xfff,%eax
80100ab1:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80100ab6:	89 c2                	mov    %eax,%edx
80100ab8:	83 c4 0c             	add    $0xc,%esp
80100abb:	8d 80 00 20 00 00    	lea    0x2000(%eax),%eax
80100ac1:	50                   	push   %eax
80100ac2:	52                   	push   %edx
80100ac3:	57                   	push   %edi
80100ac4:	e8 b0 5a 00 00       	call   80106579 <allocuvm>
80100ac9:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
80100acf:	83 c4 10             	add    $0x10,%esp
80100ad2:	bb 00 00 00 00       	mov    $0x0,%ebx
80100ad7:	85 c0                	test   %eax,%eax
80100ad9:	75 1e                	jne    80100af9 <exec+0x1e7>
80100adb:	83 ec 0c             	sub    $0xc,%esp
80100ade:	57                   	push   %edi
80100adf:	e8 83 5b 00 00       	call   80106667 <freevm>
80100ae4:	83 c4 10             	add    $0x10,%esp
80100ae7:	85 db                	test   %ebx,%ebx
80100ae9:	0f 85 75 fe ff ff    	jne    80100964 <exec+0x52>
80100aef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100af4:	e9 81 fe ff ff       	jmp    8010097a <exec+0x68>
80100af9:	83 ec 08             	sub    $0x8,%esp
80100afc:	89 c3                	mov    %eax,%ebx
80100afe:	8d 80 00 e0 ff ff    	lea    -0x2000(%eax),%eax
80100b04:	50                   	push   %eax
80100b05:	57                   	push   %edi
80100b06:	e8 54 5c 00 00       	call   8010675f <clearpteu>
80100b0b:	8b 45 0c             	mov    0xc(%ebp),%eax
80100b0e:	8b 00                	mov    (%eax),%eax
80100b10:	83 c4 10             	add    $0x10,%esp
80100b13:	be 00 00 00 00       	mov    $0x0,%esi
80100b18:	85 c0                	test   %eax,%eax
80100b1a:	74 5f                	je     80100b7b <exec+0x269>
80100b1c:	83 ec 0c             	sub    $0xc,%esp
80100b1f:	50                   	push   %eax
80100b20:	e8 69 38 00 00       	call   8010438e <strlen>
80100b25:	f7 d0                	not    %eax
80100b27:	01 d8                	add    %ebx,%eax
80100b29:	83 e0 fc             	and    $0xfffffffc,%eax
80100b2c:	89 c3                	mov    %eax,%ebx
80100b2e:	83 c4 04             	add    $0x4,%esp
80100b31:	8b 45 0c             	mov    0xc(%ebp),%eax
80100b34:	ff 34 b0             	pushl  (%eax,%esi,4)
80100b37:	e8 52 38 00 00       	call   8010438e <strlen>
80100b3c:	83 c0 01             	add    $0x1,%eax
80100b3f:	50                   	push   %eax
80100b40:	8b 45 0c             	mov    0xc(%ebp),%eax
80100b43:	ff 34 b0             	pushl  (%eax,%esi,4)
80100b46:	53                   	push   %ebx
80100b47:	57                   	push   %edi
80100b48:	e8 5d 5d 00 00       	call   801068aa <copyout>
80100b4d:	83 c4 20             	add    $0x20,%esp
80100b50:	85 c0                	test   %eax,%eax
80100b52:	0f 88 f4 00 00 00    	js     80100c4c <exec+0x33a>
80100b58:	89 9c b5 64 ff ff ff 	mov    %ebx,-0x9c(%ebp,%esi,4)
80100b5f:	83 c6 01             	add    $0x1,%esi
80100b62:	8b 45 0c             	mov    0xc(%ebp),%eax
80100b65:	8b 04 b0             	mov    (%eax,%esi,4),%eax
80100b68:	85 c0                	test   %eax,%eax
80100b6a:	74 15                	je     80100b81 <exec+0x26f>
80100b6c:	83 fe 20             	cmp    $0x20,%esi
80100b6f:	75 ab                	jne    80100b1c <exec+0x20a>
80100b71:	bb 00 00 00 00       	mov    $0x0,%ebx
80100b76:	e9 60 ff ff ff       	jmp    80100adb <exec+0x1c9>
80100b7b:	8b 9d f0 fe ff ff    	mov    -0x110(%ebp),%ebx
80100b81:	c7 84 b5 64 ff ff ff 	movl   $0x0,-0x9c(%ebp,%esi,4)
80100b88:	00 00 00 00 
80100b8c:	c7 85 58 ff ff ff ff 	movl   $0xffffffff,-0xa8(%ebp)
80100b93:	ff ff ff 
80100b96:	89 b5 5c ff ff ff    	mov    %esi,-0xa4(%ebp)
80100b9c:	8d 04 b5 04 00 00 00 	lea    0x4(,%esi,4),%eax
80100ba3:	89 da                	mov    %ebx,%edx
80100ba5:	29 c2                	sub    %eax,%edx
80100ba7:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
80100bad:	83 c0 0c             	add    $0xc,%eax
80100bb0:	89 de                	mov    %ebx,%esi
80100bb2:	29 c6                	sub    %eax,%esi
80100bb4:	50                   	push   %eax
80100bb5:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
80100bbb:	50                   	push   %eax
80100bbc:	56                   	push   %esi
80100bbd:	57                   	push   %edi
80100bbe:	e8 e7 5c 00 00       	call   801068aa <copyout>
80100bc3:	83 c4 10             	add    $0x10,%esp
80100bc6:	85 c0                	test   %eax,%eax
80100bc8:	0f 88 88 00 00 00    	js     80100c56 <exec+0x344>
80100bce:	8b 45 08             	mov    0x8(%ebp),%eax
80100bd1:	0f b6 10             	movzbl (%eax),%edx
80100bd4:	84 d2                	test   %dl,%dl
80100bd6:	74 1a                	je     80100bf2 <exec+0x2e0>
80100bd8:	83 c0 01             	add    $0x1,%eax
80100bdb:	8b 4d 08             	mov    0x8(%ebp),%ecx
80100bde:	80 fa 2f             	cmp    $0x2f,%dl
80100be1:	0f 44 c8             	cmove  %eax,%ecx
80100be4:	83 c0 01             	add    $0x1,%eax
80100be7:	0f b6 50 ff          	movzbl -0x1(%eax),%edx
80100beb:	84 d2                	test   %dl,%dl
80100bed:	75 ef                	jne    80100bde <exec+0x2cc>
80100bef:	89 4d 08             	mov    %ecx,0x8(%ebp)
80100bf2:	83 ec 04             	sub    $0x4,%esp
80100bf5:	6a 10                	push   $0x10
80100bf7:	ff 75 08             	pushl  0x8(%ebp)
80100bfa:	8b 9d f4 fe ff ff    	mov    -0x10c(%ebp),%ebx
80100c00:	89 d8                	mov    %ebx,%eax
80100c02:	83 c0 6c             	add    $0x6c,%eax
80100c05:	50                   	push   %eax
80100c06:	e8 4f 37 00 00       	call   8010435a <safestrcpy>
80100c0b:	89 d8                	mov    %ebx,%eax
80100c0d:	8b 5b 04             	mov    0x4(%ebx),%ebx
80100c10:	89 78 04             	mov    %edi,0x4(%eax)
80100c13:	8b 95 f0 fe ff ff    	mov    -0x110(%ebp),%edx
80100c19:	89 10                	mov    %edx,(%eax)
80100c1b:	89 c7                	mov    %eax,%edi
80100c1d:	8b 40 18             	mov    0x18(%eax),%eax
80100c20:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
80100c26:	89 50 38             	mov    %edx,0x38(%eax)
80100c29:	8b 47 18             	mov    0x18(%edi),%eax
80100c2c:	89 70 44             	mov    %esi,0x44(%eax)
80100c2f:	89 3c 24             	mov    %edi,(%esp)
80100c32:	e8 9e 56 00 00       	call   801062d5 <switchuvm>
80100c37:	89 1c 24             	mov    %ebx,(%esp)
80100c3a:	e8 28 5a 00 00       	call   80106667 <freevm>
80100c3f:	83 c4 10             	add    $0x10,%esp
80100c42:	b8 00 00 00 00       	mov    $0x0,%eax
80100c47:	e9 2e fd ff ff       	jmp    8010097a <exec+0x68>
80100c4c:	bb 00 00 00 00       	mov    $0x0,%ebx
80100c51:	e9 85 fe ff ff       	jmp    80100adb <exec+0x1c9>
80100c56:	bb 00 00 00 00       	mov    $0x0,%ebx
80100c5b:	e9 7b fe ff ff       	jmp    80100adb <exec+0x1c9>

80100c60 <fileinit>:
80100c60:	55                   	push   %ebp
80100c61:	89 e5                	mov    %esp,%ebp
80100c63:	83 ec 10             	sub    $0x10,%esp
80100c66:	68 cd 69 10 80       	push   $0x801069cd
80100c6b:	68 e0 ff 10 80       	push   $0x8010ffe0
80100c70:	e8 60 33 00 00       	call   80103fd5 <initlock>
80100c75:	83 c4 10             	add    $0x10,%esp
80100c78:	c9                   	leave  
80100c79:	c3                   	ret    

80100c7a <filealloc>:
80100c7a:	55                   	push   %ebp
80100c7b:	89 e5                	mov    %esp,%ebp
80100c7d:	53                   	push   %ebx
80100c7e:	83 ec 10             	sub    $0x10,%esp
80100c81:	68 e0 ff 10 80       	push   $0x8010ffe0
80100c86:	e8 92 34 00 00       	call   8010411d <acquire>
80100c8b:	83 c4 10             	add    $0x10,%esp
80100c8e:	83 3d 18 00 11 80 00 	cmpl   $0x0,0x80110018
80100c95:	74 2d                	je     80100cc4 <filealloc+0x4a>
80100c97:	bb 2c 00 11 80       	mov    $0x8011002c,%ebx
80100c9c:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
80100ca0:	74 27                	je     80100cc9 <filealloc+0x4f>
80100ca2:	83 c3 18             	add    $0x18,%ebx
80100ca5:	81 fb 74 09 11 80    	cmp    $0x80110974,%ebx
80100cab:	72 ef                	jb     80100c9c <filealloc+0x22>
80100cad:	83 ec 0c             	sub    $0xc,%esp
80100cb0:	68 e0 ff 10 80       	push   $0x8010ffe0
80100cb5:	e8 ca 34 00 00       	call   80104184 <release>
80100cba:	83 c4 10             	add    $0x10,%esp
80100cbd:	bb 00 00 00 00       	mov    $0x0,%ebx
80100cc2:	eb 1c                	jmp    80100ce0 <filealloc+0x66>
80100cc4:	bb 14 00 11 80       	mov    $0x80110014,%ebx
80100cc9:	c7 43 04 01 00 00 00 	movl   $0x1,0x4(%ebx)
80100cd0:	83 ec 0c             	sub    $0xc,%esp
80100cd3:	68 e0 ff 10 80       	push   $0x8010ffe0
80100cd8:	e8 a7 34 00 00       	call   80104184 <release>
80100cdd:	83 c4 10             	add    $0x10,%esp
80100ce0:	89 d8                	mov    %ebx,%eax
80100ce2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100ce5:	c9                   	leave  
80100ce6:	c3                   	ret    

80100ce7 <filedup>:
80100ce7:	55                   	push   %ebp
80100ce8:	89 e5                	mov    %esp,%ebp
80100cea:	53                   	push   %ebx
80100ceb:	83 ec 10             	sub    $0x10,%esp
80100cee:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100cf1:	68 e0 ff 10 80       	push   $0x8010ffe0
80100cf6:	e8 22 34 00 00       	call   8010411d <acquire>
80100cfb:	8b 43 04             	mov    0x4(%ebx),%eax
80100cfe:	83 c4 10             	add    $0x10,%esp
80100d01:	85 c0                	test   %eax,%eax
80100d03:	7e 1a                	jle    80100d1f <filedup+0x38>
80100d05:	83 c0 01             	add    $0x1,%eax
80100d08:	89 43 04             	mov    %eax,0x4(%ebx)
80100d0b:	83 ec 0c             	sub    $0xc,%esp
80100d0e:	68 e0 ff 10 80       	push   $0x8010ffe0
80100d13:	e8 6c 34 00 00       	call   80104184 <release>
80100d18:	89 d8                	mov    %ebx,%eax
80100d1a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100d1d:	c9                   	leave  
80100d1e:	c3                   	ret    
80100d1f:	83 ec 0c             	sub    $0xc,%esp
80100d22:	68 d4 69 10 80       	push   $0x801069d4
80100d27:	e8 18 f6 ff ff       	call   80100344 <panic>

80100d2c <fileclose>:
80100d2c:	55                   	push   %ebp
80100d2d:	89 e5                	mov    %esp,%ebp
80100d2f:	57                   	push   %edi
80100d30:	56                   	push   %esi
80100d31:	53                   	push   %ebx
80100d32:	83 ec 28             	sub    $0x28,%esp
80100d35:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100d38:	68 e0 ff 10 80       	push   $0x8010ffe0
80100d3d:	e8 db 33 00 00       	call   8010411d <acquire>
80100d42:	8b 43 04             	mov    0x4(%ebx),%eax
80100d45:	83 c4 10             	add    $0x10,%esp
80100d48:	85 c0                	test   %eax,%eax
80100d4a:	7e 22                	jle    80100d6e <fileclose+0x42>
80100d4c:	83 e8 01             	sub    $0x1,%eax
80100d4f:	89 43 04             	mov    %eax,0x4(%ebx)
80100d52:	85 c0                	test   %eax,%eax
80100d54:	7e 25                	jle    80100d7b <fileclose+0x4f>
80100d56:	83 ec 0c             	sub    $0xc,%esp
80100d59:	68 e0 ff 10 80       	push   $0x8010ffe0
80100d5e:	e8 21 34 00 00       	call   80104184 <release>
80100d63:	83 c4 10             	add    $0x10,%esp
80100d66:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100d69:	5b                   	pop    %ebx
80100d6a:	5e                   	pop    %esi
80100d6b:	5f                   	pop    %edi
80100d6c:	5d                   	pop    %ebp
80100d6d:	c3                   	ret    
80100d6e:	83 ec 0c             	sub    $0xc,%esp
80100d71:	68 dc 69 10 80       	push   $0x801069dc
80100d76:	e8 c9 f5 ff ff       	call   80100344 <panic>
80100d7b:	8b 33                	mov    (%ebx),%esi
80100d7d:	0f b6 43 09          	movzbl 0x9(%ebx),%eax
80100d81:	88 45 e7             	mov    %al,-0x19(%ebp)
80100d84:	8b 7b 0c             	mov    0xc(%ebx),%edi
80100d87:	8b 43 10             	mov    0x10(%ebx),%eax
80100d8a:	89 45 e0             	mov    %eax,-0x20(%ebp)
80100d8d:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
80100d94:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80100d9a:	83 ec 0c             	sub    $0xc,%esp
80100d9d:	68 e0 ff 10 80       	push   $0x8010ffe0
80100da2:	e8 dd 33 00 00       	call   80104184 <release>
80100da7:	83 c4 10             	add    $0x10,%esp
80100daa:	83 fe 01             	cmp    $0x1,%esi
80100dad:	74 1f                	je     80100dce <fileclose+0xa2>
80100daf:	83 fe 02             	cmp    $0x2,%esi
80100db2:	75 b2                	jne    80100d66 <fileclose+0x3a>
80100db4:	e8 f4 19 00 00       	call   801027ad <begin_op>
80100db9:	83 ec 0c             	sub    $0xc,%esp
80100dbc:	ff 75 e0             	pushl  -0x20(%ebp)
80100dbf:	e8 29 08 00 00       	call   801015ed <iput>
80100dc4:	e8 5f 1a 00 00       	call   80102828 <end_op>
80100dc9:	83 c4 10             	add    $0x10,%esp
80100dcc:	eb 98                	jmp    80100d66 <fileclose+0x3a>
80100dce:	83 ec 08             	sub    $0x8,%esp
80100dd1:	0f be 45 e7          	movsbl -0x19(%ebp),%eax
80100dd5:	50                   	push   %eax
80100dd6:	57                   	push   %edi
80100dd7:	e8 fe 20 00 00       	call   80102eda <pipeclose>
80100ddc:	83 c4 10             	add    $0x10,%esp
80100ddf:	eb 85                	jmp    80100d66 <fileclose+0x3a>

80100de1 <filestat>:
80100de1:	55                   	push   %ebp
80100de2:	89 e5                	mov    %esp,%ebp
80100de4:	53                   	push   %ebx
80100de5:	83 ec 04             	sub    $0x4,%esp
80100de8:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100deb:	83 3b 02             	cmpl   $0x2,(%ebx)
80100dee:	75 31                	jne    80100e21 <filestat+0x40>
80100df0:	83 ec 0c             	sub    $0xc,%esp
80100df3:	ff 73 10             	pushl  0x10(%ebx)
80100df6:	e8 eb 06 00 00       	call   801014e6 <ilock>
80100dfb:	83 c4 08             	add    $0x8,%esp
80100dfe:	ff 75 0c             	pushl  0xc(%ebp)
80100e01:	ff 73 10             	pushl  0x10(%ebx)
80100e04:	e8 46 09 00 00       	call   8010174f <stati>
80100e09:	83 c4 04             	add    $0x4,%esp
80100e0c:	ff 73 10             	pushl  0x10(%ebx)
80100e0f:	e8 94 07 00 00       	call   801015a8 <iunlock>
80100e14:	83 c4 10             	add    $0x10,%esp
80100e17:	b8 00 00 00 00       	mov    $0x0,%eax
80100e1c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100e1f:	c9                   	leave  
80100e20:	c3                   	ret    
80100e21:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100e26:	eb f4                	jmp    80100e1c <filestat+0x3b>

80100e28 <fileread>:
80100e28:	55                   	push   %ebp
80100e29:	89 e5                	mov    %esp,%ebp
80100e2b:	56                   	push   %esi
80100e2c:	53                   	push   %ebx
80100e2d:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100e30:	80 7b 08 00          	cmpb   $0x0,0x8(%ebx)
80100e34:	74 70                	je     80100ea6 <fileread+0x7e>
80100e36:	8b 03                	mov    (%ebx),%eax
80100e38:	83 f8 01             	cmp    $0x1,%eax
80100e3b:	74 44                	je     80100e81 <fileread+0x59>
80100e3d:	83 f8 02             	cmp    $0x2,%eax
80100e40:	75 57                	jne    80100e99 <fileread+0x71>
80100e42:	83 ec 0c             	sub    $0xc,%esp
80100e45:	ff 73 10             	pushl  0x10(%ebx)
80100e48:	e8 99 06 00 00       	call   801014e6 <ilock>
80100e4d:	ff 75 10             	pushl  0x10(%ebp)
80100e50:	ff 73 14             	pushl  0x14(%ebx)
80100e53:	ff 75 0c             	pushl  0xc(%ebp)
80100e56:	ff 73 10             	pushl  0x10(%ebx)
80100e59:	e8 1c 09 00 00       	call   8010177a <readi>
80100e5e:	89 c6                	mov    %eax,%esi
80100e60:	83 c4 20             	add    $0x20,%esp
80100e63:	85 c0                	test   %eax,%eax
80100e65:	7e 03                	jle    80100e6a <fileread+0x42>
80100e67:	01 43 14             	add    %eax,0x14(%ebx)
80100e6a:	83 ec 0c             	sub    $0xc,%esp
80100e6d:	ff 73 10             	pushl  0x10(%ebx)
80100e70:	e8 33 07 00 00       	call   801015a8 <iunlock>
80100e75:	83 c4 10             	add    $0x10,%esp
80100e78:	89 f0                	mov    %esi,%eax
80100e7a:	8d 65 f8             	lea    -0x8(%ebp),%esp
80100e7d:	5b                   	pop    %ebx
80100e7e:	5e                   	pop    %esi
80100e7f:	5d                   	pop    %ebp
80100e80:	c3                   	ret    
80100e81:	83 ec 04             	sub    $0x4,%esp
80100e84:	ff 75 10             	pushl  0x10(%ebp)
80100e87:	ff 75 0c             	pushl  0xc(%ebp)
80100e8a:	ff 73 0c             	pushl  0xc(%ebx)
80100e8d:	e8 cd 21 00 00       	call   8010305f <piperead>
80100e92:	89 c6                	mov    %eax,%esi
80100e94:	83 c4 10             	add    $0x10,%esp
80100e97:	eb df                	jmp    80100e78 <fileread+0x50>
80100e99:	83 ec 0c             	sub    $0xc,%esp
80100e9c:	68 e6 69 10 80       	push   $0x801069e6
80100ea1:	e8 9e f4 ff ff       	call   80100344 <panic>
80100ea6:	be ff ff ff ff       	mov    $0xffffffff,%esi
80100eab:	eb cb                	jmp    80100e78 <fileread+0x50>

80100ead <filewrite>:
80100ead:	55                   	push   %ebp
80100eae:	89 e5                	mov    %esp,%ebp
80100eb0:	57                   	push   %edi
80100eb1:	56                   	push   %esi
80100eb2:	53                   	push   %ebx
80100eb3:	83 ec 1c             	sub    $0x1c,%esp
80100eb6:	8b 75 08             	mov    0x8(%ebp),%esi
80100eb9:	80 7e 09 00          	cmpb   $0x0,0x9(%esi)
80100ebd:	0f 84 e8 00 00 00    	je     80100fab <filewrite+0xfe>
80100ec3:	8b 06                	mov    (%esi),%eax
80100ec5:	83 f8 01             	cmp    $0x1,%eax
80100ec8:	74 1a                	je     80100ee4 <filewrite+0x37>
80100eca:	83 f8 02             	cmp    $0x2,%eax
80100ecd:	0f 85 cb 00 00 00    	jne    80100f9e <filewrite+0xf1>
80100ed3:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80100ed7:	0f 8e 9e 00 00 00    	jle    80100f7b <filewrite+0xce>
80100edd:	bf 00 00 00 00       	mov    $0x0,%edi
80100ee2:	eb 3f                	jmp    80100f23 <filewrite+0x76>
80100ee4:	83 ec 04             	sub    $0x4,%esp
80100ee7:	ff 75 10             	pushl  0x10(%ebp)
80100eea:	ff 75 0c             	pushl  0xc(%ebp)
80100eed:	ff 76 0c             	pushl  0xc(%esi)
80100ef0:	e8 71 20 00 00       	call   80102f66 <pipewrite>
80100ef5:	89 45 10             	mov    %eax,0x10(%ebp)
80100ef8:	83 c4 10             	add    $0x10,%esp
80100efb:	e9 93 00 00 00       	jmp    80100f93 <filewrite+0xe6>
80100f00:	83 ec 0c             	sub    $0xc,%esp
80100f03:	ff 76 10             	pushl  0x10(%esi)
80100f06:	e8 9d 06 00 00       	call   801015a8 <iunlock>
80100f0b:	e8 18 19 00 00       	call   80102828 <end_op>
80100f10:	83 c4 10             	add    $0x10,%esp
80100f13:	85 db                	test   %ebx,%ebx
80100f15:	78 6b                	js     80100f82 <filewrite+0xd5>
80100f17:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
80100f1a:	75 4e                	jne    80100f6a <filewrite+0xbd>
80100f1c:	01 df                	add    %ebx,%edi
80100f1e:	39 7d 10             	cmp    %edi,0x10(%ebp)
80100f21:	7e 54                	jle    80100f77 <filewrite+0xca>
80100f23:	8b 45 10             	mov    0x10(%ebp),%eax
80100f26:	29 f8                	sub    %edi,%eax
80100f28:	3d 00 06 00 00       	cmp    $0x600,%eax
80100f2d:	ba 00 06 00 00       	mov    $0x600,%edx
80100f32:	0f 4f c2             	cmovg  %edx,%eax
80100f35:	89 c3                	mov    %eax,%ebx
80100f37:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80100f3a:	e8 6e 18 00 00       	call   801027ad <begin_op>
80100f3f:	83 ec 0c             	sub    $0xc,%esp
80100f42:	ff 76 10             	pushl  0x10(%esi)
80100f45:	e8 9c 05 00 00       	call   801014e6 <ilock>
80100f4a:	53                   	push   %ebx
80100f4b:	ff 76 14             	pushl  0x14(%esi)
80100f4e:	89 f8                	mov    %edi,%eax
80100f50:	03 45 0c             	add    0xc(%ebp),%eax
80100f53:	50                   	push   %eax
80100f54:	ff 76 10             	pushl  0x10(%esi)
80100f57:	e8 1a 09 00 00       	call   80101876 <writei>
80100f5c:	89 c3                	mov    %eax,%ebx
80100f5e:	83 c4 20             	add    $0x20,%esp
80100f61:	85 c0                	test   %eax,%eax
80100f63:	7e 9b                	jle    80100f00 <filewrite+0x53>
80100f65:	01 46 14             	add    %eax,0x14(%esi)
80100f68:	eb 96                	jmp    80100f00 <filewrite+0x53>
80100f6a:	83 ec 0c             	sub    $0xc,%esp
80100f6d:	68 ef 69 10 80       	push   $0x801069ef
80100f72:	e8 cd f3 ff ff       	call   80100344 <panic>
80100f77:	89 f8                	mov    %edi,%eax
80100f79:	eb 09                	jmp    80100f84 <filewrite+0xd7>
80100f7b:	b8 00 00 00 00       	mov    $0x0,%eax
80100f80:	eb 02                	jmp    80100f84 <filewrite+0xd7>
80100f82:	89 f8                	mov    %edi,%eax
80100f84:	39 45 10             	cmp    %eax,0x10(%ebp)
80100f87:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100f8c:	0f 44 45 10          	cmove  0x10(%ebp),%eax
80100f90:	89 45 10             	mov    %eax,0x10(%ebp)
80100f93:	8b 45 10             	mov    0x10(%ebp),%eax
80100f96:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100f99:	5b                   	pop    %ebx
80100f9a:	5e                   	pop    %esi
80100f9b:	5f                   	pop    %edi
80100f9c:	5d                   	pop    %ebp
80100f9d:	c3                   	ret    
80100f9e:	83 ec 0c             	sub    $0xc,%esp
80100fa1:	68 f5 69 10 80       	push   $0x801069f5
80100fa6:	e8 99 f3 ff ff       	call   80100344 <panic>
80100fab:	c7 45 10 ff ff ff ff 	movl   $0xffffffff,0x10(%ebp)
80100fb2:	eb df                	jmp    80100f93 <filewrite+0xe6>

80100fb4 <bfree>:
80100fb4:	55                   	push   %ebp
80100fb5:	89 e5                	mov    %esp,%ebp
80100fb7:	56                   	push   %esi
80100fb8:	53                   	push   %ebx
80100fb9:	89 d3                	mov    %edx,%ebx
80100fbb:	83 ec 08             	sub    $0x8,%esp
80100fbe:	c1 ea 0c             	shr    $0xc,%edx
80100fc1:	03 15 f8 09 11 80    	add    0x801109f8,%edx
80100fc7:	52                   	push   %edx
80100fc8:	50                   	push   %eax
80100fc9:	e8 dc f0 ff ff       	call   801000aa <bread>
80100fce:	89 c6                	mov    %eax,%esi
80100fd0:	89 d9                	mov    %ebx,%ecx
80100fd2:	83 e1 07             	and    $0x7,%ecx
80100fd5:	b8 01 00 00 00       	mov    $0x1,%eax
80100fda:	d3 e0                	shl    %cl,%eax
80100fdc:	81 e3 ff 0f 00 00    	and    $0xfff,%ebx
80100fe2:	83 c4 10             	add    $0x10,%esp
80100fe5:	c1 fb 03             	sar    $0x3,%ebx
80100fe8:	0f b6 54 1e 5c       	movzbl 0x5c(%esi,%ebx,1),%edx
80100fed:	0f b6 ca             	movzbl %dl,%ecx
80100ff0:	85 c1                	test   %eax,%ecx
80100ff2:	74 23                	je     80101017 <bfree+0x63>
80100ff4:	f7 d0                	not    %eax
80100ff6:	21 d0                	and    %edx,%eax
80100ff8:	88 44 1e 5c          	mov    %al,0x5c(%esi,%ebx,1)
80100ffc:	83 ec 0c             	sub    $0xc,%esp
80100fff:	56                   	push   %esi
80101000:	e8 68 19 00 00       	call   8010296d <log_write>
80101005:	89 34 24             	mov    %esi,(%esp)
80101008:	e8 b4 f1 ff ff       	call   801001c1 <brelse>
8010100d:	83 c4 10             	add    $0x10,%esp
80101010:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101013:	5b                   	pop    %ebx
80101014:	5e                   	pop    %esi
80101015:	5d                   	pop    %ebp
80101016:	c3                   	ret    
80101017:	83 ec 0c             	sub    $0xc,%esp
8010101a:	68 ff 69 10 80       	push   $0x801069ff
8010101f:	e8 20 f3 ff ff       	call   80100344 <panic>

80101024 <balloc>:
80101024:	55                   	push   %ebp
80101025:	89 e5                	mov    %esp,%ebp
80101027:	57                   	push   %edi
80101028:	56                   	push   %esi
80101029:	53                   	push   %ebx
8010102a:	83 ec 2c             	sub    $0x2c,%esp
8010102d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
80101030:	83 3d e0 09 11 80 00 	cmpl   $0x0,0x801109e0
80101037:	0f 84 32 01 00 00    	je     8010116f <balloc+0x14b>
8010103d:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
80101044:	e9 8f 00 00 00       	jmp    801010d8 <balloc+0xb4>
80101049:	89 c3                	mov    %eax,%ebx
8010104b:	09 ca                	or     %ecx,%edx
8010104d:	8b 45 dc             	mov    -0x24(%ebp),%eax
80101050:	88 54 03 5c          	mov    %dl,0x5c(%ebx,%eax,1)
80101054:	83 ec 0c             	sub    $0xc,%esp
80101057:	53                   	push   %ebx
80101058:	e8 10 19 00 00       	call   8010296d <log_write>
8010105d:	89 1c 24             	mov    %ebx,(%esp)
80101060:	e8 5c f1 ff ff       	call   801001c1 <brelse>
80101065:	83 c4 08             	add    $0x8,%esp
80101068:	ff 75 e4             	pushl  -0x1c(%ebp)
8010106b:	ff 75 d4             	pushl  -0x2c(%ebp)
8010106e:	e8 37 f0 ff ff       	call   801000aa <bread>
80101073:	89 c6                	mov    %eax,%esi
80101075:	83 c4 0c             	add    $0xc,%esp
80101078:	68 00 02 00 00       	push   $0x200
8010107d:	6a 00                	push   $0x0
8010107f:	8d 40 5c             	lea    0x5c(%eax),%eax
80101082:	50                   	push   %eax
80101083:	e8 43 31 00 00       	call   801041cb <memset>
80101088:	89 34 24             	mov    %esi,(%esp)
8010108b:	e8 dd 18 00 00       	call   8010296d <log_write>
80101090:	89 34 24             	mov    %esi,(%esp)
80101093:	e8 29 f1 ff ff       	call   801001c1 <brelse>
80101098:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010109b:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010109e:	5b                   	pop    %ebx
8010109f:	5e                   	pop    %esi
801010a0:	5f                   	pop    %edi
801010a1:	5d                   	pop    %ebp
801010a2:	c3                   	ret    
801010a3:	89 c3                	mov    %eax,%ebx
801010a5:	89 7d e4             	mov    %edi,-0x1c(%ebp)
801010a8:	b9 01 00 00 00       	mov    $0x1,%ecx
801010ad:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
801010b4:	eb 95                	jmp    8010104b <balloc+0x27>
801010b6:	83 ec 0c             	sub    $0xc,%esp
801010b9:	50                   	push   %eax
801010ba:	e8 02 f1 ff ff       	call   801001c1 <brelse>
801010bf:	81 45 d8 00 10 00 00 	addl   $0x1000,-0x28(%ebp)
801010c6:	8b 45 d8             	mov    -0x28(%ebp),%eax
801010c9:	83 c4 10             	add    $0x10,%esp
801010cc:	39 05 e0 09 11 80    	cmp    %eax,0x801109e0
801010d2:	0f 86 97 00 00 00    	jbe    8010116f <balloc+0x14b>
801010d8:	83 ec 08             	sub    $0x8,%esp
801010db:	8b 7d d8             	mov    -0x28(%ebp),%edi
801010de:	89 fb                	mov    %edi,%ebx
801010e0:	8d 87 ff 0f 00 00    	lea    0xfff(%edi),%eax
801010e6:	85 ff                	test   %edi,%edi
801010e8:	0f 49 c7             	cmovns %edi,%eax
801010eb:	c1 f8 0c             	sar    $0xc,%eax
801010ee:	03 05 f8 09 11 80    	add    0x801109f8,%eax
801010f4:	50                   	push   %eax
801010f5:	ff 75 d4             	pushl  -0x2c(%ebp)
801010f8:	e8 ad ef ff ff       	call   801000aa <bread>
801010fd:	8b 0d e0 09 11 80    	mov    0x801109e0,%ecx
80101103:	83 c4 10             	add    $0x10,%esp
80101106:	39 cf                	cmp    %ecx,%edi
80101108:	73 ac                	jae    801010b6 <balloc+0x92>
8010110a:	0f b6 50 5c          	movzbl 0x5c(%eax),%edx
8010110e:	f6 c2 01             	test   $0x1,%dl
80101111:	74 90                	je     801010a3 <balloc+0x7f>
80101113:	29 f9                	sub    %edi,%ecx
80101115:	89 4d e0             	mov    %ecx,-0x20(%ebp)
80101118:	be 01 00 00 00       	mov    $0x1,%esi
8010111d:	8d 3c 1e             	lea    (%esi,%ebx,1),%edi
80101120:	89 7d e4             	mov    %edi,-0x1c(%ebp)
80101123:	3b 75 e0             	cmp    -0x20(%ebp),%esi
80101126:	74 8e                	je     801010b6 <balloc+0x92>
80101128:	89 f2                	mov    %esi,%edx
8010112a:	c1 fa 1f             	sar    $0x1f,%edx
8010112d:	c1 ea 1d             	shr    $0x1d,%edx
80101130:	8d 0c 16             	lea    (%esi,%edx,1),%ecx
80101133:	83 e1 07             	and    $0x7,%ecx
80101136:	29 d1                	sub    %edx,%ecx
80101138:	bf 01 00 00 00       	mov    $0x1,%edi
8010113d:	d3 e7                	shl    %cl,%edi
8010113f:	89 f9                	mov    %edi,%ecx
80101141:	8d 56 07             	lea    0x7(%esi),%edx
80101144:	85 f6                	test   %esi,%esi
80101146:	0f 49 d6             	cmovns %esi,%edx
80101149:	c1 fa 03             	sar    $0x3,%edx
8010114c:	89 55 dc             	mov    %edx,-0x24(%ebp)
8010114f:	0f b6 54 10 5c       	movzbl 0x5c(%eax,%edx,1),%edx
80101154:	0f b6 fa             	movzbl %dl,%edi
80101157:	85 cf                	test   %ecx,%edi
80101159:	0f 84 ea fe ff ff    	je     80101049 <balloc+0x25>
8010115f:	83 c6 01             	add    $0x1,%esi
80101162:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
80101168:	75 b3                	jne    8010111d <balloc+0xf9>
8010116a:	e9 47 ff ff ff       	jmp    801010b6 <balloc+0x92>
8010116f:	83 ec 0c             	sub    $0xc,%esp
80101172:	68 12 6a 10 80       	push   $0x80106a12
80101177:	e8 c8 f1 ff ff       	call   80100344 <panic>

8010117c <bmap>:
8010117c:	55                   	push   %ebp
8010117d:	89 e5                	mov    %esp,%ebp
8010117f:	57                   	push   %edi
80101180:	56                   	push   %esi
80101181:	53                   	push   %ebx
80101182:	83 ec 1c             	sub    $0x1c,%esp
80101185:	89 c6                	mov    %eax,%esi
80101187:	83 fa 0b             	cmp    $0xb,%edx
8010118a:	77 18                	ja     801011a4 <bmap+0x28>
8010118c:	8d 3c 90             	lea    (%eax,%edx,4),%edi
8010118f:	8b 5f 5c             	mov    0x5c(%edi),%ebx
80101192:	85 db                	test   %ebx,%ebx
80101194:	75 49                	jne    801011df <bmap+0x63>
80101196:	8b 00                	mov    (%eax),%eax
80101198:	e8 87 fe ff ff       	call   80101024 <balloc>
8010119d:	89 c3                	mov    %eax,%ebx
8010119f:	89 47 5c             	mov    %eax,0x5c(%edi)
801011a2:	eb 3b                	jmp    801011df <bmap+0x63>
801011a4:	8d 5a f4             	lea    -0xc(%edx),%ebx
801011a7:	83 fb 7f             	cmp    $0x7f,%ebx
801011aa:	77 68                	ja     80101214 <bmap+0x98>
801011ac:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
801011b2:	85 c0                	test   %eax,%eax
801011b4:	74 33                	je     801011e9 <bmap+0x6d>
801011b6:	83 ec 08             	sub    $0x8,%esp
801011b9:	50                   	push   %eax
801011ba:	ff 36                	pushl  (%esi)
801011bc:	e8 e9 ee ff ff       	call   801000aa <bread>
801011c1:	89 c7                	mov    %eax,%edi
801011c3:	8d 44 98 5c          	lea    0x5c(%eax,%ebx,4),%eax
801011c7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801011ca:	8b 18                	mov    (%eax),%ebx
801011cc:	83 c4 10             	add    $0x10,%esp
801011cf:	85 db                	test   %ebx,%ebx
801011d1:	74 25                	je     801011f8 <bmap+0x7c>
801011d3:	83 ec 0c             	sub    $0xc,%esp
801011d6:	57                   	push   %edi
801011d7:	e8 e5 ef ff ff       	call   801001c1 <brelse>
801011dc:	83 c4 10             	add    $0x10,%esp
801011df:	89 d8                	mov    %ebx,%eax
801011e1:	8d 65 f4             	lea    -0xc(%ebp),%esp
801011e4:	5b                   	pop    %ebx
801011e5:	5e                   	pop    %esi
801011e6:	5f                   	pop    %edi
801011e7:	5d                   	pop    %ebp
801011e8:	c3                   	ret    
801011e9:	8b 06                	mov    (%esi),%eax
801011eb:	e8 34 fe ff ff       	call   80101024 <balloc>
801011f0:	89 86 8c 00 00 00    	mov    %eax,0x8c(%esi)
801011f6:	eb be                	jmp    801011b6 <bmap+0x3a>
801011f8:	8b 06                	mov    (%esi),%eax
801011fa:	e8 25 fe ff ff       	call   80101024 <balloc>
801011ff:	89 c3                	mov    %eax,%ebx
80101201:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101204:	89 18                	mov    %ebx,(%eax)
80101206:	83 ec 0c             	sub    $0xc,%esp
80101209:	57                   	push   %edi
8010120a:	e8 5e 17 00 00       	call   8010296d <log_write>
8010120f:	83 c4 10             	add    $0x10,%esp
80101212:	eb bf                	jmp    801011d3 <bmap+0x57>
80101214:	83 ec 0c             	sub    $0xc,%esp
80101217:	68 28 6a 10 80       	push   $0x80106a28
8010121c:	e8 23 f1 ff ff       	call   80100344 <panic>

80101221 <iget>:
80101221:	55                   	push   %ebp
80101222:	89 e5                	mov    %esp,%ebp
80101224:	57                   	push   %edi
80101225:	56                   	push   %esi
80101226:	53                   	push   %ebx
80101227:	83 ec 28             	sub    $0x28,%esp
8010122a:	89 c7                	mov    %eax,%edi
8010122c:	89 55 e4             	mov    %edx,-0x1c(%ebp)
8010122f:	68 00 0a 11 80       	push   $0x80110a00
80101234:	e8 e4 2e 00 00       	call   8010411d <acquire>
80101239:	83 c4 10             	add    $0x10,%esp
8010123c:	be 00 00 00 00       	mov    $0x0,%esi
80101241:	bb 34 0a 11 80       	mov    $0x80110a34,%ebx
80101246:	eb 1c                	jmp    80101264 <iget+0x43>
80101248:	85 c0                	test   %eax,%eax
8010124a:	75 0a                	jne    80101256 <iget+0x35>
8010124c:	85 f6                	test   %esi,%esi
8010124e:	0f 94 c0             	sete   %al
80101251:	84 c0                	test   %al,%al
80101253:	0f 45 f3             	cmovne %ebx,%esi
80101256:	81 c3 90 00 00 00    	add    $0x90,%ebx
8010125c:	81 fb 54 26 11 80    	cmp    $0x80112654,%ebx
80101262:	73 2d                	jae    80101291 <iget+0x70>
80101264:	8b 43 08             	mov    0x8(%ebx),%eax
80101267:	85 c0                	test   %eax,%eax
80101269:	7e dd                	jle    80101248 <iget+0x27>
8010126b:	39 3b                	cmp    %edi,(%ebx)
8010126d:	75 e7                	jne    80101256 <iget+0x35>
8010126f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
80101272:	39 4b 04             	cmp    %ecx,0x4(%ebx)
80101275:	75 df                	jne    80101256 <iget+0x35>
80101277:	83 c0 01             	add    $0x1,%eax
8010127a:	89 43 08             	mov    %eax,0x8(%ebx)
8010127d:	83 ec 0c             	sub    $0xc,%esp
80101280:	68 00 0a 11 80       	push   $0x80110a00
80101285:	e8 fa 2e 00 00       	call   80104184 <release>
8010128a:	83 c4 10             	add    $0x10,%esp
8010128d:	89 de                	mov    %ebx,%esi
8010128f:	eb 2a                	jmp    801012bb <iget+0x9a>
80101291:	85 f6                	test   %esi,%esi
80101293:	74 30                	je     801012c5 <iget+0xa4>
80101295:	89 3e                	mov    %edi,(%esi)
80101297:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010129a:	89 46 04             	mov    %eax,0x4(%esi)
8010129d:	c7 46 08 01 00 00 00 	movl   $0x1,0x8(%esi)
801012a4:	c7 46 4c 00 00 00 00 	movl   $0x0,0x4c(%esi)
801012ab:	83 ec 0c             	sub    $0xc,%esp
801012ae:	68 00 0a 11 80       	push   $0x80110a00
801012b3:	e8 cc 2e 00 00       	call   80104184 <release>
801012b8:	83 c4 10             	add    $0x10,%esp
801012bb:	89 f0                	mov    %esi,%eax
801012bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
801012c0:	5b                   	pop    %ebx
801012c1:	5e                   	pop    %esi
801012c2:	5f                   	pop    %edi
801012c3:	5d                   	pop    %ebp
801012c4:	c3                   	ret    
801012c5:	83 ec 0c             	sub    $0xc,%esp
801012c8:	68 3b 6a 10 80       	push   $0x80106a3b
801012cd:	e8 72 f0 ff ff       	call   80100344 <panic>

801012d2 <readsb>:
801012d2:	55                   	push   %ebp
801012d3:	89 e5                	mov    %esp,%ebp
801012d5:	53                   	push   %ebx
801012d6:	83 ec 0c             	sub    $0xc,%esp
801012d9:	6a 01                	push   $0x1
801012db:	ff 75 08             	pushl  0x8(%ebp)
801012de:	e8 c7 ed ff ff       	call   801000aa <bread>
801012e3:	89 c3                	mov    %eax,%ebx
801012e5:	83 c4 0c             	add    $0xc,%esp
801012e8:	6a 1c                	push   $0x1c
801012ea:	8d 40 5c             	lea    0x5c(%eax),%eax
801012ed:	50                   	push   %eax
801012ee:	ff 75 0c             	pushl  0xc(%ebp)
801012f1:	e8 6a 2f 00 00       	call   80104260 <memmove>
801012f6:	89 1c 24             	mov    %ebx,(%esp)
801012f9:	e8 c3 ee ff ff       	call   801001c1 <brelse>
801012fe:	83 c4 10             	add    $0x10,%esp
80101301:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101304:	c9                   	leave  
80101305:	c3                   	ret    

80101306 <iinit>:
80101306:	55                   	push   %ebp
80101307:	89 e5                	mov    %esp,%ebp
80101309:	56                   	push   %esi
8010130a:	53                   	push   %ebx
8010130b:	83 ec 08             	sub    $0x8,%esp
8010130e:	68 4b 6a 10 80       	push   $0x80106a4b
80101313:	68 00 0a 11 80       	push   $0x80110a00
80101318:	e8 b8 2c 00 00       	call   80103fd5 <initlock>
8010131d:	bb 40 0a 11 80       	mov    $0x80110a40,%ebx
80101322:	be 60 26 11 80       	mov    $0x80112660,%esi
80101327:	83 c4 10             	add    $0x10,%esp
8010132a:	83 ec 08             	sub    $0x8,%esp
8010132d:	68 52 6a 10 80       	push   $0x80106a52
80101332:	53                   	push   %ebx
80101333:	e8 93 2b 00 00       	call   80103ecb <initsleeplock>
80101338:	81 c3 90 00 00 00    	add    $0x90,%ebx
8010133e:	83 c4 10             	add    $0x10,%esp
80101341:	39 f3                	cmp    %esi,%ebx
80101343:	75 e5                	jne    8010132a <iinit+0x24>
80101345:	83 ec 08             	sub    $0x8,%esp
80101348:	68 e0 09 11 80       	push   $0x801109e0
8010134d:	ff 75 08             	pushl  0x8(%ebp)
80101350:	e8 7d ff ff ff       	call   801012d2 <readsb>
80101355:	ff 35 f8 09 11 80    	pushl  0x801109f8
8010135b:	ff 35 f4 09 11 80    	pushl  0x801109f4
80101361:	ff 35 f0 09 11 80    	pushl  0x801109f0
80101367:	ff 35 ec 09 11 80    	pushl  0x801109ec
8010136d:	ff 35 e8 09 11 80    	pushl  0x801109e8
80101373:	ff 35 e4 09 11 80    	pushl  0x801109e4
80101379:	ff 35 e0 09 11 80    	pushl  0x801109e0
8010137f:	68 b8 6a 10 80       	push   $0x80106ab8
80101384:	e8 58 f2 ff ff       	call   801005e1 <cprintf>
80101389:	83 c4 30             	add    $0x30,%esp
8010138c:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010138f:	5b                   	pop    %ebx
80101390:	5e                   	pop    %esi
80101391:	5d                   	pop    %ebp
80101392:	c3                   	ret    

80101393 <ialloc>:
80101393:	55                   	push   %ebp
80101394:	89 e5                	mov    %esp,%ebp
80101396:	57                   	push   %edi
80101397:	56                   	push   %esi
80101398:	53                   	push   %ebx
80101399:	83 ec 1c             	sub    $0x1c,%esp
8010139c:	8b 45 0c             	mov    0xc(%ebp),%eax
8010139f:	89 45 e0             	mov    %eax,-0x20(%ebp)
801013a2:	83 3d e8 09 11 80 01 	cmpl   $0x1,0x801109e8
801013a9:	76 4d                	jbe    801013f8 <ialloc+0x65>
801013ab:	bb 01 00 00 00       	mov    $0x1,%ebx
801013b0:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
801013b3:	83 ec 08             	sub    $0x8,%esp
801013b6:	89 d8                	mov    %ebx,%eax
801013b8:	c1 e8 03             	shr    $0x3,%eax
801013bb:	03 05 f4 09 11 80    	add    0x801109f4,%eax
801013c1:	50                   	push   %eax
801013c2:	ff 75 08             	pushl  0x8(%ebp)
801013c5:	e8 e0 ec ff ff       	call   801000aa <bread>
801013ca:	89 c6                	mov    %eax,%esi
801013cc:	89 d8                	mov    %ebx,%eax
801013ce:	83 e0 07             	and    $0x7,%eax
801013d1:	c1 e0 06             	shl    $0x6,%eax
801013d4:	8d 7c 06 5c          	lea    0x5c(%esi,%eax,1),%edi
801013d8:	83 c4 10             	add    $0x10,%esp
801013db:	66 83 3f 00          	cmpw   $0x0,(%edi)
801013df:	74 24                	je     80101405 <ialloc+0x72>
801013e1:	83 ec 0c             	sub    $0xc,%esp
801013e4:	56                   	push   %esi
801013e5:	e8 d7 ed ff ff       	call   801001c1 <brelse>
801013ea:	83 c3 01             	add    $0x1,%ebx
801013ed:	83 c4 10             	add    $0x10,%esp
801013f0:	39 1d e8 09 11 80    	cmp    %ebx,0x801109e8
801013f6:	77 b8                	ja     801013b0 <ialloc+0x1d>
801013f8:	83 ec 0c             	sub    $0xc,%esp
801013fb:	68 58 6a 10 80       	push   $0x80106a58
80101400:	e8 3f ef ff ff       	call   80100344 <panic>
80101405:	83 ec 04             	sub    $0x4,%esp
80101408:	6a 40                	push   $0x40
8010140a:	6a 00                	push   $0x0
8010140c:	57                   	push   %edi
8010140d:	e8 b9 2d 00 00       	call   801041cb <memset>
80101412:	0f b7 45 e0          	movzwl -0x20(%ebp),%eax
80101416:	66 89 07             	mov    %ax,(%edi)
80101419:	89 34 24             	mov    %esi,(%esp)
8010141c:	e8 4c 15 00 00       	call   8010296d <log_write>
80101421:	89 34 24             	mov    %esi,(%esp)
80101424:	e8 98 ed ff ff       	call   801001c1 <brelse>
80101429:	8b 55 e4             	mov    -0x1c(%ebp),%edx
8010142c:	8b 45 08             	mov    0x8(%ebp),%eax
8010142f:	e8 ed fd ff ff       	call   80101221 <iget>
80101434:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101437:	5b                   	pop    %ebx
80101438:	5e                   	pop    %esi
80101439:	5f                   	pop    %edi
8010143a:	5d                   	pop    %ebp
8010143b:	c3                   	ret    

8010143c <iupdate>:
8010143c:	55                   	push   %ebp
8010143d:	89 e5                	mov    %esp,%ebp
8010143f:	56                   	push   %esi
80101440:	53                   	push   %ebx
80101441:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101444:	83 ec 08             	sub    $0x8,%esp
80101447:	8b 43 04             	mov    0x4(%ebx),%eax
8010144a:	c1 e8 03             	shr    $0x3,%eax
8010144d:	03 05 f4 09 11 80    	add    0x801109f4,%eax
80101453:	50                   	push   %eax
80101454:	ff 33                	pushl  (%ebx)
80101456:	e8 4f ec ff ff       	call   801000aa <bread>
8010145b:	89 c6                	mov    %eax,%esi
8010145d:	8b 43 04             	mov    0x4(%ebx),%eax
80101460:	83 e0 07             	and    $0x7,%eax
80101463:	c1 e0 06             	shl    $0x6,%eax
80101466:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
8010146a:	0f b7 53 50          	movzwl 0x50(%ebx),%edx
8010146e:	66 89 10             	mov    %dx,(%eax)
80101471:	0f b7 53 52          	movzwl 0x52(%ebx),%edx
80101475:	66 89 50 02          	mov    %dx,0x2(%eax)
80101479:	0f b7 53 54          	movzwl 0x54(%ebx),%edx
8010147d:	66 89 50 04          	mov    %dx,0x4(%eax)
80101481:	0f b7 53 56          	movzwl 0x56(%ebx),%edx
80101485:	66 89 50 06          	mov    %dx,0x6(%eax)
80101489:	8b 53 58             	mov    0x58(%ebx),%edx
8010148c:	89 50 08             	mov    %edx,0x8(%eax)
8010148f:	83 c4 0c             	add    $0xc,%esp
80101492:	6a 34                	push   $0x34
80101494:	83 c3 5c             	add    $0x5c,%ebx
80101497:	53                   	push   %ebx
80101498:	83 c0 0c             	add    $0xc,%eax
8010149b:	50                   	push   %eax
8010149c:	e8 bf 2d 00 00       	call   80104260 <memmove>
801014a1:	89 34 24             	mov    %esi,(%esp)
801014a4:	e8 c4 14 00 00       	call   8010296d <log_write>
801014a9:	89 34 24             	mov    %esi,(%esp)
801014ac:	e8 10 ed ff ff       	call   801001c1 <brelse>
801014b1:	83 c4 10             	add    $0x10,%esp
801014b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
801014b7:	5b                   	pop    %ebx
801014b8:	5e                   	pop    %esi
801014b9:	5d                   	pop    %ebp
801014ba:	c3                   	ret    

801014bb <idup>:
801014bb:	55                   	push   %ebp
801014bc:	89 e5                	mov    %esp,%ebp
801014be:	53                   	push   %ebx
801014bf:	83 ec 10             	sub    $0x10,%esp
801014c2:	8b 5d 08             	mov    0x8(%ebp),%ebx
801014c5:	68 00 0a 11 80       	push   $0x80110a00
801014ca:	e8 4e 2c 00 00       	call   8010411d <acquire>
801014cf:	83 43 08 01          	addl   $0x1,0x8(%ebx)
801014d3:	c7 04 24 00 0a 11 80 	movl   $0x80110a00,(%esp)
801014da:	e8 a5 2c 00 00       	call   80104184 <release>
801014df:	89 d8                	mov    %ebx,%eax
801014e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801014e4:	c9                   	leave  
801014e5:	c3                   	ret    

801014e6 <ilock>:
801014e6:	55                   	push   %ebp
801014e7:	89 e5                	mov    %esp,%ebp
801014e9:	56                   	push   %esi
801014ea:	53                   	push   %ebx
801014eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
801014ee:	85 db                	test   %ebx,%ebx
801014f0:	74 22                	je     80101514 <ilock+0x2e>
801014f2:	83 7b 08 00          	cmpl   $0x0,0x8(%ebx)
801014f6:	7e 1c                	jle    80101514 <ilock+0x2e>
801014f8:	83 ec 0c             	sub    $0xc,%esp
801014fb:	8d 43 0c             	lea    0xc(%ebx),%eax
801014fe:	50                   	push   %eax
801014ff:	e8 fa 29 00 00       	call   80103efe <acquiresleep>
80101504:	83 c4 10             	add    $0x10,%esp
80101507:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
8010150b:	74 14                	je     80101521 <ilock+0x3b>
8010150d:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101510:	5b                   	pop    %ebx
80101511:	5e                   	pop    %esi
80101512:	5d                   	pop    %ebp
80101513:	c3                   	ret    
80101514:	83 ec 0c             	sub    $0xc,%esp
80101517:	68 6a 6a 10 80       	push   $0x80106a6a
8010151c:	e8 23 ee ff ff       	call   80100344 <panic>
80101521:	83 ec 08             	sub    $0x8,%esp
80101524:	8b 43 04             	mov    0x4(%ebx),%eax
80101527:	c1 e8 03             	shr    $0x3,%eax
8010152a:	03 05 f4 09 11 80    	add    0x801109f4,%eax
80101530:	50                   	push   %eax
80101531:	ff 33                	pushl  (%ebx)
80101533:	e8 72 eb ff ff       	call   801000aa <bread>
80101538:	89 c6                	mov    %eax,%esi
8010153a:	8b 43 04             	mov    0x4(%ebx),%eax
8010153d:	83 e0 07             	and    $0x7,%eax
80101540:	c1 e0 06             	shl    $0x6,%eax
80101543:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
80101547:	0f b7 10             	movzwl (%eax),%edx
8010154a:	66 89 53 50          	mov    %dx,0x50(%ebx)
8010154e:	0f b7 50 02          	movzwl 0x2(%eax),%edx
80101552:	66 89 53 52          	mov    %dx,0x52(%ebx)
80101556:	0f b7 50 04          	movzwl 0x4(%eax),%edx
8010155a:	66 89 53 54          	mov    %dx,0x54(%ebx)
8010155e:	0f b7 50 06          	movzwl 0x6(%eax),%edx
80101562:	66 89 53 56          	mov    %dx,0x56(%ebx)
80101566:	8b 50 08             	mov    0x8(%eax),%edx
80101569:	89 53 58             	mov    %edx,0x58(%ebx)
8010156c:	83 c4 0c             	add    $0xc,%esp
8010156f:	6a 34                	push   $0x34
80101571:	83 c0 0c             	add    $0xc,%eax
80101574:	50                   	push   %eax
80101575:	8d 43 5c             	lea    0x5c(%ebx),%eax
80101578:	50                   	push   %eax
80101579:	e8 e2 2c 00 00       	call   80104260 <memmove>
8010157e:	89 34 24             	mov    %esi,(%esp)
80101581:	e8 3b ec ff ff       	call   801001c1 <brelse>
80101586:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
8010158d:	83 c4 10             	add    $0x10,%esp
80101590:	66 83 7b 50 00       	cmpw   $0x0,0x50(%ebx)
80101595:	0f 85 72 ff ff ff    	jne    8010150d <ilock+0x27>
8010159b:	83 ec 0c             	sub    $0xc,%esp
8010159e:	68 70 6a 10 80       	push   $0x80106a70
801015a3:	e8 9c ed ff ff       	call   80100344 <panic>

801015a8 <iunlock>:
801015a8:	55                   	push   %ebp
801015a9:	89 e5                	mov    %esp,%ebp
801015ab:	56                   	push   %esi
801015ac:	53                   	push   %ebx
801015ad:	8b 5d 08             	mov    0x8(%ebp),%ebx
801015b0:	85 db                	test   %ebx,%ebx
801015b2:	74 2c                	je     801015e0 <iunlock+0x38>
801015b4:	8d 73 0c             	lea    0xc(%ebx),%esi
801015b7:	83 ec 0c             	sub    $0xc,%esp
801015ba:	56                   	push   %esi
801015bb:	e8 cb 29 00 00       	call   80103f8b <holdingsleep>
801015c0:	83 c4 10             	add    $0x10,%esp
801015c3:	85 c0                	test   %eax,%eax
801015c5:	74 19                	je     801015e0 <iunlock+0x38>
801015c7:	83 7b 08 00          	cmpl   $0x0,0x8(%ebx)
801015cb:	7e 13                	jle    801015e0 <iunlock+0x38>
801015cd:	83 ec 0c             	sub    $0xc,%esp
801015d0:	56                   	push   %esi
801015d1:	e8 7a 29 00 00       	call   80103f50 <releasesleep>
801015d6:	83 c4 10             	add    $0x10,%esp
801015d9:	8d 65 f8             	lea    -0x8(%ebp),%esp
801015dc:	5b                   	pop    %ebx
801015dd:	5e                   	pop    %esi
801015de:	5d                   	pop    %ebp
801015df:	c3                   	ret    
801015e0:	83 ec 0c             	sub    $0xc,%esp
801015e3:	68 7f 6a 10 80       	push   $0x80106a7f
801015e8:	e8 57 ed ff ff       	call   80100344 <panic>

801015ed <iput>:
801015ed:	55                   	push   %ebp
801015ee:	89 e5                	mov    %esp,%ebp
801015f0:	57                   	push   %edi
801015f1:	56                   	push   %esi
801015f2:	53                   	push   %ebx
801015f3:	83 ec 28             	sub    $0x28,%esp
801015f6:	8b 5d 08             	mov    0x8(%ebp),%ebx
801015f9:	8d 73 0c             	lea    0xc(%ebx),%esi
801015fc:	56                   	push   %esi
801015fd:	e8 fc 28 00 00       	call   80103efe <acquiresleep>
80101602:	83 c4 10             	add    $0x10,%esp
80101605:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
80101609:	74 07                	je     80101612 <iput+0x25>
8010160b:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
80101610:	74 30                	je     80101642 <iput+0x55>
80101612:	83 ec 0c             	sub    $0xc,%esp
80101615:	56                   	push   %esi
80101616:	e8 35 29 00 00       	call   80103f50 <releasesleep>
8010161b:	c7 04 24 00 0a 11 80 	movl   $0x80110a00,(%esp)
80101622:	e8 f6 2a 00 00       	call   8010411d <acquire>
80101627:	83 6b 08 01          	subl   $0x1,0x8(%ebx)
8010162b:	c7 04 24 00 0a 11 80 	movl   $0x80110a00,(%esp)
80101632:	e8 4d 2b 00 00       	call   80104184 <release>
80101637:	83 c4 10             	add    $0x10,%esp
8010163a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010163d:	5b                   	pop    %ebx
8010163e:	5e                   	pop    %esi
8010163f:	5f                   	pop    %edi
80101640:	5d                   	pop    %ebp
80101641:	c3                   	ret    
80101642:	83 ec 0c             	sub    $0xc,%esp
80101645:	68 00 0a 11 80       	push   $0x80110a00
8010164a:	e8 ce 2a 00 00       	call   8010411d <acquire>
8010164f:	8b 7b 08             	mov    0x8(%ebx),%edi
80101652:	c7 04 24 00 0a 11 80 	movl   $0x80110a00,(%esp)
80101659:	e8 26 2b 00 00       	call   80104184 <release>
8010165e:	83 c4 10             	add    $0x10,%esp
80101661:	83 ff 01             	cmp    $0x1,%edi
80101664:	75 ac                	jne    80101612 <iput+0x25>
80101666:	8d 7b 5c             	lea    0x5c(%ebx),%edi
80101669:	8d 83 8c 00 00 00    	lea    0x8c(%ebx),%eax
8010166f:	89 75 e4             	mov    %esi,-0x1c(%ebp)
80101672:	89 c6                	mov    %eax,%esi
80101674:	eb 07                	jmp    8010167d <iput+0x90>
80101676:	83 c7 04             	add    $0x4,%edi
80101679:	39 f7                	cmp    %esi,%edi
8010167b:	74 15                	je     80101692 <iput+0xa5>
8010167d:	8b 17                	mov    (%edi),%edx
8010167f:	85 d2                	test   %edx,%edx
80101681:	74 f3                	je     80101676 <iput+0x89>
80101683:	8b 03                	mov    (%ebx),%eax
80101685:	e8 2a f9 ff ff       	call   80100fb4 <bfree>
8010168a:	c7 07 00 00 00 00    	movl   $0x0,(%edi)
80101690:	eb e4                	jmp    80101676 <iput+0x89>
80101692:	8b 75 e4             	mov    -0x1c(%ebp),%esi
80101695:	8b 83 8c 00 00 00    	mov    0x8c(%ebx),%eax
8010169b:	85 c0                	test   %eax,%eax
8010169d:	75 2d                	jne    801016cc <iput+0xdf>
8010169f:	c7 43 58 00 00 00 00 	movl   $0x0,0x58(%ebx)
801016a6:	83 ec 0c             	sub    $0xc,%esp
801016a9:	53                   	push   %ebx
801016aa:	e8 8d fd ff ff       	call   8010143c <iupdate>
801016af:	66 c7 43 50 00 00    	movw   $0x0,0x50(%ebx)
801016b5:	89 1c 24             	mov    %ebx,(%esp)
801016b8:	e8 7f fd ff ff       	call   8010143c <iupdate>
801016bd:	c7 43 4c 00 00 00 00 	movl   $0x0,0x4c(%ebx)
801016c4:	83 c4 10             	add    $0x10,%esp
801016c7:	e9 46 ff ff ff       	jmp    80101612 <iput+0x25>
801016cc:	83 ec 08             	sub    $0x8,%esp
801016cf:	50                   	push   %eax
801016d0:	ff 33                	pushl  (%ebx)
801016d2:	e8 d3 e9 ff ff       	call   801000aa <bread>
801016d7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801016da:	8d 78 5c             	lea    0x5c(%eax),%edi
801016dd:	05 5c 02 00 00       	add    $0x25c,%eax
801016e2:	83 c4 10             	add    $0x10,%esp
801016e5:	89 75 e0             	mov    %esi,-0x20(%ebp)
801016e8:	89 c6                	mov    %eax,%esi
801016ea:	eb 07                	jmp    801016f3 <iput+0x106>
801016ec:	83 c7 04             	add    $0x4,%edi
801016ef:	39 fe                	cmp    %edi,%esi
801016f1:	74 0f                	je     80101702 <iput+0x115>
801016f3:	8b 17                	mov    (%edi),%edx
801016f5:	85 d2                	test   %edx,%edx
801016f7:	74 f3                	je     801016ec <iput+0xff>
801016f9:	8b 03                	mov    (%ebx),%eax
801016fb:	e8 b4 f8 ff ff       	call   80100fb4 <bfree>
80101700:	eb ea                	jmp    801016ec <iput+0xff>
80101702:	8b 75 e0             	mov    -0x20(%ebp),%esi
80101705:	83 ec 0c             	sub    $0xc,%esp
80101708:	ff 75 e4             	pushl  -0x1c(%ebp)
8010170b:	e8 b1 ea ff ff       	call   801001c1 <brelse>
80101710:	8b 93 8c 00 00 00    	mov    0x8c(%ebx),%edx
80101716:	8b 03                	mov    (%ebx),%eax
80101718:	e8 97 f8 ff ff       	call   80100fb4 <bfree>
8010171d:	c7 83 8c 00 00 00 00 	movl   $0x0,0x8c(%ebx)
80101724:	00 00 00 
80101727:	83 c4 10             	add    $0x10,%esp
8010172a:	e9 70 ff ff ff       	jmp    8010169f <iput+0xb2>

8010172f <iunlockput>:
8010172f:	55                   	push   %ebp
80101730:	89 e5                	mov    %esp,%ebp
80101732:	53                   	push   %ebx
80101733:	83 ec 10             	sub    $0x10,%esp
80101736:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101739:	53                   	push   %ebx
8010173a:	e8 69 fe ff ff       	call   801015a8 <iunlock>
8010173f:	89 1c 24             	mov    %ebx,(%esp)
80101742:	e8 a6 fe ff ff       	call   801015ed <iput>
80101747:	83 c4 10             	add    $0x10,%esp
8010174a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010174d:	c9                   	leave  
8010174e:	c3                   	ret    

8010174f <stati>:
8010174f:	55                   	push   %ebp
80101750:	89 e5                	mov    %esp,%ebp
80101752:	8b 55 08             	mov    0x8(%ebp),%edx
80101755:	8b 45 0c             	mov    0xc(%ebp),%eax
80101758:	8b 0a                	mov    (%edx),%ecx
8010175a:	89 48 04             	mov    %ecx,0x4(%eax)
8010175d:	8b 4a 04             	mov    0x4(%edx),%ecx
80101760:	89 48 08             	mov    %ecx,0x8(%eax)
80101763:	0f b7 4a 50          	movzwl 0x50(%edx),%ecx
80101767:	66 89 08             	mov    %cx,(%eax)
8010176a:	0f b7 4a 56          	movzwl 0x56(%edx),%ecx
8010176e:	66 89 48 0c          	mov    %cx,0xc(%eax)
80101772:	8b 52 58             	mov    0x58(%edx),%edx
80101775:	89 50 10             	mov    %edx,0x10(%eax)
80101778:	5d                   	pop    %ebp
80101779:	c3                   	ret    

8010177a <readi>:
8010177a:	55                   	push   %ebp
8010177b:	89 e5                	mov    %esp,%ebp
8010177d:	57                   	push   %edi
8010177e:	56                   	push   %esi
8010177f:	53                   	push   %ebx
80101780:	83 ec 1c             	sub    $0x1c,%esp
80101783:	8b 7d 10             	mov    0x10(%ebp),%edi
80101786:	8b 45 08             	mov    0x8(%ebp),%eax
80101789:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
8010178e:	0f 84 9d 00 00 00    	je     80101831 <readi+0xb7>
80101794:	8b 45 08             	mov    0x8(%ebp),%eax
80101797:	8b 40 58             	mov    0x58(%eax),%eax
8010179a:	39 f8                	cmp    %edi,%eax
8010179c:	0f 82 c6 00 00 00    	jb     80101868 <readi+0xee>
801017a2:	89 fa                	mov    %edi,%edx
801017a4:	03 55 14             	add    0x14(%ebp),%edx
801017a7:	0f 82 c2 00 00 00    	jb     8010186f <readi+0xf5>
801017ad:	89 c1                	mov    %eax,%ecx
801017af:	29 f9                	sub    %edi,%ecx
801017b1:	39 d0                	cmp    %edx,%eax
801017b3:	0f 43 4d 14          	cmovae 0x14(%ebp),%ecx
801017b7:	89 4d 14             	mov    %ecx,0x14(%ebp)
801017ba:	85 c9                	test   %ecx,%ecx
801017bc:	74 68                	je     80101826 <readi+0xac>
801017be:	be 00 00 00 00       	mov    $0x0,%esi
801017c3:	89 fa                	mov    %edi,%edx
801017c5:	c1 ea 09             	shr    $0x9,%edx
801017c8:	8b 45 08             	mov    0x8(%ebp),%eax
801017cb:	e8 ac f9 ff ff       	call   8010117c <bmap>
801017d0:	83 ec 08             	sub    $0x8,%esp
801017d3:	50                   	push   %eax
801017d4:	8b 45 08             	mov    0x8(%ebp),%eax
801017d7:	ff 30                	pushl  (%eax)
801017d9:	e8 cc e8 ff ff       	call   801000aa <bread>
801017de:	89 c1                	mov    %eax,%ecx
801017e0:	89 f8                	mov    %edi,%eax
801017e2:	25 ff 01 00 00       	and    $0x1ff,%eax
801017e7:	bb 00 02 00 00       	mov    $0x200,%ebx
801017ec:	29 c3                	sub    %eax,%ebx
801017ee:	8b 55 14             	mov    0x14(%ebp),%edx
801017f1:	29 f2                	sub    %esi,%edx
801017f3:	83 c4 0c             	add    $0xc,%esp
801017f6:	39 d3                	cmp    %edx,%ebx
801017f8:	0f 47 da             	cmova  %edx,%ebx
801017fb:	53                   	push   %ebx
801017fc:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
801017ff:	8d 44 01 5c          	lea    0x5c(%ecx,%eax,1),%eax
80101803:	50                   	push   %eax
80101804:	ff 75 0c             	pushl  0xc(%ebp)
80101807:	e8 54 2a 00 00       	call   80104260 <memmove>
8010180c:	83 c4 04             	add    $0x4,%esp
8010180f:	ff 75 e4             	pushl  -0x1c(%ebp)
80101812:	e8 aa e9 ff ff       	call   801001c1 <brelse>
80101817:	01 de                	add    %ebx,%esi
80101819:	01 df                	add    %ebx,%edi
8010181b:	01 5d 0c             	add    %ebx,0xc(%ebp)
8010181e:	83 c4 10             	add    $0x10,%esp
80101821:	39 75 14             	cmp    %esi,0x14(%ebp)
80101824:	77 9d                	ja     801017c3 <readi+0x49>
80101826:	8b 45 14             	mov    0x14(%ebp),%eax
80101829:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010182c:	5b                   	pop    %ebx
8010182d:	5e                   	pop    %esi
8010182e:	5f                   	pop    %edi
8010182f:	5d                   	pop    %ebp
80101830:	c3                   	ret    
80101831:	0f b7 40 52          	movzwl 0x52(%eax),%eax
80101835:	66 83 f8 09          	cmp    $0x9,%ax
80101839:	77 1f                	ja     8010185a <readi+0xe0>
8010183b:	98                   	cwtl   
8010183c:	8b 04 c5 80 09 11 80 	mov    -0x7feef680(,%eax,8),%eax
80101843:	85 c0                	test   %eax,%eax
80101845:	74 1a                	je     80101861 <readi+0xe7>
80101847:	83 ec 04             	sub    $0x4,%esp
8010184a:	ff 75 14             	pushl  0x14(%ebp)
8010184d:	ff 75 0c             	pushl  0xc(%ebp)
80101850:	ff 75 08             	pushl  0x8(%ebp)
80101853:	ff d0                	call   *%eax
80101855:	83 c4 10             	add    $0x10,%esp
80101858:	eb cf                	jmp    80101829 <readi+0xaf>
8010185a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010185f:	eb c8                	jmp    80101829 <readi+0xaf>
80101861:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101866:	eb c1                	jmp    80101829 <readi+0xaf>
80101868:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010186d:	eb ba                	jmp    80101829 <readi+0xaf>
8010186f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101874:	eb b3                	jmp    80101829 <readi+0xaf>

80101876 <writei>:
80101876:	55                   	push   %ebp
80101877:	89 e5                	mov    %esp,%ebp
80101879:	57                   	push   %edi
8010187a:	56                   	push   %esi
8010187b:	53                   	push   %ebx
8010187c:	83 ec 1c             	sub    $0x1c,%esp
8010187f:	8b 75 10             	mov    0x10(%ebp),%esi
80101882:	8b 45 08             	mov    0x8(%ebp),%eax
80101885:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
8010188a:	0f 84 ae 00 00 00    	je     8010193e <writei+0xc8>
80101890:	8b 45 08             	mov    0x8(%ebp),%eax
80101893:	39 70 58             	cmp    %esi,0x58(%eax)
80101896:	0f 82 ed 00 00 00    	jb     80101989 <writei+0x113>
8010189c:	89 f0                	mov    %esi,%eax
8010189e:	03 45 14             	add    0x14(%ebp),%eax
801018a1:	3d 00 18 01 00       	cmp    $0x11800,%eax
801018a6:	0f 87 e4 00 00 00    	ja     80101990 <writei+0x11a>
801018ac:	39 f0                	cmp    %esi,%eax
801018ae:	0f 82 dc 00 00 00    	jb     80101990 <writei+0x11a>
801018b4:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
801018b8:	74 79                	je     80101933 <writei+0xbd>
801018ba:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
801018c1:	89 f2                	mov    %esi,%edx
801018c3:	c1 ea 09             	shr    $0x9,%edx
801018c6:	8b 45 08             	mov    0x8(%ebp),%eax
801018c9:	e8 ae f8 ff ff       	call   8010117c <bmap>
801018ce:	83 ec 08             	sub    $0x8,%esp
801018d1:	50                   	push   %eax
801018d2:	8b 45 08             	mov    0x8(%ebp),%eax
801018d5:	ff 30                	pushl  (%eax)
801018d7:	e8 ce e7 ff ff       	call   801000aa <bread>
801018dc:	89 c7                	mov    %eax,%edi
801018de:	89 f0                	mov    %esi,%eax
801018e0:	25 ff 01 00 00       	and    $0x1ff,%eax
801018e5:	bb 00 02 00 00       	mov    $0x200,%ebx
801018ea:	29 c3                	sub    %eax,%ebx
801018ec:	8b 55 14             	mov    0x14(%ebp),%edx
801018ef:	2b 55 e4             	sub    -0x1c(%ebp),%edx
801018f2:	83 c4 0c             	add    $0xc,%esp
801018f5:	39 d3                	cmp    %edx,%ebx
801018f7:	0f 47 da             	cmova  %edx,%ebx
801018fa:	53                   	push   %ebx
801018fb:	ff 75 0c             	pushl  0xc(%ebp)
801018fe:	8d 44 07 5c          	lea    0x5c(%edi,%eax,1),%eax
80101902:	50                   	push   %eax
80101903:	e8 58 29 00 00       	call   80104260 <memmove>
80101908:	89 3c 24             	mov    %edi,(%esp)
8010190b:	e8 5d 10 00 00       	call   8010296d <log_write>
80101910:	89 3c 24             	mov    %edi,(%esp)
80101913:	e8 a9 e8 ff ff       	call   801001c1 <brelse>
80101918:	01 5d e4             	add    %ebx,-0x1c(%ebp)
8010191b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
8010191e:	01 de                	add    %ebx,%esi
80101920:	01 5d 0c             	add    %ebx,0xc(%ebp)
80101923:	83 c4 10             	add    $0x10,%esp
80101926:	39 4d 14             	cmp    %ecx,0x14(%ebp)
80101929:	77 96                	ja     801018c1 <writei+0x4b>
8010192b:	8b 45 08             	mov    0x8(%ebp),%eax
8010192e:	39 70 58             	cmp    %esi,0x58(%eax)
80101931:	72 34                	jb     80101967 <writei+0xf1>
80101933:	8b 45 14             	mov    0x14(%ebp),%eax
80101936:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101939:	5b                   	pop    %ebx
8010193a:	5e                   	pop    %esi
8010193b:	5f                   	pop    %edi
8010193c:	5d                   	pop    %ebp
8010193d:	c3                   	ret    
8010193e:	0f b7 40 52          	movzwl 0x52(%eax),%eax
80101942:	66 83 f8 09          	cmp    $0x9,%ax
80101946:	77 33                	ja     8010197b <writei+0x105>
80101948:	98                   	cwtl   
80101949:	8b 04 c5 84 09 11 80 	mov    -0x7feef67c(,%eax,8),%eax
80101950:	85 c0                	test   %eax,%eax
80101952:	74 2e                	je     80101982 <writei+0x10c>
80101954:	83 ec 04             	sub    $0x4,%esp
80101957:	ff 75 14             	pushl  0x14(%ebp)
8010195a:	ff 75 0c             	pushl  0xc(%ebp)
8010195d:	ff 75 08             	pushl  0x8(%ebp)
80101960:	ff d0                	call   *%eax
80101962:	83 c4 10             	add    $0x10,%esp
80101965:	eb cf                	jmp    80101936 <writei+0xc0>
80101967:	8b 45 08             	mov    0x8(%ebp),%eax
8010196a:	89 70 58             	mov    %esi,0x58(%eax)
8010196d:	83 ec 0c             	sub    $0xc,%esp
80101970:	50                   	push   %eax
80101971:	e8 c6 fa ff ff       	call   8010143c <iupdate>
80101976:	83 c4 10             	add    $0x10,%esp
80101979:	eb b8                	jmp    80101933 <writei+0xbd>
8010197b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101980:	eb b4                	jmp    80101936 <writei+0xc0>
80101982:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101987:	eb ad                	jmp    80101936 <writei+0xc0>
80101989:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010198e:	eb a6                	jmp    80101936 <writei+0xc0>
80101990:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101995:	eb 9f                	jmp    80101936 <writei+0xc0>

80101997 <namecmp>:
80101997:	55                   	push   %ebp
80101998:	89 e5                	mov    %esp,%ebp
8010199a:	83 ec 0c             	sub    $0xc,%esp
8010199d:	6a 0e                	push   $0xe
8010199f:	ff 75 0c             	pushl  0xc(%ebp)
801019a2:	ff 75 08             	pushl  0x8(%ebp)
801019a5:	e8 15 29 00 00       	call   801042bf <strncmp>
801019aa:	c9                   	leave  
801019ab:	c3                   	ret    

801019ac <dirlookup>:
801019ac:	55                   	push   %ebp
801019ad:	89 e5                	mov    %esp,%ebp
801019af:	57                   	push   %edi
801019b0:	56                   	push   %esi
801019b1:	53                   	push   %ebx
801019b2:	83 ec 1c             	sub    $0x1c,%esp
801019b5:	8b 75 08             	mov    0x8(%ebp),%esi
801019b8:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
801019bd:	75 15                	jne    801019d4 <dirlookup+0x28>
801019bf:	bb 00 00 00 00       	mov    $0x0,%ebx
801019c4:	8d 7d d8             	lea    -0x28(%ebp),%edi
801019c7:	b8 00 00 00 00       	mov    $0x0,%eax
801019cc:	83 7e 58 00          	cmpl   $0x0,0x58(%esi)
801019d0:	75 24                	jne    801019f6 <dirlookup+0x4a>
801019d2:	eb 6e                	jmp    80101a42 <dirlookup+0x96>
801019d4:	83 ec 0c             	sub    $0xc,%esp
801019d7:	68 87 6a 10 80       	push   $0x80106a87
801019dc:	e8 63 e9 ff ff       	call   80100344 <panic>
801019e1:	83 ec 0c             	sub    $0xc,%esp
801019e4:	68 99 6a 10 80       	push   $0x80106a99
801019e9:	e8 56 e9 ff ff       	call   80100344 <panic>
801019ee:	83 c3 10             	add    $0x10,%ebx
801019f1:	39 5e 58             	cmp    %ebx,0x58(%esi)
801019f4:	76 47                	jbe    80101a3d <dirlookup+0x91>
801019f6:	6a 10                	push   $0x10
801019f8:	53                   	push   %ebx
801019f9:	57                   	push   %edi
801019fa:	56                   	push   %esi
801019fb:	e8 7a fd ff ff       	call   8010177a <readi>
80101a00:	83 c4 10             	add    $0x10,%esp
80101a03:	83 f8 10             	cmp    $0x10,%eax
80101a06:	75 d9                	jne    801019e1 <dirlookup+0x35>
80101a08:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101a0d:	74 df                	je     801019ee <dirlookup+0x42>
80101a0f:	83 ec 08             	sub    $0x8,%esp
80101a12:	8d 45 da             	lea    -0x26(%ebp),%eax
80101a15:	50                   	push   %eax
80101a16:	ff 75 0c             	pushl  0xc(%ebp)
80101a19:	e8 79 ff ff ff       	call   80101997 <namecmp>
80101a1e:	83 c4 10             	add    $0x10,%esp
80101a21:	85 c0                	test   %eax,%eax
80101a23:	75 c9                	jne    801019ee <dirlookup+0x42>
80101a25:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80101a29:	74 05                	je     80101a30 <dirlookup+0x84>
80101a2b:	8b 45 10             	mov    0x10(%ebp),%eax
80101a2e:	89 18                	mov    %ebx,(%eax)
80101a30:	0f b7 55 d8          	movzwl -0x28(%ebp),%edx
80101a34:	8b 06                	mov    (%esi),%eax
80101a36:	e8 e6 f7 ff ff       	call   80101221 <iget>
80101a3b:	eb 05                	jmp    80101a42 <dirlookup+0x96>
80101a3d:	b8 00 00 00 00       	mov    $0x0,%eax
80101a42:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101a45:	5b                   	pop    %ebx
80101a46:	5e                   	pop    %esi
80101a47:	5f                   	pop    %edi
80101a48:	5d                   	pop    %ebp
80101a49:	c3                   	ret    

80101a4a <namex>:
80101a4a:	55                   	push   %ebp
80101a4b:	89 e5                	mov    %esp,%ebp
80101a4d:	57                   	push   %edi
80101a4e:	56                   	push   %esi
80101a4f:	53                   	push   %ebx
80101a50:	83 ec 1c             	sub    $0x1c,%esp
80101a53:	89 c6                	mov    %eax,%esi
80101a55:	89 55 dc             	mov    %edx,-0x24(%ebp)
80101a58:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
80101a5b:	80 38 2f             	cmpb   $0x2f,(%eax)
80101a5e:	74 1a                	je     80101a7a <namex+0x30>
80101a60:	e8 8c 1b 00 00       	call   801035f1 <myproc>
80101a65:	83 ec 0c             	sub    $0xc,%esp
80101a68:	ff 70 68             	pushl  0x68(%eax)
80101a6b:	e8 4b fa ff ff       	call   801014bb <idup>
80101a70:	89 c7                	mov    %eax,%edi
80101a72:	83 c4 10             	add    $0x10,%esp
80101a75:	e9 d4 00 00 00       	jmp    80101b4e <namex+0x104>
80101a7a:	ba 01 00 00 00       	mov    $0x1,%edx
80101a7f:	b8 01 00 00 00       	mov    $0x1,%eax
80101a84:	e8 98 f7 ff ff       	call   80101221 <iget>
80101a89:	89 c7                	mov    %eax,%edi
80101a8b:	e9 be 00 00 00       	jmp    80101b4e <namex+0x104>
80101a90:	83 ec 0c             	sub    $0xc,%esp
80101a93:	57                   	push   %edi
80101a94:	e8 96 fc ff ff       	call   8010172f <iunlockput>
80101a99:	83 c4 10             	add    $0x10,%esp
80101a9c:	bf 00 00 00 00       	mov    $0x0,%edi
80101aa1:	89 f8                	mov    %edi,%eax
80101aa3:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101aa6:	5b                   	pop    %ebx
80101aa7:	5e                   	pop    %esi
80101aa8:	5f                   	pop    %edi
80101aa9:	5d                   	pop    %ebp
80101aaa:	c3                   	ret    
80101aab:	83 ec 0c             	sub    $0xc,%esp
80101aae:	57                   	push   %edi
80101aaf:	e8 f4 fa ff ff       	call   801015a8 <iunlock>
80101ab4:	83 c4 10             	add    $0x10,%esp
80101ab7:	eb e8                	jmp    80101aa1 <namex+0x57>
80101ab9:	83 ec 0c             	sub    $0xc,%esp
80101abc:	57                   	push   %edi
80101abd:	e8 6d fc ff ff       	call   8010172f <iunlockput>
80101ac2:	83 c4 10             	add    $0x10,%esp
80101ac5:	89 f7                	mov    %esi,%edi
80101ac7:	eb d8                	jmp    80101aa1 <namex+0x57>
80101ac9:	89 f3                	mov    %esi,%ebx
80101acb:	89 d8                	mov    %ebx,%eax
80101acd:	29 f0                	sub    %esi,%eax
80101acf:	89 45 e0             	mov    %eax,-0x20(%ebp)
80101ad2:	83 f8 0d             	cmp    $0xd,%eax
80101ad5:	0f 8e b4 00 00 00    	jle    80101b8f <namex+0x145>
80101adb:	83 ec 04             	sub    $0x4,%esp
80101ade:	6a 0e                	push   $0xe
80101ae0:	56                   	push   %esi
80101ae1:	ff 75 e4             	pushl  -0x1c(%ebp)
80101ae4:	e8 77 27 00 00       	call   80104260 <memmove>
80101ae9:	83 c4 10             	add    $0x10,%esp
80101aec:	80 3b 2f             	cmpb   $0x2f,(%ebx)
80101aef:	75 08                	jne    80101af9 <namex+0xaf>
80101af1:	83 c3 01             	add    $0x1,%ebx
80101af4:	80 3b 2f             	cmpb   $0x2f,(%ebx)
80101af7:	74 f8                	je     80101af1 <namex+0xa7>
80101af9:	85 db                	test   %ebx,%ebx
80101afb:	0f 84 ad 00 00 00    	je     80101bae <namex+0x164>
80101b01:	83 ec 0c             	sub    $0xc,%esp
80101b04:	57                   	push   %edi
80101b05:	e8 dc f9 ff ff       	call   801014e6 <ilock>
80101b0a:	83 c4 10             	add    $0x10,%esp
80101b0d:	66 83 7f 50 01       	cmpw   $0x1,0x50(%edi)
80101b12:	0f 85 78 ff ff ff    	jne    80101a90 <namex+0x46>
80101b18:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
80101b1c:	74 05                	je     80101b23 <namex+0xd9>
80101b1e:	80 3b 00             	cmpb   $0x0,(%ebx)
80101b21:	74 88                	je     80101aab <namex+0x61>
80101b23:	83 ec 04             	sub    $0x4,%esp
80101b26:	6a 00                	push   $0x0
80101b28:	ff 75 e4             	pushl  -0x1c(%ebp)
80101b2b:	57                   	push   %edi
80101b2c:	e8 7b fe ff ff       	call   801019ac <dirlookup>
80101b31:	89 c6                	mov    %eax,%esi
80101b33:	83 c4 10             	add    $0x10,%esp
80101b36:	85 c0                	test   %eax,%eax
80101b38:	0f 84 7b ff ff ff    	je     80101ab9 <namex+0x6f>
80101b3e:	83 ec 0c             	sub    $0xc,%esp
80101b41:	57                   	push   %edi
80101b42:	e8 e8 fb ff ff       	call   8010172f <iunlockput>
80101b47:	83 c4 10             	add    $0x10,%esp
80101b4a:	89 f7                	mov    %esi,%edi
80101b4c:	89 de                	mov    %ebx,%esi
80101b4e:	0f b6 06             	movzbl (%esi),%eax
80101b51:	3c 2f                	cmp    $0x2f,%al
80101b53:	75 0a                	jne    80101b5f <namex+0x115>
80101b55:	83 c6 01             	add    $0x1,%esi
80101b58:	0f b6 06             	movzbl (%esi),%eax
80101b5b:	3c 2f                	cmp    $0x2f,%al
80101b5d:	74 f6                	je     80101b55 <namex+0x10b>
80101b5f:	84 c0                	test   %al,%al
80101b61:	74 4b                	je     80101bae <namex+0x164>
80101b63:	0f b6 06             	movzbl (%esi),%eax
80101b66:	3c 2f                	cmp    $0x2f,%al
80101b68:	0f 84 5b ff ff ff    	je     80101ac9 <namex+0x7f>
80101b6e:	84 c0                	test   %al,%al
80101b70:	0f 84 53 ff ff ff    	je     80101ac9 <namex+0x7f>
80101b76:	89 f3                	mov    %esi,%ebx
80101b78:	83 c3 01             	add    $0x1,%ebx
80101b7b:	0f b6 03             	movzbl (%ebx),%eax
80101b7e:	3c 2f                	cmp    $0x2f,%al
80101b80:	0f 84 45 ff ff ff    	je     80101acb <namex+0x81>
80101b86:	84 c0                	test   %al,%al
80101b88:	75 ee                	jne    80101b78 <namex+0x12e>
80101b8a:	e9 3c ff ff ff       	jmp    80101acb <namex+0x81>
80101b8f:	83 ec 04             	sub    $0x4,%esp
80101b92:	ff 75 e0             	pushl  -0x20(%ebp)
80101b95:	56                   	push   %esi
80101b96:	8b 75 e4             	mov    -0x1c(%ebp),%esi
80101b99:	56                   	push   %esi
80101b9a:	e8 c1 26 00 00       	call   80104260 <memmove>
80101b9f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
80101ba2:	c6 04 0e 00          	movb   $0x0,(%esi,%ecx,1)
80101ba6:	83 c4 10             	add    $0x10,%esp
80101ba9:	e9 3e ff ff ff       	jmp    80101aec <namex+0xa2>
80101bae:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
80101bb2:	0f 84 e9 fe ff ff    	je     80101aa1 <namex+0x57>
80101bb8:	83 ec 0c             	sub    $0xc,%esp
80101bbb:	57                   	push   %edi
80101bbc:	e8 2c fa ff ff       	call   801015ed <iput>
80101bc1:	83 c4 10             	add    $0x10,%esp
80101bc4:	bf 00 00 00 00       	mov    $0x0,%edi
80101bc9:	e9 d3 fe ff ff       	jmp    80101aa1 <namex+0x57>

80101bce <dirlink>:
80101bce:	55                   	push   %ebp
80101bcf:	89 e5                	mov    %esp,%ebp
80101bd1:	57                   	push   %edi
80101bd2:	56                   	push   %esi
80101bd3:	53                   	push   %ebx
80101bd4:	83 ec 20             	sub    $0x20,%esp
80101bd7:	8b 75 08             	mov    0x8(%ebp),%esi
80101bda:	6a 00                	push   $0x0
80101bdc:	ff 75 0c             	pushl  0xc(%ebp)
80101bdf:	56                   	push   %esi
80101be0:	e8 c7 fd ff ff       	call   801019ac <dirlookup>
80101be5:	83 c4 10             	add    $0x10,%esp
80101be8:	85 c0                	test   %eax,%eax
80101bea:	75 6a                	jne    80101c56 <dirlink+0x88>
80101bec:	8b 5e 58             	mov    0x58(%esi),%ebx
80101bef:	85 db                	test   %ebx,%ebx
80101bf1:	74 29                	je     80101c1c <dirlink+0x4e>
80101bf3:	bb 00 00 00 00       	mov    $0x0,%ebx
80101bf8:	8d 7d d8             	lea    -0x28(%ebp),%edi
80101bfb:	6a 10                	push   $0x10
80101bfd:	53                   	push   %ebx
80101bfe:	57                   	push   %edi
80101bff:	56                   	push   %esi
80101c00:	e8 75 fb ff ff       	call   8010177a <readi>
80101c05:	83 c4 10             	add    $0x10,%esp
80101c08:	83 f8 10             	cmp    $0x10,%eax
80101c0b:	75 5c                	jne    80101c69 <dirlink+0x9b>
80101c0d:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101c12:	74 08                	je     80101c1c <dirlink+0x4e>
80101c14:	83 c3 10             	add    $0x10,%ebx
80101c17:	3b 5e 58             	cmp    0x58(%esi),%ebx
80101c1a:	72 df                	jb     80101bfb <dirlink+0x2d>
80101c1c:	83 ec 04             	sub    $0x4,%esp
80101c1f:	6a 0e                	push   $0xe
80101c21:	ff 75 0c             	pushl  0xc(%ebp)
80101c24:	8d 7d d8             	lea    -0x28(%ebp),%edi
80101c27:	8d 45 da             	lea    -0x26(%ebp),%eax
80101c2a:	50                   	push   %eax
80101c2b:	e8 db 26 00 00       	call   8010430b <strncpy>
80101c30:	8b 45 10             	mov    0x10(%ebp),%eax
80101c33:	66 89 45 d8          	mov    %ax,-0x28(%ebp)
80101c37:	6a 10                	push   $0x10
80101c39:	53                   	push   %ebx
80101c3a:	57                   	push   %edi
80101c3b:	56                   	push   %esi
80101c3c:	e8 35 fc ff ff       	call   80101876 <writei>
80101c41:	83 c4 20             	add    $0x20,%esp
80101c44:	83 f8 10             	cmp    $0x10,%eax
80101c47:	75 2d                	jne    80101c76 <dirlink+0xa8>
80101c49:	b8 00 00 00 00       	mov    $0x0,%eax
80101c4e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101c51:	5b                   	pop    %ebx
80101c52:	5e                   	pop    %esi
80101c53:	5f                   	pop    %edi
80101c54:	5d                   	pop    %ebp
80101c55:	c3                   	ret    
80101c56:	83 ec 0c             	sub    $0xc,%esp
80101c59:	50                   	push   %eax
80101c5a:	e8 8e f9 ff ff       	call   801015ed <iput>
80101c5f:	83 c4 10             	add    $0x10,%esp
80101c62:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101c67:	eb e5                	jmp    80101c4e <dirlink+0x80>
80101c69:	83 ec 0c             	sub    $0xc,%esp
80101c6c:	68 a8 6a 10 80       	push   $0x80106aa8
80101c71:	e8 ce e6 ff ff       	call   80100344 <panic>
80101c76:	83 ec 0c             	sub    $0xc,%esp
80101c79:	68 82 71 10 80       	push   $0x80107182
80101c7e:	e8 c1 e6 ff ff       	call   80100344 <panic>

80101c83 <namei>:
80101c83:	55                   	push   %ebp
80101c84:	89 e5                	mov    %esp,%ebp
80101c86:	83 ec 18             	sub    $0x18,%esp
80101c89:	8d 4d ea             	lea    -0x16(%ebp),%ecx
80101c8c:	ba 00 00 00 00       	mov    $0x0,%edx
80101c91:	8b 45 08             	mov    0x8(%ebp),%eax
80101c94:	e8 b1 fd ff ff       	call   80101a4a <namex>
80101c99:	c9                   	leave  
80101c9a:	c3                   	ret    

80101c9b <nameiparent>:
80101c9b:	55                   	push   %ebp
80101c9c:	89 e5                	mov    %esp,%ebp
80101c9e:	83 ec 08             	sub    $0x8,%esp
80101ca1:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80101ca4:	ba 01 00 00 00       	mov    $0x1,%edx
80101ca9:	8b 45 08             	mov    0x8(%ebp),%eax
80101cac:	e8 99 fd ff ff       	call   80101a4a <namex>
80101cb1:	c9                   	leave  
80101cb2:	c3                   	ret    

80101cb3 <idestart>:
80101cb3:	55                   	push   %ebp
80101cb4:	89 e5                	mov    %esp,%ebp
80101cb6:	56                   	push   %esi
80101cb7:	53                   	push   %ebx
80101cb8:	85 c0                	test   %eax,%eax
80101cba:	0f 84 84 00 00 00    	je     80101d44 <idestart+0x91>
80101cc0:	89 c6                	mov    %eax,%esi
80101cc2:	8b 58 08             	mov    0x8(%eax),%ebx
80101cc5:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
80101ccb:	0f 87 80 00 00 00    	ja     80101d51 <idestart+0x9e>
80101cd1:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101cd6:	ec                   	in     (%dx),%al
80101cd7:	83 e0 c0             	and    $0xffffffc0,%eax
80101cda:	3c 40                	cmp    $0x40,%al
80101cdc:	75 f8                	jne    80101cd6 <idestart+0x23>
80101cde:	b8 00 00 00 00       	mov    $0x0,%eax
80101ce3:	ba f6 03 00 00       	mov    $0x3f6,%edx
80101ce8:	ee                   	out    %al,(%dx)
80101ce9:	b8 01 00 00 00       	mov    $0x1,%eax
80101cee:	ba f2 01 00 00       	mov    $0x1f2,%edx
80101cf3:	ee                   	out    %al,(%dx)
80101cf4:	ba f3 01 00 00       	mov    $0x1f3,%edx
80101cf9:	89 d8                	mov    %ebx,%eax
80101cfb:	ee                   	out    %al,(%dx)
80101cfc:	89 d8                	mov    %ebx,%eax
80101cfe:	c1 f8 08             	sar    $0x8,%eax
80101d01:	ba f4 01 00 00       	mov    $0x1f4,%edx
80101d06:	ee                   	out    %al,(%dx)
80101d07:	89 d8                	mov    %ebx,%eax
80101d09:	c1 f8 10             	sar    $0x10,%eax
80101d0c:	ba f5 01 00 00       	mov    $0x1f5,%edx
80101d11:	ee                   	out    %al,(%dx)
80101d12:	0f b6 46 04          	movzbl 0x4(%esi),%eax
80101d16:	c1 e0 04             	shl    $0x4,%eax
80101d19:	83 e0 10             	and    $0x10,%eax
80101d1c:	83 c8 e0             	or     $0xffffffe0,%eax
80101d1f:	c1 fb 18             	sar    $0x18,%ebx
80101d22:	83 e3 0f             	and    $0xf,%ebx
80101d25:	09 d8                	or     %ebx,%eax
80101d27:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101d2c:	ee                   	out    %al,(%dx)
80101d2d:	f6 06 04             	testb  $0x4,(%esi)
80101d30:	75 2c                	jne    80101d5e <idestart+0xab>
80101d32:	b8 20 00 00 00       	mov    $0x20,%eax
80101d37:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101d3c:	ee                   	out    %al,(%dx)
80101d3d:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101d40:	5b                   	pop    %ebx
80101d41:	5e                   	pop    %esi
80101d42:	5d                   	pop    %ebp
80101d43:	c3                   	ret    
80101d44:	83 ec 0c             	sub    $0xc,%esp
80101d47:	68 0b 6b 10 80       	push   $0x80106b0b
80101d4c:	e8 f3 e5 ff ff       	call   80100344 <panic>
80101d51:	83 ec 0c             	sub    $0xc,%esp
80101d54:	68 14 6b 10 80       	push   $0x80106b14
80101d59:	e8 e6 e5 ff ff       	call   80100344 <panic>
80101d5e:	b8 30 00 00 00       	mov    $0x30,%eax
80101d63:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101d68:	ee                   	out    %al,(%dx)
80101d69:	83 c6 5c             	add    $0x5c,%esi
80101d6c:	b9 80 00 00 00       	mov    $0x80,%ecx
80101d71:	ba f0 01 00 00       	mov    $0x1f0,%edx
80101d76:	fc                   	cld    
80101d77:	f3 6f                	rep outsl %ds:(%esi),(%dx)
80101d79:	eb c2                	jmp    80101d3d <idestart+0x8a>

80101d7b <ideinit>:
80101d7b:	55                   	push   %ebp
80101d7c:	89 e5                	mov    %esp,%ebp
80101d7e:	83 ec 10             	sub    $0x10,%esp
80101d81:	68 26 6b 10 80       	push   $0x80106b26
80101d86:	68 80 a5 10 80       	push   $0x8010a580
80101d8b:	e8 45 22 00 00       	call   80103fd5 <initlock>
80101d90:	83 c4 08             	add    $0x8,%esp
80101d93:	a1 20 2d 11 80       	mov    0x80112d20,%eax
80101d98:	83 e8 01             	sub    $0x1,%eax
80101d9b:	50                   	push   %eax
80101d9c:	6a 0e                	push   $0xe
80101d9e:	e8 63 02 00 00       	call   80102006 <ioapicenable>
80101da3:	83 c4 10             	add    $0x10,%esp
80101da6:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101dab:	ec                   	in     (%dx),%al
80101dac:	83 e0 c0             	and    $0xffffffc0,%eax
80101daf:	3c 40                	cmp    $0x40,%al
80101db1:	75 f8                	jne    80101dab <ideinit+0x30>
80101db3:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
80101db8:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101dbd:	ee                   	out    %al,(%dx)
80101dbe:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101dc3:	ec                   	in     (%dx),%al
80101dc4:	84 c0                	test   %al,%al
80101dc6:	75 11                	jne    80101dd9 <ideinit+0x5e>
80101dc8:	b9 e7 03 00 00       	mov    $0x3e7,%ecx
80101dcd:	ec                   	in     (%dx),%al
80101dce:	84 c0                	test   %al,%al
80101dd0:	75 07                	jne    80101dd9 <ideinit+0x5e>
80101dd2:	83 e9 01             	sub    $0x1,%ecx
80101dd5:	75 f6                	jne    80101dcd <ideinit+0x52>
80101dd7:	eb 0a                	jmp    80101de3 <ideinit+0x68>
80101dd9:	c7 05 60 a5 10 80 01 	movl   $0x1,0x8010a560
80101de0:	00 00 00 
80101de3:	b8 e0 ff ff ff       	mov    $0xffffffe0,%eax
80101de8:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101ded:	ee                   	out    %al,(%dx)
80101dee:	c9                   	leave  
80101def:	c3                   	ret    

80101df0 <ideintr>:
80101df0:	55                   	push   %ebp
80101df1:	89 e5                	mov    %esp,%ebp
80101df3:	57                   	push   %edi
80101df4:	53                   	push   %ebx
80101df5:	83 ec 0c             	sub    $0xc,%esp
80101df8:	68 80 a5 10 80       	push   $0x8010a580
80101dfd:	e8 1b 23 00 00       	call   8010411d <acquire>
80101e02:	8b 1d 64 a5 10 80    	mov    0x8010a564,%ebx
80101e08:	83 c4 10             	add    $0x10,%esp
80101e0b:	85 db                	test   %ebx,%ebx
80101e0d:	74 48                	je     80101e57 <ideintr+0x67>
80101e0f:	8b 43 58             	mov    0x58(%ebx),%eax
80101e12:	a3 64 a5 10 80       	mov    %eax,0x8010a564
80101e17:	f6 03 04             	testb  $0x4,(%ebx)
80101e1a:	74 4d                	je     80101e69 <ideintr+0x79>
80101e1c:	8b 03                	mov    (%ebx),%eax
80101e1e:	83 e0 fb             	and    $0xfffffffb,%eax
80101e21:	83 c8 02             	or     $0x2,%eax
80101e24:	89 03                	mov    %eax,(%ebx)
80101e26:	83 ec 0c             	sub    $0xc,%esp
80101e29:	53                   	push   %ebx
80101e2a:	e8 ec 1e 00 00       	call   80103d1b <wakeup>
80101e2f:	a1 64 a5 10 80       	mov    0x8010a564,%eax
80101e34:	83 c4 10             	add    $0x10,%esp
80101e37:	85 c0                	test   %eax,%eax
80101e39:	74 05                	je     80101e40 <ideintr+0x50>
80101e3b:	e8 73 fe ff ff       	call   80101cb3 <idestart>
80101e40:	83 ec 0c             	sub    $0xc,%esp
80101e43:	68 80 a5 10 80       	push   $0x8010a580
80101e48:	e8 37 23 00 00       	call   80104184 <release>
80101e4d:	83 c4 10             	add    $0x10,%esp
80101e50:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101e53:	5b                   	pop    %ebx
80101e54:	5f                   	pop    %edi
80101e55:	5d                   	pop    %ebp
80101e56:	c3                   	ret    
80101e57:	83 ec 0c             	sub    $0xc,%esp
80101e5a:	68 80 a5 10 80       	push   $0x8010a580
80101e5f:	e8 20 23 00 00       	call   80104184 <release>
80101e64:	83 c4 10             	add    $0x10,%esp
80101e67:	eb e7                	jmp    80101e50 <ideintr+0x60>
80101e69:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101e6e:	ec                   	in     (%dx),%al
80101e6f:	89 c1                	mov    %eax,%ecx
80101e71:	83 e0 c0             	and    $0xffffffc0,%eax
80101e74:	3c 40                	cmp    $0x40,%al
80101e76:	75 f6                	jne    80101e6e <ideintr+0x7e>
80101e78:	f6 c1 21             	test   $0x21,%cl
80101e7b:	75 9f                	jne    80101e1c <ideintr+0x2c>
80101e7d:	8d 7b 5c             	lea    0x5c(%ebx),%edi
80101e80:	b9 80 00 00 00       	mov    $0x80,%ecx
80101e85:	ba f0 01 00 00       	mov    $0x1f0,%edx
80101e8a:	fc                   	cld    
80101e8b:	f3 6d                	rep insl (%dx),%es:(%edi)
80101e8d:	eb 8d                	jmp    80101e1c <ideintr+0x2c>

80101e8f <iderw>:
80101e8f:	55                   	push   %ebp
80101e90:	89 e5                	mov    %esp,%ebp
80101e92:	53                   	push   %ebx
80101e93:	83 ec 10             	sub    $0x10,%esp
80101e96:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101e99:	8d 43 0c             	lea    0xc(%ebx),%eax
80101e9c:	50                   	push   %eax
80101e9d:	e8 e9 20 00 00       	call   80103f8b <holdingsleep>
80101ea2:	83 c4 10             	add    $0x10,%esp
80101ea5:	85 c0                	test   %eax,%eax
80101ea7:	74 41                	je     80101eea <iderw+0x5b>
80101ea9:	8b 03                	mov    (%ebx),%eax
80101eab:	83 e0 06             	and    $0x6,%eax
80101eae:	83 f8 02             	cmp    $0x2,%eax
80101eb1:	74 44                	je     80101ef7 <iderw+0x68>
80101eb3:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
80101eb7:	74 09                	je     80101ec2 <iderw+0x33>
80101eb9:	83 3d 60 a5 10 80 00 	cmpl   $0x0,0x8010a560
80101ec0:	74 42                	je     80101f04 <iderw+0x75>
80101ec2:	83 ec 0c             	sub    $0xc,%esp
80101ec5:	68 80 a5 10 80       	push   $0x8010a580
80101eca:	e8 4e 22 00 00       	call   8010411d <acquire>
80101ecf:	c7 43 58 00 00 00 00 	movl   $0x0,0x58(%ebx)
80101ed6:	8b 15 64 a5 10 80    	mov    0x8010a564,%edx
80101edc:	83 c4 10             	add    $0x10,%esp
80101edf:	85 d2                	test   %edx,%edx
80101ee1:	75 30                	jne    80101f13 <iderw+0x84>
80101ee3:	ba 64 a5 10 80       	mov    $0x8010a564,%edx
80101ee8:	eb 33                	jmp    80101f1d <iderw+0x8e>
80101eea:	83 ec 0c             	sub    $0xc,%esp
80101eed:	68 2a 6b 10 80       	push   $0x80106b2a
80101ef2:	e8 4d e4 ff ff       	call   80100344 <panic>
80101ef7:	83 ec 0c             	sub    $0xc,%esp
80101efa:	68 40 6b 10 80       	push   $0x80106b40
80101eff:	e8 40 e4 ff ff       	call   80100344 <panic>
80101f04:	83 ec 0c             	sub    $0xc,%esp
80101f07:	68 55 6b 10 80       	push   $0x80106b55
80101f0c:	e8 33 e4 ff ff       	call   80100344 <panic>
80101f11:	89 c2                	mov    %eax,%edx
80101f13:	8b 42 58             	mov    0x58(%edx),%eax
80101f16:	85 c0                	test   %eax,%eax
80101f18:	75 f7                	jne    80101f11 <iderw+0x82>
80101f1a:	83 c2 58             	add    $0x58,%edx
80101f1d:	89 1a                	mov    %ebx,(%edx)
80101f1f:	39 1d 64 a5 10 80    	cmp    %ebx,0x8010a564
80101f25:	74 3a                	je     80101f61 <iderw+0xd2>
80101f27:	8b 03                	mov    (%ebx),%eax
80101f29:	83 e0 06             	and    $0x6,%eax
80101f2c:	83 f8 02             	cmp    $0x2,%eax
80101f2f:	74 1b                	je     80101f4c <iderw+0xbd>
80101f31:	83 ec 08             	sub    $0x8,%esp
80101f34:	68 80 a5 10 80       	push   $0x8010a580
80101f39:	53                   	push   %ebx
80101f3a:	e8 5c 1c 00 00       	call   80103b9b <sleep>
80101f3f:	8b 03                	mov    (%ebx),%eax
80101f41:	83 e0 06             	and    $0x6,%eax
80101f44:	83 c4 10             	add    $0x10,%esp
80101f47:	83 f8 02             	cmp    $0x2,%eax
80101f4a:	75 e5                	jne    80101f31 <iderw+0xa2>
80101f4c:	83 ec 0c             	sub    $0xc,%esp
80101f4f:	68 80 a5 10 80       	push   $0x8010a580
80101f54:	e8 2b 22 00 00       	call   80104184 <release>
80101f59:	83 c4 10             	add    $0x10,%esp
80101f5c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101f5f:	c9                   	leave  
80101f60:	c3                   	ret    
80101f61:	89 d8                	mov    %ebx,%eax
80101f63:	e8 4b fd ff ff       	call   80101cb3 <idestart>
80101f68:	eb bd                	jmp    80101f27 <iderw+0x98>

80101f6a <ioapicinit>:
80101f6a:	55                   	push   %ebp
80101f6b:	89 e5                	mov    %esp,%ebp
80101f6d:	56                   	push   %esi
80101f6e:	53                   	push   %ebx
80101f6f:	c7 05 54 26 11 80 00 	movl   $0xfec00000,0x80112654
80101f76:	00 c0 fe 
80101f79:	c7 05 00 00 c0 fe 01 	movl   $0x1,0xfec00000
80101f80:	00 00 00 
80101f83:	a1 54 26 11 80       	mov    0x80112654,%eax
80101f88:	8b 58 10             	mov    0x10(%eax),%ebx
80101f8b:	c1 eb 10             	shr    $0x10,%ebx
80101f8e:	0f b6 db             	movzbl %bl,%ebx
80101f91:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
80101f97:	a1 54 26 11 80       	mov    0x80112654,%eax
80101f9c:	8b 40 10             	mov    0x10(%eax),%eax
80101f9f:	0f b6 15 80 27 11 80 	movzbl 0x80112780,%edx
80101fa6:	c1 e8 18             	shr    $0x18,%eax
80101fa9:	39 c2                	cmp    %eax,%edx
80101fab:	75 47                	jne    80101ff4 <ioapicinit+0x8a>
80101fad:	ba 10 00 00 00       	mov    $0x10,%edx
80101fb2:	b8 00 00 00 00       	mov    $0x0,%eax
80101fb7:	8d 48 20             	lea    0x20(%eax),%ecx
80101fba:	81 c9 00 00 01 00    	or     $0x10000,%ecx
80101fc0:	8b 35 54 26 11 80    	mov    0x80112654,%esi
80101fc6:	89 16                	mov    %edx,(%esi)
80101fc8:	8b 35 54 26 11 80    	mov    0x80112654,%esi
80101fce:	89 4e 10             	mov    %ecx,0x10(%esi)
80101fd1:	8d 4a 01             	lea    0x1(%edx),%ecx
80101fd4:	89 0e                	mov    %ecx,(%esi)
80101fd6:	8b 0d 54 26 11 80    	mov    0x80112654,%ecx
80101fdc:	c7 41 10 00 00 00 00 	movl   $0x0,0x10(%ecx)
80101fe3:	83 c0 01             	add    $0x1,%eax
80101fe6:	83 c2 02             	add    $0x2,%edx
80101fe9:	39 c3                	cmp    %eax,%ebx
80101feb:	7d ca                	jge    80101fb7 <ioapicinit+0x4d>
80101fed:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101ff0:	5b                   	pop    %ebx
80101ff1:	5e                   	pop    %esi
80101ff2:	5d                   	pop    %ebp
80101ff3:	c3                   	ret    
80101ff4:	83 ec 0c             	sub    $0xc,%esp
80101ff7:	68 74 6b 10 80       	push   $0x80106b74
80101ffc:	e8 e0 e5 ff ff       	call   801005e1 <cprintf>
80102001:	83 c4 10             	add    $0x10,%esp
80102004:	eb a7                	jmp    80101fad <ioapicinit+0x43>

80102006 <ioapicenable>:
80102006:	55                   	push   %ebp
80102007:	89 e5                	mov    %esp,%ebp
80102009:	8b 45 08             	mov    0x8(%ebp),%eax
8010200c:	8d 50 20             	lea    0x20(%eax),%edx
8010200f:	8d 44 00 10          	lea    0x10(%eax,%eax,1),%eax
80102013:	8b 0d 54 26 11 80    	mov    0x80112654,%ecx
80102019:	89 01                	mov    %eax,(%ecx)
8010201b:	8b 0d 54 26 11 80    	mov    0x80112654,%ecx
80102021:	89 51 10             	mov    %edx,0x10(%ecx)
80102024:	8b 55 0c             	mov    0xc(%ebp),%edx
80102027:	c1 e2 18             	shl    $0x18,%edx
8010202a:	83 c0 01             	add    $0x1,%eax
8010202d:	89 01                	mov    %eax,(%ecx)
8010202f:	a1 54 26 11 80       	mov    0x80112654,%eax
80102034:	89 50 10             	mov    %edx,0x10(%eax)
80102037:	5d                   	pop    %ebp
80102038:	c3                   	ret    

80102039 <kfree>:
80102039:	55                   	push   %ebp
8010203a:	89 e5                	mov    %esp,%ebp
8010203c:	53                   	push   %ebx
8010203d:	83 ec 04             	sub    $0x4,%esp
80102040:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102043:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
80102049:	75 4c                	jne    80102097 <kfree+0x5e>
8010204b:	81 fb e8 57 11 80    	cmp    $0x801157e8,%ebx
80102051:	72 44                	jb     80102097 <kfree+0x5e>
80102053:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
80102059:	3d ff ff ff 0d       	cmp    $0xdffffff,%eax
8010205e:	77 37                	ja     80102097 <kfree+0x5e>
80102060:	83 ec 04             	sub    $0x4,%esp
80102063:	68 00 10 00 00       	push   $0x1000
80102068:	6a 01                	push   $0x1
8010206a:	53                   	push   %ebx
8010206b:	e8 5b 21 00 00       	call   801041cb <memset>
80102070:	83 c4 10             	add    $0x10,%esp
80102073:	83 3d 94 26 11 80 00 	cmpl   $0x0,0x80112694
8010207a:	75 28                	jne    801020a4 <kfree+0x6b>
8010207c:	a1 98 26 11 80       	mov    0x80112698,%eax
80102081:	89 03                	mov    %eax,(%ebx)
80102083:	89 1d 98 26 11 80    	mov    %ebx,0x80112698
80102089:	83 3d 94 26 11 80 00 	cmpl   $0x0,0x80112694
80102090:	75 24                	jne    801020b6 <kfree+0x7d>
80102092:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102095:	c9                   	leave  
80102096:	c3                   	ret    
80102097:	83 ec 0c             	sub    $0xc,%esp
8010209a:	68 a6 6b 10 80       	push   $0x80106ba6
8010209f:	e8 a0 e2 ff ff       	call   80100344 <panic>
801020a4:	83 ec 0c             	sub    $0xc,%esp
801020a7:	68 60 26 11 80       	push   $0x80112660
801020ac:	e8 6c 20 00 00       	call   8010411d <acquire>
801020b1:	83 c4 10             	add    $0x10,%esp
801020b4:	eb c6                	jmp    8010207c <kfree+0x43>
801020b6:	83 ec 0c             	sub    $0xc,%esp
801020b9:	68 60 26 11 80       	push   $0x80112660
801020be:	e8 c1 20 00 00       	call   80104184 <release>
801020c3:	83 c4 10             	add    $0x10,%esp
801020c6:	eb ca                	jmp    80102092 <kfree+0x59>

801020c8 <freerange>:
801020c8:	55                   	push   %ebp
801020c9:	89 e5                	mov    %esp,%ebp
801020cb:	56                   	push   %esi
801020cc:	53                   	push   %ebx
801020cd:	8b 75 0c             	mov    0xc(%ebp),%esi
801020d0:	8b 45 08             	mov    0x8(%ebp),%eax
801020d3:	8d 98 ff 0f 00 00    	lea    0xfff(%eax),%ebx
801020d9:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
801020df:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801020e5:	39 de                	cmp    %ebx,%esi
801020e7:	72 1c                	jb     80102105 <freerange+0x3d>
801020e9:	83 ec 0c             	sub    $0xc,%esp
801020ec:	8d 83 00 f0 ff ff    	lea    -0x1000(%ebx),%eax
801020f2:	50                   	push   %eax
801020f3:	e8 41 ff ff ff       	call   80102039 <kfree>
801020f8:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801020fe:	83 c4 10             	add    $0x10,%esp
80102101:	39 f3                	cmp    %esi,%ebx
80102103:	76 e4                	jbe    801020e9 <freerange+0x21>
80102105:	8d 65 f8             	lea    -0x8(%ebp),%esp
80102108:	5b                   	pop    %ebx
80102109:	5e                   	pop    %esi
8010210a:	5d                   	pop    %ebp
8010210b:	c3                   	ret    

8010210c <kinit1>:
8010210c:	55                   	push   %ebp
8010210d:	89 e5                	mov    %esp,%ebp
8010210f:	83 ec 10             	sub    $0x10,%esp
80102112:	68 ac 6b 10 80       	push   $0x80106bac
80102117:	68 60 26 11 80       	push   $0x80112660
8010211c:	e8 b4 1e 00 00       	call   80103fd5 <initlock>
80102121:	c7 05 94 26 11 80 00 	movl   $0x0,0x80112694
80102128:	00 00 00 
8010212b:	83 c4 08             	add    $0x8,%esp
8010212e:	ff 75 0c             	pushl  0xc(%ebp)
80102131:	ff 75 08             	pushl  0x8(%ebp)
80102134:	e8 8f ff ff ff       	call   801020c8 <freerange>
80102139:	83 c4 10             	add    $0x10,%esp
8010213c:	c9                   	leave  
8010213d:	c3                   	ret    

8010213e <kinit2>:
8010213e:	55                   	push   %ebp
8010213f:	89 e5                	mov    %esp,%ebp
80102141:	83 ec 10             	sub    $0x10,%esp
80102144:	ff 75 0c             	pushl  0xc(%ebp)
80102147:	ff 75 08             	pushl  0x8(%ebp)
8010214a:	e8 79 ff ff ff       	call   801020c8 <freerange>
8010214f:	c7 05 94 26 11 80 01 	movl   $0x1,0x80112694
80102156:	00 00 00 
80102159:	83 c4 10             	add    $0x10,%esp
8010215c:	c9                   	leave  
8010215d:	c3                   	ret    

8010215e <kalloc>:
8010215e:	55                   	push   %ebp
8010215f:	89 e5                	mov    %esp,%ebp
80102161:	53                   	push   %ebx
80102162:	83 ec 04             	sub    $0x4,%esp
80102165:	83 3d 94 26 11 80 00 	cmpl   $0x0,0x80112694
8010216c:	75 21                	jne    8010218f <kalloc+0x31>
8010216e:	8b 1d 98 26 11 80    	mov    0x80112698,%ebx
80102174:	85 db                	test   %ebx,%ebx
80102176:	74 10                	je     80102188 <kalloc+0x2a>
80102178:	8b 03                	mov    (%ebx),%eax
8010217a:	a3 98 26 11 80       	mov    %eax,0x80112698
8010217f:	83 3d 94 26 11 80 00 	cmpl   $0x0,0x80112694
80102186:	75 23                	jne    801021ab <kalloc+0x4d>
80102188:	89 d8                	mov    %ebx,%eax
8010218a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010218d:	c9                   	leave  
8010218e:	c3                   	ret    
8010218f:	83 ec 0c             	sub    $0xc,%esp
80102192:	68 60 26 11 80       	push   $0x80112660
80102197:	e8 81 1f 00 00       	call   8010411d <acquire>
8010219c:	8b 1d 98 26 11 80    	mov    0x80112698,%ebx
801021a2:	83 c4 10             	add    $0x10,%esp
801021a5:	85 db                	test   %ebx,%ebx
801021a7:	75 cf                	jne    80102178 <kalloc+0x1a>
801021a9:	eb d4                	jmp    8010217f <kalloc+0x21>
801021ab:	83 ec 0c             	sub    $0xc,%esp
801021ae:	68 60 26 11 80       	push   $0x80112660
801021b3:	e8 cc 1f 00 00       	call   80104184 <release>
801021b8:	83 c4 10             	add    $0x10,%esp
801021bb:	eb cb                	jmp    80102188 <kalloc+0x2a>

801021bd <kbdgetc>:
801021bd:	ba 64 00 00 00       	mov    $0x64,%edx
801021c2:	ec                   	in     (%dx),%al
801021c3:	a8 01                	test   $0x1,%al
801021c5:	0f 84 bb 00 00 00    	je     80102286 <kbdgetc+0xc9>
801021cb:	ba 60 00 00 00       	mov    $0x60,%edx
801021d0:	ec                   	in     (%dx),%al
801021d1:	0f b6 d0             	movzbl %al,%edx
801021d4:	81 fa e0 00 00 00    	cmp    $0xe0,%edx
801021da:	74 5b                	je     80102237 <kbdgetc+0x7a>
801021dc:	84 c0                	test   %al,%al
801021de:	78 64                	js     80102244 <kbdgetc+0x87>
801021e0:	8b 0d b4 a5 10 80    	mov    0x8010a5b4,%ecx
801021e6:	f6 c1 40             	test   $0x40,%cl
801021e9:	74 0f                	je     801021fa <kbdgetc+0x3d>
801021eb:	83 c8 80             	or     $0xffffff80,%eax
801021ee:	0f b6 d0             	movzbl %al,%edx
801021f1:	83 e1 bf             	and    $0xffffffbf,%ecx
801021f4:	89 0d b4 a5 10 80    	mov    %ecx,0x8010a5b4
801021fa:	0f b6 8a e0 6c 10 80 	movzbl -0x7fef9320(%edx),%ecx
80102201:	0b 0d b4 a5 10 80    	or     0x8010a5b4,%ecx
80102207:	0f b6 82 e0 6b 10 80 	movzbl -0x7fef9420(%edx),%eax
8010220e:	31 c1                	xor    %eax,%ecx
80102210:	89 0d b4 a5 10 80    	mov    %ecx,0x8010a5b4
80102216:	89 c8                	mov    %ecx,%eax
80102218:	83 e0 03             	and    $0x3,%eax
8010221b:	8b 04 85 c0 6b 10 80 	mov    -0x7fef9440(,%eax,4),%eax
80102222:	0f b6 04 10          	movzbl (%eax,%edx,1),%eax
80102226:	f6 c1 08             	test   $0x8,%cl
80102229:	74 61                	je     8010228c <kbdgetc+0xcf>
8010222b:	8d 50 9f             	lea    -0x61(%eax),%edx
8010222e:	83 fa 19             	cmp    $0x19,%edx
80102231:	77 46                	ja     80102279 <kbdgetc+0xbc>
80102233:	83 e8 20             	sub    $0x20,%eax
80102236:	c3                   	ret    
80102237:	83 0d b4 a5 10 80 40 	orl    $0x40,0x8010a5b4
8010223e:	b8 00 00 00 00       	mov    $0x0,%eax
80102243:	c3                   	ret    
80102244:	55                   	push   %ebp
80102245:	89 e5                	mov    %esp,%ebp
80102247:	53                   	push   %ebx
80102248:	8b 0d b4 a5 10 80    	mov    0x8010a5b4,%ecx
8010224e:	89 cb                	mov    %ecx,%ebx
80102250:	83 e3 40             	and    $0x40,%ebx
80102253:	83 e0 7f             	and    $0x7f,%eax
80102256:	85 db                	test   %ebx,%ebx
80102258:	0f 44 d0             	cmove  %eax,%edx
8010225b:	0f b6 82 e0 6c 10 80 	movzbl -0x7fef9320(%edx),%eax
80102262:	83 c8 40             	or     $0x40,%eax
80102265:	0f b6 c0             	movzbl %al,%eax
80102268:	f7 d0                	not    %eax
8010226a:	21 c8                	and    %ecx,%eax
8010226c:	a3 b4 a5 10 80       	mov    %eax,0x8010a5b4
80102271:	b8 00 00 00 00       	mov    $0x0,%eax
80102276:	5b                   	pop    %ebx
80102277:	5d                   	pop    %ebp
80102278:	c3                   	ret    
80102279:	8d 48 bf             	lea    -0x41(%eax),%ecx
8010227c:	8d 50 20             	lea    0x20(%eax),%edx
8010227f:	83 f9 1a             	cmp    $0x1a,%ecx
80102282:	0f 42 c2             	cmovb  %edx,%eax
80102285:	c3                   	ret    
80102286:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010228b:	c3                   	ret    
8010228c:	f3 c3                	repz ret 

8010228e <kbdintr>:
8010228e:	55                   	push   %ebp
8010228f:	89 e5                	mov    %esp,%ebp
80102291:	83 ec 14             	sub    $0x14,%esp
80102294:	68 bd 21 10 80       	push   $0x801021bd
80102299:	e8 9d e4 ff ff       	call   8010073b <consoleintr>
8010229e:	83 c4 10             	add    $0x10,%esp
801022a1:	c9                   	leave  
801022a2:	c3                   	ret    

801022a3 <lapicw>:
801022a3:	55                   	push   %ebp
801022a4:	89 e5                	mov    %esp,%ebp
801022a6:	8b 0d 9c 26 11 80    	mov    0x8011269c,%ecx
801022ac:	8d 04 81             	lea    (%ecx,%eax,4),%eax
801022af:	89 10                	mov    %edx,(%eax)
801022b1:	a1 9c 26 11 80       	mov    0x8011269c,%eax
801022b6:	8b 40 20             	mov    0x20(%eax),%eax
801022b9:	5d                   	pop    %ebp
801022ba:	c3                   	ret    

801022bb <fill_rtcdate>:
801022bb:	55                   	push   %ebp
801022bc:	89 e5                	mov    %esp,%ebp
801022be:	56                   	push   %esi
801022bf:	53                   	push   %ebx
801022c0:	89 c3                	mov    %eax,%ebx
801022c2:	be 70 00 00 00       	mov    $0x70,%esi
801022c7:	b8 00 00 00 00       	mov    $0x0,%eax
801022cc:	89 f2                	mov    %esi,%edx
801022ce:	ee                   	out    %al,(%dx)
801022cf:	b9 71 00 00 00       	mov    $0x71,%ecx
801022d4:	89 ca                	mov    %ecx,%edx
801022d6:	ec                   	in     (%dx),%al
801022d7:	0f b6 c0             	movzbl %al,%eax
801022da:	89 03                	mov    %eax,(%ebx)
801022dc:	b8 02 00 00 00       	mov    $0x2,%eax
801022e1:	89 f2                	mov    %esi,%edx
801022e3:	ee                   	out    %al,(%dx)
801022e4:	89 ca                	mov    %ecx,%edx
801022e6:	ec                   	in     (%dx),%al
801022e7:	0f b6 c0             	movzbl %al,%eax
801022ea:	89 43 04             	mov    %eax,0x4(%ebx)
801022ed:	b8 04 00 00 00       	mov    $0x4,%eax
801022f2:	89 f2                	mov    %esi,%edx
801022f4:	ee                   	out    %al,(%dx)
801022f5:	89 ca                	mov    %ecx,%edx
801022f7:	ec                   	in     (%dx),%al
801022f8:	0f b6 c0             	movzbl %al,%eax
801022fb:	89 43 08             	mov    %eax,0x8(%ebx)
801022fe:	b8 07 00 00 00       	mov    $0x7,%eax
80102303:	89 f2                	mov    %esi,%edx
80102305:	ee                   	out    %al,(%dx)
80102306:	89 ca                	mov    %ecx,%edx
80102308:	ec                   	in     (%dx),%al
80102309:	0f b6 c0             	movzbl %al,%eax
8010230c:	89 43 0c             	mov    %eax,0xc(%ebx)
8010230f:	b8 08 00 00 00       	mov    $0x8,%eax
80102314:	89 f2                	mov    %esi,%edx
80102316:	ee                   	out    %al,(%dx)
80102317:	89 ca                	mov    %ecx,%edx
80102319:	ec                   	in     (%dx),%al
8010231a:	0f b6 c0             	movzbl %al,%eax
8010231d:	89 43 10             	mov    %eax,0x10(%ebx)
80102320:	b8 09 00 00 00       	mov    $0x9,%eax
80102325:	89 f2                	mov    %esi,%edx
80102327:	ee                   	out    %al,(%dx)
80102328:	89 ca                	mov    %ecx,%edx
8010232a:	ec                   	in     (%dx),%al
8010232b:	0f b6 c0             	movzbl %al,%eax
8010232e:	89 43 14             	mov    %eax,0x14(%ebx)
80102331:	5b                   	pop    %ebx
80102332:	5e                   	pop    %esi
80102333:	5d                   	pop    %ebp
80102334:	c3                   	ret    

80102335 <lapicinit>:
80102335:	83 3d 9c 26 11 80 00 	cmpl   $0x0,0x8011269c
8010233c:	0f 84 fc 00 00 00    	je     8010243e <lapicinit+0x109>
80102342:	55                   	push   %ebp
80102343:	89 e5                	mov    %esp,%ebp
80102345:	ba 3f 01 00 00       	mov    $0x13f,%edx
8010234a:	b8 3c 00 00 00       	mov    $0x3c,%eax
8010234f:	e8 4f ff ff ff       	call   801022a3 <lapicw>
80102354:	ba 0b 00 00 00       	mov    $0xb,%edx
80102359:	b8 f8 00 00 00       	mov    $0xf8,%eax
8010235e:	e8 40 ff ff ff       	call   801022a3 <lapicw>
80102363:	ba 20 00 02 00       	mov    $0x20020,%edx
80102368:	b8 c8 00 00 00       	mov    $0xc8,%eax
8010236d:	e8 31 ff ff ff       	call   801022a3 <lapicw>
80102372:	ba 80 96 98 00       	mov    $0x989680,%edx
80102377:	b8 e0 00 00 00       	mov    $0xe0,%eax
8010237c:	e8 22 ff ff ff       	call   801022a3 <lapicw>
80102381:	ba 00 00 01 00       	mov    $0x10000,%edx
80102386:	b8 d4 00 00 00       	mov    $0xd4,%eax
8010238b:	e8 13 ff ff ff       	call   801022a3 <lapicw>
80102390:	ba 00 00 01 00       	mov    $0x10000,%edx
80102395:	b8 d8 00 00 00       	mov    $0xd8,%eax
8010239a:	e8 04 ff ff ff       	call   801022a3 <lapicw>
8010239f:	a1 9c 26 11 80       	mov    0x8011269c,%eax
801023a4:	8b 40 30             	mov    0x30(%eax),%eax
801023a7:	c1 e8 10             	shr    $0x10,%eax
801023aa:	3c 03                	cmp    $0x3,%al
801023ac:	77 7c                	ja     8010242a <lapicinit+0xf5>
801023ae:	ba 33 00 00 00       	mov    $0x33,%edx
801023b3:	b8 dc 00 00 00       	mov    $0xdc,%eax
801023b8:	e8 e6 fe ff ff       	call   801022a3 <lapicw>
801023bd:	ba 00 00 00 00       	mov    $0x0,%edx
801023c2:	b8 a0 00 00 00       	mov    $0xa0,%eax
801023c7:	e8 d7 fe ff ff       	call   801022a3 <lapicw>
801023cc:	ba 00 00 00 00       	mov    $0x0,%edx
801023d1:	b8 a0 00 00 00       	mov    $0xa0,%eax
801023d6:	e8 c8 fe ff ff       	call   801022a3 <lapicw>
801023db:	ba 00 00 00 00       	mov    $0x0,%edx
801023e0:	b8 2c 00 00 00       	mov    $0x2c,%eax
801023e5:	e8 b9 fe ff ff       	call   801022a3 <lapicw>
801023ea:	ba 00 00 00 00       	mov    $0x0,%edx
801023ef:	b8 c4 00 00 00       	mov    $0xc4,%eax
801023f4:	e8 aa fe ff ff       	call   801022a3 <lapicw>
801023f9:	ba 00 85 08 00       	mov    $0x88500,%edx
801023fe:	b8 c0 00 00 00       	mov    $0xc0,%eax
80102403:	e8 9b fe ff ff       	call   801022a3 <lapicw>
80102408:	8b 15 9c 26 11 80    	mov    0x8011269c,%edx
8010240e:	8b 82 00 03 00 00    	mov    0x300(%edx),%eax
80102414:	f6 c4 10             	test   $0x10,%ah
80102417:	75 f5                	jne    8010240e <lapicinit+0xd9>
80102419:	ba 00 00 00 00       	mov    $0x0,%edx
8010241e:	b8 20 00 00 00       	mov    $0x20,%eax
80102423:	e8 7b fe ff ff       	call   801022a3 <lapicw>
80102428:	5d                   	pop    %ebp
80102429:	c3                   	ret    
8010242a:	ba 00 00 01 00       	mov    $0x10000,%edx
8010242f:	b8 d0 00 00 00       	mov    $0xd0,%eax
80102434:	e8 6a fe ff ff       	call   801022a3 <lapicw>
80102439:	e9 70 ff ff ff       	jmp    801023ae <lapicinit+0x79>
8010243e:	f3 c3                	repz ret 

80102440 <lapicid>:
80102440:	55                   	push   %ebp
80102441:	89 e5                	mov    %esp,%ebp
80102443:	8b 15 9c 26 11 80    	mov    0x8011269c,%edx
80102449:	b8 00 00 00 00       	mov    $0x0,%eax
8010244e:	85 d2                	test   %edx,%edx
80102450:	74 06                	je     80102458 <lapicid+0x18>
80102452:	8b 42 20             	mov    0x20(%edx),%eax
80102455:	c1 e8 18             	shr    $0x18,%eax
80102458:	5d                   	pop    %ebp
80102459:	c3                   	ret    

8010245a <lapiceoi>:
8010245a:	83 3d 9c 26 11 80 00 	cmpl   $0x0,0x8011269c
80102461:	74 14                	je     80102477 <lapiceoi+0x1d>
80102463:	55                   	push   %ebp
80102464:	89 e5                	mov    %esp,%ebp
80102466:	ba 00 00 00 00       	mov    $0x0,%edx
8010246b:	b8 2c 00 00 00       	mov    $0x2c,%eax
80102470:	e8 2e fe ff ff       	call   801022a3 <lapicw>
80102475:	5d                   	pop    %ebp
80102476:	c3                   	ret    
80102477:	f3 c3                	repz ret 

80102479 <microdelay>:
80102479:	55                   	push   %ebp
8010247a:	89 e5                	mov    %esp,%ebp
8010247c:	5d                   	pop    %ebp
8010247d:	c3                   	ret    

8010247e <lapicstartap>:
8010247e:	55                   	push   %ebp
8010247f:	89 e5                	mov    %esp,%ebp
80102481:	56                   	push   %esi
80102482:	53                   	push   %ebx
80102483:	8b 75 08             	mov    0x8(%ebp),%esi
80102486:	8b 5d 0c             	mov    0xc(%ebp),%ebx
80102489:	b8 0f 00 00 00       	mov    $0xf,%eax
8010248e:	ba 70 00 00 00       	mov    $0x70,%edx
80102493:	ee                   	out    %al,(%dx)
80102494:	b8 0a 00 00 00       	mov    $0xa,%eax
80102499:	ba 71 00 00 00       	mov    $0x71,%edx
8010249e:	ee                   	out    %al,(%dx)
8010249f:	66 c7 05 67 04 00 80 	movw   $0x0,0x80000467
801024a6:	00 00 
801024a8:	89 d8                	mov    %ebx,%eax
801024aa:	c1 e8 04             	shr    $0x4,%eax
801024ad:	66 a3 69 04 00 80    	mov    %ax,0x80000469
801024b3:	c1 e6 18             	shl    $0x18,%esi
801024b6:	89 f2                	mov    %esi,%edx
801024b8:	b8 c4 00 00 00       	mov    $0xc4,%eax
801024bd:	e8 e1 fd ff ff       	call   801022a3 <lapicw>
801024c2:	ba 00 c5 00 00       	mov    $0xc500,%edx
801024c7:	b8 c0 00 00 00       	mov    $0xc0,%eax
801024cc:	e8 d2 fd ff ff       	call   801022a3 <lapicw>
801024d1:	ba 00 85 00 00       	mov    $0x8500,%edx
801024d6:	b8 c0 00 00 00       	mov    $0xc0,%eax
801024db:	e8 c3 fd ff ff       	call   801022a3 <lapicw>
801024e0:	c1 eb 0c             	shr    $0xc,%ebx
801024e3:	80 cf 06             	or     $0x6,%bh
801024e6:	89 f2                	mov    %esi,%edx
801024e8:	b8 c4 00 00 00       	mov    $0xc4,%eax
801024ed:	e8 b1 fd ff ff       	call   801022a3 <lapicw>
801024f2:	89 da                	mov    %ebx,%edx
801024f4:	b8 c0 00 00 00       	mov    $0xc0,%eax
801024f9:	e8 a5 fd ff ff       	call   801022a3 <lapicw>
801024fe:	89 f2                	mov    %esi,%edx
80102500:	b8 c4 00 00 00       	mov    $0xc4,%eax
80102505:	e8 99 fd ff ff       	call   801022a3 <lapicw>
8010250a:	89 da                	mov    %ebx,%edx
8010250c:	b8 c0 00 00 00       	mov    $0xc0,%eax
80102511:	e8 8d fd ff ff       	call   801022a3 <lapicw>
80102516:	5b                   	pop    %ebx
80102517:	5e                   	pop    %esi
80102518:	5d                   	pop    %ebp
80102519:	c3                   	ret    

8010251a <cmostime>:
8010251a:	55                   	push   %ebp
8010251b:	89 e5                	mov    %esp,%ebp
8010251d:	57                   	push   %edi
8010251e:	56                   	push   %esi
8010251f:	53                   	push   %ebx
80102520:	83 ec 4c             	sub    $0x4c,%esp
80102523:	8b 7d 08             	mov    0x8(%ebp),%edi
80102526:	b8 0b 00 00 00       	mov    $0xb,%eax
8010252b:	ba 70 00 00 00       	mov    $0x70,%edx
80102530:	ee                   	out    %al,(%dx)
80102531:	ba 71 00 00 00       	mov    $0x71,%edx
80102536:	ec                   	in     (%dx),%al
80102537:	83 e0 04             	and    $0x4,%eax
8010253a:	88 45 b7             	mov    %al,-0x49(%ebp)
8010253d:	8d 75 d0             	lea    -0x30(%ebp),%esi
80102540:	89 f0                	mov    %esi,%eax
80102542:	e8 74 fd ff ff       	call   801022bb <fill_rtcdate>
80102547:	ba 70 00 00 00       	mov    $0x70,%edx
8010254c:	b8 0a 00 00 00       	mov    $0xa,%eax
80102551:	ee                   	out    %al,(%dx)
80102552:	ba 71 00 00 00       	mov    $0x71,%edx
80102557:	ec                   	in     (%dx),%al
80102558:	84 c0                	test   %al,%al
8010255a:	78 e4                	js     80102540 <cmostime+0x26>
8010255c:	8d 5d b8             	lea    -0x48(%ebp),%ebx
8010255f:	89 d8                	mov    %ebx,%eax
80102561:	e8 55 fd ff ff       	call   801022bb <fill_rtcdate>
80102566:	83 ec 04             	sub    $0x4,%esp
80102569:	6a 18                	push   $0x18
8010256b:	53                   	push   %ebx
8010256c:	56                   	push   %esi
8010256d:	e8 9d 1c 00 00       	call   8010420f <memcmp>
80102572:	83 c4 10             	add    $0x10,%esp
80102575:	85 c0                	test   %eax,%eax
80102577:	75 c7                	jne    80102540 <cmostime+0x26>
80102579:	80 7d b7 00          	cmpb   $0x0,-0x49(%ebp)
8010257d:	75 78                	jne    801025f7 <cmostime+0xdd>
8010257f:	8b 45 d0             	mov    -0x30(%ebp),%eax
80102582:	89 c2                	mov    %eax,%edx
80102584:	c1 ea 04             	shr    $0x4,%edx
80102587:	8d 14 92             	lea    (%edx,%edx,4),%edx
8010258a:	83 e0 0f             	and    $0xf,%eax
8010258d:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102590:	89 45 d0             	mov    %eax,-0x30(%ebp)
80102593:	8b 45 d4             	mov    -0x2c(%ebp),%eax
80102596:	89 c2                	mov    %eax,%edx
80102598:	c1 ea 04             	shr    $0x4,%edx
8010259b:	8d 14 92             	lea    (%edx,%edx,4),%edx
8010259e:	83 e0 0f             	and    $0xf,%eax
801025a1:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025a4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
801025a7:	8b 45 d8             	mov    -0x28(%ebp),%eax
801025aa:	89 c2                	mov    %eax,%edx
801025ac:	c1 ea 04             	shr    $0x4,%edx
801025af:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025b2:	83 e0 0f             	and    $0xf,%eax
801025b5:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025b8:	89 45 d8             	mov    %eax,-0x28(%ebp)
801025bb:	8b 45 dc             	mov    -0x24(%ebp),%eax
801025be:	89 c2                	mov    %eax,%edx
801025c0:	c1 ea 04             	shr    $0x4,%edx
801025c3:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025c6:	83 e0 0f             	and    $0xf,%eax
801025c9:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025cc:	89 45 dc             	mov    %eax,-0x24(%ebp)
801025cf:	8b 45 e0             	mov    -0x20(%ebp),%eax
801025d2:	89 c2                	mov    %eax,%edx
801025d4:	c1 ea 04             	shr    $0x4,%edx
801025d7:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025da:	83 e0 0f             	and    $0xf,%eax
801025dd:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025e0:	89 45 e0             	mov    %eax,-0x20(%ebp)
801025e3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801025e6:	89 c2                	mov    %eax,%edx
801025e8:	c1 ea 04             	shr    $0x4,%edx
801025eb:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025ee:	83 e0 0f             	and    $0xf,%eax
801025f1:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025f4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801025f7:	8b 45 d0             	mov    -0x30(%ebp),%eax
801025fa:	89 07                	mov    %eax,(%edi)
801025fc:	8b 45 d4             	mov    -0x2c(%ebp),%eax
801025ff:	89 47 04             	mov    %eax,0x4(%edi)
80102602:	8b 45 d8             	mov    -0x28(%ebp),%eax
80102605:	89 47 08             	mov    %eax,0x8(%edi)
80102608:	8b 45 dc             	mov    -0x24(%ebp),%eax
8010260b:	89 47 0c             	mov    %eax,0xc(%edi)
8010260e:	8b 45 e0             	mov    -0x20(%ebp),%eax
80102611:	89 47 10             	mov    %eax,0x10(%edi)
80102614:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80102617:	89 47 14             	mov    %eax,0x14(%edi)
8010261a:	81 47 14 d0 07 00 00 	addl   $0x7d0,0x14(%edi)
80102621:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102624:	5b                   	pop    %ebx
80102625:	5e                   	pop    %esi
80102626:	5f                   	pop    %edi
80102627:	5d                   	pop    %ebp
80102628:	c3                   	ret    

80102629 <install_trans>:
80102629:	83 3d e8 26 11 80 00 	cmpl   $0x0,0x801126e8
80102630:	0f 8e 84 00 00 00    	jle    801026ba <install_trans+0x91>
80102636:	55                   	push   %ebp
80102637:	89 e5                	mov    %esp,%ebp
80102639:	57                   	push   %edi
8010263a:	56                   	push   %esi
8010263b:	53                   	push   %ebx
8010263c:	83 ec 1c             	sub    $0x1c,%esp
8010263f:	bb 00 00 00 00       	mov    $0x0,%ebx
80102644:	be a0 26 11 80       	mov    $0x801126a0,%esi
80102649:	83 ec 08             	sub    $0x8,%esp
8010264c:	89 d8                	mov    %ebx,%eax
8010264e:	03 46 34             	add    0x34(%esi),%eax
80102651:	83 c0 01             	add    $0x1,%eax
80102654:	50                   	push   %eax
80102655:	ff 76 44             	pushl  0x44(%esi)
80102658:	e8 4d da ff ff       	call   801000aa <bread>
8010265d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80102660:	83 c4 08             	add    $0x8,%esp
80102663:	ff 34 9d ec 26 11 80 	pushl  -0x7feed914(,%ebx,4)
8010266a:	ff 76 44             	pushl  0x44(%esi)
8010266d:	e8 38 da ff ff       	call   801000aa <bread>
80102672:	89 c7                	mov    %eax,%edi
80102674:	83 c4 0c             	add    $0xc,%esp
80102677:	68 00 02 00 00       	push   $0x200
8010267c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010267f:	83 c0 5c             	add    $0x5c,%eax
80102682:	50                   	push   %eax
80102683:	8d 47 5c             	lea    0x5c(%edi),%eax
80102686:	50                   	push   %eax
80102687:	e8 d4 1b 00 00       	call   80104260 <memmove>
8010268c:	89 3c 24             	mov    %edi,(%esp)
8010268f:	e8 f2 da ff ff       	call   80100186 <bwrite>
80102694:	83 c4 04             	add    $0x4,%esp
80102697:	ff 75 e4             	pushl  -0x1c(%ebp)
8010269a:	e8 22 db ff ff       	call   801001c1 <brelse>
8010269f:	89 3c 24             	mov    %edi,(%esp)
801026a2:	e8 1a db ff ff       	call   801001c1 <brelse>
801026a7:	83 c3 01             	add    $0x1,%ebx
801026aa:	83 c4 10             	add    $0x10,%esp
801026ad:	39 5e 48             	cmp    %ebx,0x48(%esi)
801026b0:	7f 97                	jg     80102649 <install_trans+0x20>
801026b2:	8d 65 f4             	lea    -0xc(%ebp),%esp
801026b5:	5b                   	pop    %ebx
801026b6:	5e                   	pop    %esi
801026b7:	5f                   	pop    %edi
801026b8:	5d                   	pop    %ebp
801026b9:	c3                   	ret    
801026ba:	f3 c3                	repz ret 

801026bc <write_head>:
801026bc:	55                   	push   %ebp
801026bd:	89 e5                	mov    %esp,%ebp
801026bf:	53                   	push   %ebx
801026c0:	83 ec 0c             	sub    $0xc,%esp
801026c3:	ff 35 d4 26 11 80    	pushl  0x801126d4
801026c9:	ff 35 e4 26 11 80    	pushl  0x801126e4
801026cf:	e8 d6 d9 ff ff       	call   801000aa <bread>
801026d4:	89 c3                	mov    %eax,%ebx
801026d6:	8b 0d e8 26 11 80    	mov    0x801126e8,%ecx
801026dc:	89 48 5c             	mov    %ecx,0x5c(%eax)
801026df:	83 c4 10             	add    $0x10,%esp
801026e2:	85 c9                	test   %ecx,%ecx
801026e4:	7e 19                	jle    801026ff <write_head+0x43>
801026e6:	c1 e1 02             	shl    $0x2,%ecx
801026e9:	b8 00 00 00 00       	mov    $0x0,%eax
801026ee:	8b 90 ec 26 11 80    	mov    -0x7feed914(%eax),%edx
801026f4:	89 54 03 60          	mov    %edx,0x60(%ebx,%eax,1)
801026f8:	83 c0 04             	add    $0x4,%eax
801026fb:	39 c8                	cmp    %ecx,%eax
801026fd:	75 ef                	jne    801026ee <write_head+0x32>
801026ff:	83 ec 0c             	sub    $0xc,%esp
80102702:	53                   	push   %ebx
80102703:	e8 7e da ff ff       	call   80100186 <bwrite>
80102708:	89 1c 24             	mov    %ebx,(%esp)
8010270b:	e8 b1 da ff ff       	call   801001c1 <brelse>
80102710:	83 c4 10             	add    $0x10,%esp
80102713:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102716:	c9                   	leave  
80102717:	c3                   	ret    

80102718 <initlog>:
80102718:	55                   	push   %ebp
80102719:	89 e5                	mov    %esp,%ebp
8010271b:	53                   	push   %ebx
8010271c:	83 ec 2c             	sub    $0x2c,%esp
8010271f:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102722:	68 e0 6d 10 80       	push   $0x80106de0
80102727:	68 a0 26 11 80       	push   $0x801126a0
8010272c:	e8 a4 18 00 00       	call   80103fd5 <initlock>
80102731:	83 c4 08             	add    $0x8,%esp
80102734:	8d 45 dc             	lea    -0x24(%ebp),%eax
80102737:	50                   	push   %eax
80102738:	53                   	push   %ebx
80102739:	e8 94 eb ff ff       	call   801012d2 <readsb>
8010273e:	8b 45 ec             	mov    -0x14(%ebp),%eax
80102741:	a3 d4 26 11 80       	mov    %eax,0x801126d4
80102746:	8b 55 e8             	mov    -0x18(%ebp),%edx
80102749:	89 15 d8 26 11 80    	mov    %edx,0x801126d8
8010274f:	89 1d e4 26 11 80    	mov    %ebx,0x801126e4
80102755:	83 c4 08             	add    $0x8,%esp
80102758:	50                   	push   %eax
80102759:	53                   	push   %ebx
8010275a:	e8 4b d9 ff ff       	call   801000aa <bread>
8010275f:	8b 58 5c             	mov    0x5c(%eax),%ebx
80102762:	89 1d e8 26 11 80    	mov    %ebx,0x801126e8
80102768:	83 c4 10             	add    $0x10,%esp
8010276b:	85 db                	test   %ebx,%ebx
8010276d:	7e 19                	jle    80102788 <initlog+0x70>
8010276f:	c1 e3 02             	shl    $0x2,%ebx
80102772:	ba 00 00 00 00       	mov    $0x0,%edx
80102777:	8b 4c 10 60          	mov    0x60(%eax,%edx,1),%ecx
8010277b:	89 8a ec 26 11 80    	mov    %ecx,-0x7feed914(%edx)
80102781:	83 c2 04             	add    $0x4,%edx
80102784:	39 d3                	cmp    %edx,%ebx
80102786:	75 ef                	jne    80102777 <initlog+0x5f>
80102788:	83 ec 0c             	sub    $0xc,%esp
8010278b:	50                   	push   %eax
8010278c:	e8 30 da ff ff       	call   801001c1 <brelse>
80102791:	e8 93 fe ff ff       	call   80102629 <install_trans>
80102796:	c7 05 e8 26 11 80 00 	movl   $0x0,0x801126e8
8010279d:	00 00 00 
801027a0:	e8 17 ff ff ff       	call   801026bc <write_head>
801027a5:	83 c4 10             	add    $0x10,%esp
801027a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801027ab:	c9                   	leave  
801027ac:	c3                   	ret    

801027ad <begin_op>:
801027ad:	55                   	push   %ebp
801027ae:	89 e5                	mov    %esp,%ebp
801027b0:	53                   	push   %ebx
801027b1:	83 ec 10             	sub    $0x10,%esp
801027b4:	68 a0 26 11 80       	push   $0x801126a0
801027b9:	e8 5f 19 00 00       	call   8010411d <acquire>
801027be:	83 c4 10             	add    $0x10,%esp
801027c1:	bb a0 26 11 80       	mov    $0x801126a0,%ebx
801027c6:	eb 15                	jmp    801027dd <begin_op+0x30>
801027c8:	83 ec 08             	sub    $0x8,%esp
801027cb:	68 a0 26 11 80       	push   $0x801126a0
801027d0:	68 a0 26 11 80       	push   $0x801126a0
801027d5:	e8 c1 13 00 00       	call   80103b9b <sleep>
801027da:	83 c4 10             	add    $0x10,%esp
801027dd:	83 7b 40 00          	cmpl   $0x0,0x40(%ebx)
801027e1:	75 e5                	jne    801027c8 <begin_op+0x1b>
801027e3:	8b 43 3c             	mov    0x3c(%ebx),%eax
801027e6:	83 c0 01             	add    $0x1,%eax
801027e9:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
801027ec:	8b 53 48             	mov    0x48(%ebx),%edx
801027ef:	8d 14 4a             	lea    (%edx,%ecx,2),%edx
801027f2:	83 fa 1e             	cmp    $0x1e,%edx
801027f5:	7e 17                	jle    8010280e <begin_op+0x61>
801027f7:	83 ec 08             	sub    $0x8,%esp
801027fa:	68 a0 26 11 80       	push   $0x801126a0
801027ff:	68 a0 26 11 80       	push   $0x801126a0
80102804:	e8 92 13 00 00       	call   80103b9b <sleep>
80102809:	83 c4 10             	add    $0x10,%esp
8010280c:	eb cf                	jmp    801027dd <begin_op+0x30>
8010280e:	a3 dc 26 11 80       	mov    %eax,0x801126dc
80102813:	83 ec 0c             	sub    $0xc,%esp
80102816:	68 a0 26 11 80       	push   $0x801126a0
8010281b:	e8 64 19 00 00       	call   80104184 <release>
80102820:	83 c4 10             	add    $0x10,%esp
80102823:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102826:	c9                   	leave  
80102827:	c3                   	ret    

80102828 <end_op>:
80102828:	55                   	push   %ebp
80102829:	89 e5                	mov    %esp,%ebp
8010282b:	57                   	push   %edi
8010282c:	56                   	push   %esi
8010282d:	53                   	push   %ebx
8010282e:	83 ec 28             	sub    $0x28,%esp
80102831:	68 a0 26 11 80       	push   $0x801126a0
80102836:	e8 e2 18 00 00       	call   8010411d <acquire>
8010283b:	a1 dc 26 11 80       	mov    0x801126dc,%eax
80102840:	8d 58 ff             	lea    -0x1(%eax),%ebx
80102843:	89 1d dc 26 11 80    	mov    %ebx,0x801126dc
80102849:	83 c4 10             	add    $0x10,%esp
8010284c:	83 3d e0 26 11 80 00 	cmpl   $0x0,0x801126e0
80102853:	0f 85 e9 00 00 00    	jne    80102942 <end_op+0x11a>
80102859:	85 db                	test   %ebx,%ebx
8010285b:	0f 85 ee 00 00 00    	jne    8010294f <end_op+0x127>
80102861:	c7 05 e0 26 11 80 01 	movl   $0x1,0x801126e0
80102868:	00 00 00 
8010286b:	83 ec 0c             	sub    $0xc,%esp
8010286e:	68 a0 26 11 80       	push   $0x801126a0
80102873:	e8 0c 19 00 00       	call   80104184 <release>
80102878:	83 c4 10             	add    $0x10,%esp
8010287b:	be a0 26 11 80       	mov    $0x801126a0,%esi
80102880:	83 3d e8 26 11 80 00 	cmpl   $0x0,0x801126e8
80102887:	7e 7f                	jle    80102908 <end_op+0xe0>
80102889:	83 ec 08             	sub    $0x8,%esp
8010288c:	89 d8                	mov    %ebx,%eax
8010288e:	03 46 34             	add    0x34(%esi),%eax
80102891:	83 c0 01             	add    $0x1,%eax
80102894:	50                   	push   %eax
80102895:	ff 76 44             	pushl  0x44(%esi)
80102898:	e8 0d d8 ff ff       	call   801000aa <bread>
8010289d:	89 c7                	mov    %eax,%edi
8010289f:	83 c4 08             	add    $0x8,%esp
801028a2:	ff 34 9d ec 26 11 80 	pushl  -0x7feed914(,%ebx,4)
801028a9:	ff 76 44             	pushl  0x44(%esi)
801028ac:	e8 f9 d7 ff ff       	call   801000aa <bread>
801028b1:	83 c4 0c             	add    $0xc,%esp
801028b4:	68 00 02 00 00       	push   $0x200
801028b9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801028bc:	83 c0 5c             	add    $0x5c,%eax
801028bf:	50                   	push   %eax
801028c0:	8d 47 5c             	lea    0x5c(%edi),%eax
801028c3:	50                   	push   %eax
801028c4:	e8 97 19 00 00       	call   80104260 <memmove>
801028c9:	89 3c 24             	mov    %edi,(%esp)
801028cc:	e8 b5 d8 ff ff       	call   80100186 <bwrite>
801028d1:	83 c4 04             	add    $0x4,%esp
801028d4:	ff 75 e4             	pushl  -0x1c(%ebp)
801028d7:	e8 e5 d8 ff ff       	call   801001c1 <brelse>
801028dc:	89 3c 24             	mov    %edi,(%esp)
801028df:	e8 dd d8 ff ff       	call   801001c1 <brelse>
801028e4:	83 c3 01             	add    $0x1,%ebx
801028e7:	83 c4 10             	add    $0x10,%esp
801028ea:	3b 5e 48             	cmp    0x48(%esi),%ebx
801028ed:	7c 9a                	jl     80102889 <end_op+0x61>
801028ef:	e8 c8 fd ff ff       	call   801026bc <write_head>
801028f4:	e8 30 fd ff ff       	call   80102629 <install_trans>
801028f9:	c7 05 e8 26 11 80 00 	movl   $0x0,0x801126e8
80102900:	00 00 00 
80102903:	e8 b4 fd ff ff       	call   801026bc <write_head>
80102908:	83 ec 0c             	sub    $0xc,%esp
8010290b:	68 a0 26 11 80       	push   $0x801126a0
80102910:	e8 08 18 00 00       	call   8010411d <acquire>
80102915:	c7 05 e0 26 11 80 00 	movl   $0x0,0x801126e0
8010291c:	00 00 00 
8010291f:	c7 04 24 a0 26 11 80 	movl   $0x801126a0,(%esp)
80102926:	e8 f0 13 00 00       	call   80103d1b <wakeup>
8010292b:	c7 04 24 a0 26 11 80 	movl   $0x801126a0,(%esp)
80102932:	e8 4d 18 00 00       	call   80104184 <release>
80102937:	83 c4 10             	add    $0x10,%esp
8010293a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010293d:	5b                   	pop    %ebx
8010293e:	5e                   	pop    %esi
8010293f:	5f                   	pop    %edi
80102940:	5d                   	pop    %ebp
80102941:	c3                   	ret    
80102942:	83 ec 0c             	sub    $0xc,%esp
80102945:	68 e4 6d 10 80       	push   $0x80106de4
8010294a:	e8 f5 d9 ff ff       	call   80100344 <panic>
8010294f:	83 ec 0c             	sub    $0xc,%esp
80102952:	68 a0 26 11 80       	push   $0x801126a0
80102957:	e8 bf 13 00 00       	call   80103d1b <wakeup>
8010295c:	c7 04 24 a0 26 11 80 	movl   $0x801126a0,(%esp)
80102963:	e8 1c 18 00 00       	call   80104184 <release>
80102968:	83 c4 10             	add    $0x10,%esp
8010296b:	eb cd                	jmp    8010293a <end_op+0x112>

8010296d <log_write>:
8010296d:	55                   	push   %ebp
8010296e:	89 e5                	mov    %esp,%ebp
80102970:	53                   	push   %ebx
80102971:	83 ec 04             	sub    $0x4,%esp
80102974:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102977:	8b 15 e8 26 11 80    	mov    0x801126e8,%edx
8010297d:	83 fa 1d             	cmp    $0x1d,%edx
80102980:	7f 6b                	jg     801029ed <log_write+0x80>
80102982:	a1 d8 26 11 80       	mov    0x801126d8,%eax
80102987:	83 e8 01             	sub    $0x1,%eax
8010298a:	39 c2                	cmp    %eax,%edx
8010298c:	7d 5f                	jge    801029ed <log_write+0x80>
8010298e:	83 3d dc 26 11 80 00 	cmpl   $0x0,0x801126dc
80102995:	7e 63                	jle    801029fa <log_write+0x8d>
80102997:	83 ec 0c             	sub    $0xc,%esp
8010299a:	68 a0 26 11 80       	push   $0x801126a0
8010299f:	e8 79 17 00 00       	call   8010411d <acquire>
801029a4:	8b 15 e8 26 11 80    	mov    0x801126e8,%edx
801029aa:	83 c4 10             	add    $0x10,%esp
801029ad:	85 d2                	test   %edx,%edx
801029af:	7e 56                	jle    80102a07 <log_write+0x9a>
801029b1:	8b 4b 08             	mov    0x8(%ebx),%ecx
801029b4:	39 0d ec 26 11 80    	cmp    %ecx,0x801126ec
801029ba:	74 5b                	je     80102a17 <log_write+0xaa>
801029bc:	b8 00 00 00 00       	mov    $0x0,%eax
801029c1:	83 c0 01             	add    $0x1,%eax
801029c4:	39 d0                	cmp    %edx,%eax
801029c6:	74 56                	je     80102a1e <log_write+0xb1>
801029c8:	39 0c 85 ec 26 11 80 	cmp    %ecx,-0x7feed914(,%eax,4)
801029cf:	75 f0                	jne    801029c1 <log_write+0x54>
801029d1:	89 0c 85 ec 26 11 80 	mov    %ecx,-0x7feed914(,%eax,4)
801029d8:	83 0b 04             	orl    $0x4,(%ebx)
801029db:	83 ec 0c             	sub    $0xc,%esp
801029de:	68 a0 26 11 80       	push   $0x801126a0
801029e3:	e8 9c 17 00 00       	call   80104184 <release>
801029e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801029eb:	c9                   	leave  
801029ec:	c3                   	ret    
801029ed:	83 ec 0c             	sub    $0xc,%esp
801029f0:	68 f3 6d 10 80       	push   $0x80106df3
801029f5:	e8 4a d9 ff ff       	call   80100344 <panic>
801029fa:	83 ec 0c             	sub    $0xc,%esp
801029fd:	68 09 6e 10 80       	push   $0x80106e09
80102a02:	e8 3d d9 ff ff       	call   80100344 <panic>
80102a07:	8b 43 08             	mov    0x8(%ebx),%eax
80102a0a:	a3 ec 26 11 80       	mov    %eax,0x801126ec
80102a0f:	85 d2                	test   %edx,%edx
80102a11:	75 c5                	jne    801029d8 <log_write+0x6b>
80102a13:	89 d0                	mov    %edx,%eax
80102a15:	eb 11                	jmp    80102a28 <log_write+0xbb>
80102a17:	b8 00 00 00 00       	mov    $0x0,%eax
80102a1c:	eb b3                	jmp    801029d1 <log_write+0x64>
80102a1e:	8b 53 08             	mov    0x8(%ebx),%edx
80102a21:	89 14 85 ec 26 11 80 	mov    %edx,-0x7feed914(,%eax,4)
80102a28:	83 c0 01             	add    $0x1,%eax
80102a2b:	a3 e8 26 11 80       	mov    %eax,0x801126e8
80102a30:	eb a6                	jmp    801029d8 <log_write+0x6b>

80102a32 <mpmain>:
80102a32:	55                   	push   %ebp
80102a33:	89 e5                	mov    %esp,%ebp
80102a35:	53                   	push   %ebx
80102a36:	83 ec 04             	sub    $0x4,%esp
80102a39:	e8 98 0b 00 00       	call   801035d6 <cpuid>
80102a3e:	89 c3                	mov    %eax,%ebx
80102a40:	e8 91 0b 00 00       	call   801035d6 <cpuid>
80102a45:	83 ec 04             	sub    $0x4,%esp
80102a48:	53                   	push   %ebx
80102a49:	50                   	push   %eax
80102a4a:	68 24 6e 10 80       	push   $0x80106e24
80102a4f:	e8 8d db ff ff       	call   801005e1 <cprintf>
80102a54:	e8 ad 28 00 00       	call   80105306 <idtinit>
80102a59:	e8 01 0b 00 00       	call   8010355f <mycpu>
80102a5e:	89 c2                	mov    %eax,%edx
80102a60:	b8 01 00 00 00       	mov    $0x1,%eax
80102a65:	f0 87 82 a0 00 00 00 	lock xchg %eax,0xa0(%edx)
80102a6c:	e8 c0 0e 00 00       	call   80103931 <scheduler>

80102a71 <mpenter>:
80102a71:	55                   	push   %ebp
80102a72:	89 e5                	mov    %esp,%ebp
80102a74:	83 ec 08             	sub    $0x8,%esp
80102a77:	e8 47 38 00 00       	call   801062c3 <switchkvm>
80102a7c:	e8 5b 37 00 00       	call   801061dc <seginit>
80102a81:	e8 af f8 ff ff       	call   80102335 <lapicinit>
80102a86:	e8 a7 ff ff ff       	call   80102a32 <mpmain>

80102a8b <main>:
80102a8b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
80102a8f:	83 e4 f0             	and    $0xfffffff0,%esp
80102a92:	ff 71 fc             	pushl  -0x4(%ecx)
80102a95:	55                   	push   %ebp
80102a96:	89 e5                	mov    %esp,%ebp
80102a98:	53                   	push   %ebx
80102a99:	51                   	push   %ecx
80102a9a:	83 ec 08             	sub    $0x8,%esp
80102a9d:	68 00 00 40 80       	push   $0x80400000
80102aa2:	68 e8 57 11 80       	push   $0x801157e8
80102aa7:	e8 60 f6 ff ff       	call   8010210c <kinit1>
80102aac:	e8 97 3c 00 00       	call   80106748 <kvmalloc>
80102ab1:	e8 50 01 00 00       	call   80102c06 <mpinit>
80102ab6:	e8 7a f8 ff ff       	call   80102335 <lapicinit>
80102abb:	e8 1c 37 00 00       	call   801061dc <seginit>
80102ac0:	e8 01 03 00 00       	call   80102dc6 <picinit>
80102ac5:	e8 a0 f4 ff ff       	call   80101f6a <ioapicinit>
80102aca:	e8 ff dd ff ff       	call   801008ce <consoleinit>
80102acf:	e8 ef 2a 00 00       	call   801055c3 <uartinit>
80102ad4:	e8 6c 0a 00 00       	call   80103545 <pinit>
80102ad9:	e8 9d 27 00 00       	call   8010527b <tvinit>
80102ade:	e8 51 d5 ff ff       	call   80100034 <binit>
80102ae3:	e8 78 e1 ff ff       	call   80100c60 <fileinit>
80102ae8:	e8 8e f2 ff ff       	call   80101d7b <ideinit>
80102aed:	83 c4 0c             	add    $0xc,%esp
80102af0:	68 8a 00 00 00       	push   $0x8a
80102af5:	68 8c a4 10 80       	push   $0x8010a48c
80102afa:	68 00 70 00 80       	push   $0x80007000
80102aff:	e8 5c 17 00 00       	call   80104260 <memmove>
80102b04:	69 05 20 2d 11 80 b0 	imul   $0xb0,0x80112d20,%eax
80102b0b:	00 00 00 
80102b0e:	05 a0 27 11 80       	add    $0x801127a0,%eax
80102b13:	83 c4 10             	add    $0x10,%esp
80102b16:	3d a0 27 11 80       	cmp    $0x801127a0,%eax
80102b1b:	76 6c                	jbe    80102b89 <main+0xfe>
80102b1d:	bb a0 27 11 80       	mov    $0x801127a0,%ebx
80102b22:	eb 19                	jmp    80102b3d <main+0xb2>
80102b24:	81 c3 b0 00 00 00    	add    $0xb0,%ebx
80102b2a:	69 05 20 2d 11 80 b0 	imul   $0xb0,0x80112d20,%eax
80102b31:	00 00 00 
80102b34:	05 a0 27 11 80       	add    $0x801127a0,%eax
80102b39:	39 c3                	cmp    %eax,%ebx
80102b3b:	73 4c                	jae    80102b89 <main+0xfe>
80102b3d:	e8 1d 0a 00 00       	call   8010355f <mycpu>
80102b42:	39 d8                	cmp    %ebx,%eax
80102b44:	74 de                	je     80102b24 <main+0x99>
80102b46:	e8 13 f6 ff ff       	call   8010215e <kalloc>
80102b4b:	05 00 10 00 00       	add    $0x1000,%eax
80102b50:	a3 fc 6f 00 80       	mov    %eax,0x80006ffc
80102b55:	c7 05 f8 6f 00 80 71 	movl   $0x80102a71,0x80006ff8
80102b5c:	2a 10 80 
80102b5f:	c7 05 f4 6f 00 80 00 	movl   $0x109000,0x80006ff4
80102b66:	90 10 00 
80102b69:	83 ec 08             	sub    $0x8,%esp
80102b6c:	68 00 70 00 00       	push   $0x7000
80102b71:	0f b6 03             	movzbl (%ebx),%eax
80102b74:	50                   	push   %eax
80102b75:	e8 04 f9 ff ff       	call   8010247e <lapicstartap>
80102b7a:	83 c4 10             	add    $0x10,%esp
80102b7d:	8b 83 a0 00 00 00    	mov    0xa0(%ebx),%eax
80102b83:	85 c0                	test   %eax,%eax
80102b85:	74 f6                	je     80102b7d <main+0xf2>
80102b87:	eb 9b                	jmp    80102b24 <main+0x99>
80102b89:	83 ec 08             	sub    $0x8,%esp
80102b8c:	68 00 00 00 8e       	push   $0x8e000000
80102b91:	68 00 00 40 80       	push   $0x80400000
80102b96:	e8 a3 f5 ff ff       	call   8010213e <kinit2>
80102b9b:	e8 75 0a 00 00       	call   80103615 <userinit>
80102ba0:	e8 8d fe ff ff       	call   80102a32 <mpmain>

80102ba5 <mpsearch1>:
80102ba5:	55                   	push   %ebp
80102ba6:	89 e5                	mov    %esp,%ebp
80102ba8:	57                   	push   %edi
80102ba9:	56                   	push   %esi
80102baa:	53                   	push   %ebx
80102bab:	83 ec 0c             	sub    $0xc,%esp
80102bae:	8d 98 00 00 00 80    	lea    -0x80000000(%eax),%ebx
80102bb4:	8d 34 13             	lea    (%ebx,%edx,1),%esi
80102bb7:	39 f3                	cmp    %esi,%ebx
80102bb9:	72 12                	jb     80102bcd <mpsearch1+0x28>
80102bbb:	bb 00 00 00 00       	mov    $0x0,%ebx
80102bc0:	eb 3a                	jmp    80102bfc <mpsearch1+0x57>
80102bc2:	84 c0                	test   %al,%al
80102bc4:	74 36                	je     80102bfc <mpsearch1+0x57>
80102bc6:	83 c3 10             	add    $0x10,%ebx
80102bc9:	39 de                	cmp    %ebx,%esi
80102bcb:	76 2a                	jbe    80102bf7 <mpsearch1+0x52>
80102bcd:	83 ec 04             	sub    $0x4,%esp
80102bd0:	6a 04                	push   $0x4
80102bd2:	68 38 6e 10 80       	push   $0x80106e38
80102bd7:	53                   	push   %ebx
80102bd8:	e8 32 16 00 00       	call   8010420f <memcmp>
80102bdd:	83 c4 10             	add    $0x10,%esp
80102be0:	85 c0                	test   %eax,%eax
80102be2:	75 e2                	jne    80102bc6 <mpsearch1+0x21>
80102be4:	89 d9                	mov    %ebx,%ecx
80102be6:	8d 7b 10             	lea    0x10(%ebx),%edi
80102be9:	0f b6 11             	movzbl (%ecx),%edx
80102bec:	01 d0                	add    %edx,%eax
80102bee:	83 c1 01             	add    $0x1,%ecx
80102bf1:	39 f9                	cmp    %edi,%ecx
80102bf3:	75 f4                	jne    80102be9 <mpsearch1+0x44>
80102bf5:	eb cb                	jmp    80102bc2 <mpsearch1+0x1d>
80102bf7:	bb 00 00 00 00       	mov    $0x0,%ebx
80102bfc:	89 d8                	mov    %ebx,%eax
80102bfe:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102c01:	5b                   	pop    %ebx
80102c02:	5e                   	pop    %esi
80102c03:	5f                   	pop    %edi
80102c04:	5d                   	pop    %ebp
80102c05:	c3                   	ret    

80102c06 <mpinit>:
80102c06:	55                   	push   %ebp
80102c07:	89 e5                	mov    %esp,%ebp
80102c09:	57                   	push   %edi
80102c0a:	56                   	push   %esi
80102c0b:	53                   	push   %ebx
80102c0c:	83 ec 1c             	sub    $0x1c,%esp
80102c0f:	0f b6 05 0f 04 00 80 	movzbl 0x8000040f,%eax
80102c16:	c1 e0 08             	shl    $0x8,%eax
80102c19:	0f b6 15 0e 04 00 80 	movzbl 0x8000040e,%edx
80102c20:	09 d0                	or     %edx,%eax
80102c22:	c1 e0 04             	shl    $0x4,%eax
80102c25:	85 c0                	test   %eax,%eax
80102c27:	0f 84 b0 00 00 00    	je     80102cdd <mpinit+0xd7>
80102c2d:	ba 00 04 00 00       	mov    $0x400,%edx
80102c32:	e8 6e ff ff ff       	call   80102ba5 <mpsearch1>
80102c37:	89 45 e0             	mov    %eax,-0x20(%ebp)
80102c3a:	85 c0                	test   %eax,%eax
80102c3c:	0f 84 cb 00 00 00    	je     80102d0d <mpinit+0x107>
80102c42:	8b 45 e0             	mov    -0x20(%ebp),%eax
80102c45:	8b 58 04             	mov    0x4(%eax),%ebx
80102c48:	85 db                	test   %ebx,%ebx
80102c4a:	0f 84 d7 00 00 00    	je     80102d27 <mpinit+0x121>
80102c50:	8d b3 00 00 00 80    	lea    -0x80000000(%ebx),%esi
80102c56:	83 ec 04             	sub    $0x4,%esp
80102c59:	6a 04                	push   $0x4
80102c5b:	68 3d 6e 10 80       	push   $0x80106e3d
80102c60:	56                   	push   %esi
80102c61:	e8 a9 15 00 00       	call   8010420f <memcmp>
80102c66:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80102c69:	83 c4 10             	add    $0x10,%esp
80102c6c:	85 c0                	test   %eax,%eax
80102c6e:	0f 85 b3 00 00 00    	jne    80102d27 <mpinit+0x121>
80102c74:	0f b6 83 06 00 00 80 	movzbl -0x7ffffffa(%ebx),%eax
80102c7b:	3c 01                	cmp    $0x1,%al
80102c7d:	74 08                	je     80102c87 <mpinit+0x81>
80102c7f:	3c 04                	cmp    $0x4,%al
80102c81:	0f 85 a0 00 00 00    	jne    80102d27 <mpinit+0x121>
80102c87:	0f b7 93 04 00 00 80 	movzwl -0x7ffffffc(%ebx),%edx
80102c8e:	66 85 d2             	test   %dx,%dx
80102c91:	74 1f                	je     80102cb2 <mpinit+0xac>
80102c93:	89 f0                	mov    %esi,%eax
80102c95:	0f b7 d2             	movzwl %dx,%edx
80102c98:	8d bc 13 00 00 00 80 	lea    -0x80000000(%ebx,%edx,1),%edi
80102c9f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80102ca2:	0f b6 08             	movzbl (%eax),%ecx
80102ca5:	01 ca                	add    %ecx,%edx
80102ca7:	83 c0 01             	add    $0x1,%eax
80102caa:	39 c7                	cmp    %eax,%edi
80102cac:	75 f4                	jne    80102ca2 <mpinit+0x9c>
80102cae:	84 d2                	test   %dl,%dl
80102cb0:	75 75                	jne    80102d27 <mpinit+0x121>
80102cb2:	85 f6                	test   %esi,%esi
80102cb4:	74 71                	je     80102d27 <mpinit+0x121>
80102cb6:	8b 83 24 00 00 80    	mov    -0x7fffffdc(%ebx),%eax
80102cbc:	a3 9c 26 11 80       	mov    %eax,0x8011269c
80102cc1:	8d 83 2c 00 00 80    	lea    -0x7fffffd4(%ebx),%eax
80102cc7:	0f b7 93 04 00 00 80 	movzwl -0x7ffffffc(%ebx),%edx
80102cce:	01 d6                	add    %edx,%esi
80102cd0:	b9 01 00 00 00       	mov    $0x1,%ecx
80102cd5:	8b 7d e4             	mov    -0x1c(%ebp),%edi
80102cd8:	e9 88 00 00 00       	jmp    80102d65 <mpinit+0x15f>
80102cdd:	0f b6 05 14 04 00 80 	movzbl 0x80000414,%eax
80102ce4:	c1 e0 08             	shl    $0x8,%eax
80102ce7:	0f b6 15 13 04 00 80 	movzbl 0x80000413,%edx
80102cee:	09 d0                	or     %edx,%eax
80102cf0:	c1 e0 0a             	shl    $0xa,%eax
80102cf3:	2d 00 04 00 00       	sub    $0x400,%eax
80102cf8:	ba 00 04 00 00       	mov    $0x400,%edx
80102cfd:	e8 a3 fe ff ff       	call   80102ba5 <mpsearch1>
80102d02:	89 45 e0             	mov    %eax,-0x20(%ebp)
80102d05:	85 c0                	test   %eax,%eax
80102d07:	0f 85 35 ff ff ff    	jne    80102c42 <mpinit+0x3c>
80102d0d:	ba 00 00 01 00       	mov    $0x10000,%edx
80102d12:	b8 00 00 0f 00       	mov    $0xf0000,%eax
80102d17:	e8 89 fe ff ff       	call   80102ba5 <mpsearch1>
80102d1c:	89 45 e0             	mov    %eax,-0x20(%ebp)
80102d1f:	85 c0                	test   %eax,%eax
80102d21:	0f 85 1b ff ff ff    	jne    80102c42 <mpinit+0x3c>
80102d27:	83 ec 0c             	sub    $0xc,%esp
80102d2a:	68 42 6e 10 80       	push   $0x80106e42
80102d2f:	e8 10 d6 ff ff       	call   80100344 <panic>
80102d34:	89 f9                	mov    %edi,%ecx
80102d36:	eb 34                	jmp    80102d6c <mpinit+0x166>
80102d38:	8b 15 20 2d 11 80    	mov    0x80112d20,%edx
80102d3e:	83 fa 07             	cmp    $0x7,%edx
80102d41:	7f 1f                	jg     80102d62 <mpinit+0x15c>
80102d43:	89 55 e4             	mov    %edx,-0x1c(%ebp)
80102d46:	69 da b0 00 00 00    	imul   $0xb0,%edx,%ebx
80102d4c:	0f b6 50 01          	movzbl 0x1(%eax),%edx
80102d50:	88 93 a0 27 11 80    	mov    %dl,-0x7feed860(%ebx)
80102d56:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80102d59:	83 c2 01             	add    $0x1,%edx
80102d5c:	89 15 20 2d 11 80    	mov    %edx,0x80112d20
80102d62:	83 c0 14             	add    $0x14,%eax
80102d65:	39 f0                	cmp    %esi,%eax
80102d67:	73 26                	jae    80102d8f <mpinit+0x189>
80102d69:	0f b6 10             	movzbl (%eax),%edx
80102d6c:	80 fa 04             	cmp    $0x4,%dl
80102d6f:	77 c3                	ja     80102d34 <mpinit+0x12e>
80102d71:	0f b6 d2             	movzbl %dl,%edx
80102d74:	ff 24 95 7c 6e 10 80 	jmp    *-0x7fef9184(,%edx,4)
80102d7b:	0f b6 50 01          	movzbl 0x1(%eax),%edx
80102d7f:	88 15 80 27 11 80    	mov    %dl,0x80112780
80102d85:	83 c0 08             	add    $0x8,%eax
80102d88:	eb db                	jmp    80102d65 <mpinit+0x15f>
80102d8a:	83 c0 08             	add    $0x8,%eax
80102d8d:	eb d6                	jmp    80102d65 <mpinit+0x15f>
80102d8f:	85 c9                	test   %ecx,%ecx
80102d91:	74 26                	je     80102db9 <mpinit+0x1b3>
80102d93:	8b 45 e0             	mov    -0x20(%ebp),%eax
80102d96:	80 78 0c 00          	cmpb   $0x0,0xc(%eax)
80102d9a:	74 15                	je     80102db1 <mpinit+0x1ab>
80102d9c:	b8 70 00 00 00       	mov    $0x70,%eax
80102da1:	ba 22 00 00 00       	mov    $0x22,%edx
80102da6:	ee                   	out    %al,(%dx)
80102da7:	ba 23 00 00 00       	mov    $0x23,%edx
80102dac:	ec                   	in     (%dx),%al
80102dad:	83 c8 01             	or     $0x1,%eax
80102db0:	ee                   	out    %al,(%dx)
80102db1:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102db4:	5b                   	pop    %ebx
80102db5:	5e                   	pop    %esi
80102db6:	5f                   	pop    %edi
80102db7:	5d                   	pop    %ebp
80102db8:	c3                   	ret    
80102db9:	83 ec 0c             	sub    $0xc,%esp
80102dbc:	68 5c 6e 10 80       	push   $0x80106e5c
80102dc1:	e8 7e d5 ff ff       	call   80100344 <panic>

80102dc6 <picinit>:
80102dc6:	55                   	push   %ebp
80102dc7:	89 e5                	mov    %esp,%ebp
80102dc9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102dce:	ba 21 00 00 00       	mov    $0x21,%edx
80102dd3:	ee                   	out    %al,(%dx)
80102dd4:	ba a1 00 00 00       	mov    $0xa1,%edx
80102dd9:	ee                   	out    %al,(%dx)
80102dda:	5d                   	pop    %ebp
80102ddb:	c3                   	ret    

80102ddc <pipealloc>:
80102ddc:	55                   	push   %ebp
80102ddd:	89 e5                	mov    %esp,%ebp
80102ddf:	57                   	push   %edi
80102de0:	56                   	push   %esi
80102de1:	53                   	push   %ebx
80102de2:	83 ec 0c             	sub    $0xc,%esp
80102de5:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102de8:	8b 75 0c             	mov    0xc(%ebp),%esi
80102deb:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
80102df1:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80102df7:	e8 7e de ff ff       	call   80100c7a <filealloc>
80102dfc:	89 03                	mov    %eax,(%ebx)
80102dfe:	85 c0                	test   %eax,%eax
80102e00:	0f 84 a9 00 00 00    	je     80102eaf <pipealloc+0xd3>
80102e06:	e8 6f de ff ff       	call   80100c7a <filealloc>
80102e0b:	89 06                	mov    %eax,(%esi)
80102e0d:	85 c0                	test   %eax,%eax
80102e0f:	0f 84 88 00 00 00    	je     80102e9d <pipealloc+0xc1>
80102e15:	e8 44 f3 ff ff       	call   8010215e <kalloc>
80102e1a:	89 c7                	mov    %eax,%edi
80102e1c:	85 c0                	test   %eax,%eax
80102e1e:	75 0b                	jne    80102e2b <pipealloc+0x4f>
80102e20:	8b 03                	mov    (%ebx),%eax
80102e22:	85 c0                	test   %eax,%eax
80102e24:	75 7d                	jne    80102ea3 <pipealloc+0xc7>
80102e26:	e9 84 00 00 00       	jmp    80102eaf <pipealloc+0xd3>
80102e2b:	c7 80 3c 02 00 00 01 	movl   $0x1,0x23c(%eax)
80102e32:	00 00 00 
80102e35:	c7 80 40 02 00 00 01 	movl   $0x1,0x240(%eax)
80102e3c:	00 00 00 
80102e3f:	c7 80 38 02 00 00 00 	movl   $0x0,0x238(%eax)
80102e46:	00 00 00 
80102e49:	c7 80 34 02 00 00 00 	movl   $0x0,0x234(%eax)
80102e50:	00 00 00 
80102e53:	83 ec 08             	sub    $0x8,%esp
80102e56:	68 90 6e 10 80       	push   $0x80106e90
80102e5b:	50                   	push   %eax
80102e5c:	e8 74 11 00 00       	call   80103fd5 <initlock>
80102e61:	8b 03                	mov    (%ebx),%eax
80102e63:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
80102e69:	8b 03                	mov    (%ebx),%eax
80102e6b:	c6 40 08 01          	movb   $0x1,0x8(%eax)
80102e6f:	8b 03                	mov    (%ebx),%eax
80102e71:	c6 40 09 00          	movb   $0x0,0x9(%eax)
80102e75:	8b 03                	mov    (%ebx),%eax
80102e77:	89 78 0c             	mov    %edi,0xc(%eax)
80102e7a:	8b 06                	mov    (%esi),%eax
80102e7c:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
80102e82:	8b 06                	mov    (%esi),%eax
80102e84:	c6 40 08 00          	movb   $0x0,0x8(%eax)
80102e88:	8b 06                	mov    (%esi),%eax
80102e8a:	c6 40 09 01          	movb   $0x1,0x9(%eax)
80102e8e:	8b 06                	mov    (%esi),%eax
80102e90:	89 78 0c             	mov    %edi,0xc(%eax)
80102e93:	83 c4 10             	add    $0x10,%esp
80102e96:	b8 00 00 00 00       	mov    $0x0,%eax
80102e9b:	eb 2e                	jmp    80102ecb <pipealloc+0xef>
80102e9d:	8b 03                	mov    (%ebx),%eax
80102e9f:	85 c0                	test   %eax,%eax
80102ea1:	74 30                	je     80102ed3 <pipealloc+0xf7>
80102ea3:	83 ec 0c             	sub    $0xc,%esp
80102ea6:	50                   	push   %eax
80102ea7:	e8 80 de ff ff       	call   80100d2c <fileclose>
80102eac:	83 c4 10             	add    $0x10,%esp
80102eaf:	8b 16                	mov    (%esi),%edx
80102eb1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102eb6:	85 d2                	test   %edx,%edx
80102eb8:	74 11                	je     80102ecb <pipealloc+0xef>
80102eba:	83 ec 0c             	sub    $0xc,%esp
80102ebd:	52                   	push   %edx
80102ebe:	e8 69 de ff ff       	call   80100d2c <fileclose>
80102ec3:	83 c4 10             	add    $0x10,%esp
80102ec6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102ecb:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102ece:	5b                   	pop    %ebx
80102ecf:	5e                   	pop    %esi
80102ed0:	5f                   	pop    %edi
80102ed1:	5d                   	pop    %ebp
80102ed2:	c3                   	ret    
80102ed3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102ed8:	eb f1                	jmp    80102ecb <pipealloc+0xef>

80102eda <pipeclose>:
80102eda:	55                   	push   %ebp
80102edb:	89 e5                	mov    %esp,%ebp
80102edd:	53                   	push   %ebx
80102ede:	83 ec 10             	sub    $0x10,%esp
80102ee1:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102ee4:	53                   	push   %ebx
80102ee5:	e8 33 12 00 00       	call   8010411d <acquire>
80102eea:	83 c4 10             	add    $0x10,%esp
80102eed:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
80102ef1:	74 3f                	je     80102f32 <pipeclose+0x58>
80102ef3:	c7 83 40 02 00 00 00 	movl   $0x0,0x240(%ebx)
80102efa:	00 00 00 
80102efd:	83 ec 0c             	sub    $0xc,%esp
80102f00:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102f06:	50                   	push   %eax
80102f07:	e8 0f 0e 00 00       	call   80103d1b <wakeup>
80102f0c:	83 c4 10             	add    $0x10,%esp
80102f0f:	83 bb 3c 02 00 00 00 	cmpl   $0x0,0x23c(%ebx)
80102f16:	75 09                	jne    80102f21 <pipeclose+0x47>
80102f18:	83 bb 40 02 00 00 00 	cmpl   $0x0,0x240(%ebx)
80102f1f:	74 2f                	je     80102f50 <pipeclose+0x76>
80102f21:	83 ec 0c             	sub    $0xc,%esp
80102f24:	53                   	push   %ebx
80102f25:	e8 5a 12 00 00       	call   80104184 <release>
80102f2a:	83 c4 10             	add    $0x10,%esp
80102f2d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102f30:	c9                   	leave  
80102f31:	c3                   	ret    
80102f32:	c7 83 3c 02 00 00 00 	movl   $0x0,0x23c(%ebx)
80102f39:	00 00 00 
80102f3c:	83 ec 0c             	sub    $0xc,%esp
80102f3f:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
80102f45:	50                   	push   %eax
80102f46:	e8 d0 0d 00 00       	call   80103d1b <wakeup>
80102f4b:	83 c4 10             	add    $0x10,%esp
80102f4e:	eb bf                	jmp    80102f0f <pipeclose+0x35>
80102f50:	83 ec 0c             	sub    $0xc,%esp
80102f53:	53                   	push   %ebx
80102f54:	e8 2b 12 00 00       	call   80104184 <release>
80102f59:	89 1c 24             	mov    %ebx,(%esp)
80102f5c:	e8 d8 f0 ff ff       	call   80102039 <kfree>
80102f61:	83 c4 10             	add    $0x10,%esp
80102f64:	eb c7                	jmp    80102f2d <pipeclose+0x53>

80102f66 <pipewrite>:
80102f66:	55                   	push   %ebp
80102f67:	89 e5                	mov    %esp,%ebp
80102f69:	57                   	push   %edi
80102f6a:	56                   	push   %esi
80102f6b:	53                   	push   %ebx
80102f6c:	83 ec 28             	sub    $0x28,%esp
80102f6f:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102f72:	8b 75 0c             	mov    0xc(%ebp),%esi
80102f75:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
80102f78:	53                   	push   %ebx
80102f79:	e8 9f 11 00 00       	call   8010411d <acquire>
80102f7e:	83 c4 10             	add    $0x10,%esp
80102f81:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80102f85:	0f 8e b5 00 00 00    	jle    80103040 <pipewrite+0xda>
80102f8b:	89 75 e0             	mov    %esi,-0x20(%ebp)
80102f8e:	03 75 10             	add    0x10(%ebp),%esi
80102f91:	89 75 dc             	mov    %esi,-0x24(%ebp)
80102f94:	8d bb 34 02 00 00    	lea    0x234(%ebx),%edi
80102f9a:	8b 93 38 02 00 00    	mov    0x238(%ebx),%edx
80102fa0:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
80102fa6:	05 00 02 00 00       	add    $0x200,%eax
80102fab:	39 c2                	cmp    %eax,%edx
80102fad:	75 69                	jne    80103018 <pipewrite+0xb2>
80102faf:	83 bb 3c 02 00 00 00 	cmpl   $0x0,0x23c(%ebx)
80102fb6:	74 47                	je     80102fff <pipewrite+0x99>
80102fb8:	8d b3 38 02 00 00    	lea    0x238(%ebx),%esi
80102fbe:	e8 2e 06 00 00       	call   801035f1 <myproc>
80102fc3:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80102fc7:	75 36                	jne    80102fff <pipewrite+0x99>
80102fc9:	83 ec 0c             	sub    $0xc,%esp
80102fcc:	57                   	push   %edi
80102fcd:	e8 49 0d 00 00       	call   80103d1b <wakeup>
80102fd2:	83 c4 08             	add    $0x8,%esp
80102fd5:	ff 75 e4             	pushl  -0x1c(%ebp)
80102fd8:	56                   	push   %esi
80102fd9:	e8 bd 0b 00 00       	call   80103b9b <sleep>
80102fde:	8b 93 38 02 00 00    	mov    0x238(%ebx),%edx
80102fe4:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
80102fea:	05 00 02 00 00       	add    $0x200,%eax
80102fef:	83 c4 10             	add    $0x10,%esp
80102ff2:	39 c2                	cmp    %eax,%edx
80102ff4:	75 22                	jne    80103018 <pipewrite+0xb2>
80102ff6:	83 bb 3c 02 00 00 00 	cmpl   $0x0,0x23c(%ebx)
80102ffd:	75 bf                	jne    80102fbe <pipewrite+0x58>
80102fff:	83 ec 0c             	sub    $0xc,%esp
80103002:	53                   	push   %ebx
80103003:	e8 7c 11 00 00       	call   80104184 <release>
80103008:	83 c4 10             	add    $0x10,%esp
8010300b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103010:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103013:	5b                   	pop    %ebx
80103014:	5e                   	pop    %esi
80103015:	5f                   	pop    %edi
80103016:	5d                   	pop    %ebp
80103017:	c3                   	ret    
80103018:	8d 42 01             	lea    0x1(%edx),%eax
8010301b:	89 83 38 02 00 00    	mov    %eax,0x238(%ebx)
80103021:	8b 4d e0             	mov    -0x20(%ebp),%ecx
80103024:	0f b6 01             	movzbl (%ecx),%eax
80103027:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
8010302d:	88 44 13 34          	mov    %al,0x34(%ebx,%edx,1)
80103031:	83 c1 01             	add    $0x1,%ecx
80103034:	89 4d e0             	mov    %ecx,-0x20(%ebp)
80103037:	3b 4d dc             	cmp    -0x24(%ebp),%ecx
8010303a:	0f 85 5a ff ff ff    	jne    80102f9a <pipewrite+0x34>
80103040:	83 ec 0c             	sub    $0xc,%esp
80103043:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80103049:	50                   	push   %eax
8010304a:	e8 cc 0c 00 00       	call   80103d1b <wakeup>
8010304f:	89 1c 24             	mov    %ebx,(%esp)
80103052:	e8 2d 11 00 00       	call   80104184 <release>
80103057:	83 c4 10             	add    $0x10,%esp
8010305a:	8b 45 10             	mov    0x10(%ebp),%eax
8010305d:	eb b1                	jmp    80103010 <pipewrite+0xaa>

8010305f <piperead>:
8010305f:	55                   	push   %ebp
80103060:	89 e5                	mov    %esp,%ebp
80103062:	57                   	push   %edi
80103063:	56                   	push   %esi
80103064:	53                   	push   %ebx
80103065:	83 ec 18             	sub    $0x18,%esp
80103068:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010306b:	53                   	push   %ebx
8010306c:	e8 ac 10 00 00       	call   8010411d <acquire>
80103071:	83 c4 10             	add    $0x10,%esp
80103074:	8b 83 38 02 00 00    	mov    0x238(%ebx),%eax
8010307a:	39 83 34 02 00 00    	cmp    %eax,0x234(%ebx)
80103080:	75 7c                	jne    801030fe <piperead+0x9f>
80103082:	89 de                	mov    %ebx,%esi
80103084:	83 bb 40 02 00 00 00 	cmpl   $0x0,0x240(%ebx)
8010308b:	74 35                	je     801030c2 <piperead+0x63>
8010308d:	8d bb 34 02 00 00    	lea    0x234(%ebx),%edi
80103093:	e8 59 05 00 00       	call   801035f1 <myproc>
80103098:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
8010309c:	75 4d                	jne    801030eb <piperead+0x8c>
8010309e:	83 ec 08             	sub    $0x8,%esp
801030a1:	56                   	push   %esi
801030a2:	57                   	push   %edi
801030a3:	e8 f3 0a 00 00       	call   80103b9b <sleep>
801030a8:	83 c4 10             	add    $0x10,%esp
801030ab:	8b 83 38 02 00 00    	mov    0x238(%ebx),%eax
801030b1:	39 83 34 02 00 00    	cmp    %eax,0x234(%ebx)
801030b7:	75 45                	jne    801030fe <piperead+0x9f>
801030b9:	83 bb 40 02 00 00 00 	cmpl   $0x0,0x240(%ebx)
801030c0:	75 d1                	jne    80103093 <piperead+0x34>
801030c2:	be 00 00 00 00       	mov    $0x0,%esi
801030c7:	83 ec 0c             	sub    $0xc,%esp
801030ca:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
801030d0:	50                   	push   %eax
801030d1:	e8 45 0c 00 00       	call   80103d1b <wakeup>
801030d6:	89 1c 24             	mov    %ebx,(%esp)
801030d9:	e8 a6 10 00 00       	call   80104184 <release>
801030de:	83 c4 10             	add    $0x10,%esp
801030e1:	89 f0                	mov    %esi,%eax
801030e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
801030e6:	5b                   	pop    %ebx
801030e7:	5e                   	pop    %esi
801030e8:	5f                   	pop    %edi
801030e9:	5d                   	pop    %ebp
801030ea:	c3                   	ret    
801030eb:	83 ec 0c             	sub    $0xc,%esp
801030ee:	53                   	push   %ebx
801030ef:	e8 90 10 00 00       	call   80104184 <release>
801030f4:	83 c4 10             	add    $0x10,%esp
801030f7:	be ff ff ff ff       	mov    $0xffffffff,%esi
801030fc:	eb e3                	jmp    801030e1 <piperead+0x82>
801030fe:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80103102:	7e 3c                	jle    80103140 <piperead+0xe1>
80103104:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
8010310a:	be 00 00 00 00       	mov    $0x0,%esi
8010310f:	8d 50 01             	lea    0x1(%eax),%edx
80103112:	89 93 34 02 00 00    	mov    %edx,0x234(%ebx)
80103118:	25 ff 01 00 00       	and    $0x1ff,%eax
8010311d:	0f b6 44 03 34       	movzbl 0x34(%ebx,%eax,1),%eax
80103122:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103125:	88 04 31             	mov    %al,(%ecx,%esi,1)
80103128:	83 c6 01             	add    $0x1,%esi
8010312b:	39 75 10             	cmp    %esi,0x10(%ebp)
8010312e:	74 97                	je     801030c7 <piperead+0x68>
80103130:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
80103136:	3b 83 38 02 00 00    	cmp    0x238(%ebx),%eax
8010313c:	75 d1                	jne    8010310f <piperead+0xb0>
8010313e:	eb 87                	jmp    801030c7 <piperead+0x68>
80103140:	be 00 00 00 00       	mov    $0x0,%esi
80103145:	eb 80                	jmp    801030c7 <piperead+0x68>

80103147 <wakeup1>:
//PAGEBREAK!
// Wake up all processes sleeping on chan.
// The ptable lock must be held.
static void
wakeup1(void *chan)
{
80103147:	55                   	push   %ebp
80103148:	89 e5                	mov    %esp,%ebp
  struct proc *p;

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
8010314a:	ba 94 2d 11 80       	mov    $0x80112d94,%edx
8010314f:	eb 0e                	jmp    8010315f <wakeup1+0x18>
80103151:	81 c2 88 00 00 00    	add    $0x88,%edx
80103157:	81 fa 94 4f 11 80    	cmp    $0x80114f94,%edx
8010315d:	73 14                	jae    80103173 <wakeup1+0x2c>
    if(p->state == SLEEPING && p->chan == chan)
8010315f:	83 7a 0c 02          	cmpl   $0x2,0xc(%edx)
80103163:	75 ec                	jne    80103151 <wakeup1+0xa>
80103165:	39 42 20             	cmp    %eax,0x20(%edx)
80103168:	75 e7                	jne    80103151 <wakeup1+0xa>
      p->state = RUNNABLE;
8010316a:	c7 42 0c 03 00 00 00 	movl   $0x3,0xc(%edx)
80103171:	eb de                	jmp    80103151 <wakeup1+0xa>
}
80103173:	5d                   	pop    %ebp
80103174:	c3                   	ret    

80103175 <allocproc>:
{
80103175:	55                   	push   %ebp
80103176:	89 e5                	mov    %esp,%ebp
80103178:	53                   	push   %ebx
80103179:	83 ec 10             	sub    $0x10,%esp
  acquire(&ptable.lock);
8010317c:	68 60 2d 11 80       	push   $0x80112d60
80103181:	e8 97 0f 00 00       	call   8010411d <acquire>
    if(p->state == UNUSED)
80103186:	83 c4 10             	add    $0x10,%esp
80103189:	83 3d a0 2d 11 80 00 	cmpl   $0x0,0x80112da0
80103190:	74 30                	je     801031c2 <allocproc+0x4d>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80103192:	bb 1c 2e 11 80       	mov    $0x80112e1c,%ebx
    if(p->state == UNUSED)
80103197:	83 7b 0c 00          	cmpl   $0x0,0xc(%ebx)
8010319b:	74 2a                	je     801031c7 <allocproc+0x52>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
8010319d:	81 c3 88 00 00 00    	add    $0x88,%ebx
801031a3:	81 fb 94 4f 11 80    	cmp    $0x80114f94,%ebx
801031a9:	72 ec                	jb     80103197 <allocproc+0x22>
  release(&ptable.lock);
801031ab:	83 ec 0c             	sub    $0xc,%esp
801031ae:	68 60 2d 11 80       	push   $0x80112d60
801031b3:	e8 cc 0f 00 00       	call   80104184 <release>
  return 0;
801031b8:	83 c4 10             	add    $0x10,%esp
801031bb:	bb 00 00 00 00       	mov    $0x0,%ebx
801031c0:	eb 6e                	jmp    80103230 <allocproc+0xbb>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
801031c2:	bb 94 2d 11 80       	mov    $0x80112d94,%ebx
  p->state = EMBRYO;
801031c7:	c7 43 0c 01 00 00 00 	movl   $0x1,0xc(%ebx)
  p->pid = nextpid++;
801031ce:	a1 04 a0 10 80       	mov    0x8010a004,%eax
801031d3:	8d 50 01             	lea    0x1(%eax),%edx
801031d6:	89 15 04 a0 10 80    	mov    %edx,0x8010a004
801031dc:	89 43 10             	mov    %eax,0x10(%ebx)
  release(&ptable.lock);
801031df:	83 ec 0c             	sub    $0xc,%esp
801031e2:	68 60 2d 11 80       	push   $0x80112d60
801031e7:	e8 98 0f 00 00       	call   80104184 <release>
  if((p->kstack = kalloc()) == 0){
801031ec:	e8 6d ef ff ff       	call   8010215e <kalloc>
801031f1:	89 43 08             	mov    %eax,0x8(%ebx)
801031f4:	83 c4 10             	add    $0x10,%esp
801031f7:	85 c0                	test   %eax,%eax
801031f9:	74 3c                	je     80103237 <allocproc+0xc2>
  sp -= sizeof *p->tf;
801031fb:	8d 90 b4 0f 00 00    	lea    0xfb4(%eax),%edx
80103201:	89 53 18             	mov    %edx,0x18(%ebx)
  *(uint*)sp = (uint)trapret;
80103204:	c7 80 b0 0f 00 00 70 	movl   $0x80105270,0xfb0(%eax)
8010320b:	52 10 80 
  sp -= sizeof *p->context;
8010320e:	05 9c 0f 00 00       	add    $0xf9c,%eax
  p->context = (struct context*)sp;
80103213:	89 43 1c             	mov    %eax,0x1c(%ebx)
  memset(p->context, 0, sizeof *p->context);
80103216:	83 ec 04             	sub    $0x4,%esp
80103219:	6a 14                	push   $0x14
8010321b:	6a 00                	push   $0x0
8010321d:	50                   	push   %eax
8010321e:	e8 a8 0f 00 00       	call   801041cb <memset>
  p->context->eip = (uint)forkret;
80103223:	8b 43 1c             	mov    0x1c(%ebx),%eax
80103226:	c7 40 10 45 32 10 80 	movl   $0x80103245,0x10(%eax)
  return p;
8010322d:	83 c4 10             	add    $0x10,%esp
}
80103230:	89 d8                	mov    %ebx,%eax
80103232:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103235:	c9                   	leave  
80103236:	c3                   	ret    
    p->state = UNUSED;
80103237:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
    return 0;
8010323e:	bb 00 00 00 00       	mov    $0x0,%ebx
80103243:	eb eb                	jmp    80103230 <allocproc+0xbb>

80103245 <forkret>:
{
80103245:	55                   	push   %ebp
80103246:	89 e5                	mov    %esp,%ebp
80103248:	83 ec 14             	sub    $0x14,%esp
  release(&ptable.lock);
8010324b:	68 60 2d 11 80       	push   $0x80112d60
80103250:	e8 2f 0f 00 00       	call   80104184 <release>
  if (first) {
80103255:	83 c4 10             	add    $0x10,%esp
80103258:	83 3d 00 a0 10 80 00 	cmpl   $0x0,0x8010a000
8010325f:	75 02                	jne    80103263 <forkret+0x1e>
}
80103261:	c9                   	leave  
80103262:	c3                   	ret    
    first = 0;
80103263:	c7 05 00 a0 10 80 00 	movl   $0x0,0x8010a000
8010326a:	00 00 00 
    iinit(ROOTDEV);
8010326d:	83 ec 0c             	sub    $0xc,%esp
80103270:	6a 01                	push   $0x1
80103272:	e8 8f e0 ff ff       	call   80101306 <iinit>
    initlog(ROOTDEV);
80103277:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
8010327e:	e8 95 f4 ff ff       	call   80102718 <initlog>
80103283:	83 c4 10             	add    $0x10,%esp
}
80103286:	eb d9                	jmp    80103261 <forkret+0x1c>

80103288 <get_max_mlfq_height>:
int get_max_mlfq_height(){
80103288:	55                   	push   %ebp
80103289:	89 e5                	mov    %esp,%ebp
    if(queue_count[i] != 0)
8010328b:	83 3d b8 a5 10 80 00 	cmpl   $0x0,0x8010a5b8
80103292:	75 1e                	jne    801032b2 <get_max_mlfq_height+0x2a>
80103294:	83 3d bc a5 10 80 00 	cmpl   $0x0,0x8010a5bc
8010329b:	75 0e                	jne    801032ab <get_max_mlfq_height+0x23>
  for(i = 0; i < 3; i++){
8010329d:	83 3d c0 a5 10 80 01 	cmpl   $0x1,0x8010a5c0
801032a4:	19 c0                	sbb    %eax,%eax
801032a6:	83 c8 02             	or     $0x2,%eax
}
801032a9:	5d                   	pop    %ebp
801032aa:	c3                   	ret    
  for(i = 0; i < 3; i++){
801032ab:	b8 01 00 00 00       	mov    $0x1,%eax
801032b0:	eb f7                	jmp    801032a9 <get_max_mlfq_height+0x21>
801032b2:	b8 00 00 00 00       	mov    $0x0,%eax
801032b7:	eb f0                	jmp    801032a9 <get_max_mlfq_height+0x21>

801032b9 <enqueue>:
int enqueue(struct mlfq *mlfq, struct proc *p) { // Change return type to int
801032b9:	55                   	push   %ebp
801032ba:	89 e5                	mov    %esp,%ebp
801032bc:	57                   	push   %edi
801032bd:	56                   	push   %esi
801032be:	53                   	push   %ebx
801032bf:	83 ec 0c             	sub    $0xc,%esp
801032c2:	8b 75 08             	mov    0x8(%ebp),%esi
801032c5:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for (int level = HIGH; level <= LOW; level++) {
801032c8:	bf 00 00 00 00       	mov    $0x0,%edi
    struct queue_node *node = q->head;
801032cd:	8b 04 fe             	mov    (%esi,%edi,8),%eax
    while (node) {
801032d0:	85 c0                	test   %eax,%eax
801032d2:	74 25                	je     801032f9 <enqueue+0x40>
      if (node->p->pid == p->pid) {
801032d4:	8b 4b 10             	mov    0x10(%ebx),%ecx
801032d7:	8b 10                	mov    (%eax),%edx
801032d9:	39 4a 10             	cmp    %ecx,0x10(%edx)
801032dc:	74 74                	je     80103352 <enqueue+0x99>
      node = node->next;
801032de:	8b 40 04             	mov    0x4(%eax),%eax
    while (node) {
801032e1:	85 c0                	test   %eax,%eax
801032e3:	74 14                	je     801032f9 <enqueue+0x40>
      if (node->p->pid == p->pid) {
801032e5:	8b 10                	mov    (%eax),%edx
801032e7:	39 4a 10             	cmp    %ecx,0x10(%edx)
801032ea:	75 f2                	jne    801032de <enqueue+0x25>
        return 0; // Do not insert if the pid already exists in any queue
801032ec:	b8 00 00 00 00       	mov    $0x0,%eax
}
801032f1:	8d 65 f4             	lea    -0xc(%ebp),%esp
801032f4:	5b                   	pop    %ebx
801032f5:	5e                   	pop    %esi
801032f6:	5f                   	pop    %edi
801032f7:	5d                   	pop    %ebp
801032f8:	c3                   	ret    
  for (int level = HIGH; level <= LOW; level++) {
801032f9:	83 c7 01             	add    $0x1,%edi
801032fc:	83 ff 03             	cmp    $0x3,%edi
801032ff:	75 cc                	jne    801032cd <enqueue+0x14>
  struct queue *q = &mlfq->q[p->level];
80103301:	8b bb 80 00 00 00    	mov    0x80(%ebx),%edi
  struct queue_node *new_node = (struct queue_node *)kalloc();
80103307:	e8 52 ee ff ff       	call   8010215e <kalloc>
  if (!new_node)
8010330c:	85 c0                	test   %eax,%eax
8010330e:	74 2e                	je     8010333e <enqueue+0x85>
  new_node->p = p;
80103310:	89 18                	mov    %ebx,(%eax)
  new_node->next = 0;
80103312:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
80103319:	8d 14 fe             	lea    (%esi,%edi,8),%edx
  if (q->tail) {
8010331c:	8b 4a 04             	mov    0x4(%edx),%ecx
8010331f:	85 c9                	test   %ecx,%ecx
80103321:	74 28                	je     8010334b <enqueue+0x92>
    q->tail->next = new_node;
80103323:	89 41 04             	mov    %eax,0x4(%ecx)
    q->tail = new_node;
80103326:	89 42 04             	mov    %eax,0x4(%edx)
  queue_count[p->level]++; // Increment the count for the corresponding queue
80103329:	8b 83 80 00 00 00    	mov    0x80(%ebx),%eax
8010332f:	83 04 85 b8 a5 10 80 	addl   $0x1,-0x7fef5a48(,%eax,4)
80103336:	01 
  return 1; // Successfully inserted
80103337:	b8 01 00 00 00       	mov    $0x1,%eax
8010333c:	eb b3                	jmp    801032f1 <enqueue+0x38>
    panic("enqueue: out of memory");
8010333e:	83 ec 0c             	sub    $0xc,%esp
80103341:	68 95 6e 10 80       	push   $0x80106e95
80103346:	e8 f9 cf ff ff       	call   80100344 <panic>
    q->head = q->tail = new_node;
8010334b:	89 42 04             	mov    %eax,0x4(%edx)
8010334e:	89 02                	mov    %eax,(%edx)
80103350:	eb d7                	jmp    80103329 <enqueue+0x70>
        return 0; // Do not insert if the pid already exists in any queue
80103352:	b8 00 00 00 00       	mov    $0x0,%eax
80103357:	eb 98                	jmp    801032f1 <enqueue+0x38>

80103359 <dequeue>:
struct proc* dequeue(struct mlfq *mlfq, int level) {
80103359:	55                   	push   %ebp
8010335a:	89 e5                	mov    %esp,%ebp
8010335c:	56                   	push   %esi
8010335d:	53                   	push   %ebx
8010335e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
80103361:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
80103368:	03 45 08             	add    0x8(%ebp),%eax
  if (!q->head)
8010336b:	8b 10                	mov    (%eax),%edx
8010336d:	85 d2                	test   %edx,%edx
8010336f:	74 31                	je     801033a2 <dequeue+0x49>
  struct proc *p = node->p;
80103371:	8b 32                	mov    (%edx),%esi
  q->head = node->next;
80103373:	8b 4a 04             	mov    0x4(%edx),%ecx
80103376:	89 08                	mov    %ecx,(%eax)
  if (!q->head)
80103378:	85 c9                	test   %ecx,%ecx
8010337a:	74 1d                	je     80103399 <dequeue+0x40>
  kfree((char *)node);
8010337c:	83 ec 0c             	sub    $0xc,%esp
8010337f:	52                   	push   %edx
80103380:	e8 b4 ec ff ff       	call   80102039 <kfree>
  queue_count[level]--; // Decrement the count for the corresponding queue
80103385:	83 2c 9d b8 a5 10 80 	subl   $0x1,-0x7fef5a48(,%ebx,4)
8010338c:	01 
  return p;
8010338d:	83 c4 10             	add    $0x10,%esp
}
80103390:	89 f0                	mov    %esi,%eax
80103392:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103395:	5b                   	pop    %ebx
80103396:	5e                   	pop    %esi
80103397:	5d                   	pop    %ebp
80103398:	c3                   	ret    
    q->tail = 0;
80103399:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
801033a0:	eb da                	jmp    8010337c <dequeue+0x23>
    return 0;
801033a2:	be 00 00 00 00       	mov    $0x0,%esi
801033a7:	eb e7                	jmp    80103390 <dequeue+0x37>

801033a9 <remove_from_mlfq>:
int remove_from_mlfq(struct mlfq *mlfq, struct proc *p) {
801033a9:	55                   	push   %ebp
801033aa:	89 e5                	mov    %esp,%ebp
801033ac:	57                   	push   %edi
801033ad:	56                   	push   %esi
801033ae:	53                   	push   %ebx
801033af:	83 ec 0c             	sub    $0xc,%esp
801033b2:	8b 75 08             	mov    0x8(%ebp),%esi
801033b5:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  for (int level = HIGH; level <= LOW; level++) {
801033b8:	bb 00 00 00 00       	mov    $0x0,%ebx
801033bd:	89 df                	mov    %ebx,%edi
    struct queue_node *cur = q->head;
801033bf:	8b 14 de             	mov    (%esi,%ebx,8),%edx
    while (cur) {
801033c2:	85 d2                	test   %edx,%edx
801033c4:	74 5a                	je     80103420 <remove_from_mlfq+0x77>
      if (cur->p == p) { // Compare pointers directly
801033c6:	3b 0a                	cmp    (%edx),%ecx
801033c8:	74 42                	je     8010340c <remove_from_mlfq+0x63>
      cur = cur->next;
801033ca:	8b 42 04             	mov    0x4(%edx),%eax
    while (cur) {
801033cd:	85 c0                	test   %eax,%eax
801033cf:	74 4f                	je     80103420 <remove_from_mlfq+0x77>
      if (cur->p == p) { // Compare pointers directly
801033d1:	39 08                	cmp    %ecx,(%eax)
801033d3:	74 04                	je     801033d9 <remove_from_mlfq+0x30>
      cur = cur->next;
801033d5:	89 c2                	mov    %eax,%edx
801033d7:	eb f1                	jmp    801033ca <remove_from_mlfq+0x21>
        if (prev) {
801033d9:	85 d2                	test   %edx,%edx
801033db:	74 36                	je     80103413 <remove_from_mlfq+0x6a>
          prev->next = cur->next;
801033dd:	8b 48 04             	mov    0x4(%eax),%ecx
801033e0:	89 4a 04             	mov    %ecx,0x4(%edx)
801033e3:	8d 0c fe             	lea    (%esi,%edi,8),%ecx
        if (cur == q->tail) {
801033e6:	39 41 04             	cmp    %eax,0x4(%ecx)
801033e9:	74 30                	je     8010341b <remove_from_mlfq+0x72>
        kfree((char *)cur);
801033eb:	83 ec 0c             	sub    $0xc,%esp
801033ee:	50                   	push   %eax
801033ef:	e8 45 ec ff ff       	call   80102039 <kfree>
        queue_count[level]--; // Decrement the count for the corresponding queue
801033f4:	83 2c 9d b8 a5 10 80 	subl   $0x1,-0x7fef5a48(,%ebx,4)
801033fb:	01 
        return 1; // Successfully removed
801033fc:	83 c4 10             	add    $0x10,%esp
801033ff:	b8 01 00 00 00       	mov    $0x1,%eax
}
80103404:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103407:	5b                   	pop    %ebx
80103408:	5e                   	pop    %esi
80103409:	5f                   	pop    %edi
8010340a:	5d                   	pop    %ebp
8010340b:	c3                   	ret    
    struct queue_node *cur = q->head;
8010340c:	89 d0                	mov    %edx,%eax
    struct queue_node *prev = 0;
8010340e:	ba 00 00 00 00       	mov    $0x0,%edx
          q->head = cur->next;
80103413:	8b 48 04             	mov    0x4(%eax),%ecx
80103416:	89 0c de             	mov    %ecx,(%esi,%ebx,8)
80103419:	eb c8                	jmp    801033e3 <remove_from_mlfq+0x3a>
          q->tail = prev;
8010341b:	89 51 04             	mov    %edx,0x4(%ecx)
8010341e:	eb cb                	jmp    801033eb <remove_from_mlfq+0x42>
  for (int level = HIGH; level <= LOW; level++) {
80103420:	83 c3 01             	add    $0x1,%ebx
80103423:	83 fb 03             	cmp    $0x3,%ebx
80103426:	75 95                	jne    801033bd <remove_from_mlfq+0x14>
  return 0; // Not found
80103428:	b8 00 00 00 00       	mov    $0x0,%eax
8010342d:	eb d5                	jmp    80103404 <remove_from_mlfq+0x5b>

8010342f <print_mlfq_pids>:
void print_mlfq_pids(struct mlfq *mlfq) {
8010342f:	55                   	push   %ebp
80103430:	89 e5                	mov    %esp,%ebp
80103432:	57                   	push   %edi
80103433:	56                   	push   %esi
80103434:	53                   	push   %ebx
80103435:	83 ec 0c             	sub    $0xc,%esp
  for (int level = HIGH; level <= LOW; level++) {
80103438:	be 00 00 00 00       	mov    $0x0,%esi
        char *state = (node->p->state >= 0 && node->p->state < NELEM(states)) ? states[node->p->state] : "UNKNOWN";
8010343d:	bf ac 6e 10 80       	mov    $0x80106eac,%edi
80103442:	eb 5e                	jmp    801034a2 <print_mlfq_pids+0x73>
        cprintf("[pid: %d, state: %s] ", node->p->pid, state);
80103444:	83 ec 04             	sub    $0x4,%esp
80103447:	52                   	push   %edx
80103448:	ff 70 10             	pushl  0x10(%eax)
8010344b:	68 cc 6e 10 80       	push   $0x80106ecc
80103450:	e8 8c d1 ff ff       	call   801005e1 <cprintf>
80103455:	83 c4 10             	add    $0x10,%esp
      node = node->next;
80103458:	8b 5b 04             	mov    0x4(%ebx),%ebx
    while (node) {
8010345b:	85 db                	test   %ebx,%ebx
8010345d:	74 2b                	je     8010348a <print_mlfq_pids+0x5b>
      if (node->p) {
8010345f:	8b 03                	mov    (%ebx),%eax
80103461:	85 c0                	test   %eax,%eax
80103463:	74 13                	je     80103478 <print_mlfq_pids+0x49>
        char *state = (node->p->state >= 0 && node->p->state < NELEM(states)) ? states[node->p->state] : "UNKNOWN";
80103465:	8b 48 0c             	mov    0xc(%eax),%ecx
80103468:	89 fa                	mov    %edi,%edx
8010346a:	83 f9 05             	cmp    $0x5,%ecx
8010346d:	77 d5                	ja     80103444 <print_mlfq_pids+0x15>
8010346f:	8b 14 8d 90 70 10 80 	mov    -0x7fef8f70(,%ecx,4),%edx
80103476:	eb cc                	jmp    80103444 <print_mlfq_pids+0x15>
        cprintf("[NULL] ");
80103478:	83 ec 0c             	sub    $0xc,%esp
8010347b:	68 e2 6e 10 80       	push   $0x80106ee2
80103480:	e8 5c d1 ff ff       	call   801005e1 <cprintf>
80103485:	83 c4 10             	add    $0x10,%esp
80103488:	eb ce                	jmp    80103458 <print_mlfq_pids+0x29>
    cprintf("\n");
8010348a:	83 ec 0c             	sub    $0xc,%esp
8010348d:	68 9b 73 10 80       	push   $0x8010739b
80103492:	e8 4a d1 ff ff       	call   801005e1 <cprintf>
80103497:	83 c4 10             	add    $0x10,%esp
  for (int level = HIGH; level <= LOW; level++) {
8010349a:	83 c6 01             	add    $0x1,%esi
8010349d:	83 fe 03             	cmp    $0x3,%esi
801034a0:	74 2d                	je     801034cf <print_mlfq_pids+0xa0>
    struct queue_node *node = q->head;
801034a2:	8b 45 08             	mov    0x8(%ebp),%eax
801034a5:	8b 1c f0             	mov    (%eax,%esi,8),%ebx
    cprintf("Queue Level %d: ", level);
801034a8:	83 ec 08             	sub    $0x8,%esp
801034ab:	56                   	push   %esi
801034ac:	68 b4 6e 10 80       	push   $0x80106eb4
801034b1:	e8 2b d1 ff ff       	call   801005e1 <cprintf>
    if (!node) {
801034b6:	83 c4 10             	add    $0x10,%esp
801034b9:	85 db                	test   %ebx,%ebx
801034bb:	75 a2                	jne    8010345f <print_mlfq_pids+0x30>
      cprintf("Empty\n");
801034bd:	83 ec 0c             	sub    $0xc,%esp
801034c0:	68 c5 6e 10 80       	push   $0x80106ec5
801034c5:	e8 17 d1 ff ff       	call   801005e1 <cprintf>
      continue;
801034ca:	83 c4 10             	add    $0x10,%esp
801034cd:	eb cb                	jmp    8010349a <print_mlfq_pids+0x6b>
}
801034cf:	8d 65 f4             	lea    -0xc(%ebp),%esp
801034d2:	5b                   	pop    %ebx
801034d3:	5e                   	pop    %esi
801034d4:	5f                   	pop    %edi
801034d5:	5d                   	pop    %ebp
801034d6:	c3                   	ret    

801034d7 <print_ptable_states>:
void print_ptable_states(void) {
801034d7:	55                   	push   %ebp
801034d8:	89 e5                	mov    %esp,%ebp
801034da:	56                   	push   %esi
801034db:	53                   	push   %ebx
  cprintf("PTable States:\n");
801034dc:	83 ec 0c             	sub    $0xc,%esp
801034df:	68 ea 6e 10 80       	push   $0x80106eea
801034e4:	e8 f8 d0 ff ff       	call   801005e1 <cprintf>
801034e9:	83 c4 10             	add    $0x10,%esp
  for (struct proc *p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
801034ec:	bb 94 2d 11 80       	mov    $0x80112d94,%ebx
      char *state = (p->state >= 0 && p->state < NELEM(states)) ? states[p->state] : "UNKNOWN";
801034f1:	be ac 6e 10 80       	mov    $0x80106eac,%esi
801034f6:	eb 2b                	jmp    80103523 <print_ptable_states+0x4c>
      cprintf("[pid: %d, state: %s, level: %d, chan: %p]\n", p->pid, state, p->level, p->chan);
801034f8:	83 ec 0c             	sub    $0xc,%esp
801034fb:	ff 73 20             	pushl  0x20(%ebx)
801034fe:	ff b3 80 00 00 00    	pushl  0x80(%ebx)
80103504:	52                   	push   %edx
80103505:	ff 73 10             	pushl  0x10(%ebx)
80103508:	68 0c 70 10 80       	push   $0x8010700c
8010350d:	e8 cf d0 ff ff       	call   801005e1 <cprintf>
80103512:	83 c4 20             	add    $0x20,%esp
  for (struct proc *p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
80103515:	81 c3 88 00 00 00    	add    $0x88,%ebx
8010351b:	81 fb 94 4f 11 80    	cmp    $0x80114f94,%ebx
80103521:	73 1b                	jae    8010353e <print_ptable_states+0x67>
    if (p->state == RUNNABLE || p->state == RUNNING || 
80103523:	8b 43 0c             	mov    0xc(%ebx),%eax
        p->state == ZOMBIE || p->state == SLEEPING) {
80103526:	8d 50 fe             	lea    -0x2(%eax),%edx
    if (p->state == RUNNABLE || p->state == RUNNING || 
80103529:	83 fa 03             	cmp    $0x3,%edx
8010352c:	77 e7                	ja     80103515 <print_ptable_states+0x3e>
      char *state = (p->state >= 0 && p->state < NELEM(states)) ? states[p->state] : "UNKNOWN";
8010352e:	89 f2                	mov    %esi,%edx
80103530:	83 f8 05             	cmp    $0x5,%eax
80103533:	77 c3                	ja     801034f8 <print_ptable_states+0x21>
80103535:	8b 14 85 78 70 10 80 	mov    -0x7fef8f88(,%eax,4),%edx
8010353c:	eb ba                	jmp    801034f8 <print_ptable_states+0x21>
}
8010353e:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103541:	5b                   	pop    %ebx
80103542:	5e                   	pop    %esi
80103543:	5d                   	pop    %ebp
80103544:	c3                   	ret    

80103545 <pinit>:
{
80103545:	55                   	push   %ebp
80103546:	89 e5                	mov    %esp,%ebp
80103548:	83 ec 10             	sub    $0x10,%esp
  initlock(&ptable.lock, "ptable");
8010354b:	68 fa 6e 10 80       	push   $0x80106efa
80103550:	68 60 2d 11 80       	push   $0x80112d60
80103555:	e8 7b 0a 00 00       	call   80103fd5 <initlock>
}
8010355a:	83 c4 10             	add    $0x10,%esp
8010355d:	c9                   	leave  
8010355e:	c3                   	ret    

8010355f <mycpu>:
{
8010355f:	55                   	push   %ebp
80103560:	89 e5                	mov    %esp,%ebp
80103562:	56                   	push   %esi
80103563:	53                   	push   %ebx
  asm volatile("pushfl; popl %0" : "=r" (eflags));
80103564:	9c                   	pushf  
80103565:	58                   	pop    %eax
  if(readeflags()&FL_IF)
80103566:	f6 c4 02             	test   $0x2,%ah
80103569:	75 4a                	jne    801035b5 <mycpu+0x56>
  apicid = lapicid();
8010356b:	e8 d0 ee ff ff       	call   80102440 <lapicid>
  for (i = 0; i < ncpu; ++i) {
80103570:	8b 35 20 2d 11 80    	mov    0x80112d20,%esi
80103576:	85 f6                	test   %esi,%esi
80103578:	7e 4f                	jle    801035c9 <mycpu+0x6a>
    if (cpus[i].apicid == apicid)
8010357a:	0f b6 15 a0 27 11 80 	movzbl 0x801127a0,%edx
80103581:	39 d0                	cmp    %edx,%eax
80103583:	74 3d                	je     801035c2 <mycpu+0x63>
80103585:	b9 50 28 11 80       	mov    $0x80112850,%ecx
  for (i = 0; i < ncpu; ++i) {
8010358a:	ba 00 00 00 00       	mov    $0x0,%edx
8010358f:	83 c2 01             	add    $0x1,%edx
80103592:	39 f2                	cmp    %esi,%edx
80103594:	74 33                	je     801035c9 <mycpu+0x6a>
    if (cpus[i].apicid == apicid)
80103596:	0f b6 19             	movzbl (%ecx),%ebx
80103599:	81 c1 b0 00 00 00    	add    $0xb0,%ecx
8010359f:	39 c3                	cmp    %eax,%ebx
801035a1:	75 ec                	jne    8010358f <mycpu+0x30>
      return &cpus[i];
801035a3:	69 c2 b0 00 00 00    	imul   $0xb0,%edx,%eax
801035a9:	05 a0 27 11 80       	add    $0x801127a0,%eax
}
801035ae:	8d 65 f8             	lea    -0x8(%ebp),%esp
801035b1:	5b                   	pop    %ebx
801035b2:	5e                   	pop    %esi
801035b3:	5d                   	pop    %ebp
801035b4:	c3                   	ret    
    panic("mycpu called with interrupts enabled\n");
801035b5:	83 ec 0c             	sub    $0xc,%esp
801035b8:	68 38 70 10 80       	push   $0x80107038
801035bd:	e8 82 cd ff ff       	call   80100344 <panic>
  for (i = 0; i < ncpu; ++i) {
801035c2:	ba 00 00 00 00       	mov    $0x0,%edx
801035c7:	eb da                	jmp    801035a3 <mycpu+0x44>
  panic("unknown apicid\n");
801035c9:	83 ec 0c             	sub    $0xc,%esp
801035cc:	68 01 6f 10 80       	push   $0x80106f01
801035d1:	e8 6e cd ff ff       	call   80100344 <panic>

801035d6 <cpuid>:
cpuid() {
801035d6:	55                   	push   %ebp
801035d7:	89 e5                	mov    %esp,%ebp
801035d9:	83 ec 08             	sub    $0x8,%esp
  return mycpu()-cpus;
801035dc:	e8 7e ff ff ff       	call   8010355f <mycpu>
801035e1:	2d a0 27 11 80       	sub    $0x801127a0,%eax
801035e6:	c1 f8 04             	sar    $0x4,%eax
801035e9:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
}
801035ef:	c9                   	leave  
801035f0:	c3                   	ret    

801035f1 <myproc>:
myproc(void) {
801035f1:	55                   	push   %ebp
801035f2:	89 e5                	mov    %esp,%ebp
801035f4:	53                   	push   %ebx
801035f5:	83 ec 04             	sub    $0x4,%esp
  pushcli();
801035f8:	e8 4f 0a 00 00       	call   8010404c <pushcli>
  c = mycpu();
801035fd:	e8 5d ff ff ff       	call   8010355f <mycpu>
  p = c->proc;
80103602:	8b 98 ac 00 00 00    	mov    0xac(%eax),%ebx
  popcli();
80103608:	e8 7c 0a 00 00       	call   80104089 <popcli>
}
8010360d:	89 d8                	mov    %ebx,%eax
8010360f:	83 c4 04             	add    $0x4,%esp
80103612:	5b                   	pop    %ebx
80103613:	5d                   	pop    %ebp
80103614:	c3                   	ret    

80103615 <userinit>:
{
80103615:	55                   	push   %ebp
80103616:	89 e5                	mov    %esp,%ebp
80103618:	53                   	push   %ebx
80103619:	83 ec 04             	sub    $0x4,%esp
  p = allocproc();
8010361c:	e8 54 fb ff ff       	call   80103175 <allocproc>
80103621:	89 c3                	mov    %eax,%ebx
  initproc = p;
80103623:	a3 c4 a5 10 80       	mov    %eax,0x8010a5c4
  if((p->pgdir = setupkvm()) == 0)
80103628:	e8 ad 30 00 00       	call   801066da <setupkvm>
8010362d:	89 43 04             	mov    %eax,0x4(%ebx)
80103630:	85 c0                	test   %eax,%eax
80103632:	0f 84 cb 00 00 00    	je     80103703 <userinit+0xee>
  inituvm(p->pgdir, _binary_initcode_start, (int)_binary_initcode_size);
80103638:	83 ec 04             	sub    $0x4,%esp
8010363b:	68 2c 00 00 00       	push   $0x2c
80103640:	68 60 a4 10 80       	push   $0x8010a460
80103645:	50                   	push   %eax
80103646:	e8 88 2d 00 00       	call   801063d3 <inituvm>
  p->sz = PGSIZE;
8010364b:	c7 03 00 10 00 00    	movl   $0x1000,(%ebx)
  memset(p->tf, 0, sizeof(*p->tf));
80103651:	83 c4 0c             	add    $0xc,%esp
80103654:	6a 4c                	push   $0x4c
80103656:	6a 00                	push   $0x0
80103658:	ff 73 18             	pushl  0x18(%ebx)
8010365b:	e8 6b 0b 00 00       	call   801041cb <memset>
  p->tf->cs = (SEG_UCODE << 3) | DPL_USER;
80103660:	8b 43 18             	mov    0x18(%ebx),%eax
80103663:	66 c7 40 3c 1b 00    	movw   $0x1b,0x3c(%eax)
  p->tf->ds = (SEG_UDATA << 3) | DPL_USER;
80103669:	8b 43 18             	mov    0x18(%ebx),%eax
8010366c:	66 c7 40 2c 23 00    	movw   $0x23,0x2c(%eax)
  p->tf->es = p->tf->ds;
80103672:	8b 43 18             	mov    0x18(%ebx),%eax
80103675:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
80103679:	66 89 50 28          	mov    %dx,0x28(%eax)
  p->tf->ss = p->tf->ds;
8010367d:	8b 43 18             	mov    0x18(%ebx),%eax
80103680:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
80103684:	66 89 50 48          	mov    %dx,0x48(%eax)
  p->tf->eflags = FL_IF;
80103688:	8b 43 18             	mov    0x18(%ebx),%eax
8010368b:	c7 40 40 00 02 00 00 	movl   $0x200,0x40(%eax)
  p->tf->esp = PGSIZE;
80103692:	8b 43 18             	mov    0x18(%ebx),%eax
80103695:	c7 40 44 00 10 00 00 	movl   $0x1000,0x44(%eax)
  p->tf->eip = 0;  // beginning of initcode.S
8010369c:	8b 43 18             	mov    0x18(%ebx),%eax
8010369f:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)
  safestrcpy(p->name, "initcode", sizeof(p->name));
801036a6:	83 c4 0c             	add    $0xc,%esp
801036a9:	6a 10                	push   $0x10
801036ab:	68 2a 6f 10 80       	push   $0x80106f2a
801036b0:	8d 43 6c             	lea    0x6c(%ebx),%eax
801036b3:	50                   	push   %eax
801036b4:	e8 a1 0c 00 00       	call   8010435a <safestrcpy>
  p->cwd = namei("/");
801036b9:	c7 04 24 33 6f 10 80 	movl   $0x80106f33,(%esp)
801036c0:	e8 be e5 ff ff       	call   80101c83 <namei>
801036c5:	89 43 68             	mov    %eax,0x68(%ebx)
  acquire(&ptable.lock);
801036c8:	c7 04 24 60 2d 11 80 	movl   $0x80112d60,(%esp)
801036cf:	e8 49 0a 00 00       	call   8010411d <acquire>
  p->state = RUNNABLE;
801036d4:	c7 43 0c 03 00 00 00 	movl   $0x3,0xc(%ebx)
  p->level = HIGH;
801036db:	c7 83 80 00 00 00 00 	movl   $0x0,0x80(%ebx)
801036e2:	00 00 00 
  p->leftTime = tHigh;
801036e5:	c7 83 84 00 00 00 c8 	movl   $0xc8,0x84(%ebx)
801036ec:	00 00 00 
  release(&ptable.lock);
801036ef:	c7 04 24 60 2d 11 80 	movl   $0x80112d60,(%esp)
801036f6:	e8 89 0a 00 00       	call   80104184 <release>
}
801036fb:	83 c4 10             	add    $0x10,%esp
801036fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103701:	c9                   	leave  
80103702:	c3                   	ret    
    panic("userinit: out of memory?");
80103703:	83 ec 0c             	sub    $0xc,%esp
80103706:	68 11 6f 10 80       	push   $0x80106f11
8010370b:	e8 34 cc ff ff       	call   80100344 <panic>

80103710 <growproc>:
{
80103710:	55                   	push   %ebp
80103711:	89 e5                	mov    %esp,%ebp
80103713:	56                   	push   %esi
80103714:	53                   	push   %ebx
80103715:	8b 75 08             	mov    0x8(%ebp),%esi
  struct proc *curproc = myproc();
80103718:	e8 d4 fe ff ff       	call   801035f1 <myproc>
8010371d:	89 c3                	mov    %eax,%ebx
  sz = curproc->sz;
8010371f:	8b 00                	mov    (%eax),%eax
  if(n > 0){
80103721:	85 f6                	test   %esi,%esi
80103723:	7f 21                	jg     80103746 <growproc+0x36>
  } else if(n < 0){
80103725:	85 f6                	test   %esi,%esi
80103727:	79 33                	jns    8010375c <growproc+0x4c>
    if((sz = deallocuvm(curproc->pgdir, sz, sz + n)) == 0)
80103729:	83 ec 04             	sub    $0x4,%esp
8010372c:	01 c6                	add    %eax,%esi
8010372e:	56                   	push   %esi
8010372f:	50                   	push   %eax
80103730:	ff 73 04             	pushl  0x4(%ebx)
80103733:	e8 b2 2d 00 00       	call   801064ea <deallocuvm>
80103738:	83 c4 10             	add    $0x10,%esp
8010373b:	85 c0                	test   %eax,%eax
8010373d:	75 1d                	jne    8010375c <growproc+0x4c>
      return -1;
8010373f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103744:	eb 29                	jmp    8010376f <growproc+0x5f>
    if((sz = allocuvm(curproc->pgdir, sz, sz + n)) == 0)
80103746:	83 ec 04             	sub    $0x4,%esp
80103749:	01 c6                	add    %eax,%esi
8010374b:	56                   	push   %esi
8010374c:	50                   	push   %eax
8010374d:	ff 73 04             	pushl  0x4(%ebx)
80103750:	e8 24 2e 00 00       	call   80106579 <allocuvm>
80103755:	83 c4 10             	add    $0x10,%esp
80103758:	85 c0                	test   %eax,%eax
8010375a:	74 1a                	je     80103776 <growproc+0x66>
  curproc->sz = sz;
8010375c:	89 03                	mov    %eax,(%ebx)
  switchuvm(curproc);
8010375e:	83 ec 0c             	sub    $0xc,%esp
80103761:	53                   	push   %ebx
80103762:	e8 6e 2b 00 00       	call   801062d5 <switchuvm>
  return 0;
80103767:	83 c4 10             	add    $0x10,%esp
8010376a:	b8 00 00 00 00       	mov    $0x0,%eax
}
8010376f:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103772:	5b                   	pop    %ebx
80103773:	5e                   	pop    %esi
80103774:	5d                   	pop    %ebp
80103775:	c3                   	ret    
      return -1;
80103776:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010377b:	eb f2                	jmp    8010376f <growproc+0x5f>

8010377d <fork>:
{
8010377d:	55                   	push   %ebp
8010377e:	89 e5                	mov    %esp,%ebp
80103780:	57                   	push   %edi
80103781:	56                   	push   %esi
80103782:	53                   	push   %ebx
80103783:	83 ec 1c             	sub    $0x1c,%esp
  struct proc *curproc = myproc();
80103786:	e8 66 fe ff ff       	call   801035f1 <myproc>
8010378b:	89 c3                	mov    %eax,%ebx
  if((np = allocproc()) == 0){
8010378d:	e8 e3 f9 ff ff       	call   80103175 <allocproc>
80103792:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80103795:	85 c0                	test   %eax,%eax
80103797:	0f 84 f4 00 00 00    	je     80103891 <fork+0x114>
8010379d:	89 c7                	mov    %eax,%edi
  if((np->pgdir = copyuvm(curproc->pgdir, curproc->sz)) == 0){
8010379f:	83 ec 08             	sub    $0x8,%esp
801037a2:	ff 33                	pushl  (%ebx)
801037a4:	ff 73 04             	pushl  0x4(%ebx)
801037a7:	e8 df 2f 00 00       	call   8010678b <copyuvm>
801037ac:	89 47 04             	mov    %eax,0x4(%edi)
801037af:	83 c4 10             	add    $0x10,%esp
801037b2:	85 c0                	test   %eax,%eax
801037b4:	74 3e                	je     801037f4 <fork+0x77>
  np->sz = curproc->sz;
801037b6:	8b 03                	mov    (%ebx),%eax
801037b8:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
801037bb:	89 01                	mov    %eax,(%ecx)
  np->parent = curproc;
801037bd:	89 c8                	mov    %ecx,%eax
801037bf:	89 59 14             	mov    %ebx,0x14(%ecx)
  *np->tf = *curproc->tf;
801037c2:	8b 73 18             	mov    0x18(%ebx),%esi
801037c5:	8b 79 18             	mov    0x18(%ecx),%edi
801037c8:	b9 13 00 00 00       	mov    $0x13,%ecx
801037cd:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  np->level = HIGH;
801037cf:	c7 80 80 00 00 00 00 	movl   $0x0,0x80(%eax)
801037d6:	00 00 00 
  np->leftTime = tHigh;
801037d9:	c7 80 84 00 00 00 c8 	movl   $0xc8,0x84(%eax)
801037e0:	00 00 00 
  np->tf->eax = 0;
801037e3:	8b 40 18             	mov    0x18(%eax),%eax
801037e6:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
  for(i = 0; i < NOFILE; i++)
801037ed:	be 00 00 00 00       	mov    $0x0,%esi
801037f2:	eb 2e                	jmp    80103822 <fork+0xa5>
    kfree(np->kstack);
801037f4:	83 ec 0c             	sub    $0xc,%esp
801037f7:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
801037fa:	ff 73 08             	pushl  0x8(%ebx)
801037fd:	e8 37 e8 ff ff       	call   80102039 <kfree>
    np->kstack = 0;
80103802:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
    np->state = UNUSED;
80103809:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
    return -1;
80103810:	83 c4 10             	add    $0x10,%esp
80103813:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80103818:	eb 6d                	jmp    80103887 <fork+0x10a>
  for(i = 0; i < NOFILE; i++)
8010381a:	83 c6 01             	add    $0x1,%esi
8010381d:	83 fe 10             	cmp    $0x10,%esi
80103820:	74 1d                	je     8010383f <fork+0xc2>
    if(curproc->ofile[i])
80103822:	8b 44 b3 28          	mov    0x28(%ebx,%esi,4),%eax
80103826:	85 c0                	test   %eax,%eax
80103828:	74 f0                	je     8010381a <fork+0x9d>
      np->ofile[i] = filedup(curproc->ofile[i]);
8010382a:	83 ec 0c             	sub    $0xc,%esp
8010382d:	50                   	push   %eax
8010382e:	e8 b4 d4 ff ff       	call   80100ce7 <filedup>
80103833:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80103836:	89 44 b2 28          	mov    %eax,0x28(%edx,%esi,4)
8010383a:	83 c4 10             	add    $0x10,%esp
8010383d:	eb db                	jmp    8010381a <fork+0x9d>
  np->cwd = idup(curproc->cwd);
8010383f:	83 ec 0c             	sub    $0xc,%esp
80103842:	ff 73 68             	pushl  0x68(%ebx)
80103845:	e8 71 dc ff ff       	call   801014bb <idup>
8010384a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
8010384d:	89 47 68             	mov    %eax,0x68(%edi)
  safestrcpy(np->name, curproc->name, sizeof(curproc->name));
80103850:	83 c4 0c             	add    $0xc,%esp
80103853:	6a 10                	push   $0x10
80103855:	83 c3 6c             	add    $0x6c,%ebx
80103858:	53                   	push   %ebx
80103859:	8d 47 6c             	lea    0x6c(%edi),%eax
8010385c:	50                   	push   %eax
8010385d:	e8 f8 0a 00 00       	call   8010435a <safestrcpy>
  pid = np->pid;
80103862:	8b 5f 10             	mov    0x10(%edi),%ebx
  acquire(&ptable.lock);
80103865:	c7 04 24 60 2d 11 80 	movl   $0x80112d60,(%esp)
8010386c:	e8 ac 08 00 00       	call   8010411d <acquire>
  np->state = RUNNABLE;
80103871:	c7 47 0c 03 00 00 00 	movl   $0x3,0xc(%edi)
  release(&ptable.lock);
80103878:	c7 04 24 60 2d 11 80 	movl   $0x80112d60,(%esp)
8010387f:	e8 00 09 00 00       	call   80104184 <release>
  return pid;
80103884:	83 c4 10             	add    $0x10,%esp
}
80103887:	89 d8                	mov    %ebx,%eax
80103889:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010388c:	5b                   	pop    %ebx
8010388d:	5e                   	pop    %esi
8010388e:	5f                   	pop    %edi
8010388f:	5d                   	pop    %ebp
80103890:	c3                   	ret    
    return -1;
80103891:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80103896:	eb ef                	jmp    80103887 <fork+0x10a>

80103898 <recover_time>:
void recover_time(struct proc* p){
80103898:	55                   	push   %ebp
80103899:	89 e5                	mov    %esp,%ebp
8010389b:	8b 55 08             	mov    0x8(%ebp),%edx
  switch (p->level)
8010389e:	8b 82 80 00 00 00    	mov    0x80(%edx),%eax
801038a4:	83 f8 01             	cmp    $0x1,%eax
801038a7:	74 17                	je     801038c0 <recover_time+0x28>
801038a9:	83 f8 02             	cmp    $0x2,%eax
801038ac:	74 1e                	je     801038cc <recover_time+0x34>
801038ae:	85 c0                	test   %eax,%eax
801038b0:	74 02                	je     801038b4 <recover_time+0x1c>
}
801038b2:	5d                   	pop    %ebp
801038b3:	c3                   	ret    
    p->leftTime = tHigh;
801038b4:	c7 82 84 00 00 00 c8 	movl   $0xc8,0x84(%edx)
801038bb:	00 00 00 
    break;
801038be:	eb f2                	jmp    801038b2 <recover_time+0x1a>
    p->leftTime = tMid;
801038c0:	c7 82 84 00 00 00 2c 	movl   $0x12c,0x84(%edx)
801038c7:	01 00 00 
    break;
801038ca:	eb e6                	jmp    801038b2 <recover_time+0x1a>
    p->leftTime = tLow;
801038cc:	c7 82 84 00 00 00 5e 	movl   $0x15e,0x84(%edx)
801038d3:	01 00 00 
}
801038d6:	eb da                	jmp    801038b2 <recover_time+0x1a>

801038d8 <down_level>:
void down_level(struct proc* p){
801038d8:	55                   	push   %ebp
801038d9:	89 e5                	mov    %esp,%ebp
801038db:	8b 45 08             	mov    0x8(%ebp),%eax
  if(p->level < LOW){
801038de:	8b 90 80 00 00 00    	mov    0x80(%eax),%edx
801038e4:	83 fa 01             	cmp    $0x1,%edx
801038e7:	7e 0b                	jle    801038f4 <down_level+0x1c>
  recover_time(p);
801038e9:	50                   	push   %eax
801038ea:	e8 a9 ff ff ff       	call   80103898 <recover_time>
}
801038ef:	83 c4 04             	add    $0x4,%esp
801038f2:	c9                   	leave  
801038f3:	c3                   	ret    
    p->level++;
801038f4:	83 c2 01             	add    $0x1,%edx
801038f7:	89 90 80 00 00 00    	mov    %edx,0x80(%eax)
801038fd:	eb ea                	jmp    801038e9 <down_level+0x11>

801038ff <get_top>:
int get_top(){
801038ff:	55                   	push   %ebp
80103900:	89 e5                	mov    %esp,%ebp
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103902:	ba 94 2d 11 80       	mov    $0x80112d94,%edx
  int height = LOW;
80103907:	b8 02 00 00 00       	mov    $0x2,%eax
8010390c:	eb 0e                	jmp    8010391c <get_top+0x1d>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
8010390e:	81 c2 88 00 00 00    	add    $0x88,%edx
80103914:	81 fa 94 4f 11 80    	cmp    $0x80114f94,%edx
8010391a:	73 13                	jae    8010392f <get_top+0x30>
    if(p->state == RUNNABLE && p->level <= height)
8010391c:	83 7a 0c 03          	cmpl   $0x3,0xc(%edx)
80103920:	75 ec                	jne    8010390e <get_top+0xf>
80103922:	8b 8a 80 00 00 00    	mov    0x80(%edx),%ecx
80103928:	39 c8                	cmp    %ecx,%eax
8010392a:	0f 4f c1             	cmovg  %ecx,%eax
8010392d:	eb df                	jmp    8010390e <get_top+0xf>
}
8010392f:	5d                   	pop    %ebp
80103930:	c3                   	ret    

80103931 <scheduler>:
{
80103931:	55                   	push   %ebp
80103932:	89 e5                	mov    %esp,%ebp
80103934:	57                   	push   %edi
80103935:	56                   	push   %esi
80103936:	53                   	push   %ebx
80103937:	83 ec 1c             	sub    $0x1c,%esp
  struct cpu *c = mycpu();
8010393a:	e8 20 fc ff ff       	call   8010355f <mycpu>
8010393f:	89 c7                	mov    %eax,%edi
  c->proc = 0;
80103941:	c7 80 ac 00 00 00 00 	movl   $0x0,0xac(%eax)
80103948:	00 00 00 
      swtch(&(c->scheduler), p->context);
8010394b:	8d 40 04             	lea    0x4(%eax),%eax
8010394e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80103951:	e9 87 00 00 00       	jmp    801039dd <scheduler+0xac>
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103956:	81 c3 88 00 00 00    	add    $0x88,%ebx
8010395c:	81 fb 94 4f 11 80    	cmp    $0x80114f94,%ebx
80103962:	73 69                	jae    801039cd <scheduler+0x9c>
      if(p->level != height)
80103964:	39 b3 80 00 00 00    	cmp    %esi,0x80(%ebx)
8010396a:	75 ea                	jne    80103956 <scheduler+0x25>
      if(p->state != RUNNABLE)
8010396c:	83 7b 0c 03          	cmpl   $0x3,0xc(%ebx)
80103970:	75 e4                	jne    80103956 <scheduler+0x25>
      recover_time(p);
80103972:	83 ec 0c             	sub    $0xc,%esp
80103975:	53                   	push   %ebx
80103976:	e8 1d ff ff ff       	call   80103898 <recover_time>
      c->proc = p;
8010397b:	89 9f ac 00 00 00    	mov    %ebx,0xac(%edi)
      switchuvm(p);
80103981:	89 1c 24             	mov    %ebx,(%esp)
80103984:	e8 4c 29 00 00       	call   801062d5 <switchuvm>
      p->state = RUNNING;
80103989:	c7 43 0c 04 00 00 00 	movl   $0x4,0xc(%ebx)
      swtch(&(c->scheduler), p->context);
80103990:	83 c4 08             	add    $0x8,%esp
80103993:	ff 73 1c             	pushl  0x1c(%ebx)
80103996:	ff 75 e4             	pushl  -0x1c(%ebp)
80103999:	e8 12 0a 00 00       	call   801043b0 <swtch>
      switchkvm();
8010399e:	e8 20 29 00 00       	call   801062c3 <switchkvm>
      c->proc = 0;
801039a3:	c7 87 ac 00 00 00 00 	movl   $0x0,0xac(%edi)
801039aa:	00 00 00 
      if(p->state == RUNNABLE){
801039ad:	83 c4 10             	add    $0x10,%esp
801039b0:	83 7b 0c 03          	cmpl   $0x3,0xc(%ebx)
801039b4:	75 a0                	jne    80103956 <scheduler+0x25>
        if(p->leftTime == 0){
801039b6:	83 bb 84 00 00 00 00 	cmpl   $0x0,0x84(%ebx)
801039bd:	75 97                	jne    80103956 <scheduler+0x25>
          down_level(p);
801039bf:	83 ec 0c             	sub    $0xc,%esp
801039c2:	53                   	push   %ebx
801039c3:	e8 10 ff ff ff       	call   801038d8 <down_level>
801039c8:	83 c4 10             	add    $0x10,%esp
801039cb:	eb 89                	jmp    80103956 <scheduler+0x25>
    release(&ptable.lock);
801039cd:	83 ec 0c             	sub    $0xc,%esp
801039d0:	68 60 2d 11 80       	push   $0x80112d60
801039d5:	e8 aa 07 00 00       	call   80104184 <release>
  for(;;){
801039da:	83 c4 10             	add    $0x10,%esp
}

static inline void
sti(void)
{
  asm volatile("sti");
801039dd:	fb                   	sti    
    acquire(&ptable.lock);
801039de:	83 ec 0c             	sub    $0xc,%esp
801039e1:	68 60 2d 11 80       	push   $0x80112d60
801039e6:	e8 32 07 00 00       	call   8010411d <acquire>
    int height = get_top();
801039eb:	e8 0f ff ff ff       	call   801038ff <get_top>
801039f0:	89 c6                	mov    %eax,%esi
801039f2:	83 c4 10             	add    $0x10,%esp
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801039f5:	bb 94 2d 11 80       	mov    $0x80112d94,%ebx
801039fa:	e9 65 ff ff ff       	jmp    80103964 <scheduler+0x33>

801039ff <sched>:
{
801039ff:	55                   	push   %ebp
80103a00:	89 e5                	mov    %esp,%ebp
80103a02:	56                   	push   %esi
80103a03:	53                   	push   %ebx
  struct proc *p = myproc();
80103a04:	e8 e8 fb ff ff       	call   801035f1 <myproc>
80103a09:	89 c3                	mov    %eax,%ebx
  if(!holding(&ptable.lock))
80103a0b:	83 ec 0c             	sub    $0xc,%esp
80103a0e:	68 60 2d 11 80       	push   $0x80112d60
80103a13:	e8 d1 06 00 00       	call   801040e9 <holding>
80103a18:	83 c4 10             	add    $0x10,%esp
80103a1b:	85 c0                	test   %eax,%eax
80103a1d:	74 4f                	je     80103a6e <sched+0x6f>
  if(mycpu()->ncli != 1)
80103a1f:	e8 3b fb ff ff       	call   8010355f <mycpu>
80103a24:	83 b8 a4 00 00 00 01 	cmpl   $0x1,0xa4(%eax)
80103a2b:	75 4e                	jne    80103a7b <sched+0x7c>
  if(p->state == RUNNING)
80103a2d:	83 7b 0c 04          	cmpl   $0x4,0xc(%ebx)
80103a31:	74 55                	je     80103a88 <sched+0x89>
  asm volatile("pushfl; popl %0" : "=r" (eflags));
80103a33:	9c                   	pushf  
80103a34:	58                   	pop    %eax
  if(readeflags()&FL_IF)
80103a35:	f6 c4 02             	test   $0x2,%ah
80103a38:	75 5b                	jne    80103a95 <sched+0x96>
  intena = mycpu()->intena;
80103a3a:	e8 20 fb ff ff       	call   8010355f <mycpu>
80103a3f:	8b b0 a8 00 00 00    	mov    0xa8(%eax),%esi
  swtch(&p->context, mycpu()->scheduler);
80103a45:	e8 15 fb ff ff       	call   8010355f <mycpu>
80103a4a:	83 ec 08             	sub    $0x8,%esp
80103a4d:	ff 70 04             	pushl  0x4(%eax)
80103a50:	83 c3 1c             	add    $0x1c,%ebx
80103a53:	53                   	push   %ebx
80103a54:	e8 57 09 00 00       	call   801043b0 <swtch>
  mycpu()->intena = intena;
80103a59:	e8 01 fb ff ff       	call   8010355f <mycpu>
80103a5e:	89 b0 a8 00 00 00    	mov    %esi,0xa8(%eax)
}
80103a64:	83 c4 10             	add    $0x10,%esp
80103a67:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103a6a:	5b                   	pop    %ebx
80103a6b:	5e                   	pop    %esi
80103a6c:	5d                   	pop    %ebp
80103a6d:	c3                   	ret    
    panic("sched ptable.lock");
80103a6e:	83 ec 0c             	sub    $0xc,%esp
80103a71:	68 35 6f 10 80       	push   $0x80106f35
80103a76:	e8 c9 c8 ff ff       	call   80100344 <panic>
    panic("sched locks");
80103a7b:	83 ec 0c             	sub    $0xc,%esp
80103a7e:	68 47 6f 10 80       	push   $0x80106f47
80103a83:	e8 bc c8 ff ff       	call   80100344 <panic>
    panic("sched running");
80103a88:	83 ec 0c             	sub    $0xc,%esp
80103a8b:	68 53 6f 10 80       	push   $0x80106f53
80103a90:	e8 af c8 ff ff       	call   80100344 <panic>
    panic("sched interruptible");
80103a95:	83 ec 0c             	sub    $0xc,%esp
80103a98:	68 61 6f 10 80       	push   $0x80106f61
80103a9d:	e8 a2 c8 ff ff       	call   80100344 <panic>

80103aa2 <exit>:
{
80103aa2:	55                   	push   %ebp
80103aa3:	89 e5                	mov    %esp,%ebp
80103aa5:	57                   	push   %edi
80103aa6:	56                   	push   %esi
80103aa7:	53                   	push   %ebx
80103aa8:	83 ec 0c             	sub    $0xc,%esp
  struct proc *curproc = myproc();
80103aab:	e8 41 fb ff ff       	call   801035f1 <myproc>
80103ab0:	89 c6                	mov    %eax,%esi
80103ab2:	8d 58 28             	lea    0x28(%eax),%ebx
80103ab5:	8d 78 68             	lea    0x68(%eax),%edi
  if(curproc == initproc)
80103ab8:	39 05 c4 a5 10 80    	cmp    %eax,0x8010a5c4
80103abe:	75 14                	jne    80103ad4 <exit+0x32>
    panic("init exiting");
80103ac0:	83 ec 0c             	sub    $0xc,%esp
80103ac3:	68 75 6f 10 80       	push   $0x80106f75
80103ac8:	e8 77 c8 ff ff       	call   80100344 <panic>
80103acd:	83 c3 04             	add    $0x4,%ebx
  for(fd = 0; fd < NOFILE; fd++){
80103ad0:	39 df                	cmp    %ebx,%edi
80103ad2:	74 1a                	je     80103aee <exit+0x4c>
    if(curproc->ofile[fd]){
80103ad4:	8b 03                	mov    (%ebx),%eax
80103ad6:	85 c0                	test   %eax,%eax
80103ad8:	74 f3                	je     80103acd <exit+0x2b>
      fileclose(curproc->ofile[fd]);
80103ada:	83 ec 0c             	sub    $0xc,%esp
80103add:	50                   	push   %eax
80103ade:	e8 49 d2 ff ff       	call   80100d2c <fileclose>
      curproc->ofile[fd] = 0;
80103ae3:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80103ae9:	83 c4 10             	add    $0x10,%esp
80103aec:	eb df                	jmp    80103acd <exit+0x2b>
  begin_op();
80103aee:	e8 ba ec ff ff       	call   801027ad <begin_op>
  iput(curproc->cwd);
80103af3:	83 ec 0c             	sub    $0xc,%esp
80103af6:	ff 76 68             	pushl  0x68(%esi)
80103af9:	e8 ef da ff ff       	call   801015ed <iput>
  end_op();
80103afe:	e8 25 ed ff ff       	call   80102828 <end_op>
  curproc->cwd = 0;
80103b03:	c7 46 68 00 00 00 00 	movl   $0x0,0x68(%esi)
  acquire(&ptable.lock);
80103b0a:	c7 04 24 60 2d 11 80 	movl   $0x80112d60,(%esp)
80103b11:	e8 07 06 00 00       	call   8010411d <acquire>
  wakeup1(curproc->parent);
80103b16:	8b 46 14             	mov    0x14(%esi),%eax
80103b19:	e8 29 f6 ff ff       	call   80103147 <wakeup1>
80103b1e:	83 c4 10             	add    $0x10,%esp
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103b21:	bb 94 2d 11 80       	mov    $0x80112d94,%ebx
80103b26:	eb 0e                	jmp    80103b36 <exit+0x94>
80103b28:	81 c3 88 00 00 00    	add    $0x88,%ebx
80103b2e:	81 fb 94 4f 11 80    	cmp    $0x80114f94,%ebx
80103b34:	73 1a                	jae    80103b50 <exit+0xae>
    if(p->parent == curproc){
80103b36:	39 73 14             	cmp    %esi,0x14(%ebx)
80103b39:	75 ed                	jne    80103b28 <exit+0x86>
      p->parent = initproc;
80103b3b:	a1 c4 a5 10 80       	mov    0x8010a5c4,%eax
80103b40:	89 43 14             	mov    %eax,0x14(%ebx)
      if(p->state == ZOMBIE)
80103b43:	83 7b 0c 05          	cmpl   $0x5,0xc(%ebx)
80103b47:	75 df                	jne    80103b28 <exit+0x86>
        wakeup1(initproc);
80103b49:	e8 f9 f5 ff ff       	call   80103147 <wakeup1>
80103b4e:	eb d8                	jmp    80103b28 <exit+0x86>
  curproc->state = ZOMBIE;
80103b50:	c7 46 0c 05 00 00 00 	movl   $0x5,0xc(%esi)
  sched();
80103b57:	e8 a3 fe ff ff       	call   801039ff <sched>
  panic("zombie exit");
80103b5c:	83 ec 0c             	sub    $0xc,%esp
80103b5f:	68 82 6f 10 80       	push   $0x80106f82
80103b64:	e8 db c7 ff ff       	call   80100344 <panic>

80103b69 <yield>:
{
80103b69:	55                   	push   %ebp
80103b6a:	89 e5                	mov    %esp,%ebp
80103b6c:	83 ec 14             	sub    $0x14,%esp
  acquire(&ptable.lock);  //DOC: yieldlock
80103b6f:	68 60 2d 11 80       	push   $0x80112d60
80103b74:	e8 a4 05 00 00       	call   8010411d <acquire>
  myproc()->state = RUNNABLE;
80103b79:	e8 73 fa ff ff       	call   801035f1 <myproc>
80103b7e:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
  sched();
80103b85:	e8 75 fe ff ff       	call   801039ff <sched>
  release(&ptable.lock);
80103b8a:	c7 04 24 60 2d 11 80 	movl   $0x80112d60,(%esp)
80103b91:	e8 ee 05 00 00       	call   80104184 <release>
}
80103b96:	83 c4 10             	add    $0x10,%esp
80103b99:	c9                   	leave  
80103b9a:	c3                   	ret    

80103b9b <sleep>:
{
80103b9b:	55                   	push   %ebp
80103b9c:	89 e5                	mov    %esp,%ebp
80103b9e:	57                   	push   %edi
80103b9f:	56                   	push   %esi
80103ba0:	53                   	push   %ebx
80103ba1:	83 ec 0c             	sub    $0xc,%esp
80103ba4:	8b 7d 08             	mov    0x8(%ebp),%edi
80103ba7:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct proc *p = myproc();
80103baa:	e8 42 fa ff ff       	call   801035f1 <myproc>
  if(p == 0)
80103baf:	85 c0                	test   %eax,%eax
80103bb1:	74 58                	je     80103c0b <sleep+0x70>
80103bb3:	89 c3                	mov    %eax,%ebx
  if(lk == 0)
80103bb5:	85 f6                	test   %esi,%esi
80103bb7:	74 5f                	je     80103c18 <sleep+0x7d>
  if(lk != &ptable.lock){  //DOC: sleeplock0
80103bb9:	81 fe 60 2d 11 80    	cmp    $0x80112d60,%esi
80103bbf:	74 64                	je     80103c25 <sleep+0x8a>
    acquire(&ptable.lock);  //DOC: sleeplock1
80103bc1:	83 ec 0c             	sub    $0xc,%esp
80103bc4:	68 60 2d 11 80       	push   $0x80112d60
80103bc9:	e8 4f 05 00 00       	call   8010411d <acquire>
    release(lk);
80103bce:	89 34 24             	mov    %esi,(%esp)
80103bd1:	e8 ae 05 00 00       	call   80104184 <release>
  p->chan = chan;
80103bd6:	89 7b 20             	mov    %edi,0x20(%ebx)
  p->state = SLEEPING;
80103bd9:	c7 43 0c 02 00 00 00 	movl   $0x2,0xc(%ebx)
  sched();
80103be0:	e8 1a fe ff ff       	call   801039ff <sched>
  p->chan = 0;
80103be5:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
    release(&ptable.lock);
80103bec:	c7 04 24 60 2d 11 80 	movl   $0x80112d60,(%esp)
80103bf3:	e8 8c 05 00 00       	call   80104184 <release>
    acquire(lk);
80103bf8:	89 34 24             	mov    %esi,(%esp)
80103bfb:	e8 1d 05 00 00       	call   8010411d <acquire>
80103c00:	83 c4 10             	add    $0x10,%esp
}
80103c03:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103c06:	5b                   	pop    %ebx
80103c07:	5e                   	pop    %esi
80103c08:	5f                   	pop    %edi
80103c09:	5d                   	pop    %ebp
80103c0a:	c3                   	ret    
    panic("sleep");
80103c0b:	83 ec 0c             	sub    $0xc,%esp
80103c0e:	68 8e 6f 10 80       	push   $0x80106f8e
80103c13:	e8 2c c7 ff ff       	call   80100344 <panic>
    panic("sleep without lk");
80103c18:	83 ec 0c             	sub    $0xc,%esp
80103c1b:	68 94 6f 10 80       	push   $0x80106f94
80103c20:	e8 1f c7 ff ff       	call   80100344 <panic>
  p->chan = chan;
80103c25:	89 78 20             	mov    %edi,0x20(%eax)
  p->state = SLEEPING;
80103c28:	c7 40 0c 02 00 00 00 	movl   $0x2,0xc(%eax)
  sched();
80103c2f:	e8 cb fd ff ff       	call   801039ff <sched>
  p->chan = 0;
80103c34:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
80103c3b:	eb c6                	jmp    80103c03 <sleep+0x68>

80103c3d <wait>:
{
80103c3d:	55                   	push   %ebp
80103c3e:	89 e5                	mov    %esp,%ebp
80103c40:	57                   	push   %edi
80103c41:	56                   	push   %esi
80103c42:	53                   	push   %ebx
80103c43:	83 ec 0c             	sub    $0xc,%esp
  struct proc *curproc = myproc();
80103c46:	e8 a6 f9 ff ff       	call   801035f1 <myproc>
80103c4b:	89 c6                	mov    %eax,%esi
  acquire(&ptable.lock);
80103c4d:	83 ec 0c             	sub    $0xc,%esp
80103c50:	68 60 2d 11 80       	push   $0x80112d60
80103c55:	e8 c3 04 00 00       	call   8010411d <acquire>
80103c5a:	83 c4 10             	add    $0x10,%esp
      havekids = 1;
80103c5d:	bf 01 00 00 00       	mov    $0x1,%edi
    havekids = 0;
80103c62:	b8 00 00 00 00       	mov    $0x0,%eax
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103c67:	bb 94 2d 11 80       	mov    $0x80112d94,%ebx
80103c6c:	eb 67                	jmp    80103cd5 <wait+0x98>
        pid = p->pid;
80103c6e:	8b 73 10             	mov    0x10(%ebx),%esi
        kfree(p->kstack);
80103c71:	83 ec 0c             	sub    $0xc,%esp
80103c74:	ff 73 08             	pushl  0x8(%ebx)
80103c77:	e8 bd e3 ff ff       	call   80102039 <kfree>
        p->kstack = 0;
80103c7c:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
        freevm(p->pgdir);
80103c83:	83 c4 04             	add    $0x4,%esp
80103c86:	ff 73 04             	pushl  0x4(%ebx)
80103c89:	e8 d9 29 00 00       	call   80106667 <freevm>
        p->pid = 0;
80103c8e:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
        p->parent = 0;
80103c95:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
        p->name[0] = 0;
80103c9c:	c6 43 6c 00          	movb   $0x0,0x6c(%ebx)
        p->killed = 0;
80103ca0:	c7 43 24 00 00 00 00 	movl   $0x0,0x24(%ebx)
        p->state = UNUSED;
80103ca7:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
        release(&ptable.lock);
80103cae:	c7 04 24 60 2d 11 80 	movl   $0x80112d60,(%esp)
80103cb5:	e8 ca 04 00 00       	call   80104184 <release>
        return pid;
80103cba:	83 c4 10             	add    $0x10,%esp
}
80103cbd:	89 f0                	mov    %esi,%eax
80103cbf:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103cc2:	5b                   	pop    %ebx
80103cc3:	5e                   	pop    %esi
80103cc4:	5f                   	pop    %edi
80103cc5:	5d                   	pop    %ebp
80103cc6:	c3                   	ret    
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103cc7:	81 c3 88 00 00 00    	add    $0x88,%ebx
80103ccd:	81 fb 94 4f 11 80    	cmp    $0x80114f94,%ebx
80103cd3:	73 0f                	jae    80103ce4 <wait+0xa7>
      if(p->parent != curproc)
80103cd5:	39 73 14             	cmp    %esi,0x14(%ebx)
80103cd8:	75 ed                	jne    80103cc7 <wait+0x8a>
      if(p->state == ZOMBIE){
80103cda:	83 7b 0c 05          	cmpl   $0x5,0xc(%ebx)
80103cde:	74 8e                	je     80103c6e <wait+0x31>
      havekids = 1;
80103ce0:	89 f8                	mov    %edi,%eax
80103ce2:	eb e3                	jmp    80103cc7 <wait+0x8a>
    if(!havekids || curproc->killed){
80103ce4:	85 c0                	test   %eax,%eax
80103ce6:	74 06                	je     80103cee <wait+0xb1>
80103ce8:	83 7e 24 00          	cmpl   $0x0,0x24(%esi)
80103cec:	74 17                	je     80103d05 <wait+0xc8>
      release(&ptable.lock);
80103cee:	83 ec 0c             	sub    $0xc,%esp
80103cf1:	68 60 2d 11 80       	push   $0x80112d60
80103cf6:	e8 89 04 00 00       	call   80104184 <release>
      return -1;
80103cfb:	83 c4 10             	add    $0x10,%esp
80103cfe:	be ff ff ff ff       	mov    $0xffffffff,%esi
80103d03:	eb b8                	jmp    80103cbd <wait+0x80>
    sleep(curproc, &ptable.lock);  //DOC: wait-sleep
80103d05:	83 ec 08             	sub    $0x8,%esp
80103d08:	68 60 2d 11 80       	push   $0x80112d60
80103d0d:	56                   	push   %esi
80103d0e:	e8 88 fe ff ff       	call   80103b9b <sleep>
    havekids = 0;
80103d13:	83 c4 10             	add    $0x10,%esp
80103d16:	e9 47 ff ff ff       	jmp    80103c62 <wait+0x25>

80103d1b <wakeup>:

// Wake up all processes sleeping on chan.
void
wakeup(void *chan)
{
80103d1b:	55                   	push   %ebp
80103d1c:	89 e5                	mov    %esp,%ebp
80103d1e:	83 ec 14             	sub    $0x14,%esp
  acquire(&ptable.lock);
80103d21:	68 60 2d 11 80       	push   $0x80112d60
80103d26:	e8 f2 03 00 00       	call   8010411d <acquire>
  wakeup1(chan);
80103d2b:	8b 45 08             	mov    0x8(%ebp),%eax
80103d2e:	e8 14 f4 ff ff       	call   80103147 <wakeup1>
  release(&ptable.lock);
80103d33:	c7 04 24 60 2d 11 80 	movl   $0x80112d60,(%esp)
80103d3a:	e8 45 04 00 00       	call   80104184 <release>
}
80103d3f:	83 c4 10             	add    $0x10,%esp
80103d42:	c9                   	leave  
80103d43:	c3                   	ret    

80103d44 <kill>:
// Kill the process with the given pid.
// Process won't exit until it returns
// to user space (see trap in trap.c).
int
kill(int pid)
{
80103d44:	55                   	push   %ebp
80103d45:	89 e5                	mov    %esp,%ebp
80103d47:	53                   	push   %ebx
80103d48:	83 ec 10             	sub    $0x10,%esp
80103d4b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct proc *p;

  acquire(&ptable.lock);
80103d4e:	68 60 2d 11 80       	push   $0x80112d60
80103d53:	e8 c5 03 00 00       	call   8010411d <acquire>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
    if(p->pid == pid){
80103d58:	83 c4 10             	add    $0x10,%esp
80103d5b:	3b 1d a4 2d 11 80    	cmp    0x80112da4,%ebx
80103d61:	74 2d                	je     80103d90 <kill+0x4c>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103d63:	b8 1c 2e 11 80       	mov    $0x80112e1c,%eax
    if(p->pid == pid){
80103d68:	39 58 10             	cmp    %ebx,0x10(%eax)
80103d6b:	74 28                	je     80103d95 <kill+0x51>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103d6d:	05 88 00 00 00       	add    $0x88,%eax
80103d72:	3d 94 4f 11 80       	cmp    $0x80114f94,%eax
80103d77:	72 ef                	jb     80103d68 <kill+0x24>
        p->state = RUNNABLE;
      release(&ptable.lock);
      return 0;
    }
  }
  release(&ptable.lock);
80103d79:	83 ec 0c             	sub    $0xc,%esp
80103d7c:	68 60 2d 11 80       	push   $0x80112d60
80103d81:	e8 fe 03 00 00       	call   80104184 <release>
  return -1;
80103d86:	83 c4 10             	add    $0x10,%esp
80103d89:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103d8e:	eb 27                	jmp    80103db7 <kill+0x73>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103d90:	b8 94 2d 11 80       	mov    $0x80112d94,%eax
      p->killed = 1;
80103d95:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
      if(p->state == SLEEPING)
80103d9c:	83 78 0c 02          	cmpl   $0x2,0xc(%eax)
80103da0:	74 1a                	je     80103dbc <kill+0x78>
      release(&ptable.lock);
80103da2:	83 ec 0c             	sub    $0xc,%esp
80103da5:	68 60 2d 11 80       	push   $0x80112d60
80103daa:	e8 d5 03 00 00       	call   80104184 <release>
      return 0;
80103daf:	83 c4 10             	add    $0x10,%esp
80103db2:	b8 00 00 00 00       	mov    $0x0,%eax
}
80103db7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103dba:	c9                   	leave  
80103dbb:	c3                   	ret    
        p->state = RUNNABLE;
80103dbc:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
80103dc3:	eb dd                	jmp    80103da2 <kill+0x5e>

80103dc5 <procdump>:
// Print a process listing to console.  For debugging.
// Runs when user types ^P on console.
// No lock to avoid wedging a stuck machine further.
void
procdump(void)
{
80103dc5:	55                   	push   %ebp
80103dc6:	89 e5                	mov    %esp,%ebp
80103dc8:	57                   	push   %edi
80103dc9:	56                   	push   %esi
80103dca:	53                   	push   %ebx
80103dcb:	83 ec 3c             	sub    $0x3c,%esp
  int i;
  struct proc *p;
  char *state;
  uint pc[10];

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103dce:	bb 94 2d 11 80       	mov    $0x80112d94,%ebx
80103dd3:	8d 7d e8             	lea    -0x18(%ebp),%edi
80103dd6:	eb 39                	jmp    80103e11 <procdump+0x4c>
      continue;
    if(p->state >= 0 && p->state < NELEM(states) && states[p->state])
      state = states[p->state];
    else
      state = "???";
    cprintf("%d %s %s", p->pid, state, p->name);
80103dd8:	8d 53 6c             	lea    0x6c(%ebx),%edx
80103ddb:	52                   	push   %edx
80103ddc:	50                   	push   %eax
80103ddd:	ff 73 10             	pushl  0x10(%ebx)
80103de0:	68 a9 6f 10 80       	push   $0x80106fa9
80103de5:	e8 f7 c7 ff ff       	call   801005e1 <cprintf>
    if(p->state == SLEEPING){
80103dea:	83 c4 10             	add    $0x10,%esp
80103ded:	83 7b 0c 02          	cmpl   $0x2,0xc(%ebx)
80103df1:	74 42                	je     80103e35 <procdump+0x70>
      getcallerpcs((uint*)p->context->ebp+2, pc);
      for(i=0; i<10 && pc[i] != 0; i++)
        cprintf(" %p", pc[i]);
    }
    cprintf("\n");
80103df3:	83 ec 0c             	sub    $0xc,%esp
80103df6:	68 9b 73 10 80       	push   $0x8010739b
80103dfb:	e8 e1 c7 ff ff       	call   801005e1 <cprintf>
80103e00:	83 c4 10             	add    $0x10,%esp
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103e03:	81 c3 88 00 00 00    	add    $0x88,%ebx
80103e09:	81 fb 94 4f 11 80    	cmp    $0x80114f94,%ebx
80103e0f:	73 7b                	jae    80103e8c <procdump+0xc7>
    if(p->state == UNUSED)
80103e11:	8b 53 0c             	mov    0xc(%ebx),%edx
80103e14:	85 d2                	test   %edx,%edx
80103e16:	74 eb                	je     80103e03 <procdump+0x3e>
      state = "???";
80103e18:	b8 a5 6f 10 80       	mov    $0x80106fa5,%eax
    if(p->state >= 0 && p->state < NELEM(states) && states[p->state])
80103e1d:	83 fa 05             	cmp    $0x5,%edx
80103e20:	77 b6                	ja     80103dd8 <procdump+0x13>
80103e22:	8b 04 95 60 70 10 80 	mov    -0x7fef8fa0(,%edx,4),%eax
80103e29:	85 c0                	test   %eax,%eax
      state = "???";
80103e2b:	ba a5 6f 10 80       	mov    $0x80106fa5,%edx
80103e30:	0f 44 c2             	cmove  %edx,%eax
80103e33:	eb a3                	jmp    80103dd8 <procdump+0x13>
      getcallerpcs((uint*)p->context->ebp+2, pc);
80103e35:	83 ec 08             	sub    $0x8,%esp
80103e38:	8d 45 c0             	lea    -0x40(%ebp),%eax
80103e3b:	50                   	push   %eax
80103e3c:	8b 43 1c             	mov    0x1c(%ebx),%eax
80103e3f:	8b 40 0c             	mov    0xc(%eax),%eax
80103e42:	83 c0 08             	add    $0x8,%eax
80103e45:	50                   	push   %eax
80103e46:	e8 a5 01 00 00       	call   80103ff0 <getcallerpcs>
      for(i=0; i<10 && pc[i] != 0; i++)
80103e4b:	8b 45 c0             	mov    -0x40(%ebp),%eax
80103e4e:	83 c4 10             	add    $0x10,%esp
80103e51:	85 c0                	test   %eax,%eax
80103e53:	74 9e                	je     80103df3 <procdump+0x2e>
        cprintf(" %p", pc[i]);
80103e55:	83 ec 08             	sub    $0x8,%esp
80103e58:	50                   	push   %eax
80103e59:	68 81 69 10 80       	push   $0x80106981
80103e5e:	e8 7e c7 ff ff       	call   801005e1 <cprintf>
80103e63:	8d 75 c4             	lea    -0x3c(%ebp),%esi
80103e66:	83 c4 10             	add    $0x10,%esp
      for(i=0; i<10 && pc[i] != 0; i++)
80103e69:	8b 06                	mov    (%esi),%eax
80103e6b:	85 c0                	test   %eax,%eax
80103e6d:	74 84                	je     80103df3 <procdump+0x2e>
        cprintf(" %p", pc[i]);
80103e6f:	83 ec 08             	sub    $0x8,%esp
80103e72:	50                   	push   %eax
80103e73:	68 81 69 10 80       	push   $0x80106981
80103e78:	e8 64 c7 ff ff       	call   801005e1 <cprintf>
80103e7d:	83 c6 04             	add    $0x4,%esi
      for(i=0; i<10 && pc[i] != 0; i++)
80103e80:	83 c4 10             	add    $0x10,%esp
80103e83:	39 f7                	cmp    %esi,%edi
80103e85:	75 e2                	jne    80103e69 <procdump+0xa4>
80103e87:	e9 67 ff ff ff       	jmp    80103df3 <procdump+0x2e>
  }
}
80103e8c:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103e8f:	5b                   	pop    %ebx
80103e90:	5e                   	pop    %esi
80103e91:	5f                   	pop    %edi
80103e92:	5d                   	pop    %ebp
80103e93:	c3                   	ret    

80103e94 <getlevel>:

// MLFQ debugging function provided
// Just debugging for Process's level in MLFQ test case
int getlevel(void)
{
80103e94:	55                   	push   %ebp
80103e95:	89 e5                	mov    %esp,%ebp
  struct proc *p;
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
    if (p -> state == RUNNING)
80103e97:	83 3d a0 2d 11 80 04 	cmpl   $0x4,0x80112da0
80103e9e:	74 1e                	je     80103ebe <getlevel+0x2a>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103ea0:	b8 1c 2e 11 80       	mov    $0x80112e1c,%eax
    if (p -> state == RUNNING)
80103ea5:	83 78 0c 04          	cmpl   $0x4,0xc(%eax)
80103ea9:	74 18                	je     80103ec3 <getlevel+0x2f>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103eab:	05 88 00 00 00       	add    $0x88,%eax
80103eb0:	3d 94 4f 11 80       	cmp    $0x80114f94,%eax
80103eb5:	72 ee                	jb     80103ea5 <getlevel+0x11>
      return p->level;
  }

  return -1;
80103eb7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103ebc:	eb 0b                	jmp    80103ec9 <getlevel+0x35>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103ebe:	b8 94 2d 11 80       	mov    $0x80112d94,%eax
      return p->level;
80103ec3:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
}
80103ec9:	5d                   	pop    %ebp
80103eca:	c3                   	ret    

80103ecb <initsleeplock>:
80103ecb:	55                   	push   %ebp
80103ecc:	89 e5                	mov    %esp,%ebp
80103ece:	53                   	push   %ebx
80103ecf:	83 ec 0c             	sub    $0xc,%esp
80103ed2:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103ed5:	68 a8 70 10 80       	push   $0x801070a8
80103eda:	8d 43 04             	lea    0x4(%ebx),%eax
80103edd:	50                   	push   %eax
80103ede:	e8 f2 00 00 00       	call   80103fd5 <initlock>
80103ee3:	8b 45 0c             	mov    0xc(%ebp),%eax
80103ee6:	89 43 38             	mov    %eax,0x38(%ebx)
80103ee9:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80103eef:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
80103ef6:	83 c4 10             	add    $0x10,%esp
80103ef9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103efc:	c9                   	leave  
80103efd:	c3                   	ret    

80103efe <acquiresleep>:
80103efe:	55                   	push   %ebp
80103eff:	89 e5                	mov    %esp,%ebp
80103f01:	56                   	push   %esi
80103f02:	53                   	push   %ebx
80103f03:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103f06:	8d 73 04             	lea    0x4(%ebx),%esi
80103f09:	83 ec 0c             	sub    $0xc,%esp
80103f0c:	56                   	push   %esi
80103f0d:	e8 0b 02 00 00       	call   8010411d <acquire>
80103f12:	83 c4 10             	add    $0x10,%esp
80103f15:	83 3b 00             	cmpl   $0x0,(%ebx)
80103f18:	74 12                	je     80103f2c <acquiresleep+0x2e>
80103f1a:	83 ec 08             	sub    $0x8,%esp
80103f1d:	56                   	push   %esi
80103f1e:	53                   	push   %ebx
80103f1f:	e8 77 fc ff ff       	call   80103b9b <sleep>
80103f24:	83 c4 10             	add    $0x10,%esp
80103f27:	83 3b 00             	cmpl   $0x0,(%ebx)
80103f2a:	75 ee                	jne    80103f1a <acquiresleep+0x1c>
80103f2c:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
80103f32:	e8 ba f6 ff ff       	call   801035f1 <myproc>
80103f37:	8b 40 10             	mov    0x10(%eax),%eax
80103f3a:	89 43 3c             	mov    %eax,0x3c(%ebx)
80103f3d:	83 ec 0c             	sub    $0xc,%esp
80103f40:	56                   	push   %esi
80103f41:	e8 3e 02 00 00       	call   80104184 <release>
80103f46:	83 c4 10             	add    $0x10,%esp
80103f49:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103f4c:	5b                   	pop    %ebx
80103f4d:	5e                   	pop    %esi
80103f4e:	5d                   	pop    %ebp
80103f4f:	c3                   	ret    

80103f50 <releasesleep>:
80103f50:	55                   	push   %ebp
80103f51:	89 e5                	mov    %esp,%ebp
80103f53:	56                   	push   %esi
80103f54:	53                   	push   %ebx
80103f55:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103f58:	8d 73 04             	lea    0x4(%ebx),%esi
80103f5b:	83 ec 0c             	sub    $0xc,%esp
80103f5e:	56                   	push   %esi
80103f5f:	e8 b9 01 00 00       	call   8010411d <acquire>
80103f64:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80103f6a:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
80103f71:	89 1c 24             	mov    %ebx,(%esp)
80103f74:	e8 a2 fd ff ff       	call   80103d1b <wakeup>
80103f79:	89 34 24             	mov    %esi,(%esp)
80103f7c:	e8 03 02 00 00       	call   80104184 <release>
80103f81:	83 c4 10             	add    $0x10,%esp
80103f84:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103f87:	5b                   	pop    %ebx
80103f88:	5e                   	pop    %esi
80103f89:	5d                   	pop    %ebp
80103f8a:	c3                   	ret    

80103f8b <holdingsleep>:
80103f8b:	55                   	push   %ebp
80103f8c:	89 e5                	mov    %esp,%ebp
80103f8e:	57                   	push   %edi
80103f8f:	56                   	push   %esi
80103f90:	53                   	push   %ebx
80103f91:	83 ec 18             	sub    $0x18,%esp
80103f94:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103f97:	8d 73 04             	lea    0x4(%ebx),%esi
80103f9a:	56                   	push   %esi
80103f9b:	e8 7d 01 00 00       	call   8010411d <acquire>
80103fa0:	83 c4 10             	add    $0x10,%esp
80103fa3:	bf 00 00 00 00       	mov    $0x0,%edi
80103fa8:	83 3b 00             	cmpl   $0x0,(%ebx)
80103fab:	75 13                	jne    80103fc0 <holdingsleep+0x35>
80103fad:	83 ec 0c             	sub    $0xc,%esp
80103fb0:	56                   	push   %esi
80103fb1:	e8 ce 01 00 00       	call   80104184 <release>
80103fb6:	89 f8                	mov    %edi,%eax
80103fb8:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103fbb:	5b                   	pop    %ebx
80103fbc:	5e                   	pop    %esi
80103fbd:	5f                   	pop    %edi
80103fbe:	5d                   	pop    %ebp
80103fbf:	c3                   	ret    
80103fc0:	8b 5b 3c             	mov    0x3c(%ebx),%ebx
80103fc3:	e8 29 f6 ff ff       	call   801035f1 <myproc>
80103fc8:	39 58 10             	cmp    %ebx,0x10(%eax)
80103fcb:	0f 94 c0             	sete   %al
80103fce:	0f b6 c0             	movzbl %al,%eax
80103fd1:	89 c7                	mov    %eax,%edi
80103fd3:	eb d8                	jmp    80103fad <holdingsleep+0x22>

80103fd5 <initlock>:
80103fd5:	55                   	push   %ebp
80103fd6:	89 e5                	mov    %esp,%ebp
80103fd8:	8b 45 08             	mov    0x8(%ebp),%eax
80103fdb:	8b 55 0c             	mov    0xc(%ebp),%edx
80103fde:	89 50 04             	mov    %edx,0x4(%eax)
80103fe1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
80103fe7:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
80103fee:	5d                   	pop    %ebp
80103fef:	c3                   	ret    

80103ff0 <getcallerpcs>:
80103ff0:	55                   	push   %ebp
80103ff1:	89 e5                	mov    %esp,%ebp
80103ff3:	53                   	push   %ebx
80103ff4:	8b 45 08             	mov    0x8(%ebp),%eax
80103ff7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103ffa:	8d 90 f8 ff ff 7f    	lea    0x7ffffff8(%eax),%edx
80104000:	81 fa fe ff ff 7f    	cmp    $0x7ffffffe,%edx
80104006:	77 2d                	ja     80104035 <getcallerpcs+0x45>
80104008:	8b 50 fc             	mov    -0x4(%eax),%edx
8010400b:	89 11                	mov    %edx,(%ecx)
8010400d:	8b 50 f8             	mov    -0x8(%eax),%edx
80104010:	b8 01 00 00 00       	mov    $0x1,%eax
80104015:	8d 9a 00 00 00 80    	lea    -0x80000000(%edx),%ebx
8010401b:	81 fb fe ff ff 7f    	cmp    $0x7ffffffe,%ebx
80104021:	77 17                	ja     8010403a <getcallerpcs+0x4a>
80104023:	8b 5a 04             	mov    0x4(%edx),%ebx
80104026:	89 1c 81             	mov    %ebx,(%ecx,%eax,4)
80104029:	8b 12                	mov    (%edx),%edx
8010402b:	83 c0 01             	add    $0x1,%eax
8010402e:	83 f8 0a             	cmp    $0xa,%eax
80104031:	75 e2                	jne    80104015 <getcallerpcs+0x25>
80104033:	eb 14                	jmp    80104049 <getcallerpcs+0x59>
80104035:	b8 00 00 00 00       	mov    $0x0,%eax
8010403a:	c7 04 81 00 00 00 00 	movl   $0x0,(%ecx,%eax,4)
80104041:	83 c0 01             	add    $0x1,%eax
80104044:	83 f8 09             	cmp    $0x9,%eax
80104047:	7e f1                	jle    8010403a <getcallerpcs+0x4a>
80104049:	5b                   	pop    %ebx
8010404a:	5d                   	pop    %ebp
8010404b:	c3                   	ret    

8010404c <pushcli>:
8010404c:	55                   	push   %ebp
8010404d:	89 e5                	mov    %esp,%ebp
8010404f:	53                   	push   %ebx
80104050:	83 ec 04             	sub    $0x4,%esp
80104053:	9c                   	pushf  
80104054:	5b                   	pop    %ebx
80104055:	fa                   	cli    
80104056:	e8 04 f5 ff ff       	call   8010355f <mycpu>
8010405b:	83 b8 a4 00 00 00 00 	cmpl   $0x0,0xa4(%eax)
80104062:	74 12                	je     80104076 <pushcli+0x2a>
80104064:	e8 f6 f4 ff ff       	call   8010355f <mycpu>
80104069:	83 80 a4 00 00 00 01 	addl   $0x1,0xa4(%eax)
80104070:	83 c4 04             	add    $0x4,%esp
80104073:	5b                   	pop    %ebx
80104074:	5d                   	pop    %ebp
80104075:	c3                   	ret    
80104076:	e8 e4 f4 ff ff       	call   8010355f <mycpu>
8010407b:	81 e3 00 02 00 00    	and    $0x200,%ebx
80104081:	89 98 a8 00 00 00    	mov    %ebx,0xa8(%eax)
80104087:	eb db                	jmp    80104064 <pushcli+0x18>

80104089 <popcli>:
80104089:	55                   	push   %ebp
8010408a:	89 e5                	mov    %esp,%ebp
8010408c:	83 ec 08             	sub    $0x8,%esp
8010408f:	9c                   	pushf  
80104090:	58                   	pop    %eax
80104091:	f6 c4 02             	test   $0x2,%ah
80104094:	75 28                	jne    801040be <popcli+0x35>
80104096:	e8 c4 f4 ff ff       	call   8010355f <mycpu>
8010409b:	8b 88 a4 00 00 00    	mov    0xa4(%eax),%ecx
801040a1:	8d 51 ff             	lea    -0x1(%ecx),%edx
801040a4:	89 90 a4 00 00 00    	mov    %edx,0xa4(%eax)
801040aa:	85 d2                	test   %edx,%edx
801040ac:	78 1d                	js     801040cb <popcli+0x42>
801040ae:	e8 ac f4 ff ff       	call   8010355f <mycpu>
801040b3:	83 b8 a4 00 00 00 00 	cmpl   $0x0,0xa4(%eax)
801040ba:	74 1c                	je     801040d8 <popcli+0x4f>
801040bc:	c9                   	leave  
801040bd:	c3                   	ret    
801040be:	83 ec 0c             	sub    $0xc,%esp
801040c1:	68 b3 70 10 80       	push   $0x801070b3
801040c6:	e8 79 c2 ff ff       	call   80100344 <panic>
801040cb:	83 ec 0c             	sub    $0xc,%esp
801040ce:	68 ca 70 10 80       	push   $0x801070ca
801040d3:	e8 6c c2 ff ff       	call   80100344 <panic>
801040d8:	e8 82 f4 ff ff       	call   8010355f <mycpu>
801040dd:	83 b8 a8 00 00 00 00 	cmpl   $0x0,0xa8(%eax)
801040e4:	74 d6                	je     801040bc <popcli+0x33>
801040e6:	fb                   	sti    
801040e7:	eb d3                	jmp    801040bc <popcli+0x33>

801040e9 <holding>:
801040e9:	55                   	push   %ebp
801040ea:	89 e5                	mov    %esp,%ebp
801040ec:	56                   	push   %esi
801040ed:	53                   	push   %ebx
801040ee:	8b 75 08             	mov    0x8(%ebp),%esi
801040f1:	e8 56 ff ff ff       	call   8010404c <pushcli>
801040f6:	bb 00 00 00 00       	mov    $0x0,%ebx
801040fb:	83 3e 00             	cmpl   $0x0,(%esi)
801040fe:	75 0b                	jne    8010410b <holding+0x22>
80104100:	e8 84 ff ff ff       	call   80104089 <popcli>
80104105:	89 d8                	mov    %ebx,%eax
80104107:	5b                   	pop    %ebx
80104108:	5e                   	pop    %esi
80104109:	5d                   	pop    %ebp
8010410a:	c3                   	ret    
8010410b:	8b 5e 08             	mov    0x8(%esi),%ebx
8010410e:	e8 4c f4 ff ff       	call   8010355f <mycpu>
80104113:	39 c3                	cmp    %eax,%ebx
80104115:	0f 94 c3             	sete   %bl
80104118:	0f b6 db             	movzbl %bl,%ebx
8010411b:	eb e3                	jmp    80104100 <holding+0x17>

8010411d <acquire>:
8010411d:	55                   	push   %ebp
8010411e:	89 e5                	mov    %esp,%ebp
80104120:	53                   	push   %ebx
80104121:	83 ec 04             	sub    $0x4,%esp
80104124:	e8 23 ff ff ff       	call   8010404c <pushcli>
80104129:	83 ec 0c             	sub    $0xc,%esp
8010412c:	ff 75 08             	pushl  0x8(%ebp)
8010412f:	e8 b5 ff ff ff       	call   801040e9 <holding>
80104134:	83 c4 10             	add    $0x10,%esp
80104137:	85 c0                	test   %eax,%eax
80104139:	75 3c                	jne    80104177 <acquire+0x5a>
8010413b:	b9 01 00 00 00       	mov    $0x1,%ecx
80104140:	8b 55 08             	mov    0x8(%ebp),%edx
80104143:	89 c8                	mov    %ecx,%eax
80104145:	f0 87 02             	lock xchg %eax,(%edx)
80104148:	85 c0                	test   %eax,%eax
8010414a:	75 f4                	jne    80104140 <acquire+0x23>
8010414c:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
80104151:	8b 5d 08             	mov    0x8(%ebp),%ebx
80104154:	e8 06 f4 ff ff       	call   8010355f <mycpu>
80104159:	89 43 08             	mov    %eax,0x8(%ebx)
8010415c:	83 ec 08             	sub    $0x8,%esp
8010415f:	8b 45 08             	mov    0x8(%ebp),%eax
80104162:	83 c0 0c             	add    $0xc,%eax
80104165:	50                   	push   %eax
80104166:	8d 45 08             	lea    0x8(%ebp),%eax
80104169:	50                   	push   %eax
8010416a:	e8 81 fe ff ff       	call   80103ff0 <getcallerpcs>
8010416f:	83 c4 10             	add    $0x10,%esp
80104172:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104175:	c9                   	leave  
80104176:	c3                   	ret    
80104177:	83 ec 0c             	sub    $0xc,%esp
8010417a:	68 d1 70 10 80       	push   $0x801070d1
8010417f:	e8 c0 c1 ff ff       	call   80100344 <panic>

80104184 <release>:
80104184:	55                   	push   %ebp
80104185:	89 e5                	mov    %esp,%ebp
80104187:	53                   	push   %ebx
80104188:	83 ec 10             	sub    $0x10,%esp
8010418b:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010418e:	53                   	push   %ebx
8010418f:	e8 55 ff ff ff       	call   801040e9 <holding>
80104194:	83 c4 10             	add    $0x10,%esp
80104197:	85 c0                	test   %eax,%eax
80104199:	74 23                	je     801041be <release+0x3a>
8010419b:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
801041a2:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
801041a9:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
801041ae:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
801041b4:	e8 d0 fe ff ff       	call   80104089 <popcli>
801041b9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801041bc:	c9                   	leave  
801041bd:	c3                   	ret    
801041be:	83 ec 0c             	sub    $0xc,%esp
801041c1:	68 d9 70 10 80       	push   $0x801070d9
801041c6:	e8 79 c1 ff ff       	call   80100344 <panic>

801041cb <memset>:
801041cb:	55                   	push   %ebp
801041cc:	89 e5                	mov    %esp,%ebp
801041ce:	57                   	push   %edi
801041cf:	53                   	push   %ebx
801041d0:	8b 55 08             	mov    0x8(%ebp),%edx
801041d3:	8b 4d 10             	mov    0x10(%ebp),%ecx
801041d6:	f6 c2 03             	test   $0x3,%dl
801041d9:	75 05                	jne    801041e0 <memset+0x15>
801041db:	f6 c1 03             	test   $0x3,%cl
801041de:	74 0e                	je     801041ee <memset+0x23>
801041e0:	89 d7                	mov    %edx,%edi
801041e2:	8b 45 0c             	mov    0xc(%ebp),%eax
801041e5:	fc                   	cld    
801041e6:	f3 aa                	rep stos %al,%es:(%edi)
801041e8:	89 d0                	mov    %edx,%eax
801041ea:	5b                   	pop    %ebx
801041eb:	5f                   	pop    %edi
801041ec:	5d                   	pop    %ebp
801041ed:	c3                   	ret    
801041ee:	0f b6 7d 0c          	movzbl 0xc(%ebp),%edi
801041f2:	c1 e9 02             	shr    $0x2,%ecx
801041f5:	89 f8                	mov    %edi,%eax
801041f7:	c1 e0 18             	shl    $0x18,%eax
801041fa:	89 fb                	mov    %edi,%ebx
801041fc:	c1 e3 10             	shl    $0x10,%ebx
801041ff:	09 d8                	or     %ebx,%eax
80104201:	09 f8                	or     %edi,%eax
80104203:	c1 e7 08             	shl    $0x8,%edi
80104206:	09 f8                	or     %edi,%eax
80104208:	89 d7                	mov    %edx,%edi
8010420a:	fc                   	cld    
8010420b:	f3 ab                	rep stos %eax,%es:(%edi)
8010420d:	eb d9                	jmp    801041e8 <memset+0x1d>

8010420f <memcmp>:
8010420f:	55                   	push   %ebp
80104210:	89 e5                	mov    %esp,%ebp
80104212:	57                   	push   %edi
80104213:	56                   	push   %esi
80104214:	53                   	push   %ebx
80104215:	8b 75 08             	mov    0x8(%ebp),%esi
80104218:	8b 7d 0c             	mov    0xc(%ebp),%edi
8010421b:	8b 5d 10             	mov    0x10(%ebp),%ebx
8010421e:	85 db                	test   %ebx,%ebx
80104220:	74 37                	je     80104259 <memcmp+0x4a>
80104222:	0f b6 16             	movzbl (%esi),%edx
80104225:	0f b6 0f             	movzbl (%edi),%ecx
80104228:	38 ca                	cmp    %cl,%dl
8010422a:	75 19                	jne    80104245 <memcmp+0x36>
8010422c:	b8 01 00 00 00       	mov    $0x1,%eax
80104231:	39 d8                	cmp    %ebx,%eax
80104233:	74 1d                	je     80104252 <memcmp+0x43>
80104235:	0f b6 14 06          	movzbl (%esi,%eax,1),%edx
80104239:	83 c0 01             	add    $0x1,%eax
8010423c:	0f b6 4c 07 ff       	movzbl -0x1(%edi,%eax,1),%ecx
80104241:	38 ca                	cmp    %cl,%dl
80104243:	74 ec                	je     80104231 <memcmp+0x22>
80104245:	0f b6 c2             	movzbl %dl,%eax
80104248:	0f b6 c9             	movzbl %cl,%ecx
8010424b:	29 c8                	sub    %ecx,%eax
8010424d:	5b                   	pop    %ebx
8010424e:	5e                   	pop    %esi
8010424f:	5f                   	pop    %edi
80104250:	5d                   	pop    %ebp
80104251:	c3                   	ret    
80104252:	b8 00 00 00 00       	mov    $0x0,%eax
80104257:	eb f4                	jmp    8010424d <memcmp+0x3e>
80104259:	b8 00 00 00 00       	mov    $0x0,%eax
8010425e:	eb ed                	jmp    8010424d <memcmp+0x3e>

80104260 <memmove>:
80104260:	55                   	push   %ebp
80104261:	89 e5                	mov    %esp,%ebp
80104263:	56                   	push   %esi
80104264:	53                   	push   %ebx
80104265:	8b 45 08             	mov    0x8(%ebp),%eax
80104268:	8b 5d 0c             	mov    0xc(%ebp),%ebx
8010426b:	8b 75 10             	mov    0x10(%ebp),%esi
8010426e:	39 c3                	cmp    %eax,%ebx
80104270:	72 1b                	jb     8010428d <memmove+0x2d>
80104272:	ba 00 00 00 00       	mov    $0x0,%edx
80104277:	85 f6                	test   %esi,%esi
80104279:	74 0e                	je     80104289 <memmove+0x29>
8010427b:	0f b6 0c 13          	movzbl (%ebx,%edx,1),%ecx
8010427f:	88 0c 10             	mov    %cl,(%eax,%edx,1)
80104282:	83 c2 01             	add    $0x1,%edx
80104285:	39 d6                	cmp    %edx,%esi
80104287:	75 f2                	jne    8010427b <memmove+0x1b>
80104289:	5b                   	pop    %ebx
8010428a:	5e                   	pop    %esi
8010428b:	5d                   	pop    %ebp
8010428c:	c3                   	ret    
8010428d:	8d 14 33             	lea    (%ebx,%esi,1),%edx
80104290:	39 d0                	cmp    %edx,%eax
80104292:	73 de                	jae    80104272 <memmove+0x12>
80104294:	8d 56 ff             	lea    -0x1(%esi),%edx
80104297:	85 f6                	test   %esi,%esi
80104299:	74 ee                	je     80104289 <memmove+0x29>
8010429b:	0f b6 0c 13          	movzbl (%ebx,%edx,1),%ecx
8010429f:	88 0c 10             	mov    %cl,(%eax,%edx,1)
801042a2:	83 ea 01             	sub    $0x1,%edx
801042a5:	83 fa ff             	cmp    $0xffffffff,%edx
801042a8:	75 f1                	jne    8010429b <memmove+0x3b>
801042aa:	eb dd                	jmp    80104289 <memmove+0x29>

801042ac <memcpy>:
801042ac:	55                   	push   %ebp
801042ad:	89 e5                	mov    %esp,%ebp
801042af:	ff 75 10             	pushl  0x10(%ebp)
801042b2:	ff 75 0c             	pushl  0xc(%ebp)
801042b5:	ff 75 08             	pushl  0x8(%ebp)
801042b8:	e8 a3 ff ff ff       	call   80104260 <memmove>
801042bd:	c9                   	leave  
801042be:	c3                   	ret    

801042bf <strncmp>:
801042bf:	55                   	push   %ebp
801042c0:	89 e5                	mov    %esp,%ebp
801042c2:	53                   	push   %ebx
801042c3:	8b 45 08             	mov    0x8(%ebp),%eax
801042c6:	8b 55 0c             	mov    0xc(%ebp),%edx
801042c9:	8b 5d 10             	mov    0x10(%ebp),%ebx
801042cc:	85 db                	test   %ebx,%ebx
801042ce:	74 2d                	je     801042fd <strncmp+0x3e>
801042d0:	0f b6 08             	movzbl (%eax),%ecx
801042d3:	84 c9                	test   %cl,%cl
801042d5:	74 1b                	je     801042f2 <strncmp+0x33>
801042d7:	3a 0a                	cmp    (%edx),%cl
801042d9:	75 17                	jne    801042f2 <strncmp+0x33>
801042db:	01 c3                	add    %eax,%ebx
801042dd:	83 c0 01             	add    $0x1,%eax
801042e0:	83 c2 01             	add    $0x1,%edx
801042e3:	39 d8                	cmp    %ebx,%eax
801042e5:	74 1d                	je     80104304 <strncmp+0x45>
801042e7:	0f b6 08             	movzbl (%eax),%ecx
801042ea:	84 c9                	test   %cl,%cl
801042ec:	74 04                	je     801042f2 <strncmp+0x33>
801042ee:	3a 0a                	cmp    (%edx),%cl
801042f0:	74 eb                	je     801042dd <strncmp+0x1e>
801042f2:	0f b6 00             	movzbl (%eax),%eax
801042f5:	0f b6 12             	movzbl (%edx),%edx
801042f8:	29 d0                	sub    %edx,%eax
801042fa:	5b                   	pop    %ebx
801042fb:	5d                   	pop    %ebp
801042fc:	c3                   	ret    
801042fd:	b8 00 00 00 00       	mov    $0x0,%eax
80104302:	eb f6                	jmp    801042fa <strncmp+0x3b>
80104304:	b8 00 00 00 00       	mov    $0x0,%eax
80104309:	eb ef                	jmp    801042fa <strncmp+0x3b>

8010430b <strncpy>:
8010430b:	55                   	push   %ebp
8010430c:	89 e5                	mov    %esp,%ebp
8010430e:	57                   	push   %edi
8010430f:	56                   	push   %esi
80104310:	53                   	push   %ebx
80104311:	8b 7d 08             	mov    0x8(%ebp),%edi
80104314:	8b 5d 0c             	mov    0xc(%ebp),%ebx
80104317:	8b 55 10             	mov    0x10(%ebp),%edx
8010431a:	89 f9                	mov    %edi,%ecx
8010431c:	eb 02                	jmp    80104320 <strncpy+0x15>
8010431e:	89 f2                	mov    %esi,%edx
80104320:	8d 72 ff             	lea    -0x1(%edx),%esi
80104323:	85 d2                	test   %edx,%edx
80104325:	7e 11                	jle    80104338 <strncpy+0x2d>
80104327:	83 c3 01             	add    $0x1,%ebx
8010432a:	83 c1 01             	add    $0x1,%ecx
8010432d:	0f b6 43 ff          	movzbl -0x1(%ebx),%eax
80104331:	88 41 ff             	mov    %al,-0x1(%ecx)
80104334:	84 c0                	test   %al,%al
80104336:	75 e6                	jne    8010431e <strncpy+0x13>
80104338:	bb 00 00 00 00       	mov    $0x0,%ebx
8010433d:	83 ea 01             	sub    $0x1,%edx
80104340:	85 f6                	test   %esi,%esi
80104342:	7e 0f                	jle    80104353 <strncpy+0x48>
80104344:	c6 04 19 00          	movb   $0x0,(%ecx,%ebx,1)
80104348:	83 c3 01             	add    $0x1,%ebx
8010434b:	89 d6                	mov    %edx,%esi
8010434d:	29 de                	sub    %ebx,%esi
8010434f:	85 f6                	test   %esi,%esi
80104351:	7f f1                	jg     80104344 <strncpy+0x39>
80104353:	89 f8                	mov    %edi,%eax
80104355:	5b                   	pop    %ebx
80104356:	5e                   	pop    %esi
80104357:	5f                   	pop    %edi
80104358:	5d                   	pop    %ebp
80104359:	c3                   	ret    

8010435a <safestrcpy>:
8010435a:	55                   	push   %ebp
8010435b:	89 e5                	mov    %esp,%ebp
8010435d:	56                   	push   %esi
8010435e:	53                   	push   %ebx
8010435f:	8b 45 08             	mov    0x8(%ebp),%eax
80104362:	8b 55 0c             	mov    0xc(%ebp),%edx
80104365:	8b 4d 10             	mov    0x10(%ebp),%ecx
80104368:	85 c9                	test   %ecx,%ecx
8010436a:	7e 1e                	jle    8010438a <safestrcpy+0x30>
8010436c:	8d 74 0a ff          	lea    -0x1(%edx,%ecx,1),%esi
80104370:	89 c1                	mov    %eax,%ecx
80104372:	39 f2                	cmp    %esi,%edx
80104374:	74 11                	je     80104387 <safestrcpy+0x2d>
80104376:	83 c2 01             	add    $0x1,%edx
80104379:	83 c1 01             	add    $0x1,%ecx
8010437c:	0f b6 5a ff          	movzbl -0x1(%edx),%ebx
80104380:	88 59 ff             	mov    %bl,-0x1(%ecx)
80104383:	84 db                	test   %bl,%bl
80104385:	75 eb                	jne    80104372 <safestrcpy+0x18>
80104387:	c6 01 00             	movb   $0x0,(%ecx)
8010438a:	5b                   	pop    %ebx
8010438b:	5e                   	pop    %esi
8010438c:	5d                   	pop    %ebp
8010438d:	c3                   	ret    

8010438e <strlen>:
8010438e:	55                   	push   %ebp
8010438f:	89 e5                	mov    %esp,%ebp
80104391:	8b 55 08             	mov    0x8(%ebp),%edx
80104394:	80 3a 00             	cmpb   $0x0,(%edx)
80104397:	74 10                	je     801043a9 <strlen+0x1b>
80104399:	b8 00 00 00 00       	mov    $0x0,%eax
8010439e:	83 c0 01             	add    $0x1,%eax
801043a1:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
801043a5:	75 f7                	jne    8010439e <strlen+0x10>
801043a7:	5d                   	pop    %ebp
801043a8:	c3                   	ret    
801043a9:	b8 00 00 00 00       	mov    $0x0,%eax
801043ae:	eb f7                	jmp    801043a7 <strlen+0x19>

801043b0 <swtch>:
801043b0:	8b 44 24 04          	mov    0x4(%esp),%eax
801043b4:	8b 54 24 08          	mov    0x8(%esp),%edx
801043b8:	55                   	push   %ebp
801043b9:	53                   	push   %ebx
801043ba:	56                   	push   %esi
801043bb:	57                   	push   %edi
801043bc:	89 20                	mov    %esp,(%eax)
801043be:	89 d4                	mov    %edx,%esp
801043c0:	5f                   	pop    %edi
801043c1:	5e                   	pop    %esi
801043c2:	5b                   	pop    %ebx
801043c3:	5d                   	pop    %ebp
801043c4:	c3                   	ret    

801043c5 <fetchint>:
801043c5:	55                   	push   %ebp
801043c6:	89 e5                	mov    %esp,%ebp
801043c8:	53                   	push   %ebx
801043c9:	83 ec 04             	sub    $0x4,%esp
801043cc:	8b 5d 08             	mov    0x8(%ebp),%ebx
801043cf:	e8 1d f2 ff ff       	call   801035f1 <myproc>
801043d4:	8b 00                	mov    (%eax),%eax
801043d6:	39 d8                	cmp    %ebx,%eax
801043d8:	76 19                	jbe    801043f3 <fetchint+0x2e>
801043da:	8d 53 04             	lea    0x4(%ebx),%edx
801043dd:	39 d0                	cmp    %edx,%eax
801043df:	72 19                	jb     801043fa <fetchint+0x35>
801043e1:	8b 13                	mov    (%ebx),%edx
801043e3:	8b 45 0c             	mov    0xc(%ebp),%eax
801043e6:	89 10                	mov    %edx,(%eax)
801043e8:	b8 00 00 00 00       	mov    $0x0,%eax
801043ed:	83 c4 04             	add    $0x4,%esp
801043f0:	5b                   	pop    %ebx
801043f1:	5d                   	pop    %ebp
801043f2:	c3                   	ret    
801043f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801043f8:	eb f3                	jmp    801043ed <fetchint+0x28>
801043fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801043ff:	eb ec                	jmp    801043ed <fetchint+0x28>

80104401 <fetchstr>:
80104401:	55                   	push   %ebp
80104402:	89 e5                	mov    %esp,%ebp
80104404:	53                   	push   %ebx
80104405:	83 ec 04             	sub    $0x4,%esp
80104408:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010440b:	e8 e1 f1 ff ff       	call   801035f1 <myproc>
80104410:	39 18                	cmp    %ebx,(%eax)
80104412:	76 2f                	jbe    80104443 <fetchstr+0x42>
80104414:	89 da                	mov    %ebx,%edx
80104416:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80104419:	89 19                	mov    %ebx,(%ecx)
8010441b:	8b 00                	mov    (%eax),%eax
8010441d:	39 c3                	cmp    %eax,%ebx
8010441f:	73 29                	jae    8010444a <fetchstr+0x49>
80104421:	80 3b 00             	cmpb   $0x0,(%ebx)
80104424:	74 0c                	je     80104432 <fetchstr+0x31>
80104426:	83 c2 01             	add    $0x1,%edx
80104429:	39 d0                	cmp    %edx,%eax
8010442b:	76 0f                	jbe    8010443c <fetchstr+0x3b>
8010442d:	80 3a 00             	cmpb   $0x0,(%edx)
80104430:	75 f4                	jne    80104426 <fetchstr+0x25>
80104432:	89 d0                	mov    %edx,%eax
80104434:	29 d8                	sub    %ebx,%eax
80104436:	83 c4 04             	add    $0x4,%esp
80104439:	5b                   	pop    %ebx
8010443a:	5d                   	pop    %ebp
8010443b:	c3                   	ret    
8010443c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104441:	eb f3                	jmp    80104436 <fetchstr+0x35>
80104443:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104448:	eb ec                	jmp    80104436 <fetchstr+0x35>
8010444a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010444f:	eb e5                	jmp    80104436 <fetchstr+0x35>

80104451 <argint>:
80104451:	55                   	push   %ebp
80104452:	89 e5                	mov    %esp,%ebp
80104454:	83 ec 08             	sub    $0x8,%esp
80104457:	e8 95 f1 ff ff       	call   801035f1 <myproc>
8010445c:	83 ec 08             	sub    $0x8,%esp
8010445f:	ff 75 0c             	pushl  0xc(%ebp)
80104462:	8b 40 18             	mov    0x18(%eax),%eax
80104465:	8b 40 44             	mov    0x44(%eax),%eax
80104468:	8b 55 08             	mov    0x8(%ebp),%edx
8010446b:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
8010446f:	50                   	push   %eax
80104470:	e8 50 ff ff ff       	call   801043c5 <fetchint>
80104475:	c9                   	leave  
80104476:	c3                   	ret    

80104477 <argptr>:
80104477:	55                   	push   %ebp
80104478:	89 e5                	mov    %esp,%ebp
8010447a:	56                   	push   %esi
8010447b:	53                   	push   %ebx
8010447c:	83 ec 10             	sub    $0x10,%esp
8010447f:	8b 5d 10             	mov    0x10(%ebp),%ebx
80104482:	e8 6a f1 ff ff       	call   801035f1 <myproc>
80104487:	89 c6                	mov    %eax,%esi
80104489:	83 ec 08             	sub    $0x8,%esp
8010448c:	8d 45 f4             	lea    -0xc(%ebp),%eax
8010448f:	50                   	push   %eax
80104490:	ff 75 08             	pushl  0x8(%ebp)
80104493:	e8 b9 ff ff ff       	call   80104451 <argint>
80104498:	83 c4 10             	add    $0x10,%esp
8010449b:	85 db                	test   %ebx,%ebx
8010449d:	78 24                	js     801044c3 <argptr+0x4c>
8010449f:	85 c0                	test   %eax,%eax
801044a1:	78 20                	js     801044c3 <argptr+0x4c>
801044a3:	8b 16                	mov    (%esi),%edx
801044a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
801044a8:	39 c2                	cmp    %eax,%edx
801044aa:	76 1e                	jbe    801044ca <argptr+0x53>
801044ac:	01 c3                	add    %eax,%ebx
801044ae:	39 da                	cmp    %ebx,%edx
801044b0:	72 1f                	jb     801044d1 <argptr+0x5a>
801044b2:	8b 55 0c             	mov    0xc(%ebp),%edx
801044b5:	89 02                	mov    %eax,(%edx)
801044b7:	b8 00 00 00 00       	mov    $0x0,%eax
801044bc:	8d 65 f8             	lea    -0x8(%ebp),%esp
801044bf:	5b                   	pop    %ebx
801044c0:	5e                   	pop    %esi
801044c1:	5d                   	pop    %ebp
801044c2:	c3                   	ret    
801044c3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801044c8:	eb f2                	jmp    801044bc <argptr+0x45>
801044ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801044cf:	eb eb                	jmp    801044bc <argptr+0x45>
801044d1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801044d6:	eb e4                	jmp    801044bc <argptr+0x45>

801044d8 <argstr>:
801044d8:	55                   	push   %ebp
801044d9:	89 e5                	mov    %esp,%ebp
801044db:	83 ec 20             	sub    $0x20,%esp
801044de:	8d 45 f4             	lea    -0xc(%ebp),%eax
801044e1:	50                   	push   %eax
801044e2:	ff 75 08             	pushl  0x8(%ebp)
801044e5:	e8 67 ff ff ff       	call   80104451 <argint>
801044ea:	83 c4 10             	add    $0x10,%esp
801044ed:	85 c0                	test   %eax,%eax
801044ef:	78 13                	js     80104504 <argstr+0x2c>
801044f1:	83 ec 08             	sub    $0x8,%esp
801044f4:	ff 75 0c             	pushl  0xc(%ebp)
801044f7:	ff 75 f4             	pushl  -0xc(%ebp)
801044fa:	e8 02 ff ff ff       	call   80104401 <fetchstr>
801044ff:	83 c4 10             	add    $0x10,%esp
80104502:	c9                   	leave  
80104503:	c3                   	ret    
80104504:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104509:	eb f7                	jmp    80104502 <argstr+0x2a>

8010450b <syscall>:
8010450b:	55                   	push   %ebp
8010450c:	89 e5                	mov    %esp,%ebp
8010450e:	53                   	push   %ebx
8010450f:	83 ec 04             	sub    $0x4,%esp
80104512:	e8 da f0 ff ff       	call   801035f1 <myproc>
80104517:	89 c3                	mov    %eax,%ebx
80104519:	8b 40 18             	mov    0x18(%eax),%eax
8010451c:	8b 40 1c             	mov    0x1c(%eax),%eax
8010451f:	8d 50 ff             	lea    -0x1(%eax),%edx
80104522:	83 fa 15             	cmp    $0x15,%edx
80104525:	77 18                	ja     8010453f <syscall+0x34>
80104527:	8b 14 85 00 71 10 80 	mov    -0x7fef8f00(,%eax,4),%edx
8010452e:	85 d2                	test   %edx,%edx
80104530:	74 0d                	je     8010453f <syscall+0x34>
80104532:	ff d2                	call   *%edx
80104534:	8b 53 18             	mov    0x18(%ebx),%edx
80104537:	89 42 1c             	mov    %eax,0x1c(%edx)
8010453a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010453d:	c9                   	leave  
8010453e:	c3                   	ret    
8010453f:	50                   	push   %eax
80104540:	8d 43 6c             	lea    0x6c(%ebx),%eax
80104543:	50                   	push   %eax
80104544:	ff 73 10             	pushl  0x10(%ebx)
80104547:	68 e1 70 10 80       	push   $0x801070e1
8010454c:	e8 90 c0 ff ff       	call   801005e1 <cprintf>
80104551:	8b 43 18             	mov    0x18(%ebx),%eax
80104554:	c7 40 1c ff ff ff ff 	movl   $0xffffffff,0x1c(%eax)
8010455b:	83 c4 10             	add    $0x10,%esp
8010455e:	eb da                	jmp    8010453a <syscall+0x2f>

80104560 <argfd>:
80104560:	55                   	push   %ebp
80104561:	89 e5                	mov    %esp,%ebp
80104563:	56                   	push   %esi
80104564:	53                   	push   %ebx
80104565:	83 ec 18             	sub    $0x18,%esp
80104568:	89 d6                	mov    %edx,%esi
8010456a:	89 cb                	mov    %ecx,%ebx
8010456c:	8d 55 f4             	lea    -0xc(%ebp),%edx
8010456f:	52                   	push   %edx
80104570:	50                   	push   %eax
80104571:	e8 db fe ff ff       	call   80104451 <argint>
80104576:	83 c4 10             	add    $0x10,%esp
80104579:	85 c0                	test   %eax,%eax
8010457b:	78 2e                	js     801045ab <argfd+0x4b>
8010457d:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
80104581:	77 2f                	ja     801045b2 <argfd+0x52>
80104583:	e8 69 f0 ff ff       	call   801035f1 <myproc>
80104588:	8b 4d f4             	mov    -0xc(%ebp),%ecx
8010458b:	8b 54 88 28          	mov    0x28(%eax,%ecx,4),%edx
8010458f:	85 d2                	test   %edx,%edx
80104591:	74 26                	je     801045b9 <argfd+0x59>
80104593:	85 f6                	test   %esi,%esi
80104595:	74 02                	je     80104599 <argfd+0x39>
80104597:	89 0e                	mov    %ecx,(%esi)
80104599:	b8 00 00 00 00       	mov    $0x0,%eax
8010459e:	85 db                	test   %ebx,%ebx
801045a0:	74 02                	je     801045a4 <argfd+0x44>
801045a2:	89 13                	mov    %edx,(%ebx)
801045a4:	8d 65 f8             	lea    -0x8(%ebp),%esp
801045a7:	5b                   	pop    %ebx
801045a8:	5e                   	pop    %esi
801045a9:	5d                   	pop    %ebp
801045aa:	c3                   	ret    
801045ab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801045b0:	eb f2                	jmp    801045a4 <argfd+0x44>
801045b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801045b7:	eb eb                	jmp    801045a4 <argfd+0x44>
801045b9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801045be:	eb e4                	jmp    801045a4 <argfd+0x44>

801045c0 <fdalloc>:
801045c0:	55                   	push   %ebp
801045c1:	89 e5                	mov    %esp,%ebp
801045c3:	53                   	push   %ebx
801045c4:	83 ec 04             	sub    $0x4,%esp
801045c7:	89 c3                	mov    %eax,%ebx
801045c9:	e8 23 f0 ff ff       	call   801035f1 <myproc>
801045ce:	83 78 28 00          	cmpl   $0x0,0x28(%eax)
801045d2:	74 1b                	je     801045ef <fdalloc+0x2f>
801045d4:	ba 01 00 00 00       	mov    $0x1,%edx
801045d9:	83 7c 90 28 00       	cmpl   $0x0,0x28(%eax,%edx,4)
801045de:	74 14                	je     801045f4 <fdalloc+0x34>
801045e0:	83 c2 01             	add    $0x1,%edx
801045e3:	83 fa 10             	cmp    $0x10,%edx
801045e6:	75 f1                	jne    801045d9 <fdalloc+0x19>
801045e8:	ba ff ff ff ff       	mov    $0xffffffff,%edx
801045ed:	eb 09                	jmp    801045f8 <fdalloc+0x38>
801045ef:	ba 00 00 00 00       	mov    $0x0,%edx
801045f4:	89 5c 90 28          	mov    %ebx,0x28(%eax,%edx,4)
801045f8:	89 d0                	mov    %edx,%eax
801045fa:	83 c4 04             	add    $0x4,%esp
801045fd:	5b                   	pop    %ebx
801045fe:	5d                   	pop    %ebp
801045ff:	c3                   	ret    

80104600 <create>:
80104600:	55                   	push   %ebp
80104601:	89 e5                	mov    %esp,%ebp
80104603:	57                   	push   %edi
80104604:	56                   	push   %esi
80104605:	53                   	push   %ebx
80104606:	83 ec 34             	sub    $0x34,%esp
80104609:	89 55 d4             	mov    %edx,-0x2c(%ebp)
8010460c:	89 4d d0             	mov    %ecx,-0x30(%ebp)
8010460f:	8b 7d 08             	mov    0x8(%ebp),%edi
80104612:	8d 55 da             	lea    -0x26(%ebp),%edx
80104615:	52                   	push   %edx
80104616:	50                   	push   %eax
80104617:	e8 7f d6 ff ff       	call   80101c9b <nameiparent>
8010461c:	89 c6                	mov    %eax,%esi
8010461e:	83 c4 10             	add    $0x10,%esp
80104621:	85 c0                	test   %eax,%eax
80104623:	0f 84 32 01 00 00    	je     8010475b <create+0x15b>
80104629:	83 ec 0c             	sub    $0xc,%esp
8010462c:	50                   	push   %eax
8010462d:	e8 b4 ce ff ff       	call   801014e6 <ilock>
80104632:	83 c4 0c             	add    $0xc,%esp
80104635:	6a 00                	push   $0x0
80104637:	8d 45 da             	lea    -0x26(%ebp),%eax
8010463a:	50                   	push   %eax
8010463b:	56                   	push   %esi
8010463c:	e8 6b d3 ff ff       	call   801019ac <dirlookup>
80104641:	89 c3                	mov    %eax,%ebx
80104643:	83 c4 10             	add    $0x10,%esp
80104646:	85 c0                	test   %eax,%eax
80104648:	74 3f                	je     80104689 <create+0x89>
8010464a:	83 ec 0c             	sub    $0xc,%esp
8010464d:	56                   	push   %esi
8010464e:	e8 dc d0 ff ff       	call   8010172f <iunlockput>
80104653:	89 1c 24             	mov    %ebx,(%esp)
80104656:	e8 8b ce ff ff       	call   801014e6 <ilock>
8010465b:	83 c4 10             	add    $0x10,%esp
8010465e:	66 83 7d d4 02       	cmpw   $0x2,-0x2c(%ebp)
80104663:	75 11                	jne    80104676 <create+0x76>
80104665:	66 83 7b 50 02       	cmpw   $0x2,0x50(%ebx)
8010466a:	75 0a                	jne    80104676 <create+0x76>
8010466c:	89 d8                	mov    %ebx,%eax
8010466e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104671:	5b                   	pop    %ebx
80104672:	5e                   	pop    %esi
80104673:	5f                   	pop    %edi
80104674:	5d                   	pop    %ebp
80104675:	c3                   	ret    
80104676:	83 ec 0c             	sub    $0xc,%esp
80104679:	53                   	push   %ebx
8010467a:	e8 b0 d0 ff ff       	call   8010172f <iunlockput>
8010467f:	83 c4 10             	add    $0x10,%esp
80104682:	bb 00 00 00 00       	mov    $0x0,%ebx
80104687:	eb e3                	jmp    8010466c <create+0x6c>
80104689:	83 ec 08             	sub    $0x8,%esp
8010468c:	0f bf 45 d4          	movswl -0x2c(%ebp),%eax
80104690:	50                   	push   %eax
80104691:	ff 36                	pushl  (%esi)
80104693:	e8 fb cc ff ff       	call   80101393 <ialloc>
80104698:	89 c3                	mov    %eax,%ebx
8010469a:	83 c4 10             	add    $0x10,%esp
8010469d:	85 c0                	test   %eax,%eax
8010469f:	74 55                	je     801046f6 <create+0xf6>
801046a1:	83 ec 0c             	sub    $0xc,%esp
801046a4:	50                   	push   %eax
801046a5:	e8 3c ce ff ff       	call   801014e6 <ilock>
801046aa:	0f b7 45 d0          	movzwl -0x30(%ebp),%eax
801046ae:	66 89 43 52          	mov    %ax,0x52(%ebx)
801046b2:	66 89 7b 54          	mov    %di,0x54(%ebx)
801046b6:	66 c7 43 56 01 00    	movw   $0x1,0x56(%ebx)
801046bc:	89 1c 24             	mov    %ebx,(%esp)
801046bf:	e8 78 cd ff ff       	call   8010143c <iupdate>
801046c4:	83 c4 10             	add    $0x10,%esp
801046c7:	66 83 7d d4 01       	cmpw   $0x1,-0x2c(%ebp)
801046cc:	74 35                	je     80104703 <create+0x103>
801046ce:	83 ec 04             	sub    $0x4,%esp
801046d1:	ff 73 04             	pushl  0x4(%ebx)
801046d4:	8d 45 da             	lea    -0x26(%ebp),%eax
801046d7:	50                   	push   %eax
801046d8:	56                   	push   %esi
801046d9:	e8 f0 d4 ff ff       	call   80101bce <dirlink>
801046de:	83 c4 10             	add    $0x10,%esp
801046e1:	85 c0                	test   %eax,%eax
801046e3:	78 69                	js     8010474e <create+0x14e>
801046e5:	83 ec 0c             	sub    $0xc,%esp
801046e8:	56                   	push   %esi
801046e9:	e8 41 d0 ff ff       	call   8010172f <iunlockput>
801046ee:	83 c4 10             	add    $0x10,%esp
801046f1:	e9 76 ff ff ff       	jmp    8010466c <create+0x6c>
801046f6:	83 ec 0c             	sub    $0xc,%esp
801046f9:	68 5c 71 10 80       	push   $0x8010715c
801046fe:	e8 41 bc ff ff       	call   80100344 <panic>
80104703:	66 83 46 56 01       	addw   $0x1,0x56(%esi)
80104708:	83 ec 0c             	sub    $0xc,%esp
8010470b:	56                   	push   %esi
8010470c:	e8 2b cd ff ff       	call   8010143c <iupdate>
80104711:	83 c4 0c             	add    $0xc,%esp
80104714:	ff 73 04             	pushl  0x4(%ebx)
80104717:	68 6c 71 10 80       	push   $0x8010716c
8010471c:	53                   	push   %ebx
8010471d:	e8 ac d4 ff ff       	call   80101bce <dirlink>
80104722:	83 c4 10             	add    $0x10,%esp
80104725:	85 c0                	test   %eax,%eax
80104727:	78 18                	js     80104741 <create+0x141>
80104729:	83 ec 04             	sub    $0x4,%esp
8010472c:	ff 76 04             	pushl  0x4(%esi)
8010472f:	68 6b 71 10 80       	push   $0x8010716b
80104734:	53                   	push   %ebx
80104735:	e8 94 d4 ff ff       	call   80101bce <dirlink>
8010473a:	83 c4 10             	add    $0x10,%esp
8010473d:	85 c0                	test   %eax,%eax
8010473f:	79 8d                	jns    801046ce <create+0xce>
80104741:	83 ec 0c             	sub    $0xc,%esp
80104744:	68 6e 71 10 80       	push   $0x8010716e
80104749:	e8 f6 bb ff ff       	call   80100344 <panic>
8010474e:	83 ec 0c             	sub    $0xc,%esp
80104751:	68 7a 71 10 80       	push   $0x8010717a
80104756:	e8 e9 bb ff ff       	call   80100344 <panic>
8010475b:	89 c3                	mov    %eax,%ebx
8010475d:	e9 0a ff ff ff       	jmp    8010466c <create+0x6c>

80104762 <sys_dup>:
80104762:	55                   	push   %ebp
80104763:	89 e5                	mov    %esp,%ebp
80104765:	53                   	push   %ebx
80104766:	83 ec 14             	sub    $0x14,%esp
80104769:	8d 4d f4             	lea    -0xc(%ebp),%ecx
8010476c:	ba 00 00 00 00       	mov    $0x0,%edx
80104771:	b8 00 00 00 00       	mov    $0x0,%eax
80104776:	e8 e5 fd ff ff       	call   80104560 <argfd>
8010477b:	85 c0                	test   %eax,%eax
8010477d:	78 23                	js     801047a2 <sys_dup+0x40>
8010477f:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104782:	e8 39 fe ff ff       	call   801045c0 <fdalloc>
80104787:	89 c3                	mov    %eax,%ebx
80104789:	85 c0                	test   %eax,%eax
8010478b:	78 1c                	js     801047a9 <sys_dup+0x47>
8010478d:	83 ec 0c             	sub    $0xc,%esp
80104790:	ff 75 f4             	pushl  -0xc(%ebp)
80104793:	e8 4f c5 ff ff       	call   80100ce7 <filedup>
80104798:	83 c4 10             	add    $0x10,%esp
8010479b:	89 d8                	mov    %ebx,%eax
8010479d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801047a0:	c9                   	leave  
801047a1:	c3                   	ret    
801047a2:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
801047a7:	eb f2                	jmp    8010479b <sys_dup+0x39>
801047a9:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
801047ae:	eb eb                	jmp    8010479b <sys_dup+0x39>

801047b0 <sys_read>:
801047b0:	55                   	push   %ebp
801047b1:	89 e5                	mov    %esp,%ebp
801047b3:	83 ec 18             	sub    $0x18,%esp
801047b6:	8d 4d f4             	lea    -0xc(%ebp),%ecx
801047b9:	ba 00 00 00 00       	mov    $0x0,%edx
801047be:	b8 00 00 00 00       	mov    $0x0,%eax
801047c3:	e8 98 fd ff ff       	call   80104560 <argfd>
801047c8:	85 c0                	test   %eax,%eax
801047ca:	78 43                	js     8010480f <sys_read+0x5f>
801047cc:	83 ec 08             	sub    $0x8,%esp
801047cf:	8d 45 f0             	lea    -0x10(%ebp),%eax
801047d2:	50                   	push   %eax
801047d3:	6a 02                	push   $0x2
801047d5:	e8 77 fc ff ff       	call   80104451 <argint>
801047da:	83 c4 10             	add    $0x10,%esp
801047dd:	85 c0                	test   %eax,%eax
801047df:	78 35                	js     80104816 <sys_read+0x66>
801047e1:	83 ec 04             	sub    $0x4,%esp
801047e4:	ff 75 f0             	pushl  -0x10(%ebp)
801047e7:	8d 45 ec             	lea    -0x14(%ebp),%eax
801047ea:	50                   	push   %eax
801047eb:	6a 01                	push   $0x1
801047ed:	e8 85 fc ff ff       	call   80104477 <argptr>
801047f2:	83 c4 10             	add    $0x10,%esp
801047f5:	85 c0                	test   %eax,%eax
801047f7:	78 24                	js     8010481d <sys_read+0x6d>
801047f9:	83 ec 04             	sub    $0x4,%esp
801047fc:	ff 75 f0             	pushl  -0x10(%ebp)
801047ff:	ff 75 ec             	pushl  -0x14(%ebp)
80104802:	ff 75 f4             	pushl  -0xc(%ebp)
80104805:	e8 1e c6 ff ff       	call   80100e28 <fileread>
8010480a:	83 c4 10             	add    $0x10,%esp
8010480d:	c9                   	leave  
8010480e:	c3                   	ret    
8010480f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104814:	eb f7                	jmp    8010480d <sys_read+0x5d>
80104816:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010481b:	eb f0                	jmp    8010480d <sys_read+0x5d>
8010481d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104822:	eb e9                	jmp    8010480d <sys_read+0x5d>

80104824 <sys_write>:
80104824:	55                   	push   %ebp
80104825:	89 e5                	mov    %esp,%ebp
80104827:	83 ec 18             	sub    $0x18,%esp
8010482a:	8d 4d f4             	lea    -0xc(%ebp),%ecx
8010482d:	ba 00 00 00 00       	mov    $0x0,%edx
80104832:	b8 00 00 00 00       	mov    $0x0,%eax
80104837:	e8 24 fd ff ff       	call   80104560 <argfd>
8010483c:	85 c0                	test   %eax,%eax
8010483e:	78 43                	js     80104883 <sys_write+0x5f>
80104840:	83 ec 08             	sub    $0x8,%esp
80104843:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104846:	50                   	push   %eax
80104847:	6a 02                	push   $0x2
80104849:	e8 03 fc ff ff       	call   80104451 <argint>
8010484e:	83 c4 10             	add    $0x10,%esp
80104851:	85 c0                	test   %eax,%eax
80104853:	78 35                	js     8010488a <sys_write+0x66>
80104855:	83 ec 04             	sub    $0x4,%esp
80104858:	ff 75 f0             	pushl  -0x10(%ebp)
8010485b:	8d 45 ec             	lea    -0x14(%ebp),%eax
8010485e:	50                   	push   %eax
8010485f:	6a 01                	push   $0x1
80104861:	e8 11 fc ff ff       	call   80104477 <argptr>
80104866:	83 c4 10             	add    $0x10,%esp
80104869:	85 c0                	test   %eax,%eax
8010486b:	78 24                	js     80104891 <sys_write+0x6d>
8010486d:	83 ec 04             	sub    $0x4,%esp
80104870:	ff 75 f0             	pushl  -0x10(%ebp)
80104873:	ff 75 ec             	pushl  -0x14(%ebp)
80104876:	ff 75 f4             	pushl  -0xc(%ebp)
80104879:	e8 2f c6 ff ff       	call   80100ead <filewrite>
8010487e:	83 c4 10             	add    $0x10,%esp
80104881:	c9                   	leave  
80104882:	c3                   	ret    
80104883:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104888:	eb f7                	jmp    80104881 <sys_write+0x5d>
8010488a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010488f:	eb f0                	jmp    80104881 <sys_write+0x5d>
80104891:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104896:	eb e9                	jmp    80104881 <sys_write+0x5d>

80104898 <sys_close>:
80104898:	55                   	push   %ebp
80104899:	89 e5                	mov    %esp,%ebp
8010489b:	83 ec 18             	sub    $0x18,%esp
8010489e:	8d 4d f0             	lea    -0x10(%ebp),%ecx
801048a1:	8d 55 f4             	lea    -0xc(%ebp),%edx
801048a4:	b8 00 00 00 00       	mov    $0x0,%eax
801048a9:	e8 b2 fc ff ff       	call   80104560 <argfd>
801048ae:	85 c0                	test   %eax,%eax
801048b0:	78 25                	js     801048d7 <sys_close+0x3f>
801048b2:	e8 3a ed ff ff       	call   801035f1 <myproc>
801048b7:	8b 55 f4             	mov    -0xc(%ebp),%edx
801048ba:	c7 44 90 28 00 00 00 	movl   $0x0,0x28(%eax,%edx,4)
801048c1:	00 
801048c2:	83 ec 0c             	sub    $0xc,%esp
801048c5:	ff 75 f0             	pushl  -0x10(%ebp)
801048c8:	e8 5f c4 ff ff       	call   80100d2c <fileclose>
801048cd:	83 c4 10             	add    $0x10,%esp
801048d0:	b8 00 00 00 00       	mov    $0x0,%eax
801048d5:	c9                   	leave  
801048d6:	c3                   	ret    
801048d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801048dc:	eb f7                	jmp    801048d5 <sys_close+0x3d>

801048de <sys_fstat>:
801048de:	55                   	push   %ebp
801048df:	89 e5                	mov    %esp,%ebp
801048e1:	83 ec 18             	sub    $0x18,%esp
801048e4:	8d 4d f4             	lea    -0xc(%ebp),%ecx
801048e7:	ba 00 00 00 00       	mov    $0x0,%edx
801048ec:	b8 00 00 00 00       	mov    $0x0,%eax
801048f1:	e8 6a fc ff ff       	call   80104560 <argfd>
801048f6:	85 c0                	test   %eax,%eax
801048f8:	78 2a                	js     80104924 <sys_fstat+0x46>
801048fa:	83 ec 04             	sub    $0x4,%esp
801048fd:	6a 14                	push   $0x14
801048ff:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104902:	50                   	push   %eax
80104903:	6a 01                	push   $0x1
80104905:	e8 6d fb ff ff       	call   80104477 <argptr>
8010490a:	83 c4 10             	add    $0x10,%esp
8010490d:	85 c0                	test   %eax,%eax
8010490f:	78 1a                	js     8010492b <sys_fstat+0x4d>
80104911:	83 ec 08             	sub    $0x8,%esp
80104914:	ff 75 f0             	pushl  -0x10(%ebp)
80104917:	ff 75 f4             	pushl  -0xc(%ebp)
8010491a:	e8 c2 c4 ff ff       	call   80100de1 <filestat>
8010491f:	83 c4 10             	add    $0x10,%esp
80104922:	c9                   	leave  
80104923:	c3                   	ret    
80104924:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104929:	eb f7                	jmp    80104922 <sys_fstat+0x44>
8010492b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104930:	eb f0                	jmp    80104922 <sys_fstat+0x44>

80104932 <sys_link>:
80104932:	55                   	push   %ebp
80104933:	89 e5                	mov    %esp,%ebp
80104935:	56                   	push   %esi
80104936:	53                   	push   %ebx
80104937:	83 ec 28             	sub    $0x28,%esp
8010493a:	8d 45 e0             	lea    -0x20(%ebp),%eax
8010493d:	50                   	push   %eax
8010493e:	6a 00                	push   $0x0
80104940:	e8 93 fb ff ff       	call   801044d8 <argstr>
80104945:	83 c4 10             	add    $0x10,%esp
80104948:	85 c0                	test   %eax,%eax
8010494a:	0f 88 26 01 00 00    	js     80104a76 <sys_link+0x144>
80104950:	83 ec 08             	sub    $0x8,%esp
80104953:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80104956:	50                   	push   %eax
80104957:	6a 01                	push   $0x1
80104959:	e8 7a fb ff ff       	call   801044d8 <argstr>
8010495e:	83 c4 10             	add    $0x10,%esp
80104961:	85 c0                	test   %eax,%eax
80104963:	0f 88 14 01 00 00    	js     80104a7d <sys_link+0x14b>
80104969:	e8 3f de ff ff       	call   801027ad <begin_op>
8010496e:	83 ec 0c             	sub    $0xc,%esp
80104971:	ff 75 e0             	pushl  -0x20(%ebp)
80104974:	e8 0a d3 ff ff       	call   80101c83 <namei>
80104979:	89 c3                	mov    %eax,%ebx
8010497b:	83 c4 10             	add    $0x10,%esp
8010497e:	85 c0                	test   %eax,%eax
80104980:	0f 84 93 00 00 00    	je     80104a19 <sys_link+0xe7>
80104986:	83 ec 0c             	sub    $0xc,%esp
80104989:	50                   	push   %eax
8010498a:	e8 57 cb ff ff       	call   801014e6 <ilock>
8010498f:	83 c4 10             	add    $0x10,%esp
80104992:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104997:	0f 84 88 00 00 00    	je     80104a25 <sys_link+0xf3>
8010499d:	66 83 43 56 01       	addw   $0x1,0x56(%ebx)
801049a2:	83 ec 0c             	sub    $0xc,%esp
801049a5:	53                   	push   %ebx
801049a6:	e8 91 ca ff ff       	call   8010143c <iupdate>
801049ab:	89 1c 24             	mov    %ebx,(%esp)
801049ae:	e8 f5 cb ff ff       	call   801015a8 <iunlock>
801049b3:	83 c4 08             	add    $0x8,%esp
801049b6:	8d 45 ea             	lea    -0x16(%ebp),%eax
801049b9:	50                   	push   %eax
801049ba:	ff 75 e4             	pushl  -0x1c(%ebp)
801049bd:	e8 d9 d2 ff ff       	call   80101c9b <nameiparent>
801049c2:	89 c6                	mov    %eax,%esi
801049c4:	83 c4 10             	add    $0x10,%esp
801049c7:	85 c0                	test   %eax,%eax
801049c9:	74 7e                	je     80104a49 <sys_link+0x117>
801049cb:	83 ec 0c             	sub    $0xc,%esp
801049ce:	50                   	push   %eax
801049cf:	e8 12 cb ff ff       	call   801014e6 <ilock>
801049d4:	83 c4 10             	add    $0x10,%esp
801049d7:	8b 03                	mov    (%ebx),%eax
801049d9:	39 06                	cmp    %eax,(%esi)
801049db:	75 60                	jne    80104a3d <sys_link+0x10b>
801049dd:	83 ec 04             	sub    $0x4,%esp
801049e0:	ff 73 04             	pushl  0x4(%ebx)
801049e3:	8d 45 ea             	lea    -0x16(%ebp),%eax
801049e6:	50                   	push   %eax
801049e7:	56                   	push   %esi
801049e8:	e8 e1 d1 ff ff       	call   80101bce <dirlink>
801049ed:	83 c4 10             	add    $0x10,%esp
801049f0:	85 c0                	test   %eax,%eax
801049f2:	78 49                	js     80104a3d <sys_link+0x10b>
801049f4:	83 ec 0c             	sub    $0xc,%esp
801049f7:	56                   	push   %esi
801049f8:	e8 32 cd ff ff       	call   8010172f <iunlockput>
801049fd:	89 1c 24             	mov    %ebx,(%esp)
80104a00:	e8 e8 cb ff ff       	call   801015ed <iput>
80104a05:	e8 1e de ff ff       	call   80102828 <end_op>
80104a0a:	83 c4 10             	add    $0x10,%esp
80104a0d:	b8 00 00 00 00       	mov    $0x0,%eax
80104a12:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104a15:	5b                   	pop    %ebx
80104a16:	5e                   	pop    %esi
80104a17:	5d                   	pop    %ebp
80104a18:	c3                   	ret    
80104a19:	e8 0a de ff ff       	call   80102828 <end_op>
80104a1e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104a23:	eb ed                	jmp    80104a12 <sys_link+0xe0>
80104a25:	83 ec 0c             	sub    $0xc,%esp
80104a28:	53                   	push   %ebx
80104a29:	e8 01 cd ff ff       	call   8010172f <iunlockput>
80104a2e:	e8 f5 dd ff ff       	call   80102828 <end_op>
80104a33:	83 c4 10             	add    $0x10,%esp
80104a36:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104a3b:	eb d5                	jmp    80104a12 <sys_link+0xe0>
80104a3d:	83 ec 0c             	sub    $0xc,%esp
80104a40:	56                   	push   %esi
80104a41:	e8 e9 cc ff ff       	call   8010172f <iunlockput>
80104a46:	83 c4 10             	add    $0x10,%esp
80104a49:	83 ec 0c             	sub    $0xc,%esp
80104a4c:	53                   	push   %ebx
80104a4d:	e8 94 ca ff ff       	call   801014e6 <ilock>
80104a52:	66 83 6b 56 01       	subw   $0x1,0x56(%ebx)
80104a57:	89 1c 24             	mov    %ebx,(%esp)
80104a5a:	e8 dd c9 ff ff       	call   8010143c <iupdate>
80104a5f:	89 1c 24             	mov    %ebx,(%esp)
80104a62:	e8 c8 cc ff ff       	call   8010172f <iunlockput>
80104a67:	e8 bc dd ff ff       	call   80102828 <end_op>
80104a6c:	83 c4 10             	add    $0x10,%esp
80104a6f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104a74:	eb 9c                	jmp    80104a12 <sys_link+0xe0>
80104a76:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104a7b:	eb 95                	jmp    80104a12 <sys_link+0xe0>
80104a7d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104a82:	eb 8e                	jmp    80104a12 <sys_link+0xe0>

80104a84 <sys_unlink>:
80104a84:	55                   	push   %ebp
80104a85:	89 e5                	mov    %esp,%ebp
80104a87:	57                   	push   %edi
80104a88:	56                   	push   %esi
80104a89:	53                   	push   %ebx
80104a8a:	83 ec 54             	sub    $0x54,%esp
80104a8d:	8d 45 c4             	lea    -0x3c(%ebp),%eax
80104a90:	50                   	push   %eax
80104a91:	6a 00                	push   $0x0
80104a93:	e8 40 fa ff ff       	call   801044d8 <argstr>
80104a98:	83 c4 10             	add    $0x10,%esp
80104a9b:	85 c0                	test   %eax,%eax
80104a9d:	0f 88 81 01 00 00    	js     80104c24 <sys_unlink+0x1a0>
80104aa3:	e8 05 dd ff ff       	call   801027ad <begin_op>
80104aa8:	83 ec 08             	sub    $0x8,%esp
80104aab:	8d 45 ca             	lea    -0x36(%ebp),%eax
80104aae:	50                   	push   %eax
80104aaf:	ff 75 c4             	pushl  -0x3c(%ebp)
80104ab2:	e8 e4 d1 ff ff       	call   80101c9b <nameiparent>
80104ab7:	89 c7                	mov    %eax,%edi
80104ab9:	83 c4 10             	add    $0x10,%esp
80104abc:	85 c0                	test   %eax,%eax
80104abe:	0f 84 df 00 00 00    	je     80104ba3 <sys_unlink+0x11f>
80104ac4:	83 ec 0c             	sub    $0xc,%esp
80104ac7:	50                   	push   %eax
80104ac8:	e8 19 ca ff ff       	call   801014e6 <ilock>
80104acd:	83 c4 08             	add    $0x8,%esp
80104ad0:	68 6c 71 10 80       	push   $0x8010716c
80104ad5:	8d 45 ca             	lea    -0x36(%ebp),%eax
80104ad8:	50                   	push   %eax
80104ad9:	e8 b9 ce ff ff       	call   80101997 <namecmp>
80104ade:	83 c4 10             	add    $0x10,%esp
80104ae1:	85 c0                	test   %eax,%eax
80104ae3:	0f 84 51 01 00 00    	je     80104c3a <sys_unlink+0x1b6>
80104ae9:	83 ec 08             	sub    $0x8,%esp
80104aec:	68 6b 71 10 80       	push   $0x8010716b
80104af1:	8d 45 ca             	lea    -0x36(%ebp),%eax
80104af4:	50                   	push   %eax
80104af5:	e8 9d ce ff ff       	call   80101997 <namecmp>
80104afa:	83 c4 10             	add    $0x10,%esp
80104afd:	85 c0                	test   %eax,%eax
80104aff:	0f 84 35 01 00 00    	je     80104c3a <sys_unlink+0x1b6>
80104b05:	83 ec 04             	sub    $0x4,%esp
80104b08:	8d 45 c0             	lea    -0x40(%ebp),%eax
80104b0b:	50                   	push   %eax
80104b0c:	8d 45 ca             	lea    -0x36(%ebp),%eax
80104b0f:	50                   	push   %eax
80104b10:	57                   	push   %edi
80104b11:	e8 96 ce ff ff       	call   801019ac <dirlookup>
80104b16:	89 c3                	mov    %eax,%ebx
80104b18:	83 c4 10             	add    $0x10,%esp
80104b1b:	85 c0                	test   %eax,%eax
80104b1d:	0f 84 17 01 00 00    	je     80104c3a <sys_unlink+0x1b6>
80104b23:	83 ec 0c             	sub    $0xc,%esp
80104b26:	50                   	push   %eax
80104b27:	e8 ba c9 ff ff       	call   801014e6 <ilock>
80104b2c:	83 c4 10             	add    $0x10,%esp
80104b2f:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
80104b34:	7e 79                	jle    80104baf <sys_unlink+0x12b>
80104b36:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104b3b:	74 7f                	je     80104bbc <sys_unlink+0x138>
80104b3d:	83 ec 04             	sub    $0x4,%esp
80104b40:	6a 10                	push   $0x10
80104b42:	6a 00                	push   $0x0
80104b44:	8d 75 d8             	lea    -0x28(%ebp),%esi
80104b47:	56                   	push   %esi
80104b48:	e8 7e f6 ff ff       	call   801041cb <memset>
80104b4d:	6a 10                	push   $0x10
80104b4f:	ff 75 c0             	pushl  -0x40(%ebp)
80104b52:	56                   	push   %esi
80104b53:	57                   	push   %edi
80104b54:	e8 1d cd ff ff       	call   80101876 <writei>
80104b59:	83 c4 20             	add    $0x20,%esp
80104b5c:	83 f8 10             	cmp    $0x10,%eax
80104b5f:	0f 85 9c 00 00 00    	jne    80104c01 <sys_unlink+0x17d>
80104b65:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104b6a:	0f 84 9e 00 00 00    	je     80104c0e <sys_unlink+0x18a>
80104b70:	83 ec 0c             	sub    $0xc,%esp
80104b73:	57                   	push   %edi
80104b74:	e8 b6 cb ff ff       	call   8010172f <iunlockput>
80104b79:	66 83 6b 56 01       	subw   $0x1,0x56(%ebx)
80104b7e:	89 1c 24             	mov    %ebx,(%esp)
80104b81:	e8 b6 c8 ff ff       	call   8010143c <iupdate>
80104b86:	89 1c 24             	mov    %ebx,(%esp)
80104b89:	e8 a1 cb ff ff       	call   8010172f <iunlockput>
80104b8e:	e8 95 dc ff ff       	call   80102828 <end_op>
80104b93:	83 c4 10             	add    $0x10,%esp
80104b96:	b8 00 00 00 00       	mov    $0x0,%eax
80104b9b:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104b9e:	5b                   	pop    %ebx
80104b9f:	5e                   	pop    %esi
80104ba0:	5f                   	pop    %edi
80104ba1:	5d                   	pop    %ebp
80104ba2:	c3                   	ret    
80104ba3:	e8 80 dc ff ff       	call   80102828 <end_op>
80104ba8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104bad:	eb ec                	jmp    80104b9b <sys_unlink+0x117>
80104baf:	83 ec 0c             	sub    $0xc,%esp
80104bb2:	68 8a 71 10 80       	push   $0x8010718a
80104bb7:	e8 88 b7 ff ff       	call   80100344 <panic>
80104bbc:	83 7b 58 20          	cmpl   $0x20,0x58(%ebx)
80104bc0:	0f 86 77 ff ff ff    	jbe    80104b3d <sys_unlink+0xb9>
80104bc6:	be 20 00 00 00       	mov    $0x20,%esi
80104bcb:	6a 10                	push   $0x10
80104bcd:	56                   	push   %esi
80104bce:	8d 45 b0             	lea    -0x50(%ebp),%eax
80104bd1:	50                   	push   %eax
80104bd2:	53                   	push   %ebx
80104bd3:	e8 a2 cb ff ff       	call   8010177a <readi>
80104bd8:	83 c4 10             	add    $0x10,%esp
80104bdb:	83 f8 10             	cmp    $0x10,%eax
80104bde:	75 14                	jne    80104bf4 <sys_unlink+0x170>
80104be0:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
80104be5:	75 47                	jne    80104c2e <sys_unlink+0x1aa>
80104be7:	83 c6 10             	add    $0x10,%esi
80104bea:	3b 73 58             	cmp    0x58(%ebx),%esi
80104bed:	72 dc                	jb     80104bcb <sys_unlink+0x147>
80104bef:	e9 49 ff ff ff       	jmp    80104b3d <sys_unlink+0xb9>
80104bf4:	83 ec 0c             	sub    $0xc,%esp
80104bf7:	68 9c 71 10 80       	push   $0x8010719c
80104bfc:	e8 43 b7 ff ff       	call   80100344 <panic>
80104c01:	83 ec 0c             	sub    $0xc,%esp
80104c04:	68 ae 71 10 80       	push   $0x801071ae
80104c09:	e8 36 b7 ff ff       	call   80100344 <panic>
80104c0e:	66 83 6f 56 01       	subw   $0x1,0x56(%edi)
80104c13:	83 ec 0c             	sub    $0xc,%esp
80104c16:	57                   	push   %edi
80104c17:	e8 20 c8 ff ff       	call   8010143c <iupdate>
80104c1c:	83 c4 10             	add    $0x10,%esp
80104c1f:	e9 4c ff ff ff       	jmp    80104b70 <sys_unlink+0xec>
80104c24:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c29:	e9 6d ff ff ff       	jmp    80104b9b <sys_unlink+0x117>
80104c2e:	83 ec 0c             	sub    $0xc,%esp
80104c31:	53                   	push   %ebx
80104c32:	e8 f8 ca ff ff       	call   8010172f <iunlockput>
80104c37:	83 c4 10             	add    $0x10,%esp
80104c3a:	83 ec 0c             	sub    $0xc,%esp
80104c3d:	57                   	push   %edi
80104c3e:	e8 ec ca ff ff       	call   8010172f <iunlockput>
80104c43:	e8 e0 db ff ff       	call   80102828 <end_op>
80104c48:	83 c4 10             	add    $0x10,%esp
80104c4b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c50:	e9 46 ff ff ff       	jmp    80104b9b <sys_unlink+0x117>

80104c55 <sys_open>:
80104c55:	55                   	push   %ebp
80104c56:	89 e5                	mov    %esp,%ebp
80104c58:	57                   	push   %edi
80104c59:	56                   	push   %esi
80104c5a:	53                   	push   %ebx
80104c5b:	83 ec 24             	sub    $0x24,%esp
80104c5e:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80104c61:	50                   	push   %eax
80104c62:	6a 00                	push   $0x0
80104c64:	e8 6f f8 ff ff       	call   801044d8 <argstr>
80104c69:	83 c4 10             	add    $0x10,%esp
80104c6c:	85 c0                	test   %eax,%eax
80104c6e:	0f 88 0b 01 00 00    	js     80104d7f <sys_open+0x12a>
80104c74:	83 ec 08             	sub    $0x8,%esp
80104c77:	8d 45 e0             	lea    -0x20(%ebp),%eax
80104c7a:	50                   	push   %eax
80104c7b:	6a 01                	push   $0x1
80104c7d:	e8 cf f7 ff ff       	call   80104451 <argint>
80104c82:	83 c4 10             	add    $0x10,%esp
80104c85:	85 c0                	test   %eax,%eax
80104c87:	0f 88 f9 00 00 00    	js     80104d86 <sys_open+0x131>
80104c8d:	e8 1b db ff ff       	call   801027ad <begin_op>
80104c92:	f6 45 e1 02          	testb  $0x2,-0x1f(%ebp)
80104c96:	0f 84 8a 00 00 00    	je     80104d26 <sys_open+0xd1>
80104c9c:	83 ec 0c             	sub    $0xc,%esp
80104c9f:	6a 00                	push   $0x0
80104ca1:	b9 00 00 00 00       	mov    $0x0,%ecx
80104ca6:	ba 02 00 00 00       	mov    $0x2,%edx
80104cab:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80104cae:	e8 4d f9 ff ff       	call   80104600 <create>
80104cb3:	89 c6                	mov    %eax,%esi
80104cb5:	83 c4 10             	add    $0x10,%esp
80104cb8:	85 c0                	test   %eax,%eax
80104cba:	74 5e                	je     80104d1a <sys_open+0xc5>
80104cbc:	e8 b9 bf ff ff       	call   80100c7a <filealloc>
80104cc1:	89 c3                	mov    %eax,%ebx
80104cc3:	85 c0                	test   %eax,%eax
80104cc5:	0f 84 ce 00 00 00    	je     80104d99 <sys_open+0x144>
80104ccb:	e8 f0 f8 ff ff       	call   801045c0 <fdalloc>
80104cd0:	89 c7                	mov    %eax,%edi
80104cd2:	85 c0                	test   %eax,%eax
80104cd4:	0f 88 b3 00 00 00    	js     80104d8d <sys_open+0x138>
80104cda:	83 ec 0c             	sub    $0xc,%esp
80104cdd:	56                   	push   %esi
80104cde:	e8 c5 c8 ff ff       	call   801015a8 <iunlock>
80104ce3:	e8 40 db ff ff       	call   80102828 <end_op>
80104ce8:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
80104cee:	89 73 10             	mov    %esi,0x10(%ebx)
80104cf1:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
80104cf8:	8b 55 e0             	mov    -0x20(%ebp),%edx
80104cfb:	89 d0                	mov    %edx,%eax
80104cfd:	83 f0 01             	xor    $0x1,%eax
80104d00:	83 e0 01             	and    $0x1,%eax
80104d03:	88 43 08             	mov    %al,0x8(%ebx)
80104d06:	83 c4 10             	add    $0x10,%esp
80104d09:	f6 c2 03             	test   $0x3,%dl
80104d0c:	0f 95 43 09          	setne  0x9(%ebx)
80104d10:	89 f8                	mov    %edi,%eax
80104d12:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104d15:	5b                   	pop    %ebx
80104d16:	5e                   	pop    %esi
80104d17:	5f                   	pop    %edi
80104d18:	5d                   	pop    %ebp
80104d19:	c3                   	ret    
80104d1a:	e8 09 db ff ff       	call   80102828 <end_op>
80104d1f:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104d24:	eb ea                	jmp    80104d10 <sys_open+0xbb>
80104d26:	83 ec 0c             	sub    $0xc,%esp
80104d29:	ff 75 e4             	pushl  -0x1c(%ebp)
80104d2c:	e8 52 cf ff ff       	call   80101c83 <namei>
80104d31:	89 c6                	mov    %eax,%esi
80104d33:	83 c4 10             	add    $0x10,%esp
80104d36:	85 c0                	test   %eax,%eax
80104d38:	74 39                	je     80104d73 <sys_open+0x11e>
80104d3a:	83 ec 0c             	sub    $0xc,%esp
80104d3d:	50                   	push   %eax
80104d3e:	e8 a3 c7 ff ff       	call   801014e6 <ilock>
80104d43:	83 c4 10             	add    $0x10,%esp
80104d46:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80104d4b:	0f 85 6b ff ff ff    	jne    80104cbc <sys_open+0x67>
80104d51:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80104d55:	0f 84 61 ff ff ff    	je     80104cbc <sys_open+0x67>
80104d5b:	83 ec 0c             	sub    $0xc,%esp
80104d5e:	56                   	push   %esi
80104d5f:	e8 cb c9 ff ff       	call   8010172f <iunlockput>
80104d64:	e8 bf da ff ff       	call   80102828 <end_op>
80104d69:	83 c4 10             	add    $0x10,%esp
80104d6c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104d71:	eb 9d                	jmp    80104d10 <sys_open+0xbb>
80104d73:	e8 b0 da ff ff       	call   80102828 <end_op>
80104d78:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104d7d:	eb 91                	jmp    80104d10 <sys_open+0xbb>
80104d7f:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104d84:	eb 8a                	jmp    80104d10 <sys_open+0xbb>
80104d86:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104d8b:	eb 83                	jmp    80104d10 <sys_open+0xbb>
80104d8d:	83 ec 0c             	sub    $0xc,%esp
80104d90:	53                   	push   %ebx
80104d91:	e8 96 bf ff ff       	call   80100d2c <fileclose>
80104d96:	83 c4 10             	add    $0x10,%esp
80104d99:	83 ec 0c             	sub    $0xc,%esp
80104d9c:	56                   	push   %esi
80104d9d:	e8 8d c9 ff ff       	call   8010172f <iunlockput>
80104da2:	e8 81 da ff ff       	call   80102828 <end_op>
80104da7:	83 c4 10             	add    $0x10,%esp
80104daa:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104daf:	e9 5c ff ff ff       	jmp    80104d10 <sys_open+0xbb>

80104db4 <sys_mkdir>:
80104db4:	55                   	push   %ebp
80104db5:	89 e5                	mov    %esp,%ebp
80104db7:	83 ec 18             	sub    $0x18,%esp
80104dba:	e8 ee d9 ff ff       	call   801027ad <begin_op>
80104dbf:	83 ec 08             	sub    $0x8,%esp
80104dc2:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104dc5:	50                   	push   %eax
80104dc6:	6a 00                	push   $0x0
80104dc8:	e8 0b f7 ff ff       	call   801044d8 <argstr>
80104dcd:	83 c4 10             	add    $0x10,%esp
80104dd0:	85 c0                	test   %eax,%eax
80104dd2:	78 36                	js     80104e0a <sys_mkdir+0x56>
80104dd4:	83 ec 0c             	sub    $0xc,%esp
80104dd7:	6a 00                	push   $0x0
80104dd9:	b9 00 00 00 00       	mov    $0x0,%ecx
80104dde:	ba 01 00 00 00       	mov    $0x1,%edx
80104de3:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104de6:	e8 15 f8 ff ff       	call   80104600 <create>
80104deb:	83 c4 10             	add    $0x10,%esp
80104dee:	85 c0                	test   %eax,%eax
80104df0:	74 18                	je     80104e0a <sys_mkdir+0x56>
80104df2:	83 ec 0c             	sub    $0xc,%esp
80104df5:	50                   	push   %eax
80104df6:	e8 34 c9 ff ff       	call   8010172f <iunlockput>
80104dfb:	e8 28 da ff ff       	call   80102828 <end_op>
80104e00:	83 c4 10             	add    $0x10,%esp
80104e03:	b8 00 00 00 00       	mov    $0x0,%eax
80104e08:	c9                   	leave  
80104e09:	c3                   	ret    
80104e0a:	e8 19 da ff ff       	call   80102828 <end_op>
80104e0f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104e14:	eb f2                	jmp    80104e08 <sys_mkdir+0x54>

80104e16 <sys_mknod>:
80104e16:	55                   	push   %ebp
80104e17:	89 e5                	mov    %esp,%ebp
80104e19:	83 ec 18             	sub    $0x18,%esp
80104e1c:	e8 8c d9 ff ff       	call   801027ad <begin_op>
80104e21:	83 ec 08             	sub    $0x8,%esp
80104e24:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104e27:	50                   	push   %eax
80104e28:	6a 00                	push   $0x0
80104e2a:	e8 a9 f6 ff ff       	call   801044d8 <argstr>
80104e2f:	83 c4 10             	add    $0x10,%esp
80104e32:	85 c0                	test   %eax,%eax
80104e34:	78 62                	js     80104e98 <sys_mknod+0x82>
80104e36:	83 ec 08             	sub    $0x8,%esp
80104e39:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104e3c:	50                   	push   %eax
80104e3d:	6a 01                	push   $0x1
80104e3f:	e8 0d f6 ff ff       	call   80104451 <argint>
80104e44:	83 c4 10             	add    $0x10,%esp
80104e47:	85 c0                	test   %eax,%eax
80104e49:	78 4d                	js     80104e98 <sys_mknod+0x82>
80104e4b:	83 ec 08             	sub    $0x8,%esp
80104e4e:	8d 45 ec             	lea    -0x14(%ebp),%eax
80104e51:	50                   	push   %eax
80104e52:	6a 02                	push   $0x2
80104e54:	e8 f8 f5 ff ff       	call   80104451 <argint>
80104e59:	83 c4 10             	add    $0x10,%esp
80104e5c:	85 c0                	test   %eax,%eax
80104e5e:	78 38                	js     80104e98 <sys_mknod+0x82>
80104e60:	0f bf 4d f0          	movswl -0x10(%ebp),%ecx
80104e64:	83 ec 0c             	sub    $0xc,%esp
80104e67:	0f bf 45 ec          	movswl -0x14(%ebp),%eax
80104e6b:	50                   	push   %eax
80104e6c:	ba 03 00 00 00       	mov    $0x3,%edx
80104e71:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104e74:	e8 87 f7 ff ff       	call   80104600 <create>
80104e79:	83 c4 10             	add    $0x10,%esp
80104e7c:	85 c0                	test   %eax,%eax
80104e7e:	74 18                	je     80104e98 <sys_mknod+0x82>
80104e80:	83 ec 0c             	sub    $0xc,%esp
80104e83:	50                   	push   %eax
80104e84:	e8 a6 c8 ff ff       	call   8010172f <iunlockput>
80104e89:	e8 9a d9 ff ff       	call   80102828 <end_op>
80104e8e:	83 c4 10             	add    $0x10,%esp
80104e91:	b8 00 00 00 00       	mov    $0x0,%eax
80104e96:	c9                   	leave  
80104e97:	c3                   	ret    
80104e98:	e8 8b d9 ff ff       	call   80102828 <end_op>
80104e9d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104ea2:	eb f2                	jmp    80104e96 <sys_mknod+0x80>

80104ea4 <sys_chdir>:
80104ea4:	55                   	push   %ebp
80104ea5:	89 e5                	mov    %esp,%ebp
80104ea7:	56                   	push   %esi
80104ea8:	53                   	push   %ebx
80104ea9:	83 ec 10             	sub    $0x10,%esp
80104eac:	e8 40 e7 ff ff       	call   801035f1 <myproc>
80104eb1:	89 c6                	mov    %eax,%esi
80104eb3:	e8 f5 d8 ff ff       	call   801027ad <begin_op>
80104eb8:	83 ec 08             	sub    $0x8,%esp
80104ebb:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104ebe:	50                   	push   %eax
80104ebf:	6a 00                	push   $0x0
80104ec1:	e8 12 f6 ff ff       	call   801044d8 <argstr>
80104ec6:	83 c4 10             	add    $0x10,%esp
80104ec9:	85 c0                	test   %eax,%eax
80104ecb:	78 52                	js     80104f1f <sys_chdir+0x7b>
80104ecd:	83 ec 0c             	sub    $0xc,%esp
80104ed0:	ff 75 f4             	pushl  -0xc(%ebp)
80104ed3:	e8 ab cd ff ff       	call   80101c83 <namei>
80104ed8:	89 c3                	mov    %eax,%ebx
80104eda:	83 c4 10             	add    $0x10,%esp
80104edd:	85 c0                	test   %eax,%eax
80104edf:	74 3e                	je     80104f1f <sys_chdir+0x7b>
80104ee1:	83 ec 0c             	sub    $0xc,%esp
80104ee4:	50                   	push   %eax
80104ee5:	e8 fc c5 ff ff       	call   801014e6 <ilock>
80104eea:	83 c4 10             	add    $0x10,%esp
80104eed:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104ef2:	75 37                	jne    80104f2b <sys_chdir+0x87>
80104ef4:	83 ec 0c             	sub    $0xc,%esp
80104ef7:	53                   	push   %ebx
80104ef8:	e8 ab c6 ff ff       	call   801015a8 <iunlock>
80104efd:	83 c4 04             	add    $0x4,%esp
80104f00:	ff 76 68             	pushl  0x68(%esi)
80104f03:	e8 e5 c6 ff ff       	call   801015ed <iput>
80104f08:	e8 1b d9 ff ff       	call   80102828 <end_op>
80104f0d:	89 5e 68             	mov    %ebx,0x68(%esi)
80104f10:	83 c4 10             	add    $0x10,%esp
80104f13:	b8 00 00 00 00       	mov    $0x0,%eax
80104f18:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104f1b:	5b                   	pop    %ebx
80104f1c:	5e                   	pop    %esi
80104f1d:	5d                   	pop    %ebp
80104f1e:	c3                   	ret    
80104f1f:	e8 04 d9 ff ff       	call   80102828 <end_op>
80104f24:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104f29:	eb ed                	jmp    80104f18 <sys_chdir+0x74>
80104f2b:	83 ec 0c             	sub    $0xc,%esp
80104f2e:	53                   	push   %ebx
80104f2f:	e8 fb c7 ff ff       	call   8010172f <iunlockput>
80104f34:	e8 ef d8 ff ff       	call   80102828 <end_op>
80104f39:	83 c4 10             	add    $0x10,%esp
80104f3c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104f41:	eb d5                	jmp    80104f18 <sys_chdir+0x74>

80104f43 <sys_exec>:
80104f43:	55                   	push   %ebp
80104f44:	89 e5                	mov    %esp,%ebp
80104f46:	57                   	push   %edi
80104f47:	56                   	push   %esi
80104f48:	53                   	push   %ebx
80104f49:	81 ec a4 00 00 00    	sub    $0xa4,%esp
80104f4f:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80104f52:	50                   	push   %eax
80104f53:	6a 00                	push   $0x0
80104f55:	e8 7e f5 ff ff       	call   801044d8 <argstr>
80104f5a:	83 c4 10             	add    $0x10,%esp
80104f5d:	85 c0                	test   %eax,%eax
80104f5f:	0f 88 b4 00 00 00    	js     80105019 <sys_exec+0xd6>
80104f65:	83 ec 08             	sub    $0x8,%esp
80104f68:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
80104f6e:	50                   	push   %eax
80104f6f:	6a 01                	push   $0x1
80104f71:	e8 db f4 ff ff       	call   80104451 <argint>
80104f76:	83 c4 10             	add    $0x10,%esp
80104f79:	85 c0                	test   %eax,%eax
80104f7b:	0f 88 9f 00 00 00    	js     80105020 <sys_exec+0xdd>
80104f81:	83 ec 04             	sub    $0x4,%esp
80104f84:	68 80 00 00 00       	push   $0x80
80104f89:	6a 00                	push   $0x0
80104f8b:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
80104f91:	50                   	push   %eax
80104f92:	e8 34 f2 ff ff       	call   801041cb <memset>
80104f97:	83 c4 10             	add    $0x10,%esp
80104f9a:	be 00 00 00 00       	mov    $0x0,%esi
80104f9f:	8d bd 5c ff ff ff    	lea    -0xa4(%ebp),%edi
80104fa5:	8d 1c b5 00 00 00 00 	lea    0x0(,%esi,4),%ebx
80104fac:	83 ec 08             	sub    $0x8,%esp
80104faf:	57                   	push   %edi
80104fb0:	89 d8                	mov    %ebx,%eax
80104fb2:	03 85 60 ff ff ff    	add    -0xa0(%ebp),%eax
80104fb8:	50                   	push   %eax
80104fb9:	e8 07 f4 ff ff       	call   801043c5 <fetchint>
80104fbe:	83 c4 10             	add    $0x10,%esp
80104fc1:	85 c0                	test   %eax,%eax
80104fc3:	78 62                	js     80105027 <sys_exec+0xe4>
80104fc5:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
80104fcb:	85 c0                	test   %eax,%eax
80104fcd:	74 28                	je     80104ff7 <sys_exec+0xb4>
80104fcf:	83 ec 08             	sub    $0x8,%esp
80104fd2:	8d 95 64 ff ff ff    	lea    -0x9c(%ebp),%edx
80104fd8:	01 d3                	add    %edx,%ebx
80104fda:	53                   	push   %ebx
80104fdb:	50                   	push   %eax
80104fdc:	e8 20 f4 ff ff       	call   80104401 <fetchstr>
80104fe1:	83 c4 10             	add    $0x10,%esp
80104fe4:	85 c0                	test   %eax,%eax
80104fe6:	78 4c                	js     80105034 <sys_exec+0xf1>
80104fe8:	83 c6 01             	add    $0x1,%esi
80104feb:	83 fe 20             	cmp    $0x20,%esi
80104fee:	75 b5                	jne    80104fa5 <sys_exec+0x62>
80104ff0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104ff5:	eb 35                	jmp    8010502c <sys_exec+0xe9>
80104ff7:	c7 84 b5 64 ff ff ff 	movl   $0x0,-0x9c(%ebp,%esi,4)
80104ffe:	00 00 00 00 
80105002:	83 ec 08             	sub    $0x8,%esp
80105005:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
8010500b:	50                   	push   %eax
8010500c:	ff 75 e4             	pushl  -0x1c(%ebp)
8010500f:	e8 fe b8 ff ff       	call   80100912 <exec>
80105014:	83 c4 10             	add    $0x10,%esp
80105017:	eb 13                	jmp    8010502c <sys_exec+0xe9>
80105019:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010501e:	eb 0c                	jmp    8010502c <sys_exec+0xe9>
80105020:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105025:	eb 05                	jmp    8010502c <sys_exec+0xe9>
80105027:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010502c:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010502f:	5b                   	pop    %ebx
80105030:	5e                   	pop    %esi
80105031:	5f                   	pop    %edi
80105032:	5d                   	pop    %ebp
80105033:	c3                   	ret    
80105034:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105039:	eb f1                	jmp    8010502c <sys_exec+0xe9>

8010503b <sys_pipe>:
8010503b:	55                   	push   %ebp
8010503c:	89 e5                	mov    %esp,%ebp
8010503e:	53                   	push   %ebx
8010503f:	83 ec 18             	sub    $0x18,%esp
80105042:	6a 08                	push   $0x8
80105044:	8d 45 f4             	lea    -0xc(%ebp),%eax
80105047:	50                   	push   %eax
80105048:	6a 00                	push   $0x0
8010504a:	e8 28 f4 ff ff       	call   80104477 <argptr>
8010504f:	83 c4 10             	add    $0x10,%esp
80105052:	85 c0                	test   %eax,%eax
80105054:	78 46                	js     8010509c <sys_pipe+0x61>
80105056:	83 ec 08             	sub    $0x8,%esp
80105059:	8d 45 ec             	lea    -0x14(%ebp),%eax
8010505c:	50                   	push   %eax
8010505d:	8d 45 f0             	lea    -0x10(%ebp),%eax
80105060:	50                   	push   %eax
80105061:	e8 76 dd ff ff       	call   80102ddc <pipealloc>
80105066:	83 c4 10             	add    $0x10,%esp
80105069:	85 c0                	test   %eax,%eax
8010506b:	78 36                	js     801050a3 <sys_pipe+0x68>
8010506d:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105070:	e8 4b f5 ff ff       	call   801045c0 <fdalloc>
80105075:	89 c3                	mov    %eax,%ebx
80105077:	85 c0                	test   %eax,%eax
80105079:	78 3c                	js     801050b7 <sys_pipe+0x7c>
8010507b:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010507e:	e8 3d f5 ff ff       	call   801045c0 <fdalloc>
80105083:	85 c0                	test   %eax,%eax
80105085:	78 23                	js     801050aa <sys_pipe+0x6f>
80105087:	8b 55 f4             	mov    -0xc(%ebp),%edx
8010508a:	89 1a                	mov    %ebx,(%edx)
8010508c:	8b 55 f4             	mov    -0xc(%ebp),%edx
8010508f:	89 42 04             	mov    %eax,0x4(%edx)
80105092:	b8 00 00 00 00       	mov    $0x0,%eax
80105097:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010509a:	c9                   	leave  
8010509b:	c3                   	ret    
8010509c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801050a1:	eb f4                	jmp    80105097 <sys_pipe+0x5c>
801050a3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801050a8:	eb ed                	jmp    80105097 <sys_pipe+0x5c>
801050aa:	e8 42 e5 ff ff       	call   801035f1 <myproc>
801050af:	c7 44 98 28 00 00 00 	movl   $0x0,0x28(%eax,%ebx,4)
801050b6:	00 
801050b7:	83 ec 0c             	sub    $0xc,%esp
801050ba:	ff 75 f0             	pushl  -0x10(%ebp)
801050bd:	e8 6a bc ff ff       	call   80100d2c <fileclose>
801050c2:	83 c4 04             	add    $0x4,%esp
801050c5:	ff 75 ec             	pushl  -0x14(%ebp)
801050c8:	e8 5f bc ff ff       	call   80100d2c <fileclose>
801050cd:	83 c4 10             	add    $0x10,%esp
801050d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801050d5:	eb c0                	jmp    80105097 <sys_pipe+0x5c>

801050d7 <sys_fork>:
801050d7:	55                   	push   %ebp
801050d8:	89 e5                	mov    %esp,%ebp
801050da:	83 ec 08             	sub    $0x8,%esp
801050dd:	e8 9b e6 ff ff       	call   8010377d <fork>
801050e2:	c9                   	leave  
801050e3:	c3                   	ret    

801050e4 <sys_exit>:
801050e4:	55                   	push   %ebp
801050e5:	89 e5                	mov    %esp,%ebp
801050e7:	83 ec 08             	sub    $0x8,%esp
801050ea:	e8 b3 e9 ff ff       	call   80103aa2 <exit>
801050ef:	b8 00 00 00 00       	mov    $0x0,%eax
801050f4:	c9                   	leave  
801050f5:	c3                   	ret    

801050f6 <sys_wait>:
801050f6:	55                   	push   %ebp
801050f7:	89 e5                	mov    %esp,%ebp
801050f9:	83 ec 08             	sub    $0x8,%esp
801050fc:	e8 3c eb ff ff       	call   80103c3d <wait>
80105101:	c9                   	leave  
80105102:	c3                   	ret    

80105103 <sys_kill>:
80105103:	55                   	push   %ebp
80105104:	89 e5                	mov    %esp,%ebp
80105106:	83 ec 20             	sub    $0x20,%esp
80105109:	8d 45 f4             	lea    -0xc(%ebp),%eax
8010510c:	50                   	push   %eax
8010510d:	6a 00                	push   $0x0
8010510f:	e8 3d f3 ff ff       	call   80104451 <argint>
80105114:	83 c4 10             	add    $0x10,%esp
80105117:	85 c0                	test   %eax,%eax
80105119:	78 10                	js     8010512b <sys_kill+0x28>
8010511b:	83 ec 0c             	sub    $0xc,%esp
8010511e:	ff 75 f4             	pushl  -0xc(%ebp)
80105121:	e8 1e ec ff ff       	call   80103d44 <kill>
80105126:	83 c4 10             	add    $0x10,%esp
80105129:	c9                   	leave  
8010512a:	c3                   	ret    
8010512b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105130:	eb f7                	jmp    80105129 <sys_kill+0x26>

80105132 <sys_getpid>:
80105132:	55                   	push   %ebp
80105133:	89 e5                	mov    %esp,%ebp
80105135:	83 ec 08             	sub    $0x8,%esp
80105138:	e8 b4 e4 ff ff       	call   801035f1 <myproc>
8010513d:	8b 40 10             	mov    0x10(%eax),%eax
80105140:	c9                   	leave  
80105141:	c3                   	ret    

80105142 <sys_sbrk>:
80105142:	55                   	push   %ebp
80105143:	89 e5                	mov    %esp,%ebp
80105145:	53                   	push   %ebx
80105146:	83 ec 1c             	sub    $0x1c,%esp
80105149:	8d 45 f4             	lea    -0xc(%ebp),%eax
8010514c:	50                   	push   %eax
8010514d:	6a 00                	push   $0x0
8010514f:	e8 fd f2 ff ff       	call   80104451 <argint>
80105154:	83 c4 10             	add    $0x10,%esp
80105157:	85 c0                	test   %eax,%eax
80105159:	78 26                	js     80105181 <sys_sbrk+0x3f>
8010515b:	e8 91 e4 ff ff       	call   801035f1 <myproc>
80105160:	8b 18                	mov    (%eax),%ebx
80105162:	83 ec 0c             	sub    $0xc,%esp
80105165:	ff 75 f4             	pushl  -0xc(%ebp)
80105168:	e8 a3 e5 ff ff       	call   80103710 <growproc>
8010516d:	83 c4 10             	add    $0x10,%esp
80105170:	85 c0                	test   %eax,%eax
80105172:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105177:	0f 48 d8             	cmovs  %eax,%ebx
8010517a:	89 d8                	mov    %ebx,%eax
8010517c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010517f:	c9                   	leave  
80105180:	c3                   	ret    
80105181:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80105186:	eb f2                	jmp    8010517a <sys_sbrk+0x38>

80105188 <sys_sleep>:
80105188:	55                   	push   %ebp
80105189:	89 e5                	mov    %esp,%ebp
8010518b:	53                   	push   %ebx
8010518c:	83 ec 1c             	sub    $0x1c,%esp
8010518f:	8d 45 f4             	lea    -0xc(%ebp),%eax
80105192:	50                   	push   %eax
80105193:	6a 00                	push   $0x0
80105195:	e8 b7 f2 ff ff       	call   80104451 <argint>
8010519a:	83 c4 10             	add    $0x10,%esp
8010519d:	85 c0                	test   %eax,%eax
8010519f:	78 79                	js     8010521a <sys_sleep+0x92>
801051a1:	83 ec 0c             	sub    $0xc,%esp
801051a4:	68 a0 4f 11 80       	push   $0x80114fa0
801051a9:	e8 6f ef ff ff       	call   8010411d <acquire>
801051ae:	8b 1d e0 57 11 80    	mov    0x801157e0,%ebx
801051b4:	83 c4 10             	add    $0x10,%esp
801051b7:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
801051bb:	74 2c                	je     801051e9 <sys_sleep+0x61>
801051bd:	e8 2f e4 ff ff       	call   801035f1 <myproc>
801051c2:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
801051c6:	75 3b                	jne    80105203 <sys_sleep+0x7b>
801051c8:	83 ec 08             	sub    $0x8,%esp
801051cb:	68 a0 4f 11 80       	push   $0x80114fa0
801051d0:	68 e0 57 11 80       	push   $0x801157e0
801051d5:	e8 c1 e9 ff ff       	call   80103b9b <sleep>
801051da:	a1 e0 57 11 80       	mov    0x801157e0,%eax
801051df:	29 d8                	sub    %ebx,%eax
801051e1:	83 c4 10             	add    $0x10,%esp
801051e4:	3b 45 f4             	cmp    -0xc(%ebp),%eax
801051e7:	72 d4                	jb     801051bd <sys_sleep+0x35>
801051e9:	83 ec 0c             	sub    $0xc,%esp
801051ec:	68 a0 4f 11 80       	push   $0x80114fa0
801051f1:	e8 8e ef ff ff       	call   80104184 <release>
801051f6:	83 c4 10             	add    $0x10,%esp
801051f9:	b8 00 00 00 00       	mov    $0x0,%eax
801051fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80105201:	c9                   	leave  
80105202:	c3                   	ret    
80105203:	83 ec 0c             	sub    $0xc,%esp
80105206:	68 a0 4f 11 80       	push   $0x80114fa0
8010520b:	e8 74 ef ff ff       	call   80104184 <release>
80105210:	83 c4 10             	add    $0x10,%esp
80105213:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105218:	eb e4                	jmp    801051fe <sys_sleep+0x76>
8010521a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010521f:	eb dd                	jmp    801051fe <sys_sleep+0x76>

80105221 <sys_uptime>:
80105221:	55                   	push   %ebp
80105222:	89 e5                	mov    %esp,%ebp
80105224:	53                   	push   %ebx
80105225:	83 ec 10             	sub    $0x10,%esp
80105228:	68 a0 4f 11 80       	push   $0x80114fa0
8010522d:	e8 eb ee ff ff       	call   8010411d <acquire>
80105232:	8b 1d e0 57 11 80    	mov    0x801157e0,%ebx
80105238:	c7 04 24 a0 4f 11 80 	movl   $0x80114fa0,(%esp)
8010523f:	e8 40 ef ff ff       	call   80104184 <release>
80105244:	89 d8                	mov    %ebx,%eax
80105246:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80105249:	c9                   	leave  
8010524a:	c3                   	ret    

8010524b <sys_getlevel>:
8010524b:	55                   	push   %ebp
8010524c:	89 e5                	mov    %esp,%ebp
8010524e:	83 ec 08             	sub    $0x8,%esp
80105251:	e8 3e ec ff ff       	call   80103e94 <getlevel>
80105256:	c9                   	leave  
80105257:	c3                   	ret    

80105258 <alltraps>:
80105258:	1e                   	push   %ds
80105259:	06                   	push   %es
8010525a:	0f a0                	push   %fs
8010525c:	0f a8                	push   %gs
8010525e:	60                   	pusha  
8010525f:	66 b8 10 00          	mov    $0x10,%ax
80105263:	8e d8                	mov    %eax,%ds
80105265:	8e c0                	mov    %eax,%es
80105267:	54                   	push   %esp
80105268:	e8 bd 00 00 00       	call   8010532a <trap>
8010526d:	83 c4 04             	add    $0x4,%esp

80105270 <trapret>:
80105270:	61                   	popa   
80105271:	0f a9                	pop    %gs
80105273:	0f a1                	pop    %fs
80105275:	07                   	pop    %es
80105276:	1f                   	pop    %ds
80105277:	83 c4 08             	add    $0x8,%esp
8010527a:	cf                   	iret   

8010527b <tvinit>:
struct spinlock tickslock;
uint ticks;

void
tvinit(void)
{
8010527b:	55                   	push   %ebp
8010527c:	89 e5                	mov    %esp,%ebp
8010527e:	83 ec 08             	sub    $0x8,%esp
  int i;

  for(i = 0; i < 256; i++)
80105281:	b8 00 00 00 00       	mov    $0x0,%eax
    SETGATE(idt[i], 0, SEG_KCODE<<3, vectors[i], 0);
80105286:	8b 14 85 08 a0 10 80 	mov    -0x7fef5ff8(,%eax,4),%edx
8010528d:	66 89 14 c5 e0 4f 11 	mov    %dx,-0x7feeb020(,%eax,8)
80105294:	80 
80105295:	66 c7 04 c5 e2 4f 11 	movw   $0x8,-0x7feeb01e(,%eax,8)
8010529c:	80 08 00 
8010529f:	c6 04 c5 e4 4f 11 80 	movb   $0x0,-0x7feeb01c(,%eax,8)
801052a6:	00 
801052a7:	c6 04 c5 e5 4f 11 80 	movb   $0x8e,-0x7feeb01b(,%eax,8)
801052ae:	8e 
801052af:	c1 ea 10             	shr    $0x10,%edx
801052b2:	66 89 14 c5 e6 4f 11 	mov    %dx,-0x7feeb01a(,%eax,8)
801052b9:	80 
  for(i = 0; i < 256; i++)
801052ba:	83 c0 01             	add    $0x1,%eax
801052bd:	3d 00 01 00 00       	cmp    $0x100,%eax
801052c2:	75 c2                	jne    80105286 <tvinit+0xb>
  SETGATE(idt[T_SYSCALL], 1, SEG_KCODE<<3, vectors[T_SYSCALL], DPL_USER);
801052c4:	a1 08 a1 10 80       	mov    0x8010a108,%eax
801052c9:	66 a3 e0 51 11 80    	mov    %ax,0x801151e0
801052cf:	66 c7 05 e2 51 11 80 	movw   $0x8,0x801151e2
801052d6:	08 00 
801052d8:	c6 05 e4 51 11 80 00 	movb   $0x0,0x801151e4
801052df:	c6 05 e5 51 11 80 ef 	movb   $0xef,0x801151e5
801052e6:	c1 e8 10             	shr    $0x10,%eax
801052e9:	66 a3 e6 51 11 80    	mov    %ax,0x801151e6

  initlock(&tickslock, "time");
801052ef:	83 ec 08             	sub    $0x8,%esp
801052f2:	68 bd 71 10 80       	push   $0x801071bd
801052f7:	68 a0 4f 11 80       	push   $0x80114fa0
801052fc:	e8 d4 ec ff ff       	call   80103fd5 <initlock>
}
80105301:	83 c4 10             	add    $0x10,%esp
80105304:	c9                   	leave  
80105305:	c3                   	ret    

80105306 <idtinit>:

void
idtinit(void)
{
80105306:	55                   	push   %ebp
80105307:	89 e5                	mov    %esp,%ebp
80105309:	83 ec 10             	sub    $0x10,%esp
  pd[0] = size-1;
8010530c:	66 c7 45 fa ff 07    	movw   $0x7ff,-0x6(%ebp)
  pd[1] = (uint)p;
80105312:	b8 e0 4f 11 80       	mov    $0x80114fe0,%eax
80105317:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  pd[2] = (uint)p >> 16;
8010531b:	c1 e8 10             	shr    $0x10,%eax
8010531e:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
  asm volatile("lidt (%0)" : : "r" (pd));
80105322:	8d 45 fa             	lea    -0x6(%ebp),%eax
80105325:	0f 01 18             	lidtl  (%eax)
  lidt(idt, sizeof(idt));
}
80105328:	c9                   	leave  
80105329:	c3                   	ret    

8010532a <trap>:

//PAGEBREAK: 41
void
trap(struct trapframe *tf)
{
8010532a:	55                   	push   %ebp
8010532b:	89 e5                	mov    %esp,%ebp
8010532d:	57                   	push   %edi
8010532e:	56                   	push   %esi
8010532f:	53                   	push   %ebx
80105330:	83 ec 1c             	sub    $0x1c,%esp
80105333:	8b 7d 08             	mov    0x8(%ebp),%edi
  if(tf->trapno == T_SYSCALL){
80105336:	8b 47 30             	mov    0x30(%edi),%eax
80105339:	83 f8 40             	cmp    $0x40,%eax
8010533c:	74 13                	je     80105351 <trap+0x27>
    if(myproc()->killed)
      exit();
    return;
  }

  switch(tf->trapno){
8010533e:	83 e8 20             	sub    $0x20,%eax
80105341:	83 f8 1f             	cmp    $0x1f,%eax
80105344:	0f 87 48 01 00 00    	ja     80105492 <trap+0x168>
8010534a:	ff 24 85 64 72 10 80 	jmp    *-0x7fef8d9c(,%eax,4)
    if(myproc()->killed)
80105351:	e8 9b e2 ff ff       	call   801035f1 <myproc>
80105356:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
8010535a:	75 26                	jne    80105382 <trap+0x58>
    myproc()->tf = tf;
8010535c:	e8 90 e2 ff ff       	call   801035f1 <myproc>
80105361:	89 78 18             	mov    %edi,0x18(%eax)
    syscall();
80105364:	e8 a2 f1 ff ff       	call   8010450b <syscall>
    if(myproc()->killed)
80105369:	e8 83 e2 ff ff       	call   801035f1 <myproc>
8010536e:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80105372:	0f 84 d4 00 00 00    	je     8010544c <trap+0x122>
      exit();
80105378:	e8 25 e7 ff ff       	call   80103aa2 <exit>
8010537d:	e9 ca 00 00 00       	jmp    8010544c <trap+0x122>
      exit();
80105382:	e8 1b e7 ff ff       	call   80103aa2 <exit>
80105387:	eb d3                	jmp    8010535c <trap+0x32>
  case T_IRQ0 + IRQ_TIMER:
    if(cpuid() == 0){
80105389:	e8 48 e2 ff ff       	call   801035d6 <cpuid>
8010538e:	85 c0                	test   %eax,%eax
80105390:	74 16                	je     801053a8 <trap+0x7e>
      ticks++;
      wakeup(&ticks);
      release(&tickslock);
    }
    
    struct proc* p = myproc();
80105392:	e8 5a e2 ff ff       	call   801035f1 <myproc>
    if(p && p->state == RUNNING) {
80105397:	85 c0                	test   %eax,%eax
80105399:	74 06                	je     801053a1 <trap+0x77>
8010539b:	83 78 0c 04          	cmpl   $0x4,0xc(%eax)
8010539f:	74 38                	je     801053d9 <trap+0xaf>
        lapiceoi();
        yield();
        break;
      }
    }
    lapiceoi();
801053a1:	e8 b4 d0 ff ff       	call   8010245a <lapiceoi>
    break;
801053a6:	eb 5a                	jmp    80105402 <trap+0xd8>
      acquire(&tickslock);
801053a8:	83 ec 0c             	sub    $0xc,%esp
801053ab:	68 a0 4f 11 80       	push   $0x80114fa0
801053b0:	e8 68 ed ff ff       	call   8010411d <acquire>
      ticks++;
801053b5:	83 05 e0 57 11 80 01 	addl   $0x1,0x801157e0
      wakeup(&ticks);
801053bc:	c7 04 24 e0 57 11 80 	movl   $0x801157e0,(%esp)
801053c3:	e8 53 e9 ff ff       	call   80103d1b <wakeup>
      release(&tickslock);
801053c8:	c7 04 24 a0 4f 11 80 	movl   $0x80114fa0,(%esp)
801053cf:	e8 b0 ed ff ff       	call   80104184 <release>
801053d4:	83 c4 10             	add    $0x10,%esp
801053d7:	eb b9                	jmp    80105392 <trap+0x68>
      p->leftTime--;
801053d9:	8b 88 84 00 00 00    	mov    0x84(%eax),%ecx
801053df:	8d 51 ff             	lea    -0x1(%ecx),%edx
801053e2:	89 90 84 00 00 00    	mov    %edx,0x84(%eax)
      if(p->leftTime == 0) {
801053e8:	85 d2                	test   %edx,%edx
801053ea:	75 b5                	jne    801053a1 <trap+0x77>
        lapiceoi();
801053ec:	e8 69 d0 ff ff       	call   8010245a <lapiceoi>
        yield();
801053f1:	e8 73 e7 ff ff       	call   80103b69 <yield>
        break;
801053f6:	eb 0a                	jmp    80105402 <trap+0xd8>
    case T_IRQ0 + IRQ_IDE:
    ideintr();
801053f8:	e8 f3 c9 ff ff       	call   80101df0 <ideintr>
    lapiceoi();
801053fd:	e8 58 d0 ff ff       	call   8010245a <lapiceoi>
  }

  // Force process exit if it has been killed and is in user space.
  // (If it is still executing in the kernel, let it keep running
  // until it gets to the regular system call return.)
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
80105402:	e8 ea e1 ff ff       	call   801035f1 <myproc>
80105407:	85 c0                	test   %eax,%eax
80105409:	74 1c                	je     80105427 <trap+0xfd>
8010540b:	e8 e1 e1 ff ff       	call   801035f1 <myproc>
80105410:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80105414:	74 11                	je     80105427 <trap+0xfd>
80105416:	0f b7 47 3c          	movzwl 0x3c(%edi),%eax
8010541a:	83 e0 03             	and    $0x3,%eax
8010541d:	66 83 f8 03          	cmp    $0x3,%ax
80105421:	0f 84 ff 00 00 00    	je     80105526 <trap+0x1fc>
  // if(myproc() && myproc()->state == RUNNING &&
  //    tf->trapno == T_IRQ0+IRQ_TIMER)
  //   yield();

  // Check if the process has been killed since we yielded
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
80105427:	e8 c5 e1 ff ff       	call   801035f1 <myproc>
8010542c:	85 c0                	test   %eax,%eax
8010542e:	74 1c                	je     8010544c <trap+0x122>
80105430:	e8 bc e1 ff ff       	call   801035f1 <myproc>
80105435:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80105439:	74 11                	je     8010544c <trap+0x122>
8010543b:	0f b7 47 3c          	movzwl 0x3c(%edi),%eax
8010543f:	83 e0 03             	and    $0x3,%eax
80105442:	66 83 f8 03          	cmp    $0x3,%ax
80105446:	0f 84 e4 00 00 00    	je     80105530 <trap+0x206>
    exit();
}
8010544c:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010544f:	5b                   	pop    %ebx
80105450:	5e                   	pop    %esi
80105451:	5f                   	pop    %edi
80105452:	5d                   	pop    %ebp
80105453:	c3                   	ret    
    kbdintr();
80105454:	e8 35 ce ff ff       	call   8010228e <kbdintr>
    lapiceoi();
80105459:	e8 fc cf ff ff       	call   8010245a <lapiceoi>
    break;
8010545e:	eb a2                	jmp    80105402 <trap+0xd8>
    uartintr();
80105460:	e8 03 02 00 00       	call   80105668 <uartintr>
    lapiceoi();
80105465:	e8 f0 cf ff ff       	call   8010245a <lapiceoi>
    break;
8010546a:	eb 96                	jmp    80105402 <trap+0xd8>
    cprintf("cpu%d: spurious interrupt at %x:%x\n",
8010546c:	8b 77 38             	mov    0x38(%edi),%esi
8010546f:	0f b7 5f 3c          	movzwl 0x3c(%edi),%ebx
80105473:	e8 5e e1 ff ff       	call   801035d6 <cpuid>
80105478:	56                   	push   %esi
80105479:	53                   	push   %ebx
8010547a:	50                   	push   %eax
8010547b:	68 c8 71 10 80       	push   $0x801071c8
80105480:	e8 5c b1 ff ff       	call   801005e1 <cprintf>
    lapiceoi();
80105485:	e8 d0 cf ff ff       	call   8010245a <lapiceoi>
    break;
8010548a:	83 c4 10             	add    $0x10,%esp
8010548d:	e9 70 ff ff ff       	jmp    80105402 <trap+0xd8>
    if(myproc() == 0 || (tf->cs&3) == 0){
80105492:	e8 5a e1 ff ff       	call   801035f1 <myproc>
80105497:	85 c0                	test   %eax,%eax
80105499:	74 60                	je     801054fb <trap+0x1d1>
8010549b:	f6 47 3c 03          	testb  $0x3,0x3c(%edi)
8010549f:	74 5a                	je     801054fb <trap+0x1d1>

static inline uint
rcr2(void)
{
  uint val;
  asm volatile("movl %%cr2,%0" : "=r" (val));
801054a1:	0f 20 d0             	mov    %cr2,%eax
801054a4:	89 45 d8             	mov    %eax,-0x28(%ebp)
    cprintf("pid %d %s: trap %d err %d on cpu %d "
801054a7:	8b 77 38             	mov    0x38(%edi),%esi
801054aa:	e8 27 e1 ff ff       	call   801035d6 <cpuid>
801054af:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801054b2:	8b 5f 34             	mov    0x34(%edi),%ebx
801054b5:	8b 4f 30             	mov    0x30(%edi),%ecx
801054b8:	89 4d e0             	mov    %ecx,-0x20(%ebp)
            myproc()->pid, myproc()->name, tf->trapno,
801054bb:	e8 31 e1 ff ff       	call   801035f1 <myproc>
801054c0:	89 45 dc             	mov    %eax,-0x24(%ebp)
801054c3:	e8 29 e1 ff ff       	call   801035f1 <myproc>
    cprintf("pid %d %s: trap %d err %d on cpu %d "
801054c8:	ff 75 d8             	pushl  -0x28(%ebp)
801054cb:	56                   	push   %esi
801054cc:	ff 75 e4             	pushl  -0x1c(%ebp)
801054cf:	53                   	push   %ebx
801054d0:	ff 75 e0             	pushl  -0x20(%ebp)
            myproc()->pid, myproc()->name, tf->trapno,
801054d3:	8b 55 dc             	mov    -0x24(%ebp),%edx
801054d6:	83 c2 6c             	add    $0x6c,%edx
    cprintf("pid %d %s: trap %d err %d on cpu %d "
801054d9:	52                   	push   %edx
801054da:	ff 70 10             	pushl  0x10(%eax)
801054dd:	68 20 72 10 80       	push   $0x80107220
801054e2:	e8 fa b0 ff ff       	call   801005e1 <cprintf>
    myproc()->killed = 1;
801054e7:	83 c4 20             	add    $0x20,%esp
801054ea:	e8 02 e1 ff ff       	call   801035f1 <myproc>
801054ef:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
801054f6:	e9 07 ff ff ff       	jmp    80105402 <trap+0xd8>
801054fb:	0f 20 d6             	mov    %cr2,%esi
      cprintf("unexpected trap %d from cpu %d eip %x (cr2=0x%x)\n",
801054fe:	8b 5f 38             	mov    0x38(%edi),%ebx
80105501:	e8 d0 e0 ff ff       	call   801035d6 <cpuid>
80105506:	83 ec 0c             	sub    $0xc,%esp
80105509:	56                   	push   %esi
8010550a:	53                   	push   %ebx
8010550b:	50                   	push   %eax
8010550c:	ff 77 30             	pushl  0x30(%edi)
8010550f:	68 ec 71 10 80       	push   $0x801071ec
80105514:	e8 c8 b0 ff ff       	call   801005e1 <cprintf>
      panic("trap");
80105519:	83 c4 14             	add    $0x14,%esp
8010551c:	68 c2 71 10 80       	push   $0x801071c2
80105521:	e8 1e ae ff ff       	call   80100344 <panic>
    exit();
80105526:	e8 77 e5 ff ff       	call   80103aa2 <exit>
8010552b:	e9 f7 fe ff ff       	jmp    80105427 <trap+0xfd>
    exit();
80105530:	e8 6d e5 ff ff       	call   80103aa2 <exit>
80105535:	e9 12 ff ff ff       	jmp    8010544c <trap+0x122>

8010553a <uartgetc>:
8010553a:	55                   	push   %ebp
8010553b:	89 e5                	mov    %esp,%ebp
8010553d:	83 3d c8 a5 10 80 00 	cmpl   $0x0,0x8010a5c8
80105544:	74 15                	je     8010555b <uartgetc+0x21>
80105546:	ba fd 03 00 00       	mov    $0x3fd,%edx
8010554b:	ec                   	in     (%dx),%al
8010554c:	a8 01                	test   $0x1,%al
8010554e:	74 12                	je     80105562 <uartgetc+0x28>
80105550:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105555:	ec                   	in     (%dx),%al
80105556:	0f b6 c0             	movzbl %al,%eax
80105559:	5d                   	pop    %ebp
8010555a:	c3                   	ret    
8010555b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105560:	eb f7                	jmp    80105559 <uartgetc+0x1f>
80105562:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105567:	eb f0                	jmp    80105559 <uartgetc+0x1f>

80105569 <uartputc>:
80105569:	83 3d c8 a5 10 80 00 	cmpl   $0x0,0x8010a5c8
80105570:	74 4f                	je     801055c1 <uartputc+0x58>
80105572:	55                   	push   %ebp
80105573:	89 e5                	mov    %esp,%ebp
80105575:	56                   	push   %esi
80105576:	53                   	push   %ebx
80105577:	ba fd 03 00 00       	mov    $0x3fd,%edx
8010557c:	ec                   	in     (%dx),%al
8010557d:	a8 20                	test   $0x20,%al
8010557f:	75 30                	jne    801055b1 <uartputc+0x48>
80105581:	83 ec 0c             	sub    $0xc,%esp
80105584:	6a 0a                	push   $0xa
80105586:	e8 ee ce ff ff       	call   80102479 <microdelay>
8010558b:	83 c4 10             	add    $0x10,%esp
8010558e:	bb 7f 00 00 00       	mov    $0x7f,%ebx
80105593:	be fd 03 00 00       	mov    $0x3fd,%esi
80105598:	89 f2                	mov    %esi,%edx
8010559a:	ec                   	in     (%dx),%al
8010559b:	a8 20                	test   $0x20,%al
8010559d:	75 12                	jne    801055b1 <uartputc+0x48>
8010559f:	83 ec 0c             	sub    $0xc,%esp
801055a2:	6a 0a                	push   $0xa
801055a4:	e8 d0 ce ff ff       	call   80102479 <microdelay>
801055a9:	83 c4 10             	add    $0x10,%esp
801055ac:	83 eb 01             	sub    $0x1,%ebx
801055af:	75 e7                	jne    80105598 <uartputc+0x2f>
801055b1:	8b 45 08             	mov    0x8(%ebp),%eax
801055b4:	ba f8 03 00 00       	mov    $0x3f8,%edx
801055b9:	ee                   	out    %al,(%dx)
801055ba:	8d 65 f8             	lea    -0x8(%ebp),%esp
801055bd:	5b                   	pop    %ebx
801055be:	5e                   	pop    %esi
801055bf:	5d                   	pop    %ebp
801055c0:	c3                   	ret    
801055c1:	f3 c3                	repz ret 

801055c3 <uartinit>:
801055c3:	55                   	push   %ebp
801055c4:	89 e5                	mov    %esp,%ebp
801055c6:	56                   	push   %esi
801055c7:	53                   	push   %ebx
801055c8:	b9 00 00 00 00       	mov    $0x0,%ecx
801055cd:	ba fa 03 00 00       	mov    $0x3fa,%edx
801055d2:	89 c8                	mov    %ecx,%eax
801055d4:	ee                   	out    %al,(%dx)
801055d5:	be fb 03 00 00       	mov    $0x3fb,%esi
801055da:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
801055df:	89 f2                	mov    %esi,%edx
801055e1:	ee                   	out    %al,(%dx)
801055e2:	b8 0c 00 00 00       	mov    $0xc,%eax
801055e7:	ba f8 03 00 00       	mov    $0x3f8,%edx
801055ec:	ee                   	out    %al,(%dx)
801055ed:	bb f9 03 00 00       	mov    $0x3f9,%ebx
801055f2:	89 c8                	mov    %ecx,%eax
801055f4:	89 da                	mov    %ebx,%edx
801055f6:	ee                   	out    %al,(%dx)
801055f7:	b8 03 00 00 00       	mov    $0x3,%eax
801055fc:	89 f2                	mov    %esi,%edx
801055fe:	ee                   	out    %al,(%dx)
801055ff:	ba fc 03 00 00       	mov    $0x3fc,%edx
80105604:	89 c8                	mov    %ecx,%eax
80105606:	ee                   	out    %al,(%dx)
80105607:	b8 01 00 00 00       	mov    $0x1,%eax
8010560c:	89 da                	mov    %ebx,%edx
8010560e:	ee                   	out    %al,(%dx)
8010560f:	ba fd 03 00 00       	mov    $0x3fd,%edx
80105614:	ec                   	in     (%dx),%al
80105615:	3c ff                	cmp    $0xff,%al
80105617:	74 48                	je     80105661 <uartinit+0x9e>
80105619:	c7 05 c8 a5 10 80 01 	movl   $0x1,0x8010a5c8
80105620:	00 00 00 
80105623:	ba fa 03 00 00       	mov    $0x3fa,%edx
80105628:	ec                   	in     (%dx),%al
80105629:	ba f8 03 00 00       	mov    $0x3f8,%edx
8010562e:	ec                   	in     (%dx),%al
8010562f:	83 ec 08             	sub    $0x8,%esp
80105632:	6a 00                	push   $0x0
80105634:	6a 04                	push   $0x4
80105636:	e8 cb c9 ff ff       	call   80102006 <ioapicenable>
8010563b:	83 c4 10             	add    $0x10,%esp
8010563e:	bb e4 72 10 80       	mov    $0x801072e4,%ebx
80105643:	b8 78 00 00 00       	mov    $0x78,%eax
80105648:	83 ec 0c             	sub    $0xc,%esp
8010564b:	0f be c0             	movsbl %al,%eax
8010564e:	50                   	push   %eax
8010564f:	e8 15 ff ff ff       	call   80105569 <uartputc>
80105654:	83 c3 01             	add    $0x1,%ebx
80105657:	0f b6 03             	movzbl (%ebx),%eax
8010565a:	83 c4 10             	add    $0x10,%esp
8010565d:	84 c0                	test   %al,%al
8010565f:	75 e7                	jne    80105648 <uartinit+0x85>
80105661:	8d 65 f8             	lea    -0x8(%ebp),%esp
80105664:	5b                   	pop    %ebx
80105665:	5e                   	pop    %esi
80105666:	5d                   	pop    %ebp
80105667:	c3                   	ret    

80105668 <uartintr>:
80105668:	55                   	push   %ebp
80105669:	89 e5                	mov    %esp,%ebp
8010566b:	83 ec 14             	sub    $0x14,%esp
8010566e:	68 3a 55 10 80       	push   $0x8010553a
80105673:	e8 c3 b0 ff ff       	call   8010073b <consoleintr>
80105678:	83 c4 10             	add    $0x10,%esp
8010567b:	c9                   	leave  
8010567c:	c3                   	ret    

8010567d <vector0>:
8010567d:	6a 00                	push   $0x0
8010567f:	6a 00                	push   $0x0
80105681:	e9 d2 fb ff ff       	jmp    80105258 <alltraps>

80105686 <vector1>:
80105686:	6a 00                	push   $0x0
80105688:	6a 01                	push   $0x1
8010568a:	e9 c9 fb ff ff       	jmp    80105258 <alltraps>

8010568f <vector2>:
8010568f:	6a 00                	push   $0x0
80105691:	6a 02                	push   $0x2
80105693:	e9 c0 fb ff ff       	jmp    80105258 <alltraps>

80105698 <vector3>:
80105698:	6a 00                	push   $0x0
8010569a:	6a 03                	push   $0x3
8010569c:	e9 b7 fb ff ff       	jmp    80105258 <alltraps>

801056a1 <vector4>:
801056a1:	6a 00                	push   $0x0
801056a3:	6a 04                	push   $0x4
801056a5:	e9 ae fb ff ff       	jmp    80105258 <alltraps>

801056aa <vector5>:
801056aa:	6a 00                	push   $0x0
801056ac:	6a 05                	push   $0x5
801056ae:	e9 a5 fb ff ff       	jmp    80105258 <alltraps>

801056b3 <vector6>:
801056b3:	6a 00                	push   $0x0
801056b5:	6a 06                	push   $0x6
801056b7:	e9 9c fb ff ff       	jmp    80105258 <alltraps>

801056bc <vector7>:
801056bc:	6a 00                	push   $0x0
801056be:	6a 07                	push   $0x7
801056c0:	e9 93 fb ff ff       	jmp    80105258 <alltraps>

801056c5 <vector8>:
801056c5:	6a 08                	push   $0x8
801056c7:	e9 8c fb ff ff       	jmp    80105258 <alltraps>

801056cc <vector9>:
801056cc:	6a 00                	push   $0x0
801056ce:	6a 09                	push   $0x9
801056d0:	e9 83 fb ff ff       	jmp    80105258 <alltraps>

801056d5 <vector10>:
801056d5:	6a 0a                	push   $0xa
801056d7:	e9 7c fb ff ff       	jmp    80105258 <alltraps>

801056dc <vector11>:
801056dc:	6a 0b                	push   $0xb
801056de:	e9 75 fb ff ff       	jmp    80105258 <alltraps>

801056e3 <vector12>:
801056e3:	6a 0c                	push   $0xc
801056e5:	e9 6e fb ff ff       	jmp    80105258 <alltraps>

801056ea <vector13>:
801056ea:	6a 0d                	push   $0xd
801056ec:	e9 67 fb ff ff       	jmp    80105258 <alltraps>

801056f1 <vector14>:
801056f1:	6a 0e                	push   $0xe
801056f3:	e9 60 fb ff ff       	jmp    80105258 <alltraps>

801056f8 <vector15>:
801056f8:	6a 00                	push   $0x0
801056fa:	6a 0f                	push   $0xf
801056fc:	e9 57 fb ff ff       	jmp    80105258 <alltraps>

80105701 <vector16>:
80105701:	6a 00                	push   $0x0
80105703:	6a 10                	push   $0x10
80105705:	e9 4e fb ff ff       	jmp    80105258 <alltraps>

8010570a <vector17>:
8010570a:	6a 11                	push   $0x11
8010570c:	e9 47 fb ff ff       	jmp    80105258 <alltraps>

80105711 <vector18>:
80105711:	6a 00                	push   $0x0
80105713:	6a 12                	push   $0x12
80105715:	e9 3e fb ff ff       	jmp    80105258 <alltraps>

8010571a <vector19>:
8010571a:	6a 00                	push   $0x0
8010571c:	6a 13                	push   $0x13
8010571e:	e9 35 fb ff ff       	jmp    80105258 <alltraps>

80105723 <vector20>:
80105723:	6a 00                	push   $0x0
80105725:	6a 14                	push   $0x14
80105727:	e9 2c fb ff ff       	jmp    80105258 <alltraps>

8010572c <vector21>:
8010572c:	6a 00                	push   $0x0
8010572e:	6a 15                	push   $0x15
80105730:	e9 23 fb ff ff       	jmp    80105258 <alltraps>

80105735 <vector22>:
80105735:	6a 00                	push   $0x0
80105737:	6a 16                	push   $0x16
80105739:	e9 1a fb ff ff       	jmp    80105258 <alltraps>

8010573e <vector23>:
8010573e:	6a 00                	push   $0x0
80105740:	6a 17                	push   $0x17
80105742:	e9 11 fb ff ff       	jmp    80105258 <alltraps>

80105747 <vector24>:
80105747:	6a 00                	push   $0x0
80105749:	6a 18                	push   $0x18
8010574b:	e9 08 fb ff ff       	jmp    80105258 <alltraps>

80105750 <vector25>:
80105750:	6a 00                	push   $0x0
80105752:	6a 19                	push   $0x19
80105754:	e9 ff fa ff ff       	jmp    80105258 <alltraps>

80105759 <vector26>:
80105759:	6a 00                	push   $0x0
8010575b:	6a 1a                	push   $0x1a
8010575d:	e9 f6 fa ff ff       	jmp    80105258 <alltraps>

80105762 <vector27>:
80105762:	6a 00                	push   $0x0
80105764:	6a 1b                	push   $0x1b
80105766:	e9 ed fa ff ff       	jmp    80105258 <alltraps>

8010576b <vector28>:
8010576b:	6a 00                	push   $0x0
8010576d:	6a 1c                	push   $0x1c
8010576f:	e9 e4 fa ff ff       	jmp    80105258 <alltraps>

80105774 <vector29>:
80105774:	6a 00                	push   $0x0
80105776:	6a 1d                	push   $0x1d
80105778:	e9 db fa ff ff       	jmp    80105258 <alltraps>

8010577d <vector30>:
8010577d:	6a 00                	push   $0x0
8010577f:	6a 1e                	push   $0x1e
80105781:	e9 d2 fa ff ff       	jmp    80105258 <alltraps>

80105786 <vector31>:
80105786:	6a 00                	push   $0x0
80105788:	6a 1f                	push   $0x1f
8010578a:	e9 c9 fa ff ff       	jmp    80105258 <alltraps>

8010578f <vector32>:
8010578f:	6a 00                	push   $0x0
80105791:	6a 20                	push   $0x20
80105793:	e9 c0 fa ff ff       	jmp    80105258 <alltraps>

80105798 <vector33>:
80105798:	6a 00                	push   $0x0
8010579a:	6a 21                	push   $0x21
8010579c:	e9 b7 fa ff ff       	jmp    80105258 <alltraps>

801057a1 <vector34>:
801057a1:	6a 00                	push   $0x0
801057a3:	6a 22                	push   $0x22
801057a5:	e9 ae fa ff ff       	jmp    80105258 <alltraps>

801057aa <vector35>:
801057aa:	6a 00                	push   $0x0
801057ac:	6a 23                	push   $0x23
801057ae:	e9 a5 fa ff ff       	jmp    80105258 <alltraps>

801057b3 <vector36>:
801057b3:	6a 00                	push   $0x0
801057b5:	6a 24                	push   $0x24
801057b7:	e9 9c fa ff ff       	jmp    80105258 <alltraps>

801057bc <vector37>:
801057bc:	6a 00                	push   $0x0
801057be:	6a 25                	push   $0x25
801057c0:	e9 93 fa ff ff       	jmp    80105258 <alltraps>

801057c5 <vector38>:
801057c5:	6a 00                	push   $0x0
801057c7:	6a 26                	push   $0x26
801057c9:	e9 8a fa ff ff       	jmp    80105258 <alltraps>

801057ce <vector39>:
801057ce:	6a 00                	push   $0x0
801057d0:	6a 27                	push   $0x27
801057d2:	e9 81 fa ff ff       	jmp    80105258 <alltraps>

801057d7 <vector40>:
801057d7:	6a 00                	push   $0x0
801057d9:	6a 28                	push   $0x28
801057db:	e9 78 fa ff ff       	jmp    80105258 <alltraps>

801057e0 <vector41>:
801057e0:	6a 00                	push   $0x0
801057e2:	6a 29                	push   $0x29
801057e4:	e9 6f fa ff ff       	jmp    80105258 <alltraps>

801057e9 <vector42>:
801057e9:	6a 00                	push   $0x0
801057eb:	6a 2a                	push   $0x2a
801057ed:	e9 66 fa ff ff       	jmp    80105258 <alltraps>

801057f2 <vector43>:
801057f2:	6a 00                	push   $0x0
801057f4:	6a 2b                	push   $0x2b
801057f6:	e9 5d fa ff ff       	jmp    80105258 <alltraps>

801057fb <vector44>:
801057fb:	6a 00                	push   $0x0
801057fd:	6a 2c                	push   $0x2c
801057ff:	e9 54 fa ff ff       	jmp    80105258 <alltraps>

80105804 <vector45>:
80105804:	6a 00                	push   $0x0
80105806:	6a 2d                	push   $0x2d
80105808:	e9 4b fa ff ff       	jmp    80105258 <alltraps>

8010580d <vector46>:
8010580d:	6a 00                	push   $0x0
8010580f:	6a 2e                	push   $0x2e
80105811:	e9 42 fa ff ff       	jmp    80105258 <alltraps>

80105816 <vector47>:
80105816:	6a 00                	push   $0x0
80105818:	6a 2f                	push   $0x2f
8010581a:	e9 39 fa ff ff       	jmp    80105258 <alltraps>

8010581f <vector48>:
8010581f:	6a 00                	push   $0x0
80105821:	6a 30                	push   $0x30
80105823:	e9 30 fa ff ff       	jmp    80105258 <alltraps>

80105828 <vector49>:
80105828:	6a 00                	push   $0x0
8010582a:	6a 31                	push   $0x31
8010582c:	e9 27 fa ff ff       	jmp    80105258 <alltraps>

80105831 <vector50>:
80105831:	6a 00                	push   $0x0
80105833:	6a 32                	push   $0x32
80105835:	e9 1e fa ff ff       	jmp    80105258 <alltraps>

8010583a <vector51>:
8010583a:	6a 00                	push   $0x0
8010583c:	6a 33                	push   $0x33
8010583e:	e9 15 fa ff ff       	jmp    80105258 <alltraps>

80105843 <vector52>:
80105843:	6a 00                	push   $0x0
80105845:	6a 34                	push   $0x34
80105847:	e9 0c fa ff ff       	jmp    80105258 <alltraps>

8010584c <vector53>:
8010584c:	6a 00                	push   $0x0
8010584e:	6a 35                	push   $0x35
80105850:	e9 03 fa ff ff       	jmp    80105258 <alltraps>

80105855 <vector54>:
80105855:	6a 00                	push   $0x0
80105857:	6a 36                	push   $0x36
80105859:	e9 fa f9 ff ff       	jmp    80105258 <alltraps>

8010585e <vector55>:
8010585e:	6a 00                	push   $0x0
80105860:	6a 37                	push   $0x37
80105862:	e9 f1 f9 ff ff       	jmp    80105258 <alltraps>

80105867 <vector56>:
80105867:	6a 00                	push   $0x0
80105869:	6a 38                	push   $0x38
8010586b:	e9 e8 f9 ff ff       	jmp    80105258 <alltraps>

80105870 <vector57>:
80105870:	6a 00                	push   $0x0
80105872:	6a 39                	push   $0x39
80105874:	e9 df f9 ff ff       	jmp    80105258 <alltraps>

80105879 <vector58>:
80105879:	6a 00                	push   $0x0
8010587b:	6a 3a                	push   $0x3a
8010587d:	e9 d6 f9 ff ff       	jmp    80105258 <alltraps>

80105882 <vector59>:
80105882:	6a 00                	push   $0x0
80105884:	6a 3b                	push   $0x3b
80105886:	e9 cd f9 ff ff       	jmp    80105258 <alltraps>

8010588b <vector60>:
8010588b:	6a 00                	push   $0x0
8010588d:	6a 3c                	push   $0x3c
8010588f:	e9 c4 f9 ff ff       	jmp    80105258 <alltraps>

80105894 <vector61>:
80105894:	6a 00                	push   $0x0
80105896:	6a 3d                	push   $0x3d
80105898:	e9 bb f9 ff ff       	jmp    80105258 <alltraps>

8010589d <vector62>:
8010589d:	6a 00                	push   $0x0
8010589f:	6a 3e                	push   $0x3e
801058a1:	e9 b2 f9 ff ff       	jmp    80105258 <alltraps>

801058a6 <vector63>:
801058a6:	6a 00                	push   $0x0
801058a8:	6a 3f                	push   $0x3f
801058aa:	e9 a9 f9 ff ff       	jmp    80105258 <alltraps>

801058af <vector64>:
801058af:	6a 00                	push   $0x0
801058b1:	6a 40                	push   $0x40
801058b3:	e9 a0 f9 ff ff       	jmp    80105258 <alltraps>

801058b8 <vector65>:
801058b8:	6a 00                	push   $0x0
801058ba:	6a 41                	push   $0x41
801058bc:	e9 97 f9 ff ff       	jmp    80105258 <alltraps>

801058c1 <vector66>:
801058c1:	6a 00                	push   $0x0
801058c3:	6a 42                	push   $0x42
801058c5:	e9 8e f9 ff ff       	jmp    80105258 <alltraps>

801058ca <vector67>:
801058ca:	6a 00                	push   $0x0
801058cc:	6a 43                	push   $0x43
801058ce:	e9 85 f9 ff ff       	jmp    80105258 <alltraps>

801058d3 <vector68>:
801058d3:	6a 00                	push   $0x0
801058d5:	6a 44                	push   $0x44
801058d7:	e9 7c f9 ff ff       	jmp    80105258 <alltraps>

801058dc <vector69>:
801058dc:	6a 00                	push   $0x0
801058de:	6a 45                	push   $0x45
801058e0:	e9 73 f9 ff ff       	jmp    80105258 <alltraps>

801058e5 <vector70>:
801058e5:	6a 00                	push   $0x0
801058e7:	6a 46                	push   $0x46
801058e9:	e9 6a f9 ff ff       	jmp    80105258 <alltraps>

801058ee <vector71>:
801058ee:	6a 00                	push   $0x0
801058f0:	6a 47                	push   $0x47
801058f2:	e9 61 f9 ff ff       	jmp    80105258 <alltraps>

801058f7 <vector72>:
801058f7:	6a 00                	push   $0x0
801058f9:	6a 48                	push   $0x48
801058fb:	e9 58 f9 ff ff       	jmp    80105258 <alltraps>

80105900 <vector73>:
80105900:	6a 00                	push   $0x0
80105902:	6a 49                	push   $0x49
80105904:	e9 4f f9 ff ff       	jmp    80105258 <alltraps>

80105909 <vector74>:
80105909:	6a 00                	push   $0x0
8010590b:	6a 4a                	push   $0x4a
8010590d:	e9 46 f9 ff ff       	jmp    80105258 <alltraps>

80105912 <vector75>:
80105912:	6a 00                	push   $0x0
80105914:	6a 4b                	push   $0x4b
80105916:	e9 3d f9 ff ff       	jmp    80105258 <alltraps>

8010591b <vector76>:
8010591b:	6a 00                	push   $0x0
8010591d:	6a 4c                	push   $0x4c
8010591f:	e9 34 f9 ff ff       	jmp    80105258 <alltraps>

80105924 <vector77>:
80105924:	6a 00                	push   $0x0
80105926:	6a 4d                	push   $0x4d
80105928:	e9 2b f9 ff ff       	jmp    80105258 <alltraps>

8010592d <vector78>:
8010592d:	6a 00                	push   $0x0
8010592f:	6a 4e                	push   $0x4e
80105931:	e9 22 f9 ff ff       	jmp    80105258 <alltraps>

80105936 <vector79>:
80105936:	6a 00                	push   $0x0
80105938:	6a 4f                	push   $0x4f
8010593a:	e9 19 f9 ff ff       	jmp    80105258 <alltraps>

8010593f <vector80>:
8010593f:	6a 00                	push   $0x0
80105941:	6a 50                	push   $0x50
80105943:	e9 10 f9 ff ff       	jmp    80105258 <alltraps>

80105948 <vector81>:
80105948:	6a 00                	push   $0x0
8010594a:	6a 51                	push   $0x51
8010594c:	e9 07 f9 ff ff       	jmp    80105258 <alltraps>

80105951 <vector82>:
80105951:	6a 00                	push   $0x0
80105953:	6a 52                	push   $0x52
80105955:	e9 fe f8 ff ff       	jmp    80105258 <alltraps>

8010595a <vector83>:
8010595a:	6a 00                	push   $0x0
8010595c:	6a 53                	push   $0x53
8010595e:	e9 f5 f8 ff ff       	jmp    80105258 <alltraps>

80105963 <vector84>:
80105963:	6a 00                	push   $0x0
80105965:	6a 54                	push   $0x54
80105967:	e9 ec f8 ff ff       	jmp    80105258 <alltraps>

8010596c <vector85>:
8010596c:	6a 00                	push   $0x0
8010596e:	6a 55                	push   $0x55
80105970:	e9 e3 f8 ff ff       	jmp    80105258 <alltraps>

80105975 <vector86>:
80105975:	6a 00                	push   $0x0
80105977:	6a 56                	push   $0x56
80105979:	e9 da f8 ff ff       	jmp    80105258 <alltraps>

8010597e <vector87>:
8010597e:	6a 00                	push   $0x0
80105980:	6a 57                	push   $0x57
80105982:	e9 d1 f8 ff ff       	jmp    80105258 <alltraps>

80105987 <vector88>:
80105987:	6a 00                	push   $0x0
80105989:	6a 58                	push   $0x58
8010598b:	e9 c8 f8 ff ff       	jmp    80105258 <alltraps>

80105990 <vector89>:
80105990:	6a 00                	push   $0x0
80105992:	6a 59                	push   $0x59
80105994:	e9 bf f8 ff ff       	jmp    80105258 <alltraps>

80105999 <vector90>:
80105999:	6a 00                	push   $0x0
8010599b:	6a 5a                	push   $0x5a
8010599d:	e9 b6 f8 ff ff       	jmp    80105258 <alltraps>

801059a2 <vector91>:
801059a2:	6a 00                	push   $0x0
801059a4:	6a 5b                	push   $0x5b
801059a6:	e9 ad f8 ff ff       	jmp    80105258 <alltraps>

801059ab <vector92>:
801059ab:	6a 00                	push   $0x0
801059ad:	6a 5c                	push   $0x5c
801059af:	e9 a4 f8 ff ff       	jmp    80105258 <alltraps>

801059b4 <vector93>:
801059b4:	6a 00                	push   $0x0
801059b6:	6a 5d                	push   $0x5d
801059b8:	e9 9b f8 ff ff       	jmp    80105258 <alltraps>

801059bd <vector94>:
801059bd:	6a 00                	push   $0x0
801059bf:	6a 5e                	push   $0x5e
801059c1:	e9 92 f8 ff ff       	jmp    80105258 <alltraps>

801059c6 <vector95>:
801059c6:	6a 00                	push   $0x0
801059c8:	6a 5f                	push   $0x5f
801059ca:	e9 89 f8 ff ff       	jmp    80105258 <alltraps>

801059cf <vector96>:
801059cf:	6a 00                	push   $0x0
801059d1:	6a 60                	push   $0x60
801059d3:	e9 80 f8 ff ff       	jmp    80105258 <alltraps>

801059d8 <vector97>:
801059d8:	6a 00                	push   $0x0
801059da:	6a 61                	push   $0x61
801059dc:	e9 77 f8 ff ff       	jmp    80105258 <alltraps>

801059e1 <vector98>:
801059e1:	6a 00                	push   $0x0
801059e3:	6a 62                	push   $0x62
801059e5:	e9 6e f8 ff ff       	jmp    80105258 <alltraps>

801059ea <vector99>:
801059ea:	6a 00                	push   $0x0
801059ec:	6a 63                	push   $0x63
801059ee:	e9 65 f8 ff ff       	jmp    80105258 <alltraps>

801059f3 <vector100>:
801059f3:	6a 00                	push   $0x0
801059f5:	6a 64                	push   $0x64
801059f7:	e9 5c f8 ff ff       	jmp    80105258 <alltraps>

801059fc <vector101>:
801059fc:	6a 00                	push   $0x0
801059fe:	6a 65                	push   $0x65
80105a00:	e9 53 f8 ff ff       	jmp    80105258 <alltraps>

80105a05 <vector102>:
80105a05:	6a 00                	push   $0x0
80105a07:	6a 66                	push   $0x66
80105a09:	e9 4a f8 ff ff       	jmp    80105258 <alltraps>

80105a0e <vector103>:
80105a0e:	6a 00                	push   $0x0
80105a10:	6a 67                	push   $0x67
80105a12:	e9 41 f8 ff ff       	jmp    80105258 <alltraps>

80105a17 <vector104>:
80105a17:	6a 00                	push   $0x0
80105a19:	6a 68                	push   $0x68
80105a1b:	e9 38 f8 ff ff       	jmp    80105258 <alltraps>

80105a20 <vector105>:
80105a20:	6a 00                	push   $0x0
80105a22:	6a 69                	push   $0x69
80105a24:	e9 2f f8 ff ff       	jmp    80105258 <alltraps>

80105a29 <vector106>:
80105a29:	6a 00                	push   $0x0
80105a2b:	6a 6a                	push   $0x6a
80105a2d:	e9 26 f8 ff ff       	jmp    80105258 <alltraps>

80105a32 <vector107>:
80105a32:	6a 00                	push   $0x0
80105a34:	6a 6b                	push   $0x6b
80105a36:	e9 1d f8 ff ff       	jmp    80105258 <alltraps>

80105a3b <vector108>:
80105a3b:	6a 00                	push   $0x0
80105a3d:	6a 6c                	push   $0x6c
80105a3f:	e9 14 f8 ff ff       	jmp    80105258 <alltraps>

80105a44 <vector109>:
80105a44:	6a 00                	push   $0x0
80105a46:	6a 6d                	push   $0x6d
80105a48:	e9 0b f8 ff ff       	jmp    80105258 <alltraps>

80105a4d <vector110>:
80105a4d:	6a 00                	push   $0x0
80105a4f:	6a 6e                	push   $0x6e
80105a51:	e9 02 f8 ff ff       	jmp    80105258 <alltraps>

80105a56 <vector111>:
80105a56:	6a 00                	push   $0x0
80105a58:	6a 6f                	push   $0x6f
80105a5a:	e9 f9 f7 ff ff       	jmp    80105258 <alltraps>

80105a5f <vector112>:
80105a5f:	6a 00                	push   $0x0
80105a61:	6a 70                	push   $0x70
80105a63:	e9 f0 f7 ff ff       	jmp    80105258 <alltraps>

80105a68 <vector113>:
80105a68:	6a 00                	push   $0x0
80105a6a:	6a 71                	push   $0x71
80105a6c:	e9 e7 f7 ff ff       	jmp    80105258 <alltraps>

80105a71 <vector114>:
80105a71:	6a 00                	push   $0x0
80105a73:	6a 72                	push   $0x72
80105a75:	e9 de f7 ff ff       	jmp    80105258 <alltraps>

80105a7a <vector115>:
80105a7a:	6a 00                	push   $0x0
80105a7c:	6a 73                	push   $0x73
80105a7e:	e9 d5 f7 ff ff       	jmp    80105258 <alltraps>

80105a83 <vector116>:
80105a83:	6a 00                	push   $0x0
80105a85:	6a 74                	push   $0x74
80105a87:	e9 cc f7 ff ff       	jmp    80105258 <alltraps>

80105a8c <vector117>:
80105a8c:	6a 00                	push   $0x0
80105a8e:	6a 75                	push   $0x75
80105a90:	e9 c3 f7 ff ff       	jmp    80105258 <alltraps>

80105a95 <vector118>:
80105a95:	6a 00                	push   $0x0
80105a97:	6a 76                	push   $0x76
80105a99:	e9 ba f7 ff ff       	jmp    80105258 <alltraps>

80105a9e <vector119>:
80105a9e:	6a 00                	push   $0x0
80105aa0:	6a 77                	push   $0x77
80105aa2:	e9 b1 f7 ff ff       	jmp    80105258 <alltraps>

80105aa7 <vector120>:
80105aa7:	6a 00                	push   $0x0
80105aa9:	6a 78                	push   $0x78
80105aab:	e9 a8 f7 ff ff       	jmp    80105258 <alltraps>

80105ab0 <vector121>:
80105ab0:	6a 00                	push   $0x0
80105ab2:	6a 79                	push   $0x79
80105ab4:	e9 9f f7 ff ff       	jmp    80105258 <alltraps>

80105ab9 <vector122>:
80105ab9:	6a 00                	push   $0x0
80105abb:	6a 7a                	push   $0x7a
80105abd:	e9 96 f7 ff ff       	jmp    80105258 <alltraps>

80105ac2 <vector123>:
80105ac2:	6a 00                	push   $0x0
80105ac4:	6a 7b                	push   $0x7b
80105ac6:	e9 8d f7 ff ff       	jmp    80105258 <alltraps>

80105acb <vector124>:
80105acb:	6a 00                	push   $0x0
80105acd:	6a 7c                	push   $0x7c
80105acf:	e9 84 f7 ff ff       	jmp    80105258 <alltraps>

80105ad4 <vector125>:
80105ad4:	6a 00                	push   $0x0
80105ad6:	6a 7d                	push   $0x7d
80105ad8:	e9 7b f7 ff ff       	jmp    80105258 <alltraps>

80105add <vector126>:
80105add:	6a 00                	push   $0x0
80105adf:	6a 7e                	push   $0x7e
80105ae1:	e9 72 f7 ff ff       	jmp    80105258 <alltraps>

80105ae6 <vector127>:
80105ae6:	6a 00                	push   $0x0
80105ae8:	6a 7f                	push   $0x7f
80105aea:	e9 69 f7 ff ff       	jmp    80105258 <alltraps>

80105aef <vector128>:
80105aef:	6a 00                	push   $0x0
80105af1:	68 80 00 00 00       	push   $0x80
80105af6:	e9 5d f7 ff ff       	jmp    80105258 <alltraps>

80105afb <vector129>:
80105afb:	6a 00                	push   $0x0
80105afd:	68 81 00 00 00       	push   $0x81
80105b02:	e9 51 f7 ff ff       	jmp    80105258 <alltraps>

80105b07 <vector130>:
80105b07:	6a 00                	push   $0x0
80105b09:	68 82 00 00 00       	push   $0x82
80105b0e:	e9 45 f7 ff ff       	jmp    80105258 <alltraps>

80105b13 <vector131>:
80105b13:	6a 00                	push   $0x0
80105b15:	68 83 00 00 00       	push   $0x83
80105b1a:	e9 39 f7 ff ff       	jmp    80105258 <alltraps>

80105b1f <vector132>:
80105b1f:	6a 00                	push   $0x0
80105b21:	68 84 00 00 00       	push   $0x84
80105b26:	e9 2d f7 ff ff       	jmp    80105258 <alltraps>

80105b2b <vector133>:
80105b2b:	6a 00                	push   $0x0
80105b2d:	68 85 00 00 00       	push   $0x85
80105b32:	e9 21 f7 ff ff       	jmp    80105258 <alltraps>

80105b37 <vector134>:
80105b37:	6a 00                	push   $0x0
80105b39:	68 86 00 00 00       	push   $0x86
80105b3e:	e9 15 f7 ff ff       	jmp    80105258 <alltraps>

80105b43 <vector135>:
80105b43:	6a 00                	push   $0x0
80105b45:	68 87 00 00 00       	push   $0x87
80105b4a:	e9 09 f7 ff ff       	jmp    80105258 <alltraps>

80105b4f <vector136>:
80105b4f:	6a 00                	push   $0x0
80105b51:	68 88 00 00 00       	push   $0x88
80105b56:	e9 fd f6 ff ff       	jmp    80105258 <alltraps>

80105b5b <vector137>:
80105b5b:	6a 00                	push   $0x0
80105b5d:	68 89 00 00 00       	push   $0x89
80105b62:	e9 f1 f6 ff ff       	jmp    80105258 <alltraps>

80105b67 <vector138>:
80105b67:	6a 00                	push   $0x0
80105b69:	68 8a 00 00 00       	push   $0x8a
80105b6e:	e9 e5 f6 ff ff       	jmp    80105258 <alltraps>

80105b73 <vector139>:
80105b73:	6a 00                	push   $0x0
80105b75:	68 8b 00 00 00       	push   $0x8b
80105b7a:	e9 d9 f6 ff ff       	jmp    80105258 <alltraps>

80105b7f <vector140>:
80105b7f:	6a 00                	push   $0x0
80105b81:	68 8c 00 00 00       	push   $0x8c
80105b86:	e9 cd f6 ff ff       	jmp    80105258 <alltraps>

80105b8b <vector141>:
80105b8b:	6a 00                	push   $0x0
80105b8d:	68 8d 00 00 00       	push   $0x8d
80105b92:	e9 c1 f6 ff ff       	jmp    80105258 <alltraps>

80105b97 <vector142>:
80105b97:	6a 00                	push   $0x0
80105b99:	68 8e 00 00 00       	push   $0x8e
80105b9e:	e9 b5 f6 ff ff       	jmp    80105258 <alltraps>

80105ba3 <vector143>:
80105ba3:	6a 00                	push   $0x0
80105ba5:	68 8f 00 00 00       	push   $0x8f
80105baa:	e9 a9 f6 ff ff       	jmp    80105258 <alltraps>

80105baf <vector144>:
80105baf:	6a 00                	push   $0x0
80105bb1:	68 90 00 00 00       	push   $0x90
80105bb6:	e9 9d f6 ff ff       	jmp    80105258 <alltraps>

80105bbb <vector145>:
80105bbb:	6a 00                	push   $0x0
80105bbd:	68 91 00 00 00       	push   $0x91
80105bc2:	e9 91 f6 ff ff       	jmp    80105258 <alltraps>

80105bc7 <vector146>:
80105bc7:	6a 00                	push   $0x0
80105bc9:	68 92 00 00 00       	push   $0x92
80105bce:	e9 85 f6 ff ff       	jmp    80105258 <alltraps>

80105bd3 <vector147>:
80105bd3:	6a 00                	push   $0x0
80105bd5:	68 93 00 00 00       	push   $0x93
80105bda:	e9 79 f6 ff ff       	jmp    80105258 <alltraps>

80105bdf <vector148>:
80105bdf:	6a 00                	push   $0x0
80105be1:	68 94 00 00 00       	push   $0x94
80105be6:	e9 6d f6 ff ff       	jmp    80105258 <alltraps>

80105beb <vector149>:
80105beb:	6a 00                	push   $0x0
80105bed:	68 95 00 00 00       	push   $0x95
80105bf2:	e9 61 f6 ff ff       	jmp    80105258 <alltraps>

80105bf7 <vector150>:
80105bf7:	6a 00                	push   $0x0
80105bf9:	68 96 00 00 00       	push   $0x96
80105bfe:	e9 55 f6 ff ff       	jmp    80105258 <alltraps>

80105c03 <vector151>:
80105c03:	6a 00                	push   $0x0
80105c05:	68 97 00 00 00       	push   $0x97
80105c0a:	e9 49 f6 ff ff       	jmp    80105258 <alltraps>

80105c0f <vector152>:
80105c0f:	6a 00                	push   $0x0
80105c11:	68 98 00 00 00       	push   $0x98
80105c16:	e9 3d f6 ff ff       	jmp    80105258 <alltraps>

80105c1b <vector153>:
80105c1b:	6a 00                	push   $0x0
80105c1d:	68 99 00 00 00       	push   $0x99
80105c22:	e9 31 f6 ff ff       	jmp    80105258 <alltraps>

80105c27 <vector154>:
80105c27:	6a 00                	push   $0x0
80105c29:	68 9a 00 00 00       	push   $0x9a
80105c2e:	e9 25 f6 ff ff       	jmp    80105258 <alltraps>

80105c33 <vector155>:
80105c33:	6a 00                	push   $0x0
80105c35:	68 9b 00 00 00       	push   $0x9b
80105c3a:	e9 19 f6 ff ff       	jmp    80105258 <alltraps>

80105c3f <vector156>:
80105c3f:	6a 00                	push   $0x0
80105c41:	68 9c 00 00 00       	push   $0x9c
80105c46:	e9 0d f6 ff ff       	jmp    80105258 <alltraps>

80105c4b <vector157>:
80105c4b:	6a 00                	push   $0x0
80105c4d:	68 9d 00 00 00       	push   $0x9d
80105c52:	e9 01 f6 ff ff       	jmp    80105258 <alltraps>

80105c57 <vector158>:
80105c57:	6a 00                	push   $0x0
80105c59:	68 9e 00 00 00       	push   $0x9e
80105c5e:	e9 f5 f5 ff ff       	jmp    80105258 <alltraps>

80105c63 <vector159>:
80105c63:	6a 00                	push   $0x0
80105c65:	68 9f 00 00 00       	push   $0x9f
80105c6a:	e9 e9 f5 ff ff       	jmp    80105258 <alltraps>

80105c6f <vector160>:
80105c6f:	6a 00                	push   $0x0
80105c71:	68 a0 00 00 00       	push   $0xa0
80105c76:	e9 dd f5 ff ff       	jmp    80105258 <alltraps>

80105c7b <vector161>:
80105c7b:	6a 00                	push   $0x0
80105c7d:	68 a1 00 00 00       	push   $0xa1
80105c82:	e9 d1 f5 ff ff       	jmp    80105258 <alltraps>

80105c87 <vector162>:
80105c87:	6a 00                	push   $0x0
80105c89:	68 a2 00 00 00       	push   $0xa2
80105c8e:	e9 c5 f5 ff ff       	jmp    80105258 <alltraps>

80105c93 <vector163>:
80105c93:	6a 00                	push   $0x0
80105c95:	68 a3 00 00 00       	push   $0xa3
80105c9a:	e9 b9 f5 ff ff       	jmp    80105258 <alltraps>

80105c9f <vector164>:
80105c9f:	6a 00                	push   $0x0
80105ca1:	68 a4 00 00 00       	push   $0xa4
80105ca6:	e9 ad f5 ff ff       	jmp    80105258 <alltraps>

80105cab <vector165>:
80105cab:	6a 00                	push   $0x0
80105cad:	68 a5 00 00 00       	push   $0xa5
80105cb2:	e9 a1 f5 ff ff       	jmp    80105258 <alltraps>

80105cb7 <vector166>:
80105cb7:	6a 00                	push   $0x0
80105cb9:	68 a6 00 00 00       	push   $0xa6
80105cbe:	e9 95 f5 ff ff       	jmp    80105258 <alltraps>

80105cc3 <vector167>:
80105cc3:	6a 00                	push   $0x0
80105cc5:	68 a7 00 00 00       	push   $0xa7
80105cca:	e9 89 f5 ff ff       	jmp    80105258 <alltraps>

80105ccf <vector168>:
80105ccf:	6a 00                	push   $0x0
80105cd1:	68 a8 00 00 00       	push   $0xa8
80105cd6:	e9 7d f5 ff ff       	jmp    80105258 <alltraps>

80105cdb <vector169>:
80105cdb:	6a 00                	push   $0x0
80105cdd:	68 a9 00 00 00       	push   $0xa9
80105ce2:	e9 71 f5 ff ff       	jmp    80105258 <alltraps>

80105ce7 <vector170>:
80105ce7:	6a 00                	push   $0x0
80105ce9:	68 aa 00 00 00       	push   $0xaa
80105cee:	e9 65 f5 ff ff       	jmp    80105258 <alltraps>

80105cf3 <vector171>:
80105cf3:	6a 00                	push   $0x0
80105cf5:	68 ab 00 00 00       	push   $0xab
80105cfa:	e9 59 f5 ff ff       	jmp    80105258 <alltraps>

80105cff <vector172>:
80105cff:	6a 00                	push   $0x0
80105d01:	68 ac 00 00 00       	push   $0xac
80105d06:	e9 4d f5 ff ff       	jmp    80105258 <alltraps>

80105d0b <vector173>:
80105d0b:	6a 00                	push   $0x0
80105d0d:	68 ad 00 00 00       	push   $0xad
80105d12:	e9 41 f5 ff ff       	jmp    80105258 <alltraps>

80105d17 <vector174>:
80105d17:	6a 00                	push   $0x0
80105d19:	68 ae 00 00 00       	push   $0xae
80105d1e:	e9 35 f5 ff ff       	jmp    80105258 <alltraps>

80105d23 <vector175>:
80105d23:	6a 00                	push   $0x0
80105d25:	68 af 00 00 00       	push   $0xaf
80105d2a:	e9 29 f5 ff ff       	jmp    80105258 <alltraps>

80105d2f <vector176>:
80105d2f:	6a 00                	push   $0x0
80105d31:	68 b0 00 00 00       	push   $0xb0
80105d36:	e9 1d f5 ff ff       	jmp    80105258 <alltraps>

80105d3b <vector177>:
80105d3b:	6a 00                	push   $0x0
80105d3d:	68 b1 00 00 00       	push   $0xb1
80105d42:	e9 11 f5 ff ff       	jmp    80105258 <alltraps>

80105d47 <vector178>:
80105d47:	6a 00                	push   $0x0
80105d49:	68 b2 00 00 00       	push   $0xb2
80105d4e:	e9 05 f5 ff ff       	jmp    80105258 <alltraps>

80105d53 <vector179>:
80105d53:	6a 00                	push   $0x0
80105d55:	68 b3 00 00 00       	push   $0xb3
80105d5a:	e9 f9 f4 ff ff       	jmp    80105258 <alltraps>

80105d5f <vector180>:
80105d5f:	6a 00                	push   $0x0
80105d61:	68 b4 00 00 00       	push   $0xb4
80105d66:	e9 ed f4 ff ff       	jmp    80105258 <alltraps>

80105d6b <vector181>:
80105d6b:	6a 00                	push   $0x0
80105d6d:	68 b5 00 00 00       	push   $0xb5
80105d72:	e9 e1 f4 ff ff       	jmp    80105258 <alltraps>

80105d77 <vector182>:
80105d77:	6a 00                	push   $0x0
80105d79:	68 b6 00 00 00       	push   $0xb6
80105d7e:	e9 d5 f4 ff ff       	jmp    80105258 <alltraps>

80105d83 <vector183>:
80105d83:	6a 00                	push   $0x0
80105d85:	68 b7 00 00 00       	push   $0xb7
80105d8a:	e9 c9 f4 ff ff       	jmp    80105258 <alltraps>

80105d8f <vector184>:
80105d8f:	6a 00                	push   $0x0
80105d91:	68 b8 00 00 00       	push   $0xb8
80105d96:	e9 bd f4 ff ff       	jmp    80105258 <alltraps>

80105d9b <vector185>:
80105d9b:	6a 00                	push   $0x0
80105d9d:	68 b9 00 00 00       	push   $0xb9
80105da2:	e9 b1 f4 ff ff       	jmp    80105258 <alltraps>

80105da7 <vector186>:
80105da7:	6a 00                	push   $0x0
80105da9:	68 ba 00 00 00       	push   $0xba
80105dae:	e9 a5 f4 ff ff       	jmp    80105258 <alltraps>

80105db3 <vector187>:
80105db3:	6a 00                	push   $0x0
80105db5:	68 bb 00 00 00       	push   $0xbb
80105dba:	e9 99 f4 ff ff       	jmp    80105258 <alltraps>

80105dbf <vector188>:
80105dbf:	6a 00                	push   $0x0
80105dc1:	68 bc 00 00 00       	push   $0xbc
80105dc6:	e9 8d f4 ff ff       	jmp    80105258 <alltraps>

80105dcb <vector189>:
80105dcb:	6a 00                	push   $0x0
80105dcd:	68 bd 00 00 00       	push   $0xbd
80105dd2:	e9 81 f4 ff ff       	jmp    80105258 <alltraps>

80105dd7 <vector190>:
80105dd7:	6a 00                	push   $0x0
80105dd9:	68 be 00 00 00       	push   $0xbe
80105dde:	e9 75 f4 ff ff       	jmp    80105258 <alltraps>

80105de3 <vector191>:
80105de3:	6a 00                	push   $0x0
80105de5:	68 bf 00 00 00       	push   $0xbf
80105dea:	e9 69 f4 ff ff       	jmp    80105258 <alltraps>

80105def <vector192>:
80105def:	6a 00                	push   $0x0
80105df1:	68 c0 00 00 00       	push   $0xc0
80105df6:	e9 5d f4 ff ff       	jmp    80105258 <alltraps>

80105dfb <vector193>:
80105dfb:	6a 00                	push   $0x0
80105dfd:	68 c1 00 00 00       	push   $0xc1
80105e02:	e9 51 f4 ff ff       	jmp    80105258 <alltraps>

80105e07 <vector194>:
80105e07:	6a 00                	push   $0x0
80105e09:	68 c2 00 00 00       	push   $0xc2
80105e0e:	e9 45 f4 ff ff       	jmp    80105258 <alltraps>

80105e13 <vector195>:
80105e13:	6a 00                	push   $0x0
80105e15:	68 c3 00 00 00       	push   $0xc3
80105e1a:	e9 39 f4 ff ff       	jmp    80105258 <alltraps>

80105e1f <vector196>:
80105e1f:	6a 00                	push   $0x0
80105e21:	68 c4 00 00 00       	push   $0xc4
80105e26:	e9 2d f4 ff ff       	jmp    80105258 <alltraps>

80105e2b <vector197>:
80105e2b:	6a 00                	push   $0x0
80105e2d:	68 c5 00 00 00       	push   $0xc5
80105e32:	e9 21 f4 ff ff       	jmp    80105258 <alltraps>

80105e37 <vector198>:
80105e37:	6a 00                	push   $0x0
80105e39:	68 c6 00 00 00       	push   $0xc6
80105e3e:	e9 15 f4 ff ff       	jmp    80105258 <alltraps>

80105e43 <vector199>:
80105e43:	6a 00                	push   $0x0
80105e45:	68 c7 00 00 00       	push   $0xc7
80105e4a:	e9 09 f4 ff ff       	jmp    80105258 <alltraps>

80105e4f <vector200>:
80105e4f:	6a 00                	push   $0x0
80105e51:	68 c8 00 00 00       	push   $0xc8
80105e56:	e9 fd f3 ff ff       	jmp    80105258 <alltraps>

80105e5b <vector201>:
80105e5b:	6a 00                	push   $0x0
80105e5d:	68 c9 00 00 00       	push   $0xc9
80105e62:	e9 f1 f3 ff ff       	jmp    80105258 <alltraps>

80105e67 <vector202>:
80105e67:	6a 00                	push   $0x0
80105e69:	68 ca 00 00 00       	push   $0xca
80105e6e:	e9 e5 f3 ff ff       	jmp    80105258 <alltraps>

80105e73 <vector203>:
80105e73:	6a 00                	push   $0x0
80105e75:	68 cb 00 00 00       	push   $0xcb
80105e7a:	e9 d9 f3 ff ff       	jmp    80105258 <alltraps>

80105e7f <vector204>:
80105e7f:	6a 00                	push   $0x0
80105e81:	68 cc 00 00 00       	push   $0xcc
80105e86:	e9 cd f3 ff ff       	jmp    80105258 <alltraps>

80105e8b <vector205>:
80105e8b:	6a 00                	push   $0x0
80105e8d:	68 cd 00 00 00       	push   $0xcd
80105e92:	e9 c1 f3 ff ff       	jmp    80105258 <alltraps>

80105e97 <vector206>:
80105e97:	6a 00                	push   $0x0
80105e99:	68 ce 00 00 00       	push   $0xce
80105e9e:	e9 b5 f3 ff ff       	jmp    80105258 <alltraps>

80105ea3 <vector207>:
80105ea3:	6a 00                	push   $0x0
80105ea5:	68 cf 00 00 00       	push   $0xcf
80105eaa:	e9 a9 f3 ff ff       	jmp    80105258 <alltraps>

80105eaf <vector208>:
80105eaf:	6a 00                	push   $0x0
80105eb1:	68 d0 00 00 00       	push   $0xd0
80105eb6:	e9 9d f3 ff ff       	jmp    80105258 <alltraps>

80105ebb <vector209>:
80105ebb:	6a 00                	push   $0x0
80105ebd:	68 d1 00 00 00       	push   $0xd1
80105ec2:	e9 91 f3 ff ff       	jmp    80105258 <alltraps>

80105ec7 <vector210>:
80105ec7:	6a 00                	push   $0x0
80105ec9:	68 d2 00 00 00       	push   $0xd2
80105ece:	e9 85 f3 ff ff       	jmp    80105258 <alltraps>

80105ed3 <vector211>:
80105ed3:	6a 00                	push   $0x0
80105ed5:	68 d3 00 00 00       	push   $0xd3
80105eda:	e9 79 f3 ff ff       	jmp    80105258 <alltraps>

80105edf <vector212>:
80105edf:	6a 00                	push   $0x0
80105ee1:	68 d4 00 00 00       	push   $0xd4
80105ee6:	e9 6d f3 ff ff       	jmp    80105258 <alltraps>

80105eeb <vector213>:
80105eeb:	6a 00                	push   $0x0
80105eed:	68 d5 00 00 00       	push   $0xd5
80105ef2:	e9 61 f3 ff ff       	jmp    80105258 <alltraps>

80105ef7 <vector214>:
80105ef7:	6a 00                	push   $0x0
80105ef9:	68 d6 00 00 00       	push   $0xd6
80105efe:	e9 55 f3 ff ff       	jmp    80105258 <alltraps>

80105f03 <vector215>:
80105f03:	6a 00                	push   $0x0
80105f05:	68 d7 00 00 00       	push   $0xd7
80105f0a:	e9 49 f3 ff ff       	jmp    80105258 <alltraps>

80105f0f <vector216>:
80105f0f:	6a 00                	push   $0x0
80105f11:	68 d8 00 00 00       	push   $0xd8
80105f16:	e9 3d f3 ff ff       	jmp    80105258 <alltraps>

80105f1b <vector217>:
80105f1b:	6a 00                	push   $0x0
80105f1d:	68 d9 00 00 00       	push   $0xd9
80105f22:	e9 31 f3 ff ff       	jmp    80105258 <alltraps>

80105f27 <vector218>:
80105f27:	6a 00                	push   $0x0
80105f29:	68 da 00 00 00       	push   $0xda
80105f2e:	e9 25 f3 ff ff       	jmp    80105258 <alltraps>

80105f33 <vector219>:
80105f33:	6a 00                	push   $0x0
80105f35:	68 db 00 00 00       	push   $0xdb
80105f3a:	e9 19 f3 ff ff       	jmp    80105258 <alltraps>

80105f3f <vector220>:
80105f3f:	6a 00                	push   $0x0
80105f41:	68 dc 00 00 00       	push   $0xdc
80105f46:	e9 0d f3 ff ff       	jmp    80105258 <alltraps>

80105f4b <vector221>:
80105f4b:	6a 00                	push   $0x0
80105f4d:	68 dd 00 00 00       	push   $0xdd
80105f52:	e9 01 f3 ff ff       	jmp    80105258 <alltraps>

80105f57 <vector222>:
80105f57:	6a 00                	push   $0x0
80105f59:	68 de 00 00 00       	push   $0xde
80105f5e:	e9 f5 f2 ff ff       	jmp    80105258 <alltraps>

80105f63 <vector223>:
80105f63:	6a 00                	push   $0x0
80105f65:	68 df 00 00 00       	push   $0xdf
80105f6a:	e9 e9 f2 ff ff       	jmp    80105258 <alltraps>

80105f6f <vector224>:
80105f6f:	6a 00                	push   $0x0
80105f71:	68 e0 00 00 00       	push   $0xe0
80105f76:	e9 dd f2 ff ff       	jmp    80105258 <alltraps>

80105f7b <vector225>:
80105f7b:	6a 00                	push   $0x0
80105f7d:	68 e1 00 00 00       	push   $0xe1
80105f82:	e9 d1 f2 ff ff       	jmp    80105258 <alltraps>

80105f87 <vector226>:
80105f87:	6a 00                	push   $0x0
80105f89:	68 e2 00 00 00       	push   $0xe2
80105f8e:	e9 c5 f2 ff ff       	jmp    80105258 <alltraps>

80105f93 <vector227>:
80105f93:	6a 00                	push   $0x0
80105f95:	68 e3 00 00 00       	push   $0xe3
80105f9a:	e9 b9 f2 ff ff       	jmp    80105258 <alltraps>

80105f9f <vector228>:
80105f9f:	6a 00                	push   $0x0
80105fa1:	68 e4 00 00 00       	push   $0xe4
80105fa6:	e9 ad f2 ff ff       	jmp    80105258 <alltraps>

80105fab <vector229>:
80105fab:	6a 00                	push   $0x0
80105fad:	68 e5 00 00 00       	push   $0xe5
80105fb2:	e9 a1 f2 ff ff       	jmp    80105258 <alltraps>

80105fb7 <vector230>:
80105fb7:	6a 00                	push   $0x0
80105fb9:	68 e6 00 00 00       	push   $0xe6
80105fbe:	e9 95 f2 ff ff       	jmp    80105258 <alltraps>

80105fc3 <vector231>:
80105fc3:	6a 00                	push   $0x0
80105fc5:	68 e7 00 00 00       	push   $0xe7
80105fca:	e9 89 f2 ff ff       	jmp    80105258 <alltraps>

80105fcf <vector232>:
80105fcf:	6a 00                	push   $0x0
80105fd1:	68 e8 00 00 00       	push   $0xe8
80105fd6:	e9 7d f2 ff ff       	jmp    80105258 <alltraps>

80105fdb <vector233>:
80105fdb:	6a 00                	push   $0x0
80105fdd:	68 e9 00 00 00       	push   $0xe9
80105fe2:	e9 71 f2 ff ff       	jmp    80105258 <alltraps>

80105fe7 <vector234>:
80105fe7:	6a 00                	push   $0x0
80105fe9:	68 ea 00 00 00       	push   $0xea
80105fee:	e9 65 f2 ff ff       	jmp    80105258 <alltraps>

80105ff3 <vector235>:
80105ff3:	6a 00                	push   $0x0
80105ff5:	68 eb 00 00 00       	push   $0xeb
80105ffa:	e9 59 f2 ff ff       	jmp    80105258 <alltraps>

80105fff <vector236>:
80105fff:	6a 00                	push   $0x0
80106001:	68 ec 00 00 00       	push   $0xec
80106006:	e9 4d f2 ff ff       	jmp    80105258 <alltraps>

8010600b <vector237>:
8010600b:	6a 00                	push   $0x0
8010600d:	68 ed 00 00 00       	push   $0xed
80106012:	e9 41 f2 ff ff       	jmp    80105258 <alltraps>

80106017 <vector238>:
80106017:	6a 00                	push   $0x0
80106019:	68 ee 00 00 00       	push   $0xee
8010601e:	e9 35 f2 ff ff       	jmp    80105258 <alltraps>

80106023 <vector239>:
80106023:	6a 00                	push   $0x0
80106025:	68 ef 00 00 00       	push   $0xef
8010602a:	e9 29 f2 ff ff       	jmp    80105258 <alltraps>

8010602f <vector240>:
8010602f:	6a 00                	push   $0x0
80106031:	68 f0 00 00 00       	push   $0xf0
80106036:	e9 1d f2 ff ff       	jmp    80105258 <alltraps>

8010603b <vector241>:
8010603b:	6a 00                	push   $0x0
8010603d:	68 f1 00 00 00       	push   $0xf1
80106042:	e9 11 f2 ff ff       	jmp    80105258 <alltraps>

80106047 <vector242>:
80106047:	6a 00                	push   $0x0
80106049:	68 f2 00 00 00       	push   $0xf2
8010604e:	e9 05 f2 ff ff       	jmp    80105258 <alltraps>

80106053 <vector243>:
80106053:	6a 00                	push   $0x0
80106055:	68 f3 00 00 00       	push   $0xf3
8010605a:	e9 f9 f1 ff ff       	jmp    80105258 <alltraps>

8010605f <vector244>:
8010605f:	6a 00                	push   $0x0
80106061:	68 f4 00 00 00       	push   $0xf4
80106066:	e9 ed f1 ff ff       	jmp    80105258 <alltraps>

8010606b <vector245>:
8010606b:	6a 00                	push   $0x0
8010606d:	68 f5 00 00 00       	push   $0xf5
80106072:	e9 e1 f1 ff ff       	jmp    80105258 <alltraps>

80106077 <vector246>:
80106077:	6a 00                	push   $0x0
80106079:	68 f6 00 00 00       	push   $0xf6
8010607e:	e9 d5 f1 ff ff       	jmp    80105258 <alltraps>

80106083 <vector247>:
80106083:	6a 00                	push   $0x0
80106085:	68 f7 00 00 00       	push   $0xf7
8010608a:	e9 c9 f1 ff ff       	jmp    80105258 <alltraps>

8010608f <vector248>:
8010608f:	6a 00                	push   $0x0
80106091:	68 f8 00 00 00       	push   $0xf8
80106096:	e9 bd f1 ff ff       	jmp    80105258 <alltraps>

8010609b <vector249>:
8010609b:	6a 00                	push   $0x0
8010609d:	68 f9 00 00 00       	push   $0xf9
801060a2:	e9 b1 f1 ff ff       	jmp    80105258 <alltraps>

801060a7 <vector250>:
801060a7:	6a 00                	push   $0x0
801060a9:	68 fa 00 00 00       	push   $0xfa
801060ae:	e9 a5 f1 ff ff       	jmp    80105258 <alltraps>

801060b3 <vector251>:
801060b3:	6a 00                	push   $0x0
801060b5:	68 fb 00 00 00       	push   $0xfb
801060ba:	e9 99 f1 ff ff       	jmp    80105258 <alltraps>

801060bf <vector252>:
801060bf:	6a 00                	push   $0x0
801060c1:	68 fc 00 00 00       	push   $0xfc
801060c6:	e9 8d f1 ff ff       	jmp    80105258 <alltraps>

801060cb <vector253>:
801060cb:	6a 00                	push   $0x0
801060cd:	68 fd 00 00 00       	push   $0xfd
801060d2:	e9 81 f1 ff ff       	jmp    80105258 <alltraps>

801060d7 <vector254>:
801060d7:	6a 00                	push   $0x0
801060d9:	68 fe 00 00 00       	push   $0xfe
801060de:	e9 75 f1 ff ff       	jmp    80105258 <alltraps>

801060e3 <vector255>:
801060e3:	6a 00                	push   $0x0
801060e5:	68 ff 00 00 00       	push   $0xff
801060ea:	e9 69 f1 ff ff       	jmp    80105258 <alltraps>

801060ef <walkpgdir>:
801060ef:	55                   	push   %ebp
801060f0:	89 e5                	mov    %esp,%ebp
801060f2:	57                   	push   %edi
801060f3:	56                   	push   %esi
801060f4:	53                   	push   %ebx
801060f5:	83 ec 0c             	sub    $0xc,%esp
801060f8:	89 d6                	mov    %edx,%esi
801060fa:	c1 ea 16             	shr    $0x16,%edx
801060fd:	8d 3c 90             	lea    (%eax,%edx,4),%edi
80106100:	8b 1f                	mov    (%edi),%ebx
80106102:	f6 c3 01             	test   $0x1,%bl
80106105:	74 21                	je     80106128 <walkpgdir+0x39>
80106107:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
8010610d:	81 c3 00 00 00 80    	add    $0x80000000,%ebx
80106113:	c1 ee 0a             	shr    $0xa,%esi
80106116:	81 e6 fc 0f 00 00    	and    $0xffc,%esi
8010611c:	01 f3                	add    %esi,%ebx
8010611e:	89 d8                	mov    %ebx,%eax
80106120:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106123:	5b                   	pop    %ebx
80106124:	5e                   	pop    %esi
80106125:	5f                   	pop    %edi
80106126:	5d                   	pop    %ebp
80106127:	c3                   	ret    
80106128:	85 c9                	test   %ecx,%ecx
8010612a:	74 2b                	je     80106157 <walkpgdir+0x68>
8010612c:	e8 2d c0 ff ff       	call   8010215e <kalloc>
80106131:	89 c3                	mov    %eax,%ebx
80106133:	85 c0                	test   %eax,%eax
80106135:	74 e7                	je     8010611e <walkpgdir+0x2f>
80106137:	83 ec 04             	sub    $0x4,%esp
8010613a:	68 00 10 00 00       	push   $0x1000
8010613f:	6a 00                	push   $0x0
80106141:	50                   	push   %eax
80106142:	e8 84 e0 ff ff       	call   801041cb <memset>
80106147:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
8010614d:	83 c8 07             	or     $0x7,%eax
80106150:	89 07                	mov    %eax,(%edi)
80106152:	83 c4 10             	add    $0x10,%esp
80106155:	eb bc                	jmp    80106113 <walkpgdir+0x24>
80106157:	bb 00 00 00 00       	mov    $0x0,%ebx
8010615c:	eb c0                	jmp    8010611e <walkpgdir+0x2f>

8010615e <mappages>:
8010615e:	55                   	push   %ebp
8010615f:	89 e5                	mov    %esp,%ebp
80106161:	57                   	push   %edi
80106162:	56                   	push   %esi
80106163:	53                   	push   %ebx
80106164:	83 ec 1c             	sub    $0x1c,%esp
80106167:	89 45 e4             	mov    %eax,-0x1c(%ebp)
8010616a:	89 d0                	mov    %edx,%eax
8010616c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106171:	89 c3                	mov    %eax,%ebx
80106173:	8d 54 0a ff          	lea    -0x1(%edx,%ecx,1),%edx
80106177:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
8010617d:	89 55 e0             	mov    %edx,-0x20(%ebp)
80106180:	8b 7d 08             	mov    0x8(%ebp),%edi
80106183:	29 c7                	sub    %eax,%edi
80106185:	8b 45 0c             	mov    0xc(%ebp),%eax
80106188:	83 c8 01             	or     $0x1,%eax
8010618b:	89 45 dc             	mov    %eax,-0x24(%ebp)
8010618e:	8d 34 3b             	lea    (%ebx,%edi,1),%esi
80106191:	b9 01 00 00 00       	mov    $0x1,%ecx
80106196:	89 da                	mov    %ebx,%edx
80106198:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010619b:	e8 4f ff ff ff       	call   801060ef <walkpgdir>
801061a0:	85 c0                	test   %eax,%eax
801061a2:	74 24                	je     801061c8 <mappages+0x6a>
801061a4:	f6 00 01             	testb  $0x1,(%eax)
801061a7:	75 12                	jne    801061bb <mappages+0x5d>
801061a9:	0b 75 dc             	or     -0x24(%ebp),%esi
801061ac:	89 30                	mov    %esi,(%eax)
801061ae:	3b 5d e0             	cmp    -0x20(%ebp),%ebx
801061b1:	74 22                	je     801061d5 <mappages+0x77>
801061b3:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801061b9:	eb d3                	jmp    8010618e <mappages+0x30>
801061bb:	83 ec 0c             	sub    $0xc,%esp
801061be:	68 ec 72 10 80       	push   $0x801072ec
801061c3:	e8 7c a1 ff ff       	call   80100344 <panic>
801061c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801061cd:	8d 65 f4             	lea    -0xc(%ebp),%esp
801061d0:	5b                   	pop    %ebx
801061d1:	5e                   	pop    %esi
801061d2:	5f                   	pop    %edi
801061d3:	5d                   	pop    %ebp
801061d4:	c3                   	ret    
801061d5:	b8 00 00 00 00       	mov    $0x0,%eax
801061da:	eb f1                	jmp    801061cd <mappages+0x6f>

801061dc <seginit>:
801061dc:	55                   	push   %ebp
801061dd:	89 e5                	mov    %esp,%ebp
801061df:	83 ec 18             	sub    $0x18,%esp
801061e2:	e8 ef d3 ff ff       	call   801035d6 <cpuid>
801061e7:	69 c0 b0 00 00 00    	imul   $0xb0,%eax,%eax
801061ed:	66 c7 80 18 28 11 80 	movw   $0xffff,-0x7feed7e8(%eax)
801061f4:	ff ff 
801061f6:	66 c7 80 1a 28 11 80 	movw   $0x0,-0x7feed7e6(%eax)
801061fd:	00 00 
801061ff:	c6 80 1c 28 11 80 00 	movb   $0x0,-0x7feed7e4(%eax)
80106206:	c6 80 1d 28 11 80 9a 	movb   $0x9a,-0x7feed7e3(%eax)
8010620d:	c6 80 1e 28 11 80 cf 	movb   $0xcf,-0x7feed7e2(%eax)
80106214:	c6 80 1f 28 11 80 00 	movb   $0x0,-0x7feed7e1(%eax)
8010621b:	66 c7 80 20 28 11 80 	movw   $0xffff,-0x7feed7e0(%eax)
80106222:	ff ff 
80106224:	66 c7 80 22 28 11 80 	movw   $0x0,-0x7feed7de(%eax)
8010622b:	00 00 
8010622d:	c6 80 24 28 11 80 00 	movb   $0x0,-0x7feed7dc(%eax)
80106234:	c6 80 25 28 11 80 92 	movb   $0x92,-0x7feed7db(%eax)
8010623b:	c6 80 26 28 11 80 cf 	movb   $0xcf,-0x7feed7da(%eax)
80106242:	c6 80 27 28 11 80 00 	movb   $0x0,-0x7feed7d9(%eax)
80106249:	66 c7 80 28 28 11 80 	movw   $0xffff,-0x7feed7d8(%eax)
80106250:	ff ff 
80106252:	66 c7 80 2a 28 11 80 	movw   $0x0,-0x7feed7d6(%eax)
80106259:	00 00 
8010625b:	c6 80 2c 28 11 80 00 	movb   $0x0,-0x7feed7d4(%eax)
80106262:	c6 80 2d 28 11 80 fa 	movb   $0xfa,-0x7feed7d3(%eax)
80106269:	c6 80 2e 28 11 80 cf 	movb   $0xcf,-0x7feed7d2(%eax)
80106270:	c6 80 2f 28 11 80 00 	movb   $0x0,-0x7feed7d1(%eax)
80106277:	66 c7 80 30 28 11 80 	movw   $0xffff,-0x7feed7d0(%eax)
8010627e:	ff ff 
80106280:	66 c7 80 32 28 11 80 	movw   $0x0,-0x7feed7ce(%eax)
80106287:	00 00 
80106289:	c6 80 34 28 11 80 00 	movb   $0x0,-0x7feed7cc(%eax)
80106290:	c6 80 35 28 11 80 f2 	movb   $0xf2,-0x7feed7cb(%eax)
80106297:	c6 80 36 28 11 80 cf 	movb   $0xcf,-0x7feed7ca(%eax)
8010629e:	c6 80 37 28 11 80 00 	movb   $0x0,-0x7feed7c9(%eax)
801062a5:	05 10 28 11 80       	add    $0x80112810,%eax
801062aa:	66 c7 45 f2 2f 00    	movw   $0x2f,-0xe(%ebp)
801062b0:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
801062b4:	c1 e8 10             	shr    $0x10,%eax
801062b7:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
801062bb:	8d 45 f2             	lea    -0xe(%ebp),%eax
801062be:	0f 01 10             	lgdtl  (%eax)
801062c1:	c9                   	leave  
801062c2:	c3                   	ret    

801062c3 <switchkvm>:
801062c3:	55                   	push   %ebp
801062c4:	89 e5                	mov    %esp,%ebp
801062c6:	a1 e4 57 11 80       	mov    0x801157e4,%eax
801062cb:	05 00 00 00 80       	add    $0x80000000,%eax
801062d0:	0f 22 d8             	mov    %eax,%cr3
801062d3:	5d                   	pop    %ebp
801062d4:	c3                   	ret    

801062d5 <switchuvm>:
801062d5:	55                   	push   %ebp
801062d6:	89 e5                	mov    %esp,%ebp
801062d8:	57                   	push   %edi
801062d9:	56                   	push   %esi
801062da:	53                   	push   %ebx
801062db:	83 ec 1c             	sub    $0x1c,%esp
801062de:	8b 75 08             	mov    0x8(%ebp),%esi
801062e1:	85 f6                	test   %esi,%esi
801062e3:	0f 84 c3 00 00 00    	je     801063ac <switchuvm+0xd7>
801062e9:	83 7e 08 00          	cmpl   $0x0,0x8(%esi)
801062ed:	0f 84 c6 00 00 00    	je     801063b9 <switchuvm+0xe4>
801062f3:	83 7e 04 00          	cmpl   $0x0,0x4(%esi)
801062f7:	0f 84 c9 00 00 00    	je     801063c6 <switchuvm+0xf1>
801062fd:	e8 4a dd ff ff       	call   8010404c <pushcli>
80106302:	e8 58 d2 ff ff       	call   8010355f <mycpu>
80106307:	89 c3                	mov    %eax,%ebx
80106309:	e8 51 d2 ff ff       	call   8010355f <mycpu>
8010630e:	89 c7                	mov    %eax,%edi
80106310:	e8 4a d2 ff ff       	call   8010355f <mycpu>
80106315:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106318:	e8 42 d2 ff ff       	call   8010355f <mycpu>
8010631d:	66 c7 83 98 00 00 00 	movw   $0x67,0x98(%ebx)
80106324:	67 00 
80106326:	83 c7 08             	add    $0x8,%edi
80106329:	66 89 bb 9a 00 00 00 	mov    %di,0x9a(%ebx)
80106330:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80106333:	83 c2 08             	add    $0x8,%edx
80106336:	c1 ea 10             	shr    $0x10,%edx
80106339:	88 93 9c 00 00 00    	mov    %dl,0x9c(%ebx)
8010633f:	c6 83 9d 00 00 00 99 	movb   $0x99,0x9d(%ebx)
80106346:	c6 83 9e 00 00 00 40 	movb   $0x40,0x9e(%ebx)
8010634d:	83 c0 08             	add    $0x8,%eax
80106350:	c1 e8 18             	shr    $0x18,%eax
80106353:	88 83 9f 00 00 00    	mov    %al,0x9f(%ebx)
80106359:	e8 01 d2 ff ff       	call   8010355f <mycpu>
8010635e:	80 a0 9d 00 00 00 ef 	andb   $0xef,0x9d(%eax)
80106365:	e8 f5 d1 ff ff       	call   8010355f <mycpu>
8010636a:	66 c7 40 10 10 00    	movw   $0x10,0x10(%eax)
80106370:	8b 5e 08             	mov    0x8(%esi),%ebx
80106373:	e8 e7 d1 ff ff       	call   8010355f <mycpu>
80106378:	81 c3 00 10 00 00    	add    $0x1000,%ebx
8010637e:	89 58 0c             	mov    %ebx,0xc(%eax)
80106381:	e8 d9 d1 ff ff       	call   8010355f <mycpu>
80106386:	66 c7 40 6e ff ff    	movw   $0xffff,0x6e(%eax)
8010638c:	b8 28 00 00 00       	mov    $0x28,%eax
80106391:	0f 00 d8             	ltr    %ax
80106394:	8b 46 04             	mov    0x4(%esi),%eax
80106397:	05 00 00 00 80       	add    $0x80000000,%eax
8010639c:	0f 22 d8             	mov    %eax,%cr3
8010639f:	e8 e5 dc ff ff       	call   80104089 <popcli>
801063a4:	8d 65 f4             	lea    -0xc(%ebp),%esp
801063a7:	5b                   	pop    %ebx
801063a8:	5e                   	pop    %esi
801063a9:	5f                   	pop    %edi
801063aa:	5d                   	pop    %ebp
801063ab:	c3                   	ret    
801063ac:	83 ec 0c             	sub    $0xc,%esp
801063af:	68 f2 72 10 80       	push   $0x801072f2
801063b4:	e8 8b 9f ff ff       	call   80100344 <panic>
801063b9:	83 ec 0c             	sub    $0xc,%esp
801063bc:	68 08 73 10 80       	push   $0x80107308
801063c1:	e8 7e 9f ff ff       	call   80100344 <panic>
801063c6:	83 ec 0c             	sub    $0xc,%esp
801063c9:	68 1d 73 10 80       	push   $0x8010731d
801063ce:	e8 71 9f ff ff       	call   80100344 <panic>

801063d3 <inituvm>:
801063d3:	55                   	push   %ebp
801063d4:	89 e5                	mov    %esp,%ebp
801063d6:	56                   	push   %esi
801063d7:	53                   	push   %ebx
801063d8:	8b 75 10             	mov    0x10(%ebp),%esi
801063db:	81 fe ff 0f 00 00    	cmp    $0xfff,%esi
801063e1:	77 4c                	ja     8010642f <inituvm+0x5c>
801063e3:	e8 76 bd ff ff       	call   8010215e <kalloc>
801063e8:	89 c3                	mov    %eax,%ebx
801063ea:	83 ec 04             	sub    $0x4,%esp
801063ed:	68 00 10 00 00       	push   $0x1000
801063f2:	6a 00                	push   $0x0
801063f4:	50                   	push   %eax
801063f5:	e8 d1 dd ff ff       	call   801041cb <memset>
801063fa:	83 c4 08             	add    $0x8,%esp
801063fd:	6a 06                	push   $0x6
801063ff:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
80106405:	50                   	push   %eax
80106406:	b9 00 10 00 00       	mov    $0x1000,%ecx
8010640b:	ba 00 00 00 00       	mov    $0x0,%edx
80106410:	8b 45 08             	mov    0x8(%ebp),%eax
80106413:	e8 46 fd ff ff       	call   8010615e <mappages>
80106418:	83 c4 0c             	add    $0xc,%esp
8010641b:	56                   	push   %esi
8010641c:	ff 75 0c             	pushl  0xc(%ebp)
8010641f:	53                   	push   %ebx
80106420:	e8 3b de ff ff       	call   80104260 <memmove>
80106425:	83 c4 10             	add    $0x10,%esp
80106428:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010642b:	5b                   	pop    %ebx
8010642c:	5e                   	pop    %esi
8010642d:	5d                   	pop    %ebp
8010642e:	c3                   	ret    
8010642f:	83 ec 0c             	sub    $0xc,%esp
80106432:	68 31 73 10 80       	push   $0x80107331
80106437:	e8 08 9f ff ff       	call   80100344 <panic>

8010643c <loaduvm>:
8010643c:	55                   	push   %ebp
8010643d:	89 e5                	mov    %esp,%ebp
8010643f:	57                   	push   %edi
80106440:	56                   	push   %esi
80106441:	53                   	push   %ebx
80106442:	83 ec 1c             	sub    $0x1c,%esp
80106445:	8b 45 0c             	mov    0xc(%ebp),%eax
80106448:	89 45 e4             	mov    %eax,-0x1c(%ebp)
8010644b:	a9 ff 0f 00 00       	test   $0xfff,%eax
80106450:	75 71                	jne    801064c3 <loaduvm+0x87>
80106452:	8b 75 18             	mov    0x18(%ebp),%esi
80106455:	bb 00 00 00 00       	mov    $0x0,%ebx
8010645a:	b8 00 00 00 00       	mov    $0x0,%eax
8010645f:	85 f6                	test   %esi,%esi
80106461:	74 7f                	je     801064e2 <loaduvm+0xa6>
80106463:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106466:	8d 14 18             	lea    (%eax,%ebx,1),%edx
80106469:	b9 00 00 00 00       	mov    $0x0,%ecx
8010646e:	8b 45 08             	mov    0x8(%ebp),%eax
80106471:	e8 79 fc ff ff       	call   801060ef <walkpgdir>
80106476:	85 c0                	test   %eax,%eax
80106478:	74 56                	je     801064d0 <loaduvm+0x94>
8010647a:	8b 00                	mov    (%eax),%eax
8010647c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106481:	81 fe ff 0f 00 00    	cmp    $0xfff,%esi
80106487:	bf 00 10 00 00       	mov    $0x1000,%edi
8010648c:	0f 46 fe             	cmovbe %esi,%edi
8010648f:	57                   	push   %edi
80106490:	89 da                	mov    %ebx,%edx
80106492:	03 55 14             	add    0x14(%ebp),%edx
80106495:	52                   	push   %edx
80106496:	05 00 00 00 80       	add    $0x80000000,%eax
8010649b:	50                   	push   %eax
8010649c:	ff 75 10             	pushl  0x10(%ebp)
8010649f:	e8 d6 b2 ff ff       	call   8010177a <readi>
801064a4:	83 c4 10             	add    $0x10,%esp
801064a7:	39 f8                	cmp    %edi,%eax
801064a9:	75 32                	jne    801064dd <loaduvm+0xa1>
801064ab:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801064b1:	81 ee 00 10 00 00    	sub    $0x1000,%esi
801064b7:	39 5d 18             	cmp    %ebx,0x18(%ebp)
801064ba:	77 a7                	ja     80106463 <loaduvm+0x27>
801064bc:	b8 00 00 00 00       	mov    $0x0,%eax
801064c1:	eb 1f                	jmp    801064e2 <loaduvm+0xa6>
801064c3:	83 ec 0c             	sub    $0xc,%esp
801064c6:	68 ec 73 10 80       	push   $0x801073ec
801064cb:	e8 74 9e ff ff       	call   80100344 <panic>
801064d0:	83 ec 0c             	sub    $0xc,%esp
801064d3:	68 4b 73 10 80       	push   $0x8010734b
801064d8:	e8 67 9e ff ff       	call   80100344 <panic>
801064dd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801064e2:	8d 65 f4             	lea    -0xc(%ebp),%esp
801064e5:	5b                   	pop    %ebx
801064e6:	5e                   	pop    %esi
801064e7:	5f                   	pop    %edi
801064e8:	5d                   	pop    %ebp
801064e9:	c3                   	ret    

801064ea <deallocuvm>:
801064ea:	55                   	push   %ebp
801064eb:	89 e5                	mov    %esp,%ebp
801064ed:	57                   	push   %edi
801064ee:	56                   	push   %esi
801064ef:	53                   	push   %ebx
801064f0:	83 ec 0c             	sub    $0xc,%esp
801064f3:	8b 7d 0c             	mov    0xc(%ebp),%edi
801064f6:	89 f8                	mov    %edi,%eax
801064f8:	39 7d 10             	cmp    %edi,0x10(%ebp)
801064fb:	73 16                	jae    80106513 <deallocuvm+0x29>
801064fd:	8b 45 10             	mov    0x10(%ebp),%eax
80106500:	8d 98 ff 0f 00 00    	lea    0xfff(%eax),%ebx
80106506:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
8010650c:	39 df                	cmp    %ebx,%edi
8010650e:	77 21                	ja     80106531 <deallocuvm+0x47>
80106510:	8b 45 10             	mov    0x10(%ebp),%eax
80106513:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106516:	5b                   	pop    %ebx
80106517:	5e                   	pop    %esi
80106518:	5f                   	pop    %edi
80106519:	5d                   	pop    %ebp
8010651a:	c3                   	ret    
8010651b:	81 e3 00 00 c0 ff    	and    $0xffc00000,%ebx
80106521:	81 c3 00 f0 3f 00    	add    $0x3ff000,%ebx
80106527:	81 c3 00 10 00 00    	add    $0x1000,%ebx
8010652d:	39 df                	cmp    %ebx,%edi
8010652f:	76 df                	jbe    80106510 <deallocuvm+0x26>
80106531:	b9 00 00 00 00       	mov    $0x0,%ecx
80106536:	89 da                	mov    %ebx,%edx
80106538:	8b 45 08             	mov    0x8(%ebp),%eax
8010653b:	e8 af fb ff ff       	call   801060ef <walkpgdir>
80106540:	89 c6                	mov    %eax,%esi
80106542:	85 c0                	test   %eax,%eax
80106544:	74 d5                	je     8010651b <deallocuvm+0x31>
80106546:	8b 00                	mov    (%eax),%eax
80106548:	a8 01                	test   $0x1,%al
8010654a:	74 db                	je     80106527 <deallocuvm+0x3d>
8010654c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106551:	74 19                	je     8010656c <deallocuvm+0x82>
80106553:	83 ec 0c             	sub    $0xc,%esp
80106556:	05 00 00 00 80       	add    $0x80000000,%eax
8010655b:	50                   	push   %eax
8010655c:	e8 d8 ba ff ff       	call   80102039 <kfree>
80106561:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
80106567:	83 c4 10             	add    $0x10,%esp
8010656a:	eb bb                	jmp    80106527 <deallocuvm+0x3d>
8010656c:	83 ec 0c             	sub    $0xc,%esp
8010656f:	68 a6 6b 10 80       	push   $0x80106ba6
80106574:	e8 cb 9d ff ff       	call   80100344 <panic>

80106579 <allocuvm>:
80106579:	55                   	push   %ebp
8010657a:	89 e5                	mov    %esp,%ebp
8010657c:	57                   	push   %edi
8010657d:	56                   	push   %esi
8010657e:	53                   	push   %ebx
8010657f:	83 ec 1c             	sub    $0x1c,%esp
80106582:	8b 7d 10             	mov    0x10(%ebp),%edi
80106585:	89 7d e4             	mov    %edi,-0x1c(%ebp)
80106588:	85 ff                	test   %edi,%edi
8010658a:	0f 88 c5 00 00 00    	js     80106655 <allocuvm+0xdc>
80106590:	3b 7d 0c             	cmp    0xc(%ebp),%edi
80106593:	72 60                	jb     801065f5 <allocuvm+0x7c>
80106595:	8b 45 0c             	mov    0xc(%ebp),%eax
80106598:	8d 98 ff 0f 00 00    	lea    0xfff(%eax),%ebx
8010659e:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
801065a4:	39 df                	cmp    %ebx,%edi
801065a6:	0f 86 b0 00 00 00    	jbe    8010665c <allocuvm+0xe3>
801065ac:	e8 ad bb ff ff       	call   8010215e <kalloc>
801065b1:	89 c6                	mov    %eax,%esi
801065b3:	85 c0                	test   %eax,%eax
801065b5:	74 46                	je     801065fd <allocuvm+0x84>
801065b7:	83 ec 04             	sub    $0x4,%esp
801065ba:	68 00 10 00 00       	push   $0x1000
801065bf:	6a 00                	push   $0x0
801065c1:	50                   	push   %eax
801065c2:	e8 04 dc ff ff       	call   801041cb <memset>
801065c7:	83 c4 08             	add    $0x8,%esp
801065ca:	6a 06                	push   $0x6
801065cc:	8d 86 00 00 00 80    	lea    -0x80000000(%esi),%eax
801065d2:	50                   	push   %eax
801065d3:	b9 00 10 00 00       	mov    $0x1000,%ecx
801065d8:	89 da                	mov    %ebx,%edx
801065da:	8b 45 08             	mov    0x8(%ebp),%eax
801065dd:	e8 7c fb ff ff       	call   8010615e <mappages>
801065e2:	83 c4 10             	add    $0x10,%esp
801065e5:	85 c0                	test   %eax,%eax
801065e7:	78 3c                	js     80106625 <allocuvm+0xac>
801065e9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801065ef:	39 df                	cmp    %ebx,%edi
801065f1:	77 b9                	ja     801065ac <allocuvm+0x33>
801065f3:	eb 67                	jmp    8010665c <allocuvm+0xe3>
801065f5:	8b 45 0c             	mov    0xc(%ebp),%eax
801065f8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801065fb:	eb 5f                	jmp    8010665c <allocuvm+0xe3>
801065fd:	83 ec 0c             	sub    $0xc,%esp
80106600:	68 69 73 10 80       	push   $0x80107369
80106605:	e8 d7 9f ff ff       	call   801005e1 <cprintf>
8010660a:	83 c4 0c             	add    $0xc,%esp
8010660d:	ff 75 0c             	pushl  0xc(%ebp)
80106610:	57                   	push   %edi
80106611:	ff 75 08             	pushl  0x8(%ebp)
80106614:	e8 d1 fe ff ff       	call   801064ea <deallocuvm>
80106619:	83 c4 10             	add    $0x10,%esp
8010661c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80106623:	eb 37                	jmp    8010665c <allocuvm+0xe3>
80106625:	83 ec 0c             	sub    $0xc,%esp
80106628:	68 81 73 10 80       	push   $0x80107381
8010662d:	e8 af 9f ff ff       	call   801005e1 <cprintf>
80106632:	83 c4 0c             	add    $0xc,%esp
80106635:	ff 75 0c             	pushl  0xc(%ebp)
80106638:	57                   	push   %edi
80106639:	ff 75 08             	pushl  0x8(%ebp)
8010663c:	e8 a9 fe ff ff       	call   801064ea <deallocuvm>
80106641:	89 34 24             	mov    %esi,(%esp)
80106644:	e8 f0 b9 ff ff       	call   80102039 <kfree>
80106649:	83 c4 10             	add    $0x10,%esp
8010664c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80106653:	eb 07                	jmp    8010665c <allocuvm+0xe3>
80106655:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
8010665c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010665f:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106662:	5b                   	pop    %ebx
80106663:	5e                   	pop    %esi
80106664:	5f                   	pop    %edi
80106665:	5d                   	pop    %ebp
80106666:	c3                   	ret    

80106667 <freevm>:
80106667:	55                   	push   %ebp
80106668:	89 e5                	mov    %esp,%ebp
8010666a:	57                   	push   %edi
8010666b:	56                   	push   %esi
8010666c:	53                   	push   %ebx
8010666d:	83 ec 0c             	sub    $0xc,%esp
80106670:	8b 7d 08             	mov    0x8(%ebp),%edi
80106673:	85 ff                	test   %edi,%edi
80106675:	74 1d                	je     80106694 <freevm+0x2d>
80106677:	83 ec 04             	sub    $0x4,%esp
8010667a:	6a 00                	push   $0x0
8010667c:	68 00 00 00 80       	push   $0x80000000
80106681:	57                   	push   %edi
80106682:	e8 63 fe ff ff       	call   801064ea <deallocuvm>
80106687:	89 fb                	mov    %edi,%ebx
80106689:	8d b7 00 10 00 00    	lea    0x1000(%edi),%esi
8010668f:	83 c4 10             	add    $0x10,%esp
80106692:	eb 14                	jmp    801066a8 <freevm+0x41>
80106694:	83 ec 0c             	sub    $0xc,%esp
80106697:	68 9d 73 10 80       	push   $0x8010739d
8010669c:	e8 a3 9c ff ff       	call   80100344 <panic>
801066a1:	83 c3 04             	add    $0x4,%ebx
801066a4:	39 f3                	cmp    %esi,%ebx
801066a6:	74 1e                	je     801066c6 <freevm+0x5f>
801066a8:	8b 03                	mov    (%ebx),%eax
801066aa:	a8 01                	test   $0x1,%al
801066ac:	74 f3                	je     801066a1 <freevm+0x3a>
801066ae:	83 ec 0c             	sub    $0xc,%esp
801066b1:	25 00 f0 ff ff       	and    $0xfffff000,%eax
801066b6:	05 00 00 00 80       	add    $0x80000000,%eax
801066bb:	50                   	push   %eax
801066bc:	e8 78 b9 ff ff       	call   80102039 <kfree>
801066c1:	83 c4 10             	add    $0x10,%esp
801066c4:	eb db                	jmp    801066a1 <freevm+0x3a>
801066c6:	83 ec 0c             	sub    $0xc,%esp
801066c9:	57                   	push   %edi
801066ca:	e8 6a b9 ff ff       	call   80102039 <kfree>
801066cf:	83 c4 10             	add    $0x10,%esp
801066d2:	8d 65 f4             	lea    -0xc(%ebp),%esp
801066d5:	5b                   	pop    %ebx
801066d6:	5e                   	pop    %esi
801066d7:	5f                   	pop    %edi
801066d8:	5d                   	pop    %ebp
801066d9:	c3                   	ret    

801066da <setupkvm>:
801066da:	55                   	push   %ebp
801066db:	89 e5                	mov    %esp,%ebp
801066dd:	56                   	push   %esi
801066de:	53                   	push   %ebx
801066df:	e8 7a ba ff ff       	call   8010215e <kalloc>
801066e4:	89 c6                	mov    %eax,%esi
801066e6:	85 c0                	test   %eax,%eax
801066e8:	74 42                	je     8010672c <setupkvm+0x52>
801066ea:	83 ec 04             	sub    $0x4,%esp
801066ed:	68 00 10 00 00       	push   $0x1000
801066f2:	6a 00                	push   $0x0
801066f4:	50                   	push   %eax
801066f5:	e8 d1 da ff ff       	call   801041cb <memset>
801066fa:	83 c4 10             	add    $0x10,%esp
801066fd:	bb 20 a4 10 80       	mov    $0x8010a420,%ebx
80106702:	8b 43 04             	mov    0x4(%ebx),%eax
80106705:	8b 4b 08             	mov    0x8(%ebx),%ecx
80106708:	29 c1                	sub    %eax,%ecx
8010670a:	83 ec 08             	sub    $0x8,%esp
8010670d:	ff 73 0c             	pushl  0xc(%ebx)
80106710:	50                   	push   %eax
80106711:	8b 13                	mov    (%ebx),%edx
80106713:	89 f0                	mov    %esi,%eax
80106715:	e8 44 fa ff ff       	call   8010615e <mappages>
8010671a:	83 c4 10             	add    $0x10,%esp
8010671d:	85 c0                	test   %eax,%eax
8010671f:	78 14                	js     80106735 <setupkvm+0x5b>
80106721:	83 c3 10             	add    $0x10,%ebx
80106724:	81 fb 60 a4 10 80    	cmp    $0x8010a460,%ebx
8010672a:	75 d6                	jne    80106702 <setupkvm+0x28>
8010672c:	89 f0                	mov    %esi,%eax
8010672e:	8d 65 f8             	lea    -0x8(%ebp),%esp
80106731:	5b                   	pop    %ebx
80106732:	5e                   	pop    %esi
80106733:	5d                   	pop    %ebp
80106734:	c3                   	ret    
80106735:	83 ec 0c             	sub    $0xc,%esp
80106738:	56                   	push   %esi
80106739:	e8 29 ff ff ff       	call   80106667 <freevm>
8010673e:	83 c4 10             	add    $0x10,%esp
80106741:	be 00 00 00 00       	mov    $0x0,%esi
80106746:	eb e4                	jmp    8010672c <setupkvm+0x52>

80106748 <kvmalloc>:
80106748:	55                   	push   %ebp
80106749:	89 e5                	mov    %esp,%ebp
8010674b:	83 ec 08             	sub    $0x8,%esp
8010674e:	e8 87 ff ff ff       	call   801066da <setupkvm>
80106753:	a3 e4 57 11 80       	mov    %eax,0x801157e4
80106758:	e8 66 fb ff ff       	call   801062c3 <switchkvm>
8010675d:	c9                   	leave  
8010675e:	c3                   	ret    

8010675f <clearpteu>:
8010675f:	55                   	push   %ebp
80106760:	89 e5                	mov    %esp,%ebp
80106762:	83 ec 08             	sub    $0x8,%esp
80106765:	b9 00 00 00 00       	mov    $0x0,%ecx
8010676a:	8b 55 0c             	mov    0xc(%ebp),%edx
8010676d:	8b 45 08             	mov    0x8(%ebp),%eax
80106770:	e8 7a f9 ff ff       	call   801060ef <walkpgdir>
80106775:	85 c0                	test   %eax,%eax
80106777:	74 05                	je     8010677e <clearpteu+0x1f>
80106779:	83 20 fb             	andl   $0xfffffffb,(%eax)
8010677c:	c9                   	leave  
8010677d:	c3                   	ret    
8010677e:	83 ec 0c             	sub    $0xc,%esp
80106781:	68 ae 73 10 80       	push   $0x801073ae
80106786:	e8 b9 9b ff ff       	call   80100344 <panic>

8010678b <copyuvm>:
8010678b:	55                   	push   %ebp
8010678c:	89 e5                	mov    %esp,%ebp
8010678e:	57                   	push   %edi
8010678f:	56                   	push   %esi
80106790:	53                   	push   %ebx
80106791:	83 ec 1c             	sub    $0x1c,%esp
80106794:	e8 41 ff ff ff       	call   801066da <setupkvm>
80106799:	89 45 dc             	mov    %eax,-0x24(%ebp)
8010679c:	85 c0                	test   %eax,%eax
8010679e:	0f 84 c7 00 00 00    	je     8010686b <copyuvm+0xe0>
801067a4:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
801067a8:	0f 84 bd 00 00 00    	je     8010686b <copyuvm+0xe0>
801067ae:	bf 00 00 00 00       	mov    $0x0,%edi
801067b3:	89 7d e4             	mov    %edi,-0x1c(%ebp)
801067b6:	b9 00 00 00 00       	mov    $0x0,%ecx
801067bb:	89 fa                	mov    %edi,%edx
801067bd:	8b 45 08             	mov    0x8(%ebp),%eax
801067c0:	e8 2a f9 ff ff       	call   801060ef <walkpgdir>
801067c5:	85 c0                	test   %eax,%eax
801067c7:	74 67                	je     80106830 <copyuvm+0xa5>
801067c9:	8b 00                	mov    (%eax),%eax
801067cb:	a8 01                	test   $0x1,%al
801067cd:	74 6e                	je     8010683d <copyuvm+0xb2>
801067cf:	89 c6                	mov    %eax,%esi
801067d1:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
801067d7:	25 ff 0f 00 00       	and    $0xfff,%eax
801067dc:	89 45 e0             	mov    %eax,-0x20(%ebp)
801067df:	e8 7a b9 ff ff       	call   8010215e <kalloc>
801067e4:	89 c3                	mov    %eax,%ebx
801067e6:	85 c0                	test   %eax,%eax
801067e8:	74 6c                	je     80106856 <copyuvm+0xcb>
801067ea:	83 ec 04             	sub    $0x4,%esp
801067ed:	68 00 10 00 00       	push   $0x1000
801067f2:	81 c6 00 00 00 80    	add    $0x80000000,%esi
801067f8:	56                   	push   %esi
801067f9:	50                   	push   %eax
801067fa:	e8 61 da ff ff       	call   80104260 <memmove>
801067ff:	83 c4 08             	add    $0x8,%esp
80106802:	ff 75 e0             	pushl  -0x20(%ebp)
80106805:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
8010680b:	50                   	push   %eax
8010680c:	b9 00 10 00 00       	mov    $0x1000,%ecx
80106811:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80106814:	8b 45 dc             	mov    -0x24(%ebp),%eax
80106817:	e8 42 f9 ff ff       	call   8010615e <mappages>
8010681c:	83 c4 10             	add    $0x10,%esp
8010681f:	85 c0                	test   %eax,%eax
80106821:	78 27                	js     8010684a <copyuvm+0xbf>
80106823:	81 c7 00 10 00 00    	add    $0x1000,%edi
80106829:	39 7d 0c             	cmp    %edi,0xc(%ebp)
8010682c:	77 85                	ja     801067b3 <copyuvm+0x28>
8010682e:	eb 3b                	jmp    8010686b <copyuvm+0xe0>
80106830:	83 ec 0c             	sub    $0xc,%esp
80106833:	68 b8 73 10 80       	push   $0x801073b8
80106838:	e8 07 9b ff ff       	call   80100344 <panic>
8010683d:	83 ec 0c             	sub    $0xc,%esp
80106840:	68 d2 73 10 80       	push   $0x801073d2
80106845:	e8 fa 9a ff ff       	call   80100344 <panic>
8010684a:	83 ec 0c             	sub    $0xc,%esp
8010684d:	53                   	push   %ebx
8010684e:	e8 e6 b7 ff ff       	call   80102039 <kfree>
80106853:	83 c4 10             	add    $0x10,%esp
80106856:	83 ec 0c             	sub    $0xc,%esp
80106859:	ff 75 dc             	pushl  -0x24(%ebp)
8010685c:	e8 06 fe ff ff       	call   80106667 <freevm>
80106861:	83 c4 10             	add    $0x10,%esp
80106864:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
8010686b:	8b 45 dc             	mov    -0x24(%ebp),%eax
8010686e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106871:	5b                   	pop    %ebx
80106872:	5e                   	pop    %esi
80106873:	5f                   	pop    %edi
80106874:	5d                   	pop    %ebp
80106875:	c3                   	ret    

80106876 <uva2ka>:
80106876:	55                   	push   %ebp
80106877:	89 e5                	mov    %esp,%ebp
80106879:	83 ec 08             	sub    $0x8,%esp
8010687c:	b9 00 00 00 00       	mov    $0x0,%ecx
80106881:	8b 55 0c             	mov    0xc(%ebp),%edx
80106884:	8b 45 08             	mov    0x8(%ebp),%eax
80106887:	e8 63 f8 ff ff       	call   801060ef <walkpgdir>
8010688c:	8b 00                	mov    (%eax),%eax
8010688e:	89 c2                	mov    %eax,%edx
80106890:	83 e2 05             	and    $0x5,%edx
80106893:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106898:	05 00 00 00 80       	add    $0x80000000,%eax
8010689d:	83 fa 05             	cmp    $0x5,%edx
801068a0:	ba 00 00 00 00       	mov    $0x0,%edx
801068a5:	0f 45 c2             	cmovne %edx,%eax
801068a8:	c9                   	leave  
801068a9:	c3                   	ret    

801068aa <copyout>:
801068aa:	55                   	push   %ebp
801068ab:	89 e5                	mov    %esp,%ebp
801068ad:	57                   	push   %edi
801068ae:	56                   	push   %esi
801068af:	53                   	push   %ebx
801068b0:	83 ec 0c             	sub    $0xc,%esp
801068b3:	8b 5d 0c             	mov    0xc(%ebp),%ebx
801068b6:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
801068ba:	74 55                	je     80106911 <copyout+0x67>
801068bc:	89 df                	mov    %ebx,%edi
801068be:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
801068c4:	83 ec 08             	sub    $0x8,%esp
801068c7:	57                   	push   %edi
801068c8:	ff 75 08             	pushl  0x8(%ebp)
801068cb:	e8 a6 ff ff ff       	call   80106876 <uva2ka>
801068d0:	83 c4 10             	add    $0x10,%esp
801068d3:	85 c0                	test   %eax,%eax
801068d5:	74 41                	je     80106918 <copyout+0x6e>
801068d7:	89 fe                	mov    %edi,%esi
801068d9:	29 de                	sub    %ebx,%esi
801068db:	81 c6 00 10 00 00    	add    $0x1000,%esi
801068e1:	3b 75 14             	cmp    0x14(%ebp),%esi
801068e4:	0f 47 75 14          	cmova  0x14(%ebp),%esi
801068e8:	83 ec 04             	sub    $0x4,%esp
801068eb:	56                   	push   %esi
801068ec:	ff 75 10             	pushl  0x10(%ebp)
801068ef:	29 fb                	sub    %edi,%ebx
801068f1:	01 d8                	add    %ebx,%eax
801068f3:	50                   	push   %eax
801068f4:	e8 67 d9 ff ff       	call   80104260 <memmove>
801068f9:	01 75 10             	add    %esi,0x10(%ebp)
801068fc:	8d 9f 00 10 00 00    	lea    0x1000(%edi),%ebx
80106902:	83 c4 10             	add    $0x10,%esp
80106905:	29 75 14             	sub    %esi,0x14(%ebp)
80106908:	75 b2                	jne    801068bc <copyout+0x12>
8010690a:	b8 00 00 00 00       	mov    $0x0,%eax
8010690f:	eb 0c                	jmp    8010691d <copyout+0x73>
80106911:	b8 00 00 00 00       	mov    $0x0,%eax
80106916:	eb 05                	jmp    8010691d <copyout+0x73>
80106918:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010691d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106920:	5b                   	pop    %ebx
80106921:	5e                   	pop    %esi
80106922:	5f                   	pop    %edi
80106923:	5d                   	pop    %ebp
80106924:	c3                   	ret    
