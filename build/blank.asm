
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   00000188  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         00000498  08000188  08000188  00010188  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000020  08000620  08000620  00010620  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  08000640  08000640  00010640  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  08000648  08000648  00010648  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000430  20000000  0800064c  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .ccmram       00000000  10000000  10000000  00020430  2**0  CONTENTS
  7 .bss          0000001c  20000430  20000430  00020430  2**2  ALLOC
  8 ._user_heap_stack 00000604  2000044c  2000044c  00020430  2**0  ALLOC
  9 .ARM.attributes 0000002a  00000000  00000000  00020430  2**0  CONTENTS, READONLY
 10 .comment      00000070  00000000  00000000  0002045a  2**0  CONTENTS, READONLY
 11 .debug_info   00002718  00000000  00000000  000204ca  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_abbrev 00000a08  00000000  00000000  00022be2  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_loc    000004eb  00000000  00000000  000235ea  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_aranges 00000100  00000000  00000000  00023ad5  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_line   00000810  00000000  00000000  00023bd5  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_str    00000ade  00000000  00000000  000243e5  2**0  CONTENTS, READONLY, DEBUGGING
 17 .debug_frame  00000188  00000000  00000000  00024ec4  2**2  CONTENTS, READONLY, DEBUGGING
 18 .debug_ranges 00000070  00000000  00000000  0002504c  2**0  CONTENTS, READONLY, DEBUGGING

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
 800019c:	20000433 	.word	0x20000433
 80001a0:	20000430 	.word	0x20000430
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
 80001c0:	20000430 	.word	0x20000430
 80001c4:	20000430 	.word	0x20000430
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
 80001e8:	20000430 	.word	0x20000430
 80001ec:	00000000 	.word	0x00000000
 80001f0:	08000608 	.word	0x08000608

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
 800021c:	08000608 	.word	0x08000608
 8000220:	20000434 	.word	0x20000434
 8000224:	20000430 	.word	0x20000430
 8000228:	00000000 	.word	0x00000000

