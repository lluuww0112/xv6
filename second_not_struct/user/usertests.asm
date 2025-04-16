
user/_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <iputtest>:
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 ec 10             	sub    $0x10,%esp
       6:	68 70 3c 00 00       	push   $0x3c70
       b:	ff 35 0c 5c 00 00    	pushl  0x5c0c
      11:	e8 ae 38 00 00       	call   38c4 <printf>
      16:	c7 04 24 03 3c 00 00 	movl   $0x3c03,(%esp)
      1d:	e8 d8 37 00 00       	call   37fa <mkdir>
      22:	83 c4 10             	add    $0x10,%esp
      25:	85 c0                	test   %eax,%eax
      27:	78 54                	js     7d <iputtest+0x7d>
      29:	83 ec 0c             	sub    $0xc,%esp
      2c:	68 03 3c 00 00       	push   $0x3c03
      31:	e8 cc 37 00 00       	call   3802 <chdir>
      36:	83 c4 10             	add    $0x10,%esp
      39:	85 c0                	test   %eax,%eax
      3b:	78 58                	js     95 <iputtest+0x95>
      3d:	83 ec 0c             	sub    $0xc,%esp
      40:	68 00 3c 00 00       	push   $0x3c00
      45:	e8 98 37 00 00       	call   37e2 <unlink>
      4a:	83 c4 10             	add    $0x10,%esp
      4d:	85 c0                	test   %eax,%eax
      4f:	78 5c                	js     ad <iputtest+0xad>
      51:	83 ec 0c             	sub    $0xc,%esp
      54:	68 25 3c 00 00       	push   $0x3c25
      59:	e8 a4 37 00 00       	call   3802 <chdir>
      5e:	83 c4 10             	add    $0x10,%esp
      61:	85 c0                	test   %eax,%eax
      63:	78 60                	js     c5 <iputtest+0xc5>
      65:	83 ec 08             	sub    $0x8,%esp
      68:	68 a8 3c 00 00       	push   $0x3ca8
      6d:	ff 35 0c 5c 00 00    	pushl  0x5c0c
      73:	e8 4c 38 00 00       	call   38c4 <printf>
      78:	83 c4 10             	add    $0x10,%esp
      7b:	c9                   	leave  
      7c:	c3                   	ret    
      7d:	83 ec 08             	sub    $0x8,%esp
      80:	68 dc 3b 00 00       	push   $0x3bdc
      85:	ff 35 0c 5c 00 00    	pushl  0x5c0c
      8b:	e8 34 38 00 00       	call   38c4 <printf>
      90:	e8 fd 36 00 00       	call   3792 <exit>
      95:	83 ec 08             	sub    $0x8,%esp
      98:	68 ea 3b 00 00       	push   $0x3bea
      9d:	ff 35 0c 5c 00 00    	pushl  0x5c0c
      a3:	e8 1c 38 00 00       	call   38c4 <printf>
      a8:	e8 e5 36 00 00       	call   3792 <exit>
      ad:	83 ec 08             	sub    $0x8,%esp
      b0:	68 0b 3c 00 00       	push   $0x3c0b
      b5:	ff 35 0c 5c 00 00    	pushl  0x5c0c
      bb:	e8 04 38 00 00       	call   38c4 <printf>
      c0:	e8 cd 36 00 00       	call   3792 <exit>
      c5:	83 ec 08             	sub    $0x8,%esp
      c8:	68 27 3c 00 00       	push   $0x3c27
      cd:	ff 35 0c 5c 00 00    	pushl  0x5c0c
      d3:	e8 ec 37 00 00       	call   38c4 <printf>
      d8:	e8 b5 36 00 00       	call   3792 <exit>

000000dd <exitiputtest>:
      dd:	55                   	push   %ebp
      de:	89 e5                	mov    %esp,%ebp
      e0:	83 ec 10             	sub    $0x10,%esp
      e3:	68 37 3c 00 00       	push   $0x3c37
      e8:	ff 35 0c 5c 00 00    	pushl  0x5c0c
      ee:	e8 d1 37 00 00       	call   38c4 <printf>
      f3:	e8 92 36 00 00       	call   378a <fork>
      f8:	83 c4 10             	add    $0x10,%esp
      fb:	85 c0                	test   %eax,%eax
      fd:	78 49                	js     148 <exitiputtest+0x6b>
      ff:	85 c0                	test   %eax,%eax
     101:	0f 85 a1 00 00 00    	jne    1a8 <exitiputtest+0xcb>
     107:	83 ec 0c             	sub    $0xc,%esp
     10a:	68 03 3c 00 00       	push   $0x3c03
     10f:	e8 e6 36 00 00       	call   37fa <mkdir>
     114:	83 c4 10             	add    $0x10,%esp
     117:	85 c0                	test   %eax,%eax
     119:	78 45                	js     160 <exitiputtest+0x83>
     11b:	83 ec 0c             	sub    $0xc,%esp
     11e:	68 03 3c 00 00       	push   $0x3c03
     123:	e8 da 36 00 00       	call   3802 <chdir>
     128:	83 c4 10             	add    $0x10,%esp
     12b:	85 c0                	test   %eax,%eax
     12d:	78 49                	js     178 <exitiputtest+0x9b>
     12f:	83 ec 0c             	sub    $0xc,%esp
     132:	68 00 3c 00 00       	push   $0x3c00
     137:	e8 a6 36 00 00       	call   37e2 <unlink>
     13c:	83 c4 10             	add    $0x10,%esp
     13f:	85 c0                	test   %eax,%eax
     141:	78 4d                	js     190 <exitiputtest+0xb3>
     143:	e8 4a 36 00 00       	call   3792 <exit>
     148:	83 ec 08             	sub    $0x8,%esp
     14b:	68 1d 4b 00 00       	push   $0x4b1d
     150:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     156:	e8 69 37 00 00       	call   38c4 <printf>
     15b:	e8 32 36 00 00       	call   3792 <exit>
     160:	83 ec 08             	sub    $0x8,%esp
     163:	68 dc 3b 00 00       	push   $0x3bdc
     168:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     16e:	e8 51 37 00 00       	call   38c4 <printf>
     173:	e8 1a 36 00 00       	call   3792 <exit>
     178:	83 ec 08             	sub    $0x8,%esp
     17b:	68 46 3c 00 00       	push   $0x3c46
     180:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     186:	e8 39 37 00 00       	call   38c4 <printf>
     18b:	e8 02 36 00 00       	call   3792 <exit>
     190:	83 ec 08             	sub    $0x8,%esp
     193:	68 0b 3c 00 00       	push   $0x3c0b
     198:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     19e:	e8 21 37 00 00       	call   38c4 <printf>
     1a3:	e8 ea 35 00 00       	call   3792 <exit>
     1a8:	e8 ed 35 00 00       	call   379a <wait>
     1ad:	83 ec 08             	sub    $0x8,%esp
     1b0:	68 5a 3c 00 00       	push   $0x3c5a
     1b5:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     1bb:	e8 04 37 00 00       	call   38c4 <printf>
     1c0:	83 c4 10             	add    $0x10,%esp
     1c3:	c9                   	leave  
     1c4:	c3                   	ret    

000001c5 <openiputtest>:
     1c5:	55                   	push   %ebp
     1c6:	89 e5                	mov    %esp,%ebp
     1c8:	83 ec 10             	sub    $0x10,%esp
     1cb:	68 6c 3c 00 00       	push   $0x3c6c
     1d0:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     1d6:	e8 e9 36 00 00       	call   38c4 <printf>
     1db:	c7 04 24 7b 3c 00 00 	movl   $0x3c7b,(%esp)
     1e2:	e8 13 36 00 00       	call   37fa <mkdir>
     1e7:	83 c4 10             	add    $0x10,%esp
     1ea:	85 c0                	test   %eax,%eax
     1ec:	78 3b                	js     229 <openiputtest+0x64>
     1ee:	e8 97 35 00 00       	call   378a <fork>
     1f3:	85 c0                	test   %eax,%eax
     1f5:	78 4a                	js     241 <openiputtest+0x7c>
     1f7:	85 c0                	test   %eax,%eax
     1f9:	75 63                	jne    25e <openiputtest+0x99>
     1fb:	83 ec 08             	sub    $0x8,%esp
     1fe:	6a 02                	push   $0x2
     200:	68 7b 3c 00 00       	push   $0x3c7b
     205:	e8 c8 35 00 00       	call   37d2 <open>
     20a:	83 c4 10             	add    $0x10,%esp
     20d:	85 c0                	test   %eax,%eax
     20f:	78 48                	js     259 <openiputtest+0x94>
     211:	83 ec 08             	sub    $0x8,%esp
     214:	68 00 4c 00 00       	push   $0x4c00
     219:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     21f:	e8 a0 36 00 00       	call   38c4 <printf>
     224:	e8 69 35 00 00       	call   3792 <exit>
     229:	83 ec 08             	sub    $0x8,%esp
     22c:	68 81 3c 00 00       	push   $0x3c81
     231:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     237:	e8 88 36 00 00       	call   38c4 <printf>
     23c:	e8 51 35 00 00       	call   3792 <exit>
     241:	83 ec 08             	sub    $0x8,%esp
     244:	68 1d 4b 00 00       	push   $0x4b1d
     249:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     24f:	e8 70 36 00 00       	call   38c4 <printf>
     254:	e8 39 35 00 00       	call   3792 <exit>
     259:	e8 34 35 00 00       	call   3792 <exit>
     25e:	83 ec 0c             	sub    $0xc,%esp
     261:	6a 01                	push   $0x1
     263:	e8 ba 35 00 00       	call   3822 <sleep>
     268:	c7 04 24 7b 3c 00 00 	movl   $0x3c7b,(%esp)
     26f:	e8 6e 35 00 00       	call   37e2 <unlink>
     274:	83 c4 10             	add    $0x10,%esp
     277:	85 c0                	test   %eax,%eax
     279:	75 1d                	jne    298 <openiputtest+0xd3>
     27b:	e8 1a 35 00 00       	call   379a <wait>
     280:	83 ec 08             	sub    $0x8,%esp
     283:	68 a4 3c 00 00       	push   $0x3ca4
     288:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     28e:	e8 31 36 00 00       	call   38c4 <printf>
     293:	83 c4 10             	add    $0x10,%esp
     296:	c9                   	leave  
     297:	c3                   	ret    
     298:	83 ec 08             	sub    $0x8,%esp
     29b:	68 95 3c 00 00       	push   $0x3c95
     2a0:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     2a6:	e8 19 36 00 00       	call   38c4 <printf>
     2ab:	e8 e2 34 00 00       	call   3792 <exit>

000002b0 <opentest>:
     2b0:	55                   	push   %ebp
     2b1:	89 e5                	mov    %esp,%ebp
     2b3:	83 ec 10             	sub    $0x10,%esp
     2b6:	68 b6 3c 00 00       	push   $0x3cb6
     2bb:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     2c1:	e8 fe 35 00 00       	call   38c4 <printf>
     2c6:	83 c4 08             	add    $0x8,%esp
     2c9:	6a 00                	push   $0x0
     2cb:	68 c1 3c 00 00       	push   $0x3cc1
     2d0:	e8 fd 34 00 00       	call   37d2 <open>
     2d5:	83 c4 10             	add    $0x10,%esp
     2d8:	85 c0                	test   %eax,%eax
     2da:	78 37                	js     313 <opentest+0x63>
     2dc:	83 ec 0c             	sub    $0xc,%esp
     2df:	50                   	push   %eax
     2e0:	e8 d5 34 00 00       	call   37ba <close>
     2e5:	83 c4 08             	add    $0x8,%esp
     2e8:	6a 00                	push   $0x0
     2ea:	68 d9 3c 00 00       	push   $0x3cd9
     2ef:	e8 de 34 00 00       	call   37d2 <open>
     2f4:	83 c4 10             	add    $0x10,%esp
     2f7:	85 c0                	test   %eax,%eax
     2f9:	79 30                	jns    32b <opentest+0x7b>
     2fb:	83 ec 08             	sub    $0x8,%esp
     2fe:	68 04 3d 00 00       	push   $0x3d04
     303:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     309:	e8 b6 35 00 00       	call   38c4 <printf>
     30e:	83 c4 10             	add    $0x10,%esp
     311:	c9                   	leave  
     312:	c3                   	ret    
     313:	83 ec 08             	sub    $0x8,%esp
     316:	68 c6 3c 00 00       	push   $0x3cc6
     31b:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     321:	e8 9e 35 00 00       	call   38c4 <printf>
     326:	e8 67 34 00 00       	call   3792 <exit>
     32b:	83 ec 08             	sub    $0x8,%esp
     32e:	68 e6 3c 00 00       	push   $0x3ce6
     333:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     339:	e8 86 35 00 00       	call   38c4 <printf>
     33e:	e8 4f 34 00 00       	call   3792 <exit>

00000343 <writetest>:
     343:	55                   	push   %ebp
     344:	89 e5                	mov    %esp,%ebp
     346:	56                   	push   %esi
     347:	53                   	push   %ebx
     348:	83 ec 08             	sub    $0x8,%esp
     34b:	68 12 3d 00 00       	push   $0x3d12
     350:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     356:	e8 69 35 00 00       	call   38c4 <printf>
     35b:	83 c4 08             	add    $0x8,%esp
     35e:	68 02 02 00 00       	push   $0x202
     363:	68 23 3d 00 00       	push   $0x3d23
     368:	e8 65 34 00 00       	call   37d2 <open>
     36d:	83 c4 10             	add    $0x10,%esp
     370:	85 c0                	test   %eax,%eax
     372:	0f 88 17 01 00 00    	js     48f <writetest+0x14c>
     378:	89 c6                	mov    %eax,%esi
     37a:	83 ec 08             	sub    $0x8,%esp
     37d:	68 29 3d 00 00       	push   $0x3d29
     382:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     388:	e8 37 35 00 00       	call   38c4 <printf>
     38d:	83 c4 10             	add    $0x10,%esp
     390:	bb 00 00 00 00       	mov    $0x0,%ebx
     395:	83 ec 04             	sub    $0x4,%esp
     398:	6a 0a                	push   $0xa
     39a:	68 60 3d 00 00       	push   $0x3d60
     39f:	56                   	push   %esi
     3a0:	e8 0d 34 00 00       	call   37b2 <write>
     3a5:	83 c4 10             	add    $0x10,%esp
     3a8:	83 f8 0a             	cmp    $0xa,%eax
     3ab:	0f 85 f6 00 00 00    	jne    4a7 <writetest+0x164>
     3b1:	83 ec 04             	sub    $0x4,%esp
     3b4:	6a 0a                	push   $0xa
     3b6:	68 6b 3d 00 00       	push   $0x3d6b
     3bb:	56                   	push   %esi
     3bc:	e8 f1 33 00 00       	call   37b2 <write>
     3c1:	83 c4 10             	add    $0x10,%esp
     3c4:	83 f8 0a             	cmp    $0xa,%eax
     3c7:	0f 85 f3 00 00 00    	jne    4c0 <writetest+0x17d>
     3cd:	83 c3 01             	add    $0x1,%ebx
     3d0:	83 fb 64             	cmp    $0x64,%ebx
     3d3:	75 c0                	jne    395 <writetest+0x52>
     3d5:	83 ec 08             	sub    $0x8,%esp
     3d8:	68 76 3d 00 00       	push   $0x3d76
     3dd:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     3e3:	e8 dc 34 00 00       	call   38c4 <printf>
     3e8:	89 34 24             	mov    %esi,(%esp)
     3eb:	e8 ca 33 00 00       	call   37ba <close>
     3f0:	83 c4 08             	add    $0x8,%esp
     3f3:	6a 00                	push   $0x0
     3f5:	68 23 3d 00 00       	push   $0x3d23
     3fa:	e8 d3 33 00 00       	call   37d2 <open>
     3ff:	89 c3                	mov    %eax,%ebx
     401:	83 c4 10             	add    $0x10,%esp
     404:	85 c0                	test   %eax,%eax
     406:	0f 88 cd 00 00 00    	js     4d9 <writetest+0x196>
     40c:	83 ec 08             	sub    $0x8,%esp
     40f:	68 81 3d 00 00       	push   $0x3d81
     414:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     41a:	e8 a5 34 00 00       	call   38c4 <printf>
     41f:	83 c4 0c             	add    $0xc,%esp
     422:	68 d0 07 00 00       	push   $0x7d0
     427:	68 00 84 00 00       	push   $0x8400
     42c:	53                   	push   %ebx
     42d:	e8 78 33 00 00       	call   37aa <read>
     432:	83 c4 10             	add    $0x10,%esp
     435:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     43a:	0f 85 b1 00 00 00    	jne    4f1 <writetest+0x1ae>
     440:	83 ec 08             	sub    $0x8,%esp
     443:	68 b5 3d 00 00       	push   $0x3db5
     448:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     44e:	e8 71 34 00 00       	call   38c4 <printf>
     453:	89 1c 24             	mov    %ebx,(%esp)
     456:	e8 5f 33 00 00       	call   37ba <close>
     45b:	c7 04 24 23 3d 00 00 	movl   $0x3d23,(%esp)
     462:	e8 7b 33 00 00       	call   37e2 <unlink>
     467:	83 c4 10             	add    $0x10,%esp
     46a:	85 c0                	test   %eax,%eax
     46c:	0f 88 97 00 00 00    	js     509 <writetest+0x1c6>
     472:	83 ec 08             	sub    $0x8,%esp
     475:	68 dd 3d 00 00       	push   $0x3ddd
     47a:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     480:	e8 3f 34 00 00       	call   38c4 <printf>
     485:	83 c4 10             	add    $0x10,%esp
     488:	8d 65 f8             	lea    -0x8(%ebp),%esp
     48b:	5b                   	pop    %ebx
     48c:	5e                   	pop    %esi
     48d:	5d                   	pop    %ebp
     48e:	c3                   	ret    
     48f:	83 ec 08             	sub    $0x8,%esp
     492:	68 44 3d 00 00       	push   $0x3d44
     497:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     49d:	e8 22 34 00 00       	call   38c4 <printf>
     4a2:	e8 eb 32 00 00       	call   3792 <exit>
     4a7:	83 ec 04             	sub    $0x4,%esp
     4aa:	53                   	push   %ebx
     4ab:	68 24 4c 00 00       	push   $0x4c24
     4b0:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     4b6:	e8 09 34 00 00       	call   38c4 <printf>
     4bb:	e8 d2 32 00 00       	call   3792 <exit>
     4c0:	83 ec 04             	sub    $0x4,%esp
     4c3:	53                   	push   %ebx
     4c4:	68 48 4c 00 00       	push   $0x4c48
     4c9:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     4cf:	e8 f0 33 00 00       	call   38c4 <printf>
     4d4:	e8 b9 32 00 00       	call   3792 <exit>
     4d9:	83 ec 08             	sub    $0x8,%esp
     4dc:	68 9a 3d 00 00       	push   $0x3d9a
     4e1:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     4e7:	e8 d8 33 00 00       	call   38c4 <printf>
     4ec:	e8 a1 32 00 00       	call   3792 <exit>
     4f1:	83 ec 08             	sub    $0x8,%esp
     4f4:	68 e1 40 00 00       	push   $0x40e1
     4f9:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     4ff:	e8 c0 33 00 00       	call   38c4 <printf>
     504:	e8 89 32 00 00       	call   3792 <exit>
     509:	83 ec 08             	sub    $0x8,%esp
     50c:	68 c8 3d 00 00       	push   $0x3dc8
     511:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     517:	e8 a8 33 00 00       	call   38c4 <printf>
     51c:	e8 71 32 00 00       	call   3792 <exit>

00000521 <writetest1>:
     521:	55                   	push   %ebp
     522:	89 e5                	mov    %esp,%ebp
     524:	56                   	push   %esi
     525:	53                   	push   %ebx
     526:	83 ec 08             	sub    $0x8,%esp
     529:	68 f1 3d 00 00       	push   $0x3df1
     52e:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     534:	e8 8b 33 00 00       	call   38c4 <printf>
     539:	83 c4 08             	add    $0x8,%esp
     53c:	68 02 02 00 00       	push   $0x202
     541:	68 6b 3e 00 00       	push   $0x3e6b
     546:	e8 87 32 00 00       	call   37d2 <open>
     54b:	83 c4 10             	add    $0x10,%esp
     54e:	85 c0                	test   %eax,%eax
     550:	0f 88 96 00 00 00    	js     5ec <writetest1+0xcb>
     556:	89 c6                	mov    %eax,%esi
     558:	bb 00 00 00 00       	mov    $0x0,%ebx
     55d:	89 1d 00 84 00 00    	mov    %ebx,0x8400
     563:	83 ec 04             	sub    $0x4,%esp
     566:	68 00 02 00 00       	push   $0x200
     56b:	68 00 84 00 00       	push   $0x8400
     570:	56                   	push   %esi
     571:	e8 3c 32 00 00       	call   37b2 <write>
     576:	83 c4 10             	add    $0x10,%esp
     579:	3d 00 02 00 00       	cmp    $0x200,%eax
     57e:	0f 85 80 00 00 00    	jne    604 <writetest1+0xe3>
     584:	83 c3 01             	add    $0x1,%ebx
     587:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     58d:	75 ce                	jne    55d <writetest1+0x3c>
     58f:	83 ec 0c             	sub    $0xc,%esp
     592:	56                   	push   %esi
     593:	e8 22 32 00 00       	call   37ba <close>
     598:	83 c4 08             	add    $0x8,%esp
     59b:	6a 00                	push   $0x0
     59d:	68 6b 3e 00 00       	push   $0x3e6b
     5a2:	e8 2b 32 00 00       	call   37d2 <open>
     5a7:	89 c6                	mov    %eax,%esi
     5a9:	83 c4 10             	add    $0x10,%esp
     5ac:	85 c0                	test   %eax,%eax
     5ae:	78 6d                	js     61d <writetest1+0xfc>
     5b0:	bb 00 00 00 00       	mov    $0x0,%ebx
     5b5:	83 ec 04             	sub    $0x4,%esp
     5b8:	68 00 02 00 00       	push   $0x200
     5bd:	68 00 84 00 00       	push   $0x8400
     5c2:	56                   	push   %esi
     5c3:	e8 e2 31 00 00       	call   37aa <read>
     5c8:	83 c4 10             	add    $0x10,%esp
     5cb:	85 c0                	test   %eax,%eax
     5cd:	74 66                	je     635 <writetest1+0x114>
     5cf:	3d 00 02 00 00       	cmp    $0x200,%eax
     5d4:	0f 85 b9 00 00 00    	jne    693 <writetest1+0x172>
     5da:	a1 00 84 00 00       	mov    0x8400,%eax
     5df:	39 d8                	cmp    %ebx,%eax
     5e1:	0f 85 c5 00 00 00    	jne    6ac <writetest1+0x18b>
     5e7:	83 c3 01             	add    $0x1,%ebx
     5ea:	eb c9                	jmp    5b5 <writetest1+0x94>
     5ec:	83 ec 08             	sub    $0x8,%esp
     5ef:	68 01 3e 00 00       	push   $0x3e01
     5f4:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     5fa:	e8 c5 32 00 00       	call   38c4 <printf>
     5ff:	e8 8e 31 00 00       	call   3792 <exit>
     604:	83 ec 04             	sub    $0x4,%esp
     607:	53                   	push   %ebx
     608:	68 1b 3e 00 00       	push   $0x3e1b
     60d:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     613:	e8 ac 32 00 00       	call   38c4 <printf>
     618:	e8 75 31 00 00       	call   3792 <exit>
     61d:	83 ec 08             	sub    $0x8,%esp
     620:	68 39 3e 00 00       	push   $0x3e39
     625:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     62b:	e8 94 32 00 00       	call   38c4 <printf>
     630:	e8 5d 31 00 00       	call   3792 <exit>
     635:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     63b:	74 39                	je     676 <writetest1+0x155>
     63d:	83 ec 0c             	sub    $0xc,%esp
     640:	56                   	push   %esi
     641:	e8 74 31 00 00       	call   37ba <close>
     646:	c7 04 24 6b 3e 00 00 	movl   $0x3e6b,(%esp)
     64d:	e8 90 31 00 00       	call   37e2 <unlink>
     652:	83 c4 10             	add    $0x10,%esp
     655:	85 c0                	test   %eax,%eax
     657:	78 6a                	js     6c3 <writetest1+0x1a2>
     659:	83 ec 08             	sub    $0x8,%esp
     65c:	68 92 3e 00 00       	push   $0x3e92
     661:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     667:	e8 58 32 00 00       	call   38c4 <printf>
     66c:	83 c4 10             	add    $0x10,%esp
     66f:	8d 65 f8             	lea    -0x8(%ebp),%esp
     672:	5b                   	pop    %ebx
     673:	5e                   	pop    %esi
     674:	5d                   	pop    %ebp
     675:	c3                   	ret    
     676:	83 ec 04             	sub    $0x4,%esp
     679:	68 8b 00 00 00       	push   $0x8b
     67e:	68 52 3e 00 00       	push   $0x3e52
     683:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     689:	e8 36 32 00 00       	call   38c4 <printf>
     68e:	e8 ff 30 00 00       	call   3792 <exit>
     693:	83 ec 04             	sub    $0x4,%esp
     696:	50                   	push   %eax
     697:	68 6f 3e 00 00       	push   $0x3e6f
     69c:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     6a2:	e8 1d 32 00 00       	call   38c4 <printf>
     6a7:	e8 e6 30 00 00       	call   3792 <exit>
     6ac:	50                   	push   %eax
     6ad:	53                   	push   %ebx
     6ae:	68 6c 4c 00 00       	push   $0x4c6c
     6b3:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     6b9:	e8 06 32 00 00       	call   38c4 <printf>
     6be:	e8 cf 30 00 00       	call   3792 <exit>
     6c3:	83 ec 08             	sub    $0x8,%esp
     6c6:	68 7f 3e 00 00       	push   $0x3e7f
     6cb:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     6d1:	e8 ee 31 00 00       	call   38c4 <printf>
     6d6:	e8 b7 30 00 00       	call   3792 <exit>

000006db <createtest>:
     6db:	55                   	push   %ebp
     6dc:	89 e5                	mov    %esp,%ebp
     6de:	53                   	push   %ebx
     6df:	83 ec 0c             	sub    $0xc,%esp
     6e2:	68 8c 4c 00 00       	push   $0x4c8c
     6e7:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     6ed:	e8 d2 31 00 00       	call   38c4 <printf>
     6f2:	c6 05 00 a4 00 00 61 	movb   $0x61,0xa400
     6f9:	c6 05 02 a4 00 00 00 	movb   $0x0,0xa402
     700:	83 c4 10             	add    $0x10,%esp
     703:	bb 30 00 00 00       	mov    $0x30,%ebx
     708:	88 1d 01 a4 00 00    	mov    %bl,0xa401
     70e:	83 ec 08             	sub    $0x8,%esp
     711:	68 02 02 00 00       	push   $0x202
     716:	68 00 a4 00 00       	push   $0xa400
     71b:	e8 b2 30 00 00       	call   37d2 <open>
     720:	89 04 24             	mov    %eax,(%esp)
     723:	e8 92 30 00 00       	call   37ba <close>
     728:	83 c3 01             	add    $0x1,%ebx
     72b:	83 c4 10             	add    $0x10,%esp
     72e:	80 fb 64             	cmp    $0x64,%bl
     731:	75 d5                	jne    708 <createtest+0x2d>
     733:	c6 05 00 a4 00 00 61 	movb   $0x61,0xa400
     73a:	c6 05 02 a4 00 00 00 	movb   $0x0,0xa402
     741:	bb 30 00 00 00       	mov    $0x30,%ebx
     746:	88 1d 01 a4 00 00    	mov    %bl,0xa401
     74c:	83 ec 0c             	sub    $0xc,%esp
     74f:	68 00 a4 00 00       	push   $0xa400
     754:	e8 89 30 00 00       	call   37e2 <unlink>
     759:	83 c3 01             	add    $0x1,%ebx
     75c:	83 c4 10             	add    $0x10,%esp
     75f:	80 fb 64             	cmp    $0x64,%bl
     762:	75 e2                	jne    746 <createtest+0x6b>
     764:	83 ec 08             	sub    $0x8,%esp
     767:	68 b4 4c 00 00       	push   $0x4cb4
     76c:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     772:	e8 4d 31 00 00       	call   38c4 <printf>
     777:	83 c4 10             	add    $0x10,%esp
     77a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     77d:	c9                   	leave  
     77e:	c3                   	ret    

0000077f <dirtest>:
     77f:	55                   	push   %ebp
     780:	89 e5                	mov    %esp,%ebp
     782:	83 ec 10             	sub    $0x10,%esp
     785:	68 a0 3e 00 00       	push   $0x3ea0
     78a:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     790:	e8 2f 31 00 00       	call   38c4 <printf>
     795:	c7 04 24 ac 3e 00 00 	movl   $0x3eac,(%esp)
     79c:	e8 59 30 00 00       	call   37fa <mkdir>
     7a1:	83 c4 10             	add    $0x10,%esp
     7a4:	85 c0                	test   %eax,%eax
     7a6:	78 54                	js     7fc <dirtest+0x7d>
     7a8:	83 ec 0c             	sub    $0xc,%esp
     7ab:	68 ac 3e 00 00       	push   $0x3eac
     7b0:	e8 4d 30 00 00       	call   3802 <chdir>
     7b5:	83 c4 10             	add    $0x10,%esp
     7b8:	85 c0                	test   %eax,%eax
     7ba:	78 58                	js     814 <dirtest+0x95>
     7bc:	83 ec 0c             	sub    $0xc,%esp
     7bf:	68 51 44 00 00       	push   $0x4451
     7c4:	e8 39 30 00 00       	call   3802 <chdir>
     7c9:	83 c4 10             	add    $0x10,%esp
     7cc:	85 c0                	test   %eax,%eax
     7ce:	78 5c                	js     82c <dirtest+0xad>
     7d0:	83 ec 0c             	sub    $0xc,%esp
     7d3:	68 ac 3e 00 00       	push   $0x3eac
     7d8:	e8 05 30 00 00       	call   37e2 <unlink>
     7dd:	83 c4 10             	add    $0x10,%esp
     7e0:	85 c0                	test   %eax,%eax
     7e2:	78 60                	js     844 <dirtest+0xc5>
     7e4:	83 ec 08             	sub    $0x8,%esp
     7e7:	68 e9 3e 00 00       	push   $0x3ee9
     7ec:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     7f2:	e8 cd 30 00 00       	call   38c4 <printf>
     7f7:	83 c4 10             	add    $0x10,%esp
     7fa:	c9                   	leave  
     7fb:	c3                   	ret    
     7fc:	83 ec 08             	sub    $0x8,%esp
     7ff:	68 dc 3b 00 00       	push   $0x3bdc
     804:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     80a:	e8 b5 30 00 00       	call   38c4 <printf>
     80f:	e8 7e 2f 00 00       	call   3792 <exit>
     814:	83 ec 08             	sub    $0x8,%esp
     817:	68 b1 3e 00 00       	push   $0x3eb1
     81c:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     822:	e8 9d 30 00 00       	call   38c4 <printf>
     827:	e8 66 2f 00 00       	call   3792 <exit>
     82c:	83 ec 08             	sub    $0x8,%esp
     82f:	68 c4 3e 00 00       	push   $0x3ec4
     834:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     83a:	e8 85 30 00 00       	call   38c4 <printf>
     83f:	e8 4e 2f 00 00       	call   3792 <exit>
     844:	83 ec 08             	sub    $0x8,%esp
     847:	68 d5 3e 00 00       	push   $0x3ed5
     84c:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     852:	e8 6d 30 00 00       	call   38c4 <printf>
     857:	e8 36 2f 00 00       	call   3792 <exit>

0000085c <exectest>:
     85c:	55                   	push   %ebp
     85d:	89 e5                	mov    %esp,%ebp
     85f:	83 ec 10             	sub    $0x10,%esp
     862:	68 f8 3e 00 00       	push   $0x3ef8
     867:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     86d:	e8 52 30 00 00       	call   38c4 <printf>
     872:	83 c4 08             	add    $0x8,%esp
     875:	68 10 5c 00 00       	push   $0x5c10
     87a:	68 c1 3c 00 00       	push   $0x3cc1
     87f:	e8 46 2f 00 00       	call   37ca <exec>
     884:	83 c4 10             	add    $0x10,%esp
     887:	85 c0                	test   %eax,%eax
     889:	78 02                	js     88d <exectest+0x31>
     88b:	c9                   	leave  
     88c:	c3                   	ret    
     88d:	83 ec 08             	sub    $0x8,%esp
     890:	68 03 3f 00 00       	push   $0x3f03
     895:	ff 35 0c 5c 00 00    	pushl  0x5c0c
     89b:	e8 24 30 00 00       	call   38c4 <printf>
     8a0:	e8 ed 2e 00 00       	call   3792 <exit>

