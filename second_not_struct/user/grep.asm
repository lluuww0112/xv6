
user/_grep:     file format elf32-i386


Disassembly of section .text:

00000000 <matchstar>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 ec 0c             	sub    $0xc,%esp
   9:	8b 75 08             	mov    0x8(%ebp),%esi
   c:	8b 7d 0c             	mov    0xc(%ebp),%edi
   f:	8b 5d 10             	mov    0x10(%ebp),%ebx
  12:	83 ec 08             	sub    $0x8,%esp
  15:	53                   	push   %ebx
  16:	57                   	push   %edi
  17:	e8 2c 00 00 00       	call   48 <matchhere>
  1c:	83 c4 10             	add    $0x10,%esp
  1f:	85 c0                	test   %eax,%eax
  21:	75 18                	jne    3b <matchstar+0x3b>
  23:	0f b6 13             	movzbl (%ebx),%edx
  26:	84 d2                	test   %dl,%dl
  28:	74 16                	je     40 <matchstar+0x40>
  2a:	83 c3 01             	add    $0x1,%ebx
  2d:	83 fe 2e             	cmp    $0x2e,%esi
  30:	74 e0                	je     12 <matchstar+0x12>
  32:	0f be d2             	movsbl %dl,%edx
  35:	39 f2                	cmp    %esi,%edx
  37:	74 d9                	je     12 <matchstar+0x12>
  39:	eb 05                	jmp    40 <matchstar+0x40>
  3b:	b8 01 00 00 00       	mov    $0x1,%eax
  40:	8d 65 f4             	lea    -0xc(%ebp),%esp
  43:	5b                   	pop    %ebx
  44:	5e                   	pop    %esi
  45:	5f                   	pop    %edi
  46:	5d                   	pop    %ebp
  47:	c3                   	ret    

00000048 <matchhere>:
  48:	55                   	push   %ebp
  49:	89 e5                	mov    %esp,%ebp
  4b:	53                   	push   %ebx
  4c:	83 ec 04             	sub    $0x4,%esp
  4f:	8b 55 08             	mov    0x8(%ebp),%edx
  52:	0f b6 0a             	movzbl (%edx),%ecx
  55:	b8 01 00 00 00       	mov    $0x1,%eax
  5a:	84 c9                	test   %cl,%cl
  5c:	74 29                	je     87 <matchhere+0x3f>
  5e:	0f b6 42 01          	movzbl 0x1(%edx),%eax
  62:	3c 2a                	cmp    $0x2a,%al
  64:	74 26                	je     8c <matchhere+0x44>
  66:	84 c0                	test   %al,%al
  68:	75 05                	jne    6f <matchhere+0x27>
  6a:	80 f9 24             	cmp    $0x24,%cl
  6d:	74 35                	je     a4 <matchhere+0x5c>
  6f:	8b 45 0c             	mov    0xc(%ebp),%eax
  72:	0f b6 18             	movzbl (%eax),%ebx
  75:	b8 00 00 00 00       	mov    $0x0,%eax
  7a:	84 db                	test   %bl,%bl
  7c:	74 09                	je     87 <matchhere+0x3f>
  7e:	38 d9                	cmp    %bl,%cl
  80:	74 30                	je     b2 <matchhere+0x6a>
  82:	80 f9 2e             	cmp    $0x2e,%cl
  85:	74 2b                	je     b2 <matchhere+0x6a>
  87:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  8a:	c9                   	leave  
  8b:	c3                   	ret    
  8c:	83 ec 04             	sub    $0x4,%esp
  8f:	ff 75 0c             	pushl  0xc(%ebp)
  92:	83 c2 02             	add    $0x2,%edx
  95:	52                   	push   %edx
  96:	0f be c9             	movsbl %cl,%ecx
  99:	51                   	push   %ecx
  9a:	e8 61 ff ff ff       	call   0 <matchstar>
  9f:	83 c4 10             	add    $0x10,%esp
  a2:	eb e3                	jmp    87 <matchhere+0x3f>
  a4:	8b 45 0c             	mov    0xc(%ebp),%eax
  a7:	80 38 00             	cmpb   $0x0,(%eax)
  aa:	0f 94 c0             	sete   %al
  ad:	0f b6 c0             	movzbl %al,%eax
  b0:	eb d5                	jmp    87 <matchhere+0x3f>
  b2:	83 ec 08             	sub    $0x8,%esp
  b5:	8b 45 0c             	mov    0xc(%ebp),%eax
  b8:	83 c0 01             	add    $0x1,%eax
  bb:	50                   	push   %eax
  bc:	83 c2 01             	add    $0x1,%edx
  bf:	52                   	push   %edx
  c0:	e8 83 ff ff ff       	call   48 <matchhere>
  c5:	83 c4 10             	add    $0x10,%esp
  c8:	eb bd                	jmp    87 <matchhere+0x3f>

000000ca <match>:
  ca:	55                   	push   %ebp
  cb:	89 e5                	mov    %esp,%ebp
  cd:	56                   	push   %esi
  ce:	53                   	push   %ebx
  cf:	8b 75 08             	mov    0x8(%ebp),%esi
  d2:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  d5:	80 3e 5e             	cmpb   $0x5e,(%esi)
  d8:	74 1c                	je     f6 <match+0x2c>
  da:	83 ec 08             	sub    $0x8,%esp
  dd:	53                   	push   %ebx
  de:	56                   	push   %esi
  df:	e8 64 ff ff ff       	call   48 <matchhere>
  e4:	83 c4 10             	add    $0x10,%esp
  e7:	85 c0                	test   %eax,%eax
  e9:	75 1d                	jne    108 <match+0x3e>
  eb:	83 c3 01             	add    $0x1,%ebx
  ee:	80 7b ff 00          	cmpb   $0x0,-0x1(%ebx)
  f2:	75 e6                	jne    da <match+0x10>
  f4:	eb 17                	jmp    10d <match+0x43>
  f6:	83 ec 08             	sub    $0x8,%esp
  f9:	53                   	push   %ebx
  fa:	83 c6 01             	add    $0x1,%esi
  fd:	56                   	push   %esi
  fe:	e8 45 ff ff ff       	call   48 <matchhere>
 103:	83 c4 10             	add    $0x10,%esp
 106:	eb 05                	jmp    10d <match+0x43>
 108:	b8 01 00 00 00       	mov    $0x1,%eax
 10d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 110:	5b                   	pop    %ebx
 111:	5e                   	pop    %esi
 112:	5d                   	pop    %ebp
 113:	c3                   	ret    

