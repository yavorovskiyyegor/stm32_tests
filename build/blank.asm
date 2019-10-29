
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   00000188  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         000007a0  08000188  08000188  00010188  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000020  08000928  08000928  00010928  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  08000948  08000948  00010948  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  08000950  08000950  00010950  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000460  20000000  08000954  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .ccmram       00000000  10000000  10000000  00020460  2**0  CONTENTS
  7 .bss          00000028  20000460  20000460  00020460  2**2  ALLOC
  8 ._user_heap_stack 00000600  20000488  20000488  00020460  2**0  ALLOC
  9 .ARM.attributes 0000002a  00000000  00000000  00020460  2**0  CONTENTS, READONLY
 10 .comment      00000070  00000000  00000000  0002048a  2**0  CONTENTS, READONLY
 11 .debug_info   00002bc9  00000000  00000000  000204fa  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_abbrev 00000ad1  00000000  00000000  000230c3  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_loc    00000677  00000000  00000000  00023b94  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_aranges 00000100  00000000  00000000  0002420b  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_line   000008e3  00000000  00000000  0002430b  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_str    00000c15  00000000  00000000  00024bee  2**0  CONTENTS, READONLY, DEBUGGING
 17 .debug_frame  00000250  00000000  00000000  00025804  2**2  CONTENTS, READONLY, DEBUGGING
 18 .debug_ranges 00000070  00000000  00000000  00025a54  2**0  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