000008a5 <pipe1>:
     8a5:	55                   	push   %ebp
     8a6:	89 e5                	mov    %esp,%ebp
     8a8:	57                   	push   %edi
     8a9:	56                   	push   %esi
     8aa:	53                   	push   %ebx
     8ab:	83 ec 38             	sub    $0x38,%esp
     8ae:	8d 45 e0             	lea    -0x20(%ebp),%eax
     8b1:	50                   	push   %eax
     8b2:	e8 eb 2e 00 00       	call   37a2 <pipe>
     8b7:	83 c4 10             	add    $0x10,%esp
     8ba:	85 c0                	test   %eax,%eax
     8bc:	75 75                	jne    933 <pipe1+0x8e>
     8be:	89 c3                	mov    %eax,%ebx
     8c0:	e8 c5 2e 00 00       	call   378a <fork>
     8c5:	85 c0                	test   %eax,%eax
     8c7:	74 7e                	je     947 <pipe1+0xa2>
     8c9:	85 c0                	test   %eax,%eax
     8cb:	0f 8e 62 01 00 00    	jle    a33 <pipe1+0x18e>
     8d1:	83 ec 0c             	sub    $0xc,%esp
     8d4:	ff 75 e4             	pushl  -0x1c(%ebp)
     8d7:	e8 de 2e 00 00       	call   37ba <close>
     8dc:	83 c4 10             	add    $0x10,%esp
     8df:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
     8e2:	be 01 00 00 00       	mov    $0x1,%esi
     8e7:	83 ec 04             	sub    $0x4,%esp
     8ea:	56                   	push   %esi
     8eb:	68 00 84 00 00       	push   $0x8400
     8f0:	ff 75 e0             	pushl  -0x20(%ebp)
     8f3:	e8 b2 2e 00 00       	call   37aa <read>
     8f8:	83 c4 10             	add    $0x10,%esp
     8fb:	85 c0                	test   %eax,%eax
     8fd:	0f 8e ec 00 00 00    	jle    9ef <pipe1+0x14a>
     903:	8d 53 01             	lea    0x1(%ebx),%edx
     906:	38 1d 00 84 00 00    	cmp    %bl,0x8400
     90c:	0f 85 a9 00 00 00    	jne    9bb <pipe1+0x116>
     912:	8d 3c 18             	lea    (%eax,%ebx,1),%edi
     915:	f7 db                	neg    %ebx
     917:	39 d7                	cmp    %edx,%edi
     919:	0f 84 b6 00 00 00    	je     9d5 <pipe1+0x130>
     91f:	8d 4a 01             	lea    0x1(%edx),%ecx
     922:	38 94 13 00 84 00 00 	cmp    %dl,0x8400(%ebx,%edx,1)
     929:	0f 85 8c 00 00 00    	jne    9bb <pipe1+0x116>
     92f:	89 ca                	mov    %ecx,%edx
     931:	eb e4                	jmp    917 <pipe1+0x72>
     933:	83 ec 08             	sub    $0x8,%esp
     936:	68 15 3f 00 00       	push   $0x3f15
     93b:	6a 01                	push   $0x1
     93d:	e8 82 2f 00 00       	call   38c4 <printf>
     942:	e8 4b 2e 00 00       	call   3792 <exit>
     947:	83 ec 0c             	sub    $0xc,%esp
     94a:	ff 75 e0             	pushl  -0x20(%ebp)
     94d:	e8 68 2e 00 00       	call   37ba <close>
     952:	83 c4 10             	add    $0x10,%esp
     955:	bb 00 00 00 00       	mov    $0x0,%ebx
     95a:	be 09 04 00 00       	mov    $0x409,%esi
     95f:	89 d8                	mov    %ebx,%eax
     961:	f7 d8                	neg    %eax
     963:	89 f2                	mov    %esi,%edx
     965:	29 da                	sub    %ebx,%edx
     967:	88 84 03 00 84 00 00 	mov    %al,0x8400(%ebx,%eax,1)
     96e:	83 c0 01             	add    $0x1,%eax
     971:	39 c2                	cmp    %eax,%edx
     973:	75 f2                	jne    967 <pipe1+0xc2>
     975:	83 ec 04             	sub    $0x4,%esp
     978:	68 09 04 00 00       	push   $0x409
     97d:	68 00 84 00 00       	push   $0x8400
     982:	ff 75 e4             	pushl  -0x1c(%ebp)
     985:	e8 28 2e 00 00       	call   37b2 <write>
     98a:	83 c4 10             	add    $0x10,%esp
     98d:	3d 09 04 00 00       	cmp    $0x409,%eax
     992:	75 13                	jne    9a7 <pipe1+0x102>
     994:	81 eb 09 04 00 00    	sub    $0x409,%ebx
     99a:	81 fb d3 eb ff ff    	cmp    $0xffffebd3,%ebx
     9a0:	75 bd                	jne    95f <pipe1+0xba>
     9a2:	e8 eb 2d 00 00       	call   3792 <exit>
     9a7:	83 ec 08             	sub    $0x8,%esp
     9aa:	68 24 3f 00 00       	push   $0x3f24
     9af:	6a 01                	push   $0x1
     9b1:	e8 0e 2f 00 00       	call   38c4 <printf>
     9b6:	e8 d7 2d 00 00       	call   3792 <exit>
     9bb:	83 ec 08             	sub    $0x8,%esp
     9be:	68 32 3f 00 00       	push   $0x3f32
     9c3:	6a 01                	push   $0x1
     9c5:	e8 fa 2e 00 00       	call   38c4 <printf>
     9ca:	83 c4 10             	add    $0x10,%esp
     9cd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9d0:	5b                   	pop    %ebx
     9d1:	5e                   	pop    %esi
     9d2:	5f                   	pop    %edi
     9d3:	5d                   	pop    %ebp
     9d4:	c3                   	ret    
     9d5:	01 45 d4             	add    %eax,-0x2c(%ebp)
     9d8:	01 f6                	add    %esi,%esi
     9da:	81 fe 01 20 00 00    	cmp    $0x2001,%esi
     9e0:	b8 00 20 00 00       	mov    $0x2000,%eax
     9e5:	0f 43 f0             	cmovae %eax,%esi
     9e8:	89 d3                	mov    %edx,%ebx
     9ea:	e9 f8 fe ff ff       	jmp    8e7 <pipe1+0x42>
     9ef:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     9f6:	75 24                	jne    a1c <pipe1+0x177>
     9f8:	83 ec 0c             	sub    $0xc,%esp
     9fb:	ff 75 e0             	pushl  -0x20(%ebp)
     9fe:	e8 b7 2d 00 00       	call   37ba <close>
     a03:	e8 92 2d 00 00       	call   379a <wait>
     a08:	83 c4 08             	add    $0x8,%esp
     a0b:	68 57 3f 00 00       	push   $0x3f57
     a10:	6a 01                	push   $0x1
     a12:	e8 ad 2e 00 00       	call   38c4 <printf>
     a17:	83 c4 10             	add    $0x10,%esp
     a1a:	eb b1                	jmp    9cd <pipe1+0x128>
     a1c:	83 ec 04             	sub    $0x4,%esp
     a1f:	ff 75 d4             	pushl  -0x2c(%ebp)
     a22:	68 40 3f 00 00       	push   $0x3f40
     a27:	6a 01                	push   $0x1
     a29:	e8 96 2e 00 00       	call   38c4 <printf>
     a2e:	e8 5f 2d 00 00       	call   3792 <exit>
     a33:	83 ec 08             	sub    $0x8,%esp
     a36:	68 61 3f 00 00       	push   $0x3f61
     a3b:	6a 01                	push   $0x1
     a3d:	e8 82 2e 00 00       	call   38c4 <printf>
     a42:	e8 4b 2d 00 00       	call   3792 <exit>

00000a47 <preempt>:
     a47:	55                   	push   %ebp
     a48:	89 e5                	mov    %esp,%ebp
     a4a:	57                   	push   %edi
     a4b:	56                   	push   %esi
     a4c:	53                   	push   %ebx
     a4d:	83 ec 24             	sub    $0x24,%esp
     a50:	68 70 3f 00 00       	push   $0x3f70
     a55:	6a 01                	push   $0x1
     a57:	e8 68 2e 00 00       	call   38c4 <printf>
     a5c:	e8 29 2d 00 00       	call   378a <fork>
     a61:	83 c4 10             	add    $0x10,%esp
     a64:	85 c0                	test   %eax,%eax
     a66:	75 02                	jne    a6a <preempt+0x23>
     a68:	eb fe                	jmp    a68 <preempt+0x21>
     a6a:	89 c7                	mov    %eax,%edi
     a6c:	e8 19 2d 00 00       	call   378a <fork>
     a71:	89 c6                	mov    %eax,%esi
     a73:	85 c0                	test   %eax,%eax
     a75:	75 02                	jne    a79 <preempt+0x32>
     a77:	eb fe                	jmp    a77 <preempt+0x30>
     a79:	83 ec 0c             	sub    $0xc,%esp
     a7c:	8d 45 e0             	lea    -0x20(%ebp),%eax
     a7f:	50                   	push   %eax
     a80:	e8 1d 2d 00 00       	call   37a2 <pipe>
     a85:	e8 00 2d 00 00       	call   378a <fork>
     a8a:	89 c3                	mov    %eax,%ebx
     a8c:	83 c4 10             	add    $0x10,%esp
     a8f:	85 c0                	test   %eax,%eax
     a91:	75 47                	jne    ada <preempt+0x93>
     a93:	83 ec 0c             	sub    $0xc,%esp
     a96:	ff 75 e0             	pushl  -0x20(%ebp)
     a99:	e8 1c 2d 00 00       	call   37ba <close>
     a9e:	83 c4 0c             	add    $0xc,%esp
     aa1:	6a 01                	push   $0x1
     aa3:	68 35 45 00 00       	push   $0x4535
     aa8:	ff 75 e4             	pushl  -0x1c(%ebp)
     aab:	e8 02 2d 00 00       	call   37b2 <write>
     ab0:	83 c4 10             	add    $0x10,%esp
     ab3:	83 f8 01             	cmp    $0x1,%eax
     ab6:	74 12                	je     aca <preempt+0x83>
     ab8:	83 ec 08             	sub    $0x8,%esp
     abb:	68 7a 3f 00 00       	push   $0x3f7a
     ac0:	6a 01                	push   $0x1
     ac2:	e8 fd 2d 00 00       	call   38c4 <printf>
     ac7:	83 c4 10             	add    $0x10,%esp
     aca:	83 ec 0c             	sub    $0xc,%esp
     acd:	ff 75 e4             	pushl  -0x1c(%ebp)
     ad0:	e8 e5 2c 00 00       	call   37ba <close>
     ad5:	83 c4 10             	add    $0x10,%esp
     ad8:	eb fe                	jmp    ad8 <preempt+0x91>
     ada:	83 ec 0c             	sub    $0xc,%esp
     add:	ff 75 e4             	pushl  -0x1c(%ebp)
     ae0:	e8 d5 2c 00 00       	call   37ba <close>
     ae5:	83 c4 0c             	add    $0xc,%esp
     ae8:	68 00 20 00 00       	push   $0x2000
     aed:	68 00 84 00 00       	push   $0x8400
     af2:	ff 75 e0             	pushl  -0x20(%ebp)
     af5:	e8 b0 2c 00 00       	call   37aa <read>
     afa:	83 c4 10             	add    $0x10,%esp
     afd:	83 f8 01             	cmp    $0x1,%eax
     b00:	74 1a                	je     b1c <preempt+0xd5>
     b02:	83 ec 08             	sub    $0x8,%esp
     b05:	68 8e 3f 00 00       	push   $0x3f8e
     b0a:	6a 01                	push   $0x1
     b0c:	e8 b3 2d 00 00       	call   38c4 <printf>
     b11:	83 c4 10             	add    $0x10,%esp
     b14:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b17:	5b                   	pop    %ebx
     b18:	5e                   	pop    %esi
     b19:	5f                   	pop    %edi
     b1a:	5d                   	pop    %ebp
     b1b:	c3                   	ret    
     b1c:	83 ec 0c             	sub    $0xc,%esp
     b1f:	ff 75 e0             	pushl  -0x20(%ebp)
     b22:	e8 93 2c 00 00       	call   37ba <close>
     b27:	83 c4 08             	add    $0x8,%esp
     b2a:	68 a1 3f 00 00       	push   $0x3fa1
     b2f:	6a 01                	push   $0x1
     b31:	e8 8e 2d 00 00       	call   38c4 <printf>
     b36:	89 3c 24             	mov    %edi,(%esp)
     b39:	e8 84 2c 00 00       	call   37c2 <kill>
     b3e:	89 34 24             	mov    %esi,(%esp)
     b41:	e8 7c 2c 00 00       	call   37c2 <kill>
     b46:	89 1c 24             	mov    %ebx,(%esp)
     b49:	e8 74 2c 00 00       	call   37c2 <kill>
     b4e:	83 c4 08             	add    $0x8,%esp
     b51:	68 aa 3f 00 00       	push   $0x3faa
     b56:	6a 01                	push   $0x1
     b58:	e8 67 2d 00 00       	call   38c4 <printf>
     b5d:	e8 38 2c 00 00       	call   379a <wait>
     b62:	e8 33 2c 00 00       	call   379a <wait>
     b67:	e8 2e 2c 00 00       	call   379a <wait>
     b6c:	83 c4 08             	add    $0x8,%esp
     b6f:	68 b3 3f 00 00       	push   $0x3fb3
     b74:	6a 01                	push   $0x1
     b76:	e8 49 2d 00 00       	call   38c4 <printf>
     b7b:	83 c4 10             	add    $0x10,%esp
     b7e:	eb 94                	jmp    b14 <preempt+0xcd>

00000b80 <exitwait>:
     b80:	55                   	push   %ebp
     b81:	89 e5                	mov    %esp,%ebp
     b83:	56                   	push   %esi
     b84:	53                   	push   %ebx
     b85:	be 64 00 00 00       	mov    $0x64,%esi
     b8a:	e8 fb 2b 00 00       	call   378a <fork>
     b8f:	89 c3                	mov    %eax,%ebx
     b91:	85 c0                	test   %eax,%eax
     b93:	78 26                	js     bbb <exitwait+0x3b>
     b95:	85 c0                	test   %eax,%eax
     b97:	74 4f                	je     be8 <exitwait+0x68>
     b99:	e8 fc 2b 00 00       	call   379a <wait>
     b9e:	39 d8                	cmp    %ebx,%eax
     ba0:	75 32                	jne    bd4 <exitwait+0x54>
     ba2:	83 ee 01             	sub    $0x1,%esi
     ba5:	75 e3                	jne    b8a <exitwait+0xa>
     ba7:	83 ec 08             	sub    $0x8,%esp
     baa:	68 cf 3f 00 00       	push   $0x3fcf
     baf:	6a 01                	push   $0x1
     bb1:	e8 0e 2d 00 00       	call   38c4 <printf>
     bb6:	83 c4 10             	add    $0x10,%esp
     bb9:	eb 12                	jmp    bcd <exitwait+0x4d>
     bbb:	83 ec 08             	sub    $0x8,%esp
     bbe:	68 1d 4b 00 00       	push   $0x4b1d
     bc3:	6a 01                	push   $0x1
     bc5:	e8 fa 2c 00 00       	call   38c4 <printf>
     bca:	83 c4 10             	add    $0x10,%esp
     bcd:	8d 65 f8             	lea    -0x8(%ebp),%esp
     bd0:	5b                   	pop    %ebx
     bd1:	5e                   	pop    %esi
     bd2:	5d                   	pop    %ebp
     bd3:	c3                   	ret    
     bd4:	83 ec 08             	sub    $0x8,%esp
     bd7:	68 bf 3f 00 00       	push   $0x3fbf
     bdc:	6a 01                	push   $0x1
     bde:	e8 e1 2c 00 00       	call   38c4 <printf>
     be3:	83 c4 10             	add    $0x10,%esp
     be6:	eb e5                	jmp    bcd <exitwait+0x4d>
     be8:	e8 a5 2b 00 00       	call   3792 <exit>

00000bed <mem>:
     bed:	55                   	push   %ebp
     bee:	89 e5                	mov    %esp,%ebp
     bf0:	57                   	push   %edi
     bf1:	56                   	push   %esi
     bf2:	53                   	push   %ebx
     bf3:	83 ec 14             	sub    $0x14,%esp
     bf6:	68 dc 3f 00 00       	push   $0x3fdc
     bfb:	6a 01                	push   $0x1
     bfd:	e8 c2 2c 00 00       	call   38c4 <printf>
     c02:	e8 0b 2c 00 00       	call   3812 <getpid>
     c07:	89 c6                	mov    %eax,%esi
     c09:	e8 7c 2b 00 00       	call   378a <fork>
     c0e:	83 c4 10             	add    $0x10,%esp
     c11:	bb 00 00 00 00       	mov    $0x0,%ebx
     c16:	85 c0                	test   %eax,%eax
     c18:	74 11                	je     c2b <mem+0x3e>
     c1a:	e8 7b 2b 00 00       	call   379a <wait>
     c1f:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c22:	5b                   	pop    %ebx
     c23:	5e                   	pop    %esi
     c24:	5f                   	pop    %edi
     c25:	5d                   	pop    %ebp
     c26:	c3                   	ret    
     c27:	89 18                	mov    %ebx,(%eax)
     c29:	89 c3                	mov    %eax,%ebx
     c2b:	83 ec 0c             	sub    $0xc,%esp
     c2e:	68 11 27 00 00       	push   $0x2711
     c33:	e8 ca 2e 00 00       	call   3b02 <malloc>
     c38:	83 c4 10             	add    $0x10,%esp
     c3b:	85 c0                	test   %eax,%eax
     c3d:	75 e8                	jne    c27 <mem+0x3a>
     c3f:	85 db                	test   %ebx,%ebx
     c41:	74 14                	je     c57 <mem+0x6a>
     c43:	8b 3b                	mov    (%ebx),%edi
     c45:	83 ec 0c             	sub    $0xc,%esp
     c48:	53                   	push   %ebx
     c49:	e8 46 2e 00 00       	call   3a94 <free>
     c4e:	89 fb                	mov    %edi,%ebx
     c50:	83 c4 10             	add    $0x10,%esp
     c53:	85 ff                	test   %edi,%edi
     c55:	75 ec                	jne    c43 <mem+0x56>
     c57:	83 ec 0c             	sub    $0xc,%esp
     c5a:	68 00 50 00 00       	push   $0x5000
     c5f:	e8 9e 2e 00 00       	call   3b02 <malloc>
     c64:	83 c4 10             	add    $0x10,%esp
     c67:	85 c0                	test   %eax,%eax
     c69:	74 1d                	je     c88 <mem+0x9b>
     c6b:	83 ec 0c             	sub    $0xc,%esp
     c6e:	50                   	push   %eax
     c6f:	e8 20 2e 00 00       	call   3a94 <free>
     c74:	83 c4 08             	add    $0x8,%esp
     c77:	68 00 40 00 00       	push   $0x4000
     c7c:	6a 01                	push   $0x1
     c7e:	e8 41 2c 00 00       	call   38c4 <printf>
     c83:	e8 0a 2b 00 00       	call   3792 <exit>
     c88:	83 ec 08             	sub    $0x8,%esp
     c8b:	68 e6 3f 00 00       	push   $0x3fe6
     c90:	6a 01                	push   $0x1
     c92:	e8 2d 2c 00 00       	call   38c4 <printf>
     c97:	89 34 24             	mov    %esi,(%esp)
     c9a:	e8 23 2b 00 00       	call   37c2 <kill>
     c9f:	e8 ee 2a 00 00       	call   3792 <exit>

00000ca4 <sharedfd>:
     ca4:	55                   	push   %ebp
     ca5:	89 e5                	mov    %esp,%ebp
     ca7:	57                   	push   %edi
     ca8:	56                   	push   %esi
     ca9:	53                   	push   %ebx
     caa:	83 ec 34             	sub    $0x34,%esp
     cad:	68 08 40 00 00       	push   $0x4008
     cb2:	6a 01                	push   $0x1
     cb4:	e8 0b 2c 00 00       	call   38c4 <printf>
     cb9:	c7 04 24 17 40 00 00 	movl   $0x4017,(%esp)
     cc0:	e8 1d 2b 00 00       	call   37e2 <unlink>
     cc5:	83 c4 08             	add    $0x8,%esp
     cc8:	68 02 02 00 00       	push   $0x202
     ccd:	68 17 40 00 00       	push   $0x4017
     cd2:	e8 fb 2a 00 00       	call   37d2 <open>
     cd7:	83 c4 10             	add    $0x10,%esp
     cda:	85 c0                	test   %eax,%eax
     cdc:	78 4a                	js     d28 <sharedfd+0x84>
     cde:	89 c6                	mov    %eax,%esi
     ce0:	e8 a5 2a 00 00       	call   378a <fork>
     ce5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     ce8:	83 f8 01             	cmp    $0x1,%eax
     ceb:	19 c0                	sbb    %eax,%eax
     ced:	83 e0 f3             	and    $0xfffffff3,%eax
     cf0:	83 c0 70             	add    $0x70,%eax
     cf3:	83 ec 04             	sub    $0x4,%esp
     cf6:	6a 0a                	push   $0xa
     cf8:	50                   	push   %eax
     cf9:	8d 45 de             	lea    -0x22(%ebp),%eax
     cfc:	50                   	push   %eax
     cfd:	e8 43 29 00 00       	call   3645 <memset>
     d02:	83 c4 10             	add    $0x10,%esp
     d05:	bb e8 03 00 00       	mov    $0x3e8,%ebx
     d0a:	8d 7d de             	lea    -0x22(%ebp),%edi
     d0d:	83 ec 04             	sub    $0x4,%esp
     d10:	6a 0a                	push   $0xa
     d12:	57                   	push   %edi
     d13:	56                   	push   %esi
     d14:	e8 99 2a 00 00       	call   37b2 <write>
     d19:	83 c4 10             	add    $0x10,%esp
     d1c:	83 f8 0a             	cmp    $0xa,%eax
     d1f:	75 1e                	jne    d3f <sharedfd+0x9b>
     d21:	83 eb 01             	sub    $0x1,%ebx
     d24:	75 e7                	jne    d0d <sharedfd+0x69>
     d26:	eb 29                	jmp    d51 <sharedfd+0xad>
     d28:	83 ec 08             	sub    $0x8,%esp
     d2b:	68 dc 4c 00 00       	push   $0x4cdc
     d30:	6a 01                	push   $0x1
     d32:	e8 8d 2b 00 00       	call   38c4 <printf>
     d37:	83 c4 10             	add    $0x10,%esp
     d3a:	e9 dd 00 00 00       	jmp    e1c <sharedfd+0x178>
     d3f:	83 ec 08             	sub    $0x8,%esp
     d42:	68 08 4d 00 00       	push   $0x4d08
     d47:	6a 01                	push   $0x1
     d49:	e8 76 2b 00 00       	call   38c4 <printf>
     d4e:	83 c4 10             	add    $0x10,%esp
     d51:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
     d55:	74 51                	je     da8 <sharedfd+0x104>
     d57:	e8 3e 2a 00 00       	call   379a <wait>
     d5c:	83 ec 0c             	sub    $0xc,%esp
     d5f:	56                   	push   %esi
     d60:	e8 55 2a 00 00       	call   37ba <close>
     d65:	83 c4 08             	add    $0x8,%esp
     d68:	6a 00                	push   $0x0
     d6a:	68 17 40 00 00       	push   $0x4017
     d6f:	e8 5e 2a 00 00       	call   37d2 <open>
     d74:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     d77:	83 c4 10             	add    $0x10,%esp
     d7a:	bb 00 00 00 00       	mov    $0x0,%ebx
     d7f:	bf 00 00 00 00       	mov    $0x0,%edi
     d84:	8d 75 e8             	lea    -0x18(%ebp),%esi
     d87:	85 c0                	test   %eax,%eax
     d89:	78 22                	js     dad <sharedfd+0x109>
     d8b:	83 ec 04             	sub    $0x4,%esp
     d8e:	6a 0a                	push   $0xa
     d90:	8d 45 de             	lea    -0x22(%ebp),%eax
     d93:	50                   	push   %eax
     d94:	ff 75 d4             	pushl  -0x2c(%ebp)
     d97:	e8 0e 2a 00 00       	call   37aa <read>
     d9c:	83 c4 10             	add    $0x10,%esp
     d9f:	85 c0                	test   %eax,%eax
     da1:	7e 3d                	jle    de0 <sharedfd+0x13c>
     da3:	8d 45 de             	lea    -0x22(%ebp),%eax
     da6:	eb 23                	jmp    dcb <sharedfd+0x127>
     da8:	e8 e5 29 00 00       	call   3792 <exit>
     dad:	83 ec 08             	sub    $0x8,%esp
     db0:	68 28 4d 00 00       	push   $0x4d28
     db5:	6a 01                	push   $0x1
     db7:	e8 08 2b 00 00       	call   38c4 <printf>
     dbc:	83 c4 10             	add    $0x10,%esp
     dbf:	eb 5b                	jmp    e1c <sharedfd+0x178>
     dc1:	83 c7 01             	add    $0x1,%edi
     dc4:	83 c0 01             	add    $0x1,%eax
     dc7:	39 f0                	cmp    %esi,%eax
     dc9:	74 c0                	je     d8b <sharedfd+0xe7>
     dcb:	0f b6 10             	movzbl (%eax),%edx
     dce:	80 fa 63             	cmp    $0x63,%dl
     dd1:	74 ee                	je     dc1 <sharedfd+0x11d>
     dd3:	80 fa 70             	cmp    $0x70,%dl
     dd6:	0f 94 c2             	sete   %dl
     dd9:	0f b6 d2             	movzbl %dl,%edx
     ddc:	01 d3                	add    %edx,%ebx
     dde:	eb e4                	jmp    dc4 <sharedfd+0x120>
     de0:	83 ec 0c             	sub    $0xc,%esp
     de3:	ff 75 d4             	pushl  -0x2c(%ebp)
     de6:	e8 cf 29 00 00       	call   37ba <close>
     deb:	c7 04 24 17 40 00 00 	movl   $0x4017,(%esp)
     df2:	e8 eb 29 00 00       	call   37e2 <unlink>
     df7:	83 c4 10             	add    $0x10,%esp
     dfa:	81 ff 10 27 00 00    	cmp    $0x2710,%edi
     e00:	75 22                	jne    e24 <sharedfd+0x180>
     e02:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     e08:	75 1a                	jne    e24 <sharedfd+0x180>
     e0a:	83 ec 08             	sub    $0x8,%esp
     e0d:	68 20 40 00 00       	push   $0x4020
     e12:	6a 01                	push   $0x1
     e14:	e8 ab 2a 00 00       	call   38c4 <printf>
     e19:	83 c4 10             	add    $0x10,%esp
     e1c:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e1f:	5b                   	pop    %ebx
     e20:	5e                   	pop    %esi
     e21:	5f                   	pop    %edi
     e22:	5d                   	pop    %ebp
     e23:	c3                   	ret    
     e24:	53                   	push   %ebx
     e25:	57                   	push   %edi
     e26:	68 2d 40 00 00       	push   $0x402d
     e2b:	6a 01                	push   $0x1
     e2d:	e8 92 2a 00 00       	call   38c4 <printf>
     e32:	e8 5b 29 00 00       	call   3792 <exit>

00000e37 <fourfiles>:
     e37:	55                   	push   %ebp
     e38:	89 e5                	mov    %esp,%ebp
     e3a:	57                   	push   %edi
     e3b:	56                   	push   %esi
     e3c:	53                   	push   %ebx
     e3d:	83 ec 34             	sub    $0x34,%esp
     e40:	c7 45 d8 42 40 00 00 	movl   $0x4042,-0x28(%ebp)
     e47:	c7 45 dc 8b 41 00 00 	movl   $0x418b,-0x24(%ebp)
     e4e:	c7 45 e0 8f 41 00 00 	movl   $0x418f,-0x20(%ebp)
     e55:	c7 45 e4 45 40 00 00 	movl   $0x4045,-0x1c(%ebp)
     e5c:	68 48 40 00 00       	push   $0x4048
     e61:	6a 01                	push   $0x1
     e63:	e8 5c 2a 00 00       	call   38c4 <printf>
     e68:	83 c4 10             	add    $0x10,%esp
     e6b:	bb 00 00 00 00       	mov    $0x0,%ebx
     e70:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
     e74:	83 ec 0c             	sub    $0xc,%esp
     e77:	56                   	push   %esi
     e78:	e8 65 29 00 00       	call   37e2 <unlink>
     e7d:	e8 08 29 00 00       	call   378a <fork>
     e82:	83 c4 10             	add    $0x10,%esp
     e85:	85 c0                	test   %eax,%eax
     e87:	78 2a                	js     eb3 <fourfiles+0x7c>
     e89:	85 c0                	test   %eax,%eax
     e8b:	74 3a                	je     ec7 <fourfiles+0x90>
     e8d:	83 c3 01             	add    $0x1,%ebx
     e90:	83 fb 04             	cmp    $0x4,%ebx
     e93:	75 db                	jne    e70 <fourfiles+0x39>
     e95:	e8 00 29 00 00       	call   379a <wait>
     e9a:	e8 fb 28 00 00       	call   379a <wait>
     e9f:	e8 f6 28 00 00       	call   379a <wait>
     ea4:	e8 f1 28 00 00       	call   379a <wait>
     ea9:	bf 30 00 00 00       	mov    $0x30,%edi
     eae:	e9 15 01 00 00       	jmp    fc8 <fourfiles+0x191>
     eb3:	83 ec 08             	sub    $0x8,%esp
     eb6:	68 1d 4b 00 00       	push   $0x4b1d
     ebb:	6a 01                	push   $0x1
     ebd:	e8 02 2a 00 00       	call   38c4 <printf>
     ec2:	e8 cb 28 00 00       	call   3792 <exit>
     ec7:	83 ec 08             	sub    $0x8,%esp
     eca:	68 02 02 00 00       	push   $0x202
     ecf:	56                   	push   %esi
     ed0:	e8 fd 28 00 00       	call   37d2 <open>
     ed5:	89 c6                	mov    %eax,%esi
     ed7:	83 c4 10             	add    $0x10,%esp
     eda:	85 c0                	test   %eax,%eax
     edc:	78 45                	js     f23 <fourfiles+0xec>
     ede:	83 ec 04             	sub    $0x4,%esp
     ee1:	68 00 02 00 00       	push   $0x200
     ee6:	83 c3 30             	add    $0x30,%ebx
     ee9:	53                   	push   %ebx
     eea:	68 00 84 00 00       	push   $0x8400
     eef:	e8 51 27 00 00       	call   3645 <memset>
     ef4:	83 c4 10             	add    $0x10,%esp
     ef7:	bb 0c 00 00 00       	mov    $0xc,%ebx
     efc:	83 ec 04             	sub    $0x4,%esp
     eff:	68 f4 01 00 00       	push   $0x1f4
     f04:	68 00 84 00 00       	push   $0x8400
     f09:	56                   	push   %esi
     f0a:	e8 a3 28 00 00       	call   37b2 <write>
     f0f:	83 c4 10             	add    $0x10,%esp
     f12:	3d f4 01 00 00       	cmp    $0x1f4,%eax
     f17:	75 1e                	jne    f37 <fourfiles+0x100>
     f19:	83 eb 01             	sub    $0x1,%ebx
     f1c:	75 de                	jne    efc <fourfiles+0xc5>
     f1e:	e8 6f 28 00 00       	call   3792 <exit>
     f23:	83 ec 08             	sub    $0x8,%esp
     f26:	68 e3 42 00 00       	push   $0x42e3
     f2b:	6a 01                	push   $0x1
     f2d:	e8 92 29 00 00       	call   38c4 <printf>
     f32:	e8 5b 28 00 00       	call   3792 <exit>
     f37:	83 ec 04             	sub    $0x4,%esp
     f3a:	50                   	push   %eax
     f3b:	68 58 40 00 00       	push   $0x4058
     f40:	6a 01                	push   $0x1
     f42:	e8 7d 29 00 00       	call   38c4 <printf>
     f47:	e8 46 28 00 00       	call   3792 <exit>
     f4c:	01 d3                	add    %edx,%ebx
     f4e:	83 ec 04             	sub    $0x4,%esp
     f51:	68 00 20 00 00       	push   $0x2000
     f56:	68 00 84 00 00       	push   $0x8400
     f5b:	56                   	push   %esi
     f5c:	e8 49 28 00 00       	call   37aa <read>
     f61:	83 c4 10             	add    $0x10,%esp
     f64:	85 c0                	test   %eax,%eax
     f66:	7e 36                	jle    f9e <fourfiles+0x167>
     f68:	0f b6 0d 00 84 00 00 	movzbl 0x8400,%ecx
     f6f:	0f be d1             	movsbl %cl,%edx
     f72:	39 fa                	cmp    %edi,%edx
     f74:	75 14                	jne    f8a <fourfiles+0x153>
     f76:	ba 00 00 00 00       	mov    $0x0,%edx
     f7b:	83 c2 01             	add    $0x1,%edx
     f7e:	39 d0                	cmp    %edx,%eax
     f80:	74 ca                	je     f4c <fourfiles+0x115>
     f82:	38 8a 00 84 00 00    	cmp    %cl,0x8400(%edx)
     f88:	74 f1                	je     f7b <fourfiles+0x144>
     f8a:	83 ec 08             	sub    $0x8,%esp
     f8d:	68 69 40 00 00       	push   $0x4069
     f92:	6a 01                	push   $0x1
     f94:	e8 2b 29 00 00       	call   38c4 <printf>
     f99:	e8 f4 27 00 00       	call   3792 <exit>
     f9e:	83 ec 0c             	sub    $0xc,%esp
     fa1:	56                   	push   %esi
     fa2:	e8 13 28 00 00       	call   37ba <close>
     fa7:	83 c4 10             	add    $0x10,%esp
     faa:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
     fb0:	75 3a                	jne    fec <fourfiles+0x1b5>
     fb2:	83 ec 0c             	sub    $0xc,%esp
     fb5:	ff 75 d4             	pushl  -0x2c(%ebp)
     fb8:	e8 25 28 00 00       	call   37e2 <unlink>
     fbd:	83 c7 01             	add    $0x1,%edi
     fc0:	83 c4 10             	add    $0x10,%esp
     fc3:	83 ff 32             	cmp    $0x32,%edi
     fc6:	74 39                	je     1001 <fourfiles+0x1ca>
     fc8:	8b 84 bd 18 ff ff ff 	mov    -0xe8(%ebp,%edi,4),%eax
     fcf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     fd2:	83 ec 08             	sub    $0x8,%esp
     fd5:	6a 00                	push   $0x0
     fd7:	50                   	push   %eax
     fd8:	e8 f5 27 00 00       	call   37d2 <open>
     fdd:	89 c6                	mov    %eax,%esi
     fdf:	83 c4 10             	add    $0x10,%esp
     fe2:	bb 00 00 00 00       	mov    $0x0,%ebx
     fe7:	e9 62 ff ff ff       	jmp    f4e <fourfiles+0x117>
     fec:	83 ec 04             	sub    $0x4,%esp
     fef:	53                   	push   %ebx
     ff0:	68 75 40 00 00       	push   $0x4075
     ff5:	6a 01                	push   $0x1
     ff7:	e8 c8 28 00 00       	call   38c4 <printf>
     ffc:	e8 91 27 00 00       	call   3792 <exit>
    1001:	83 ec 08             	sub    $0x8,%esp
    1004:	68 86 40 00 00       	push   $0x4086
    1009:	6a 01                	push   $0x1
    100b:	e8 b4 28 00 00       	call   38c4 <printf>
    1010:	83 c4 10             	add    $0x10,%esp
    1013:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1016:	5b                   	pop    %ebx
    1017:	5e                   	pop    %esi
    1018:	5f                   	pop    %edi
    1019:	5d                   	pop    %ebp
    101a:	c3                   	ret    