00000114 <grep>:
 114:	55                   	push   %ebp
 115:	89 e5                	mov    %esp,%ebp
 117:	57                   	push   %edi
 118:	56                   	push   %esi
 119:	53                   	push   %ebx
 11a:	83 ec 1c             	sub    $0x1c,%esp
 11d:	bf 00 00 00 00       	mov    $0x0,%edi
 122:	eb 53                	jmp    177 <grep+0x63>
 124:	8d 73 01             	lea    0x1(%ebx),%esi
 127:	83 ec 08             	sub    $0x8,%esp
 12a:	6a 0a                	push   $0xa
 12c:	56                   	push   %esi
 12d:	e8 e6 01 00 00       	call   318 <strchr>
 132:	89 c3                	mov    %eax,%ebx
 134:	83 c4 10             	add    $0x10,%esp
 137:	85 c0                	test   %eax,%eax
 139:	74 2d                	je     168 <grep+0x54>
 13b:	c6 03 00             	movb   $0x0,(%ebx)
 13e:	83 ec 08             	sub    $0x8,%esp
 141:	56                   	push   %esi
 142:	57                   	push   %edi
 143:	e8 82 ff ff ff       	call   ca <match>
 148:	83 c4 10             	add    $0x10,%esp
 14b:	85 c0                	test   %eax,%eax
 14d:	74 d5                	je     124 <grep+0x10>
 14f:	c6 03 0a             	movb   $0xa,(%ebx)
 152:	83 ec 04             	sub    $0x4,%esp
 155:	8d 43 01             	lea    0x1(%ebx),%eax
 158:	29 f0                	sub    %esi,%eax
 15a:	50                   	push   %eax
 15b:	56                   	push   %esi
 15c:	6a 01                	push   $0x1
 15e:	e8 0b 03 00 00       	call   46e <write>
 163:	83 c4 10             	add    $0x10,%esp
 166:	eb bc                	jmp    124 <grep+0x10>
 168:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 16b:	81 fe 20 0c 00 00    	cmp    $0xc20,%esi
 171:	74 5b                	je     1ce <grep+0xba>
 173:	85 ff                	test   %edi,%edi
 175:	7f 3a                	jg     1b1 <grep+0x9d>
 177:	83 ec 04             	sub    $0x4,%esp
 17a:	b8 ff 03 00 00       	mov    $0x3ff,%eax
 17f:	29 f8                	sub    %edi,%eax
 181:	50                   	push   %eax
 182:	8d 87 20 0c 00 00    	lea    0xc20(%edi),%eax
 188:	50                   	push   %eax
 189:	ff 75 0c             	pushl  0xc(%ebp)
 18c:	e8 d5 02 00 00       	call   466 <read>
 191:	83 c4 10             	add    $0x10,%esp
 194:	85 c0                	test   %eax,%eax
 196:	7e 3d                	jle    1d5 <grep+0xc1>
 198:	01 c7                	add    %eax,%edi
 19a:	c6 87 20 0c 00 00 00 	movb   $0x0,0xc20(%edi)
 1a1:	be 20 0c 00 00       	mov    $0xc20,%esi
 1a6:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 1a9:	8b 7d 08             	mov    0x8(%ebp),%edi
 1ac:	e9 76 ff ff ff       	jmp    127 <grep+0x13>
 1b1:	89 f0                	mov    %esi,%eax
 1b3:	2d 20 0c 00 00       	sub    $0xc20,%eax
 1b8:	29 c7                	sub    %eax,%edi
 1ba:	83 ec 04             	sub    $0x4,%esp
 1bd:	57                   	push   %edi
 1be:	56                   	push   %esi
 1bf:	68 20 0c 00 00       	push   $0xc20
 1c4:	e8 54 02 00 00       	call   41d <memmove>
 1c9:	83 c4 10             	add    $0x10,%esp
 1cc:	eb a9                	jmp    177 <grep+0x63>
 1ce:	bf 00 00 00 00       	mov    $0x0,%edi
 1d3:	eb a2                	jmp    177 <grep+0x63>
 1d5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1d8:	5b                   	pop    %ebx
 1d9:	5e                   	pop    %esi
 1da:	5f                   	pop    %edi
 1db:	5d                   	pop    %ebp
 1dc:	c3                   	ret    