08000188 <deregister_tm_clones>:
 8000188:	4b04      	ldr	r3, [pc, #16]	; (800019c <deregister_tm_clones+0x14>)
 800018a:	4805      	ldr	r0, [pc, #20]	; (80001a0 <deregister_tm_clones+0x18>)
 800018c:	1a1b      	subs	r3, r3, r0
 800018e:	2b06      	cmp	r3, #6
 8000190:	d902      	bls.n	8000198 <deregister_tm_clones+0x10>
 8000192:	4b04      	ldr	r3, [pc, #16]	; (80001a4 <deregister_tm_clones+0x1c>)
 8000194:	b103      	cbz	r3, 8000198 <deregister_tm_clones+0x10>
 8000196:	4718      	bx	r3
 8000198:	4770      	bx	lr
 800019a:	bf00      	nop
 800019c:	20000463 	.word	0x20000463
 80001a0:	20000460 	.word	0x20000460
 80001a4:	00000000 	.word	0x00000000

080001a8 <register_tm_clones>:
 80001a8:	4905      	ldr	r1, [pc, #20]	; (80001c0 <register_tm_clones+0x18>)
 80001aa:	4806      	ldr	r0, [pc, #24]	; (80001c4 <register_tm_clones+0x1c>)
 80001ac:	1a09      	subs	r1, r1, r0
 80001ae:	1089      	asrs	r1, r1, #2
 80001b0:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
 80001b4:	1049      	asrs	r1, r1, #1
 80001b6:	d002      	beq.n	80001be <register_tm_clones+0x16>
 80001b8:	4b03      	ldr	r3, [pc, #12]	; (80001c8 <register_tm_clones+0x20>)
 80001ba:	b103      	cbz	r3, 80001be <register_tm_clones+0x16>
 80001bc:	4718      	bx	r3
 80001be:	4770      	bx	lr
 80001c0:	20000460 	.word	0x20000460
 80001c4:	20000460 	.word	0x20000460
 80001c8:	00000000 	.word	0x00000000

080001cc <__do_global_dtors_aux>:
 80001cc:	b510      	push	{r4, lr}
 80001ce:	4c06      	ldr	r4, [pc, #24]	; (80001e8 <__do_global_dtors_aux+0x1c>)
 80001d0:	7823      	ldrb	r3, [r4, #0]
 80001d2:	b943      	cbnz	r3, 80001e6 <__do_global_dtors_aux+0x1a>
 80001d4:	f7ff ffd8 	bl	8000188 <deregister_tm_clones>
 80001d8:	4b04      	ldr	r3, [pc, #16]	; (80001ec <__do_global_dtors_aux+0x20>)
 80001da:	b113      	cbz	r3, 80001e2 <__do_global_dtors_aux+0x16>
 80001dc:	4804      	ldr	r0, [pc, #16]	; (80001f0 <__do_global_dtors_aux+0x24>)
 80001de:	f3af 8000 	nop.w
 80001e2:	2301      	movs	r3, #1
 80001e4:	7023      	strb	r3, [r4, #0]
 80001e6:	bd10      	pop	{r4, pc}
 80001e8:	20000460 	.word	0x20000460
 80001ec:	00000000 	.word	0x00000000
 80001f0:	08000910 	.word	0x08000910

080001f4 <frame_dummy>:
 80001f4:	b508      	push	{r3, lr}
 80001f6:	4b08      	ldr	r3, [pc, #32]	; (8000218 <frame_dummy+0x24>)
 80001f8:	b11b      	cbz	r3, 8000202 <frame_dummy+0xe>
 80001fa:	4808      	ldr	r0, [pc, #32]	; (800021c <frame_dummy+0x28>)
 80001fc:	4908      	ldr	r1, [pc, #32]	; (8000220 <frame_dummy+0x2c>)
 80001fe:	f3af 8000 	nop.w
 8000202:	4808      	ldr	r0, [pc, #32]	; (8000224 <frame_dummy+0x30>)
 8000204:	6803      	ldr	r3, [r0, #0]
 8000206:	b913      	cbnz	r3, 800020e <frame_dummy+0x1a>
 8000208:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800020c:	e7cc      	b.n	80001a8 <register_tm_clones>
 800020e:	4b06      	ldr	r3, [pc, #24]	; (8000228 <frame_dummy+0x34>)
 8000210:	2b00      	cmp	r3, #0
 8000212:	d0f9      	beq.n	8000208 <frame_dummy+0x14>
 8000214:	4798      	blx	r3
 8000216:	e7f7      	b.n	8000208 <frame_dummy+0x14>
 8000218:	00000000 	.word	0x00000000
 800021c:	08000910 	.word	0x08000910
 8000220:	20000464 	.word	0x20000464
 8000224:	20000460 	.word	0x20000460
 8000228:	00000000 	.word	0x00000000

0800022c <ch2dsp>:
 800022c:	b480      	push	{r7}
 800022e:	b085      	sub	sp, #20
 8000230:	af00      	add	r7, sp, #0
 8000232:	6078      	str	r0, [r7, #4]
 8000234:	460b      	mov	r3, r1
 8000236:	70fb      	strb	r3, [r7, #3]
 8000238:	2300      	movs	r3, #0
 800023a:	73fb      	strb	r3, [r7, #15]
 800023c:	4b2d      	ldr	r3, [pc, #180]	; (80002f4 <ch2dsp+0xc8>)
 800023e:	781b      	ldrb	r3, [r3, #0]
 8000240:	b2db      	uxtb	r3, r3
 8000242:	78fa      	ldrb	r2, [r7, #3]
 8000244:	429a      	cmp	r2, r3
 8000246:	d80a      	bhi.n	800025e <ch2dsp+0x32>
 8000248:	4b2a      	ldr	r3, [pc, #168]	; (80002f4 <ch2dsp+0xc8>)
 800024a:	781b      	ldrb	r3, [r3, #0]
 800024c:	b2db      	uxtb	r3, r3
 800024e:	461a      	mov	r2, r3
 8000250:	78fb      	ldrb	r3, [r7, #3]
 8000252:	1ad3      	subs	r3, r2, r3
 8000254:	4a28      	ldr	r2, [pc, #160]	; (80002f8 <ch2dsp+0xcc>)
 8000256:	7812      	ldrb	r2, [r2, #0]
 8000258:	b2d2      	uxtb	r2, r2
 800025a:	4293      	cmp	r3, r2
 800025c:	db01      	blt.n	8000262 <ch2dsp+0x36>
 800025e:	2300      	movs	r3, #0
 8000260:	e042      	b.n	80002e8 <ch2dsp+0xbc>
 8000262:	4b24      	ldr	r3, [pc, #144]	; (80002f4 <ch2dsp+0xc8>)
 8000264:	781b      	ldrb	r3, [r3, #0]
 8000266:	b2db      	uxtb	r3, r3
 8000268:	461a      	mov	r2, r3
 800026a:	78fb      	ldrb	r3, [r7, #3]
 800026c:	1ad3      	subs	r3, r2, r3
 800026e:	461a      	mov	r2, r3
 8000270:	687b      	ldr	r3, [r7, #4]
 8000272:	4413      	add	r3, r2
 8000274:	781b      	ldrb	r3, [r3, #0]
 8000276:	73fb      	strb	r3, [r7, #15]
 8000278:	7bfb      	ldrb	r3, [r7, #15]
 800027a:	2b2f      	cmp	r3, #47	; 0x2f
 800027c:	d90e      	bls.n	800029c <ch2dsp+0x70>
 800027e:	7bfb      	ldrb	r3, [r7, #15]
 8000280:	2b39      	cmp	r3, #57	; 0x39
 8000282:	d902      	bls.n	800028a <ch2dsp+0x5e>
 8000284:	7bfb      	ldrb	r3, [r7, #15]
 8000286:	2b40      	cmp	r3, #64	; 0x40
 8000288:	d908      	bls.n	800029c <ch2dsp+0x70>
 800028a:	7bfb      	ldrb	r3, [r7, #15]
 800028c:	2b5a      	cmp	r3, #90	; 0x5a
 800028e:	d902      	bls.n	8000296 <ch2dsp+0x6a>
 8000290:	7bfb      	ldrb	r3, [r7, #15]
 8000292:	2b60      	cmp	r3, #96	; 0x60
 8000294:	d902      	bls.n	800029c <ch2dsp+0x70>
 8000296:	7bfb      	ldrb	r3, [r7, #15]
 8000298:	2b7a      	cmp	r3, #122	; 0x7a
 800029a:	d901      	bls.n	80002a0 <ch2dsp+0x74>
 800029c:	2300      	movs	r3, #0
 800029e:	e023      	b.n	80002e8 <ch2dsp+0xbc>
 80002a0:	7bfb      	ldrb	r3, [r7, #15]
 80002a2:	2b2f      	cmp	r3, #47	; 0x2f
 80002a4:	d908      	bls.n	80002b8 <ch2dsp+0x8c>
 80002a6:	7bfb      	ldrb	r3, [r7, #15]
 80002a8:	2b39      	cmp	r3, #57	; 0x39
 80002aa:	d805      	bhi.n	80002b8 <ch2dsp+0x8c>
 80002ac:	7bfb      	ldrb	r3, [r7, #15]
 80002ae:	3b30      	subs	r3, #48	; 0x30
 80002b0:	4a12      	ldr	r2, [pc, #72]	; (80002fc <ch2dsp+0xd0>)
 80002b2:	5cd3      	ldrb	r3, [r2, r3]
 80002b4:	b2db      	uxtb	r3, r3
 80002b6:	e017      	b.n	80002e8 <ch2dsp+0xbc>
 80002b8:	7bfb      	ldrb	r3, [r7, #15]
 80002ba:	2b40      	cmp	r3, #64	; 0x40
 80002bc:	d908      	bls.n	80002d0 <ch2dsp+0xa4>
 80002be:	7bfb      	ldrb	r3, [r7, #15]
 80002c0:	2b5a      	cmp	r3, #90	; 0x5a
 80002c2:	d805      	bhi.n	80002d0 <ch2dsp+0xa4>
 80002c4:	7bfb      	ldrb	r3, [r7, #15]
 80002c6:	3b41      	subs	r3, #65	; 0x41
 80002c8:	4a0d      	ldr	r2, [pc, #52]	; (8000300 <ch2dsp+0xd4>)
 80002ca:	5cd3      	ldrb	r3, [r2, r3]
 80002cc:	b2db      	uxtb	r3, r3
 80002ce:	e00b      	b.n	80002e8 <ch2dsp+0xbc>
 80002d0:	7bfb      	ldrb	r3, [r7, #15]
 80002d2:	2b60      	cmp	r3, #96	; 0x60
 80002d4:	d908      	bls.n	80002e8 <ch2dsp+0xbc>
 80002d6:	7bfb      	ldrb	r3, [r7, #15]
 80002d8:	2b7a      	cmp	r3, #122	; 0x7a
 80002da:	d805      	bhi.n	80002e8 <ch2dsp+0xbc>
 80002dc:	7bfb      	ldrb	r3, [r7, #15]
 80002de:	3b61      	subs	r3, #97	; 0x61
 80002e0:	4a07      	ldr	r2, [pc, #28]	; (8000300 <ch2dsp+0xd4>)
 80002e2:	5cd3      	ldrb	r3, [r2, r3]
 80002e4:	b2db      	uxtb	r3, r3
 80002e6:	e7ff      	b.n	80002e8 <ch2dsp+0xbc>
 80002e8:	4618      	mov	r0, r3
 80002ea:	3714      	adds	r7, #20
 80002ec:	46bd      	mov	sp, r7
 80002ee:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002f2:	4770      	bx	lr
 80002f4:	20000480 	.word	0x20000480
 80002f8:	20000031 	.word	0x20000031
 80002fc:	20000000 	.word	0x20000000
 8000300:	2000000c 	.word	0x2000000c

08000304 <Tim2Config>:
 8000304:	b480      	push	{r7}
 8000306:	af00      	add	r7, sp, #0
 8000308:	4a18      	ldr	r2, [pc, #96]	; (800036c <Tim2Config+0x68>)
 800030a:	4b18      	ldr	r3, [pc, #96]	; (800036c <Tim2Config+0x68>)
 800030c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800030e:	f043 0301 	orr.w	r3, r3, #1
 8000312:	6413      	str	r3, [r2, #64]	; 0x40
 8000314:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000318:	f240 32e7 	movw	r2, #999	; 0x3e7
 800031c:	62da      	str	r2, [r3, #44]	; 0x2c
 800031e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000322:	f44f 527a 	mov.w	r2, #16000	; 0x3e80
 8000326:	629a      	str	r2, [r3, #40]	; 0x28
 8000328:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800032c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000330:	681b      	ldr	r3, [r3, #0]
 8000332:	f043 0304 	orr.w	r3, r3, #4
 8000336:	6013      	str	r3, [r2, #0]
 8000338:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800033c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000340:	681b      	ldr	r3, [r3, #0]
 8000342:	f043 0301 	orr.w	r3, r3, #1
 8000346:	6013      	str	r3, [r2, #0]
 8000348:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800034c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000350:	68db      	ldr	r3, [r3, #12]
 8000352:	f043 0301 	orr.w	r3, r3, #1
 8000356:	60d3      	str	r3, [r2, #12]
 8000358:	4a05      	ldr	r2, [pc, #20]	; (8000370 <Tim2Config+0x6c>)
 800035a:	4b05      	ldr	r3, [pc, #20]	; (8000370 <Tim2Config+0x6c>)
 800035c:	681b      	ldr	r3, [r3, #0]
 800035e:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8000362:	6013      	str	r3, [r2, #0]
 8000364:	46bd      	mov	sp, r7
 8000366:	f85d 7b04 	ldr.w	r7, [sp], #4
 800036a:	4770      	bx	lr
 800036c:	40023800 	.word	0x40023800
 8000370:	e000e100 	.word	0xe000e100

08000374 <Tim3Config>:
 8000374:	b480      	push	{r7}
 8000376:	af00      	add	r7, sp, #0
 8000378:	4a14      	ldr	r2, [pc, #80]	; (80003cc <Tim3Config+0x58>)
 800037a:	4b14      	ldr	r3, [pc, #80]	; (80003cc <Tim3Config+0x58>)
 800037c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800037e:	f043 0302 	orr.w	r3, r3, #2
 8000382:	6413      	str	r3, [r2, #64]	; 0x40
 8000384:	4b12      	ldr	r3, [pc, #72]	; (80003d0 <Tim3Config+0x5c>)
 8000386:	2206      	movs	r2, #6
 8000388:	62da      	str	r2, [r3, #44]	; 0x2c
 800038a:	4b11      	ldr	r3, [pc, #68]	; (80003d0 <Tim3Config+0x5c>)
 800038c:	f44f 527a 	mov.w	r2, #16000	; 0x3e80
 8000390:	629a      	str	r2, [r3, #40]	; 0x28
 8000392:	4a0f      	ldr	r2, [pc, #60]	; (80003d0 <Tim3Config+0x5c>)
 8000394:	4b0e      	ldr	r3, [pc, #56]	; (80003d0 <Tim3Config+0x5c>)
 8000396:	681b      	ldr	r3, [r3, #0]
 8000398:	f043 0304 	orr.w	r3, r3, #4
 800039c:	6013      	str	r3, [r2, #0]
 800039e:	4a0c      	ldr	r2, [pc, #48]	; (80003d0 <Tim3Config+0x5c>)
 80003a0:	4b0b      	ldr	r3, [pc, #44]	; (80003d0 <Tim3Config+0x5c>)
 80003a2:	681b      	ldr	r3, [r3, #0]
 80003a4:	f043 0301 	orr.w	r3, r3, #1
 80003a8:	6013      	str	r3, [r2, #0]
 80003aa:	4a09      	ldr	r2, [pc, #36]	; (80003d0 <Tim3Config+0x5c>)
 80003ac:	4b08      	ldr	r3, [pc, #32]	; (80003d0 <Tim3Config+0x5c>)
 80003ae:	68db      	ldr	r3, [r3, #12]
 80003b0:	f043 0301 	orr.w	r3, r3, #1
 80003b4:	60d3      	str	r3, [r2, #12]
 80003b6:	4a07      	ldr	r2, [pc, #28]	; (80003d4 <Tim3Config+0x60>)
 80003b8:	4b06      	ldr	r3, [pc, #24]	; (80003d4 <Tim3Config+0x60>)
 80003ba:	681b      	ldr	r3, [r3, #0]
 80003bc:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 80003c0:	6013      	str	r3, [r2, #0]
 80003c2:	46bd      	mov	sp, r7
 80003c4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003c8:	4770      	bx	lr
 80003ca:	bf00      	nop
 80003cc:	40023800 	.word	0x40023800
 80003d0:	40000400 	.word	0x40000400
 80003d4:	e000e100 	.word	0xe000e100

080003d8 <TIM3_IRQHandler>:
 80003d8:	b598      	push	{r3, r4, r7, lr}
 80003da:	af00      	add	r7, sp, #0
 80003dc:	4b4a      	ldr	r3, [pc, #296]	; (8000508 <TIM3_IRQHandler+0x130>)
 80003de:	f44f 127c 	mov.w	r2, #4128768	; 0x3f0000
 80003e2:	619a      	str	r2, [r3, #24]
 80003e4:	4b49      	ldr	r3, [pc, #292]	; (800050c <TIM3_IRQHandler+0x134>)
 80003e6:	f44f 027f 	mov.w	r2, #16711680	; 0xff0000
 80003ea:	619a      	str	r2, [r3, #24]
 80003ec:	4b48      	ldr	r3, [pc, #288]	; (8000510 <TIM3_IRQHandler+0x138>)
 80003ee:	781b      	ldrb	r3, [r3, #0]
 80003f0:	2b05      	cmp	r3, #5
 80003f2:	d851      	bhi.n	8000498 <TIM3_IRQHandler+0xc0>
 80003f4:	a201      	add	r2, pc, #4	; (adr r2, 80003fc <TIM3_IRQHandler+0x24>)
 80003f6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80003fa:	bf00      	nop
 80003fc:	08000415 	.word	0x08000415
 8000400:	0800042b 	.word	0x0800042b
 8000404:	08000441 	.word	0x08000441
 8000408:	08000457 	.word	0x08000457
 800040c:	0800046d 	.word	0x0800046d
 8000410:	08000483 	.word	0x08000483
 8000414:	4c3d      	ldr	r4, [pc, #244]	; (800050c <TIM3_IRQHandler+0x134>)
 8000416:	483f      	ldr	r0, [pc, #252]	; (8000514 <TIM3_IRQHandler+0x13c>)
 8000418:	2100      	movs	r1, #0
 800041a:	f7ff ff07 	bl	800022c <ch2dsp>
 800041e:	4603      	mov	r3, r0
 8000420:	61a3      	str	r3, [r4, #24]
 8000422:	4b39      	ldr	r3, [pc, #228]	; (8000508 <TIM3_IRQHandler+0x130>)
 8000424:	2201      	movs	r2, #1
 8000426:	619a      	str	r2, [r3, #24]
 8000428:	e036      	b.n	8000498 <TIM3_IRQHandler+0xc0>
 800042a:	4c38      	ldr	r4, [pc, #224]	; (800050c <TIM3_IRQHandler+0x134>)
 800042c:	4839      	ldr	r0, [pc, #228]	; (8000514 <TIM3_IRQHandler+0x13c>)
 800042e:	2101      	movs	r1, #1
 8000430:	f7ff fefc 	bl	800022c <ch2dsp>
 8000434:	4603      	mov	r3, r0
 8000436:	61a3      	str	r3, [r4, #24]
 8000438:	4b33      	ldr	r3, [pc, #204]	; (8000508 <TIM3_IRQHandler+0x130>)
 800043a:	2202      	movs	r2, #2
 800043c:	619a      	str	r2, [r3, #24]
 800043e:	e02b      	b.n	8000498 <TIM3_IRQHandler+0xc0>
 8000440:	4c32      	ldr	r4, [pc, #200]	; (800050c <TIM3_IRQHandler+0x134>)
 8000442:	4834      	ldr	r0, [pc, #208]	; (8000514 <TIM3_IRQHandler+0x13c>)
 8000444:	2102      	movs	r1, #2
 8000446:	f7ff fef1 	bl	800022c <ch2dsp>
 800044a:	4603      	mov	r3, r0
 800044c:	61a3      	str	r3, [r4, #24]
 800044e:	4b2e      	ldr	r3, [pc, #184]	; (8000508 <TIM3_IRQHandler+0x130>)
 8000450:	2204      	movs	r2, #4
 8000452:	619a      	str	r2, [r3, #24]
 8000454:	e020      	b.n	8000498 <TIM3_IRQHandler+0xc0>
 8000456:	4c2d      	ldr	r4, [pc, #180]	; (800050c <TIM3_IRQHandler+0x134>)
 8000458:	482e      	ldr	r0, [pc, #184]	; (8000514 <TIM3_IRQHandler+0x13c>)
 800045a:	2103      	movs	r1, #3
 800045c:	f7ff fee6 	bl	800022c <ch2dsp>
 8000460:	4603      	mov	r3, r0
 8000462:	61a3      	str	r3, [r4, #24]
 8000464:	4b28      	ldr	r3, [pc, #160]	; (8000508 <TIM3_IRQHandler+0x130>)
 8000466:	2208      	movs	r2, #8
 8000468:	619a      	str	r2, [r3, #24]
 800046a:	e015      	b.n	8000498 <TIM3_IRQHandler+0xc0>
 800046c:	4c27      	ldr	r4, [pc, #156]	; (800050c <TIM3_IRQHandler+0x134>)
 800046e:	4829      	ldr	r0, [pc, #164]	; (8000514 <TIM3_IRQHandler+0x13c>)
 8000470:	2104      	movs	r1, #4
 8000472:	f7ff fedb 	bl	800022c <ch2dsp>
 8000476:	4603      	mov	r3, r0
 8000478:	61a3      	str	r3, [r4, #24]
 800047a:	4b23      	ldr	r3, [pc, #140]	; (8000508 <TIM3_IRQHandler+0x130>)
 800047c:	2210      	movs	r2, #16
 800047e:	619a      	str	r2, [r3, #24]
 8000480:	e00a      	b.n	8000498 <TIM3_IRQHandler+0xc0>
 8000482:	4c22      	ldr	r4, [pc, #136]	; (800050c <TIM3_IRQHandler+0x134>)
 8000484:	4823      	ldr	r0, [pc, #140]	; (8000514 <TIM3_IRQHandler+0x13c>)
 8000486:	2105      	movs	r1, #5
 8000488:	f7ff fed0 	bl	800022c <ch2dsp>
 800048c:	4603      	mov	r3, r0
 800048e:	61a3      	str	r3, [r4, #24]
 8000490:	4b1d      	ldr	r3, [pc, #116]	; (8000508 <TIM3_IRQHandler+0x130>)
 8000492:	2220      	movs	r2, #32
 8000494:	619a      	str	r2, [r3, #24]
 8000496:	bf00      	nop
 8000498:	4b1d      	ldr	r3, [pc, #116]	; (8000510 <TIM3_IRQHandler+0x138>)
 800049a:	781b      	ldrb	r3, [r3, #0]
 800049c:	2b04      	cmp	r3, #4
 800049e:	d808      	bhi.n	80004b2 <TIM3_IRQHandler+0xda>
 80004a0:	4b1b      	ldr	r3, [pc, #108]	; (8000510 <TIM3_IRQHandler+0x138>)
 80004a2:	781b      	ldrb	r3, [r3, #0]
 80004a4:	3301      	adds	r3, #1
 80004a6:	b2da      	uxtb	r2, r3
 80004a8:	4b19      	ldr	r3, [pc, #100]	; (8000510 <TIM3_IRQHandler+0x138>)
 80004aa:	701a      	strb	r2, [r3, #0]
 80004ac:	4b18      	ldr	r3, [pc, #96]	; (8000510 <TIM3_IRQHandler+0x138>)
 80004ae:	781b      	ldrb	r3, [r3, #0]
 80004b0:	e000      	b.n	80004b4 <TIM3_IRQHandler+0xdc>
 80004b2:	2300      	movs	r3, #0
 80004b4:	4a16      	ldr	r2, [pc, #88]	; (8000510 <TIM3_IRQHandler+0x138>)
 80004b6:	7013      	strb	r3, [r2, #0]
 80004b8:	4b17      	ldr	r3, [pc, #92]	; (8000518 <TIM3_IRQHandler+0x140>)
 80004ba:	881b      	ldrh	r3, [r3, #0]
 80004bc:	b29b      	uxth	r3, r3
 80004be:	461a      	mov	r2, r3
 80004c0:	4b16      	ldr	r3, [pc, #88]	; (800051c <TIM3_IRQHandler+0x144>)
 80004c2:	781b      	ldrb	r3, [r3, #0]
 80004c4:	b2db      	uxtb	r3, r3
 80004c6:	3306      	adds	r3, #6
 80004c8:	fb03 f302 	mul.w	r3, r3, r2
 80004cc:	461a      	mov	r2, r3
 80004ce:	4b14      	ldr	r3, [pc, #80]	; (8000520 <TIM3_IRQHandler+0x148>)
 80004d0:	681b      	ldr	r3, [r3, #0]
 80004d2:	429a      	cmp	r2, r3
 80004d4:	d903      	bls.n	80004de <TIM3_IRQHandler+0x106>
 80004d6:	4b12      	ldr	r3, [pc, #72]	; (8000520 <TIM3_IRQHandler+0x148>)
 80004d8:	681b      	ldr	r3, [r3, #0]
 80004da:	3306      	adds	r3, #6
 80004dc:	e000      	b.n	80004e0 <TIM3_IRQHandler+0x108>
 80004de:	2300      	movs	r3, #0
 80004e0:	4a0f      	ldr	r2, [pc, #60]	; (8000520 <TIM3_IRQHandler+0x148>)
 80004e2:	6013      	str	r3, [r2, #0]
 80004e4:	4b0e      	ldr	r3, [pc, #56]	; (8000520 <TIM3_IRQHandler+0x148>)
 80004e6:	681b      	ldr	r3, [r3, #0]
 80004e8:	4a0b      	ldr	r2, [pc, #44]	; (8000518 <TIM3_IRQHandler+0x140>)
 80004ea:	8812      	ldrh	r2, [r2, #0]
 80004ec:	b292      	uxth	r2, r2
 80004ee:	fbb3 f3f2 	udiv	r3, r3, r2
 80004f2:	b2da      	uxtb	r2, r3
 80004f4:	4b0b      	ldr	r3, [pc, #44]	; (8000524 <TIM3_IRQHandler+0x14c>)
 80004f6:	701a      	strb	r2, [r3, #0]
 80004f8:	4a0b      	ldr	r2, [pc, #44]	; (8000528 <TIM3_IRQHandler+0x150>)
 80004fa:	4b0b      	ldr	r3, [pc, #44]	; (8000528 <TIM3_IRQHandler+0x150>)
 80004fc:	691b      	ldr	r3, [r3, #16]
 80004fe:	f023 0301 	bic.w	r3, r3, #1
 8000502:	6113      	str	r3, [r2, #16]
 8000504:	bd98      	pop	{r3, r4, r7, pc}
 8000506:	bf00      	nop
 8000508:	40021000 	.word	0x40021000
 800050c:	40020c00 	.word	0x40020c00
 8000510:	20000481 	.word	0x20000481
 8000514:	20000028 	.word	0x20000028
 8000518:	20000026 	.word	0x20000026
 800051c:	20000031 	.word	0x20000031
 8000520:	20000484 	.word	0x20000484
 8000524:	20000480 	.word	0x20000480
 8000528:	40000400 	.word	0x40000400

0800052c <TIM2_IRQHandler>:
 800052c:	b480      	push	{r7}
 800052e:	af00      	add	r7, sp, #0
 8000530:	4b26      	ldr	r3, [pc, #152]	; (80005cc <TIM2_IRQHandler+0xa0>)
 8000532:	781b      	ldrb	r3, [r3, #0]
 8000534:	b2db      	uxtb	r3, r3
 8000536:	2b3a      	cmp	r3, #58	; 0x3a
 8000538:	d808      	bhi.n	800054c <TIM2_IRQHandler+0x20>
 800053a:	4b24      	ldr	r3, [pc, #144]	; (80005cc <TIM2_IRQHandler+0xa0>)
 800053c:	781b      	ldrb	r3, [r3, #0]
 800053e:	b2db      	uxtb	r3, r3
 8000540:	3301      	adds	r3, #1
 8000542:	b2da      	uxtb	r2, r3
 8000544:	4b21      	ldr	r3, [pc, #132]	; (80005cc <TIM2_IRQHandler+0xa0>)
 8000546:	4611      	mov	r1, r2
 8000548:	7019      	strb	r1, [r3, #0]
 800054a:	e000      	b.n	800054e <TIM2_IRQHandler+0x22>
 800054c:	2200      	movs	r2, #0
 800054e:	4b1f      	ldr	r3, [pc, #124]	; (80005cc <TIM2_IRQHandler+0xa0>)
 8000550:	701a      	strb	r2, [r3, #0]
 8000552:	4b1e      	ldr	r3, [pc, #120]	; (80005cc <TIM2_IRQHandler+0xa0>)
 8000554:	781b      	ldrb	r3, [r3, #0]
 8000556:	b2db      	uxtb	r3, r3
 8000558:	2b00      	cmp	r3, #0
 800055a:	d110      	bne.n	800057e <TIM2_IRQHandler+0x52>
 800055c:	4b1b      	ldr	r3, [pc, #108]	; (80005cc <TIM2_IRQHandler+0xa0>)
 800055e:	785b      	ldrb	r3, [r3, #1]
 8000560:	b2db      	uxtb	r3, r3
 8000562:	2b3a      	cmp	r3, #58	; 0x3a
 8000564:	d808      	bhi.n	8000578 <TIM2_IRQHandler+0x4c>
 8000566:	4b19      	ldr	r3, [pc, #100]	; (80005cc <TIM2_IRQHandler+0xa0>)
 8000568:	785b      	ldrb	r3, [r3, #1]
 800056a:	b2db      	uxtb	r3, r3
 800056c:	3301      	adds	r3, #1
 800056e:	b2da      	uxtb	r2, r3
 8000570:	4b16      	ldr	r3, [pc, #88]	; (80005cc <TIM2_IRQHandler+0xa0>)
 8000572:	4611      	mov	r1, r2
 8000574:	7059      	strb	r1, [r3, #1]
 8000576:	e000      	b.n	800057a <TIM2_IRQHandler+0x4e>
 8000578:	2200      	movs	r2, #0
 800057a:	4b14      	ldr	r3, [pc, #80]	; (80005cc <TIM2_IRQHandler+0xa0>)
 800057c:	705a      	strb	r2, [r3, #1]
 800057e:	4b13      	ldr	r3, [pc, #76]	; (80005cc <TIM2_IRQHandler+0xa0>)
 8000580:	785b      	ldrb	r3, [r3, #1]
 8000582:	b2db      	uxtb	r3, r3
 8000584:	2b00      	cmp	r3, #0
 8000586:	d115      	bne.n	80005b4 <TIM2_IRQHandler+0x88>
 8000588:	4b10      	ldr	r3, [pc, #64]	; (80005cc <TIM2_IRQHandler+0xa0>)
 800058a:	781b      	ldrb	r3, [r3, #0]
 800058c:	b2db      	uxtb	r3, r3
 800058e:	2b00      	cmp	r3, #0
 8000590:	d110      	bne.n	80005b4 <TIM2_IRQHandler+0x88>
 8000592:	4b0e      	ldr	r3, [pc, #56]	; (80005cc <TIM2_IRQHandler+0xa0>)
 8000594:	789b      	ldrb	r3, [r3, #2]
 8000596:	b2db      	uxtb	r3, r3
 8000598:	2b16      	cmp	r3, #22
 800059a:	d808      	bhi.n	80005ae <TIM2_IRQHandler+0x82>
 800059c:	4b0b      	ldr	r3, [pc, #44]	; (80005cc <TIM2_IRQHandler+0xa0>)
 800059e:	789b      	ldrb	r3, [r3, #2]
 80005a0:	b2db      	uxtb	r3, r3
 80005a2:	3301      	adds	r3, #1
 80005a4:	b2da      	uxtb	r2, r3
 80005a6:	4b09      	ldr	r3, [pc, #36]	; (80005cc <TIM2_IRQHandler+0xa0>)
 80005a8:	4611      	mov	r1, r2
 80005aa:	7099      	strb	r1, [r3, #2]
 80005ac:	e000      	b.n	80005b0 <TIM2_IRQHandler+0x84>
 80005ae:	2200      	movs	r2, #0
 80005b0:	4b06      	ldr	r3, [pc, #24]	; (80005cc <TIM2_IRQHandler+0xa0>)
 80005b2:	709a      	strb	r2, [r3, #2]
 80005b4:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80005b8:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80005bc:	691b      	ldr	r3, [r3, #16]
 80005be:	f023 0301 	bic.w	r3, r3, #1
 80005c2:	6113      	str	r3, [r2, #16]
 80005c4:	46bd      	mov	sp, r7
 80005c6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005ca:	4770      	bx	lr
 80005cc:	2000047c 	.word	0x2000047c

080005d0 <GPIO_Config>:
 80005d0:	b480      	push	{r7}
 80005d2:	af00      	add	r7, sp, #0
 80005d4:	4a0c      	ldr	r2, [pc, #48]	; (8000608 <GPIO_Config+0x38>)
 80005d6:	4b0c      	ldr	r3, [pc, #48]	; (8000608 <GPIO_Config+0x38>)
 80005d8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80005da:	f043 0318 	orr.w	r3, r3, #24
 80005de:	6313      	str	r3, [r2, #48]	; 0x30
 80005e0:	4a0a      	ldr	r2, [pc, #40]	; (800060c <GPIO_Config+0x3c>)
 80005e2:	4b0a      	ldr	r3, [pc, #40]	; (800060c <GPIO_Config+0x3c>)
 80005e4:	681b      	ldr	r3, [r3, #0]
 80005e6:	f443 63aa 	orr.w	r3, r3, #1360	; 0x550
 80005ea:	f043 0305 	orr.w	r3, r3, #5
 80005ee:	6013      	str	r3, [r2, #0]
 80005f0:	4a07      	ldr	r2, [pc, #28]	; (8000610 <GPIO_Config+0x40>)
 80005f2:	4b07      	ldr	r3, [pc, #28]	; (8000610 <GPIO_Config+0x40>)
 80005f4:	681b      	ldr	r3, [r3, #0]
 80005f6:	f443 43aa 	orr.w	r3, r3, #21760	; 0x5500
 80005fa:	f043 0355 	orr.w	r3, r3, #85	; 0x55
 80005fe:	6013      	str	r3, [r2, #0]
 8000600:	46bd      	mov	sp, r7
 8000602:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000606:	4770      	bx	lr
 8000608:	40023800 	.word	0x40023800
 800060c:	40021000 	.word	0x40021000
 8000610:	40020c00 	.word	0x40020c00

08000614 <main>:
 8000614:	b580      	push	{r7, lr}
 8000616:	af00      	add	r7, sp, #0
 8000618:	f7ff ffda 	bl	80005d0 <GPIO_Config>
 800061c:	f7ff fe72 	bl	8000304 <Tim2Config>
 8000620:	f7ff fea8 	bl	8000374 <Tim3Config>
 8000624:	e7fe      	b.n	8000624 <main+0x10>
 8000626:	bf00      	nop

08000628 <SystemInit>:
 8000628:	b480      	push	{r7}
 800062a:	af00      	add	r7, sp, #0
 800062c:	4a12      	ldr	r2, [pc, #72]	; (8000678 <SystemInit+0x50>)
 800062e:	4b12      	ldr	r3, [pc, #72]	; (8000678 <SystemInit+0x50>)
 8000630:	681b      	ldr	r3, [r3, #0]
 8000632:	f043 0301 	orr.w	r3, r3, #1
 8000636:	6013      	str	r3, [r2, #0]
 8000638:	4b0f      	ldr	r3, [pc, #60]	; (8000678 <SystemInit+0x50>)
 800063a:	2200      	movs	r2, #0
 800063c:	609a      	str	r2, [r3, #8]
 800063e:	4a0e      	ldr	r2, [pc, #56]	; (8000678 <SystemInit+0x50>)
 8000640:	4b0d      	ldr	r3, [pc, #52]	; (8000678 <SystemInit+0x50>)
 8000642:	681b      	ldr	r3, [r3, #0]
 8000644:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8000648:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 800064c:	6013      	str	r3, [r2, #0]
 800064e:	4b0a      	ldr	r3, [pc, #40]	; (8000678 <SystemInit+0x50>)
 8000650:	4a0a      	ldr	r2, [pc, #40]	; (800067c <SystemInit+0x54>)
 8000652:	605a      	str	r2, [r3, #4]
 8000654:	4a08      	ldr	r2, [pc, #32]	; (8000678 <SystemInit+0x50>)
 8000656:	4b08      	ldr	r3, [pc, #32]	; (8000678 <SystemInit+0x50>)
 8000658:	681b      	ldr	r3, [r3, #0]
 800065a:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 800065e:	6013      	str	r3, [r2, #0]
 8000660:	4b05      	ldr	r3, [pc, #20]	; (8000678 <SystemInit+0x50>)
 8000662:	2200      	movs	r2, #0
 8000664:	60da      	str	r2, [r3, #12]
 8000666:	4b06      	ldr	r3, [pc, #24]	; (8000680 <SystemInit+0x58>)
 8000668:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 800066c:	609a      	str	r2, [r3, #8]
 800066e:	46bd      	mov	sp, r7
 8000670:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000674:	4770      	bx	lr
 8000676:	bf00      	nop
 8000678:	40023800 	.word	0x40023800
 800067c:	24003010 	.word	0x24003010
 8000680:	e000ed00 	.word	0xe000ed00

08000684 <SystemCoreClockUpdate>:
 8000684:	b480      	push	{r7}
 8000686:	b087      	sub	sp, #28
 8000688:	af00      	add	r7, sp, #0
 800068a:	2300      	movs	r3, #0
 800068c:	613b      	str	r3, [r7, #16]
 800068e:	2300      	movs	r3, #0
 8000690:	617b      	str	r3, [r7, #20]
 8000692:	2302      	movs	r3, #2
 8000694:	60fb      	str	r3, [r7, #12]
 8000696:	2300      	movs	r3, #0
 8000698:	60bb      	str	r3, [r7, #8]
 800069a:	2302      	movs	r3, #2
 800069c:	607b      	str	r3, [r7, #4]
 800069e:	4b32      	ldr	r3, [pc, #200]	; (8000768 <SystemCoreClockUpdate+0xe4>)
 80006a0:	689b      	ldr	r3, [r3, #8]
 80006a2:	f003 030c 	and.w	r3, r3, #12
 80006a6:	613b      	str	r3, [r7, #16]
 80006a8:	693b      	ldr	r3, [r7, #16]
 80006aa:	2b04      	cmp	r3, #4
 80006ac:	d007      	beq.n	80006be <SystemCoreClockUpdate+0x3a>
 80006ae:	2b08      	cmp	r3, #8
 80006b0:	d009      	beq.n	80006c6 <SystemCoreClockUpdate+0x42>
 80006b2:	2b00      	cmp	r3, #0
 80006b4:	d13f      	bne.n	8000736 <SystemCoreClockUpdate+0xb2>
 80006b6:	4b2d      	ldr	r3, [pc, #180]	; (800076c <SystemCoreClockUpdate+0xe8>)
 80006b8:	4a2d      	ldr	r2, [pc, #180]	; (8000770 <SystemCoreClockUpdate+0xec>)
 80006ba:	601a      	str	r2, [r3, #0]
 80006bc:	e03f      	b.n	800073e <SystemCoreClockUpdate+0xba>
 80006be:	4b2b      	ldr	r3, [pc, #172]	; (800076c <SystemCoreClockUpdate+0xe8>)
 80006c0:	4a2c      	ldr	r2, [pc, #176]	; (8000774 <SystemCoreClockUpdate+0xf0>)
 80006c2:	601a      	str	r2, [r3, #0]
 80006c4:	e03b      	b.n	800073e <SystemCoreClockUpdate+0xba>
 80006c6:	4b28      	ldr	r3, [pc, #160]	; (8000768 <SystemCoreClockUpdate+0xe4>)
 80006c8:	685b      	ldr	r3, [r3, #4]
 80006ca:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 80006ce:	0d9b      	lsrs	r3, r3, #22
 80006d0:	60bb      	str	r3, [r7, #8]
 80006d2:	4b25      	ldr	r3, [pc, #148]	; (8000768 <SystemCoreClockUpdate+0xe4>)
 80006d4:	685b      	ldr	r3, [r3, #4]
 80006d6:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 80006da:	607b      	str	r3, [r7, #4]
 80006dc:	68bb      	ldr	r3, [r7, #8]
 80006de:	2b00      	cmp	r3, #0
 80006e0:	d00d      	beq.n	80006fe <SystemCoreClockUpdate+0x7a>
 80006e2:	4a24      	ldr	r2, [pc, #144]	; (8000774 <SystemCoreClockUpdate+0xf0>)
 80006e4:	687b      	ldr	r3, [r7, #4]
 80006e6:	fbb2 f2f3 	udiv	r2, r2, r3
 80006ea:	4b1f      	ldr	r3, [pc, #124]	; (8000768 <SystemCoreClockUpdate+0xe4>)
 80006ec:	6859      	ldr	r1, [r3, #4]
 80006ee:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 80006f2:	400b      	ands	r3, r1
 80006f4:	099b      	lsrs	r3, r3, #6
 80006f6:	fb03 f302 	mul.w	r3, r3, r2
 80006fa:	617b      	str	r3, [r7, #20]
 80006fc:	e00c      	b.n	8000718 <SystemCoreClockUpdate+0x94>
 80006fe:	4a1c      	ldr	r2, [pc, #112]	; (8000770 <SystemCoreClockUpdate+0xec>)
 8000700:	687b      	ldr	r3, [r7, #4]
 8000702:	fbb2 f2f3 	udiv	r2, r2, r3
 8000706:	4b18      	ldr	r3, [pc, #96]	; (8000768 <SystemCoreClockUpdate+0xe4>)
 8000708:	6859      	ldr	r1, [r3, #4]
 800070a:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 800070e:	400b      	ands	r3, r1
 8000710:	099b      	lsrs	r3, r3, #6
 8000712:	fb03 f302 	mul.w	r3, r3, r2
 8000716:	617b      	str	r3, [r7, #20]
 8000718:	4b13      	ldr	r3, [pc, #76]	; (8000768 <SystemCoreClockUpdate+0xe4>)
 800071a:	685b      	ldr	r3, [r3, #4]
 800071c:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8000720:	0c1b      	lsrs	r3, r3, #16
 8000722:	3301      	adds	r3, #1
 8000724:	005b      	lsls	r3, r3, #1
 8000726:	60fb      	str	r3, [r7, #12]
 8000728:	697a      	ldr	r2, [r7, #20]
 800072a:	68fb      	ldr	r3, [r7, #12]
 800072c:	fbb2 f3f3 	udiv	r3, r2, r3
 8000730:	4a0e      	ldr	r2, [pc, #56]	; (800076c <SystemCoreClockUpdate+0xe8>)
 8000732:	6013      	str	r3, [r2, #0]
 8000734:	e003      	b.n	800073e <SystemCoreClockUpdate+0xba>
 8000736:	4b0d      	ldr	r3, [pc, #52]	; (800076c <SystemCoreClockUpdate+0xe8>)
 8000738:	4a0d      	ldr	r2, [pc, #52]	; (8000770 <SystemCoreClockUpdate+0xec>)
 800073a:	601a      	str	r2, [r3, #0]
 800073c:	bf00      	nop
 800073e:	4b0a      	ldr	r3, [pc, #40]	; (8000768 <SystemCoreClockUpdate+0xe4>)
 8000740:	689b      	ldr	r3, [r3, #8]
 8000742:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8000746:	091b      	lsrs	r3, r3, #4
 8000748:	4a0b      	ldr	r2, [pc, #44]	; (8000778 <SystemCoreClockUpdate+0xf4>)
 800074a:	5cd3      	ldrb	r3, [r2, r3]
 800074c:	613b      	str	r3, [r7, #16]
 800074e:	4b07      	ldr	r3, [pc, #28]	; (800076c <SystemCoreClockUpdate+0xe8>)
 8000750:	681a      	ldr	r2, [r3, #0]
 8000752:	693b      	ldr	r3, [r7, #16]
 8000754:	fa22 f303 	lsr.w	r3, r2, r3
 8000758:	4a04      	ldr	r2, [pc, #16]	; (800076c <SystemCoreClockUpdate+0xe8>)
 800075a:	6013      	str	r3, [r2, #0]
 800075c:	371c      	adds	r7, #28
 800075e:	46bd      	mov	sp, r7
 8000760:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000764:	4770      	bx	lr
 8000766:	bf00      	nop
 8000768:	40023800 	.word	0x40023800
 800076c:	20000034 	.word	0x20000034
 8000770:	00f42400 	.word	0x00f42400
 8000774:	017d7840 	.word	0x017d7840
 8000778:	08000928 	.word	0x08000928

0800077c <Reset_Handler>:
 800077c:	f8df d034 	ldr.w	sp, [pc, #52]	; 80007b4 <LoopFillZerobss+0x14>
 8000780:	2100      	movs	r1, #0
 8000782:	e003      	b.n	800078c <LoopCopyDataInit>

08000784 <CopyDataInit>:
 8000784:	4b0c      	ldr	r3, [pc, #48]	; (80007b8 <LoopFillZerobss+0x18>)
 8000786:	585b      	ldr	r3, [r3, r1]
 8000788:	5043      	str	r3, [r0, r1]
 800078a:	3104      	adds	r1, #4

0800078c <LoopCopyDataInit>:
 800078c:	480b      	ldr	r0, [pc, #44]	; (80007bc <LoopFillZerobss+0x1c>)
 800078e:	4b0c      	ldr	r3, [pc, #48]	; (80007c0 <LoopFillZerobss+0x20>)
 8000790:	1842      	adds	r2, r0, r1
 8000792:	429a      	cmp	r2, r3
 8000794:	d3f6      	bcc.n	8000784 <CopyDataInit>
 8000796:	4a0b      	ldr	r2, [pc, #44]	; (80007c4 <LoopFillZerobss+0x24>)
 8000798:	e002      	b.n	80007a0 <LoopFillZerobss>

0800079a <FillZerobss>:
 800079a:	2300      	movs	r3, #0
 800079c:	f842 3b04 	str.w	r3, [r2], #4

080007a0 <LoopFillZerobss>:
 80007a0:	4b09      	ldr	r3, [pc, #36]	; (80007c8 <LoopFillZerobss+0x28>)
 80007a2:	429a      	cmp	r2, r3
 80007a4:	d3f9      	bcc.n	800079a <FillZerobss>
 80007a6:	f7ff ff3f 	bl	8000628 <SystemInit>
 80007aa:	f000 f82d 	bl	8000808 <__libc_init_array>
 80007ae:	f7ff ff31 	bl	8000614 <main>
 80007b2:	4770      	bx	lr
 80007b4:	20020000 	.word	0x20020000
 80007b8:	08000954 	.word	0x08000954
 80007bc:	20000000 	.word	0x20000000
 80007c0:	20000460 	.word	0x20000460
 80007c4:	20000460 	.word	0x20000460
 80007c8:	20000488 	.word	0x20000488

080007cc <ADC_IRQHandler>:
 80007cc:	e7fe      	b.n	80007cc <ADC_IRQHandler>
	...

080007d0 <atexit>:
 80007d0:	4601      	mov	r1, r0
 80007d2:	2000      	movs	r0, #0
 80007d4:	4602      	mov	r2, r0
 80007d6:	4603      	mov	r3, r0
 80007d8:	f000 b83e 	b.w	8000858 <__register_exitproc>

080007dc <__libc_fini_array>:
 80007dc:	b538      	push	{r3, r4, r5, lr}
 80007de:	4b08      	ldr	r3, [pc, #32]	; (8000800 <__libc_fini_array+0x24>)
 80007e0:	4d08      	ldr	r5, [pc, #32]	; (8000804 <__libc_fini_array+0x28>)
 80007e2:	1aed      	subs	r5, r5, r3
 80007e4:	10ac      	asrs	r4, r5, #2
 80007e6:	bf18      	it	ne
 80007e8:	18ed      	addne	r5, r5, r3
 80007ea:	d005      	beq.n	80007f8 <__libc_fini_array+0x1c>
 80007ec:	3c01      	subs	r4, #1
 80007ee:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80007f2:	4798      	blx	r3
 80007f4:	2c00      	cmp	r4, #0
 80007f6:	d1f9      	bne.n	80007ec <__libc_fini_array+0x10>
 80007f8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80007fc:	f000 b88e 	b.w	800091c <_fini>
 8000800:	08000950 	.word	0x08000950
 8000804:	08000954 	.word	0x08000954

08000808 <__libc_init_array>:
 8000808:	b570      	push	{r4, r5, r6, lr}
 800080a:	4e0f      	ldr	r6, [pc, #60]	; (8000848 <__libc_init_array+0x40>)
 800080c:	4d0f      	ldr	r5, [pc, #60]	; (800084c <__libc_init_array+0x44>)
 800080e:	1b76      	subs	r6, r6, r5
 8000810:	10b6      	asrs	r6, r6, #2
 8000812:	bf18      	it	ne
 8000814:	2400      	movne	r4, #0
 8000816:	d005      	beq.n	8000824 <__libc_init_array+0x1c>
 8000818:	3401      	adds	r4, #1
 800081a:	f855 3b04 	ldr.w	r3, [r5], #4
 800081e:	4798      	blx	r3
 8000820:	42a6      	cmp	r6, r4
 8000822:	d1f9      	bne.n	8000818 <__libc_init_array+0x10>
 8000824:	4e0a      	ldr	r6, [pc, #40]	; (8000850 <__libc_init_array+0x48>)
 8000826:	4d0b      	ldr	r5, [pc, #44]	; (8000854 <__libc_init_array+0x4c>)
 8000828:	1b76      	subs	r6, r6, r5
 800082a:	f000 f871 	bl	8000910 <_init>
 800082e:	10b6      	asrs	r6, r6, #2
 8000830:	bf18      	it	ne
 8000832:	2400      	movne	r4, #0
 8000834:	d006      	beq.n	8000844 <__libc_init_array+0x3c>
 8000836:	3401      	adds	r4, #1
 8000838:	f855 3b04 	ldr.w	r3, [r5], #4
 800083c:	4798      	blx	r3
 800083e:	42a6      	cmp	r6, r4
 8000840:	d1f9      	bne.n	8000836 <__libc_init_array+0x2e>
 8000842:	bd70      	pop	{r4, r5, r6, pc}
 8000844:	bd70      	pop	{r4, r5, r6, pc}
 8000846:	bf00      	nop
 8000848:	08000948 	.word	0x08000948
 800084c:	08000948 	.word	0x08000948
 8000850:	08000950 	.word	0x08000950
 8000854:	08000948 	.word	0x08000948

08000858 <__register_exitproc>:
 8000858:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800085c:	4c25      	ldr	r4, [pc, #148]	; (80008f4 <__register_exitproc+0x9c>)
 800085e:	6825      	ldr	r5, [r4, #0]
 8000860:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 8000864:	4606      	mov	r6, r0
 8000866:	4688      	mov	r8, r1
 8000868:	4692      	mov	sl, r2
 800086a:	4699      	mov	r9, r3
 800086c:	b3cc      	cbz	r4, 80008e2 <__register_exitproc+0x8a>
 800086e:	6860      	ldr	r0, [r4, #4]
 8000870:	281f      	cmp	r0, #31
 8000872:	dc18      	bgt.n	80008a6 <__register_exitproc+0x4e>
 8000874:	1c43      	adds	r3, r0, #1
 8000876:	b17e      	cbz	r6, 8000898 <__register_exitproc+0x40>
 8000878:	eb04 0580 	add.w	r5, r4, r0, lsl #2
 800087c:	2101      	movs	r1, #1
 800087e:	f8c5 a088 	str.w	sl, [r5, #136]	; 0x88
 8000882:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 8000886:	fa01 f200 	lsl.w	r2, r1, r0
 800088a:	4317      	orrs	r7, r2
 800088c:	2e02      	cmp	r6, #2
 800088e:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8000892:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
 8000896:	d01e      	beq.n	80008d6 <__register_exitproc+0x7e>
 8000898:	3002      	adds	r0, #2
 800089a:	6063      	str	r3, [r4, #4]
 800089c:	f844 8020 	str.w	r8, [r4, r0, lsl #2]
 80008a0:	2000      	movs	r0, #0
 80008a2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80008a6:	4b14      	ldr	r3, [pc, #80]	; (80008f8 <__register_exitproc+0xa0>)
 80008a8:	b303      	cbz	r3, 80008ec <__register_exitproc+0x94>
 80008aa:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80008ae:	f3af 8000 	nop.w
 80008b2:	4604      	mov	r4, r0
 80008b4:	b1d0      	cbz	r0, 80008ec <__register_exitproc+0x94>
 80008b6:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
 80008ba:	2700      	movs	r7, #0
 80008bc:	e880 0088 	stmia.w	r0, {r3, r7}
 80008c0:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 80008c4:	4638      	mov	r0, r7
 80008c6:	2301      	movs	r3, #1
 80008c8:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 80008cc:	f8c4 718c 	str.w	r7, [r4, #396]	; 0x18c
 80008d0:	2e00      	cmp	r6, #0
 80008d2:	d0e1      	beq.n	8000898 <__register_exitproc+0x40>
 80008d4:	e7d0      	b.n	8000878 <__register_exitproc+0x20>
 80008d6:	f8d4 118c 	ldr.w	r1, [r4, #396]	; 0x18c
 80008da:	430a      	orrs	r2, r1
 80008dc:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 80008e0:	e7da      	b.n	8000898 <__register_exitproc+0x40>
 80008e2:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 80008e6:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 80008ea:	e7c0      	b.n	800086e <__register_exitproc+0x16>
 80008ec:	f04f 30ff 	mov.w	r0, #4294967295
 80008f0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80008f4:	08000944 	.word	0x08000944
 80008f8:	00000000 	.word	0x00000000

080008fc <register_fini>:
 80008fc:	4b02      	ldr	r3, [pc, #8]	; (8000908 <register_fini+0xc>)
 80008fe:	b113      	cbz	r3, 8000906 <register_fini+0xa>
 8000900:	4802      	ldr	r0, [pc, #8]	; (800090c <register_fini+0x10>)
 8000902:	f7ff bf65 	b.w	80007d0 <atexit>
 8000906:	4770      	bx	lr
 8000908:	00000000 	.word	0x00000000
 800090c:	080007dd 	.word	0x080007dd

08000910 <_init>:
 8000910:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000912:	bf00      	nop
 8000914:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000916:	bc08      	pop	{r3}
 8000918:	469e      	mov	lr, r3
 800091a:	4770      	bx	lr

0800091c <_fini>:
 800091c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800091e:	bf00      	nop
 8000920:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000922:	bc08      	pop	{r3}
 8000924:	469e      	mov	lr, r3
 8000926:	4770      	bx	lr