0000101b <createdelete>:
    101b:	55                   	push   %ebp
    101c:	89 e5                	mov    %esp,%ebp
    101e:	57                   	push   %edi
    101f:	56                   	push   %esi
    1020:	53                   	push   %ebx
    1021:	83 ec 44             	sub    $0x44,%esp
    1024:	68 94 40 00 00       	push   $0x4094
    1029:	6a 01                	push   $0x1
    102b:	e8 94 28 00 00       	call   38c4 <printf>
    1030:	83 c4 10             	add    $0x10,%esp
    1033:	be 00 00 00 00       	mov    $0x0,%esi
    1038:	e8 4d 27 00 00       	call   378a <fork>
    103d:	85 c0                	test   %eax,%eax
    103f:	78 3c                	js     107d <createdelete+0x62>
    1041:	85 c0                	test   %eax,%eax
    1043:	74 4c                	je     1091 <createdelete+0x76>
    1045:	83 c6 01             	add    $0x1,%esi
    1048:	83 fe 04             	cmp    $0x4,%esi
    104b:	75 eb                	jne    1038 <createdelete+0x1d>
    104d:	e8 48 27 00 00       	call   379a <wait>
    1052:	e8 43 27 00 00       	call   379a <wait>
    1057:	e8 3e 27 00 00       	call   379a <wait>
    105c:	e8 39 27 00 00       	call   379a <wait>
    1061:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1065:	c6 45 c7 30          	movb   $0x30,-0x39(%ebp)
    1069:	c7 45 c0 ff ff ff ff 	movl   $0xffffffff,-0x40(%ebp)
    1070:	be 00 00 00 00       	mov    $0x0,%esi
    1075:	8d 7d c8             	lea    -0x38(%ebp),%edi
    1078:	e9 38 01 00 00       	jmp    11b5 <createdelete+0x19a>
    107d:	83 ec 08             	sub    $0x8,%esp
    1080:	68 1d 4b 00 00       	push   $0x4b1d
    1085:	6a 01                	push   $0x1
    1087:	e8 38 28 00 00       	call   38c4 <printf>
    108c:	e8 01 27 00 00       	call   3792 <exit>
    1091:	89 c3                	mov    %eax,%ebx
    1093:	8d 46 70             	lea    0x70(%esi),%eax
    1096:	88 45 c8             	mov    %al,-0x38(%ebp)
    1099:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    109d:	8d 75 c8             	lea    -0x38(%ebp),%esi
    10a0:	eb 1c                	jmp    10be <createdelete+0xa3>
    10a2:	83 ec 08             	sub    $0x8,%esp
    10a5:	68 e3 42 00 00       	push   $0x42e3
    10aa:	6a 01                	push   $0x1
    10ac:	e8 13 28 00 00       	call   38c4 <printf>
    10b1:	e8 dc 26 00 00       	call   3792 <exit>
    10b6:	83 c3 01             	add    $0x1,%ebx
    10b9:	83 fb 14             	cmp    $0x14,%ebx
    10bc:	74 63                	je     1121 <createdelete+0x106>
    10be:	8d 43 30             	lea    0x30(%ebx),%eax
    10c1:	88 45 c9             	mov    %al,-0x37(%ebp)
    10c4:	83 ec 08             	sub    $0x8,%esp
    10c7:	68 02 02 00 00       	push   $0x202
    10cc:	56                   	push   %esi
    10cd:	e8 00 27 00 00       	call   37d2 <open>
    10d2:	83 c4 10             	add    $0x10,%esp
    10d5:	85 c0                	test   %eax,%eax
    10d7:	78 c9                	js     10a2 <createdelete+0x87>
    10d9:	83 ec 0c             	sub    $0xc,%esp
    10dc:	50                   	push   %eax
    10dd:	e8 d8 26 00 00       	call   37ba <close>
    10e2:	83 c4 10             	add    $0x10,%esp
    10e5:	85 db                	test   %ebx,%ebx
    10e7:	7e cd                	jle    10b6 <createdelete+0x9b>
    10e9:	f6 c3 01             	test   $0x1,%bl
    10ec:	75 c8                	jne    10b6 <createdelete+0x9b>
    10ee:	89 d8                	mov    %ebx,%eax
    10f0:	c1 e8 1f             	shr    $0x1f,%eax
    10f3:	01 d8                	add    %ebx,%eax
    10f5:	d1 f8                	sar    %eax
    10f7:	83 c0 30             	add    $0x30,%eax
    10fa:	88 45 c9             	mov    %al,-0x37(%ebp)
    10fd:	83 ec 0c             	sub    $0xc,%esp
    1100:	56                   	push   %esi
    1101:	e8 dc 26 00 00       	call   37e2 <unlink>
    1106:	83 c4 10             	add    $0x10,%esp
    1109:	85 c0                	test   %eax,%eax
    110b:	79 a9                	jns    10b6 <createdelete+0x9b>
    110d:	83 ec 08             	sub    $0x8,%esp
    1110:	68 95 3c 00 00       	push   $0x3c95
    1115:	6a 01                	push   $0x1
    1117:	e8 a8 27 00 00       	call   38c4 <printf>
    111c:	e8 71 26 00 00       	call   3792 <exit>
    1121:	e8 6c 26 00 00       	call   3792 <exit>
    1126:	83 ec 04             	sub    $0x4,%esp
    1129:	8d 45 c8             	lea    -0x38(%ebp),%eax
    112c:	50                   	push   %eax
    112d:	68 54 4d 00 00       	push   $0x4d54
    1132:	6a 01                	push   $0x1
    1134:	e8 8b 27 00 00       	call   38c4 <printf>
    1139:	e8 54 26 00 00       	call   3792 <exit>
    113e:	85 c0                	test   %eax,%eax
    1140:	79 55                	jns    1197 <createdelete+0x17c>
    1142:	83 c3 01             	add    $0x1,%ebx
    1145:	80 fb 74             	cmp    $0x74,%bl
    1148:	74 5b                	je     11a5 <createdelete+0x18a>
    114a:	88 5d c8             	mov    %bl,-0x38(%ebp)
    114d:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    1151:	88 45 c9             	mov    %al,-0x37(%ebp)
    1154:	83 ec 08             	sub    $0x8,%esp
    1157:	6a 00                	push   $0x0
    1159:	57                   	push   %edi
    115a:	e8 73 26 00 00       	call   37d2 <open>
    115f:	83 c4 10             	add    $0x10,%esp
    1162:	85 f6                	test   %esi,%esi
    1164:	0f 94 c1             	sete   %cl
    1167:	83 fe 09             	cmp    $0x9,%esi
    116a:	0f 9f c2             	setg   %dl
    116d:	08 d1                	or     %dl,%cl
    116f:	74 04                	je     1175 <createdelete+0x15a>
    1171:	85 c0                	test   %eax,%eax
    1173:	78 b1                	js     1126 <createdelete+0x10b>
    1175:	85 c0                	test   %eax,%eax
    1177:	78 c5                	js     113e <createdelete+0x123>
    1179:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    117d:	77 bf                	ja     113e <createdelete+0x123>
    117f:	83 ec 04             	sub    $0x4,%esp
    1182:	8d 45 c8             	lea    -0x38(%ebp),%eax
    1185:	50                   	push   %eax
    1186:	68 78 4d 00 00       	push   $0x4d78
    118b:	6a 01                	push   $0x1
    118d:	e8 32 27 00 00       	call   38c4 <printf>
    1192:	e8 fb 25 00 00       	call   3792 <exit>
    1197:	83 ec 0c             	sub    $0xc,%esp
    119a:	50                   	push   %eax
    119b:	e8 1a 26 00 00       	call   37ba <close>
    11a0:	83 c4 10             	add    $0x10,%esp
    11a3:	eb 9d                	jmp    1142 <createdelete+0x127>
    11a5:	83 c6 01             	add    $0x1,%esi
    11a8:	83 45 c0 01          	addl   $0x1,-0x40(%ebp)
    11ac:	80 45 c7 01          	addb   $0x1,-0x39(%ebp)
    11b0:	83 fe 14             	cmp    $0x14,%esi
    11b3:	74 38                	je     11ed <createdelete+0x1d2>
    11b5:	bb 70 00 00 00       	mov    $0x70,%ebx
    11ba:	eb 8e                	jmp    114a <createdelete+0x12f>
    11bc:	83 c6 01             	add    $0x1,%esi
    11bf:	80 45 c7 01          	addb   $0x1,-0x39(%ebp)
    11c3:	89 f0                	mov    %esi,%eax
    11c5:	3c 84                	cmp    $0x84,%al
    11c7:	74 32                	je     11fb <createdelete+0x1e0>
    11c9:	bb 04 00 00 00       	mov    $0x4,%ebx
    11ce:	89 f0                	mov    %esi,%eax
    11d0:	88 45 c8             	mov    %al,-0x38(%ebp)
    11d3:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    11d7:	88 45 c9             	mov    %al,-0x37(%ebp)
    11da:	83 ec 0c             	sub    $0xc,%esp
    11dd:	57                   	push   %edi
    11de:	e8 ff 25 00 00       	call   37e2 <unlink>
    11e3:	83 c4 10             	add    $0x10,%esp
    11e6:	83 eb 01             	sub    $0x1,%ebx
    11e9:	75 e3                	jne    11ce <createdelete+0x1b3>
    11eb:	eb cf                	jmp    11bc <createdelete+0x1a1>
    11ed:	c6 45 c7 30          	movb   $0x30,-0x39(%ebp)
    11f1:	be 70 00 00 00       	mov    $0x70,%esi
    11f6:	8d 7d c8             	lea    -0x38(%ebp),%edi
    11f9:	eb ce                	jmp    11c9 <createdelete+0x1ae>
    11fb:	83 ec 08             	sub    $0x8,%esp
    11fe:	68 a7 40 00 00       	push   $0x40a7
    1203:	6a 01                	push   $0x1
    1205:	e8 ba 26 00 00       	call   38c4 <printf>
    120a:	83 c4 10             	add    $0x10,%esp
    120d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1210:	5b                   	pop    %ebx
    1211:	5e                   	pop    %esi
    1212:	5f                   	pop    %edi
    1213:	5d                   	pop    %ebp
    1214:	c3                   	ret    

00001215 <unlinkread>:
    1215:	55                   	push   %ebp
    1216:	89 e5                	mov    %esp,%ebp
    1218:	56                   	push   %esi
    1219:	53                   	push   %ebx
    121a:	83 ec 08             	sub    $0x8,%esp
    121d:	68 b8 40 00 00       	push   $0x40b8
    1222:	6a 01                	push   $0x1
    1224:	e8 9b 26 00 00       	call   38c4 <printf>
    1229:	83 c4 08             	add    $0x8,%esp
    122c:	68 02 02 00 00       	push   $0x202
    1231:	68 c9 40 00 00       	push   $0x40c9
    1236:	e8 97 25 00 00       	call   37d2 <open>
    123b:	83 c4 10             	add    $0x10,%esp
    123e:	85 c0                	test   %eax,%eax
    1240:	0f 88 f0 00 00 00    	js     1336 <unlinkread+0x121>
    1246:	89 c3                	mov    %eax,%ebx
    1248:	83 ec 04             	sub    $0x4,%esp
    124b:	6a 05                	push   $0x5
    124d:	68 ee 40 00 00       	push   $0x40ee
    1252:	50                   	push   %eax
    1253:	e8 5a 25 00 00       	call   37b2 <write>
    1258:	89 1c 24             	mov    %ebx,(%esp)
    125b:	e8 5a 25 00 00       	call   37ba <close>
    1260:	83 c4 08             	add    $0x8,%esp
    1263:	6a 02                	push   $0x2
    1265:	68 c9 40 00 00       	push   $0x40c9
    126a:	e8 63 25 00 00       	call   37d2 <open>
    126f:	89 c3                	mov    %eax,%ebx
    1271:	83 c4 10             	add    $0x10,%esp
    1274:	85 c0                	test   %eax,%eax
    1276:	0f 88 ce 00 00 00    	js     134a <unlinkread+0x135>
    127c:	83 ec 0c             	sub    $0xc,%esp
    127f:	68 c9 40 00 00       	push   $0x40c9
    1284:	e8 59 25 00 00       	call   37e2 <unlink>
    1289:	83 c4 10             	add    $0x10,%esp
    128c:	85 c0                	test   %eax,%eax
    128e:	0f 85 ca 00 00 00    	jne    135e <unlinkread+0x149>
    1294:	83 ec 08             	sub    $0x8,%esp
    1297:	68 02 02 00 00       	push   $0x202
    129c:	68 c9 40 00 00       	push   $0x40c9
    12a1:	e8 2c 25 00 00       	call   37d2 <open>
    12a6:	89 c6                	mov    %eax,%esi
    12a8:	83 c4 0c             	add    $0xc,%esp
    12ab:	6a 03                	push   $0x3
    12ad:	68 26 41 00 00       	push   $0x4126
    12b2:	50                   	push   %eax
    12b3:	e8 fa 24 00 00       	call   37b2 <write>
    12b8:	89 34 24             	mov    %esi,(%esp)
    12bb:	e8 fa 24 00 00       	call   37ba <close>
    12c0:	83 c4 0c             	add    $0xc,%esp
    12c3:	68 00 20 00 00       	push   $0x2000
    12c8:	68 00 84 00 00       	push   $0x8400
    12cd:	53                   	push   %ebx
    12ce:	e8 d7 24 00 00       	call   37aa <read>
    12d3:	83 c4 10             	add    $0x10,%esp
    12d6:	83 f8 05             	cmp    $0x5,%eax
    12d9:	0f 85 93 00 00 00    	jne    1372 <unlinkread+0x15d>
    12df:	80 3d 00 84 00 00 68 	cmpb   $0x68,0x8400
    12e6:	0f 85 9a 00 00 00    	jne    1386 <unlinkread+0x171>
    12ec:	83 ec 04             	sub    $0x4,%esp
    12ef:	6a 0a                	push   $0xa
    12f1:	68 00 84 00 00       	push   $0x8400
    12f6:	53                   	push   %ebx
    12f7:	e8 b6 24 00 00       	call   37b2 <write>
    12fc:	83 c4 10             	add    $0x10,%esp
    12ff:	83 f8 0a             	cmp    $0xa,%eax
    1302:	0f 85 92 00 00 00    	jne    139a <unlinkread+0x185>
    1308:	83 ec 0c             	sub    $0xc,%esp
    130b:	53                   	push   %ebx
    130c:	e8 a9 24 00 00       	call   37ba <close>
    1311:	c7 04 24 c9 40 00 00 	movl   $0x40c9,(%esp)
    1318:	e8 c5 24 00 00       	call   37e2 <unlink>
    131d:	83 c4 08             	add    $0x8,%esp
    1320:	68 71 41 00 00       	push   $0x4171
    1325:	6a 01                	push   $0x1
    1327:	e8 98 25 00 00       	call   38c4 <printf>
    132c:	83 c4 10             	add    $0x10,%esp
    132f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1332:	5b                   	pop    %ebx
    1333:	5e                   	pop    %esi
    1334:	5d                   	pop    %ebp
    1335:	c3                   	ret    
    1336:	83 ec 08             	sub    $0x8,%esp
    1339:	68 d4 40 00 00       	push   $0x40d4
    133e:	6a 01                	push   $0x1
    1340:	e8 7f 25 00 00       	call   38c4 <printf>
    1345:	e8 48 24 00 00       	call   3792 <exit>
    134a:	83 ec 08             	sub    $0x8,%esp
    134d:	68 f4 40 00 00       	push   $0x40f4
    1352:	6a 01                	push   $0x1
    1354:	e8 6b 25 00 00       	call   38c4 <printf>
    1359:	e8 34 24 00 00       	call   3792 <exit>
    135e:	83 ec 08             	sub    $0x8,%esp
    1361:	68 0c 41 00 00       	push   $0x410c
    1366:	6a 01                	push   $0x1
    1368:	e8 57 25 00 00       	call   38c4 <printf>
    136d:	e8 20 24 00 00       	call   3792 <exit>
    1372:	83 ec 08             	sub    $0x8,%esp
    1375:	68 2a 41 00 00       	push   $0x412a
    137a:	6a 01                	push   $0x1
    137c:	e8 43 25 00 00       	call   38c4 <printf>
    1381:	e8 0c 24 00 00       	call   3792 <exit>
    1386:	83 ec 08             	sub    $0x8,%esp
    1389:	68 41 41 00 00       	push   $0x4141
    138e:	6a 01                	push   $0x1
    1390:	e8 2f 25 00 00       	call   38c4 <printf>
    1395:	e8 f8 23 00 00       	call   3792 <exit>
    139a:	83 ec 08             	sub    $0x8,%esp
    139d:	68 58 41 00 00       	push   $0x4158
    13a2:	6a 01                	push   $0x1
    13a4:	e8 1b 25 00 00       	call   38c4 <printf>
    13a9:	e8 e4 23 00 00       	call   3792 <exit>

000013ae <linktest>:
    13ae:	55                   	push   %ebp
    13af:	89 e5                	mov    %esp,%ebp
    13b1:	53                   	push   %ebx
    13b2:	83 ec 0c             	sub    $0xc,%esp
    13b5:	68 80 41 00 00       	push   $0x4180
    13ba:	6a 01                	push   $0x1
    13bc:	e8 03 25 00 00       	call   38c4 <printf>
    13c1:	c7 04 24 8a 41 00 00 	movl   $0x418a,(%esp)
    13c8:	e8 15 24 00 00       	call   37e2 <unlink>
    13cd:	c7 04 24 8e 41 00 00 	movl   $0x418e,(%esp)
    13d4:	e8 09 24 00 00       	call   37e2 <unlink>
    13d9:	83 c4 08             	add    $0x8,%esp
    13dc:	68 02 02 00 00       	push   $0x202
    13e1:	68 8a 41 00 00       	push   $0x418a
    13e6:	e8 e7 23 00 00       	call   37d2 <open>
    13eb:	83 c4 10             	add    $0x10,%esp
    13ee:	85 c0                	test   %eax,%eax
    13f0:	0f 88 2a 01 00 00    	js     1520 <linktest+0x172>
    13f6:	89 c3                	mov    %eax,%ebx
    13f8:	83 ec 04             	sub    $0x4,%esp
    13fb:	6a 05                	push   $0x5
    13fd:	68 ee 40 00 00       	push   $0x40ee
    1402:	50                   	push   %eax
    1403:	e8 aa 23 00 00       	call   37b2 <write>
    1408:	83 c4 10             	add    $0x10,%esp
    140b:	83 f8 05             	cmp    $0x5,%eax
    140e:	0f 85 20 01 00 00    	jne    1534 <linktest+0x186>
    1414:	83 ec 0c             	sub    $0xc,%esp
    1417:	53                   	push   %ebx
    1418:	e8 9d 23 00 00       	call   37ba <close>
    141d:	83 c4 08             	add    $0x8,%esp
    1420:	68 8e 41 00 00       	push   $0x418e
    1425:	68 8a 41 00 00       	push   $0x418a
    142a:	e8 c3 23 00 00       	call   37f2 <link>
    142f:	83 c4 10             	add    $0x10,%esp
    1432:	85 c0                	test   %eax,%eax
    1434:	0f 88 0e 01 00 00    	js     1548 <linktest+0x19a>
    143a:	83 ec 0c             	sub    $0xc,%esp
    143d:	68 8a 41 00 00       	push   $0x418a
    1442:	e8 9b 23 00 00       	call   37e2 <unlink>
    1447:	83 c4 08             	add    $0x8,%esp
    144a:	6a 00                	push   $0x0
    144c:	68 8a 41 00 00       	push   $0x418a
    1451:	e8 7c 23 00 00       	call   37d2 <open>
    1456:	83 c4 10             	add    $0x10,%esp
    1459:	85 c0                	test   %eax,%eax
    145b:	0f 89 fb 00 00 00    	jns    155c <linktest+0x1ae>
    1461:	83 ec 08             	sub    $0x8,%esp
    1464:	6a 00                	push   $0x0
    1466:	68 8e 41 00 00       	push   $0x418e
    146b:	e8 62 23 00 00       	call   37d2 <open>
    1470:	89 c3                	mov    %eax,%ebx
    1472:	83 c4 10             	add    $0x10,%esp
    1475:	85 c0                	test   %eax,%eax
    1477:	0f 88 f3 00 00 00    	js     1570 <linktest+0x1c2>
    147d:	83 ec 04             	sub    $0x4,%esp
    1480:	68 00 20 00 00       	push   $0x2000
    1485:	68 00 84 00 00       	push   $0x8400
    148a:	50                   	push   %eax
    148b:	e8 1a 23 00 00       	call   37aa <read>
    1490:	83 c4 10             	add    $0x10,%esp
    1493:	83 f8 05             	cmp    $0x5,%eax
    1496:	0f 85 e8 00 00 00    	jne    1584 <linktest+0x1d6>
    149c:	83 ec 0c             	sub    $0xc,%esp
    149f:	53                   	push   %ebx
    14a0:	e8 15 23 00 00       	call   37ba <close>
    14a5:	83 c4 08             	add    $0x8,%esp
    14a8:	68 8e 41 00 00       	push   $0x418e
    14ad:	68 8e 41 00 00       	push   $0x418e
    14b2:	e8 3b 23 00 00       	call   37f2 <link>
    14b7:	83 c4 10             	add    $0x10,%esp
    14ba:	85 c0                	test   %eax,%eax
    14bc:	0f 89 d6 00 00 00    	jns    1598 <linktest+0x1ea>
    14c2:	83 ec 0c             	sub    $0xc,%esp
    14c5:	68 8e 41 00 00       	push   $0x418e
    14ca:	e8 13 23 00 00       	call   37e2 <unlink>
    14cf:	83 c4 08             	add    $0x8,%esp
    14d2:	68 8a 41 00 00       	push   $0x418a
    14d7:	68 8e 41 00 00       	push   $0x418e
    14dc:	e8 11 23 00 00       	call   37f2 <link>
    14e1:	83 c4 10             	add    $0x10,%esp
    14e4:	85 c0                	test   %eax,%eax
    14e6:	0f 89 c0 00 00 00    	jns    15ac <linktest+0x1fe>
    14ec:	83 ec 08             	sub    $0x8,%esp
    14ef:	68 8a 41 00 00       	push   $0x418a
    14f4:	68 52 44 00 00       	push   $0x4452
    14f9:	e8 f4 22 00 00       	call   37f2 <link>
    14fe:	83 c4 10             	add    $0x10,%esp
    1501:	85 c0                	test   %eax,%eax
    1503:	0f 89 b7 00 00 00    	jns    15c0 <linktest+0x212>
    1509:	83 ec 08             	sub    $0x8,%esp
    150c:	68 28 42 00 00       	push   $0x4228
    1511:	6a 01                	push   $0x1
    1513:	e8 ac 23 00 00       	call   38c4 <printf>
    1518:	83 c4 10             	add    $0x10,%esp
    151b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    151e:	c9                   	leave  
    151f:	c3                   	ret    
    1520:	83 ec 08             	sub    $0x8,%esp
    1523:	68 92 41 00 00       	push   $0x4192
    1528:	6a 01                	push   $0x1
    152a:	e8 95 23 00 00       	call   38c4 <printf>
    152f:	e8 5e 22 00 00       	call   3792 <exit>
    1534:	83 ec 08             	sub    $0x8,%esp
    1537:	68 a5 41 00 00       	push   $0x41a5
    153c:	6a 01                	push   $0x1
    153e:	e8 81 23 00 00       	call   38c4 <printf>
    1543:	e8 4a 22 00 00       	call   3792 <exit>
    1548:	83 ec 08             	sub    $0x8,%esp
    154b:	68 b7 41 00 00       	push   $0x41b7
    1550:	6a 01                	push   $0x1
    1552:	e8 6d 23 00 00       	call   38c4 <printf>
    1557:	e8 36 22 00 00       	call   3792 <exit>
    155c:	83 ec 08             	sub    $0x8,%esp
    155f:	68 98 4d 00 00       	push   $0x4d98
    1564:	6a 01                	push   $0x1
    1566:	e8 59 23 00 00       	call   38c4 <printf>
    156b:	e8 22 22 00 00       	call   3792 <exit>
    1570:	83 ec 08             	sub    $0x8,%esp
    1573:	68 cc 41 00 00       	push   $0x41cc
    1578:	6a 01                	push   $0x1
    157a:	e8 45 23 00 00       	call   38c4 <printf>
    157f:	e8 0e 22 00 00       	call   3792 <exit>
    1584:	83 ec 08             	sub    $0x8,%esp
    1587:	68 dd 41 00 00       	push   $0x41dd
    158c:	6a 01                	push   $0x1
    158e:	e8 31 23 00 00       	call   38c4 <printf>
    1593:	e8 fa 21 00 00       	call   3792 <exit>
    1598:	83 ec 08             	sub    $0x8,%esp
    159b:	68 ee 41 00 00       	push   $0x41ee
    15a0:	6a 01                	push   $0x1
    15a2:	e8 1d 23 00 00       	call   38c4 <printf>
    15a7:	e8 e6 21 00 00       	call   3792 <exit>
    15ac:	83 ec 08             	sub    $0x8,%esp
    15af:	68 c0 4d 00 00       	push   $0x4dc0
    15b4:	6a 01                	push   $0x1
    15b6:	e8 09 23 00 00       	call   38c4 <printf>
    15bb:	e8 d2 21 00 00       	call   3792 <exit>
    15c0:	83 ec 08             	sub    $0x8,%esp
    15c3:	68 0c 42 00 00       	push   $0x420c
    15c8:	6a 01                	push   $0x1
    15ca:	e8 f5 22 00 00       	call   38c4 <printf>
    15cf:	e8 be 21 00 00       	call   3792 <exit>