0800022c <main>:
 800022c:	b480      	push	{r7}
 800022e:	b083      	sub	sp, #12
 8000230:	af00      	add	r7, sp, #0
 8000232:	4a37      	ldr	r2, [pc, #220]	; (8000310 <main+0xe4>)
 8000234:	4b36      	ldr	r3, [pc, #216]	; (8000310 <main+0xe4>)
 8000236:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000238:	f043 0308 	orr.w	r3, r3, #8
 800023c:	6313      	str	r3, [r2, #48]	; 0x30
 800023e:	4a35      	ldr	r2, [pc, #212]	; (8000314 <main+0xe8>)
 8000240:	4b34      	ldr	r3, [pc, #208]	; (8000314 <main+0xe8>)
 8000242:	681b      	ldr	r3, [r3, #0]
 8000244:	f043 53a0 	orr.w	r3, r3, #335544320	; 0x14000000
 8000248:	6013      	str	r3, [r2, #0]
 800024a:	4a33      	ldr	r2, [pc, #204]	; (8000318 <main+0xec>)
 800024c:	4b32      	ldr	r3, [pc, #200]	; (8000318 <main+0xec>)
 800024e:	681b      	ldr	r3, [r3, #0]
 8000250:	f063 0303 	orn	r3, r3, #3
 8000254:	6013      	str	r3, [r2, #0]
 8000256:	4a2f      	ldr	r2, [pc, #188]	; (8000314 <main+0xe8>)
 8000258:	4b2e      	ldr	r3, [pc, #184]	; (8000314 <main+0xe8>)
 800025a:	685b      	ldr	r3, [r3, #4]
 800025c:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000260:	6053      	str	r3, [r2, #4]
 8000262:	4a2d      	ldr	r2, [pc, #180]	; (8000318 <main+0xec>)
 8000264:	4b2c      	ldr	r3, [pc, #176]	; (8000318 <main+0xec>)
 8000266:	68db      	ldr	r3, [r3, #12]
 8000268:	f003 0302 	and.w	r3, r3, #2
 800026c:	60d3      	str	r3, [r2, #12]
 800026e:	4a29      	ldr	r2, [pc, #164]	; (8000314 <main+0xe8>)
 8000270:	4b28      	ldr	r3, [pc, #160]	; (8000314 <main+0xe8>)
 8000272:	689b      	ldr	r3, [r3, #8]
 8000274:	f023 5340 	bic.w	r3, r3, #805306368	; 0x30000000
 8000278:	6093      	str	r3, [r2, #8]
 800027a:	4a26      	ldr	r2, [pc, #152]	; (8000314 <main+0xe8>)
 800027c:	4b25      	ldr	r3, [pc, #148]	; (8000314 <main+0xe8>)
 800027e:	699b      	ldr	r3, [r3, #24]
 8000280:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8000284:	6193      	str	r3, [r2, #24]
 8000286:	2300      	movs	r3, #0
 8000288:	607b      	str	r3, [r7, #4]
 800028a:	e017      	b.n	80002bc <main+0x90>
 800028c:	4a22      	ldr	r2, [pc, #136]	; (8000318 <main+0xec>)
 800028e:	4b22      	ldr	r3, [pc, #136]	; (8000318 <main+0xec>)
 8000290:	691b      	ldr	r3, [r3, #16]
 8000292:	f003 0301 	and.w	r3, r3, #1
 8000296:	6113      	str	r3, [r2, #16]
 8000298:	2b00      	cmp	r3, #0
 800029a:	d006      	beq.n	80002aa <main+0x7e>
 800029c:	4a1d      	ldr	r2, [pc, #116]	; (8000314 <main+0xe8>)
 800029e:	4b1d      	ldr	r3, [pc, #116]	; (8000314 <main+0xe8>)
 80002a0:	699b      	ldr	r3, [r3, #24]
 80002a2:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80002a6:	6193      	str	r3, [r2, #24]
 80002a8:	e005      	b.n	80002b6 <main+0x8a>
 80002aa:	4a1a      	ldr	r2, [pc, #104]	; (8000314 <main+0xe8>)
 80002ac:	4b19      	ldr	r3, [pc, #100]	; (8000314 <main+0xe8>)
 80002ae:	699b      	ldr	r3, [r3, #24]
 80002b0:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80002b4:	6193      	str	r3, [r2, #24]
 80002b6:	687b      	ldr	r3, [r7, #4]
 80002b8:	3301      	adds	r3, #1
 80002ba:	607b      	str	r3, [r7, #4]
 80002bc:	687b      	ldr	r3, [r7, #4]
 80002be:	4a17      	ldr	r2, [pc, #92]	; (800031c <main+0xf0>)
 80002c0:	4293      	cmp	r3, r2
 80002c2:	dde3      	ble.n	800028c <main+0x60>
 80002c4:	4a13      	ldr	r2, [pc, #76]	; (8000314 <main+0xe8>)
 80002c6:	4b13      	ldr	r3, [pc, #76]	; (8000314 <main+0xe8>)
 80002c8:	699b      	ldr	r3, [r3, #24]
 80002ca:	f043 4380 	orr.w	r3, r3, #1073741824	; 0x40000000
 80002ce:	6193      	str	r3, [r2, #24]
 80002d0:	2300      	movs	r3, #0
 80002d2:	607b      	str	r3, [r7, #4]
 80002d4:	e017      	b.n	8000306 <main+0xda>
 80002d6:	4a10      	ldr	r2, [pc, #64]	; (8000318 <main+0xec>)
 80002d8:	4b0f      	ldr	r3, [pc, #60]	; (8000318 <main+0xec>)
 80002da:	691b      	ldr	r3, [r3, #16]
 80002dc:	f003 0301 	and.w	r3, r3, #1
 80002e0:	6113      	str	r3, [r2, #16]
 80002e2:	2b00      	cmp	r3, #0
 80002e4:	d006      	beq.n	80002f4 <main+0xc8>
 80002e6:	4a0b      	ldr	r2, [pc, #44]	; (8000314 <main+0xe8>)
 80002e8:	4b0a      	ldr	r3, [pc, #40]	; (8000314 <main+0xe8>)
 80002ea:	699b      	ldr	r3, [r3, #24]
 80002ec:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80002f0:	6193      	str	r3, [r2, #24]
 80002f2:	e005      	b.n	8000300 <main+0xd4>
 80002f4:	4a07      	ldr	r2, [pc, #28]	; (8000314 <main+0xe8>)
 80002f6:	4b07      	ldr	r3, [pc, #28]	; (8000314 <main+0xe8>)
 80002f8:	699b      	ldr	r3, [r3, #24]
 80002fa:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80002fe:	6193      	str	r3, [r2, #24]
 8000300:	687b      	ldr	r3, [r7, #4]
 8000302:	3301      	adds	r3, #1
 8000304:	607b      	str	r3, [r7, #4]
 8000306:	687b      	ldr	r3, [r7, #4]
 8000308:	4a04      	ldr	r2, [pc, #16]	; (800031c <main+0xf0>)
 800030a:	4293      	cmp	r3, r2
 800030c:	dde3      	ble.n	80002d6 <main+0xaa>
 800030e:	e7b4      	b.n	800027a <main+0x4e>
 8000310:	40023800 	.word	0x40023800
 8000314:	40020c00 	.word	0x40020c00
 8000318:	40020000 	.word	0x40020000
 800031c:	000f423f 	.word	0x000f423f

08000320 <SystemInit>:
 8000320:	b480      	push	{r7}
 8000322:	af00      	add	r7, sp, #0
 8000324:	4a12      	ldr	r2, [pc, #72]	; (8000370 <SystemInit+0x50>)
 8000326:	4b12      	ldr	r3, [pc, #72]	; (8000370 <SystemInit+0x50>)
 8000328:	681b      	ldr	r3, [r3, #0]
 800032a:	f043 0301 	orr.w	r3, r3, #1
 800032e:	6013      	str	r3, [r2, #0]
 8000330:	4b0f      	ldr	r3, [pc, #60]	; (8000370 <SystemInit+0x50>)
 8000332:	2200      	movs	r2, #0
 8000334:	609a      	str	r2, [r3, #8]
 8000336:	4a0e      	ldr	r2, [pc, #56]	; (8000370 <SystemInit+0x50>)
 8000338:	4b0d      	ldr	r3, [pc, #52]	; (8000370 <SystemInit+0x50>)
 800033a:	681b      	ldr	r3, [r3, #0]
 800033c:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8000340:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8000344:	6013      	str	r3, [r2, #0]
 8000346:	4b0a      	ldr	r3, [pc, #40]	; (8000370 <SystemInit+0x50>)
 8000348:	4a0a      	ldr	r2, [pc, #40]	; (8000374 <SystemInit+0x54>)
 800034a:	605a      	str	r2, [r3, #4]
 800034c:	4a08      	ldr	r2, [pc, #32]	; (8000370 <SystemInit+0x50>)
 800034e:	4b08      	ldr	r3, [pc, #32]	; (8000370 <SystemInit+0x50>)
 8000350:	681b      	ldr	r3, [r3, #0]
 8000352:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8000356:	6013      	str	r3, [r2, #0]
 8000358:	4b05      	ldr	r3, [pc, #20]	; (8000370 <SystemInit+0x50>)
 800035a:	2200      	movs	r2, #0
 800035c:	60da      	str	r2, [r3, #12]
 800035e:	4b06      	ldr	r3, [pc, #24]	; (8000378 <SystemInit+0x58>)
 8000360:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000364:	609a      	str	r2, [r3, #8]
 8000366:	46bd      	mov	sp, r7
 8000368:	f85d 7b04 	ldr.w	r7, [sp], #4
 800036c:	4770      	bx	lr
 800036e:	bf00      	nop
 8000370:	40023800 	.word	0x40023800
 8000374:	24003010 	.word	0x24003010
 8000378:	e000ed00 	.word	0xe000ed00

0800037c <SystemCoreClockUpdate>:
 800037c:	b480      	push	{r7}
 800037e:	b087      	sub	sp, #28
 8000380:	af00      	add	r7, sp, #0
 8000382:	2300      	movs	r3, #0
 8000384:	613b      	str	r3, [r7, #16]
 8000386:	2300      	movs	r3, #0
 8000388:	617b      	str	r3, [r7, #20]
 800038a:	2302      	movs	r3, #2
 800038c:	60fb      	str	r3, [r7, #12]
 800038e:	2300      	movs	r3, #0
 8000390:	60bb      	str	r3, [r7, #8]
 8000392:	2302      	movs	r3, #2
 8000394:	607b      	str	r3, [r7, #4]
 8000396:	4b32      	ldr	r3, [pc, #200]	; (8000460 <SystemCoreClockUpdate+0xe4>)
 8000398:	689b      	ldr	r3, [r3, #8]
 800039a:	f003 030c 	and.w	r3, r3, #12
 800039e:	613b      	str	r3, [r7, #16]
 80003a0:	693b      	ldr	r3, [r7, #16]
 80003a2:	2b04      	cmp	r3, #4
 80003a4:	d007      	beq.n	80003b6 <SystemCoreClockUpdate+0x3a>
 80003a6:	2b08      	cmp	r3, #8
 80003a8:	d009      	beq.n	80003be <SystemCoreClockUpdate+0x42>
 80003aa:	2b00      	cmp	r3, #0
 80003ac:	d13f      	bne.n	800042e <SystemCoreClockUpdate+0xb2>
 80003ae:	4b2d      	ldr	r3, [pc, #180]	; (8000464 <SystemCoreClockUpdate+0xe8>)
 80003b0:	4a2d      	ldr	r2, [pc, #180]	; (8000468 <SystemCoreClockUpdate+0xec>)
 80003b2:	601a      	str	r2, [r3, #0]
 80003b4:	e03f      	b.n	8000436 <SystemCoreClockUpdate+0xba>
 80003b6:	4b2b      	ldr	r3, [pc, #172]	; (8000464 <SystemCoreClockUpdate+0xe8>)
 80003b8:	4a2c      	ldr	r2, [pc, #176]	; (800046c <SystemCoreClockUpdate+0xf0>)
 80003ba:	601a      	str	r2, [r3, #0]
 80003bc:	e03b      	b.n	8000436 <SystemCoreClockUpdate+0xba>
 80003be:	4b28      	ldr	r3, [pc, #160]	; (8000460 <SystemCoreClockUpdate+0xe4>)
 80003c0:	685b      	ldr	r3, [r3, #4]
 80003c2:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 80003c6:	0d9b      	lsrs	r3, r3, #22
 80003c8:	60bb      	str	r3, [r7, #8]
 80003ca:	4b25      	ldr	r3, [pc, #148]	; (8000460 <SystemCoreClockUpdate+0xe4>)
 80003cc:	685b      	ldr	r3, [r3, #4]
 80003ce:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 80003d2:	607b      	str	r3, [r7, #4]
 80003d4:	68bb      	ldr	r3, [r7, #8]
 80003d6:	2b00      	cmp	r3, #0
 80003d8:	d00d      	beq.n	80003f6 <SystemCoreClockUpdate+0x7a>
 80003da:	4a24      	ldr	r2, [pc, #144]	; (800046c <SystemCoreClockUpdate+0xf0>)
 80003dc:	687b      	ldr	r3, [r7, #4]
 80003de:	fbb2 f2f3 	udiv	r2, r2, r3
 80003e2:	4b1f      	ldr	r3, [pc, #124]	; (8000460 <SystemCoreClockUpdate+0xe4>)
 80003e4:	6859      	ldr	r1, [r3, #4]
 80003e6:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 80003ea:	400b      	ands	r3, r1
 80003ec:	099b      	lsrs	r3, r3, #6
 80003ee:	fb03 f302 	mul.w	r3, r3, r2
 80003f2:	617b      	str	r3, [r7, #20]
 80003f4:	e00c      	b.n	8000410 <SystemCoreClockUpdate+0x94>
 80003f6:	4a1c      	ldr	r2, [pc, #112]	; (8000468 <SystemCoreClockUpdate+0xec>)
 80003f8:	687b      	ldr	r3, [r7, #4]
 80003fa:	fbb2 f2f3 	udiv	r2, r2, r3
 80003fe:	4b18      	ldr	r3, [pc, #96]	; (8000460 <SystemCoreClockUpdate+0xe4>)
 8000400:	6859      	ldr	r1, [r3, #4]
 8000402:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 8000406:	400b      	ands	r3, r1
 8000408:	099b      	lsrs	r3, r3, #6
 800040a:	fb03 f302 	mul.w	r3, r3, r2
 800040e:	617b      	str	r3, [r7, #20]
 8000410:	4b13      	ldr	r3, [pc, #76]	; (8000460 <SystemCoreClockUpdate+0xe4>)
 8000412:	685b      	ldr	r3, [r3, #4]
 8000414:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8000418:	0c1b      	lsrs	r3, r3, #16
 800041a:	3301      	adds	r3, #1
 800041c:	005b      	lsls	r3, r3, #1
 800041e:	60fb      	str	r3, [r7, #12]
 8000420:	697a      	ldr	r2, [r7, #20]
 8000422:	68fb      	ldr	r3, [r7, #12]
 8000424:	fbb2 f3f3 	udiv	r3, r2, r3
 8000428:	4a0e      	ldr	r2, [pc, #56]	; (8000464 <SystemCoreClockUpdate+0xe8>)
 800042a:	6013      	str	r3, [r2, #0]
 800042c:	e003      	b.n	8000436 <SystemCoreClockUpdate+0xba>
 800042e:	4b0d      	ldr	r3, [pc, #52]	; (8000464 <SystemCoreClockUpdate+0xe8>)
 8000430:	4a0d      	ldr	r2, [pc, #52]	; (8000468 <SystemCoreClockUpdate+0xec>)
 8000432:	601a      	str	r2, [r3, #0]
 8000434:	bf00      	nop
 8000436:	4b0a      	ldr	r3, [pc, #40]	; (8000460 <SystemCoreClockUpdate+0xe4>)
 8000438:	689b      	ldr	r3, [r3, #8]
 800043a:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 800043e:	091b      	lsrs	r3, r3, #4
 8000440:	4a0b      	ldr	r2, [pc, #44]	; (8000470 <SystemCoreClockUpdate+0xf4>)
 8000442:	5cd3      	ldrb	r3, [r2, r3]
 8000444:	613b      	str	r3, [r7, #16]
 8000446:	4b07      	ldr	r3, [pc, #28]	; (8000464 <SystemCoreClockUpdate+0xe8>)
 8000448:	681a      	ldr	r2, [r3, #0]
 800044a:	693b      	ldr	r3, [r7, #16]
 800044c:	fa22 f303 	lsr.w	r3, r2, r3
 8000450:	4a04      	ldr	r2, [pc, #16]	; (8000464 <SystemCoreClockUpdate+0xe8>)
 8000452:	6013      	str	r3, [r2, #0]
 8000454:	371c      	adds	r7, #28
 8000456:	46bd      	mov	sp, r7
 8000458:	f85d 7b04 	ldr.w	r7, [sp], #4
 800045c:	4770      	bx	lr
 800045e:	bf00      	nop
 8000460:	40023800 	.word	0x40023800
 8000464:	20000000 	.word	0x20000000
 8000468:	00f42400 	.word	0x00f42400
 800046c:	017d7840 	.word	0x017d7840
 8000470:	08000620 	.word	0x08000620

08000474 <Reset_Handler>:
 8000474:	f8df d034 	ldr.w	sp, [pc, #52]	; 80004ac <LoopFillZerobss+0x14>
 8000478:	2100      	movs	r1, #0
 800047a:	e003      	b.n	8000484 <LoopCopyDataInit>

0800047c <CopyDataInit>:
 800047c:	4b0c      	ldr	r3, [pc, #48]	; (80004b0 <LoopFillZerobss+0x18>)
 800047e:	585b      	ldr	r3, [r3, r1]
 8000480:	5043      	str	r3, [r0, r1]
 8000482:	3104      	adds	r1, #4

08000484 <LoopCopyDataInit>:
 8000484:	480b      	ldr	r0, [pc, #44]	; (80004b4 <LoopFillZerobss+0x1c>)
 8000486:	4b0c      	ldr	r3, [pc, #48]	; (80004b8 <LoopFillZerobss+0x20>)
 8000488:	1842      	adds	r2, r0, r1
 800048a:	429a      	cmp	r2, r3
 800048c:	d3f6      	bcc.n	800047c <CopyDataInit>
 800048e:	4a0b      	ldr	r2, [pc, #44]	; (80004bc <LoopFillZerobss+0x24>)
 8000490:	e002      	b.n	8000498 <LoopFillZerobss>

08000492 <FillZerobss>:
 8000492:	2300      	movs	r3, #0
 8000494:	f842 3b04 	str.w	r3, [r2], #4

08000498 <LoopFillZerobss>:
 8000498:	4b09      	ldr	r3, [pc, #36]	; (80004c0 <LoopFillZerobss+0x28>)
 800049a:	429a      	cmp	r2, r3
 800049c:	d3f9      	bcc.n	8000492 <FillZerobss>
 800049e:	f7ff ff3f 	bl	8000320 <SystemInit>
 80004a2:	f000 f82d 	bl	8000500 <__libc_init_array>
 80004a6:	f7ff fec1 	bl	800022c <main>
 80004aa:	4770      	bx	lr
 80004ac:	20020000 	.word	0x20020000
 80004b0:	0800064c 	.word	0x0800064c
 80004b4:	20000000 	.word	0x20000000
 80004b8:	20000430 	.word	0x20000430
 80004bc:	20000430 	.word	0x20000430
 80004c0:	2000044c 	.word	0x2000044c

080004c4 <ADC_IRQHandler>:
 80004c4:	e7fe      	b.n	80004c4 <ADC_IRQHandler>
	...

080004c8 <atexit>:
 80004c8:	4601      	mov	r1, r0
 80004ca:	2000      	movs	r0, #0
 80004cc:	4602      	mov	r2, r0
 80004ce:	4603      	mov	r3, r0
 80004d0:	f000 b83e 	b.w	8000550 <__register_exitproc>

080004d4 <__libc_fini_array>:
 80004d4:	b538      	push	{r3, r4, r5, lr}
 80004d6:	4b08      	ldr	r3, [pc, #32]	; (80004f8 <__libc_fini_array+0x24>)
 80004d8:	4d08      	ldr	r5, [pc, #32]	; (80004fc <__libc_fini_array+0x28>)
 80004da:	1aed      	subs	r5, r5, r3
 80004dc:	10ac      	asrs	r4, r5, #2
 80004de:	bf18      	it	ne
 80004e0:	18ed      	addne	r5, r5, r3
 80004e2:	d005      	beq.n	80004f0 <__libc_fini_array+0x1c>
 80004e4:	3c01      	subs	r4, #1
 80004e6:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80004ea:	4798      	blx	r3
 80004ec:	2c00      	cmp	r4, #0
 80004ee:	d1f9      	bne.n	80004e4 <__libc_fini_array+0x10>
 80004f0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80004f4:	f000 b88e 	b.w	8000614 <_fini>
 80004f8:	08000648 	.word	0x08000648
 80004fc:	0800064c 	.word	0x0800064c

08000500 <__libc_init_array>:
 8000500:	b570      	push	{r4, r5, r6, lr}
 8000502:	4e0f      	ldr	r6, [pc, #60]	; (8000540 <__libc_init_array+0x40>)
 8000504:	4d0f      	ldr	r5, [pc, #60]	; (8000544 <__libc_init_array+0x44>)
 8000506:	1b76      	subs	r6, r6, r5
 8000508:	10b6      	asrs	r6, r6, #2
 800050a:	bf18      	it	ne
 800050c:	2400      	movne	r4, #0
 800050e:	d005      	beq.n	800051c <__libc_init_array+0x1c>
 8000510:	3401      	adds	r4, #1
 8000512:	f855 3b04 	ldr.w	r3, [r5], #4
 8000516:	4798      	blx	r3
 8000518:	42a6      	cmp	r6, r4
 800051a:	d1f9      	bne.n	8000510 <__libc_init_array+0x10>
 800051c:	4e0a      	ldr	r6, [pc, #40]	; (8000548 <__libc_init_array+0x48>)
 800051e:	4d0b      	ldr	r5, [pc, #44]	; (800054c <__libc_init_array+0x4c>)
 8000520:	1b76      	subs	r6, r6, r5
 8000522:	f000 f871 	bl	8000608 <_init>
 8000526:	10b6      	asrs	r6, r6, #2
 8000528:	bf18      	it	ne
 800052a:	2400      	movne	r4, #0
 800052c:	d006      	beq.n	800053c <__libc_init_array+0x3c>
 800052e:	3401      	adds	r4, #1
 8000530:	f855 3b04 	ldr.w	r3, [r5], #4
 8000534:	4798      	blx	r3
 8000536:	42a6      	cmp	r6, r4
 8000538:	d1f9      	bne.n	800052e <__libc_init_array+0x2e>
 800053a:	bd70      	pop	{r4, r5, r6, pc}
 800053c:	bd70      	pop	{r4, r5, r6, pc}
 800053e:	bf00      	nop
 8000540:	08000640 	.word	0x08000640
 8000544:	08000640 	.word	0x08000640
 8000548:	08000648 	.word	0x08000648
 800054c:	08000640 	.word	0x08000640

08000550 <__register_exitproc>:
 8000550:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000554:	4c25      	ldr	r4, [pc, #148]	; (80005ec <__register_exitproc+0x9c>)
 8000556:	6825      	ldr	r5, [r4, #0]
 8000558:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 800055c:	4606      	mov	r6, r0
 800055e:	4688      	mov	r8, r1
 8000560:	4692      	mov	sl, r2
 8000562:	4699      	mov	r9, r3
 8000564:	b3cc      	cbz	r4, 80005da <__register_exitproc+0x8a>
 8000566:	6860      	ldr	r0, [r4, #4]
 8000568:	281f      	cmp	r0, #31
 800056a:	dc18      	bgt.n	800059e <__register_exitproc+0x4e>
 800056c:	1c43      	adds	r3, r0, #1
 800056e:	b17e      	cbz	r6, 8000590 <__register_exitproc+0x40>
 8000570:	eb04 0580 	add.w	r5, r4, r0, lsl #2
 8000574:	2101      	movs	r1, #1
 8000576:	f8c5 a088 	str.w	sl, [r5, #136]	; 0x88
 800057a:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 800057e:	fa01 f200 	lsl.w	r2, r1, r0
 8000582:	4317      	orrs	r7, r2
 8000584:	2e02      	cmp	r6, #2
 8000586:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 800058a:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
 800058e:	d01e      	beq.n	80005ce <__register_exitproc+0x7e>
 8000590:	3002      	adds	r0, #2
 8000592:	6063      	str	r3, [r4, #4]
 8000594:	f844 8020 	str.w	r8, [r4, r0, lsl #2]
 8000598:	2000      	movs	r0, #0
 800059a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800059e:	4b14      	ldr	r3, [pc, #80]	; (80005f0 <__register_exitproc+0xa0>)
 80005a0:	b303      	cbz	r3, 80005e4 <__register_exitproc+0x94>
 80005a2:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80005a6:	f3af 8000 	nop.w
 80005aa:	4604      	mov	r4, r0
 80005ac:	b1d0      	cbz	r0, 80005e4 <__register_exitproc+0x94>
 80005ae:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
 80005b2:	2700      	movs	r7, #0
 80005b4:	e880 0088 	stmia.w	r0, {r3, r7}
 80005b8:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 80005bc:	4638      	mov	r0, r7
 80005be:	2301      	movs	r3, #1
 80005c0:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 80005c4:	f8c4 718c 	str.w	r7, [r4, #396]	; 0x18c
 80005c8:	2e00      	cmp	r6, #0
 80005ca:	d0e1      	beq.n	8000590 <__register_exitproc+0x40>
 80005cc:	e7d0      	b.n	8000570 <__register_exitproc+0x20>
 80005ce:	f8d4 118c 	ldr.w	r1, [r4, #396]	; 0x18c
 80005d2:	430a      	orrs	r2, r1
 80005d4:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 80005d8:	e7da      	b.n	8000590 <__register_exitproc+0x40>
 80005da:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 80005de:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 80005e2:	e7c0      	b.n	8000566 <__register_exitproc+0x16>
 80005e4:	f04f 30ff 	mov.w	r0, #4294967295
 80005e8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80005ec:	0800063c 	.word	0x0800063c
 80005f0:	00000000 	.word	0x00000000

080005f4 <register_fini>:
 80005f4:	4b02      	ldr	r3, [pc, #8]	; (8000600 <register_fini+0xc>)
 80005f6:	b113      	cbz	r3, 80005fe <register_fini+0xa>
 80005f8:	4802      	ldr	r0, [pc, #8]	; (8000604 <register_fini+0x10>)
 80005fa:	f7ff bf65 	b.w	80004c8 <atexit>
 80005fe:	4770      	bx	lr
 8000600:	00000000 	.word	0x00000000
 8000604:	080004d5 	.word	0x080004d5

08000608 <_init>:
 8000608:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800060a:	bf00      	nop
 800060c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800060e:	bc08      	pop	{r3}
 8000610:	469e      	mov	lr, r3
 8000612:	4770      	bx	lr

08000614 <_fini>:
 8000614:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000616:	bf00      	nop
 8000618:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800061a:	bc08      	pop	{r3}
 800061c:	469e      	mov	lr, r3
 800061e:	4770      	bx	lr