000001dd <main>:
 1dd:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 1e1:	83 e4 f0             	and    $0xfffffff0,%esp
 1e4:	ff 71 fc             	pushl  -0x4(%ecx)
 1e7:	55                   	push   %ebp
 1e8:	89 e5                	mov    %esp,%ebp
 1ea:	57                   	push   %edi
 1eb:	56                   	push   %esi
 1ec:	53                   	push   %ebx
 1ed:	51                   	push   %ecx
 1ee:	83 ec 18             	sub    $0x18,%esp
 1f1:	8b 01                	mov    (%ecx),%eax
 1f3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 1f6:	8b 59 04             	mov    0x4(%ecx),%ebx
 1f9:	83 f8 01             	cmp    $0x1,%eax
 1fc:	7e 53                	jle    251 <main+0x74>
 1fe:	8b 43 04             	mov    0x4(%ebx),%eax
 201:	89 45 e0             	mov    %eax,-0x20(%ebp)
 204:	83 c3 08             	add    $0x8,%ebx
 207:	bf 02 00 00 00       	mov    $0x2,%edi
 20c:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
 210:	7e 53                	jle    265 <main+0x88>
 212:	89 5d dc             	mov    %ebx,-0x24(%ebp)
 215:	83 ec 08             	sub    $0x8,%esp
 218:	6a 00                	push   $0x0
 21a:	ff 33                	pushl  (%ebx)
 21c:	e8 6d 02 00 00       	call   48e <open>
 221:	89 c6                	mov    %eax,%esi
 223:	83 c4 10             	add    $0x10,%esp
 226:	85 c0                	test   %eax,%eax
 228:	78 4b                	js     275 <main+0x98>
 22a:	83 ec 08             	sub    $0x8,%esp
 22d:	50                   	push   %eax
 22e:	ff 75 e0             	pushl  -0x20(%ebp)
 231:	e8 de fe ff ff       	call   114 <grep>
 236:	89 34 24             	mov    %esi,(%esp)
 239:	e8 38 02 00 00       	call   476 <close>
 23e:	83 c7 01             	add    $0x1,%edi
 241:	83 c3 04             	add    $0x4,%ebx
 244:	83 c4 10             	add    $0x10,%esp
 247:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
 24a:	75 c6                	jne    212 <main+0x35>
 24c:	e8 fd 01 00 00       	call   44e <exit>
 251:	83 ec 08             	sub    $0x8,%esp
 254:	68 98 08 00 00       	push   $0x898
 259:	6a 02                	push   $0x2
 25b:	e8 20 03 00 00       	call   580 <printf>
 260:	e8 e9 01 00 00       	call   44e <exit>
 265:	83 ec 08             	sub    $0x8,%esp
 268:	6a 00                	push   $0x0
 26a:	50                   	push   %eax
 26b:	e8 a4 fe ff ff       	call   114 <grep>
 270:	e8 d9 01 00 00       	call   44e <exit>
 275:	83 ec 04             	sub    $0x4,%esp
 278:	8b 45 dc             	mov    -0x24(%ebp),%eax
 27b:	ff 30                	pushl  (%eax)
 27d:	68 b8 08 00 00       	push   $0x8b8
 282:	6a 01                	push   $0x1
 284:	e8 f7 02 00 00       	call   580 <printf>
 289:	e8 c0 01 00 00       	call   44e <exit>

0000028e <strcpy>:
 28e:	55                   	push   %ebp
 28f:	89 e5                	mov    %esp,%ebp
 291:	53                   	push   %ebx
 292:	8b 45 08             	mov    0x8(%ebp),%eax
 295:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 298:	89 c2                	mov    %eax,%edx
 29a:	83 c1 01             	add    $0x1,%ecx
 29d:	83 c2 01             	add    $0x1,%edx
 2a0:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 2a4:	88 5a ff             	mov    %bl,-0x1(%edx)
 2a7:	84 db                	test   %bl,%bl
 2a9:	75 ef                	jne    29a <strcpy+0xc>
 2ab:	5b                   	pop    %ebx
 2ac:	5d                   	pop    %ebp
 2ad:	c3                   	ret    

000002ae <strcmp>:
 2ae:	55                   	push   %ebp
 2af:	89 e5                	mov    %esp,%ebp
 2b1:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2b4:	8b 55 0c             	mov    0xc(%ebp),%edx
 2b7:	0f b6 01             	movzbl (%ecx),%eax
 2ba:	84 c0                	test   %al,%al
 2bc:	74 15                	je     2d3 <strcmp+0x25>
 2be:	3a 02                	cmp    (%edx),%al
 2c0:	75 11                	jne    2d3 <strcmp+0x25>
 2c2:	83 c1 01             	add    $0x1,%ecx
 2c5:	83 c2 01             	add    $0x1,%edx
 2c8:	0f b6 01             	movzbl (%ecx),%eax
 2cb:	84 c0                	test   %al,%al
 2cd:	74 04                	je     2d3 <strcmp+0x25>
 2cf:	3a 02                	cmp    (%edx),%al
 2d1:	74 ef                	je     2c2 <strcmp+0x14>
 2d3:	0f b6 c0             	movzbl %al,%eax
 2d6:	0f b6 12             	movzbl (%edx),%edx
 2d9:	29 d0                	sub    %edx,%eax
 2db:	5d                   	pop    %ebp
 2dc:	c3                   	ret    

000002dd <strlen>:
 2dd:	55                   	push   %ebp
 2de:	89 e5                	mov    %esp,%ebp
 2e0:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2e3:	80 39 00             	cmpb   $0x0,(%ecx)
 2e6:	74 12                	je     2fa <strlen+0x1d>
 2e8:	ba 00 00 00 00       	mov    $0x0,%edx
 2ed:	83 c2 01             	add    $0x1,%edx
 2f0:	89 d0                	mov    %edx,%eax
 2f2:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 2f6:	75 f5                	jne    2ed <strlen+0x10>
 2f8:	5d                   	pop    %ebp
 2f9:	c3                   	ret    
 2fa:	b8 00 00 00 00       	mov    $0x0,%eax
 2ff:	eb f7                	jmp    2f8 <strlen+0x1b>

00000301 <memset>:
 301:	55                   	push   %ebp
 302:	89 e5                	mov    %esp,%ebp
 304:	57                   	push   %edi
 305:	8b 55 08             	mov    0x8(%ebp),%edx
 308:	89 d7                	mov    %edx,%edi
 30a:	8b 4d 10             	mov    0x10(%ebp),%ecx
 30d:	8b 45 0c             	mov    0xc(%ebp),%eax
 310:	fc                   	cld    
 311:	f3 aa                	rep stos %al,%es:(%edi)
 313:	89 d0                	mov    %edx,%eax
 315:	5f                   	pop    %edi
 316:	5d                   	pop    %ebp
 317:	c3                   	ret    