000015d4 <concreate>:
    15d4:	55                   	push   %ebp
    15d5:	89 e5                	mov    %esp,%ebp
    15d7:	57                   	push   %edi
    15d8:	56                   	push   %esi
    15d9:	53                   	push   %ebx
    15da:	83 ec 54             	sub    $0x54,%esp
    15dd:	68 35 42 00 00       	push   $0x4235
    15e2:	6a 01                	push   $0x1
    15e4:	e8 db 22 00 00       	call   38c4 <printf>
    15e9:	c6 45 e5 43          	movb   $0x43,-0x1b(%ebp)
    15ed:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
    15f1:	83 c4 10             	add    $0x10,%esp
    15f4:	bb 00 00 00 00       	mov    $0x0,%ebx
    15f9:	8d 75 e5             	lea    -0x1b(%ebp),%esi
    15fc:	bf 56 55 55 55       	mov    $0x55555556,%edi
    1601:	e9 75 02 00 00       	jmp    187b <concreate+0x2a7>
    1606:	83 ec 08             	sub    $0x8,%esp
    1609:	56                   	push   %esi
    160a:	68 45 42 00 00       	push   $0x4245
    160f:	e8 de 21 00 00       	call   37f2 <link>
    1614:	83 c4 10             	add    $0x10,%esp
    1617:	e9 4e 02 00 00       	jmp    186a <concreate+0x296>
    161c:	ba 67 66 66 66       	mov    $0x66666667,%edx
    1621:	89 d8                	mov    %ebx,%eax
    1623:	f7 ea                	imul   %edx
    1625:	d1 fa                	sar    %edx
    1627:	89 d8                	mov    %ebx,%eax
    1629:	c1 f8 1f             	sar    $0x1f,%eax
    162c:	29 c2                	sub    %eax,%edx
    162e:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1631:	29 c3                	sub    %eax,%ebx
    1633:	83 fb 01             	cmp    $0x1,%ebx
    1636:	74 34                	je     166c <concreate+0x98>
    1638:	83 ec 08             	sub    $0x8,%esp
    163b:	68 02 02 00 00       	push   $0x202
    1640:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1643:	50                   	push   %eax
    1644:	e8 89 21 00 00       	call   37d2 <open>
    1649:	83 c4 10             	add    $0x10,%esp
    164c:	85 c0                	test   %eax,%eax
    164e:	0f 89 f9 01 00 00    	jns    184d <concreate+0x279>
    1654:	83 ec 04             	sub    $0x4,%esp
    1657:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    165a:	50                   	push   %eax
    165b:	68 48 42 00 00       	push   $0x4248
    1660:	6a 01                	push   $0x1
    1662:	e8 5d 22 00 00       	call   38c4 <printf>
    1667:	e8 26 21 00 00       	call   3792 <exit>
    166c:	83 ec 08             	sub    $0x8,%esp
    166f:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1672:	50                   	push   %eax
    1673:	68 45 42 00 00       	push   $0x4245
    1678:	e8 75 21 00 00       	call   37f2 <link>
    167d:	83 c4 10             	add    $0x10,%esp
    1680:	e8 0d 21 00 00       	call   3792 <exit>
    1685:	83 ec 04             	sub    $0x4,%esp
    1688:	6a 28                	push   $0x28
    168a:	6a 00                	push   $0x0
    168c:	8d 45 bd             	lea    -0x43(%ebp),%eax
    168f:	50                   	push   %eax
    1690:	e8 b0 1f 00 00       	call   3645 <memset>
    1695:	83 c4 08             	add    $0x8,%esp
    1698:	6a 00                	push   $0x0
    169a:	68 52 44 00 00       	push   $0x4452
    169f:	e8 2e 21 00 00       	call   37d2 <open>
    16a4:	89 c3                	mov    %eax,%ebx
    16a6:	83 c4 10             	add    $0x10,%esp
    16a9:	bf 00 00 00 00       	mov    $0x0,%edi
    16ae:	8d 75 ac             	lea    -0x54(%ebp),%esi
    16b1:	83 ec 04             	sub    $0x4,%esp
    16b4:	6a 10                	push   $0x10
    16b6:	56                   	push   %esi
    16b7:	53                   	push   %ebx
    16b8:	e8 ed 20 00 00       	call   37aa <read>
    16bd:	83 c4 10             	add    $0x10,%esp
    16c0:	85 c0                	test   %eax,%eax
    16c2:	7e 60                	jle    1724 <concreate+0x150>
    16c4:	66 83 7d ac 00       	cmpw   $0x0,-0x54(%ebp)
    16c9:	74 e6                	je     16b1 <concreate+0xdd>
    16cb:	80 7d ae 43          	cmpb   $0x43,-0x52(%ebp)
    16cf:	75 e0                	jne    16b1 <concreate+0xdd>
    16d1:	80 7d b0 00          	cmpb   $0x0,-0x50(%ebp)
    16d5:	75 da                	jne    16b1 <concreate+0xdd>
    16d7:	0f be 45 af          	movsbl -0x51(%ebp),%eax
    16db:	83 e8 30             	sub    $0x30,%eax
    16de:	83 f8 27             	cmp    $0x27,%eax
    16e1:	77 11                	ja     16f4 <concreate+0x120>
    16e3:	80 7c 05 bd 00       	cmpb   $0x0,-0x43(%ebp,%eax,1)
    16e8:	75 22                	jne    170c <concreate+0x138>
    16ea:	c6 44 05 bd 01       	movb   $0x1,-0x43(%ebp,%eax,1)
    16ef:	83 c7 01             	add    $0x1,%edi
    16f2:	eb bd                	jmp    16b1 <concreate+0xdd>
    16f4:	83 ec 04             	sub    $0x4,%esp
    16f7:	8d 45 ae             	lea    -0x52(%ebp),%eax
    16fa:	50                   	push   %eax
    16fb:	68 64 42 00 00       	push   $0x4264
    1700:	6a 01                	push   $0x1
    1702:	e8 bd 21 00 00       	call   38c4 <printf>
    1707:	e8 86 20 00 00       	call   3792 <exit>
    170c:	83 ec 04             	sub    $0x4,%esp
    170f:	8d 45 ae             	lea    -0x52(%ebp),%eax
    1712:	50                   	push   %eax
    1713:	68 7d 42 00 00       	push   $0x427d
    1718:	6a 01                	push   $0x1
    171a:	e8 a5 21 00 00       	call   38c4 <printf>
    171f:	e8 6e 20 00 00       	call   3792 <exit>
    1724:	83 ec 0c             	sub    $0xc,%esp
    1727:	53                   	push   %ebx
    1728:	e8 8d 20 00 00       	call   37ba <close>
    172d:	83 c4 10             	add    $0x10,%esp
    1730:	83 ff 28             	cmp    $0x28,%edi
    1733:	75 0d                	jne    1742 <concreate+0x16e>
    1735:	bb 00 00 00 00       	mov    $0x0,%ebx
    173a:	8d 7d e5             	lea    -0x1b(%ebp),%edi
    173d:	e9 88 00 00 00       	jmp    17ca <concreate+0x1f6>
    1742:	83 ec 08             	sub    $0x8,%esp
    1745:	68 e4 4d 00 00       	push   $0x4de4
    174a:	6a 01                	push   $0x1
    174c:	e8 73 21 00 00       	call   38c4 <printf>
    1751:	e8 3c 20 00 00       	call   3792 <exit>
    1756:	83 ec 08             	sub    $0x8,%esp
    1759:	68 1d 4b 00 00       	push   $0x4b1d
    175e:	6a 01                	push   $0x1
    1760:	e8 5f 21 00 00       	call   38c4 <printf>
    1765:	e8 28 20 00 00       	call   3792 <exit>
    176a:	83 ec 08             	sub    $0x8,%esp
    176d:	6a 00                	push   $0x0
    176f:	57                   	push   %edi
    1770:	e8 5d 20 00 00       	call   37d2 <open>
    1775:	89 04 24             	mov    %eax,(%esp)
    1778:	e8 3d 20 00 00       	call   37ba <close>
    177d:	83 c4 08             	add    $0x8,%esp
    1780:	6a 00                	push   $0x0
    1782:	57                   	push   %edi
    1783:	e8 4a 20 00 00       	call   37d2 <open>
    1788:	89 04 24             	mov    %eax,(%esp)
    178b:	e8 2a 20 00 00       	call   37ba <close>
    1790:	83 c4 08             	add    $0x8,%esp
    1793:	6a 00                	push   $0x0
    1795:	57                   	push   %edi
    1796:	e8 37 20 00 00       	call   37d2 <open>
    179b:	89 04 24             	mov    %eax,(%esp)
    179e:	e8 17 20 00 00       	call   37ba <close>
    17a3:	83 c4 08             	add    $0x8,%esp
    17a6:	6a 00                	push   $0x0
    17a8:	57                   	push   %edi
    17a9:	e8 24 20 00 00       	call   37d2 <open>
    17ae:	89 04 24             	mov    %eax,(%esp)
    17b1:	e8 04 20 00 00       	call   37ba <close>
    17b6:	83 c4 10             	add    $0x10,%esp
    17b9:	85 f6                	test   %esi,%esi
    17bb:	74 74                	je     1831 <concreate+0x25d>
    17bd:	e8 d8 1f 00 00       	call   379a <wait>
    17c2:	83 c3 01             	add    $0x1,%ebx
    17c5:	83 fb 28             	cmp    $0x28,%ebx
    17c8:	74 6c                	je     1836 <concreate+0x262>
    17ca:	8d 43 30             	lea    0x30(%ebx),%eax
    17cd:	88 45 e6             	mov    %al,-0x1a(%ebp)
    17d0:	e8 b5 1f 00 00       	call   378a <fork>
    17d5:	89 c6                	mov    %eax,%esi
    17d7:	85 c0                	test   %eax,%eax
    17d9:	0f 88 77 ff ff ff    	js     1756 <concreate+0x182>
    17df:	b8 56 55 55 55       	mov    $0x55555556,%eax
    17e4:	f7 eb                	imul   %ebx
    17e6:	89 d8                	mov    %ebx,%eax
    17e8:	c1 f8 1f             	sar    $0x1f,%eax
    17eb:	29 c2                	sub    %eax,%edx
    17ed:	8d 04 52             	lea    (%edx,%edx,2),%eax
    17f0:	89 da                	mov    %ebx,%edx
    17f2:	29 c2                	sub    %eax,%edx
    17f4:	89 d0                	mov    %edx,%eax
    17f6:	09 f0                	or     %esi,%eax
    17f8:	0f 84 6c ff ff ff    	je     176a <concreate+0x196>
    17fe:	85 f6                	test   %esi,%esi
    1800:	74 09                	je     180b <concreate+0x237>
    1802:	83 fa 01             	cmp    $0x1,%edx
    1805:	0f 84 5f ff ff ff    	je     176a <concreate+0x196>
    180b:	83 ec 0c             	sub    $0xc,%esp
    180e:	57                   	push   %edi
    180f:	e8 ce 1f 00 00       	call   37e2 <unlink>
    1814:	89 3c 24             	mov    %edi,(%esp)
    1817:	e8 c6 1f 00 00       	call   37e2 <unlink>
    181c:	89 3c 24             	mov    %edi,(%esp)
    181f:	e8 be 1f 00 00       	call   37e2 <unlink>
    1824:	89 3c 24             	mov    %edi,(%esp)
    1827:	e8 b6 1f 00 00       	call   37e2 <unlink>
    182c:	83 c4 10             	add    $0x10,%esp
    182f:	eb 88                	jmp    17b9 <concreate+0x1e5>
    1831:	e8 5c 1f 00 00       	call   3792 <exit>
    1836:	83 ec 08             	sub    $0x8,%esp
    1839:	68 9a 42 00 00       	push   $0x429a
    183e:	6a 01                	push   $0x1
    1840:	e8 7f 20 00 00       	call   38c4 <printf>
    1845:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1848:	5b                   	pop    %ebx
    1849:	5e                   	pop    %esi
    184a:	5f                   	pop    %edi
    184b:	5d                   	pop    %ebp
    184c:	c3                   	ret    
    184d:	83 ec 0c             	sub    $0xc,%esp
    1850:	50                   	push   %eax
    1851:	e8 64 1f 00 00       	call   37ba <close>
    1856:	83 c4 10             	add    $0x10,%esp
    1859:	e9 22 fe ff ff       	jmp    1680 <concreate+0xac>
    185e:	83 ec 0c             	sub    $0xc,%esp
    1861:	50                   	push   %eax
    1862:	e8 53 1f 00 00       	call   37ba <close>
    1867:	83 c4 10             	add    $0x10,%esp
    186a:	e8 2b 1f 00 00       	call   379a <wait>
    186f:	83 c3 01             	add    $0x1,%ebx
    1872:	83 fb 28             	cmp    $0x28,%ebx
    1875:	0f 84 0a fe ff ff    	je     1685 <concreate+0xb1>
    187b:	8d 43 30             	lea    0x30(%ebx),%eax
    187e:	88 45 e6             	mov    %al,-0x1a(%ebp)
    1881:	83 ec 0c             	sub    $0xc,%esp
    1884:	56                   	push   %esi
    1885:	e8 58 1f 00 00       	call   37e2 <unlink>
    188a:	e8 fb 1e 00 00       	call   378a <fork>
    188f:	83 c4 10             	add    $0x10,%esp
    1892:	85 c0                	test   %eax,%eax
    1894:	0f 84 82 fd ff ff    	je     161c <concreate+0x48>
    189a:	89 d8                	mov    %ebx,%eax
    189c:	f7 ef                	imul   %edi
    189e:	89 d8                	mov    %ebx,%eax
    18a0:	c1 f8 1f             	sar    $0x1f,%eax
    18a3:	29 c2                	sub    %eax,%edx
    18a5:	8d 04 52             	lea    (%edx,%edx,2),%eax
    18a8:	89 d9                	mov    %ebx,%ecx
    18aa:	29 c1                	sub    %eax,%ecx
    18ac:	83 f9 01             	cmp    $0x1,%ecx
    18af:	0f 84 51 fd ff ff    	je     1606 <concreate+0x32>
    18b5:	83 ec 08             	sub    $0x8,%esp
    18b8:	68 02 02 00 00       	push   $0x202
    18bd:	56                   	push   %esi
    18be:	e8 0f 1f 00 00       	call   37d2 <open>
    18c3:	83 c4 10             	add    $0x10,%esp
    18c6:	85 c0                	test   %eax,%eax
    18c8:	79 94                	jns    185e <concreate+0x28a>
    18ca:	e9 85 fd ff ff       	jmp    1654 <concreate+0x80>

000018cf <linkunlink>:
    18cf:	55                   	push   %ebp
    18d0:	89 e5                	mov    %esp,%ebp
    18d2:	57                   	push   %edi
    18d3:	56                   	push   %esi
    18d4:	53                   	push   %ebx
    18d5:	83 ec 24             	sub    $0x24,%esp
    18d8:	68 a8 42 00 00       	push   $0x42a8
    18dd:	6a 01                	push   $0x1
    18df:	e8 e0 1f 00 00       	call   38c4 <printf>
    18e4:	c7 04 24 35 45 00 00 	movl   $0x4535,(%esp)
    18eb:	e8 f2 1e 00 00       	call   37e2 <unlink>
    18f0:	e8 95 1e 00 00       	call   378a <fork>
    18f5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    18f8:	83 c4 10             	add    $0x10,%esp
    18fb:	85 c0                	test   %eax,%eax
    18fd:	78 18                	js     1917 <linkunlink+0x48>
    18ff:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1903:	19 db                	sbb    %ebx,%ebx
    1905:	83 e3 60             	and    $0x60,%ebx
    1908:	83 c3 01             	add    $0x1,%ebx
    190b:	be 64 00 00 00       	mov    $0x64,%esi
    1910:	bf ab aa aa aa       	mov    $0xaaaaaaab,%edi
    1915:	eb 36                	jmp    194d <linkunlink+0x7e>
    1917:	83 ec 08             	sub    $0x8,%esp
    191a:	68 1d 4b 00 00       	push   $0x4b1d
    191f:	6a 01                	push   $0x1
    1921:	e8 9e 1f 00 00       	call   38c4 <printf>
    1926:	e8 67 1e 00 00       	call   3792 <exit>
    192b:	83 ec 08             	sub    $0x8,%esp
    192e:	68 02 02 00 00       	push   $0x202
    1933:	68 35 45 00 00       	push   $0x4535
    1938:	e8 95 1e 00 00       	call   37d2 <open>
    193d:	89 04 24             	mov    %eax,(%esp)
    1940:	e8 75 1e 00 00       	call   37ba <close>
    1945:	83 c4 10             	add    $0x10,%esp
    1948:	83 ee 01             	sub    $0x1,%esi
    194b:	74 49                	je     1996 <linkunlink+0xc7>
    194d:	69 db 6d 4e c6 41    	imul   $0x41c64e6d,%ebx,%ebx
    1953:	81 c3 39 30 00 00    	add    $0x3039,%ebx
    1959:	89 d8                	mov    %ebx,%eax
    195b:	f7 e7                	mul    %edi
    195d:	d1 ea                	shr    %edx
    195f:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1962:	89 da                	mov    %ebx,%edx
    1964:	29 c2                	sub    %eax,%edx
    1966:	74 c3                	je     192b <linkunlink+0x5c>
    1968:	83 fa 01             	cmp    $0x1,%edx
    196b:	74 12                	je     197f <linkunlink+0xb0>
    196d:	83 ec 0c             	sub    $0xc,%esp
    1970:	68 35 45 00 00       	push   $0x4535
    1975:	e8 68 1e 00 00       	call   37e2 <unlink>
    197a:	83 c4 10             	add    $0x10,%esp
    197d:	eb c9                	jmp    1948 <linkunlink+0x79>
    197f:	83 ec 08             	sub    $0x8,%esp
    1982:	68 35 45 00 00       	push   $0x4535
    1987:	68 b9 42 00 00       	push   $0x42b9
    198c:	e8 61 1e 00 00       	call   37f2 <link>
    1991:	83 c4 10             	add    $0x10,%esp
    1994:	eb b2                	jmp    1948 <linkunlink+0x79>
    1996:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    199a:	74 1c                	je     19b8 <linkunlink+0xe9>
    199c:	e8 f9 1d 00 00       	call   379a <wait>
    19a1:	83 ec 08             	sub    $0x8,%esp
    19a4:	68 bd 42 00 00       	push   $0x42bd
    19a9:	6a 01                	push   $0x1
    19ab:	e8 14 1f 00 00       	call   38c4 <printf>
    19b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    19b3:	5b                   	pop    %ebx
    19b4:	5e                   	pop    %esi
    19b5:	5f                   	pop    %edi
    19b6:	5d                   	pop    %ebp
    19b7:	c3                   	ret    
    19b8:	e8 d5 1d 00 00       	call   3792 <exit>

000019bd <bigdir>:
    19bd:	55                   	push   %ebp
    19be:	89 e5                	mov    %esp,%ebp
    19c0:	57                   	push   %edi
    19c1:	56                   	push   %esi
    19c2:	53                   	push   %ebx
    19c3:	83 ec 24             	sub    $0x24,%esp
    19c6:	68 cc 42 00 00       	push   $0x42cc
    19cb:	6a 01                	push   $0x1
    19cd:	e8 f2 1e 00 00       	call   38c4 <printf>
    19d2:	c7 04 24 d9 42 00 00 	movl   $0x42d9,(%esp)
    19d9:	e8 04 1e 00 00       	call   37e2 <unlink>
    19de:	83 c4 08             	add    $0x8,%esp
    19e1:	68 00 02 00 00       	push   $0x200
    19e6:	68 d9 42 00 00       	push   $0x42d9
    19eb:	e8 e2 1d 00 00       	call   37d2 <open>
    19f0:	83 c4 10             	add    $0x10,%esp
    19f3:	85 c0                	test   %eax,%eax
    19f5:	0f 88 e0 00 00 00    	js     1adb <bigdir+0x11e>
    19fb:	83 ec 0c             	sub    $0xc,%esp
    19fe:	50                   	push   %eax
    19ff:	e8 b6 1d 00 00       	call   37ba <close>
    1a04:	83 c4 10             	add    $0x10,%esp
    1a07:	be 00 00 00 00       	mov    $0x0,%esi
    1a0c:	8d 7d de             	lea    -0x22(%ebp),%edi
    1a0f:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    1a13:	8d 46 3f             	lea    0x3f(%esi),%eax
    1a16:	85 f6                	test   %esi,%esi
    1a18:	0f 49 c6             	cmovns %esi,%eax
    1a1b:	c1 f8 06             	sar    $0x6,%eax
    1a1e:	83 c0 30             	add    $0x30,%eax
    1a21:	88 45 df             	mov    %al,-0x21(%ebp)
    1a24:	89 f2                	mov    %esi,%edx
    1a26:	c1 fa 1f             	sar    $0x1f,%edx
    1a29:	c1 ea 1a             	shr    $0x1a,%edx
    1a2c:	8d 04 16             	lea    (%esi,%edx,1),%eax
    1a2f:	83 e0 3f             	and    $0x3f,%eax
    1a32:	29 d0                	sub    %edx,%eax
    1a34:	83 c0 30             	add    $0x30,%eax
    1a37:	88 45 e0             	mov    %al,-0x20(%ebp)
    1a3a:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    1a3e:	83 ec 08             	sub    $0x8,%esp
    1a41:	57                   	push   %edi
    1a42:	68 d9 42 00 00       	push   $0x42d9
    1a47:	e8 a6 1d 00 00       	call   37f2 <link>
    1a4c:	89 c3                	mov    %eax,%ebx
    1a4e:	83 c4 10             	add    $0x10,%esp
    1a51:	85 c0                	test   %eax,%eax
    1a53:	0f 85 96 00 00 00    	jne    1aef <bigdir+0x132>
    1a59:	83 c6 01             	add    $0x1,%esi
    1a5c:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    1a62:	75 ab                	jne    1a0f <bigdir+0x52>
    1a64:	83 ec 0c             	sub    $0xc,%esp
    1a67:	68 d9 42 00 00       	push   $0x42d9
    1a6c:	e8 71 1d 00 00       	call   37e2 <unlink>
    1a71:	83 c4 10             	add    $0x10,%esp
    1a74:	8d 75 de             	lea    -0x22(%ebp),%esi
    1a77:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    1a7b:	8d 43 3f             	lea    0x3f(%ebx),%eax
    1a7e:	85 db                	test   %ebx,%ebx
    1a80:	0f 49 c3             	cmovns %ebx,%eax
    1a83:	c1 f8 06             	sar    $0x6,%eax
    1a86:	83 c0 30             	add    $0x30,%eax
    1a89:	88 45 df             	mov    %al,-0x21(%ebp)
    1a8c:	89 da                	mov    %ebx,%edx
    1a8e:	c1 fa 1f             	sar    $0x1f,%edx
    1a91:	c1 ea 1a             	shr    $0x1a,%edx
    1a94:	8d 04 13             	lea    (%ebx,%edx,1),%eax
    1a97:	83 e0 3f             	and    $0x3f,%eax
    1a9a:	29 d0                	sub    %edx,%eax
    1a9c:	83 c0 30             	add    $0x30,%eax
    1a9f:	88 45 e0             	mov    %al,-0x20(%ebp)
    1aa2:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    1aa6:	83 ec 0c             	sub    $0xc,%esp
    1aa9:	56                   	push   %esi
    1aaa:	e8 33 1d 00 00       	call   37e2 <unlink>
    1aaf:	83 c4 10             	add    $0x10,%esp
    1ab2:	85 c0                	test   %eax,%eax
    1ab4:	75 4d                	jne    1b03 <bigdir+0x146>
    1ab6:	83 c3 01             	add    $0x1,%ebx
    1ab9:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1abf:	75 b6                	jne    1a77 <bigdir+0xba>
    1ac1:	83 ec 08             	sub    $0x8,%esp
    1ac4:	68 1b 43 00 00       	push   $0x431b
    1ac9:	6a 01                	push   $0x1
    1acb:	e8 f4 1d 00 00       	call   38c4 <printf>
    1ad0:	83 c4 10             	add    $0x10,%esp
    1ad3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1ad6:	5b                   	pop    %ebx
    1ad7:	5e                   	pop    %esi
    1ad8:	5f                   	pop    %edi
    1ad9:	5d                   	pop    %ebp
    1ada:	c3                   	ret    
    1adb:	83 ec 08             	sub    $0x8,%esp
    1ade:	68 dc 42 00 00       	push   $0x42dc
    1ae3:	6a 01                	push   $0x1
    1ae5:	e8 da 1d 00 00       	call   38c4 <printf>
    1aea:	e8 a3 1c 00 00       	call   3792 <exit>
    1aef:	83 ec 08             	sub    $0x8,%esp
    1af2:	68 f2 42 00 00       	push   $0x42f2
    1af7:	6a 01                	push   $0x1
    1af9:	e8 c6 1d 00 00       	call   38c4 <printf>
    1afe:	e8 8f 1c 00 00       	call   3792 <exit>
    1b03:	83 ec 08             	sub    $0x8,%esp
    1b06:	68 06 43 00 00       	push   $0x4306
    1b0b:	6a 01                	push   $0x1
    1b0d:	e8 b2 1d 00 00       	call   38c4 <printf>
    1b12:	e8 7b 1c 00 00       	call   3792 <exit>

00001b17 <subdir>:
    1b17:	55                   	push   %ebp
    1b18:	89 e5                	mov    %esp,%ebp
    1b1a:	53                   	push   %ebx
    1b1b:	83 ec 0c             	sub    $0xc,%esp
    1b1e:	68 26 43 00 00       	push   $0x4326
    1b23:	6a 01                	push   $0x1
    1b25:	e8 9a 1d 00 00       	call   38c4 <printf>
    1b2a:	c7 04 24 af 43 00 00 	movl   $0x43af,(%esp)
    1b31:	e8 ac 1c 00 00       	call   37e2 <unlink>
    1b36:	c7 04 24 4c 44 00 00 	movl   $0x444c,(%esp)
    1b3d:	e8 b8 1c 00 00       	call   37fa <mkdir>
    1b42:	83 c4 10             	add    $0x10,%esp
    1b45:	85 c0                	test   %eax,%eax
    1b47:	0f 85 14 04 00 00    	jne    1f61 <subdir+0x44a>
    1b4d:	83 ec 08             	sub    $0x8,%esp
    1b50:	68 02 02 00 00       	push   $0x202
    1b55:	68 85 43 00 00       	push   $0x4385
    1b5a:	e8 73 1c 00 00       	call   37d2 <open>
    1b5f:	89 c3                	mov    %eax,%ebx
    1b61:	83 c4 10             	add    $0x10,%esp
    1b64:	85 c0                	test   %eax,%eax
    1b66:	0f 88 09 04 00 00    	js     1f75 <subdir+0x45e>
    1b6c:	83 ec 04             	sub    $0x4,%esp
    1b6f:	6a 02                	push   $0x2
    1b71:	68 af 43 00 00       	push   $0x43af
    1b76:	50                   	push   %eax
    1b77:	e8 36 1c 00 00       	call   37b2 <write>
    1b7c:	89 1c 24             	mov    %ebx,(%esp)
    1b7f:	e8 36 1c 00 00       	call   37ba <close>
    1b84:	c7 04 24 4c 44 00 00 	movl   $0x444c,(%esp)
    1b8b:	e8 52 1c 00 00       	call   37e2 <unlink>
    1b90:	83 c4 10             	add    $0x10,%esp
    1b93:	85 c0                	test   %eax,%eax
    1b95:	0f 89 ee 03 00 00    	jns    1f89 <subdir+0x472>
    1b9b:	83 ec 0c             	sub    $0xc,%esp
    1b9e:	68 60 43 00 00       	push   $0x4360
    1ba3:	e8 52 1c 00 00       	call   37fa <mkdir>
    1ba8:	83 c4 10             	add    $0x10,%esp
    1bab:	85 c0                	test   %eax,%eax
    1bad:	0f 85 ea 03 00 00    	jne    1f9d <subdir+0x486>
    1bb3:	83 ec 08             	sub    $0x8,%esp
    1bb6:	68 02 02 00 00       	push   $0x202
    1bbb:	68 82 43 00 00       	push   $0x4382
    1bc0:	e8 0d 1c 00 00       	call   37d2 <open>
    1bc5:	89 c3                	mov    %eax,%ebx
    1bc7:	83 c4 10             	add    $0x10,%esp
    1bca:	85 c0                	test   %eax,%eax
    1bcc:	0f 88 df 03 00 00    	js     1fb1 <subdir+0x49a>
    1bd2:	83 ec 04             	sub    $0x4,%esp
    1bd5:	6a 02                	push   $0x2
    1bd7:	68 a3 43 00 00       	push   $0x43a3
    1bdc:	50                   	push   %eax
    1bdd:	e8 d0 1b 00 00       	call   37b2 <write>
    1be2:	89 1c 24             	mov    %ebx,(%esp)
    1be5:	e8 d0 1b 00 00       	call   37ba <close>
    1bea:	83 c4 08             	add    $0x8,%esp
    1bed:	6a 00                	push   $0x0
    1bef:	68 a6 43 00 00       	push   $0x43a6
    1bf4:	e8 d9 1b 00 00       	call   37d2 <open>
    1bf9:	89 c3                	mov    %eax,%ebx
    1bfb:	83 c4 10             	add    $0x10,%esp
    1bfe:	85 c0                	test   %eax,%eax
    1c00:	0f 88 bf 03 00 00    	js     1fc5 <subdir+0x4ae>
    1c06:	83 ec 04             	sub    $0x4,%esp
    1c09:	68 00 20 00 00       	push   $0x2000
    1c0e:	68 00 84 00 00       	push   $0x8400
    1c13:	50                   	push   %eax
    1c14:	e8 91 1b 00 00       	call   37aa <read>
    1c19:	83 c4 10             	add    $0x10,%esp
    1c1c:	83 f8 02             	cmp    $0x2,%eax
    1c1f:	0f 85 b4 03 00 00    	jne    1fd9 <subdir+0x4c2>
    1c25:	80 3d 00 84 00 00 66 	cmpb   $0x66,0x8400
    1c2c:	0f 85 a7 03 00 00    	jne    1fd9 <subdir+0x4c2>
    1c32:	83 ec 0c             	sub    $0xc,%esp
    1c35:	53                   	push   %ebx
    1c36:	e8 7f 1b 00 00       	call   37ba <close>
    1c3b:	83 c4 08             	add    $0x8,%esp
    1c3e:	68 e6 43 00 00       	push   $0x43e6
    1c43:	68 82 43 00 00       	push   $0x4382
    1c48:	e8 a5 1b 00 00       	call   37f2 <link>
    1c4d:	83 c4 10             	add    $0x10,%esp
    1c50:	85 c0                	test   %eax,%eax
    1c52:	0f 85 95 03 00 00    	jne    1fed <subdir+0x4d6>
    1c58:	83 ec 0c             	sub    $0xc,%esp
    1c5b:	68 82 43 00 00       	push   $0x4382
    1c60:	e8 7d 1b 00 00       	call   37e2 <unlink>
    1c65:	83 c4 10             	add    $0x10,%esp
    1c68:	85 c0                	test   %eax,%eax
    1c6a:	0f 85 91 03 00 00    	jne    2001 <subdir+0x4ea>
    1c70:	83 ec 08             	sub    $0x8,%esp
    1c73:	6a 00                	push   $0x0
    1c75:	68 82 43 00 00       	push   $0x4382
    1c7a:	e8 53 1b 00 00       	call   37d2 <open>
    1c7f:	83 c4 10             	add    $0x10,%esp
    1c82:	85 c0                	test   %eax,%eax
    1c84:	0f 89 8b 03 00 00    	jns    2015 <subdir+0x4fe>
    1c8a:	83 ec 0c             	sub    $0xc,%esp
    1c8d:	68 4c 44 00 00       	push   $0x444c
    1c92:	e8 6b 1b 00 00       	call   3802 <chdir>
    1c97:	83 c4 10             	add    $0x10,%esp
    1c9a:	85 c0                	test   %eax,%eax
    1c9c:	0f 85 87 03 00 00    	jne    2029 <subdir+0x512>
    1ca2:	83 ec 0c             	sub    $0xc,%esp
    1ca5:	68 1a 44 00 00       	push   $0x441a
    1caa:	e8 53 1b 00 00       	call   3802 <chdir>
    1caf:	83 c4 10             	add    $0x10,%esp
    1cb2:	85 c0                	test   %eax,%eax
    1cb4:	0f 85 83 03 00 00    	jne    203d <subdir+0x526>
    1cba:	83 ec 0c             	sub    $0xc,%esp
    1cbd:	68 40 44 00 00       	push   $0x4440
    1cc2:	e8 3b 1b 00 00       	call   3802 <chdir>
    1cc7:	83 c4 10             	add    $0x10,%esp
    1cca:	85 c0                	test   %eax,%eax
    1ccc:	0f 85 7f 03 00 00    	jne    2051 <subdir+0x53a>
    1cd2:	83 ec 0c             	sub    $0xc,%esp
    1cd5:	68 4f 44 00 00       	push   $0x444f
    1cda:	e8 23 1b 00 00       	call   3802 <chdir>
    1cdf:	83 c4 10             	add    $0x10,%esp
    1ce2:	85 c0                	test   %eax,%eax
    1ce4:	0f 85 7b 03 00 00    	jne    2065 <subdir+0x54e>
    1cea:	83 ec 08             	sub    $0x8,%esp
    1ced:	6a 00                	push   $0x0
    1cef:	68 e6 43 00 00       	push   $0x43e6
    1cf4:	e8 d9 1a 00 00       	call   37d2 <open>
    1cf9:	89 c3                	mov    %eax,%ebx
    1cfb:	83 c4 10             	add    $0x10,%esp
    1cfe:	85 c0                	test   %eax,%eax
    1d00:	0f 88 73 03 00 00    	js     2079 <subdir+0x562>
    1d06:	83 ec 04             	sub    $0x4,%esp
    1d09:	68 00 20 00 00       	push   $0x2000
    1d0e:	68 00 84 00 00       	push   $0x8400
    1d13:	50                   	push   %eax
    1d14:	e8 91 1a 00 00       	call   37aa <read>
    1d19:	83 c4 10             	add    $0x10,%esp
    1d1c:	83 f8 02             	cmp    $0x2,%eax
    1d1f:	0f 85 68 03 00 00    	jne    208d <subdir+0x576>
    1d25:	83 ec 0c             	sub    $0xc,%esp
    1d28:	53                   	push   %ebx
    1d29:	e8 8c 1a 00 00       	call   37ba <close>
    1d2e:	83 c4 08             	add    $0x8,%esp
    1d31:	6a 00                	push   $0x0
    1d33:	68 82 43 00 00       	push   $0x4382
    1d38:	e8 95 1a 00 00       	call   37d2 <open>
    1d3d:	83 c4 10             	add    $0x10,%esp
    1d40:	85 c0                	test   %eax,%eax
    1d42:	0f 89 59 03 00 00    	jns    20a1 <subdir+0x58a>
    1d48:	83 ec 08             	sub    $0x8,%esp
    1d4b:	68 02 02 00 00       	push   $0x202
    1d50:	68 9a 44 00 00       	push   $0x449a
    1d55:	e8 78 1a 00 00       	call   37d2 <open>
    1d5a:	83 c4 10             	add    $0x10,%esp
    1d5d:	85 c0                	test   %eax,%eax
    1d5f:	0f 89 50 03 00 00    	jns    20b5 <subdir+0x59e>
    1d65:	83 ec 08             	sub    $0x8,%esp
    1d68:	68 02 02 00 00       	push   $0x202
    1d6d:	68 bf 44 00 00       	push   $0x44bf
    1d72:	e8 5b 1a 00 00       	call   37d2 <open>
    1d77:	83 c4 10             	add    $0x10,%esp
    1d7a:	85 c0                	test   %eax,%eax
    1d7c:	0f 89 47 03 00 00    	jns    20c9 <subdir+0x5b2>
    1d82:	83 ec 08             	sub    $0x8,%esp
    1d85:	68 00 02 00 00       	push   $0x200
    1d8a:	68 4c 44 00 00       	push   $0x444c
    1d8f:	e8 3e 1a 00 00       	call   37d2 <open>
    1d94:	83 c4 10             	add    $0x10,%esp
    1d97:	85 c0                	test   %eax,%eax
    1d99:	0f 89 3e 03 00 00    	jns    20dd <subdir+0x5c6>
    1d9f:	83 ec 08             	sub    $0x8,%esp
    1da2:	6a 02                	push   $0x2
    1da4:	68 4c 44 00 00       	push   $0x444c
    1da9:	e8 24 1a 00 00       	call   37d2 <open>
    1dae:	83 c4 10             	add    $0x10,%esp
    1db1:	85 c0                	test   %eax,%eax
    1db3:	0f 89 38 03 00 00    	jns    20f1 <subdir+0x5da>
    1db9:	83 ec 08             	sub    $0x8,%esp
    1dbc:	6a 01                	push   $0x1
    1dbe:	68 4c 44 00 00       	push   $0x444c
    1dc3:	e8 0a 1a 00 00       	call   37d2 <open>
    1dc8:	83 c4 10             	add    $0x10,%esp
    1dcb:	85 c0                	test   %eax,%eax
    1dcd:	0f 89 32 03 00 00    	jns    2105 <subdir+0x5ee>
    1dd3:	83 ec 08             	sub    $0x8,%esp
    1dd6:	68 2e 45 00 00       	push   $0x452e
    1ddb:	68 9a 44 00 00       	push   $0x449a
    1de0:	e8 0d 1a 00 00       	call   37f2 <link>
    1de5:	83 c4 10             	add    $0x10,%esp
    1de8:	85 c0                	test   %eax,%eax
    1dea:	0f 84 29 03 00 00    	je     2119 <subdir+0x602>
    1df0:	83 ec 08             	sub    $0x8,%esp
    1df3:	68 2e 45 00 00       	push   $0x452e
    1df8:	68 bf 44 00 00       	push   $0x44bf
    1dfd:	e8 f0 19 00 00       	call   37f2 <link>
    1e02:	83 c4 10             	add    $0x10,%esp
    1e05:	85 c0                	test   %eax,%eax
    1e07:	0f 84 20 03 00 00    	je     212d <subdir+0x616>
    1e0d:	83 ec 08             	sub    $0x8,%esp
    1e10:	68 e6 43 00 00       	push   $0x43e6
    1e15:	68 85 43 00 00       	push   $0x4385
    1e1a:	e8 d3 19 00 00       	call   37f2 <link>
    1e1f:	83 c4 10             	add    $0x10,%esp
    1e22:	85 c0                	test   %eax,%eax
    1e24:	0f 84 17 03 00 00    	je     2141 <subdir+0x62a>
    1e2a:	83 ec 0c             	sub    $0xc,%esp
    1e2d:	68 9a 44 00 00       	push   $0x449a
    1e32:	e8 c3 19 00 00       	call   37fa <mkdir>
    1e37:	83 c4 10             	add    $0x10,%esp
    1e3a:	85 c0                	test   %eax,%eax
    1e3c:	0f 84 13 03 00 00    	je     2155 <subdir+0x63e>
    1e42:	83 ec 0c             	sub    $0xc,%esp
    1e45:	68 bf 44 00 00       	push   $0x44bf
    1e4a:	e8 ab 19 00 00       	call   37fa <mkdir>
    1e4f:	83 c4 10             	add    $0x10,%esp
    1e52:	85 c0                	test   %eax,%eax
    1e54:	0f 84 0f 03 00 00    	je     2169 <subdir+0x652>
    1e5a:	83 ec 0c             	sub    $0xc,%esp
    1e5d:	68 e6 43 00 00       	push   $0x43e6
    1e62:	e8 93 19 00 00       	call   37fa <mkdir>
    1e67:	83 c4 10             	add    $0x10,%esp
    1e6a:	85 c0                	test   %eax,%eax
    1e6c:	0f 84 0b 03 00 00    	je     217d <subdir+0x666>
    1e72:	83 ec 0c             	sub    $0xc,%esp
    1e75:	68 bf 44 00 00       	push   $0x44bf
    1e7a:	e8 63 19 00 00       	call   37e2 <unlink>
    1e7f:	83 c4 10             	add    $0x10,%esp
    1e82:	85 c0                	test   %eax,%eax
    1e84:	0f 84 07 03 00 00    	je     2191 <subdir+0x67a>
    1e8a:	83 ec 0c             	sub    $0xc,%esp
    1e8d:	68 9a 44 00 00       	push   $0x449a
    1e92:	e8 4b 19 00 00       	call   37e2 <unlink>
    1e97:	83 c4 10             	add    $0x10,%esp
    1e9a:	85 c0                	test   %eax,%eax
    1e9c:	0f 84 03 03 00 00    	je     21a5 <subdir+0x68e>
    1ea2:	83 ec 0c             	sub    $0xc,%esp
    1ea5:	68 85 43 00 00       	push   $0x4385
    1eaa:	e8 53 19 00 00       	call   3802 <chdir>
    1eaf:	83 c4 10             	add    $0x10,%esp
    1eb2:	85 c0                	test   %eax,%eax
    1eb4:	0f 84 ff 02 00 00    	je     21b9 <subdir+0x6a2>
    1eba:	83 ec 0c             	sub    $0xc,%esp
    1ebd:	68 31 45 00 00       	push   $0x4531
    1ec2:	e8 3b 19 00 00       	call   3802 <chdir>
    1ec7:	83 c4 10             	add    $0x10,%esp
    1eca:	85 c0                	test   %eax,%eax
    1ecc:	0f 84 fb 02 00 00    	je     21cd <subdir+0x6b6>
    1ed2:	83 ec 0c             	sub    $0xc,%esp
    1ed5:	68 e6 43 00 00       	push   $0x43e6
    1eda:	e8 03 19 00 00       	call   37e2 <unlink>
    1edf:	83 c4 10             	add    $0x10,%esp
    1ee2:	85 c0                	test   %eax,%eax
    1ee4:	0f 85 f7 02 00 00    	jne    21e1 <subdir+0x6ca>
    1eea:	83 ec 0c             	sub    $0xc,%esp
    1eed:	68 85 43 00 00       	push   $0x4385
    1ef2:	e8 eb 18 00 00       	call   37e2 <unlink>
    1ef7:	83 c4 10             	add    $0x10,%esp
    1efa:	85 c0                	test   %eax,%eax
    1efc:	0f 85 f3 02 00 00    	jne    21f5 <subdir+0x6de>
    1f02:	83 ec 0c             	sub    $0xc,%esp
    1f05:	68 4c 44 00 00       	push   $0x444c
    1f0a:	e8 d3 18 00 00       	call   37e2 <unlink>
    1f0f:	83 c4 10             	add    $0x10,%esp
    1f12:	85 c0                	test   %eax,%eax
    1f14:	0f 84 ef 02 00 00    	je     2209 <subdir+0x6f2>
    1f1a:	83 ec 0c             	sub    $0xc,%esp
    1f1d:	68 61 43 00 00       	push   $0x4361
    1f22:	e8 bb 18 00 00       	call   37e2 <unlink>
    1f27:	83 c4 10             	add    $0x10,%esp
    1f2a:	85 c0                	test   %eax,%eax
    1f2c:	0f 88 eb 02 00 00    	js     221d <subdir+0x706>
    1f32:	83 ec 0c             	sub    $0xc,%esp
    1f35:	68 4c 44 00 00       	push   $0x444c
    1f3a:	e8 a3 18 00 00       	call   37e2 <unlink>
    1f3f:	83 c4 10             	add    $0x10,%esp
    1f42:	85 c0                	test   %eax,%eax
    1f44:	0f 88 e7 02 00 00    	js     2231 <subdir+0x71a>
    1f4a:	83 ec 08             	sub    $0x8,%esp
    1f4d:	68 2e 46 00 00       	push   $0x462e
    1f52:	6a 01                	push   $0x1
    1f54:	e8 6b 19 00 00       	call   38c4 <printf>
    1f59:	83 c4 10             	add    $0x10,%esp
    1f5c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1f5f:	c9                   	leave  
    1f60:	c3                   	ret    
    1f61:	83 ec 08             	sub    $0x8,%esp
    1f64:	68 33 43 00 00       	push   $0x4333
    1f69:	6a 01                	push   $0x1
    1f6b:	e8 54 19 00 00       	call   38c4 <printf>
    1f70:	e8 1d 18 00 00       	call   3792 <exit>
    1f75:	83 ec 08             	sub    $0x8,%esp
    1f78:	68 4b 43 00 00       	push   $0x434b
    1f7d:	6a 01                	push   $0x1
    1f7f:	e8 40 19 00 00       	call   38c4 <printf>
    1f84:	e8 09 18 00 00       	call   3792 <exit>
    1f89:	83 ec 08             	sub    $0x8,%esp
    1f8c:	68 18 4e 00 00       	push   $0x4e18
    1f91:	6a 01                	push   $0x1
    1f93:	e8 2c 19 00 00       	call   38c4 <printf>
    1f98:	e8 f5 17 00 00       	call   3792 <exit>
    1f9d:	83 ec 08             	sub    $0x8,%esp
    1fa0:	68 67 43 00 00       	push   $0x4367
    1fa5:	6a 01                	push   $0x1
    1fa7:	e8 18 19 00 00       	call   38c4 <printf>
    1fac:	e8 e1 17 00 00       	call   3792 <exit>
    1fb1:	83 ec 08             	sub    $0x8,%esp
    1fb4:	68 8b 43 00 00       	push   $0x438b
    1fb9:	6a 01                	push   $0x1
    1fbb:	e8 04 19 00 00       	call   38c4 <printf>
    1fc0:	e8 cd 17 00 00       	call   3792 <exit>
    1fc5:	83 ec 08             	sub    $0x8,%esp
    1fc8:	68 b2 43 00 00       	push   $0x43b2
    1fcd:	6a 01                	push   $0x1
    1fcf:	e8 f0 18 00 00       	call   38c4 <printf>
    1fd4:	e8 b9 17 00 00       	call   3792 <exit>
    1fd9:	83 ec 08             	sub    $0x8,%esp
    1fdc:	68 cb 43 00 00       	push   $0x43cb
    1fe1:	6a 01                	push   $0x1
    1fe3:	e8 dc 18 00 00       	call   38c4 <printf>
    1fe8:	e8 a5 17 00 00       	call   3792 <exit>
    1fed:	83 ec 08             	sub    $0x8,%esp
    1ff0:	68 40 4e 00 00       	push   $0x4e40
    1ff5:	6a 01                	push   $0x1
    1ff7:	e8 c8 18 00 00       	call   38c4 <printf>
    1ffc:	e8 91 17 00 00       	call   3792 <exit>
    2001:	83 ec 08             	sub    $0x8,%esp
    2004:	68 f1 43 00 00       	push   $0x43f1
    2009:	6a 01                	push   $0x1
    200b:	e8 b4 18 00 00       	call   38c4 <printf>
    2010:	e8 7d 17 00 00       	call   3792 <exit>
    2015:	83 ec 08             	sub    $0x8,%esp
    2018:	68 64 4e 00 00       	push   $0x4e64
    201d:	6a 01                	push   $0x1
    201f:	e8 a0 18 00 00       	call   38c4 <printf>
    2024:	e8 69 17 00 00       	call   3792 <exit>
    2029:	83 ec 08             	sub    $0x8,%esp
    202c:	68 09 44 00 00       	push   $0x4409
    2031:	6a 01                	push   $0x1
    2033:	e8 8c 18 00 00       	call   38c4 <printf>
    2038:	e8 55 17 00 00       	call   3792 <exit>
    203d:	83 ec 08             	sub    $0x8,%esp
    2040:	68 26 44 00 00       	push   $0x4426
    2045:	6a 01                	push   $0x1
    2047:	e8 78 18 00 00       	call   38c4 <printf>
    204c:	e8 41 17 00 00       	call   3792 <exit>
    2051:	83 ec 08             	sub    $0x8,%esp
    2054:	68 26 44 00 00       	push   $0x4426
    2059:	6a 01                	push   $0x1
    205b:	e8 64 18 00 00       	call   38c4 <printf>
    2060:	e8 2d 17 00 00       	call   3792 <exit>
    2065:	83 ec 08             	sub    $0x8,%esp
    2068:	68 54 44 00 00       	push   $0x4454
    206d:	6a 01                	push   $0x1
    206f:	e8 50 18 00 00       	call   38c4 <printf>
    2074:	e8 19 17 00 00       	call   3792 <exit>
    2079:	83 ec 08             	sub    $0x8,%esp
    207c:	68 67 44 00 00       	push   $0x4467
    2081:	6a 01                	push   $0x1
    2083:	e8 3c 18 00 00       	call   38c4 <printf>
    2088:	e8 05 17 00 00       	call   3792 <exit>
    208d:	83 ec 08             	sub    $0x8,%esp
    2090:	68 7f 44 00 00       	push   $0x447f
    2095:	6a 01                	push   $0x1
    2097:	e8 28 18 00 00       	call   38c4 <printf>
    209c:	e8 f1 16 00 00       	call   3792 <exit>
    20a1:	83 ec 08             	sub    $0x8,%esp
    20a4:	68 88 4e 00 00       	push   $0x4e88
    20a9:	6a 01                	push   $0x1
    20ab:	e8 14 18 00 00       	call   38c4 <printf>
    20b0:	e8 dd 16 00 00       	call   3792 <exit>
    20b5:	83 ec 08             	sub    $0x8,%esp
    20b8:	68 a3 44 00 00       	push   $0x44a3
    20bd:	6a 01                	push   $0x1
    20bf:	e8 00 18 00 00       	call   38c4 <printf>
    20c4:	e8 c9 16 00 00       	call   3792 <exit>
    20c9:	83 ec 08             	sub    $0x8,%esp
    20cc:	68 c8 44 00 00       	push   $0x44c8
    20d1:	6a 01                	push   $0x1
    20d3:	e8 ec 17 00 00       	call   38c4 <printf>
    20d8:	e8 b5 16 00 00       	call   3792 <exit>
    20dd:	83 ec 08             	sub    $0x8,%esp
    20e0:	68 e4 44 00 00       	push   $0x44e4
    20e5:	6a 01                	push   $0x1
    20e7:	e8 d8 17 00 00       	call   38c4 <printf>
    20ec:	e8 a1 16 00 00       	call   3792 <exit>
    20f1:	83 ec 08             	sub    $0x8,%esp
    20f4:	68 fa 44 00 00       	push   $0x44fa
    20f9:	6a 01                	push   $0x1
    20fb:	e8 c4 17 00 00       	call   38c4 <printf>
    2100:	e8 8d 16 00 00       	call   3792 <exit>
    2105:	83 ec 08             	sub    $0x8,%esp
    2108:	68 13 45 00 00       	push   $0x4513
    210d:	6a 01                	push   $0x1
    210f:	e8 b0 17 00 00       	call   38c4 <printf>
    2114:	e8 79 16 00 00       	call   3792 <exit>
    2119:	83 ec 08             	sub    $0x8,%esp
    211c:	68 b0 4e 00 00       	push   $0x4eb0
    2121:	6a 01                	push   $0x1
    2123:	e8 9c 17 00 00       	call   38c4 <printf>
    2128:	e8 65 16 00 00       	call   3792 <exit>
    212d:	83 ec 08             	sub    $0x8,%esp
    2130:	68 d4 4e 00 00       	push   $0x4ed4
    2135:	6a 01                	push   $0x1
    2137:	e8 88 17 00 00       	call   38c4 <printf>
    213c:	e8 51 16 00 00       	call   3792 <exit>
    2141:	83 ec 08             	sub    $0x8,%esp
    2144:	68 f8 4e 00 00       	push   $0x4ef8
    2149:	6a 01                	push   $0x1
    214b:	e8 74 17 00 00       	call   38c4 <printf>
    2150:	e8 3d 16 00 00       	call   3792 <exit>
    2155:	83 ec 08             	sub    $0x8,%esp
    2158:	68 37 45 00 00       	push   $0x4537
    215d:	6a 01                	push   $0x1
    215f:	e8 60 17 00 00       	call   38c4 <printf>
    2164:	e8 29 16 00 00       	call   3792 <exit>
    2169:	83 ec 08             	sub    $0x8,%esp
    216c:	68 52 45 00 00       	push   $0x4552
    2171:	6a 01                	push   $0x1
    2173:	e8 4c 17 00 00       	call   38c4 <printf>
    2178:	e8 15 16 00 00       	call   3792 <exit>
    217d:	83 ec 08             	sub    $0x8,%esp
    2180:	68 6d 45 00 00       	push   $0x456d
    2185:	6a 01                	push   $0x1
    2187:	e8 38 17 00 00       	call   38c4 <printf>
    218c:	e8 01 16 00 00       	call   3792 <exit>
    2191:	83 ec 08             	sub    $0x8,%esp
    2194:	68 8a 45 00 00       	push   $0x458a
    2199:	6a 01                	push   $0x1
    219b:	e8 24 17 00 00       	call   38c4 <printf>
    21a0:	e8 ed 15 00 00       	call   3792 <exit>
    21a5:	83 ec 08             	sub    $0x8,%esp
    21a8:	68 a6 45 00 00       	push   $0x45a6
    21ad:	6a 01                	push   $0x1
    21af:	e8 10 17 00 00       	call   38c4 <printf>
    21b4:	e8 d9 15 00 00       	call   3792 <exit>
    21b9:	83 ec 08             	sub    $0x8,%esp
    21bc:	68 c2 45 00 00       	push   $0x45c2
    21c1:	6a 01                	push   $0x1
    21c3:	e8 fc 16 00 00       	call   38c4 <printf>
    21c8:	e8 c5 15 00 00       	call   3792 <exit>
    21cd:	83 ec 08             	sub    $0x8,%esp
    21d0:	68 da 45 00 00       	push   $0x45da
    21d5:	6a 01                	push   $0x1
    21d7:	e8 e8 16 00 00       	call   38c4 <printf>
    21dc:	e8 b1 15 00 00       	call   3792 <exit>
    21e1:	83 ec 08             	sub    $0x8,%esp
    21e4:	68 f1 43 00 00       	push   $0x43f1
    21e9:	6a 01                	push   $0x1
    21eb:	e8 d4 16 00 00       	call   38c4 <printf>
    21f0:	e8 9d 15 00 00       	call   3792 <exit>
    21f5:	83 ec 08             	sub    $0x8,%esp
    21f8:	68 f2 45 00 00       	push   $0x45f2
    21fd:	6a 01                	push   $0x1
    21ff:	e8 c0 16 00 00       	call   38c4 <printf>
    2204:	e8 89 15 00 00       	call   3792 <exit>
    2209:	83 ec 08             	sub    $0x8,%esp
    220c:	68 1c 4f 00 00       	push   $0x4f1c
    2211:	6a 01                	push   $0x1
    2213:	e8 ac 16 00 00       	call   38c4 <printf>
    2218:	e8 75 15 00 00       	call   3792 <exit>
    221d:	83 ec 08             	sub    $0x8,%esp
    2220:	68 07 46 00 00       	push   $0x4607
    2225:	6a 01                	push   $0x1
    2227:	e8 98 16 00 00       	call   38c4 <printf>
    222c:	e8 61 15 00 00       	call   3792 <exit>
    2231:	83 ec 08             	sub    $0x8,%esp
    2234:	68 1c 46 00 00       	push   $0x461c
    2239:	6a 01                	push   $0x1
    223b:	e8 84 16 00 00       	call   38c4 <printf>
    2240:	e8 4d 15 00 00       	call   3792 <exit>

00002245 <bigwrite>:
    2245:	55                   	push   %ebp
    2246:	89 e5                	mov    %esp,%ebp
    2248:	57                   	push   %edi
    2249:	56                   	push   %esi
    224a:	53                   	push   %ebx
    224b:	83 ec 14             	sub    $0x14,%esp
    224e:	68 39 46 00 00       	push   $0x4639
    2253:	6a 01                	push   $0x1
    2255:	e8 6a 16 00 00       	call   38c4 <printf>
    225a:	c7 04 24 48 46 00 00 	movl   $0x4648,(%esp)
    2261:	e8 7c 15 00 00       	call   37e2 <unlink>
    2266:	83 c4 10             	add    $0x10,%esp
    2269:	bb f3 01 00 00       	mov    $0x1f3,%ebx
    226e:	83 ec 08             	sub    $0x8,%esp
    2271:	68 02 02 00 00       	push   $0x202
    2276:	68 48 46 00 00       	push   $0x4648
    227b:	e8 52 15 00 00       	call   37d2 <open>
    2280:	89 c6                	mov    %eax,%esi
    2282:	83 c4 10             	add    $0x10,%esp
    2285:	85 c0                	test   %eax,%eax
    2287:	78 6e                	js     22f7 <bigwrite+0xb2>
    2289:	83 ec 04             	sub    $0x4,%esp
    228c:	53                   	push   %ebx
    228d:	68 00 84 00 00       	push   $0x8400
    2292:	50                   	push   %eax
    2293:	e8 1a 15 00 00       	call   37b2 <write>
    2298:	89 c7                	mov    %eax,%edi
    229a:	83 c4 10             	add    $0x10,%esp
    229d:	39 c3                	cmp    %eax,%ebx
    229f:	75 6a                	jne    230b <bigwrite+0xc6>
    22a1:	83 ec 04             	sub    $0x4,%esp
    22a4:	53                   	push   %ebx
    22a5:	68 00 84 00 00       	push   $0x8400
    22aa:	56                   	push   %esi
    22ab:	e8 02 15 00 00       	call   37b2 <write>
    22b0:	83 c4 10             	add    $0x10,%esp
    22b3:	39 d8                	cmp    %ebx,%eax
    22b5:	75 56                	jne    230d <bigwrite+0xc8>
    22b7:	83 ec 0c             	sub    $0xc,%esp
    22ba:	56                   	push   %esi
    22bb:	e8 fa 14 00 00       	call   37ba <close>
    22c0:	c7 04 24 48 46 00 00 	movl   $0x4648,(%esp)
    22c7:	e8 16 15 00 00       	call   37e2 <unlink>
    22cc:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    22d2:	83 c4 10             	add    $0x10,%esp
    22d5:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    22db:	75 91                	jne    226e <bigwrite+0x29>
    22dd:	83 ec 08             	sub    $0x8,%esp
    22e0:	68 7b 46 00 00       	push   $0x467b
    22e5:	6a 01                	push   $0x1
    22e7:	e8 d8 15 00 00       	call   38c4 <printf>
    22ec:	83 c4 10             	add    $0x10,%esp
    22ef:	8d 65 f4             	lea    -0xc(%ebp),%esp
    22f2:	5b                   	pop    %ebx
    22f3:	5e                   	pop    %esi
    22f4:	5f                   	pop    %edi
    22f5:	5d                   	pop    %ebp
    22f6:	c3                   	ret    
    22f7:	83 ec 08             	sub    $0x8,%esp
    22fa:	68 51 46 00 00       	push   $0x4651
    22ff:	6a 01                	push   $0x1
    2301:	e8 be 15 00 00       	call   38c4 <printf>
    2306:	e8 87 14 00 00       	call   3792 <exit>
    230b:	89 df                	mov    %ebx,%edi
    230d:	50                   	push   %eax
    230e:	57                   	push   %edi
    230f:	68 69 46 00 00       	push   $0x4669
    2314:	6a 01                	push   $0x1
    2316:	e8 a9 15 00 00       	call   38c4 <printf>
    231b:	e8 72 14 00 00       	call   3792 <exit>

00002320 <bigfile>:
    2320:	55                   	push   %ebp
    2321:	89 e5                	mov    %esp,%ebp
    2323:	57                   	push   %edi
    2324:	56                   	push   %esi
    2325:	53                   	push   %ebx
    2326:	83 ec 14             	sub    $0x14,%esp
    2329:	68 88 46 00 00       	push   $0x4688
    232e:	6a 01                	push   $0x1
    2330:	e8 8f 15 00 00       	call   38c4 <printf>
    2335:	c7 04 24 a4 46 00 00 	movl   $0x46a4,(%esp)
    233c:	e8 a1 14 00 00       	call   37e2 <unlink>
    2341:	83 c4 08             	add    $0x8,%esp
    2344:	68 02 02 00 00       	push   $0x202
    2349:	68 a4 46 00 00       	push   $0x46a4
    234e:	e8 7f 14 00 00       	call   37d2 <open>
    2353:	83 c4 10             	add    $0x10,%esp
    2356:	85 c0                	test   %eax,%eax
    2358:	0f 88 c5 00 00 00    	js     2423 <bigfile+0x103>
    235e:	89 c6                	mov    %eax,%esi
    2360:	bb 00 00 00 00       	mov    $0x0,%ebx
    2365:	83 ec 04             	sub    $0x4,%esp
    2368:	68 58 02 00 00       	push   $0x258
    236d:	53                   	push   %ebx
    236e:	68 00 84 00 00       	push   $0x8400
    2373:	e8 cd 12 00 00       	call   3645 <memset>
    2378:	83 c4 0c             	add    $0xc,%esp
    237b:	68 58 02 00 00       	push   $0x258
    2380:	68 00 84 00 00       	push   $0x8400
    2385:	56                   	push   %esi
    2386:	e8 27 14 00 00       	call   37b2 <write>
    238b:	83 c4 10             	add    $0x10,%esp
    238e:	3d 58 02 00 00       	cmp    $0x258,%eax
    2393:	0f 85 9e 00 00 00    	jne    2437 <bigfile+0x117>
    2399:	83 c3 01             	add    $0x1,%ebx
    239c:	83 fb 14             	cmp    $0x14,%ebx
    239f:	75 c4                	jne    2365 <bigfile+0x45>
    23a1:	83 ec 0c             	sub    $0xc,%esp
    23a4:	56                   	push   %esi
    23a5:	e8 10 14 00 00       	call   37ba <close>
    23aa:	83 c4 08             	add    $0x8,%esp
    23ad:	6a 00                	push   $0x0
    23af:	68 a4 46 00 00       	push   $0x46a4
    23b4:	e8 19 14 00 00       	call   37d2 <open>
    23b9:	89 c7                	mov    %eax,%edi
    23bb:	83 c4 10             	add    $0x10,%esp
    23be:	85 c0                	test   %eax,%eax
    23c0:	0f 88 85 00 00 00    	js     244b <bigfile+0x12b>
    23c6:	be 00 00 00 00       	mov    $0x0,%esi
    23cb:	bb 00 00 00 00       	mov    $0x0,%ebx
    23d0:	83 ec 04             	sub    $0x4,%esp
    23d3:	68 2c 01 00 00       	push   $0x12c
    23d8:	68 00 84 00 00       	push   $0x8400
    23dd:	57                   	push   %edi
    23de:	e8 c7 13 00 00       	call   37aa <read>
    23e3:	83 c4 10             	add    $0x10,%esp
    23e6:	85 c0                	test   %eax,%eax
    23e8:	78 75                	js     245f <bigfile+0x13f>
    23ea:	85 c0                	test   %eax,%eax
    23ec:	0f 84 a9 00 00 00    	je     249b <bigfile+0x17b>
    23f2:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    23f7:	75 7a                	jne    2473 <bigfile+0x153>
    23f9:	0f be 15 00 84 00 00 	movsbl 0x8400,%edx
    2400:	89 d8                	mov    %ebx,%eax
    2402:	c1 e8 1f             	shr    $0x1f,%eax
    2405:	01 d8                	add    %ebx,%eax
    2407:	d1 f8                	sar    %eax
    2409:	39 c2                	cmp    %eax,%edx
    240b:	75 7a                	jne    2487 <bigfile+0x167>
    240d:	0f be 05 2b 85 00 00 	movsbl 0x852b,%eax
    2414:	39 c2                	cmp    %eax,%edx
    2416:	75 6f                	jne    2487 <bigfile+0x167>
    2418:	81 c6 2c 01 00 00    	add    $0x12c,%esi
    241e:	83 c3 01             	add    $0x1,%ebx
    2421:	eb ad                	jmp    23d0 <bigfile+0xb0>
    2423:	83 ec 08             	sub    $0x8,%esp
    2426:	68 96 46 00 00       	push   $0x4696
    242b:	6a 01                	push   $0x1
    242d:	e8 92 14 00 00       	call   38c4 <printf>
    2432:	e8 5b 13 00 00       	call   3792 <exit>
    2437:	83 ec 08             	sub    $0x8,%esp
    243a:	68 ac 46 00 00       	push   $0x46ac
    243f:	6a 01                	push   $0x1
    2441:	e8 7e 14 00 00       	call   38c4 <printf>
    2446:	e8 47 13 00 00       	call   3792 <exit>
    244b:	83 ec 08             	sub    $0x8,%esp
    244e:	68 c2 46 00 00       	push   $0x46c2
    2453:	6a 01                	push   $0x1
    2455:	e8 6a 14 00 00       	call   38c4 <printf>
    245a:	e8 33 13 00 00       	call   3792 <exit>
    245f:	83 ec 08             	sub    $0x8,%esp
    2462:	68 d7 46 00 00       	push   $0x46d7
    2467:	6a 01                	push   $0x1
    2469:	e8 56 14 00 00       	call   38c4 <printf>
    246e:	e8 1f 13 00 00       	call   3792 <exit>
    2473:	83 ec 08             	sub    $0x8,%esp
    2476:	68 ec 46 00 00       	push   $0x46ec
    247b:	6a 01                	push   $0x1
    247d:	e8 42 14 00 00       	call   38c4 <printf>
    2482:	e8 0b 13 00 00       	call   3792 <exit>
    2487:	83 ec 08             	sub    $0x8,%esp
    248a:	68 00 47 00 00       	push   $0x4700
    248f:	6a 01                	push   $0x1
    2491:	e8 2e 14 00 00       	call   38c4 <printf>
    2496:	e8 f7 12 00 00       	call   3792 <exit>
    249b:	83 ec 0c             	sub    $0xc,%esp
    249e:	57                   	push   %edi
    249f:	e8 16 13 00 00       	call   37ba <close>
    24a4:	83 c4 10             	add    $0x10,%esp
    24a7:	81 fe e0 2e 00 00    	cmp    $0x2ee0,%esi
    24ad:	75 27                	jne    24d6 <bigfile+0x1b6>
    24af:	83 ec 0c             	sub    $0xc,%esp
    24b2:	68 a4 46 00 00       	push   $0x46a4
    24b7:	e8 26 13 00 00       	call   37e2 <unlink>
    24bc:	83 c4 08             	add    $0x8,%esp
    24bf:	68 33 47 00 00       	push   $0x4733
    24c4:	6a 01                	push   $0x1
    24c6:	e8 f9 13 00 00       	call   38c4 <printf>
    24cb:	83 c4 10             	add    $0x10,%esp
    24ce:	8d 65 f4             	lea    -0xc(%ebp),%esp
    24d1:	5b                   	pop    %ebx
    24d2:	5e                   	pop    %esi
    24d3:	5f                   	pop    %edi
    24d4:	5d                   	pop    %ebp
    24d5:	c3                   	ret    
    24d6:	83 ec 08             	sub    $0x8,%esp
    24d9:	68 19 47 00 00       	push   $0x4719
    24de:	6a 01                	push   $0x1
    24e0:	e8 df 13 00 00       	call   38c4 <printf>
    24e5:	e8 a8 12 00 00       	call   3792 <exit>

000024ea <fourteen>:
    24ea:	55                   	push   %ebp
    24eb:	89 e5                	mov    %esp,%ebp
    24ed:	83 ec 10             	sub    $0x10,%esp
    24f0:	68 44 47 00 00       	push   $0x4744
    24f5:	6a 01                	push   $0x1
    24f7:	e8 c8 13 00 00       	call   38c4 <printf>
    24fc:	c7 04 24 7f 47 00 00 	movl   $0x477f,(%esp)
    2503:	e8 f2 12 00 00       	call   37fa <mkdir>
    2508:	83 c4 10             	add    $0x10,%esp
    250b:	85 c0                	test   %eax,%eax
    250d:	0f 85 9c 00 00 00    	jne    25af <fourteen+0xc5>
    2513:	83 ec 0c             	sub    $0xc,%esp
    2516:	68 3c 4f 00 00       	push   $0x4f3c
    251b:	e8 da 12 00 00       	call   37fa <mkdir>
    2520:	83 c4 10             	add    $0x10,%esp
    2523:	85 c0                	test   %eax,%eax
    2525:	0f 85 98 00 00 00    	jne    25c3 <fourteen+0xd9>
    252b:	83 ec 08             	sub    $0x8,%esp
    252e:	68 00 02 00 00       	push   $0x200
    2533:	68 8c 4f 00 00       	push   $0x4f8c
    2538:	e8 95 12 00 00       	call   37d2 <open>
    253d:	83 c4 10             	add    $0x10,%esp
    2540:	85 c0                	test   %eax,%eax
    2542:	0f 88 8f 00 00 00    	js     25d7 <fourteen+0xed>
    2548:	83 ec 0c             	sub    $0xc,%esp
    254b:	50                   	push   %eax
    254c:	e8 69 12 00 00       	call   37ba <close>
    2551:	83 c4 08             	add    $0x8,%esp
    2554:	6a 00                	push   $0x0
    2556:	68 fc 4f 00 00       	push   $0x4ffc
    255b:	e8 72 12 00 00       	call   37d2 <open>
    2560:	83 c4 10             	add    $0x10,%esp
    2563:	85 c0                	test   %eax,%eax
    2565:	0f 88 80 00 00 00    	js     25eb <fourteen+0x101>
    256b:	83 ec 0c             	sub    $0xc,%esp
    256e:	50                   	push   %eax
    256f:	e8 46 12 00 00       	call   37ba <close>
    2574:	c7 04 24 70 47 00 00 	movl   $0x4770,(%esp)
    257b:	e8 7a 12 00 00       	call   37fa <mkdir>
    2580:	83 c4 10             	add    $0x10,%esp
    2583:	85 c0                	test   %eax,%eax
    2585:	74 78                	je     25ff <fourteen+0x115>
    2587:	83 ec 0c             	sub    $0xc,%esp
    258a:	68 98 50 00 00       	push   $0x5098
    258f:	e8 66 12 00 00       	call   37fa <mkdir>
    2594:	83 c4 10             	add    $0x10,%esp
    2597:	85 c0                	test   %eax,%eax
    2599:	74 78                	je     2613 <fourteen+0x129>
    259b:	83 ec 08             	sub    $0x8,%esp
    259e:	68 8e 47 00 00       	push   $0x478e
    25a3:	6a 01                	push   $0x1
    25a5:	e8 1a 13 00 00       	call   38c4 <printf>
    25aa:	83 c4 10             	add    $0x10,%esp
    25ad:	c9                   	leave  
    25ae:	c3                   	ret    
    25af:	83 ec 08             	sub    $0x8,%esp
    25b2:	68 53 47 00 00       	push   $0x4753
    25b7:	6a 01                	push   $0x1
    25b9:	e8 06 13 00 00       	call   38c4 <printf>
    25be:	e8 cf 11 00 00       	call   3792 <exit>
    25c3:	83 ec 08             	sub    $0x8,%esp
    25c6:	68 5c 4f 00 00       	push   $0x4f5c
    25cb:	6a 01                	push   $0x1
    25cd:	e8 f2 12 00 00       	call   38c4 <printf>
    25d2:	e8 bb 11 00 00       	call   3792 <exit>
    25d7:	83 ec 08             	sub    $0x8,%esp
    25da:	68 bc 4f 00 00       	push   $0x4fbc
    25df:	6a 01                	push   $0x1
    25e1:	e8 de 12 00 00       	call   38c4 <printf>
    25e6:	e8 a7 11 00 00       	call   3792 <exit>
    25eb:	83 ec 08             	sub    $0x8,%esp
    25ee:	68 2c 50 00 00       	push   $0x502c
    25f3:	6a 01                	push   $0x1
    25f5:	e8 ca 12 00 00       	call   38c4 <printf>
    25fa:	e8 93 11 00 00       	call   3792 <exit>
    25ff:	83 ec 08             	sub    $0x8,%esp
    2602:	68 68 50 00 00       	push   $0x5068
    2607:	6a 01                	push   $0x1
    2609:	e8 b6 12 00 00       	call   38c4 <printf>
    260e:	e8 7f 11 00 00       	call   3792 <exit>
    2613:	83 ec 08             	sub    $0x8,%esp
    2616:	68 b8 50 00 00       	push   $0x50b8
    261b:	6a 01                	push   $0x1
    261d:	e8 a2 12 00 00       	call   38c4 <printf>
    2622:	e8 6b 11 00 00       	call   3792 <exit>