00000318 <strchr>:
 318:	55                   	push   %ebp
 319:	89 e5                	mov    %esp,%ebp
 31b:	53                   	push   %ebx
 31c:	8b 45 08             	mov    0x8(%ebp),%eax
 31f:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 322:	0f b6 10             	movzbl (%eax),%edx
 325:	84 d2                	test   %dl,%dl
 327:	74 1e                	je     347 <strchr+0x2f>
 329:	89 d9                	mov    %ebx,%ecx
 32b:	38 d3                	cmp    %dl,%bl
 32d:	74 15                	je     344 <strchr+0x2c>
 32f:	83 c0 01             	add    $0x1,%eax
 332:	0f b6 10             	movzbl (%eax),%edx
 335:	84 d2                	test   %dl,%dl
 337:	74 06                	je     33f <strchr+0x27>
 339:	38 ca                	cmp    %cl,%dl
 33b:	75 f2                	jne    32f <strchr+0x17>
 33d:	eb 05                	jmp    344 <strchr+0x2c>
 33f:	b8 00 00 00 00       	mov    $0x0,%eax
 344:	5b                   	pop    %ebx
 345:	5d                   	pop    %ebp
 346:	c3                   	ret    
 347:	b8 00 00 00 00       	mov    $0x0,%eax
 34c:	eb f6                	jmp    344 <strchr+0x2c>

0000034e <gets>:
 34e:	55                   	push   %ebp
 34f:	89 e5                	mov    %esp,%ebp
 351:	57                   	push   %edi
 352:	56                   	push   %esi
 353:	53                   	push   %ebx
 354:	83 ec 1c             	sub    $0x1c,%esp
 357:	be 00 00 00 00       	mov    $0x0,%esi
 35c:	8d 7d e7             	lea    -0x19(%ebp),%edi
 35f:	8d 5e 01             	lea    0x1(%esi),%ebx
 362:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 365:	7d 2b                	jge    392 <gets+0x44>
 367:	83 ec 04             	sub    $0x4,%esp
 36a:	6a 01                	push   $0x1
 36c:	57                   	push   %edi
 36d:	6a 00                	push   $0x0
 36f:	e8 f2 00 00 00       	call   466 <read>
 374:	83 c4 10             	add    $0x10,%esp
 377:	85 c0                	test   %eax,%eax
 379:	7e 17                	jle    392 <gets+0x44>
 37b:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 37f:	8b 55 08             	mov    0x8(%ebp),%edx
 382:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
 386:	89 de                	mov    %ebx,%esi
 388:	3c 0a                	cmp    $0xa,%al
 38a:	74 04                	je     390 <gets+0x42>
 38c:	3c 0d                	cmp    $0xd,%al
 38e:	75 cf                	jne    35f <gets+0x11>
 390:	89 de                	mov    %ebx,%esi
 392:	8b 45 08             	mov    0x8(%ebp),%eax
 395:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 399:	8d 65 f4             	lea    -0xc(%ebp),%esp
 39c:	5b                   	pop    %ebx
 39d:	5e                   	pop    %esi
 39e:	5f                   	pop    %edi
 39f:	5d                   	pop    %ebp
 3a0:	c3                   	ret    

000003a1 <stat>:
 3a1:	55                   	push   %ebp
 3a2:	89 e5                	mov    %esp,%ebp
 3a4:	56                   	push   %esi
 3a5:	53                   	push   %ebx
 3a6:	83 ec 08             	sub    $0x8,%esp
 3a9:	6a 00                	push   $0x0
 3ab:	ff 75 08             	pushl  0x8(%ebp)
 3ae:	e8 db 00 00 00       	call   48e <open>
 3b3:	83 c4 10             	add    $0x10,%esp
 3b6:	85 c0                	test   %eax,%eax
 3b8:	78 24                	js     3de <stat+0x3d>
 3ba:	89 c3                	mov    %eax,%ebx
 3bc:	83 ec 08             	sub    $0x8,%esp
 3bf:	ff 75 0c             	pushl  0xc(%ebp)
 3c2:	50                   	push   %eax
 3c3:	e8 de 00 00 00       	call   4a6 <fstat>
 3c8:	89 c6                	mov    %eax,%esi
 3ca:	89 1c 24             	mov    %ebx,(%esp)
 3cd:	e8 a4 00 00 00       	call   476 <close>
 3d2:	83 c4 10             	add    $0x10,%esp
 3d5:	89 f0                	mov    %esi,%eax
 3d7:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3da:	5b                   	pop    %ebx
 3db:	5e                   	pop    %esi
 3dc:	5d                   	pop    %ebp
 3dd:	c3                   	ret    
 3de:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3e3:	eb f0                	jmp    3d5 <stat+0x34>

000003e5 <atoi>:
 3e5:	55                   	push   %ebp
 3e6:	89 e5                	mov    %esp,%ebp
 3e8:	53                   	push   %ebx
 3e9:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3ec:	0f b6 11             	movzbl (%ecx),%edx
 3ef:	8d 42 d0             	lea    -0x30(%edx),%eax
 3f2:	3c 09                	cmp    $0x9,%al
 3f4:	77 20                	ja     416 <atoi+0x31>
 3f6:	b8 00 00 00 00       	mov    $0x0,%eax
 3fb:	83 c1 01             	add    $0x1,%ecx
 3fe:	8d 04 80             	lea    (%eax,%eax,4),%eax
 401:	0f be d2             	movsbl %dl,%edx
 404:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
 408:	0f b6 11             	movzbl (%ecx),%edx
 40b:	8d 5a d0             	lea    -0x30(%edx),%ebx
 40e:	80 fb 09             	cmp    $0x9,%bl
 411:	76 e8                	jbe    3fb <atoi+0x16>
 413:	5b                   	pop    %ebx
 414:	5d                   	pop    %ebp
 415:	c3                   	ret    
 416:	b8 00 00 00 00       	mov    $0x0,%eax
 41b:	eb f6                	jmp    413 <atoi+0x2e>