00002627 <rmdot>:
    2627:	55                   	push   %ebp
    2628:	89 e5                	mov    %esp,%ebp
    262a:	83 ec 10             	sub    $0x10,%esp
    262d:	68 9b 47 00 00       	push   $0x479b
    2632:	6a 01                	push   $0x1
    2634:	e8 8b 12 00 00       	call   38c4 <printf>
    2639:	c7 04 24 a7 47 00 00 	movl   $0x47a7,(%esp)
    2640:	e8 b5 11 00 00       	call   37fa <mkdir>
    2645:	83 c4 10             	add    $0x10,%esp
    2648:	85 c0                	test   %eax,%eax
    264a:	0f 85 bc 00 00 00    	jne    270c <rmdot+0xe5>
    2650:	83 ec 0c             	sub    $0xc,%esp
    2653:	68 a7 47 00 00       	push   $0x47a7
    2658:	e8 a5 11 00 00       	call   3802 <chdir>
    265d:	83 c4 10             	add    $0x10,%esp
    2660:	85 c0                	test   %eax,%eax
    2662:	0f 85 b8 00 00 00    	jne    2720 <rmdot+0xf9>
    2668:	83 ec 0c             	sub    $0xc,%esp
    266b:	68 52 44 00 00       	push   $0x4452
    2670:	e8 6d 11 00 00       	call   37e2 <unlink>
    2675:	83 c4 10             	add    $0x10,%esp
    2678:	85 c0                	test   %eax,%eax
    267a:	0f 84 b4 00 00 00    	je     2734 <rmdot+0x10d>
    2680:	83 ec 0c             	sub    $0xc,%esp
    2683:	68 51 44 00 00       	push   $0x4451
    2688:	e8 55 11 00 00       	call   37e2 <unlink>
    268d:	83 c4 10             	add    $0x10,%esp
    2690:	85 c0                	test   %eax,%eax
    2692:	0f 84 b0 00 00 00    	je     2748 <rmdot+0x121>
    2698:	83 ec 0c             	sub    $0xc,%esp
    269b:	68 25 3c 00 00       	push   $0x3c25
    26a0:	e8 5d 11 00 00       	call   3802 <chdir>
    26a5:	83 c4 10             	add    $0x10,%esp
    26a8:	85 c0                	test   %eax,%eax
    26aa:	0f 85 ac 00 00 00    	jne    275c <rmdot+0x135>
    26b0:	83 ec 0c             	sub    $0xc,%esp
    26b3:	68 ef 47 00 00       	push   $0x47ef
    26b8:	e8 25 11 00 00       	call   37e2 <unlink>
    26bd:	83 c4 10             	add    $0x10,%esp
    26c0:	85 c0                	test   %eax,%eax
    26c2:	0f 84 a8 00 00 00    	je     2770 <rmdot+0x149>
    26c8:	83 ec 0c             	sub    $0xc,%esp
    26cb:	68 0d 48 00 00       	push   $0x480d
    26d0:	e8 0d 11 00 00       	call   37e2 <unlink>
    26d5:	83 c4 10             	add    $0x10,%esp
    26d8:	85 c0                	test   %eax,%eax
    26da:	0f 84 a4 00 00 00    	je     2784 <rmdot+0x15d>
    26e0:	83 ec 0c             	sub    $0xc,%esp
    26e3:	68 a7 47 00 00       	push   $0x47a7
    26e8:	e8 f5 10 00 00       	call   37e2 <unlink>
    26ed:	83 c4 10             	add    $0x10,%esp
    26f0:	85 c0                	test   %eax,%eax
    26f2:	0f 85 a0 00 00 00    	jne    2798 <rmdot+0x171>
    26f8:	83 ec 08             	sub    $0x8,%esp
    26fb:	68 42 48 00 00       	push   $0x4842
    2700:	6a 01                	push   $0x1
    2702:	e8 bd 11 00 00       	call   38c4 <printf>
    2707:	83 c4 10             	add    $0x10,%esp
    270a:	c9                   	leave  
    270b:	c3                   	ret    
    270c:	83 ec 08             	sub    $0x8,%esp
    270f:	68 ac 47 00 00       	push   $0x47ac
    2714:	6a 01                	push   $0x1
    2716:	e8 a9 11 00 00       	call   38c4 <printf>
    271b:	e8 72 10 00 00       	call   3792 <exit>
    2720:	83 ec 08             	sub    $0x8,%esp
    2723:	68 bf 47 00 00       	push   $0x47bf
    2728:	6a 01                	push   $0x1
    272a:	e8 95 11 00 00       	call   38c4 <printf>
    272f:	e8 5e 10 00 00       	call   3792 <exit>
    2734:	83 ec 08             	sub    $0x8,%esp
    2737:	68 d2 47 00 00       	push   $0x47d2
    273c:	6a 01                	push   $0x1
    273e:	e8 81 11 00 00       	call   38c4 <printf>
    2743:	e8 4a 10 00 00       	call   3792 <exit>
    2748:	83 ec 08             	sub    $0x8,%esp
    274b:	68 e0 47 00 00       	push   $0x47e0
    2750:	6a 01                	push   $0x1
    2752:	e8 6d 11 00 00       	call   38c4 <printf>
    2757:	e8 36 10 00 00       	call   3792 <exit>
    275c:	83 ec 08             	sub    $0x8,%esp
    275f:	68 27 3c 00 00       	push   $0x3c27
    2764:	6a 01                	push   $0x1
    2766:	e8 59 11 00 00       	call   38c4 <printf>
    276b:	e8 22 10 00 00       	call   3792 <exit>
    2770:	83 ec 08             	sub    $0x8,%esp
    2773:	68 f6 47 00 00       	push   $0x47f6
    2778:	6a 01                	push   $0x1
    277a:	e8 45 11 00 00       	call   38c4 <printf>
    277f:	e8 0e 10 00 00       	call   3792 <exit>
    2784:	83 ec 08             	sub    $0x8,%esp
    2787:	68 15 48 00 00       	push   $0x4815
    278c:	6a 01                	push   $0x1
    278e:	e8 31 11 00 00       	call   38c4 <printf>
    2793:	e8 fa 0f 00 00       	call   3792 <exit>
    2798:	83 ec 08             	sub    $0x8,%esp
    279b:	68 2d 48 00 00       	push   $0x482d
    27a0:	6a 01                	push   $0x1
    27a2:	e8 1d 11 00 00       	call   38c4 <printf>
    27a7:	e8 e6 0f 00 00       	call   3792 <exit>

000027ac <dirfile>:
    27ac:	55                   	push   %ebp
    27ad:	89 e5                	mov    %esp,%ebp
    27af:	53                   	push   %ebx
    27b0:	83 ec 0c             	sub    $0xc,%esp
    27b3:	68 4c 48 00 00       	push   $0x484c
    27b8:	6a 01                	push   $0x1
    27ba:	e8 05 11 00 00       	call   38c4 <printf>
    27bf:	83 c4 08             	add    $0x8,%esp
    27c2:	68 00 02 00 00       	push   $0x200
    27c7:	68 59 48 00 00       	push   $0x4859
    27cc:	e8 01 10 00 00       	call   37d2 <open>
    27d1:	83 c4 10             	add    $0x10,%esp
    27d4:	85 c0                	test   %eax,%eax
    27d6:	0f 88 22 01 00 00    	js     28fe <dirfile+0x152>
    27dc:	83 ec 0c             	sub    $0xc,%esp
    27df:	50                   	push   %eax
    27e0:	e8 d5 0f 00 00       	call   37ba <close>
    27e5:	c7 04 24 59 48 00 00 	movl   $0x4859,(%esp)
    27ec:	e8 11 10 00 00       	call   3802 <chdir>
    27f1:	83 c4 10             	add    $0x10,%esp
    27f4:	85 c0                	test   %eax,%eax
    27f6:	0f 84 16 01 00 00    	je     2912 <dirfile+0x166>
    27fc:	83 ec 08             	sub    $0x8,%esp
    27ff:	6a 00                	push   $0x0
    2801:	68 92 48 00 00       	push   $0x4892
    2806:	e8 c7 0f 00 00       	call   37d2 <open>
    280b:	83 c4 10             	add    $0x10,%esp
    280e:	85 c0                	test   %eax,%eax
    2810:	0f 89 10 01 00 00    	jns    2926 <dirfile+0x17a>
    2816:	83 ec 08             	sub    $0x8,%esp
    2819:	68 00 02 00 00       	push   $0x200
    281e:	68 92 48 00 00       	push   $0x4892
    2823:	e8 aa 0f 00 00       	call   37d2 <open>
    2828:	83 c4 10             	add    $0x10,%esp
    282b:	85 c0                	test   %eax,%eax
    282d:	0f 89 07 01 00 00    	jns    293a <dirfile+0x18e>
    2833:	83 ec 0c             	sub    $0xc,%esp
    2836:	68 92 48 00 00       	push   $0x4892
    283b:	e8 ba 0f 00 00       	call   37fa <mkdir>
    2840:	83 c4 10             	add    $0x10,%esp
    2843:	85 c0                	test   %eax,%eax
    2845:	0f 84 03 01 00 00    	je     294e <dirfile+0x1a2>
    284b:	83 ec 0c             	sub    $0xc,%esp
    284e:	68 92 48 00 00       	push   $0x4892
    2853:	e8 8a 0f 00 00       	call   37e2 <unlink>
    2858:	83 c4 10             	add    $0x10,%esp
    285b:	85 c0                	test   %eax,%eax
    285d:	0f 84 ff 00 00 00    	je     2962 <dirfile+0x1b6>
    2863:	83 ec 08             	sub    $0x8,%esp
    2866:	68 92 48 00 00       	push   $0x4892
    286b:	68 f6 48 00 00       	push   $0x48f6
    2870:	e8 7d 0f 00 00       	call   37f2 <link>
    2875:	83 c4 10             	add    $0x10,%esp
    2878:	85 c0                	test   %eax,%eax
    287a:	0f 84 f6 00 00 00    	je     2976 <dirfile+0x1ca>
    2880:	83 ec 0c             	sub    $0xc,%esp
    2883:	68 59 48 00 00       	push   $0x4859
    2888:	e8 55 0f 00 00       	call   37e2 <unlink>
    288d:	83 c4 10             	add    $0x10,%esp
    2890:	85 c0                	test   %eax,%eax
    2892:	0f 85 f2 00 00 00    	jne    298a <dirfile+0x1de>
    2898:	83 ec 08             	sub    $0x8,%esp
    289b:	6a 02                	push   $0x2
    289d:	68 52 44 00 00       	push   $0x4452
    28a2:	e8 2b 0f 00 00       	call   37d2 <open>
    28a7:	83 c4 10             	add    $0x10,%esp
    28aa:	85 c0                	test   %eax,%eax
    28ac:	0f 89 ec 00 00 00    	jns    299e <dirfile+0x1f2>
    28b2:	83 ec 08             	sub    $0x8,%esp
    28b5:	6a 00                	push   $0x0
    28b7:	68 52 44 00 00       	push   $0x4452
    28bc:	e8 11 0f 00 00       	call   37d2 <open>
    28c1:	89 c3                	mov    %eax,%ebx
    28c3:	83 c4 0c             	add    $0xc,%esp
    28c6:	6a 01                	push   $0x1
    28c8:	68 35 45 00 00       	push   $0x4535
    28cd:	50                   	push   %eax
    28ce:	e8 df 0e 00 00       	call   37b2 <write>
    28d3:	83 c4 10             	add    $0x10,%esp
    28d6:	85 c0                	test   %eax,%eax
    28d8:	0f 8f d4 00 00 00    	jg     29b2 <dirfile+0x206>
    28de:	83 ec 0c             	sub    $0xc,%esp
    28e1:	53                   	push   %ebx
    28e2:	e8 d3 0e 00 00       	call   37ba <close>
    28e7:	83 c4 08             	add    $0x8,%esp
    28ea:	68 29 49 00 00       	push   $0x4929
    28ef:	6a 01                	push   $0x1
    28f1:	e8 ce 0f 00 00       	call   38c4 <printf>
    28f6:	83 c4 10             	add    $0x10,%esp
    28f9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    28fc:	c9                   	leave  
    28fd:	c3                   	ret    
    28fe:	83 ec 08             	sub    $0x8,%esp
    2901:	68 61 48 00 00       	push   $0x4861
    2906:	6a 01                	push   $0x1
    2908:	e8 b7 0f 00 00       	call   38c4 <printf>
    290d:	e8 80 0e 00 00       	call   3792 <exit>
    2912:	83 ec 08             	sub    $0x8,%esp
    2915:	68 78 48 00 00       	push   $0x4878
    291a:	6a 01                	push   $0x1
    291c:	e8 a3 0f 00 00       	call   38c4 <printf>
    2921:	e8 6c 0e 00 00       	call   3792 <exit>
    2926:	83 ec 08             	sub    $0x8,%esp
    2929:	68 9d 48 00 00       	push   $0x489d
    292e:	6a 01                	push   $0x1
    2930:	e8 8f 0f 00 00       	call   38c4 <printf>
    2935:	e8 58 0e 00 00       	call   3792 <exit>
    293a:	83 ec 08             	sub    $0x8,%esp
    293d:	68 9d 48 00 00       	push   $0x489d
    2942:	6a 01                	push   $0x1
    2944:	e8 7b 0f 00 00       	call   38c4 <printf>
    2949:	e8 44 0e 00 00       	call   3792 <exit>
    294e:	83 ec 08             	sub    $0x8,%esp
    2951:	68 bb 48 00 00       	push   $0x48bb
    2956:	6a 01                	push   $0x1
    2958:	e8 67 0f 00 00       	call   38c4 <printf>
    295d:	e8 30 0e 00 00       	call   3792 <exit>
    2962:	83 ec 08             	sub    $0x8,%esp
    2965:	68 d8 48 00 00       	push   $0x48d8
    296a:	6a 01                	push   $0x1
    296c:	e8 53 0f 00 00       	call   38c4 <printf>
    2971:	e8 1c 0e 00 00       	call   3792 <exit>
    2976:	83 ec 08             	sub    $0x8,%esp
    2979:	68 ec 50 00 00       	push   $0x50ec
    297e:	6a 01                	push   $0x1
    2980:	e8 3f 0f 00 00       	call   38c4 <printf>
    2985:	e8 08 0e 00 00       	call   3792 <exit>
    298a:	83 ec 08             	sub    $0x8,%esp
    298d:	68 fd 48 00 00       	push   $0x48fd
    2992:	6a 01                	push   $0x1
    2994:	e8 2b 0f 00 00       	call   38c4 <printf>
    2999:	e8 f4 0d 00 00       	call   3792 <exit>
    299e:	83 ec 08             	sub    $0x8,%esp
    29a1:	68 0c 51 00 00       	push   $0x510c
    29a6:	6a 01                	push   $0x1
    29a8:	e8 17 0f 00 00       	call   38c4 <printf>
    29ad:	e8 e0 0d 00 00       	call   3792 <exit>
    29b2:	83 ec 08             	sub    $0x8,%esp
    29b5:	68 15 49 00 00       	push   $0x4915
    29ba:	6a 01                	push   $0x1
    29bc:	e8 03 0f 00 00       	call   38c4 <printf>
    29c1:	e8 cc 0d 00 00       	call   3792 <exit>

000029c6 <iref>:
    29c6:	55                   	push   %ebp
    29c7:	89 e5                	mov    %esp,%ebp
    29c9:	53                   	push   %ebx
    29ca:	83 ec 0c             	sub    $0xc,%esp
    29cd:	68 39 49 00 00       	push   $0x4939
    29d2:	6a 01                	push   $0x1
    29d4:	e8 eb 0e 00 00       	call   38c4 <printf>
    29d9:	83 c4 10             	add    $0x10,%esp
    29dc:	bb 33 00 00 00       	mov    $0x33,%ebx
    29e1:	eb 4f                	jmp    2a32 <iref+0x6c>
    29e3:	83 ec 08             	sub    $0x8,%esp
    29e6:	68 50 49 00 00       	push   $0x4950
    29eb:	6a 01                	push   $0x1
    29ed:	e8 d2 0e 00 00       	call   38c4 <printf>
    29f2:	e8 9b 0d 00 00       	call   3792 <exit>
    29f7:	83 ec 08             	sub    $0x8,%esp
    29fa:	68 64 49 00 00       	push   $0x4964
    29ff:	6a 01                	push   $0x1
    2a01:	e8 be 0e 00 00       	call   38c4 <printf>
    2a06:	e8 87 0d 00 00       	call   3792 <exit>
    2a0b:	83 ec 0c             	sub    $0xc,%esp
    2a0e:	50                   	push   %eax
    2a0f:	e8 a6 0d 00 00       	call   37ba <close>
    2a14:	83 c4 10             	add    $0x10,%esp
    2a17:	eb 7d                	jmp    2a96 <iref+0xd0>
    2a19:	83 ec 0c             	sub    $0xc,%esp
    2a1c:	68 34 45 00 00       	push   $0x4534
    2a21:	e8 bc 0d 00 00       	call   37e2 <unlink>
    2a26:	83 c4 10             	add    $0x10,%esp
    2a29:	83 eb 01             	sub    $0x1,%ebx
    2a2c:	0f 84 92 00 00 00    	je     2ac4 <iref+0xfe>
    2a32:	83 ec 0c             	sub    $0xc,%esp
    2a35:	68 4a 49 00 00       	push   $0x494a
    2a3a:	e8 bb 0d 00 00       	call   37fa <mkdir>
    2a3f:	83 c4 10             	add    $0x10,%esp
    2a42:	85 c0                	test   %eax,%eax
    2a44:	75 9d                	jne    29e3 <iref+0x1d>
    2a46:	83 ec 0c             	sub    $0xc,%esp
    2a49:	68 4a 49 00 00       	push   $0x494a
    2a4e:	e8 af 0d 00 00       	call   3802 <chdir>
    2a53:	83 c4 10             	add    $0x10,%esp
    2a56:	85 c0                	test   %eax,%eax
    2a58:	75 9d                	jne    29f7 <iref+0x31>
    2a5a:	83 ec 0c             	sub    $0xc,%esp
    2a5d:	68 ff 3f 00 00       	push   $0x3fff
    2a62:	e8 93 0d 00 00       	call   37fa <mkdir>
    2a67:	83 c4 08             	add    $0x8,%esp
    2a6a:	68 ff 3f 00 00       	push   $0x3fff
    2a6f:	68 f6 48 00 00       	push   $0x48f6
    2a74:	e8 79 0d 00 00       	call   37f2 <link>
    2a79:	83 c4 08             	add    $0x8,%esp
    2a7c:	68 00 02 00 00       	push   $0x200
    2a81:	68 ff 3f 00 00       	push   $0x3fff
    2a86:	e8 47 0d 00 00       	call   37d2 <open>
    2a8b:	83 c4 10             	add    $0x10,%esp
    2a8e:	85 c0                	test   %eax,%eax
    2a90:	0f 89 75 ff ff ff    	jns    2a0b <iref+0x45>
    2a96:	83 ec 08             	sub    $0x8,%esp
    2a99:	68 00 02 00 00       	push   $0x200
    2a9e:	68 34 45 00 00       	push   $0x4534
    2aa3:	e8 2a 0d 00 00       	call   37d2 <open>
    2aa8:	83 c4 10             	add    $0x10,%esp
    2aab:	85 c0                	test   %eax,%eax
    2aad:	0f 88 66 ff ff ff    	js     2a19 <iref+0x53>
    2ab3:	83 ec 0c             	sub    $0xc,%esp
    2ab6:	50                   	push   %eax
    2ab7:	e8 fe 0c 00 00       	call   37ba <close>
    2abc:	83 c4 10             	add    $0x10,%esp
    2abf:	e9 55 ff ff ff       	jmp    2a19 <iref+0x53>
    2ac4:	83 ec 0c             	sub    $0xc,%esp
    2ac7:	68 25 3c 00 00       	push   $0x3c25
    2acc:	e8 31 0d 00 00       	call   3802 <chdir>
    2ad1:	83 c4 08             	add    $0x8,%esp
    2ad4:	68 78 49 00 00       	push   $0x4978
    2ad9:	6a 01                	push   $0x1
    2adb:	e8 e4 0d 00 00       	call   38c4 <printf>
    2ae0:	83 c4 10             	add    $0x10,%esp
    2ae3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2ae6:	c9                   	leave  
    2ae7:	c3                   	ret    

00002ae8 <forktest>:
    2ae8:	55                   	push   %ebp
    2ae9:	89 e5                	mov    %esp,%ebp
    2aeb:	53                   	push   %ebx
    2aec:	83 ec 0c             	sub    $0xc,%esp
    2aef:	68 8c 49 00 00       	push   $0x498c
    2af4:	6a 01                	push   $0x1
    2af6:	e8 c9 0d 00 00       	call   38c4 <printf>
    2afb:	83 c4 10             	add    $0x10,%esp
    2afe:	bb 00 00 00 00       	mov    $0x0,%ebx
    2b03:	e8 82 0c 00 00       	call   378a <fork>
    2b08:	85 c0                	test   %eax,%eax
    2b0a:	78 28                	js     2b34 <forktest+0x4c>
    2b0c:	85 c0                	test   %eax,%eax
    2b0e:	74 1f                	je     2b2f <forktest+0x47>
    2b10:	83 c3 01             	add    $0x1,%ebx
    2b13:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2b19:	75 e8                	jne    2b03 <forktest+0x1b>
    2b1b:	83 ec 08             	sub    $0x8,%esp
    2b1e:	68 2c 51 00 00       	push   $0x512c
    2b23:	6a 01                	push   $0x1
    2b25:	e8 9a 0d 00 00       	call   38c4 <printf>
    2b2a:	e8 63 0c 00 00       	call   3792 <exit>
    2b2f:	e8 5e 0c 00 00       	call   3792 <exit>
    2b34:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2b3a:	74 df                	je     2b1b <forktest+0x33>
    2b3c:	85 db                	test   %ebx,%ebx
    2b3e:	7e 0e                	jle    2b4e <forktest+0x66>
    2b40:	e8 55 0c 00 00       	call   379a <wait>
    2b45:	85 c0                	test   %eax,%eax
    2b47:	78 26                	js     2b6f <forktest+0x87>
    2b49:	83 eb 01             	sub    $0x1,%ebx
    2b4c:	75 f2                	jne    2b40 <forktest+0x58>
    2b4e:	e8 47 0c 00 00       	call   379a <wait>
    2b53:	83 f8 ff             	cmp    $0xffffffff,%eax
    2b56:	75 2b                	jne    2b83 <forktest+0x9b>
    2b58:	83 ec 08             	sub    $0x8,%esp
    2b5b:	68 be 49 00 00       	push   $0x49be
    2b60:	6a 01                	push   $0x1
    2b62:	e8 5d 0d 00 00       	call   38c4 <printf>
    2b67:	83 c4 10             	add    $0x10,%esp
    2b6a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2b6d:	c9                   	leave  
    2b6e:	c3                   	ret    
    2b6f:	83 ec 08             	sub    $0x8,%esp
    2b72:	68 97 49 00 00       	push   $0x4997
    2b77:	6a 01                	push   $0x1
    2b79:	e8 46 0d 00 00       	call   38c4 <printf>
    2b7e:	e8 0f 0c 00 00       	call   3792 <exit>
    2b83:	83 ec 08             	sub    $0x8,%esp
    2b86:	68 ab 49 00 00       	push   $0x49ab
    2b8b:	6a 01                	push   $0x1
    2b8d:	e8 32 0d 00 00       	call   38c4 <printf>
    2b92:	e8 fb 0b 00 00       	call   3792 <exit>

00002b97 <sbrktest>:
    2b97:	55                   	push   %ebp
    2b98:	89 e5                	mov    %esp,%ebp
    2b9a:	57                   	push   %edi
    2b9b:	56                   	push   %esi
    2b9c:	53                   	push   %ebx
    2b9d:	83 ec 64             	sub    $0x64,%esp
    2ba0:	68 cc 49 00 00       	push   $0x49cc
    2ba5:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2bab:	e8 14 0d 00 00       	call   38c4 <printf>
    2bb0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bb7:	e8 5e 0c 00 00       	call   381a <sbrk>
    2bbc:	89 c3                	mov    %eax,%ebx
    2bbe:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bc5:	e8 50 0c 00 00       	call   381a <sbrk>
    2bca:	89 c6                	mov    %eax,%esi
    2bcc:	83 c4 10             	add    $0x10,%esp
    2bcf:	bf 00 00 00 00       	mov    $0x0,%edi
    2bd4:	eb 02                	jmp    2bd8 <sbrktest+0x41>
    2bd6:	89 c6                	mov    %eax,%esi
    2bd8:	83 ec 0c             	sub    $0xc,%esp
    2bdb:	6a 01                	push   $0x1
    2bdd:	e8 38 0c 00 00       	call   381a <sbrk>
    2be2:	83 c4 10             	add    $0x10,%esp
    2be5:	39 f0                	cmp    %esi,%eax
    2be7:	0f 85 8e 01 00 00    	jne    2d7b <sbrktest+0x1e4>
    2bed:	c6 06 01             	movb   $0x1,(%esi)
    2bf0:	8d 46 01             	lea    0x1(%esi),%eax
    2bf3:	83 c7 01             	add    $0x1,%edi
    2bf6:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    2bfc:	75 d8                	jne    2bd6 <sbrktest+0x3f>
    2bfe:	e8 87 0b 00 00       	call   378a <fork>
    2c03:	89 c7                	mov    %eax,%edi
    2c05:	85 c0                	test   %eax,%eax
    2c07:	0f 88 8c 01 00 00    	js     2d99 <sbrktest+0x202>
    2c0d:	83 ec 0c             	sub    $0xc,%esp
    2c10:	6a 01                	push   $0x1
    2c12:	e8 03 0c 00 00       	call   381a <sbrk>
    2c17:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c1e:	e8 f7 0b 00 00       	call   381a <sbrk>
    2c23:	83 c6 02             	add    $0x2,%esi
    2c26:	83 c4 10             	add    $0x10,%esp
    2c29:	39 f0                	cmp    %esi,%eax
    2c2b:	0f 85 80 01 00 00    	jne    2db1 <sbrktest+0x21a>
    2c31:	85 ff                	test   %edi,%edi
    2c33:	0f 84 90 01 00 00    	je     2dc9 <sbrktest+0x232>
    2c39:	e8 5c 0b 00 00       	call   379a <wait>
    2c3e:	83 ec 0c             	sub    $0xc,%esp
    2c41:	6a 00                	push   $0x0
    2c43:	e8 d2 0b 00 00       	call   381a <sbrk>
    2c48:	89 c6                	mov    %eax,%esi
    2c4a:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2c4f:	29 f0                	sub    %esi,%eax
    2c51:	89 04 24             	mov    %eax,(%esp)
    2c54:	e8 c1 0b 00 00       	call   381a <sbrk>
    2c59:	83 c4 10             	add    $0x10,%esp
    2c5c:	39 c6                	cmp    %eax,%esi
    2c5e:	0f 85 6a 01 00 00    	jne    2dce <sbrktest+0x237>
    2c64:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
    2c6b:	83 ec 0c             	sub    $0xc,%esp
    2c6e:	6a 00                	push   $0x0
    2c70:	e8 a5 0b 00 00       	call   381a <sbrk>
    2c75:	89 c6                	mov    %eax,%esi
    2c77:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
    2c7e:	e8 97 0b 00 00       	call   381a <sbrk>
    2c83:	83 c4 10             	add    $0x10,%esp
    2c86:	83 f8 ff             	cmp    $0xffffffff,%eax
    2c89:	0f 84 57 01 00 00    	je     2de6 <sbrktest+0x24f>
    2c8f:	83 ec 0c             	sub    $0xc,%esp
    2c92:	6a 00                	push   $0x0
    2c94:	e8 81 0b 00 00       	call   381a <sbrk>
    2c99:	8d 96 00 f0 ff ff    	lea    -0x1000(%esi),%edx
    2c9f:	83 c4 10             	add    $0x10,%esp
    2ca2:	39 d0                	cmp    %edx,%eax
    2ca4:	0f 85 54 01 00 00    	jne    2dfe <sbrktest+0x267>
    2caa:	83 ec 0c             	sub    $0xc,%esp
    2cad:	6a 00                	push   $0x0
    2caf:	e8 66 0b 00 00       	call   381a <sbrk>
    2cb4:	89 c6                	mov    %eax,%esi
    2cb6:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    2cbd:	e8 58 0b 00 00       	call   381a <sbrk>
    2cc2:	89 c7                	mov    %eax,%edi
    2cc4:	83 c4 10             	add    $0x10,%esp
    2cc7:	39 c6                	cmp    %eax,%esi
    2cc9:	0f 85 46 01 00 00    	jne    2e15 <sbrktest+0x27e>
    2ccf:	83 ec 0c             	sub    $0xc,%esp
    2cd2:	6a 00                	push   $0x0
    2cd4:	e8 41 0b 00 00       	call   381a <sbrk>
    2cd9:	8d 96 00 10 00 00    	lea    0x1000(%esi),%edx
    2cdf:	83 c4 10             	add    $0x10,%esp
    2ce2:	39 d0                	cmp    %edx,%eax
    2ce4:	0f 85 2b 01 00 00    	jne    2e15 <sbrktest+0x27e>
    2cea:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    2cf1:	0f 84 35 01 00 00    	je     2e2c <sbrktest+0x295>
    2cf7:	83 ec 0c             	sub    $0xc,%esp
    2cfa:	6a 00                	push   $0x0
    2cfc:	e8 19 0b 00 00       	call   381a <sbrk>
    2d01:	89 c6                	mov    %eax,%esi
    2d03:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d0a:	e8 0b 0b 00 00       	call   381a <sbrk>
    2d0f:	89 d9                	mov    %ebx,%ecx
    2d11:	29 c1                	sub    %eax,%ecx
    2d13:	89 0c 24             	mov    %ecx,(%esp)
    2d16:	e8 ff 0a 00 00       	call   381a <sbrk>
    2d1b:	83 c4 10             	add    $0x10,%esp
    2d1e:	39 c6                	cmp    %eax,%esi
    2d20:	0f 85 1e 01 00 00    	jne    2e44 <sbrktest+0x2ad>
    2d26:	be 00 00 00 80       	mov    $0x80000000,%esi
    2d2b:	e8 e2 0a 00 00       	call   3812 <getpid>
    2d30:	89 c7                	mov    %eax,%edi
    2d32:	e8 53 0a 00 00       	call   378a <fork>
    2d37:	85 c0                	test   %eax,%eax
    2d39:	0f 88 1c 01 00 00    	js     2e5b <sbrktest+0x2c4>
    2d3f:	85 c0                	test   %eax,%eax
    2d41:	0f 84 2c 01 00 00    	je     2e73 <sbrktest+0x2dc>
    2d47:	e8 4e 0a 00 00       	call   379a <wait>
    2d4c:	81 c6 50 c3 00 00    	add    $0xc350,%esi
    2d52:	81 fe 80 84 1e 80    	cmp    $0x801e8480,%esi
    2d58:	75 d1                	jne    2d2b <sbrktest+0x194>
    2d5a:	83 ec 0c             	sub    $0xc,%esp
    2d5d:	8d 45 e0             	lea    -0x20(%ebp),%eax
    2d60:	50                   	push   %eax
    2d61:	e8 3c 0a 00 00       	call   37a2 <pipe>
    2d66:	83 c4 10             	add    $0x10,%esp
    2d69:	85 c0                	test   %eax,%eax
    2d6b:	0f 85 24 01 00 00    	jne    2e95 <sbrktest+0x2fe>
    2d71:	8d 7d b8             	lea    -0x48(%ebp),%edi
    2d74:	89 fe                	mov    %edi,%esi
    2d76:	e9 78 01 00 00       	jmp    2ef3 <sbrktest+0x35c>
    2d7b:	83 ec 0c             	sub    $0xc,%esp
    2d7e:	50                   	push   %eax
    2d7f:	56                   	push   %esi
    2d80:	57                   	push   %edi
    2d81:	68 d7 49 00 00       	push   $0x49d7
    2d86:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2d8c:	e8 33 0b 00 00       	call   38c4 <printf>
    2d91:	83 c4 20             	add    $0x20,%esp
    2d94:	e8 f9 09 00 00       	call   3792 <exit>
    2d99:	83 ec 08             	sub    $0x8,%esp
    2d9c:	68 f2 49 00 00       	push   $0x49f2
    2da1:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2da7:	e8 18 0b 00 00       	call   38c4 <printf>
    2dac:	e8 e1 09 00 00       	call   3792 <exit>
    2db1:	83 ec 08             	sub    $0x8,%esp
    2db4:	68 09 4a 00 00       	push   $0x4a09
    2db9:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2dbf:	e8 00 0b 00 00       	call   38c4 <printf>
    2dc4:	e8 c9 09 00 00       	call   3792 <exit>
    2dc9:	e8 c4 09 00 00       	call   3792 <exit>
    2dce:	83 ec 08             	sub    $0x8,%esp
    2dd1:	68 50 51 00 00       	push   $0x5150
    2dd6:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2ddc:	e8 e3 0a 00 00       	call   38c4 <printf>
    2de1:	e8 ac 09 00 00       	call   3792 <exit>
    2de6:	83 ec 08             	sub    $0x8,%esp
    2de9:	68 25 4a 00 00       	push   $0x4a25
    2dee:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2df4:	e8 cb 0a 00 00       	call   38c4 <printf>
    2df9:	e8 94 09 00 00       	call   3792 <exit>
    2dfe:	50                   	push   %eax
    2dff:	56                   	push   %esi
    2e00:	68 90 51 00 00       	push   $0x5190
    2e05:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2e0b:	e8 b4 0a 00 00       	call   38c4 <printf>
    2e10:	e8 7d 09 00 00       	call   3792 <exit>
    2e15:	57                   	push   %edi
    2e16:	56                   	push   %esi
    2e17:	68 c8 51 00 00       	push   $0x51c8
    2e1c:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2e22:	e8 9d 0a 00 00       	call   38c4 <printf>
    2e27:	e8 66 09 00 00       	call   3792 <exit>
    2e2c:	83 ec 08             	sub    $0x8,%esp
    2e2f:	68 f0 51 00 00       	push   $0x51f0
    2e34:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2e3a:	e8 85 0a 00 00       	call   38c4 <printf>
    2e3f:	e8 4e 09 00 00       	call   3792 <exit>
    2e44:	50                   	push   %eax
    2e45:	56                   	push   %esi
    2e46:	68 20 52 00 00       	push   $0x5220
    2e4b:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2e51:	e8 6e 0a 00 00       	call   38c4 <printf>
    2e56:	e8 37 09 00 00       	call   3792 <exit>
    2e5b:	83 ec 08             	sub    $0x8,%esp
    2e5e:	68 1d 4b 00 00       	push   $0x4b1d
    2e63:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2e69:	e8 56 0a 00 00       	call   38c4 <printf>
    2e6e:	e8 1f 09 00 00       	call   3792 <exit>
    2e73:	0f be 06             	movsbl (%esi),%eax
    2e76:	50                   	push   %eax
    2e77:	56                   	push   %esi
    2e78:	68 40 4a 00 00       	push   $0x4a40
    2e7d:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2e83:	e8 3c 0a 00 00       	call   38c4 <printf>
    2e88:	89 3c 24             	mov    %edi,(%esp)
    2e8b:	e8 32 09 00 00       	call   37c2 <kill>
    2e90:	e8 fd 08 00 00       	call   3792 <exit>
    2e95:	83 ec 08             	sub    $0x8,%esp
    2e98:	68 15 3f 00 00       	push   $0x3f15
    2e9d:	6a 01                	push   $0x1
    2e9f:	e8 20 0a 00 00       	call   38c4 <printf>
    2ea4:	e8 e9 08 00 00       	call   3792 <exit>
    2ea9:	83 ec 0c             	sub    $0xc,%esp
    2eac:	6a 00                	push   $0x0
    2eae:	e8 67 09 00 00       	call   381a <sbrk>
    2eb3:	ba 00 00 40 06       	mov    $0x6400000,%edx
    2eb8:	29 c2                	sub    %eax,%edx
    2eba:	89 14 24             	mov    %edx,(%esp)
    2ebd:	e8 58 09 00 00       	call   381a <sbrk>
    2ec2:	83 c4 0c             	add    $0xc,%esp
    2ec5:	6a 01                	push   $0x1
    2ec7:	68 35 45 00 00       	push   $0x4535
    2ecc:	ff 75 e4             	pushl  -0x1c(%ebp)
    2ecf:	e8 de 08 00 00       	call   37b2 <write>
    2ed4:	83 c4 10             	add    $0x10,%esp
    2ed7:	83 ec 0c             	sub    $0xc,%esp
    2eda:	68 e8 03 00 00       	push   $0x3e8
    2edf:	e8 3e 09 00 00       	call   3822 <sleep>
    2ee4:	83 c4 10             	add    $0x10,%esp
    2ee7:	eb ee                	jmp    2ed7 <sbrktest+0x340>
    2ee9:	83 c6 04             	add    $0x4,%esi
    2eec:	8d 45 e0             	lea    -0x20(%ebp),%eax
    2eef:	39 c6                	cmp    %eax,%esi
    2ef1:	74 26                	je     2f19 <sbrktest+0x382>
    2ef3:	e8 92 08 00 00       	call   378a <fork>
    2ef8:	89 06                	mov    %eax,(%esi)
    2efa:	85 c0                	test   %eax,%eax
    2efc:	74 ab                	je     2ea9 <sbrktest+0x312>
    2efe:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f01:	74 e6                	je     2ee9 <sbrktest+0x352>
    2f03:	83 ec 04             	sub    $0x4,%esp
    2f06:	6a 01                	push   $0x1
    2f08:	8d 45 b7             	lea    -0x49(%ebp),%eax
    2f0b:	50                   	push   %eax
    2f0c:	ff 75 e0             	pushl  -0x20(%ebp)
    2f0f:	e8 96 08 00 00       	call   37aa <read>
    2f14:	83 c4 10             	add    $0x10,%esp
    2f17:	eb d0                	jmp    2ee9 <sbrktest+0x352>
    2f19:	83 ec 0c             	sub    $0xc,%esp
    2f1c:	68 00 10 00 00       	push   $0x1000
    2f21:	e8 f4 08 00 00       	call   381a <sbrk>
    2f26:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    2f29:	83 c4 10             	add    $0x10,%esp
    2f2c:	eb 07                	jmp    2f35 <sbrktest+0x39e>
    2f2e:	83 c7 04             	add    $0x4,%edi
    2f31:	39 fe                	cmp    %edi,%esi
    2f33:	74 1a                	je     2f4f <sbrktest+0x3b8>
    2f35:	8b 07                	mov    (%edi),%eax
    2f37:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f3a:	74 f2                	je     2f2e <sbrktest+0x397>
    2f3c:	83 ec 0c             	sub    $0xc,%esp
    2f3f:	50                   	push   %eax
    2f40:	e8 7d 08 00 00       	call   37c2 <kill>
    2f45:	e8 50 08 00 00       	call   379a <wait>
    2f4a:	83 c4 10             	add    $0x10,%esp
    2f4d:	eb df                	jmp    2f2e <sbrktest+0x397>
    2f4f:	83 7d a4 ff          	cmpl   $0xffffffff,-0x5c(%ebp)
    2f53:	74 2f                	je     2f84 <sbrktest+0x3ed>
    2f55:	83 ec 0c             	sub    $0xc,%esp
    2f58:	6a 00                	push   $0x0
    2f5a:	e8 bb 08 00 00       	call   381a <sbrk>
    2f5f:	83 c4 10             	add    $0x10,%esp
    2f62:	39 d8                	cmp    %ebx,%eax
    2f64:	77 36                	ja     2f9c <sbrktest+0x405>
    2f66:	83 ec 08             	sub    $0x8,%esp
    2f69:	68 74 4a 00 00       	push   $0x4a74
    2f6e:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2f74:	e8 4b 09 00 00       	call   38c4 <printf>
    2f79:	83 c4 10             	add    $0x10,%esp
    2f7c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2f7f:	5b                   	pop    %ebx
    2f80:	5e                   	pop    %esi
    2f81:	5f                   	pop    %edi
    2f82:	5d                   	pop    %ebp
    2f83:	c3                   	ret    
    2f84:	83 ec 08             	sub    $0x8,%esp
    2f87:	68 59 4a 00 00       	push   $0x4a59
    2f8c:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2f92:	e8 2d 09 00 00       	call   38c4 <printf>
    2f97:	e8 f6 07 00 00       	call   3792 <exit>
    2f9c:	83 ec 0c             	sub    $0xc,%esp
    2f9f:	6a 00                	push   $0x0
    2fa1:	e8 74 08 00 00       	call   381a <sbrk>
    2fa6:	29 c3                	sub    %eax,%ebx
    2fa8:	89 1c 24             	mov    %ebx,(%esp)
    2fab:	e8 6a 08 00 00       	call   381a <sbrk>
    2fb0:	83 c4 10             	add    $0x10,%esp
    2fb3:	eb b1                	jmp    2f66 <sbrktest+0x3cf>