0000041d <memmove>:
 41d:	55                   	push   %ebp
 41e:	89 e5                	mov    %esp,%ebp
 420:	56                   	push   %esi
 421:	53                   	push   %ebx
 422:	8b 45 08             	mov    0x8(%ebp),%eax
 425:	8b 75 0c             	mov    0xc(%ebp),%esi
 428:	8b 5d 10             	mov    0x10(%ebp),%ebx
 42b:	85 db                	test   %ebx,%ebx
 42d:	7e 13                	jle    442 <memmove+0x25>
 42f:	ba 00 00 00 00       	mov    $0x0,%edx
 434:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 438:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 43b:	83 c2 01             	add    $0x1,%edx
 43e:	39 d3                	cmp    %edx,%ebx
 440:	75 f2                	jne    434 <memmove+0x17>
 442:	5b                   	pop    %ebx
 443:	5e                   	pop    %esi
 444:	5d                   	pop    %ebp
 445:	c3                   	ret    

00000446 <fork>:
 446:	b8 01 00 00 00       	mov    $0x1,%eax
 44b:	cd 40                	int    $0x40
 44d:	c3                   	ret    

0000044e <exit>:
 44e:	b8 02 00 00 00       	mov    $0x2,%eax
 453:	cd 40                	int    $0x40
 455:	c3                   	ret    

00000456 <wait>:
 456:	b8 03 00 00 00       	mov    $0x3,%eax
 45b:	cd 40                	int    $0x40
 45d:	c3                   	ret    

0000045e <pipe>:
 45e:	b8 04 00 00 00       	mov    $0x4,%eax
 463:	cd 40                	int    $0x40
 465:	c3                   	ret    

00000466 <read>:
 466:	b8 05 00 00 00       	mov    $0x5,%eax
 46b:	cd 40                	int    $0x40
 46d:	c3                   	ret    

0000046e <write>:
 46e:	b8 10 00 00 00       	mov    $0x10,%eax
 473:	cd 40                	int    $0x40
 475:	c3                   	ret    

00000476 <close>:
 476:	b8 15 00 00 00       	mov    $0x15,%eax
 47b:	cd 40                	int    $0x40
 47d:	c3                   	ret    

0000047e <kill>:
 47e:	b8 06 00 00 00       	mov    $0x6,%eax
 483:	cd 40                	int    $0x40
 485:	c3                   	ret    

00000486 <exec>:
 486:	b8 07 00 00 00       	mov    $0x7,%eax
 48b:	cd 40                	int    $0x40
 48d:	c3                   	ret    

0000048e <open>:
 48e:	b8 0f 00 00 00       	mov    $0xf,%eax
 493:	cd 40                	int    $0x40
 495:	c3                   	ret    

00000496 <mknod>:
 496:	b8 11 00 00 00       	mov    $0x11,%eax
 49b:	cd 40                	int    $0x40
 49d:	c3                   	ret    

0000049e <unlink>:
 49e:	b8 12 00 00 00       	mov    $0x12,%eax
 4a3:	cd 40                	int    $0x40
 4a5:	c3                   	ret    

000004a6 <fstat>:
 4a6:	b8 08 00 00 00       	mov    $0x8,%eax
 4ab:	cd 40                	int    $0x40
 4ad:	c3                   	ret    

000004ae <link>:
 4ae:	b8 13 00 00 00       	mov    $0x13,%eax
 4b3:	cd 40                	int    $0x40
 4b5:	c3                   	ret    

000004b6 <mkdir>:
 4b6:	b8 14 00 00 00       	mov    $0x14,%eax
 4bb:	cd 40                	int    $0x40
 4bd:	c3                   	ret    

000004be <chdir>:
 4be:	b8 09 00 00 00       	mov    $0x9,%eax
 4c3:	cd 40                	int    $0x40
 4c5:	c3                   	ret    

000004c6 <dup>:
 4c6:	b8 0a 00 00 00       	mov    $0xa,%eax
 4cb:	cd 40                	int    $0x40
 4cd:	c3                   	ret    

000004ce <getpid>:
 4ce:	b8 0b 00 00 00       	mov    $0xb,%eax
 4d3:	cd 40                	int    $0x40
 4d5:	c3                   	ret    

000004d6 <sbrk>:
 4d6:	b8 0c 00 00 00       	mov    $0xc,%eax
 4db:	cd 40                	int    $0x40
 4dd:	c3                   	ret    

000004de <sleep>:
 4de:	b8 0d 00 00 00       	mov    $0xd,%eax
 4e3:	cd 40                	int    $0x40
 4e5:	c3                   	ret    

000004e6 <uptime>:
 4e6:	b8 0e 00 00 00       	mov    $0xe,%eax
 4eb:	cd 40                	int    $0x40
 4ed:	c3                   	ret    

000004ee <getlevel>:
 4ee:	b8 16 00 00 00       	mov    $0x16,%eax
 4f3:	cd 40                	int    $0x40
 4f5:	c3                   	ret    

000004f6 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 4f6:	55                   	push   %ebp
 4f7:	89 e5                	mov    %esp,%ebp
 4f9:	57                   	push   %edi
 4fa:	56                   	push   %esi
 4fb:	53                   	push   %ebx
 4fc:	83 ec 3c             	sub    $0x3c,%esp
 4ff:	89 c6                	mov    %eax,%esi
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 501:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 505:	74 14                	je     51b <printint+0x25>
 507:	85 d2                	test   %edx,%edx
 509:	79 10                	jns    51b <printint+0x25>
    neg = 1;
    x = -xx;
 50b:	f7 da                	neg    %edx
    neg = 1;
 50d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 514:	bf 00 00 00 00       	mov    $0x0,%edi
 519:	eb 0b                	jmp    526 <printint+0x30>
  neg = 0;
 51b:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 522:	eb f0                	jmp    514 <printint+0x1e>
  do{
    buf[i++] = digits[x % base];
 524:	89 df                	mov    %ebx,%edi
 526:	8d 5f 01             	lea    0x1(%edi),%ebx
 529:	89 d0                	mov    %edx,%eax
 52b:	ba 00 00 00 00       	mov    $0x0,%edx
 530:	f7 f1                	div    %ecx
 532:	0f b6 92 d8 08 00 00 	movzbl 0x8d8(%edx),%edx
 539:	88 54 1d d7          	mov    %dl,-0x29(%ebp,%ebx,1)
  }while((x /= base) != 0);
 53d:	89 c2                	mov    %eax,%edx
 53f:	85 c0                	test   %eax,%eax
 541:	75 e1                	jne    524 <printint+0x2e>
  if(neg)
 543:	83 7d c4 00          	cmpl   $0x0,-0x3c(%ebp)
 547:	74 08                	je     551 <printint+0x5b>
    buf[i++] = '-';
 549:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 54e:	8d 5f 02             	lea    0x2(%edi),%ebx

  while(--i >= 0)
 551:	83 eb 01             	sub    $0x1,%ebx
 554:	78 22                	js     578 <printint+0x82>
  write(fd, &c, 1);
 556:	8d 7d d7             	lea    -0x29(%ebp),%edi
 559:	0f b6 44 1d d8       	movzbl -0x28(%ebp,%ebx,1),%eax
 55e:	88 45 d7             	mov    %al,-0x29(%ebp)
 561:	83 ec 04             	sub    $0x4,%esp
 564:	6a 01                	push   $0x1
 566:	57                   	push   %edi
 567:	56                   	push   %esi
 568:	e8 01 ff ff ff       	call   46e <write>
  while(--i >= 0)
 56d:	83 eb 01             	sub    $0x1,%ebx
 570:	83 c4 10             	add    $0x10,%esp
 573:	83 fb ff             	cmp    $0xffffffff,%ebx
 576:	75 e1                	jne    559 <printint+0x63>
    putc(fd, buf[i]);
}
 578:	8d 65 f4             	lea    -0xc(%ebp),%esp
 57b:	5b                   	pop    %ebx
 57c:	5e                   	pop    %esi
 57d:	5f                   	pop    %edi
 57e:	5d                   	pop    %ebp
 57f:	c3                   	ret    