00002fb5 <validateint>:
    2fb5:	55                   	push   %ebp
    2fb6:	89 e5                	mov    %esp,%ebp
    2fb8:	5d                   	pop    %ebp
    2fb9:	c3                   	ret    

00002fba <validatetest>:
    2fba:	55                   	push   %ebp
    2fbb:	89 e5                	mov    %esp,%ebp
    2fbd:	56                   	push   %esi
    2fbe:	53                   	push   %ebx
    2fbf:	83 ec 08             	sub    $0x8,%esp
    2fc2:	68 82 4a 00 00       	push   $0x4a82
    2fc7:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    2fcd:	e8 f2 08 00 00       	call   38c4 <printf>
    2fd2:	83 c4 10             	add    $0x10,%esp
    2fd5:	bb 00 00 00 00       	mov    $0x0,%ebx
    2fda:	e8 ab 07 00 00       	call   378a <fork>
    2fdf:	89 c6                	mov    %eax,%esi
    2fe1:	85 c0                	test   %eax,%eax
    2fe3:	74 64                	je     3049 <validatetest+0x8f>
    2fe5:	83 ec 0c             	sub    $0xc,%esp
    2fe8:	6a 00                	push   $0x0
    2fea:	e8 33 08 00 00       	call   3822 <sleep>
    2fef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ff6:	e8 27 08 00 00       	call   3822 <sleep>
    2ffb:	89 34 24             	mov    %esi,(%esp)
    2ffe:	e8 bf 07 00 00       	call   37c2 <kill>
    3003:	e8 92 07 00 00       	call   379a <wait>
    3008:	83 c4 08             	add    $0x8,%esp
    300b:	53                   	push   %ebx
    300c:	68 91 4a 00 00       	push   $0x4a91
    3011:	e8 dc 07 00 00       	call   37f2 <link>
    3016:	83 c4 10             	add    $0x10,%esp
    3019:	83 f8 ff             	cmp    $0xffffffff,%eax
    301c:	75 30                	jne    304e <validatetest+0x94>
    301e:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3024:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    302a:	75 ae                	jne    2fda <validatetest+0x20>
    302c:	83 ec 08             	sub    $0x8,%esp
    302f:	68 b5 4a 00 00       	push   $0x4ab5
    3034:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    303a:	e8 85 08 00 00       	call   38c4 <printf>
    303f:	83 c4 10             	add    $0x10,%esp
    3042:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3045:	5b                   	pop    %ebx
    3046:	5e                   	pop    %esi
    3047:	5d                   	pop    %ebp
    3048:	c3                   	ret    
    3049:	e8 44 07 00 00       	call   3792 <exit>
    304e:	83 ec 08             	sub    $0x8,%esp
    3051:	68 9c 4a 00 00       	push   $0x4a9c
    3056:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    305c:	e8 63 08 00 00       	call   38c4 <printf>
    3061:	e8 2c 07 00 00       	call   3792 <exit>

00003066 <bsstest>:
    3066:	55                   	push   %ebp
    3067:	89 e5                	mov    %esp,%ebp
    3069:	83 ec 10             	sub    $0x10,%esp
    306c:	68 c2 4a 00 00       	push   $0x4ac2
    3071:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    3077:	e8 48 08 00 00       	call   38c4 <printf>
    307c:	83 c4 10             	add    $0x10,%esp
    307f:	80 3d e0 5c 00 00 00 	cmpb   $0x0,0x5ce0
    3086:	75 30                	jne    30b8 <bsstest+0x52>
    3088:	b8 01 00 00 00       	mov    $0x1,%eax
    308d:	80 b8 e0 5c 00 00 00 	cmpb   $0x0,0x5ce0(%eax)
    3094:	75 22                	jne    30b8 <bsstest+0x52>
    3096:	83 c0 01             	add    $0x1,%eax
    3099:	3d 10 27 00 00       	cmp    $0x2710,%eax
    309e:	75 ed                	jne    308d <bsstest+0x27>
    30a0:	83 ec 08             	sub    $0x8,%esp
    30a3:	68 dd 4a 00 00       	push   $0x4add
    30a8:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    30ae:	e8 11 08 00 00       	call   38c4 <printf>
    30b3:	83 c4 10             	add    $0x10,%esp
    30b6:	c9                   	leave  
    30b7:	c3                   	ret    
    30b8:	83 ec 08             	sub    $0x8,%esp
    30bb:	68 cc 4a 00 00       	push   $0x4acc
    30c0:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    30c6:	e8 f9 07 00 00       	call   38c4 <printf>
    30cb:	e8 c2 06 00 00       	call   3792 <exit>

000030d0 <bigargtest>:
    30d0:	55                   	push   %ebp
    30d1:	89 e5                	mov    %esp,%ebp
    30d3:	83 ec 14             	sub    $0x14,%esp
    30d6:	68 ea 4a 00 00       	push   $0x4aea
    30db:	e8 02 07 00 00       	call   37e2 <unlink>
    30e0:	e8 a5 06 00 00       	call   378a <fork>
    30e5:	83 c4 10             	add    $0x10,%esp
    30e8:	85 c0                	test   %eax,%eax
    30ea:	74 41                	je     312d <bigargtest+0x5d>
    30ec:	85 c0                	test   %eax,%eax
    30ee:	0f 88 b1 00 00 00    	js     31a5 <bigargtest+0xd5>
    30f4:	e8 a1 06 00 00       	call   379a <wait>
    30f9:	83 ec 08             	sub    $0x8,%esp
    30fc:	6a 00                	push   $0x0
    30fe:	68 ea 4a 00 00       	push   $0x4aea
    3103:	e8 ca 06 00 00       	call   37d2 <open>
    3108:	83 c4 10             	add    $0x10,%esp
    310b:	85 c0                	test   %eax,%eax
    310d:	0f 88 aa 00 00 00    	js     31bd <bigargtest+0xed>
    3113:	83 ec 0c             	sub    $0xc,%esp
    3116:	50                   	push   %eax
    3117:	e8 9e 06 00 00       	call   37ba <close>
    311c:	c7 04 24 ea 4a 00 00 	movl   $0x4aea,(%esp)
    3123:	e8 ba 06 00 00       	call   37e2 <unlink>
    3128:	83 c4 10             	add    $0x10,%esp
    312b:	c9                   	leave  
    312c:	c3                   	ret    
    312d:	b8 40 5c 00 00       	mov    $0x5c40,%eax
    3132:	ba bc 5c 00 00       	mov    $0x5cbc,%edx
    3137:	c7 00 44 52 00 00    	movl   $0x5244,(%eax)
    313d:	83 c0 04             	add    $0x4,%eax
    3140:	39 d0                	cmp    %edx,%eax
    3142:	75 f3                	jne    3137 <bigargtest+0x67>
    3144:	c7 05 bc 5c 00 00 00 	movl   $0x0,0x5cbc
    314b:	00 00 00 
    314e:	83 ec 08             	sub    $0x8,%esp
    3151:	68 f4 4a 00 00       	push   $0x4af4
    3156:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    315c:	e8 63 07 00 00       	call   38c4 <printf>
    3161:	83 c4 08             	add    $0x8,%esp
    3164:	68 40 5c 00 00       	push   $0x5c40
    3169:	68 c1 3c 00 00       	push   $0x3cc1
    316e:	e8 57 06 00 00       	call   37ca <exec>
    3173:	83 c4 08             	add    $0x8,%esp
    3176:	68 01 4b 00 00       	push   $0x4b01
    317b:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    3181:	e8 3e 07 00 00       	call   38c4 <printf>
    3186:	83 c4 08             	add    $0x8,%esp
    3189:	68 00 02 00 00       	push   $0x200
    318e:	68 ea 4a 00 00       	push   $0x4aea
    3193:	e8 3a 06 00 00       	call   37d2 <open>
    3198:	89 04 24             	mov    %eax,(%esp)
    319b:	e8 1a 06 00 00       	call   37ba <close>
    31a0:	e8 ed 05 00 00       	call   3792 <exit>
    31a5:	83 ec 08             	sub    $0x8,%esp
    31a8:	68 11 4b 00 00       	push   $0x4b11
    31ad:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    31b3:	e8 0c 07 00 00       	call   38c4 <printf>
    31b8:	e8 d5 05 00 00       	call   3792 <exit>
    31bd:	83 ec 08             	sub    $0x8,%esp
    31c0:	68 2a 4b 00 00       	push   $0x4b2a
    31c5:	ff 35 0c 5c 00 00    	pushl  0x5c0c
    31cb:	e8 f4 06 00 00       	call   38c4 <printf>
    31d0:	e8 bd 05 00 00       	call   3792 <exit>

000031d5 <fsfull>:
    31d5:	55                   	push   %ebp
    31d6:	89 e5                	mov    %esp,%ebp
    31d8:	57                   	push   %edi
    31d9:	56                   	push   %esi
    31da:	53                   	push   %ebx
    31db:	83 ec 54             	sub    $0x54,%esp
    31de:	68 3f 4b 00 00       	push   $0x4b3f
    31e3:	6a 01                	push   $0x1
    31e5:	e8 da 06 00 00       	call   38c4 <printf>
    31ea:	83 c4 10             	add    $0x10,%esp
    31ed:	bb 00 00 00 00       	mov    $0x0,%ebx
    31f2:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    31f6:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    31fb:	f7 eb                	imul   %ebx
    31fd:	c1 fa 06             	sar    $0x6,%edx
    3200:	89 de                	mov    %ebx,%esi
    3202:	c1 fe 1f             	sar    $0x1f,%esi
    3205:	29 f2                	sub    %esi,%edx
    3207:	8d 42 30             	lea    0x30(%edx),%eax
    320a:	88 45 a9             	mov    %al,-0x57(%ebp)
    320d:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    3213:	89 d9                	mov    %ebx,%ecx
    3215:	29 d1                	sub    %edx,%ecx
    3217:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    321c:	f7 e9                	imul   %ecx
    321e:	c1 fa 05             	sar    $0x5,%edx
    3221:	c1 f9 1f             	sar    $0x1f,%ecx
    3224:	29 ca                	sub    %ecx,%edx
    3226:	83 c2 30             	add    $0x30,%edx
    3229:	88 55 aa             	mov    %dl,-0x56(%ebp)
    322c:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3231:	f7 eb                	imul   %ebx
    3233:	c1 fa 05             	sar    $0x5,%edx
    3236:	29 f2                	sub    %esi,%edx
    3238:	6b d2 64             	imul   $0x64,%edx,%edx
    323b:	89 df                	mov    %ebx,%edi
    323d:	29 d7                	sub    %edx,%edi
    323f:	b9 67 66 66 66       	mov    $0x66666667,%ecx
    3244:	89 f8                	mov    %edi,%eax
    3246:	f7 e9                	imul   %ecx
    3248:	c1 fa 02             	sar    $0x2,%edx
    324b:	c1 ff 1f             	sar    $0x1f,%edi
    324e:	29 fa                	sub    %edi,%edx
    3250:	83 c2 30             	add    $0x30,%edx
    3253:	88 55 ab             	mov    %dl,-0x55(%ebp)
    3256:	89 d8                	mov    %ebx,%eax
    3258:	f7 e9                	imul   %ecx
    325a:	c1 fa 02             	sar    $0x2,%edx
    325d:	29 f2                	sub    %esi,%edx
    325f:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3262:	01 c0                	add    %eax,%eax
    3264:	89 df                	mov    %ebx,%edi
    3266:	29 c7                	sub    %eax,%edi
    3268:	89 f8                	mov    %edi,%eax
    326a:	83 c0 30             	add    $0x30,%eax
    326d:	88 45 ac             	mov    %al,-0x54(%ebp)
    3270:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    3274:	83 ec 04             	sub    $0x4,%esp
    3277:	8d 75 a8             	lea    -0x58(%ebp),%esi
    327a:	56                   	push   %esi
    327b:	68 4c 4b 00 00       	push   $0x4b4c
    3280:	6a 01                	push   $0x1
    3282:	e8 3d 06 00 00       	call   38c4 <printf>
    3287:	83 c4 08             	add    $0x8,%esp
    328a:	68 02 02 00 00       	push   $0x202
    328f:	56                   	push   %esi
    3290:	e8 3d 05 00 00       	call   37d2 <open>
    3295:	89 c6                	mov    %eax,%esi
    3297:	83 c4 10             	add    $0x10,%esp
    329a:	85 c0                	test   %eax,%eax
    329c:	0f 89 d5 00 00 00    	jns    3377 <fsfull+0x1a2>
    32a2:	83 ec 04             	sub    $0x4,%esp
    32a5:	8d 45 a8             	lea    -0x58(%ebp),%eax
    32a8:	50                   	push   %eax
    32a9:	68 58 4b 00 00       	push   $0x4b58
    32ae:	6a 01                	push   $0x1
    32b0:	e8 0f 06 00 00       	call   38c4 <printf>
    32b5:	83 c4 10             	add    $0x10,%esp
    32b8:	85 db                	test   %ebx,%ebx
    32ba:	0f 88 9d 00 00 00    	js     335d <fsfull+0x188>
    32c0:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    32c4:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    32c9:	f7 eb                	imul   %ebx
    32cb:	c1 fa 06             	sar    $0x6,%edx
    32ce:	89 de                	mov    %ebx,%esi
    32d0:	c1 fe 1f             	sar    $0x1f,%esi
    32d3:	29 f2                	sub    %esi,%edx
    32d5:	8d 42 30             	lea    0x30(%edx),%eax
    32d8:	88 45 a9             	mov    %al,-0x57(%ebp)
    32db:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    32e1:	89 d9                	mov    %ebx,%ecx
    32e3:	29 d1                	sub    %edx,%ecx
    32e5:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    32ea:	f7 e9                	imul   %ecx
    32ec:	c1 fa 05             	sar    $0x5,%edx
    32ef:	c1 f9 1f             	sar    $0x1f,%ecx
    32f2:	29 ca                	sub    %ecx,%edx
    32f4:	83 c2 30             	add    $0x30,%edx
    32f7:	88 55 aa             	mov    %dl,-0x56(%ebp)
    32fa:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    32ff:	f7 eb                	imul   %ebx
    3301:	c1 fa 05             	sar    $0x5,%edx
    3304:	29 f2                	sub    %esi,%edx
    3306:	6b d2 64             	imul   $0x64,%edx,%edx
    3309:	89 df                	mov    %ebx,%edi
    330b:	29 d7                	sub    %edx,%edi
    330d:	b9 67 66 66 66       	mov    $0x66666667,%ecx
    3312:	89 f8                	mov    %edi,%eax
    3314:	f7 e9                	imul   %ecx
    3316:	c1 fa 02             	sar    $0x2,%edx
    3319:	c1 ff 1f             	sar    $0x1f,%edi
    331c:	29 fa                	sub    %edi,%edx
    331e:	83 c2 30             	add    $0x30,%edx
    3321:	88 55 ab             	mov    %dl,-0x55(%ebp)
    3324:	89 d8                	mov    %ebx,%eax
    3326:	f7 e9                	imul   %ecx
    3328:	c1 fa 02             	sar    $0x2,%edx
    332b:	29 f2                	sub    %esi,%edx
    332d:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3330:	01 c0                	add    %eax,%eax
    3332:	89 de                	mov    %ebx,%esi
    3334:	29 c6                	sub    %eax,%esi
    3336:	89 f0                	mov    %esi,%eax
    3338:	83 c0 30             	add    $0x30,%eax
    333b:	88 45 ac             	mov    %al,-0x54(%ebp)
    333e:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    3342:	83 ec 0c             	sub    $0xc,%esp
    3345:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3348:	50                   	push   %eax
    3349:	e8 94 04 00 00       	call   37e2 <unlink>
    334e:	83 eb 01             	sub    $0x1,%ebx
    3351:	83 c4 10             	add    $0x10,%esp
    3354:	83 fb ff             	cmp    $0xffffffff,%ebx
    3357:	0f 85 63 ff ff ff    	jne    32c0 <fsfull+0xeb>
    335d:	83 ec 08             	sub    $0x8,%esp
    3360:	68 78 4b 00 00       	push   $0x4b78
    3365:	6a 01                	push   $0x1
    3367:	e8 58 05 00 00       	call   38c4 <printf>
    336c:	83 c4 10             	add    $0x10,%esp
    336f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3372:	5b                   	pop    %ebx
    3373:	5e                   	pop    %esi
    3374:	5f                   	pop    %edi
    3375:	5d                   	pop    %ebp
    3376:	c3                   	ret    
    3377:	bf 00 00 00 00       	mov    $0x0,%edi
    337c:	eb 02                	jmp    3380 <fsfull+0x1ab>
    337e:	01 c7                	add    %eax,%edi
    3380:	83 ec 04             	sub    $0x4,%esp
    3383:	68 00 02 00 00       	push   $0x200
    3388:	68 00 84 00 00       	push   $0x8400
    338d:	56                   	push   %esi
    338e:	e8 1f 04 00 00       	call   37b2 <write>
    3393:	83 c4 10             	add    $0x10,%esp
    3396:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    339b:	7f e1                	jg     337e <fsfull+0x1a9>
    339d:	83 ec 04             	sub    $0x4,%esp
    33a0:	57                   	push   %edi
    33a1:	68 68 4b 00 00       	push   $0x4b68
    33a6:	6a 01                	push   $0x1
    33a8:	e8 17 05 00 00       	call   38c4 <printf>
    33ad:	89 34 24             	mov    %esi,(%esp)
    33b0:	e8 05 04 00 00       	call   37ba <close>
    33b5:	83 c4 10             	add    $0x10,%esp
    33b8:	85 ff                	test   %edi,%edi
    33ba:	0f 84 f8 fe ff ff    	je     32b8 <fsfull+0xe3>
    33c0:	83 c3 01             	add    $0x1,%ebx
    33c3:	e9 2a fe ff ff       	jmp    31f2 <fsfull+0x1d>

000033c8 <uio>:
    33c8:	55                   	push   %ebp
    33c9:	89 e5                	mov    %esp,%ebp
    33cb:	83 ec 10             	sub    $0x10,%esp
    33ce:	68 8e 4b 00 00       	push   $0x4b8e
    33d3:	6a 01                	push   $0x1
    33d5:	e8 ea 04 00 00       	call   38c4 <printf>
    33da:	e8 ab 03 00 00       	call   378a <fork>
    33df:	83 c4 10             	add    $0x10,%esp
    33e2:	85 c0                	test   %eax,%eax
    33e4:	74 1d                	je     3403 <uio+0x3b>
    33e6:	85 c0                	test   %eax,%eax
    33e8:	78 3e                	js     3428 <uio+0x60>
    33ea:	e8 ab 03 00 00       	call   379a <wait>
    33ef:	83 ec 08             	sub    $0x8,%esp
    33f2:	68 98 4b 00 00       	push   $0x4b98
    33f7:	6a 01                	push   $0x1
    33f9:	e8 c6 04 00 00       	call   38c4 <printf>
    33fe:	83 c4 10             	add    $0x10,%esp
    3401:	c9                   	leave  
    3402:	c3                   	ret    
    3403:	b8 09 00 00 00       	mov    $0x9,%eax
    3408:	ba 70 00 00 00       	mov    $0x70,%edx
    340d:	ee                   	out    %al,(%dx)
    340e:	ba 71 00 00 00       	mov    $0x71,%edx
    3413:	ec                   	in     (%dx),%al
    3414:	83 ec 08             	sub    $0x8,%esp
    3417:	68 24 53 00 00       	push   $0x5324
    341c:	6a 01                	push   $0x1
    341e:	e8 a1 04 00 00       	call   38c4 <printf>
    3423:	e8 6a 03 00 00       	call   3792 <exit>
    3428:	83 ec 08             	sub    $0x8,%esp
    342b:	68 1d 4b 00 00       	push   $0x4b1d
    3430:	6a 01                	push   $0x1
    3432:	e8 8d 04 00 00       	call   38c4 <printf>
    3437:	e8 56 03 00 00       	call   3792 <exit>

0000343c <argptest>:
    343c:	55                   	push   %ebp
    343d:	89 e5                	mov    %esp,%ebp
    343f:	53                   	push   %ebx
    3440:	83 ec 0c             	sub    $0xc,%esp
    3443:	6a 00                	push   $0x0
    3445:	68 a7 4b 00 00       	push   $0x4ba7
    344a:	e8 83 03 00 00       	call   37d2 <open>
    344f:	83 c4 10             	add    $0x10,%esp
    3452:	85 c0                	test   %eax,%eax
    3454:	78 3a                	js     3490 <argptest+0x54>
    3456:	89 c3                	mov    %eax,%ebx
    3458:	83 ec 0c             	sub    $0xc,%esp
    345b:	6a 00                	push   $0x0
    345d:	e8 b8 03 00 00       	call   381a <sbrk>
    3462:	83 c4 0c             	add    $0xc,%esp
    3465:	6a ff                	push   $0xffffffff
    3467:	83 e8 01             	sub    $0x1,%eax
    346a:	50                   	push   %eax
    346b:	53                   	push   %ebx
    346c:	e8 39 03 00 00       	call   37aa <read>
    3471:	89 1c 24             	mov    %ebx,(%esp)
    3474:	e8 41 03 00 00       	call   37ba <close>
    3479:	83 c4 08             	add    $0x8,%esp
    347c:	68 b9 4b 00 00       	push   $0x4bb9
    3481:	6a 01                	push   $0x1
    3483:	e8 3c 04 00 00       	call   38c4 <printf>
    3488:	83 c4 10             	add    $0x10,%esp
    348b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    348e:	c9                   	leave  
    348f:	c3                   	ret    
    3490:	83 ec 08             	sub    $0x8,%esp
    3493:	68 ac 4b 00 00       	push   $0x4bac
    3498:	6a 02                	push   $0x2
    349a:	e8 25 04 00 00       	call   38c4 <printf>
    349f:	e8 ee 02 00 00       	call   3792 <exit>

000034a4 <rand>:
    34a4:	55                   	push   %ebp
    34a5:	89 e5                	mov    %esp,%ebp
    34a7:	69 05 08 5c 00 00 0d 	imul   $0x19660d,0x5c08,%eax
    34ae:	66 19 00 
    34b1:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    34b6:	a3 08 5c 00 00       	mov    %eax,0x5c08
    34bb:	5d                   	pop    %ebp
    34bc:	c3                   	ret    

000034bd <main>:
    34bd:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    34c1:	83 e4 f0             	and    $0xfffffff0,%esp
    34c4:	ff 71 fc             	pushl  -0x4(%ecx)
    34c7:	55                   	push   %ebp
    34c8:	89 e5                	mov    %esp,%ebp
    34ca:	51                   	push   %ecx
    34cb:	83 ec 0c             	sub    $0xc,%esp
    34ce:	68 ca 4b 00 00       	push   $0x4bca
    34d3:	6a 01                	push   $0x1
    34d5:	e8 ea 03 00 00       	call   38c4 <printf>
    34da:	83 c4 08             	add    $0x8,%esp
    34dd:	6a 00                	push   $0x0
    34df:	68 de 4b 00 00       	push   $0x4bde
    34e4:	e8 e9 02 00 00       	call   37d2 <open>
    34e9:	83 c4 10             	add    $0x10,%esp
    34ec:	85 c0                	test   %eax,%eax
    34ee:	78 14                	js     3504 <main+0x47>
    34f0:	83 ec 08             	sub    $0x8,%esp
    34f3:	68 48 53 00 00       	push   $0x5348
    34f8:	6a 01                	push   $0x1
    34fa:	e8 c5 03 00 00       	call   38c4 <printf>
    34ff:	e8 8e 02 00 00       	call   3792 <exit>
    3504:	83 ec 08             	sub    $0x8,%esp
    3507:	68 00 02 00 00       	push   $0x200
    350c:	68 de 4b 00 00       	push   $0x4bde
    3511:	e8 bc 02 00 00       	call   37d2 <open>
    3516:	89 04 24             	mov    %eax,(%esp)
    3519:	e8 9c 02 00 00       	call   37ba <close>
    351e:	e8 19 ff ff ff       	call   343c <argptest>
    3523:	e8 f3 da ff ff       	call   101b <createdelete>
    3528:	e8 a2 e3 ff ff       	call   18cf <linkunlink>
    352d:	e8 a2 e0 ff ff       	call   15d4 <concreate>
    3532:	e8 00 d9 ff ff       	call   e37 <fourfiles>
    3537:	e8 68 d7 ff ff       	call   ca4 <sharedfd>
    353c:	e8 8f fb ff ff       	call   30d0 <bigargtest>
    3541:	e8 ff ec ff ff       	call   2245 <bigwrite>
    3546:	e8 85 fb ff ff       	call   30d0 <bigargtest>
    354b:	e8 16 fb ff ff       	call   3066 <bsstest>
    3550:	e8 42 f6 ff ff       	call   2b97 <sbrktest>
    3555:	e8 60 fa ff ff       	call   2fba <validatetest>
    355a:	e8 51 cd ff ff       	call   2b0 <opentest>
    355f:	e8 df cd ff ff       	call   343 <writetest>
    3564:	e8 b8 cf ff ff       	call   521 <writetest1>
    3569:	e8 6d d1 ff ff       	call   6db <createtest>
    356e:	e8 52 cc ff ff       	call   1c5 <openiputtest>
    3573:	e8 65 cb ff ff       	call   dd <exitiputtest>
    3578:	e8 83 ca ff ff       	call   0 <iputtest>
    357d:	e8 6b d6 ff ff       	call   bed <mem>
    3582:	e8 1e d3 ff ff       	call   8a5 <pipe1>
    3587:	e8 bb d4 ff ff       	call   a47 <preempt>
    358c:	e8 ef d5 ff ff       	call   b80 <exitwait>
    3591:	e8 91 f0 ff ff       	call   2627 <rmdot>
    3596:	e8 4f ef ff ff       	call   24ea <fourteen>
    359b:	e8 80 ed ff ff       	call   2320 <bigfile>
    35a0:	e8 72 e5 ff ff       	call   1b17 <subdir>
    35a5:	e8 04 de ff ff       	call   13ae <linktest>
    35aa:	e8 66 dc ff ff       	call   1215 <unlinkread>
    35af:	e8 f8 f1 ff ff       	call   27ac <dirfile>
    35b4:	e8 0d f4 ff ff       	call   29c6 <iref>
    35b9:	e8 2a f5 ff ff       	call   2ae8 <forktest>
    35be:	e8 fa e3 ff ff       	call   19bd <bigdir>
    35c3:	e8 00 fe ff ff       	call   33c8 <uio>
    35c8:	e8 8f d2 ff ff       	call   85c <exectest>
    35cd:	e8 c0 01 00 00       	call   3792 <exit>