00000580 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	57                   	push   %edi
 584:	56                   	push   %esi
 585:	53                   	push   %ebx
 586:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 589:	8b 75 0c             	mov    0xc(%ebp),%esi
 58c:	0f b6 1e             	movzbl (%esi),%ebx
 58f:	84 db                	test   %bl,%bl
 591:	0f 84 b1 01 00 00    	je     748 <printf+0x1c8>
 597:	83 c6 01             	add    $0x1,%esi
  ap = (uint*)(void*)&fmt + 1;
 59a:	8d 45 10             	lea    0x10(%ebp),%eax
 59d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  state = 0;
 5a0:	bf 00 00 00 00       	mov    $0x0,%edi
 5a5:	eb 2d                	jmp    5d4 <printf+0x54>
 5a7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
  write(fd, &c, 1);
 5aa:	83 ec 04             	sub    $0x4,%esp
 5ad:	6a 01                	push   $0x1
 5af:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 5b2:	50                   	push   %eax
 5b3:	ff 75 08             	pushl  0x8(%ebp)
 5b6:	e8 b3 fe ff ff       	call   46e <write>
 5bb:	83 c4 10             	add    $0x10,%esp
 5be:	eb 05                	jmp    5c5 <printf+0x45>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 5c0:	83 ff 25             	cmp    $0x25,%edi
 5c3:	74 22                	je     5e7 <printf+0x67>
 5c5:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 5c8:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 5cc:	84 db                	test   %bl,%bl
 5ce:	0f 84 74 01 00 00    	je     748 <printf+0x1c8>
    c = fmt[i] & 0xff;
 5d4:	0f be d3             	movsbl %bl,%edx
 5d7:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 5da:	85 ff                	test   %edi,%edi
 5dc:	75 e2                	jne    5c0 <printf+0x40>
      if(c == '%'){
 5de:	83 f8 25             	cmp    $0x25,%eax
 5e1:	75 c4                	jne    5a7 <printf+0x27>
        state = '%';
 5e3:	89 c7                	mov    %eax,%edi
 5e5:	eb de                	jmp    5c5 <printf+0x45>
      if(c == 'd'){
 5e7:	83 f8 64             	cmp    $0x64,%eax
 5ea:	74 59                	je     645 <printf+0xc5>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 5ec:	81 e2 f7 00 00 00    	and    $0xf7,%edx
 5f2:	83 fa 70             	cmp    $0x70,%edx
 5f5:	74 7a                	je     671 <printf+0xf1>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 5f7:	83 f8 73             	cmp    $0x73,%eax
 5fa:	0f 84 9d 00 00 00    	je     69d <printf+0x11d>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 600:	83 f8 63             	cmp    $0x63,%eax
 603:	0f 84 f2 00 00 00    	je     6fb <printf+0x17b>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 609:	83 f8 25             	cmp    $0x25,%eax
 60c:	0f 84 15 01 00 00    	je     727 <printf+0x1a7>
 612:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 616:	83 ec 04             	sub    $0x4,%esp
 619:	6a 01                	push   $0x1
 61b:	8d 45 e7             	lea    -0x19(%ebp),%eax
 61e:	50                   	push   %eax
 61f:	ff 75 08             	pushl  0x8(%ebp)
 622:	e8 47 fe ff ff       	call   46e <write>
 627:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 62a:	83 c4 0c             	add    $0xc,%esp
 62d:	6a 01                	push   $0x1
 62f:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 632:	50                   	push   %eax
 633:	ff 75 08             	pushl  0x8(%ebp)
 636:	e8 33 fe ff ff       	call   46e <write>
 63b:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 63e:	bf 00 00 00 00       	mov    $0x0,%edi
 643:	eb 80                	jmp    5c5 <printf+0x45>
        printint(fd, *ap, 10, 1);
 645:	83 ec 0c             	sub    $0xc,%esp
 648:	6a 01                	push   $0x1
 64a:	b9 0a 00 00 00       	mov    $0xa,%ecx
 64f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 652:	8b 17                	mov    (%edi),%edx
 654:	8b 45 08             	mov    0x8(%ebp),%eax
 657:	e8 9a fe ff ff       	call   4f6 <printint>
        ap++;
 65c:	89 f8                	mov    %edi,%eax
 65e:	83 c0 04             	add    $0x4,%eax
 661:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 664:	83 c4 10             	add    $0x10,%esp
      state = 0;
 667:	bf 00 00 00 00       	mov    $0x0,%edi
 66c:	e9 54 ff ff ff       	jmp    5c5 <printf+0x45>
        printint(fd, *ap, 16, 0);
 671:	83 ec 0c             	sub    $0xc,%esp
 674:	6a 00                	push   $0x0
 676:	b9 10 00 00 00       	mov    $0x10,%ecx
 67b:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 67e:	8b 17                	mov    (%edi),%edx
 680:	8b 45 08             	mov    0x8(%ebp),%eax
 683:	e8 6e fe ff ff       	call   4f6 <printint>
        ap++;
 688:	89 f8                	mov    %edi,%eax
 68a:	83 c0 04             	add    $0x4,%eax
 68d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 690:	83 c4 10             	add    $0x10,%esp
      state = 0;
 693:	bf 00 00 00 00       	mov    $0x0,%edi
 698:	e9 28 ff ff ff       	jmp    5c5 <printf+0x45>
        s = (char*)*ap;
 69d:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 6a0:	8b 01                	mov    (%ecx),%eax
        ap++;
 6a2:	83 c1 04             	add    $0x4,%ecx
 6a5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
        if(s == 0)
 6a8:	85 c0                	test   %eax,%eax
 6aa:	74 13                	je     6bf <printf+0x13f>
        s = (char*)*ap;
 6ac:	89 c3                	mov    %eax,%ebx
        while(*s != 0){
 6ae:	0f b6 00             	movzbl (%eax),%eax
      state = 0;
 6b1:	bf 00 00 00 00       	mov    $0x0,%edi
        while(*s != 0){
 6b6:	84 c0                	test   %al,%al
 6b8:	75 0f                	jne    6c9 <printf+0x149>
 6ba:	e9 06 ff ff ff       	jmp    5c5 <printf+0x45>
          s = "(null)";
 6bf:	bb ce 08 00 00       	mov    $0x8ce,%ebx
        while(*s != 0){
 6c4:	b8 28 00 00 00       	mov    $0x28,%eax
  write(fd, &c, 1);
 6c9:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 6cc:	89 75 d0             	mov    %esi,-0x30(%ebp)
 6cf:	8b 75 08             	mov    0x8(%ebp),%esi
 6d2:	88 45 e3             	mov    %al,-0x1d(%ebp)
 6d5:	83 ec 04             	sub    $0x4,%esp
 6d8:	6a 01                	push   $0x1
 6da:	57                   	push   %edi
 6db:	56                   	push   %esi
 6dc:	e8 8d fd ff ff       	call   46e <write>
          s++;
 6e1:	83 c3 01             	add    $0x1,%ebx
        while(*s != 0){
 6e4:	0f b6 03             	movzbl (%ebx),%eax
 6e7:	83 c4 10             	add    $0x10,%esp
 6ea:	84 c0                	test   %al,%al
 6ec:	75 e4                	jne    6d2 <printf+0x152>
 6ee:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 6f1:	bf 00 00 00 00       	mov    $0x0,%edi
 6f6:	e9 ca fe ff ff       	jmp    5c5 <printf+0x45>
        putc(fd, *ap);
 6fb:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 6fe:	8b 07                	mov    (%edi),%eax
 700:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 703:	83 ec 04             	sub    $0x4,%esp
 706:	6a 01                	push   $0x1
 708:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 70b:	50                   	push   %eax
 70c:	ff 75 08             	pushl  0x8(%ebp)
 70f:	e8 5a fd ff ff       	call   46e <write>
        ap++;
 714:	83 c7 04             	add    $0x4,%edi
 717:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 71a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 71d:	bf 00 00 00 00       	mov    $0x0,%edi
 722:	e9 9e fe ff ff       	jmp    5c5 <printf+0x45>
 727:	88 5d e5             	mov    %bl,-0x1b(%ebp)
  write(fd, &c, 1);
 72a:	83 ec 04             	sub    $0x4,%esp
 72d:	6a 01                	push   $0x1
 72f:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 732:	50                   	push   %eax
 733:	ff 75 08             	pushl  0x8(%ebp)
 736:	e8 33 fd ff ff       	call   46e <write>
 73b:	83 c4 10             	add    $0x10,%esp
      state = 0;
 73e:	bf 00 00 00 00       	mov    $0x0,%edi
 743:	e9 7d fe ff ff       	jmp    5c5 <printf+0x45>
    }
  }
}
 748:	8d 65 f4             	lea    -0xc(%ebp),%esp
 74b:	5b                   	pop    %ebx
 74c:	5e                   	pop    %esi
 74d:	5f                   	pop    %edi
 74e:	5d                   	pop    %ebp
 74f:	c3                   	ret    

00000750 <free>:
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	57                   	push   %edi
 754:	56                   	push   %esi
 755:	53                   	push   %ebx
 756:	8b 5d 08             	mov    0x8(%ebp),%ebx
 759:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 75c:	a1 00 0c 00 00       	mov    0xc00,%eax
 761:	eb 0c                	jmp    76f <free+0x1f>
 763:	8b 10                	mov    (%eax),%edx
 765:	39 c2                	cmp    %eax,%edx
 767:	77 04                	ja     76d <free+0x1d>
 769:	39 ca                	cmp    %ecx,%edx
 76b:	77 10                	ja     77d <free+0x2d>
 76d:	89 d0                	mov    %edx,%eax
 76f:	39 c8                	cmp    %ecx,%eax
 771:	73 f0                	jae    763 <free+0x13>
 773:	8b 10                	mov    (%eax),%edx
 775:	39 ca                	cmp    %ecx,%edx
 777:	77 04                	ja     77d <free+0x2d>
 779:	39 c2                	cmp    %eax,%edx
 77b:	77 f0                	ja     76d <free+0x1d>
 77d:	8b 73 fc             	mov    -0x4(%ebx),%esi
 780:	8b 10                	mov    (%eax),%edx
 782:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 785:	39 fa                	cmp    %edi,%edx
 787:	74 19                	je     7a2 <free+0x52>
 789:	89 53 f8             	mov    %edx,-0x8(%ebx)
 78c:	8b 50 04             	mov    0x4(%eax),%edx
 78f:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 792:	39 f1                	cmp    %esi,%ecx
 794:	74 1b                	je     7b1 <free+0x61>
 796:	89 08                	mov    %ecx,(%eax)
 798:	a3 00 0c 00 00       	mov    %eax,0xc00
 79d:	5b                   	pop    %ebx
 79e:	5e                   	pop    %esi
 79f:	5f                   	pop    %edi
 7a0:	5d                   	pop    %ebp
 7a1:	c3                   	ret    
 7a2:	03 72 04             	add    0x4(%edx),%esi
 7a5:	89 73 fc             	mov    %esi,-0x4(%ebx)
 7a8:	8b 10                	mov    (%eax),%edx
 7aa:	8b 12                	mov    (%edx),%edx
 7ac:	89 53 f8             	mov    %edx,-0x8(%ebx)
 7af:	eb db                	jmp    78c <free+0x3c>
 7b1:	03 53 fc             	add    -0x4(%ebx),%edx
 7b4:	89 50 04             	mov    %edx,0x4(%eax)
 7b7:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7ba:	89 10                	mov    %edx,(%eax)
 7bc:	eb da                	jmp    798 <free+0x48>

000007be <malloc>:
 7be:	55                   	push   %ebp
 7bf:	89 e5                	mov    %esp,%ebp
 7c1:	57                   	push   %edi
 7c2:	56                   	push   %esi
 7c3:	53                   	push   %ebx
 7c4:	83 ec 0c             	sub    $0xc,%esp
 7c7:	8b 45 08             	mov    0x8(%ebp),%eax
 7ca:	8d 58 07             	lea    0x7(%eax),%ebx
 7cd:	c1 eb 03             	shr    $0x3,%ebx
 7d0:	83 c3 01             	add    $0x1,%ebx
 7d3:	8b 15 00 0c 00 00    	mov    0xc00,%edx
 7d9:	85 d2                	test   %edx,%edx
 7db:	74 20                	je     7fd <malloc+0x3f>
 7dd:	8b 02                	mov    (%edx),%eax
 7df:	8b 48 04             	mov    0x4(%eax),%ecx
 7e2:	39 cb                	cmp    %ecx,%ebx
 7e4:	76 3c                	jbe    822 <malloc+0x64>
 7e6:	81 fb 00 10 00 00    	cmp    $0x1000,%ebx
 7ec:	be 00 10 00 00       	mov    $0x1000,%esi
 7f1:	0f 43 f3             	cmovae %ebx,%esi
 7f4:	8d 3c f5 00 00 00 00 	lea    0x0(,%esi,8),%edi
 7fb:	eb 70                	jmp    86d <malloc+0xaf>
 7fd:	c7 05 00 0c 00 00 04 	movl   $0xc04,0xc00
 804:	0c 00 00 
 807:	c7 05 04 0c 00 00 04 	movl   $0xc04,0xc04
 80e:	0c 00 00 
 811:	c7 05 08 0c 00 00 00 	movl   $0x0,0xc08
 818:	00 00 00 
 81b:	ba 04 0c 00 00       	mov    $0xc04,%edx
 820:	eb bb                	jmp    7dd <malloc+0x1f>
 822:	39 cb                	cmp    %ecx,%ebx
 824:	74 1c                	je     842 <malloc+0x84>
 826:	29 d9                	sub    %ebx,%ecx
 828:	89 48 04             	mov    %ecx,0x4(%eax)
 82b:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
 82e:	89 58 04             	mov    %ebx,0x4(%eax)
 831:	89 15 00 0c 00 00    	mov    %edx,0xc00
 837:	83 c0 08             	add    $0x8,%eax
 83a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 83d:	5b                   	pop    %ebx
 83e:	5e                   	pop    %esi
 83f:	5f                   	pop    %edi
 840:	5d                   	pop    %ebp
 841:	c3                   	ret    
 842:	8b 08                	mov    (%eax),%ecx
 844:	89 0a                	mov    %ecx,(%edx)
 846:	eb e9                	jmp    831 <malloc+0x73>
 848:	89 70 04             	mov    %esi,0x4(%eax)
 84b:	83 ec 0c             	sub    $0xc,%esp
 84e:	83 c0 08             	add    $0x8,%eax
 851:	50                   	push   %eax
 852:	e8 f9 fe ff ff       	call   750 <free>
 857:	8b 15 00 0c 00 00    	mov    0xc00,%edx
 85d:	83 c4 10             	add    $0x10,%esp
 860:	85 d2                	test   %edx,%edx
 862:	74 2b                	je     88f <malloc+0xd1>
 864:	8b 02                	mov    (%edx),%eax
 866:	8b 48 04             	mov    0x4(%eax),%ecx
 869:	39 d9                	cmp    %ebx,%ecx
 86b:	73 b5                	jae    822 <malloc+0x64>
 86d:	89 c2                	mov    %eax,%edx
 86f:	39 05 00 0c 00 00    	cmp    %eax,0xc00
 875:	75 ed                	jne    864 <malloc+0xa6>
 877:	83 ec 0c             	sub    $0xc,%esp
 87a:	57                   	push   %edi
 87b:	e8 56 fc ff ff       	call   4d6 <sbrk>
 880:	83 c4 10             	add    $0x10,%esp
 883:	83 f8 ff             	cmp    $0xffffffff,%eax
 886:	75 c0                	jne    848 <malloc+0x8a>
 888:	b8 00 00 00 00       	mov    $0x0,%eax
 88d:	eb ab                	jmp    83a <malloc+0x7c>
 88f:	b8 00 00 00 00       	mov    $0x0,%eax
 894:	eb a4                	jmp    83a <malloc+0x7c>