000035d2 <strcpy>:
    35d2:	55                   	push   %ebp
    35d3:	89 e5                	mov    %esp,%ebp
    35d5:	53                   	push   %ebx
    35d6:	8b 45 08             	mov    0x8(%ebp),%eax
    35d9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    35dc:	89 c2                	mov    %eax,%edx
    35de:	83 c1 01             	add    $0x1,%ecx
    35e1:	83 c2 01             	add    $0x1,%edx
    35e4:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    35e8:	88 5a ff             	mov    %bl,-0x1(%edx)
    35eb:	84 db                	test   %bl,%bl
    35ed:	75 ef                	jne    35de <strcpy+0xc>
    35ef:	5b                   	pop    %ebx
    35f0:	5d                   	pop    %ebp
    35f1:	c3                   	ret    

000035f2 <strcmp>:
    35f2:	55                   	push   %ebp
    35f3:	89 e5                	mov    %esp,%ebp
    35f5:	8b 4d 08             	mov    0x8(%ebp),%ecx
    35f8:	8b 55 0c             	mov    0xc(%ebp),%edx
    35fb:	0f b6 01             	movzbl (%ecx),%eax
    35fe:	84 c0                	test   %al,%al
    3600:	74 15                	je     3617 <strcmp+0x25>
    3602:	3a 02                	cmp    (%edx),%al
    3604:	75 11                	jne    3617 <strcmp+0x25>
    3606:	83 c1 01             	add    $0x1,%ecx
    3609:	83 c2 01             	add    $0x1,%edx
    360c:	0f b6 01             	movzbl (%ecx),%eax
    360f:	84 c0                	test   %al,%al
    3611:	74 04                	je     3617 <strcmp+0x25>
    3613:	3a 02                	cmp    (%edx),%al
    3615:	74 ef                	je     3606 <strcmp+0x14>
    3617:	0f b6 c0             	movzbl %al,%eax
    361a:	0f b6 12             	movzbl (%edx),%edx
    361d:	29 d0                	sub    %edx,%eax
    361f:	5d                   	pop    %ebp
    3620:	c3                   	ret    

00003621 <strlen>:
    3621:	55                   	push   %ebp
    3622:	89 e5                	mov    %esp,%ebp
    3624:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3627:	80 39 00             	cmpb   $0x0,(%ecx)
    362a:	74 12                	je     363e <strlen+0x1d>
    362c:	ba 00 00 00 00       	mov    $0x0,%edx
    3631:	83 c2 01             	add    $0x1,%edx
    3634:	89 d0                	mov    %edx,%eax
    3636:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    363a:	75 f5                	jne    3631 <strlen+0x10>
    363c:	5d                   	pop    %ebp
    363d:	c3                   	ret    
    363e:	b8 00 00 00 00       	mov    $0x0,%eax
    3643:	eb f7                	jmp    363c <strlen+0x1b>

00003645 <memset>:
    3645:	55                   	push   %ebp
    3646:	89 e5                	mov    %esp,%ebp
    3648:	57                   	push   %edi
    3649:	8b 55 08             	mov    0x8(%ebp),%edx
    364c:	89 d7                	mov    %edx,%edi
    364e:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3651:	8b 45 0c             	mov    0xc(%ebp),%eax
    3654:	fc                   	cld    
    3655:	f3 aa                	rep stos %al,%es:(%edi)
    3657:	89 d0                	mov    %edx,%eax
    3659:	5f                   	pop    %edi
    365a:	5d                   	pop    %ebp
    365b:	c3                   	ret    

0000365c <strchr>:
    365c:	55                   	push   %ebp
    365d:	89 e5                	mov    %esp,%ebp
    365f:	53                   	push   %ebx
    3660:	8b 45 08             	mov    0x8(%ebp),%eax
    3663:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    3666:	0f b6 10             	movzbl (%eax),%edx
    3669:	84 d2                	test   %dl,%dl
    366b:	74 1e                	je     368b <strchr+0x2f>
    366d:	89 d9                	mov    %ebx,%ecx
    366f:	38 d3                	cmp    %dl,%bl
    3671:	74 15                	je     3688 <strchr+0x2c>
    3673:	83 c0 01             	add    $0x1,%eax
    3676:	0f b6 10             	movzbl (%eax),%edx
    3679:	84 d2                	test   %dl,%dl
    367b:	74 06                	je     3683 <strchr+0x27>
    367d:	38 ca                	cmp    %cl,%dl
    367f:	75 f2                	jne    3673 <strchr+0x17>
    3681:	eb 05                	jmp    3688 <strchr+0x2c>
    3683:	b8 00 00 00 00       	mov    $0x0,%eax
    3688:	5b                   	pop    %ebx
    3689:	5d                   	pop    %ebp
    368a:	c3                   	ret    
    368b:	b8 00 00 00 00       	mov    $0x0,%eax
    3690:	eb f6                	jmp    3688 <strchr+0x2c>

00003692 <gets>:
    3692:	55                   	push   %ebp
    3693:	89 e5                	mov    %esp,%ebp
    3695:	57                   	push   %edi
    3696:	56                   	push   %esi
    3697:	53                   	push   %ebx
    3698:	83 ec 1c             	sub    $0x1c,%esp
    369b:	be 00 00 00 00       	mov    $0x0,%esi
    36a0:	8d 7d e7             	lea    -0x19(%ebp),%edi
    36a3:	8d 5e 01             	lea    0x1(%esi),%ebx
    36a6:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    36a9:	7d 2b                	jge    36d6 <gets+0x44>
    36ab:	83 ec 04             	sub    $0x4,%esp
    36ae:	6a 01                	push   $0x1
    36b0:	57                   	push   %edi
    36b1:	6a 00                	push   $0x0
    36b3:	e8 f2 00 00 00       	call   37aa <read>
    36b8:	83 c4 10             	add    $0x10,%esp
    36bb:	85 c0                	test   %eax,%eax
    36bd:	7e 17                	jle    36d6 <gets+0x44>
    36bf:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    36c3:	8b 55 08             	mov    0x8(%ebp),%edx
    36c6:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    36ca:	89 de                	mov    %ebx,%esi
    36cc:	3c 0a                	cmp    $0xa,%al
    36ce:	74 04                	je     36d4 <gets+0x42>
    36d0:	3c 0d                	cmp    $0xd,%al
    36d2:	75 cf                	jne    36a3 <gets+0x11>
    36d4:	89 de                	mov    %ebx,%esi
    36d6:	8b 45 08             	mov    0x8(%ebp),%eax
    36d9:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
    36dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    36e0:	5b                   	pop    %ebx
    36e1:	5e                   	pop    %esi
    36e2:	5f                   	pop    %edi
    36e3:	5d                   	pop    %ebp
    36e4:	c3                   	ret    

000036e5 <stat>:
    36e5:	55                   	push   %ebp
    36e6:	89 e5                	mov    %esp,%ebp
    36e8:	56                   	push   %esi
    36e9:	53                   	push   %ebx
    36ea:	83 ec 08             	sub    $0x8,%esp
    36ed:	6a 00                	push   $0x0
    36ef:	ff 75 08             	pushl  0x8(%ebp)
    36f2:	e8 db 00 00 00       	call   37d2 <open>
    36f7:	83 c4 10             	add    $0x10,%esp
    36fa:	85 c0                	test   %eax,%eax
    36fc:	78 24                	js     3722 <stat+0x3d>
    36fe:	89 c3                	mov    %eax,%ebx
    3700:	83 ec 08             	sub    $0x8,%esp
    3703:	ff 75 0c             	pushl  0xc(%ebp)
    3706:	50                   	push   %eax
    3707:	e8 de 00 00 00       	call   37ea <fstat>
    370c:	89 c6                	mov    %eax,%esi
    370e:	89 1c 24             	mov    %ebx,(%esp)
    3711:	e8 a4 00 00 00       	call   37ba <close>
    3716:	83 c4 10             	add    $0x10,%esp
    3719:	89 f0                	mov    %esi,%eax
    371b:	8d 65 f8             	lea    -0x8(%ebp),%esp
    371e:	5b                   	pop    %ebx
    371f:	5e                   	pop    %esi
    3720:	5d                   	pop    %ebp
    3721:	c3                   	ret    
    3722:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3727:	eb f0                	jmp    3719 <stat+0x34>

00003729 <atoi>:
    3729:	55                   	push   %ebp
    372a:	89 e5                	mov    %esp,%ebp
    372c:	53                   	push   %ebx
    372d:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3730:	0f b6 11             	movzbl (%ecx),%edx
    3733:	8d 42 d0             	lea    -0x30(%edx),%eax
    3736:	3c 09                	cmp    $0x9,%al
    3738:	77 20                	ja     375a <atoi+0x31>
    373a:	b8 00 00 00 00       	mov    $0x0,%eax
    373f:	83 c1 01             	add    $0x1,%ecx
    3742:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3745:	0f be d2             	movsbl %dl,%edx
    3748:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
    374c:	0f b6 11             	movzbl (%ecx),%edx
    374f:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3752:	80 fb 09             	cmp    $0x9,%bl
    3755:	76 e8                	jbe    373f <atoi+0x16>
    3757:	5b                   	pop    %ebx
    3758:	5d                   	pop    %ebp
    3759:	c3                   	ret    
    375a:	b8 00 00 00 00       	mov    $0x0,%eax
    375f:	eb f6                	jmp    3757 <atoi+0x2e>

00003761 <memmove>:
    3761:	55                   	push   %ebp
    3762:	89 e5                	mov    %esp,%ebp
    3764:	56                   	push   %esi
    3765:	53                   	push   %ebx
    3766:	8b 45 08             	mov    0x8(%ebp),%eax
    3769:	8b 75 0c             	mov    0xc(%ebp),%esi
    376c:	8b 5d 10             	mov    0x10(%ebp),%ebx
    376f:	85 db                	test   %ebx,%ebx
    3771:	7e 13                	jle    3786 <memmove+0x25>
    3773:	ba 00 00 00 00       	mov    $0x0,%edx
    3778:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    377c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    377f:	83 c2 01             	add    $0x1,%edx
    3782:	39 d3                	cmp    %edx,%ebx
    3784:	75 f2                	jne    3778 <memmove+0x17>
    3786:	5b                   	pop    %ebx
    3787:	5e                   	pop    %esi
    3788:	5d                   	pop    %ebp
    3789:	c3                   	ret    

0000378a <fork>:
    378a:	b8 01 00 00 00       	mov    $0x1,%eax
    378f:	cd 40                	int    $0x40
    3791:	c3                   	ret    

00003792 <exit>:
    3792:	b8 02 00 00 00       	mov    $0x2,%eax
    3797:	cd 40                	int    $0x40
    3799:	c3                   	ret    

0000379a <wait>:
    379a:	b8 03 00 00 00       	mov    $0x3,%eax
    379f:	cd 40                	int    $0x40
    37a1:	c3                   	ret    

000037a2 <pipe>:
    37a2:	b8 04 00 00 00       	mov    $0x4,%eax
    37a7:	cd 40                	int    $0x40
    37a9:	c3                   	ret    

000037aa <read>:
    37aa:	b8 05 00 00 00       	mov    $0x5,%eax
    37af:	cd 40                	int    $0x40
    37b1:	c3                   	ret    

000037b2 <write>:
    37b2:	b8 10 00 00 00       	mov    $0x10,%eax
    37b7:	cd 40                	int    $0x40
    37b9:	c3                   	ret    

000037ba <close>:
    37ba:	b8 15 00 00 00       	mov    $0x15,%eax
    37bf:	cd 40                	int    $0x40
    37c1:	c3                   	ret    

000037c2 <kill>:
    37c2:	b8 06 00 00 00       	mov    $0x6,%eax
    37c7:	cd 40                	int    $0x40
    37c9:	c3                   	ret    

000037ca <exec>:
    37ca:	b8 07 00 00 00       	mov    $0x7,%eax
    37cf:	cd 40                	int    $0x40
    37d1:	c3                   	ret    

000037d2 <open>:
    37d2:	b8 0f 00 00 00       	mov    $0xf,%eax
    37d7:	cd 40                	int    $0x40
    37d9:	c3                   	ret    

000037da <mknod>:
    37da:	b8 11 00 00 00       	mov    $0x11,%eax
    37df:	cd 40                	int    $0x40
    37e1:	c3                   	ret    

000037e2 <unlink>:
    37e2:	b8 12 00 00 00       	mov    $0x12,%eax
    37e7:	cd 40                	int    $0x40
    37e9:	c3                   	ret    

000037ea <fstat>:
    37ea:	b8 08 00 00 00       	mov    $0x8,%eax
    37ef:	cd 40                	int    $0x40
    37f1:	c3                   	ret    

000037f2 <link>:
    37f2:	b8 13 00 00 00       	mov    $0x13,%eax
    37f7:	cd 40                	int    $0x40
    37f9:	c3                   	ret    

000037fa <mkdir>:
    37fa:	b8 14 00 00 00       	mov    $0x14,%eax
    37ff:	cd 40                	int    $0x40
    3801:	c3                   	ret    

00003802 <chdir>:
    3802:	b8 09 00 00 00       	mov    $0x9,%eax
    3807:	cd 40                	int    $0x40
    3809:	c3                   	ret    

0000380a <dup>:
    380a:	b8 0a 00 00 00       	mov    $0xa,%eax
    380f:	cd 40                	int    $0x40
    3811:	c3                   	ret    

00003812 <getpid>:
    3812:	b8 0b 00 00 00       	mov    $0xb,%eax
    3817:	cd 40                	int    $0x40
    3819:	c3                   	ret    

0000381a <sbrk>:
    381a:	b8 0c 00 00 00       	mov    $0xc,%eax
    381f:	cd 40                	int    $0x40
    3821:	c3                   	ret    

00003822 <sleep>:
    3822:	b8 0d 00 00 00       	mov    $0xd,%eax
    3827:	cd 40                	int    $0x40
    3829:	c3                   	ret    

0000382a <uptime>:
    382a:	b8 0e 00 00 00       	mov    $0xe,%eax
    382f:	cd 40                	int    $0x40
    3831:	c3                   	ret    

00003832 <getlevel>:
    3832:	b8 16 00 00 00       	mov    $0x16,%eax
    3837:	cd 40                	int    $0x40
    3839:	c3                   	ret    

0000383a <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    383a:	55                   	push   %ebp
    383b:	89 e5                	mov    %esp,%ebp
    383d:	57                   	push   %edi
    383e:	56                   	push   %esi
    383f:	53                   	push   %ebx
    3840:	83 ec 3c             	sub    $0x3c,%esp
    3843:	89 c6                	mov    %eax,%esi
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    3845:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    3849:	74 14                	je     385f <printint+0x25>
    384b:	85 d2                	test   %edx,%edx
    384d:	79 10                	jns    385f <printint+0x25>
    neg = 1;
    x = -xx;
    384f:	f7 da                	neg    %edx
    neg = 1;
    3851:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    3858:	bf 00 00 00 00       	mov    $0x0,%edi
    385d:	eb 0b                	jmp    386a <printint+0x30>
  neg = 0;
    385f:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    3866:	eb f0                	jmp    3858 <printint+0x1e>
  do{
    buf[i++] = digits[x % base];
    3868:	89 df                	mov    %ebx,%edi
    386a:	8d 5f 01             	lea    0x1(%edi),%ebx
    386d:	89 d0                	mov    %edx,%eax
    386f:	ba 00 00 00 00       	mov    $0x0,%edx
    3874:	f7 f1                	div    %ecx
    3876:	0f b6 92 7c 53 00 00 	movzbl 0x537c(%edx),%edx
    387d:	88 54 1d d7          	mov    %dl,-0x29(%ebp,%ebx,1)
  }while((x /= base) != 0);
    3881:	89 c2                	mov    %eax,%edx
    3883:	85 c0                	test   %eax,%eax
    3885:	75 e1                	jne    3868 <printint+0x2e>
  if(neg)
    3887:	83 7d c4 00          	cmpl   $0x0,-0x3c(%ebp)
    388b:	74 08                	je     3895 <printint+0x5b>
    buf[i++] = '-';
    388d:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    3892:	8d 5f 02             	lea    0x2(%edi),%ebx

  while(--i >= 0)
    3895:	83 eb 01             	sub    $0x1,%ebx
    3898:	78 22                	js     38bc <printint+0x82>
  write(fd, &c, 1);
    389a:	8d 7d d7             	lea    -0x29(%ebp),%edi
    389d:	0f b6 44 1d d8       	movzbl -0x28(%ebp,%ebx,1),%eax
    38a2:	88 45 d7             	mov    %al,-0x29(%ebp)
    38a5:	83 ec 04             	sub    $0x4,%esp
    38a8:	6a 01                	push   $0x1
    38aa:	57                   	push   %edi
    38ab:	56                   	push   %esi
    38ac:	e8 01 ff ff ff       	call   37b2 <write>
  while(--i >= 0)
    38b1:	83 eb 01             	sub    $0x1,%ebx
    38b4:	83 c4 10             	add    $0x10,%esp
    38b7:	83 fb ff             	cmp    $0xffffffff,%ebx
    38ba:	75 e1                	jne    389d <printint+0x63>
    putc(fd, buf[i]);
}
    38bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    38bf:	5b                   	pop    %ebx
    38c0:	5e                   	pop    %esi
    38c1:	5f                   	pop    %edi
    38c2:	5d                   	pop    %ebp
    38c3:	c3                   	ret    

000038c4 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    38c4:	55                   	push   %ebp
    38c5:	89 e5                	mov    %esp,%ebp
    38c7:	57                   	push   %edi
    38c8:	56                   	push   %esi
    38c9:	53                   	push   %ebx
    38ca:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    38cd:	8b 75 0c             	mov    0xc(%ebp),%esi
    38d0:	0f b6 1e             	movzbl (%esi),%ebx
    38d3:	84 db                	test   %bl,%bl
    38d5:	0f 84 b1 01 00 00    	je     3a8c <printf+0x1c8>
    38db:	83 c6 01             	add    $0x1,%esi
  ap = (uint*)(void*)&fmt + 1;
    38de:	8d 45 10             	lea    0x10(%ebp),%eax
    38e1:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  state = 0;
    38e4:	bf 00 00 00 00       	mov    $0x0,%edi
    38e9:	eb 2d                	jmp    3918 <printf+0x54>
    38eb:	88 5d e2             	mov    %bl,-0x1e(%ebp)
  write(fd, &c, 1);
    38ee:	83 ec 04             	sub    $0x4,%esp
    38f1:	6a 01                	push   $0x1
    38f3:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    38f6:	50                   	push   %eax
    38f7:	ff 75 08             	pushl  0x8(%ebp)
    38fa:	e8 b3 fe ff ff       	call   37b2 <write>
    38ff:	83 c4 10             	add    $0x10,%esp
    3902:	eb 05                	jmp    3909 <printf+0x45>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    3904:	83 ff 25             	cmp    $0x25,%edi
    3907:	74 22                	je     392b <printf+0x67>
    3909:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    390c:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    3910:	84 db                	test   %bl,%bl
    3912:	0f 84 74 01 00 00    	je     3a8c <printf+0x1c8>
    c = fmt[i] & 0xff;
    3918:	0f be d3             	movsbl %bl,%edx
    391b:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    391e:	85 ff                	test   %edi,%edi
    3920:	75 e2                	jne    3904 <printf+0x40>
      if(c == '%'){
    3922:	83 f8 25             	cmp    $0x25,%eax
    3925:	75 c4                	jne    38eb <printf+0x27>
        state = '%';
    3927:	89 c7                	mov    %eax,%edi
    3929:	eb de                	jmp    3909 <printf+0x45>
      if(c == 'd'){
    392b:	83 f8 64             	cmp    $0x64,%eax
    392e:	74 59                	je     3989 <printf+0xc5>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    3930:	81 e2 f7 00 00 00    	and    $0xf7,%edx
    3936:	83 fa 70             	cmp    $0x70,%edx
    3939:	74 7a                	je     39b5 <printf+0xf1>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    393b:	83 f8 73             	cmp    $0x73,%eax
    393e:	0f 84 9d 00 00 00    	je     39e1 <printf+0x11d>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    3944:	83 f8 63             	cmp    $0x63,%eax
    3947:	0f 84 f2 00 00 00    	je     3a3f <printf+0x17b>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    394d:	83 f8 25             	cmp    $0x25,%eax
    3950:	0f 84 15 01 00 00    	je     3a6b <printf+0x1a7>
    3956:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
    395a:	83 ec 04             	sub    $0x4,%esp
    395d:	6a 01                	push   $0x1
    395f:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3962:	50                   	push   %eax
    3963:	ff 75 08             	pushl  0x8(%ebp)
    3966:	e8 47 fe ff ff       	call   37b2 <write>
    396b:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    396e:	83 c4 0c             	add    $0xc,%esp
    3971:	6a 01                	push   $0x1
    3973:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    3976:	50                   	push   %eax
    3977:	ff 75 08             	pushl  0x8(%ebp)
    397a:	e8 33 fe ff ff       	call   37b2 <write>
    397f:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3982:	bf 00 00 00 00       	mov    $0x0,%edi
    3987:	eb 80                	jmp    3909 <printf+0x45>
        printint(fd, *ap, 10, 1);
    3989:	83 ec 0c             	sub    $0xc,%esp
    398c:	6a 01                	push   $0x1
    398e:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3993:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    3996:	8b 17                	mov    (%edi),%edx
    3998:	8b 45 08             	mov    0x8(%ebp),%eax
    399b:	e8 9a fe ff ff       	call   383a <printint>
        ap++;
    39a0:	89 f8                	mov    %edi,%eax
    39a2:	83 c0 04             	add    $0x4,%eax
    39a5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    39a8:	83 c4 10             	add    $0x10,%esp
      state = 0;
    39ab:	bf 00 00 00 00       	mov    $0x0,%edi
    39b0:	e9 54 ff ff ff       	jmp    3909 <printf+0x45>
        printint(fd, *ap, 16, 0);
    39b5:	83 ec 0c             	sub    $0xc,%esp
    39b8:	6a 00                	push   $0x0
    39ba:	b9 10 00 00 00       	mov    $0x10,%ecx
    39bf:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    39c2:	8b 17                	mov    (%edi),%edx
    39c4:	8b 45 08             	mov    0x8(%ebp),%eax
    39c7:	e8 6e fe ff ff       	call   383a <printint>
        ap++;
    39cc:	89 f8                	mov    %edi,%eax
    39ce:	83 c0 04             	add    $0x4,%eax
    39d1:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    39d4:	83 c4 10             	add    $0x10,%esp
      state = 0;
    39d7:	bf 00 00 00 00       	mov    $0x0,%edi
    39dc:	e9 28 ff ff ff       	jmp    3909 <printf+0x45>
        s = (char*)*ap;
    39e1:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    39e4:	8b 01                	mov    (%ecx),%eax
        ap++;
    39e6:	83 c1 04             	add    $0x4,%ecx
    39e9:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
        if(s == 0)
    39ec:	85 c0                	test   %eax,%eax
    39ee:	74 13                	je     3a03 <printf+0x13f>
        s = (char*)*ap;
    39f0:	89 c3                	mov    %eax,%ebx
        while(*s != 0){
    39f2:	0f b6 00             	movzbl (%eax),%eax
      state = 0;
    39f5:	bf 00 00 00 00       	mov    $0x0,%edi
        while(*s != 0){
    39fa:	84 c0                	test   %al,%al
    39fc:	75 0f                	jne    3a0d <printf+0x149>
    39fe:	e9 06 ff ff ff       	jmp    3909 <printf+0x45>
          s = "(null)";
    3a03:	bb 74 53 00 00       	mov    $0x5374,%ebx
        while(*s != 0){
    3a08:	b8 28 00 00 00       	mov    $0x28,%eax
  write(fd, &c, 1);
    3a0d:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    3a10:	89 75 d0             	mov    %esi,-0x30(%ebp)
    3a13:	8b 75 08             	mov    0x8(%ebp),%esi
    3a16:	88 45 e3             	mov    %al,-0x1d(%ebp)
    3a19:	83 ec 04             	sub    $0x4,%esp
    3a1c:	6a 01                	push   $0x1
    3a1e:	57                   	push   %edi
    3a1f:	56                   	push   %esi
    3a20:	e8 8d fd ff ff       	call   37b2 <write>
          s++;
    3a25:	83 c3 01             	add    $0x1,%ebx
        while(*s != 0){
    3a28:	0f b6 03             	movzbl (%ebx),%eax
    3a2b:	83 c4 10             	add    $0x10,%esp
    3a2e:	84 c0                	test   %al,%al
    3a30:	75 e4                	jne    3a16 <printf+0x152>
    3a32:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    3a35:	bf 00 00 00 00       	mov    $0x0,%edi
    3a3a:	e9 ca fe ff ff       	jmp    3909 <printf+0x45>
        putc(fd, *ap);
    3a3f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    3a42:	8b 07                	mov    (%edi),%eax
    3a44:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    3a47:	83 ec 04             	sub    $0x4,%esp
    3a4a:	6a 01                	push   $0x1
    3a4c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    3a4f:	50                   	push   %eax
    3a50:	ff 75 08             	pushl  0x8(%ebp)
    3a53:	e8 5a fd ff ff       	call   37b2 <write>
        ap++;
    3a58:	83 c7 04             	add    $0x4,%edi
    3a5b:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    3a5e:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3a61:	bf 00 00 00 00       	mov    $0x0,%edi
    3a66:	e9 9e fe ff ff       	jmp    3909 <printf+0x45>
    3a6b:	88 5d e5             	mov    %bl,-0x1b(%ebp)
  write(fd, &c, 1);
    3a6e:	83 ec 04             	sub    $0x4,%esp
    3a71:	6a 01                	push   $0x1
    3a73:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    3a76:	50                   	push   %eax
    3a77:	ff 75 08             	pushl  0x8(%ebp)
    3a7a:	e8 33 fd ff ff       	call   37b2 <write>
    3a7f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3a82:	bf 00 00 00 00       	mov    $0x0,%edi
    3a87:	e9 7d fe ff ff       	jmp    3909 <printf+0x45>
    }
  }
}
    3a8c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3a8f:	5b                   	pop    %ebx
    3a90:	5e                   	pop    %esi
    3a91:	5f                   	pop    %edi
    3a92:	5d                   	pop    %ebp
    3a93:	c3                   	ret    

00003a94 <free>:
    3a94:	55                   	push   %ebp
    3a95:	89 e5                	mov    %esp,%ebp
    3a97:	57                   	push   %edi
    3a98:	56                   	push   %esi
    3a99:	53                   	push   %ebx
    3a9a:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3a9d:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    3aa0:	a1 c0 5c 00 00       	mov    0x5cc0,%eax
    3aa5:	eb 0c                	jmp    3ab3 <free+0x1f>
    3aa7:	8b 10                	mov    (%eax),%edx
    3aa9:	39 c2                	cmp    %eax,%edx
    3aab:	77 04                	ja     3ab1 <free+0x1d>
    3aad:	39 ca                	cmp    %ecx,%edx
    3aaf:	77 10                	ja     3ac1 <free+0x2d>
    3ab1:	89 d0                	mov    %edx,%eax
    3ab3:	39 c8                	cmp    %ecx,%eax
    3ab5:	73 f0                	jae    3aa7 <free+0x13>
    3ab7:	8b 10                	mov    (%eax),%edx
    3ab9:	39 ca                	cmp    %ecx,%edx
    3abb:	77 04                	ja     3ac1 <free+0x2d>
    3abd:	39 c2                	cmp    %eax,%edx
    3abf:	77 f0                	ja     3ab1 <free+0x1d>
    3ac1:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3ac4:	8b 10                	mov    (%eax),%edx
    3ac6:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3ac9:	39 fa                	cmp    %edi,%edx
    3acb:	74 19                	je     3ae6 <free+0x52>
    3acd:	89 53 f8             	mov    %edx,-0x8(%ebx)
    3ad0:	8b 50 04             	mov    0x4(%eax),%edx
    3ad3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3ad6:	39 f1                	cmp    %esi,%ecx
    3ad8:	74 1b                	je     3af5 <free+0x61>
    3ada:	89 08                	mov    %ecx,(%eax)
    3adc:	a3 c0 5c 00 00       	mov    %eax,0x5cc0
    3ae1:	5b                   	pop    %ebx
    3ae2:	5e                   	pop    %esi
    3ae3:	5f                   	pop    %edi
    3ae4:	5d                   	pop    %ebp
    3ae5:	c3                   	ret    
    3ae6:	03 72 04             	add    0x4(%edx),%esi
    3ae9:	89 73 fc             	mov    %esi,-0x4(%ebx)
    3aec:	8b 10                	mov    (%eax),%edx
    3aee:	8b 12                	mov    (%edx),%edx
    3af0:	89 53 f8             	mov    %edx,-0x8(%ebx)
    3af3:	eb db                	jmp    3ad0 <free+0x3c>
    3af5:	03 53 fc             	add    -0x4(%ebx),%edx
    3af8:	89 50 04             	mov    %edx,0x4(%eax)
    3afb:	8b 53 f8             	mov    -0x8(%ebx),%edx
    3afe:	89 10                	mov    %edx,(%eax)
    3b00:	eb da                	jmp    3adc <free+0x48>

00003b02 <malloc>:
    3b02:	55                   	push   %ebp
    3b03:	89 e5                	mov    %esp,%ebp
    3b05:	57                   	push   %edi
    3b06:	56                   	push   %esi
    3b07:	53                   	push   %ebx
    3b08:	83 ec 0c             	sub    $0xc,%esp
    3b0b:	8b 45 08             	mov    0x8(%ebp),%eax
    3b0e:	8d 58 07             	lea    0x7(%eax),%ebx
    3b11:	c1 eb 03             	shr    $0x3,%ebx
    3b14:	83 c3 01             	add    $0x1,%ebx
    3b17:	8b 15 c0 5c 00 00    	mov    0x5cc0,%edx
    3b1d:	85 d2                	test   %edx,%edx
    3b1f:	74 20                	je     3b41 <malloc+0x3f>
    3b21:	8b 02                	mov    (%edx),%eax
    3b23:	8b 48 04             	mov    0x4(%eax),%ecx
    3b26:	39 cb                	cmp    %ecx,%ebx
    3b28:	76 3c                	jbe    3b66 <malloc+0x64>
    3b2a:	81 fb 00 10 00 00    	cmp    $0x1000,%ebx
    3b30:	be 00 10 00 00       	mov    $0x1000,%esi
    3b35:	0f 43 f3             	cmovae %ebx,%esi
    3b38:	8d 3c f5 00 00 00 00 	lea    0x0(,%esi,8),%edi
    3b3f:	eb 70                	jmp    3bb1 <malloc+0xaf>
    3b41:	c7 05 c0 5c 00 00 c4 	movl   $0x5cc4,0x5cc0
    3b48:	5c 00 00 
    3b4b:	c7 05 c4 5c 00 00 c4 	movl   $0x5cc4,0x5cc4
    3b52:	5c 00 00 
    3b55:	c7 05 c8 5c 00 00 00 	movl   $0x0,0x5cc8
    3b5c:	00 00 00 
    3b5f:	ba c4 5c 00 00       	mov    $0x5cc4,%edx
    3b64:	eb bb                	jmp    3b21 <malloc+0x1f>
    3b66:	39 cb                	cmp    %ecx,%ebx
    3b68:	74 1c                	je     3b86 <malloc+0x84>
    3b6a:	29 d9                	sub    %ebx,%ecx
    3b6c:	89 48 04             	mov    %ecx,0x4(%eax)
    3b6f:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
    3b72:	89 58 04             	mov    %ebx,0x4(%eax)
    3b75:	89 15 c0 5c 00 00    	mov    %edx,0x5cc0
    3b7b:	83 c0 08             	add    $0x8,%eax
    3b7e:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3b81:	5b                   	pop    %ebx
    3b82:	5e                   	pop    %esi
    3b83:	5f                   	pop    %edi
    3b84:	5d                   	pop    %ebp
    3b85:	c3                   	ret    
    3b86:	8b 08                	mov    (%eax),%ecx
    3b88:	89 0a                	mov    %ecx,(%edx)
    3b8a:	eb e9                	jmp    3b75 <malloc+0x73>
    3b8c:	89 70 04             	mov    %esi,0x4(%eax)
    3b8f:	83 ec 0c             	sub    $0xc,%esp
    3b92:	83 c0 08             	add    $0x8,%eax
    3b95:	50                   	push   %eax
    3b96:	e8 f9 fe ff ff       	call   3a94 <free>
    3b9b:	8b 15 c0 5c 00 00    	mov    0x5cc0,%edx
    3ba1:	83 c4 10             	add    $0x10,%esp
    3ba4:	85 d2                	test   %edx,%edx
    3ba6:	74 2b                	je     3bd3 <malloc+0xd1>
    3ba8:	8b 02                	mov    (%edx),%eax
    3baa:	8b 48 04             	mov    0x4(%eax),%ecx
    3bad:	39 d9                	cmp    %ebx,%ecx
    3baf:	73 b5                	jae    3b66 <malloc+0x64>
    3bb1:	89 c2                	mov    %eax,%edx
    3bb3:	39 05 c0 5c 00 00    	cmp    %eax,0x5cc0
    3bb9:	75 ed                	jne    3ba8 <malloc+0xa6>
    3bbb:	83 ec 0c             	sub    $0xc,%esp
    3bbe:	57                   	push   %edi
    3bbf:	e8 56 fc ff ff       	call   381a <sbrk>
    3bc4:	83 c4 10             	add    $0x10,%esp
    3bc7:	83 f8 ff             	cmp    $0xffffffff,%eax
    3bca:	75 c0                	jne    3b8c <malloc+0x8a>
    3bcc:	b8 00 00 00 00       	mov    $0x0,%eax
    3bd1:	eb ab                	jmp    3b7e <malloc+0x7c>
    3bd3:	b8 00 00 00 00       	mov    $0x0,%eax
    3bd8:	eb a4                	jmp    3b7e <malloc+0x7c>
