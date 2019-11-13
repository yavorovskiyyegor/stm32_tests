
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   00000188  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         000008bc  08000188  08000188  00010188  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000020  08000a44  08000a44  00010a44  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  08000a64  08000a64  00010a64  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  08000a6c  08000a6c  00010a6c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000430  20000000  08000a70  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .ccmram       00000000  10000000  10000000  00020430  2**0  CONTENTS
  7 .bss          00000024  20000430  20000430  00020430  2**2  ALLOC
  8 ._user_heap_stack 00000604  20000454  20000454  00020430  2**0  ALLOC
  9 .ARM.attributes 0000002a  00000000  00000000  00020430  2**0  CONTENTS, READONLY
 10 .comment      00000070  00000000  00000000  0002045a  2**0  CONTENTS, READONLY
 11 .debug_info   00002bf2  00000000  00000000  000204ca  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_abbrev 00000a86  00000000  00000000  000230bc  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_loc    0000074f  00000000  00000000  00023b42  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_aranges 00000100  00000000  00000000  00024291  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_line   00000894  00000000  00000000  00024391  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_str    00000c6c  00000000  00000000  00024c25  2**0  CONTENTS, READONLY, DEBUGGING
 17 .debug_frame  000002ac  00000000  00000000  00025894  2**2  CONTENTS, READONLY, DEBUGGING
 18 .debug_ranges 00000070  00000000  00000000  00025b40  2**0  CONTENTS, READONLY, DEBUGGING

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
 80001f0:	08000a2c 	.word	0x08000a2c

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
 800021c:	08000a2c 	.word	0x08000a2c
 8000220:	20000434 	.word	0x20000434
 8000224:	20000430 	.word	0x20000430
 8000228:	00000000 	.word	0x00000000

0800022c <GPIOConfig>:
 800022c:	b480      	push	{r7}
 800022e:	af00      	add	r7, sp, #0
 8000230:	4a13      	ldr	r2, [pc, #76]	; (8000280 <GPIOConfig+0x54>)
 8000232:	4b13      	ldr	r3, [pc, #76]	; (8000280 <GPIOConfig+0x54>)
 8000234:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000236:	f043 0301 	orr.w	r3, r3, #1
 800023a:	6313      	str	r3, [r2, #48]	; 0x30
 800023c:	4a11      	ldr	r2, [pc, #68]	; (8000284 <GPIOConfig+0x58>)
 800023e:	4b11      	ldr	r3, [pc, #68]	; (8000284 <GPIOConfig+0x58>)
 8000240:	681b      	ldr	r3, [r3, #0]
 8000242:	f043 0308 	orr.w	r3, r3, #8
 8000246:	6013      	str	r3, [r2, #0]
 8000248:	4a0e      	ldr	r2, [pc, #56]	; (8000284 <GPIOConfig+0x58>)
 800024a:	4b0e      	ldr	r3, [pc, #56]	; (8000284 <GPIOConfig+0x58>)
 800024c:	681b      	ldr	r3, [r3, #0]
 800024e:	f043 0302 	orr.w	r3, r3, #2
 8000252:	6013      	str	r3, [r2, #0]
 8000254:	4a0b      	ldr	r2, [pc, #44]	; (8000284 <GPIOConfig+0x58>)
 8000256:	4b0b      	ldr	r3, [pc, #44]	; (8000284 <GPIOConfig+0x58>)
 8000258:	681b      	ldr	r3, [r3, #0]
 800025a:	f043 0350 	orr.w	r3, r3, #80	; 0x50
 800025e:	6013      	str	r3, [r2, #0]
 8000260:	4a08      	ldr	r2, [pc, #32]	; (8000284 <GPIOConfig+0x58>)
 8000262:	4b08      	ldr	r3, [pc, #32]	; (8000284 <GPIOConfig+0x58>)
 8000264:	68db      	ldr	r3, [r3, #12]
 8000266:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 800026a:	60d3      	str	r3, [r2, #12]
 800026c:	4a05      	ldr	r2, [pc, #20]	; (8000284 <GPIOConfig+0x58>)
 800026e:	4b05      	ldr	r3, [pc, #20]	; (8000284 <GPIOConfig+0x58>)
 8000270:	6a1b      	ldr	r3, [r3, #32]
 8000272:	f043 0322 	orr.w	r3, r3, #34	; 0x22
 8000276:	6213      	str	r3, [r2, #32]
 8000278:	46bd      	mov	sp, r7
 800027a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800027e:	4770      	bx	lr
 8000280:	40023800 	.word	0x40023800
 8000284:	40020000 	.word	0x40020000

08000288 <TIM2Config>:
 8000288:	b480      	push	{r7}
 800028a:	af00      	add	r7, sp, #0
 800028c:	4a18      	ldr	r2, [pc, #96]	; (80002f0 <TIM2Config+0x68>)
 800028e:	4b18      	ldr	r3, [pc, #96]	; (80002f0 <TIM2Config+0x68>)
 8000290:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000292:	f043 0301 	orr.w	r3, r3, #1
 8000296:	6413      	str	r3, [r2, #64]	; 0x40
 8000298:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800029c:	f240 32e7 	movw	r2, #999	; 0x3e7
 80002a0:	62da      	str	r2, [r3, #44]	; 0x2c
 80002a2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80002a6:	f643 627f 	movw	r2, #15999	; 0x3e7f
 80002aa:	629a      	str	r2, [r3, #40]	; 0x28
 80002ac:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80002b0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80002b4:	681b      	ldr	r3, [r3, #0]
 80002b6:	f043 0304 	orr.w	r3, r3, #4
 80002ba:	6013      	str	r3, [r2, #0]
 80002bc:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80002c0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80002c4:	68db      	ldr	r3, [r3, #12]
 80002c6:	f043 0301 	orr.w	r3, r3, #1
 80002ca:	60d3      	str	r3, [r2, #12]
 80002cc:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80002d0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80002d4:	681b      	ldr	r3, [r3, #0]
 80002d6:	f043 0301 	orr.w	r3, r3, #1
 80002da:	6013      	str	r3, [r2, #0]
 80002dc:	4a05      	ldr	r2, [pc, #20]	; (80002f4 <TIM2Config+0x6c>)
 80002de:	4b05      	ldr	r3, [pc, #20]	; (80002f4 <TIM2Config+0x6c>)
 80002e0:	681b      	ldr	r3, [r3, #0]
 80002e2:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 80002e6:	6013      	str	r3, [r2, #0]
 80002e8:	46bd      	mov	sp, r7
 80002ea:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002ee:	4770      	bx	lr
 80002f0:	40023800 	.word	0x40023800
 80002f4:	e000e100 	.word	0xe000e100

080002f8 <TIM4Config>:
 80002f8:	b480      	push	{r7}
 80002fa:	af00      	add	r7, sp, #0
 80002fc:	4a11      	ldr	r2, [pc, #68]	; (8000344 <TIM4Config+0x4c>)
 80002fe:	4b11      	ldr	r3, [pc, #68]	; (8000344 <TIM4Config+0x4c>)
 8000300:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000302:	f043 0304 	orr.w	r3, r3, #4
 8000306:	6413      	str	r3, [r2, #64]	; 0x40
 8000308:	4b0f      	ldr	r3, [pc, #60]	; (8000348 <TIM4Config+0x50>)
 800030a:	2231      	movs	r2, #49	; 0x31
 800030c:	62da      	str	r2, [r3, #44]	; 0x2c
 800030e:	4b0e      	ldr	r3, [pc, #56]	; (8000348 <TIM4Config+0x50>)
 8000310:	f643 627f 	movw	r2, #15999	; 0x3e7f
 8000314:	629a      	str	r2, [r3, #40]	; 0x28
 8000316:	4a0c      	ldr	r2, [pc, #48]	; (8000348 <TIM4Config+0x50>)
 8000318:	4b0b      	ldr	r3, [pc, #44]	; (8000348 <TIM4Config+0x50>)
 800031a:	681b      	ldr	r3, [r3, #0]
 800031c:	f043 0304 	orr.w	r3, r3, #4
 8000320:	6013      	str	r3, [r2, #0]
 8000322:	4a09      	ldr	r2, [pc, #36]	; (8000348 <TIM4Config+0x50>)
 8000324:	4b08      	ldr	r3, [pc, #32]	; (8000348 <TIM4Config+0x50>)
 8000326:	68db      	ldr	r3, [r3, #12]
 8000328:	f043 0301 	orr.w	r3, r3, #1
 800032c:	60d3      	str	r3, [r2, #12]
 800032e:	4a07      	ldr	r2, [pc, #28]	; (800034c <TIM4Config+0x54>)
 8000330:	4b06      	ldr	r3, [pc, #24]	; (800034c <TIM4Config+0x54>)
 8000332:	681b      	ldr	r3, [r3, #0]
 8000334:	f043 4380 	orr.w	r3, r3, #1073741824	; 0x40000000
 8000338:	6013      	str	r3, [r2, #0]
 800033a:	46bd      	mov	sp, r7
 800033c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000340:	4770      	bx	lr
 8000342:	bf00      	nop
 8000344:	40023800 	.word	0x40023800
 8000348:	40000800 	.word	0x40000800
 800034c:	e000e100 	.word	0xe000e100

08000350 <TIM5Config>:
 8000350:	b480      	push	{r7}
 8000352:	af00      	add	r7, sp, #0
 8000354:	4a1a      	ldr	r2, [pc, #104]	; (80003c0 <TIM5Config+0x70>)
 8000356:	4b1a      	ldr	r3, [pc, #104]	; (80003c0 <TIM5Config+0x70>)
 8000358:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800035a:	f043 0308 	orr.w	r3, r3, #8
 800035e:	6413      	str	r3, [r2, #64]	; 0x40
 8000360:	4b18      	ldr	r3, [pc, #96]	; (80003c4 <TIM5Config+0x74>)
 8000362:	2263      	movs	r2, #99	; 0x63
 8000364:	62da      	str	r2, [r3, #44]	; 0x2c
 8000366:	4b17      	ldr	r3, [pc, #92]	; (80003c4 <TIM5Config+0x74>)
 8000368:	229f      	movs	r2, #159	; 0x9f
 800036a:	629a      	str	r2, [r3, #40]	; 0x28
 800036c:	4a15      	ldr	r2, [pc, #84]	; (80003c4 <TIM5Config+0x74>)
 800036e:	4b15      	ldr	r3, [pc, #84]	; (80003c4 <TIM5Config+0x74>)
 8000370:	681b      	ldr	r3, [r3, #0]
 8000372:	f043 0304 	orr.w	r3, r3, #4
 8000376:	6013      	str	r3, [r2, #0]
 8000378:	4a12      	ldr	r2, [pc, #72]	; (80003c4 <TIM5Config+0x74>)
 800037a:	4b12      	ldr	r3, [pc, #72]	; (80003c4 <TIM5Config+0x74>)
 800037c:	681b      	ldr	r3, [r3, #0]
 800037e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000382:	6013      	str	r3, [r2, #0]
 8000384:	4a0f      	ldr	r2, [pc, #60]	; (80003c4 <TIM5Config+0x74>)
 8000386:	4b0f      	ldr	r3, [pc, #60]	; (80003c4 <TIM5Config+0x74>)
 8000388:	699b      	ldr	r3, [r3, #24]
 800038a:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
 800038e:	f043 0360 	orr.w	r3, r3, #96	; 0x60
 8000392:	6193      	str	r3, [r2, #24]
 8000394:	4b0b      	ldr	r3, [pc, #44]	; (80003c4 <TIM5Config+0x74>)
 8000396:	2231      	movs	r2, #49	; 0x31
 8000398:	635a      	str	r2, [r3, #52]	; 0x34
 800039a:	4b0a      	ldr	r3, [pc, #40]	; (80003c4 <TIM5Config+0x74>)
 800039c:	2200      	movs	r2, #0
 800039e:	639a      	str	r2, [r3, #56]	; 0x38
 80003a0:	4a08      	ldr	r2, [pc, #32]	; (80003c4 <TIM5Config+0x74>)
 80003a2:	4b08      	ldr	r3, [pc, #32]	; (80003c4 <TIM5Config+0x74>)
 80003a4:	681b      	ldr	r3, [r3, #0]
 80003a6:	f043 0301 	orr.w	r3, r3, #1
 80003aa:	6013      	str	r3, [r2, #0]
 80003ac:	4a06      	ldr	r2, [pc, #24]	; (80003c8 <TIM5Config+0x78>)
 80003ae:	4b06      	ldr	r3, [pc, #24]	; (80003c8 <TIM5Config+0x78>)
 80003b0:	685b      	ldr	r3, [r3, #4]
 80003b2:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 80003b6:	6053      	str	r3, [r2, #4]
 80003b8:	46bd      	mov	sp, r7
 80003ba:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003be:	4770      	bx	lr
 80003c0:	40023800 	.word	0x40023800
 80003c4:	40000c00 	.word	0x40000c00
 80003c8:	e000e100 	.word	0xe000e100

080003cc <EXTIConfig>:
 80003cc:	b480      	push	{r7}
 80003ce:	af00      	add	r7, sp, #0
 80003d0:	4a0f      	ldr	r2, [pc, #60]	; (8000410 <EXTIConfig+0x44>)
 80003d2:	4b0f      	ldr	r3, [pc, #60]	; (8000410 <EXTIConfig+0x44>)
 80003d4:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 80003d6:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 80003da:	6453      	str	r3, [r2, #68]	; 0x44
 80003dc:	4a0d      	ldr	r2, [pc, #52]	; (8000414 <EXTIConfig+0x48>)
 80003de:	4b0d      	ldr	r3, [pc, #52]	; (8000414 <EXTIConfig+0x48>)
 80003e0:	68db      	ldr	r3, [r3, #12]
 80003e2:	60d3      	str	r3, [r2, #12]
 80003e4:	4a0c      	ldr	r2, [pc, #48]	; (8000418 <EXTIConfig+0x4c>)
 80003e6:	4b0c      	ldr	r3, [pc, #48]	; (8000418 <EXTIConfig+0x4c>)
 80003e8:	68db      	ldr	r3, [r3, #12]
 80003ea:	f043 0320 	orr.w	r3, r3, #32
 80003ee:	60d3      	str	r3, [r2, #12]
 80003f0:	4a09      	ldr	r2, [pc, #36]	; (8000418 <EXTIConfig+0x4c>)
 80003f2:	4b09      	ldr	r3, [pc, #36]	; (8000418 <EXTIConfig+0x4c>)
 80003f4:	681b      	ldr	r3, [r3, #0]
 80003f6:	f043 0320 	orr.w	r3, r3, #32
 80003fa:	6013      	str	r3, [r2, #0]
 80003fc:	4a07      	ldr	r2, [pc, #28]	; (800041c <EXTIConfig+0x50>)
 80003fe:	4b07      	ldr	r3, [pc, #28]	; (800041c <EXTIConfig+0x50>)
 8000400:	681b      	ldr	r3, [r3, #0]
 8000402:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 8000406:	6013      	str	r3, [r2, #0]
 8000408:	46bd      	mov	sp, r7
 800040a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800040e:	4770      	bx	lr
 8000410:	40023800 	.word	0x40023800
 8000414:	40013800 	.word	0x40013800
 8000418:	40013c00 	.word	0x40013c00
 800041c:	e000e100 	.word	0xe000e100

08000420 <EXTI9_5_IRQHandler>:
 8000420:	b480      	push	{r7}
 8000422:	af00      	add	r7, sp, #0
 8000424:	4a10      	ldr	r2, [pc, #64]	; (8000468 <EXTI9_5_IRQHandler+0x48>)
 8000426:	4b10      	ldr	r3, [pc, #64]	; (8000468 <EXTI9_5_IRQHandler+0x48>)
 8000428:	695b      	ldr	r3, [r3, #20]
 800042a:	f043 0320 	orr.w	r3, r3, #32
 800042e:	6153      	str	r3, [r2, #20]
 8000430:	4a0d      	ldr	r2, [pc, #52]	; (8000468 <EXTI9_5_IRQHandler+0x48>)
 8000432:	4b0d      	ldr	r3, [pc, #52]	; (8000468 <EXTI9_5_IRQHandler+0x48>)
 8000434:	681b      	ldr	r3, [r3, #0]
 8000436:	f023 0320 	bic.w	r3, r3, #32
 800043a:	6013      	str	r3, [r2, #0]
 800043c:	4a0b      	ldr	r2, [pc, #44]	; (800046c <EXTI9_5_IRQHandler+0x4c>)
 800043e:	4b0b      	ldr	r3, [pc, #44]	; (800046c <EXTI9_5_IRQHandler+0x4c>)
 8000440:	681b      	ldr	r3, [r3, #0]
 8000442:	f043 0301 	orr.w	r3, r3, #1
 8000446:	6013      	str	r3, [r2, #0]
 8000448:	4a09      	ldr	r2, [pc, #36]	; (8000470 <EXTI9_5_IRQHandler+0x50>)
 800044a:	4b09      	ldr	r3, [pc, #36]	; (8000470 <EXTI9_5_IRQHandler+0x50>)
 800044c:	6a1b      	ldr	r3, [r3, #32]
 800044e:	f043 0301 	orr.w	r3, r3, #1
 8000452:	6213      	str	r3, [r2, #32]
 8000454:	4a06      	ldr	r2, [pc, #24]	; (8000470 <EXTI9_5_IRQHandler+0x50>)
 8000456:	4b06      	ldr	r3, [pc, #24]	; (8000470 <EXTI9_5_IRQHandler+0x50>)
 8000458:	68db      	ldr	r3, [r3, #12]
 800045a:	f043 0301 	orr.w	r3, r3, #1
 800045e:	60d3      	str	r3, [r2, #12]
 8000460:	46bd      	mov	sp, r7
 8000462:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000466:	4770      	bx	lr
 8000468:	40013c00 	.word	0x40013c00
 800046c:	40000800 	.word	0x40000800
 8000470:	40000c00 	.word	0x40000c00

08000474 <TIM5_IRQHandler>:
 8000474:	b480      	push	{r7}
 8000476:	af00      	add	r7, sp, #0
 8000478:	4b11      	ldr	r3, [pc, #68]	; (80004c0 <TIM5_IRQHandler+0x4c>)
 800047a:	781b      	ldrb	r3, [r3, #0]
 800047c:	3301      	adds	r3, #1
 800047e:	b2da      	uxtb	r2, r3
 8000480:	4b0f      	ldr	r3, [pc, #60]	; (80004c0 <TIM5_IRQHandler+0x4c>)
 8000482:	701a      	strb	r2, [r3, #0]
 8000484:	4b0e      	ldr	r3, [pc, #56]	; (80004c0 <TIM5_IRQHandler+0x4c>)
 8000486:	781b      	ldrb	r3, [r3, #0]
 8000488:	2bfa      	cmp	r3, #250	; 0xfa
 800048a:	d10e      	bne.n	80004aa <TIM5_IRQHandler+0x36>
 800048c:	4b0c      	ldr	r3, [pc, #48]	; (80004c0 <TIM5_IRQHandler+0x4c>)
 800048e:	2200      	movs	r2, #0
 8000490:	701a      	strb	r2, [r3, #0]
 8000492:	4a0c      	ldr	r2, [pc, #48]	; (80004c4 <TIM5_IRQHandler+0x50>)
 8000494:	4b0b      	ldr	r3, [pc, #44]	; (80004c4 <TIM5_IRQHandler+0x50>)
 8000496:	6a1b      	ldr	r3, [r3, #32]
 8000498:	f023 0301 	bic.w	r3, r3, #1
 800049c:	6213      	str	r3, [r2, #32]
 800049e:	4a09      	ldr	r2, [pc, #36]	; (80004c4 <TIM5_IRQHandler+0x50>)
 80004a0:	4b08      	ldr	r3, [pc, #32]	; (80004c4 <TIM5_IRQHandler+0x50>)
 80004a2:	68db      	ldr	r3, [r3, #12]
 80004a4:	f023 0301 	bic.w	r3, r3, #1
 80004a8:	60d3      	str	r3, [r2, #12]
 80004aa:	4a06      	ldr	r2, [pc, #24]	; (80004c4 <TIM5_IRQHandler+0x50>)
 80004ac:	4b05      	ldr	r3, [pc, #20]	; (80004c4 <TIM5_IRQHandler+0x50>)
 80004ae:	691b      	ldr	r3, [r3, #16]
 80004b0:	f023 0301 	bic.w	r3, r3, #1
 80004b4:	6113      	str	r3, [r2, #16]
 80004b6:	46bd      	mov	sp, r7
 80004b8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004bc:	4770      	bx	lr
 80004be:	bf00      	nop
 80004c0:	2000044e 	.word	0x2000044e
 80004c4:	40000c00 	.word	0x40000c00

080004c8 <TIM4_IRQHandler>:
 80004c8:	b480      	push	{r7}
 80004ca:	af00      	add	r7, sp, #0
 80004cc:	4b42      	ldr	r3, [pc, #264]	; (80005d8 <TIM4_IRQHandler+0x110>)
 80004ce:	691b      	ldr	r3, [r3, #16]
 80004d0:	f003 0320 	and.w	r3, r3, #32
 80004d4:	2b00      	cmp	r3, #0
 80004d6:	d101      	bne.n	80004dc <TIM4_IRQHandler+0x14>
 80004d8:	2301      	movs	r3, #1
 80004da:	e000      	b.n	80004de <TIM4_IRQHandler+0x16>
 80004dc:	2300      	movs	r3, #0
 80004de:	2b00      	cmp	r3, #0
 80004e0:	d028      	beq.n	8000534 <TIM4_IRQHandler+0x6c>
 80004e2:	4b3e      	ldr	r3, [pc, #248]	; (80005dc <TIM4_IRQHandler+0x114>)
 80004e4:	781b      	ldrb	r3, [r3, #0]
 80004e6:	2b64      	cmp	r3, #100	; 0x64
 80004e8:	d801      	bhi.n	80004ee <TIM4_IRQHandler+0x26>
 80004ea:	2201      	movs	r2, #1
 80004ec:	e000      	b.n	80004f0 <TIM4_IRQHandler+0x28>
 80004ee:	22c4      	movs	r2, #196	; 0xc4
 80004f0:	4b3a      	ldr	r3, [pc, #232]	; (80005dc <TIM4_IRQHandler+0x114>)
 80004f2:	781b      	ldrb	r3, [r3, #0]
 80004f4:	4413      	add	r3, r2
 80004f6:	b2da      	uxtb	r2, r3
 80004f8:	4b38      	ldr	r3, [pc, #224]	; (80005dc <TIM4_IRQHandler+0x114>)
 80004fa:	701a      	strb	r2, [r3, #0]
 80004fc:	4b37      	ldr	r3, [pc, #220]	; (80005dc <TIM4_IRQHandler+0x114>)
 80004fe:	781b      	ldrb	r3, [r3, #0]
 8000500:	2b28      	cmp	r3, #40	; 0x28
 8000502:	d15e      	bne.n	80005c2 <TIM4_IRQHandler+0xfa>
 8000504:	4b36      	ldr	r3, [pc, #216]	; (80005e0 <TIM4_IRQHandler+0x118>)
 8000506:	781b      	ldrb	r3, [r3, #0]
 8000508:	b2db      	uxtb	r3, r3
 800050a:	f083 0304 	eor.w	r3, r3, #4
 800050e:	b2da      	uxtb	r2, r3
 8000510:	4b33      	ldr	r3, [pc, #204]	; (80005e0 <TIM4_IRQHandler+0x118>)
 8000512:	701a      	strb	r2, [r3, #0]
 8000514:	4b32      	ldr	r3, [pc, #200]	; (80005e0 <TIM4_IRQHandler+0x118>)
 8000516:	781b      	ldrb	r3, [r3, #0]
 8000518:	b2db      	uxtb	r3, r3
 800051a:	f003 0304 	and.w	r3, r3, #4
 800051e:	2b00      	cmp	r3, #0
 8000520:	d04f      	beq.n	80005c2 <TIM4_IRQHandler+0xfa>
 8000522:	4a2d      	ldr	r2, [pc, #180]	; (80005d8 <TIM4_IRQHandler+0x110>)
 8000524:	4b2e      	ldr	r3, [pc, #184]	; (80005e0 <TIM4_IRQHandler+0x118>)
 8000526:	781b      	ldrb	r3, [r3, #0]
 8000528:	b2db      	uxtb	r3, r3
 800052a:	f003 0303 	and.w	r3, r3, #3
 800052e:	009b      	lsls	r3, r3, #2
 8000530:	6193      	str	r3, [r2, #24]
 8000532:	e046      	b.n	80005c2 <TIM4_IRQHandler+0xfa>
 8000534:	4b29      	ldr	r3, [pc, #164]	; (80005dc <TIM4_IRQHandler+0x114>)
 8000536:	781b      	ldrb	r3, [r3, #0]
 8000538:	2b00      	cmp	r3, #0
 800053a:	d033      	beq.n	80005a4 <TIM4_IRQHandler+0xdc>
 800053c:	4b27      	ldr	r3, [pc, #156]	; (80005dc <TIM4_IRQHandler+0x114>)
 800053e:	781b      	ldrb	r3, [r3, #0]
 8000540:	2b27      	cmp	r3, #39	; 0x27
 8000542:	d814      	bhi.n	800056e <TIM4_IRQHandler+0xa6>
 8000544:	4b26      	ldr	r3, [pc, #152]	; (80005e0 <TIM4_IRQHandler+0x118>)
 8000546:	781b      	ldrb	r3, [r3, #0]
 8000548:	b2db      	uxtb	r3, r3
 800054a:	b2db      	uxtb	r3, r3
 800054c:	f003 0304 	and.w	r3, r3, #4
 8000550:	b2da      	uxtb	r2, r3
 8000552:	4b23      	ldr	r3, [pc, #140]	; (80005e0 <TIM4_IRQHandler+0x118>)
 8000554:	781b      	ldrb	r3, [r3, #0]
 8000556:	b2db      	uxtb	r3, r3
 8000558:	3301      	adds	r3, #1
 800055a:	b2db      	uxtb	r3, r3
 800055c:	b2db      	uxtb	r3, r3
 800055e:	f003 0303 	and.w	r3, r3, #3
 8000562:	b2db      	uxtb	r3, r3
 8000564:	4313      	orrs	r3, r2
 8000566:	b2db      	uxtb	r3, r3
 8000568:	b2da      	uxtb	r2, r3
 800056a:	4b1d      	ldr	r3, [pc, #116]	; (80005e0 <TIM4_IRQHandler+0x118>)
 800056c:	701a      	strb	r2, [r3, #0]
 800056e:	4b1c      	ldr	r3, [pc, #112]	; (80005e0 <TIM4_IRQHandler+0x118>)
 8000570:	781b      	ldrb	r3, [r3, #0]
 8000572:	b2db      	uxtb	r3, r3
 8000574:	f003 0304 	and.w	r3, r3, #4
 8000578:	2b00      	cmp	r3, #0
 800057a:	d007      	beq.n	800058c <TIM4_IRQHandler+0xc4>
 800057c:	4a16      	ldr	r2, [pc, #88]	; (80005d8 <TIM4_IRQHandler+0x110>)
 800057e:	4b18      	ldr	r3, [pc, #96]	; (80005e0 <TIM4_IRQHandler+0x118>)
 8000580:	781b      	ldrb	r3, [r3, #0]
 8000582:	b2db      	uxtb	r3, r3
 8000584:	f003 0303 	and.w	r3, r3, #3
 8000588:	009b      	lsls	r3, r3, #2
 800058a:	6193      	str	r3, [r2, #24]
 800058c:	4a12      	ldr	r2, [pc, #72]	; (80005d8 <TIM4_IRQHandler+0x110>)
 800058e:	4b14      	ldr	r3, [pc, #80]	; (80005e0 <TIM4_IRQHandler+0x118>)
 8000590:	781b      	ldrb	r3, [r3, #0]
 8000592:	b2db      	uxtb	r3, r3
 8000594:	43db      	mvns	r3, r3
 8000596:	f003 0303 	and.w	r3, r3, #3
 800059a:	049b      	lsls	r3, r3, #18
 800059c:	6193      	str	r3, [r2, #24]
 800059e:	4b0f      	ldr	r3, [pc, #60]	; (80005dc <TIM4_IRQHandler+0x114>)
 80005a0:	2200      	movs	r2, #0
 80005a2:	701a      	strb	r2, [r3, #0]
 80005a4:	4a0f      	ldr	r2, [pc, #60]	; (80005e4 <TIM4_IRQHandler+0x11c>)
 80005a6:	4b0f      	ldr	r3, [pc, #60]	; (80005e4 <TIM4_IRQHandler+0x11c>)
 80005a8:	681b      	ldr	r3, [r3, #0]
 80005aa:	f023 0301 	bic.w	r3, r3, #1
 80005ae:	6013      	str	r3, [r2, #0]
 80005b0:	4b0c      	ldr	r3, [pc, #48]	; (80005e4 <TIM4_IRQHandler+0x11c>)
 80005b2:	2200      	movs	r2, #0
 80005b4:	625a      	str	r2, [r3, #36]	; 0x24
 80005b6:	4a0c      	ldr	r2, [pc, #48]	; (80005e8 <TIM4_IRQHandler+0x120>)
 80005b8:	4b0b      	ldr	r3, [pc, #44]	; (80005e8 <TIM4_IRQHandler+0x120>)
 80005ba:	681b      	ldr	r3, [r3, #0]
 80005bc:	f043 0320 	orr.w	r3, r3, #32
 80005c0:	6013      	str	r3, [r2, #0]
 80005c2:	4a08      	ldr	r2, [pc, #32]	; (80005e4 <TIM4_IRQHandler+0x11c>)
 80005c4:	4b07      	ldr	r3, [pc, #28]	; (80005e4 <TIM4_IRQHandler+0x11c>)
 80005c6:	691b      	ldr	r3, [r3, #16]
 80005c8:	f023 0301 	bic.w	r3, r3, #1
 80005cc:	6113      	str	r3, [r2, #16]
 80005ce:	46bd      	mov	sp, r7
 80005d0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005d4:	4770      	bx	lr
 80005d6:	bf00      	nop
 80005d8:	40020000 	.word	0x40020000
 80005dc:	2000044f 	.word	0x2000044f
 80005e0:	2000044c 	.word	0x2000044c
 80005e4:	40000800 	.word	0x40000800
 80005e8:	40013c00 	.word	0x40013c00

080005ec <TIM2_IRQHandler>:
 80005ec:	b480      	push	{r7}
 80005ee:	af00      	add	r7, sp, #0
 80005f0:	4b44      	ldr	r3, [pc, #272]	; (8000704 <TIM2_IRQHandler+0x118>)
 80005f2:	781b      	ldrb	r3, [r3, #0]
 80005f4:	2b03      	cmp	r3, #3
 80005f6:	d002      	beq.n	80005fe <TIM2_IRQHandler+0x12>
 80005f8:	2b06      	cmp	r3, #6
 80005fa:	d02e      	beq.n	800065a <TIM2_IRQHandler+0x6e>
 80005fc:	e037      	b.n	800066e <TIM2_IRQHandler+0x82>
 80005fe:	4b42      	ldr	r3, [pc, #264]	; (8000708 <TIM2_IRQHandler+0x11c>)
 8000600:	781b      	ldrb	r3, [r3, #0]
 8000602:	2b00      	cmp	r3, #0
 8000604:	d005      	beq.n	8000612 <TIM2_IRQHandler+0x26>
 8000606:	4a41      	ldr	r2, [pc, #260]	; (800070c <TIM2_IRQHandler+0x120>)
 8000608:	4b40      	ldr	r3, [pc, #256]	; (800070c <TIM2_IRQHandler+0x120>)
 800060a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 800060c:	3301      	adds	r3, #1
 800060e:	6393      	str	r3, [r2, #56]	; 0x38
 8000610:	e004      	b.n	800061c <TIM2_IRQHandler+0x30>
 8000612:	4a3e      	ldr	r2, [pc, #248]	; (800070c <TIM2_IRQHandler+0x120>)
 8000614:	4b3d      	ldr	r3, [pc, #244]	; (800070c <TIM2_IRQHandler+0x120>)
 8000616:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8000618:	3b01      	subs	r3, #1
 800061a:	6393      	str	r3, [r2, #56]	; 0x38
 800061c:	4b3b      	ldr	r3, [pc, #236]	; (800070c <TIM2_IRQHandler+0x120>)
 800061e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8000620:	2b61      	cmp	r3, #97	; 0x61
 8000622:	d803      	bhi.n	800062c <TIM2_IRQHandler+0x40>
 8000624:	4b39      	ldr	r3, [pc, #228]	; (800070c <TIM2_IRQHandler+0x120>)
 8000626:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8000628:	2b00      	cmp	r3, #0
 800062a:	d109      	bne.n	8000640 <TIM2_IRQHandler+0x54>
 800062c:	4b36      	ldr	r3, [pc, #216]	; (8000708 <TIM2_IRQHandler+0x11c>)
 800062e:	781b      	ldrb	r3, [r3, #0]
 8000630:	2b00      	cmp	r3, #0
 8000632:	bf0c      	ite	eq
 8000634:	2301      	moveq	r3, #1
 8000636:	2300      	movne	r3, #0
 8000638:	b2db      	uxtb	r3, r3
 800063a:	461a      	mov	r2, r3
 800063c:	4b32      	ldr	r3, [pc, #200]	; (8000708 <TIM2_IRQHandler+0x11c>)
 800063e:	701a      	strb	r2, [r3, #0]
 8000640:	4a32      	ldr	r2, [pc, #200]	; (800070c <TIM2_IRQHandler+0x120>)
 8000642:	4b32      	ldr	r3, [pc, #200]	; (800070c <TIM2_IRQHandler+0x120>)
 8000644:	6a1b      	ldr	r3, [r3, #32]
 8000646:	f043 0310 	orr.w	r3, r3, #16
 800064a:	6213      	str	r3, [r2, #32]
 800064c:	4b2d      	ldr	r3, [pc, #180]	; (8000704 <TIM2_IRQHandler+0x118>)
 800064e:	781b      	ldrb	r3, [r3, #0]
 8000650:	3301      	adds	r3, #1
 8000652:	b2da      	uxtb	r2, r3
 8000654:	4b2b      	ldr	r3, [pc, #172]	; (8000704 <TIM2_IRQHandler+0x118>)
 8000656:	701a      	strb	r2, [r3, #0]
 8000658:	e00f      	b.n	800067a <TIM2_IRQHandler+0x8e>
 800065a:	4b2a      	ldr	r3, [pc, #168]	; (8000704 <TIM2_IRQHandler+0x118>)
 800065c:	2200      	movs	r2, #0
 800065e:	701a      	strb	r2, [r3, #0]
 8000660:	4a2a      	ldr	r2, [pc, #168]	; (800070c <TIM2_IRQHandler+0x120>)
 8000662:	4b2a      	ldr	r3, [pc, #168]	; (800070c <TIM2_IRQHandler+0x120>)
 8000664:	6a1b      	ldr	r3, [r3, #32]
 8000666:	f023 0310 	bic.w	r3, r3, #16
 800066a:	6213      	str	r3, [r2, #32]
 800066c:	e005      	b.n	800067a <TIM2_IRQHandler+0x8e>
 800066e:	4b25      	ldr	r3, [pc, #148]	; (8000704 <TIM2_IRQHandler+0x118>)
 8000670:	781b      	ldrb	r3, [r3, #0]
 8000672:	3301      	adds	r3, #1
 8000674:	b2da      	uxtb	r2, r3
 8000676:	4b23      	ldr	r3, [pc, #140]	; (8000704 <TIM2_IRQHandler+0x118>)
 8000678:	701a      	strb	r2, [r3, #0]
 800067a:	4b25      	ldr	r3, [pc, #148]	; (8000710 <TIM2_IRQHandler+0x124>)
 800067c:	781b      	ldrb	r3, [r3, #0]
 800067e:	b2db      	uxtb	r3, r3
 8000680:	f003 0304 	and.w	r3, r3, #4
 8000684:	2b00      	cmp	r3, #0
 8000686:	d131      	bne.n	80006ec <TIM2_IRQHandler+0x100>
 8000688:	4b21      	ldr	r3, [pc, #132]	; (8000710 <TIM2_IRQHandler+0x124>)
 800068a:	781b      	ldrb	r3, [r3, #0]
 800068c:	b2db      	uxtb	r3, r3
 800068e:	f003 0301 	and.w	r3, r3, #1
 8000692:	2b00      	cmp	r3, #0
 8000694:	d00a      	beq.n	80006ac <TIM2_IRQHandler+0xc0>
 8000696:	4b1b      	ldr	r3, [pc, #108]	; (8000704 <TIM2_IRQHandler+0x118>)
 8000698:	781b      	ldrb	r3, [r3, #0]
 800069a:	f003 0301 	and.w	r3, r3, #1
 800069e:	b2db      	uxtb	r3, r3
 80006a0:	2b00      	cmp	r3, #0
 80006a2:	d003      	beq.n	80006ac <TIM2_IRQHandler+0xc0>
 80006a4:	4b1b      	ldr	r3, [pc, #108]	; (8000714 <TIM2_IRQHandler+0x128>)
 80006a6:	2204      	movs	r2, #4
 80006a8:	619a      	str	r2, [r3, #24]
 80006aa:	e003      	b.n	80006b4 <TIM2_IRQHandler+0xc8>
 80006ac:	4b19      	ldr	r3, [pc, #100]	; (8000714 <TIM2_IRQHandler+0x128>)
 80006ae:	f44f 2280 	mov.w	r2, #262144	; 0x40000
 80006b2:	619a      	str	r2, [r3, #24]
 80006b4:	4b16      	ldr	r3, [pc, #88]	; (8000710 <TIM2_IRQHandler+0x124>)
 80006b6:	781b      	ldrb	r3, [r3, #0]
 80006b8:	b2db      	uxtb	r3, r3
 80006ba:	f003 0302 	and.w	r3, r3, #2
 80006be:	2b00      	cmp	r3, #0
 80006c0:	d010      	beq.n	80006e4 <TIM2_IRQHandler+0xf8>
 80006c2:	4b10      	ldr	r3, [pc, #64]	; (8000704 <TIM2_IRQHandler+0x118>)
 80006c4:	781a      	ldrb	r2, [r3, #0]
 80006c6:	4b14      	ldr	r3, [pc, #80]	; (8000718 <TIM2_IRQHandler+0x12c>)
 80006c8:	fba3 1302 	umull	r1, r3, r3, r2
 80006cc:	0859      	lsrs	r1, r3, #1
 80006ce:	460b      	mov	r3, r1
 80006d0:	005b      	lsls	r3, r3, #1
 80006d2:	440b      	add	r3, r1
 80006d4:	1ad3      	subs	r3, r2, r3
 80006d6:	b2db      	uxtb	r3, r3
 80006d8:	2b00      	cmp	r3, #0
 80006da:	d103      	bne.n	80006e4 <TIM2_IRQHandler+0xf8>
 80006dc:	4b0d      	ldr	r3, [pc, #52]	; (8000714 <TIM2_IRQHandler+0x128>)
 80006de:	2208      	movs	r2, #8
 80006e0:	619a      	str	r2, [r3, #24]
 80006e2:	e003      	b.n	80006ec <TIM2_IRQHandler+0x100>
 80006e4:	4b0b      	ldr	r3, [pc, #44]	; (8000714 <TIM2_IRQHandler+0x128>)
 80006e6:	f44f 2200 	mov.w	r2, #524288	; 0x80000
 80006ea:	619a      	str	r2, [r3, #24]
 80006ec:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80006f0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80006f4:	691b      	ldr	r3, [r3, #16]
 80006f6:	f023 0301 	bic.w	r3, r3, #1
 80006fa:	6113      	str	r3, [r2, #16]
 80006fc:	46bd      	mov	sp, r7
 80006fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000702:	4770      	bx	lr
 8000704:	20000450 	.word	0x20000450
 8000708:	20000000 	.word	0x20000000
 800070c:	40000c00 	.word	0x40000c00
 8000710:	2000044c 	.word	0x2000044c
 8000714:	40020000 	.word	0x40020000
 8000718:	aaaaaaab 	.word	0xaaaaaaab

0800071c <main>:
 800071c:	b580      	push	{r7, lr}
 800071e:	b082      	sub	sp, #8
 8000720:	af00      	add	r7, sp, #0
 8000722:	2300      	movs	r3, #0
 8000724:	607b      	str	r3, [r7, #4]
 8000726:	687b      	ldr	r3, [r7, #4]
 8000728:	3301      	adds	r3, #1
 800072a:	607b      	str	r3, [r7, #4]
 800072c:	f7ff fd7e 	bl	800022c <GPIOConfig>
 8000730:	f7ff fdaa 	bl	8000288 <TIM2Config>
 8000734:	f7ff fde0 	bl	80002f8 <TIM4Config>
 8000738:	f7ff fe0a 	bl	8000350 <TIM5Config>
 800073c:	f7ff fe46 	bl	80003cc <EXTIConfig>
 8000740:	e7fe      	b.n	8000740 <main+0x24>
 8000742:	bf00      	nop

08000744 <SystemInit>:
 8000744:	b480      	push	{r7}
 8000746:	af00      	add	r7, sp, #0
 8000748:	4a12      	ldr	r2, [pc, #72]	; (8000794 <SystemInit+0x50>)
 800074a:	4b12      	ldr	r3, [pc, #72]	; (8000794 <SystemInit+0x50>)
 800074c:	681b      	ldr	r3, [r3, #0]
 800074e:	f043 0301 	orr.w	r3, r3, #1
 8000752:	6013      	str	r3, [r2, #0]
 8000754:	4b0f      	ldr	r3, [pc, #60]	; (8000794 <SystemInit+0x50>)
 8000756:	2200      	movs	r2, #0
 8000758:	609a      	str	r2, [r3, #8]
 800075a:	4a0e      	ldr	r2, [pc, #56]	; (8000794 <SystemInit+0x50>)
 800075c:	4b0d      	ldr	r3, [pc, #52]	; (8000794 <SystemInit+0x50>)
 800075e:	681b      	ldr	r3, [r3, #0]
 8000760:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8000764:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8000768:	6013      	str	r3, [r2, #0]
 800076a:	4b0a      	ldr	r3, [pc, #40]	; (8000794 <SystemInit+0x50>)
 800076c:	4a0a      	ldr	r2, [pc, #40]	; (8000798 <SystemInit+0x54>)
 800076e:	605a      	str	r2, [r3, #4]
 8000770:	4a08      	ldr	r2, [pc, #32]	; (8000794 <SystemInit+0x50>)
 8000772:	4b08      	ldr	r3, [pc, #32]	; (8000794 <SystemInit+0x50>)
 8000774:	681b      	ldr	r3, [r3, #0]
 8000776:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 800077a:	6013      	str	r3, [r2, #0]
 800077c:	4b05      	ldr	r3, [pc, #20]	; (8000794 <SystemInit+0x50>)
 800077e:	2200      	movs	r2, #0
 8000780:	60da      	str	r2, [r3, #12]
 8000782:	4b06      	ldr	r3, [pc, #24]	; (800079c <SystemInit+0x58>)
 8000784:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000788:	609a      	str	r2, [r3, #8]
 800078a:	46bd      	mov	sp, r7
 800078c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000790:	4770      	bx	lr
 8000792:	bf00      	nop
 8000794:	40023800 	.word	0x40023800
 8000798:	24003010 	.word	0x24003010
 800079c:	e000ed00 	.word	0xe000ed00

080007a0 <SystemCoreClockUpdate>:
 80007a0:	b480      	push	{r7}
 80007a2:	b087      	sub	sp, #28
 80007a4:	af00      	add	r7, sp, #0
 80007a6:	2300      	movs	r3, #0
 80007a8:	613b      	str	r3, [r7, #16]
 80007aa:	2300      	movs	r3, #0
 80007ac:	617b      	str	r3, [r7, #20]
 80007ae:	2302      	movs	r3, #2
 80007b0:	60fb      	str	r3, [r7, #12]
 80007b2:	2300      	movs	r3, #0
 80007b4:	60bb      	str	r3, [r7, #8]
 80007b6:	2302      	movs	r3, #2
 80007b8:	607b      	str	r3, [r7, #4]
 80007ba:	4b32      	ldr	r3, [pc, #200]	; (8000884 <SystemCoreClockUpdate+0xe4>)
 80007bc:	689b      	ldr	r3, [r3, #8]
 80007be:	f003 030c 	and.w	r3, r3, #12
 80007c2:	613b      	str	r3, [r7, #16]
 80007c4:	693b      	ldr	r3, [r7, #16]
 80007c6:	2b04      	cmp	r3, #4
 80007c8:	d007      	beq.n	80007da <SystemCoreClockUpdate+0x3a>
 80007ca:	2b08      	cmp	r3, #8
 80007cc:	d009      	beq.n	80007e2 <SystemCoreClockUpdate+0x42>
 80007ce:	2b00      	cmp	r3, #0
 80007d0:	d13f      	bne.n	8000852 <SystemCoreClockUpdate+0xb2>
 80007d2:	4b2d      	ldr	r3, [pc, #180]	; (8000888 <SystemCoreClockUpdate+0xe8>)
 80007d4:	4a2d      	ldr	r2, [pc, #180]	; (800088c <SystemCoreClockUpdate+0xec>)
 80007d6:	601a      	str	r2, [r3, #0]
 80007d8:	e03f      	b.n	800085a <SystemCoreClockUpdate+0xba>
 80007da:	4b2b      	ldr	r3, [pc, #172]	; (8000888 <SystemCoreClockUpdate+0xe8>)
 80007dc:	4a2c      	ldr	r2, [pc, #176]	; (8000890 <SystemCoreClockUpdate+0xf0>)
 80007de:	601a      	str	r2, [r3, #0]
 80007e0:	e03b      	b.n	800085a <SystemCoreClockUpdate+0xba>
 80007e2:	4b28      	ldr	r3, [pc, #160]	; (8000884 <SystemCoreClockUpdate+0xe4>)
 80007e4:	685b      	ldr	r3, [r3, #4]
 80007e6:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 80007ea:	0d9b      	lsrs	r3, r3, #22
 80007ec:	60bb      	str	r3, [r7, #8]
 80007ee:	4b25      	ldr	r3, [pc, #148]	; (8000884 <SystemCoreClockUpdate+0xe4>)
 80007f0:	685b      	ldr	r3, [r3, #4]
 80007f2:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 80007f6:	607b      	str	r3, [r7, #4]
 80007f8:	68bb      	ldr	r3, [r7, #8]
 80007fa:	2b00      	cmp	r3, #0
 80007fc:	d00d      	beq.n	800081a <SystemCoreClockUpdate+0x7a>
 80007fe:	4a24      	ldr	r2, [pc, #144]	; (8000890 <SystemCoreClockUpdate+0xf0>)
 8000800:	687b      	ldr	r3, [r7, #4]
 8000802:	fbb2 f2f3 	udiv	r2, r2, r3
 8000806:	4b1f      	ldr	r3, [pc, #124]	; (8000884 <SystemCoreClockUpdate+0xe4>)
 8000808:	6859      	ldr	r1, [r3, #4]
 800080a:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 800080e:	400b      	ands	r3, r1
 8000810:	099b      	lsrs	r3, r3, #6
 8000812:	fb03 f302 	mul.w	r3, r3, r2
 8000816:	617b      	str	r3, [r7, #20]
 8000818:	e00c      	b.n	8000834 <SystemCoreClockUpdate+0x94>
 800081a:	4a1c      	ldr	r2, [pc, #112]	; (800088c <SystemCoreClockUpdate+0xec>)
 800081c:	687b      	ldr	r3, [r7, #4]
 800081e:	fbb2 f2f3 	udiv	r2, r2, r3
 8000822:	4b18      	ldr	r3, [pc, #96]	; (8000884 <SystemCoreClockUpdate+0xe4>)
 8000824:	6859      	ldr	r1, [r3, #4]
 8000826:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 800082a:	400b      	ands	r3, r1
 800082c:	099b      	lsrs	r3, r3, #6
 800082e:	fb03 f302 	mul.w	r3, r3, r2
 8000832:	617b      	str	r3, [r7, #20]
 8000834:	4b13      	ldr	r3, [pc, #76]	; (8000884 <SystemCoreClockUpdate+0xe4>)
 8000836:	685b      	ldr	r3, [r3, #4]
 8000838:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 800083c:	0c1b      	lsrs	r3, r3, #16
 800083e:	3301      	adds	r3, #1
 8000840:	005b      	lsls	r3, r3, #1
 8000842:	60fb      	str	r3, [r7, #12]
 8000844:	697a      	ldr	r2, [r7, #20]
 8000846:	68fb      	ldr	r3, [r7, #12]
 8000848:	fbb2 f3f3 	udiv	r3, r2, r3
 800084c:	4a0e      	ldr	r2, [pc, #56]	; (8000888 <SystemCoreClockUpdate+0xe8>)
 800084e:	6013      	str	r3, [r2, #0]
 8000850:	e003      	b.n	800085a <SystemCoreClockUpdate+0xba>
 8000852:	4b0d      	ldr	r3, [pc, #52]	; (8000888 <SystemCoreClockUpdate+0xe8>)
 8000854:	4a0d      	ldr	r2, [pc, #52]	; (800088c <SystemCoreClockUpdate+0xec>)
 8000856:	601a      	str	r2, [r3, #0]
 8000858:	bf00      	nop
 800085a:	4b0a      	ldr	r3, [pc, #40]	; (8000884 <SystemCoreClockUpdate+0xe4>)
 800085c:	689b      	ldr	r3, [r3, #8]
 800085e:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8000862:	091b      	lsrs	r3, r3, #4
 8000864:	4a0b      	ldr	r2, [pc, #44]	; (8000894 <SystemCoreClockUpdate+0xf4>)
 8000866:	5cd3      	ldrb	r3, [r2, r3]
 8000868:	613b      	str	r3, [r7, #16]
 800086a:	4b07      	ldr	r3, [pc, #28]	; (8000888 <SystemCoreClockUpdate+0xe8>)
 800086c:	681a      	ldr	r2, [r3, #0]
 800086e:	693b      	ldr	r3, [r7, #16]
 8000870:	fa22 f303 	lsr.w	r3, r2, r3
 8000874:	4a04      	ldr	r2, [pc, #16]	; (8000888 <SystemCoreClockUpdate+0xe8>)
 8000876:	6013      	str	r3, [r2, #0]
 8000878:	371c      	adds	r7, #28
 800087a:	46bd      	mov	sp, r7
 800087c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000880:	4770      	bx	lr
 8000882:	bf00      	nop
 8000884:	40023800 	.word	0x40023800
 8000888:	20000004 	.word	0x20000004
 800088c:	00f42400 	.word	0x00f42400
 8000890:	017d7840 	.word	0x017d7840
 8000894:	08000a44 	.word	0x08000a44

08000898 <Reset_Handler>:
 8000898:	f8df d034 	ldr.w	sp, [pc, #52]	; 80008d0 <LoopFillZerobss+0x14>
 800089c:	2100      	movs	r1, #0
 800089e:	e003      	b.n	80008a8 <LoopCopyDataInit>

080008a0 <CopyDataInit>:
 80008a0:	4b0c      	ldr	r3, [pc, #48]	; (80008d4 <LoopFillZerobss+0x18>)
 80008a2:	585b      	ldr	r3, [r3, r1]
 80008a4:	5043      	str	r3, [r0, r1]
 80008a6:	3104      	adds	r1, #4

080008a8 <LoopCopyDataInit>:
 80008a8:	480b      	ldr	r0, [pc, #44]	; (80008d8 <LoopFillZerobss+0x1c>)
 80008aa:	4b0c      	ldr	r3, [pc, #48]	; (80008dc <LoopFillZerobss+0x20>)
 80008ac:	1842      	adds	r2, r0, r1
 80008ae:	429a      	cmp	r2, r3
 80008b0:	d3f6      	bcc.n	80008a0 <CopyDataInit>
 80008b2:	4a0b      	ldr	r2, [pc, #44]	; (80008e0 <LoopFillZerobss+0x24>)
 80008b4:	e002      	b.n	80008bc <LoopFillZerobss>

080008b6 <FillZerobss>:
 80008b6:	2300      	movs	r3, #0
 80008b8:	f842 3b04 	str.w	r3, [r2], #4

080008bc <LoopFillZerobss>:
 80008bc:	4b09      	ldr	r3, [pc, #36]	; (80008e4 <LoopFillZerobss+0x28>)
 80008be:	429a      	cmp	r2, r3
 80008c0:	d3f9      	bcc.n	80008b6 <FillZerobss>
 80008c2:	f7ff ff3f 	bl	8000744 <SystemInit>
 80008c6:	f000 f82d 	bl	8000924 <__libc_init_array>
 80008ca:	f7ff ff27 	bl	800071c <main>
 80008ce:	4770      	bx	lr
 80008d0:	20020000 	.word	0x20020000
 80008d4:	08000a70 	.word	0x08000a70
 80008d8:	20000000 	.word	0x20000000
 80008dc:	20000430 	.word	0x20000430
 80008e0:	20000430 	.word	0x20000430
 80008e4:	20000454 	.word	0x20000454

080008e8 <ADC_IRQHandler>:
 80008e8:	e7fe      	b.n	80008e8 <ADC_IRQHandler>
	...

080008ec <atexit>:
 80008ec:	4601      	mov	r1, r0
 80008ee:	2000      	movs	r0, #0
 80008f0:	4602      	mov	r2, r0
 80008f2:	4603      	mov	r3, r0
 80008f4:	f000 b83e 	b.w	8000974 <__register_exitproc>

080008f8 <__libc_fini_array>:
 80008f8:	b538      	push	{r3, r4, r5, lr}
 80008fa:	4b08      	ldr	r3, [pc, #32]	; (800091c <__libc_fini_array+0x24>)
 80008fc:	4d08      	ldr	r5, [pc, #32]	; (8000920 <__libc_fini_array+0x28>)
 80008fe:	1aed      	subs	r5, r5, r3
 8000900:	10ac      	asrs	r4, r5, #2
 8000902:	bf18      	it	ne
 8000904:	18ed      	addne	r5, r5, r3
 8000906:	d005      	beq.n	8000914 <__libc_fini_array+0x1c>
 8000908:	3c01      	subs	r4, #1
 800090a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800090e:	4798      	blx	r3
 8000910:	2c00      	cmp	r4, #0
 8000912:	d1f9      	bne.n	8000908 <__libc_fini_array+0x10>
 8000914:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000918:	f000 b88e 	b.w	8000a38 <_fini>
 800091c:	08000a6c 	.word	0x08000a6c
 8000920:	08000a70 	.word	0x08000a70

08000924 <__libc_init_array>:
 8000924:	b570      	push	{r4, r5, r6, lr}
 8000926:	4e0f      	ldr	r6, [pc, #60]	; (8000964 <__libc_init_array+0x40>)
 8000928:	4d0f      	ldr	r5, [pc, #60]	; (8000968 <__libc_init_array+0x44>)
 800092a:	1b76      	subs	r6, r6, r5
 800092c:	10b6      	asrs	r6, r6, #2
 800092e:	bf18      	it	ne
 8000930:	2400      	movne	r4, #0
 8000932:	d005      	beq.n	8000940 <__libc_init_array+0x1c>
 8000934:	3401      	adds	r4, #1
 8000936:	f855 3b04 	ldr.w	r3, [r5], #4
 800093a:	4798      	blx	r3
 800093c:	42a6      	cmp	r6, r4
 800093e:	d1f9      	bne.n	8000934 <__libc_init_array+0x10>
 8000940:	4e0a      	ldr	r6, [pc, #40]	; (800096c <__libc_init_array+0x48>)
 8000942:	4d0b      	ldr	r5, [pc, #44]	; (8000970 <__libc_init_array+0x4c>)
 8000944:	1b76      	subs	r6, r6, r5
 8000946:	f000 f871 	bl	8000a2c <_init>
 800094a:	10b6      	asrs	r6, r6, #2
 800094c:	bf18      	it	ne
 800094e:	2400      	movne	r4, #0
 8000950:	d006      	beq.n	8000960 <__libc_init_array+0x3c>
 8000952:	3401      	adds	r4, #1
 8000954:	f855 3b04 	ldr.w	r3, [r5], #4
 8000958:	4798      	blx	r3
 800095a:	42a6      	cmp	r6, r4
 800095c:	d1f9      	bne.n	8000952 <__libc_init_array+0x2e>
 800095e:	bd70      	pop	{r4, r5, r6, pc}
 8000960:	bd70      	pop	{r4, r5, r6, pc}
 8000962:	bf00      	nop
 8000964:	08000a64 	.word	0x08000a64
 8000968:	08000a64 	.word	0x08000a64
 800096c:	08000a6c 	.word	0x08000a6c
 8000970:	08000a64 	.word	0x08000a64

08000974 <__register_exitproc>:
 8000974:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000978:	4c25      	ldr	r4, [pc, #148]	; (8000a10 <__register_exitproc+0x9c>)
 800097a:	6825      	ldr	r5, [r4, #0]
 800097c:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 8000980:	4606      	mov	r6, r0
 8000982:	4688      	mov	r8, r1
 8000984:	4692      	mov	sl, r2
 8000986:	4699      	mov	r9, r3
 8000988:	b3cc      	cbz	r4, 80009fe <__register_exitproc+0x8a>
 800098a:	6860      	ldr	r0, [r4, #4]
 800098c:	281f      	cmp	r0, #31
 800098e:	dc18      	bgt.n	80009c2 <__register_exitproc+0x4e>
 8000990:	1c43      	adds	r3, r0, #1
 8000992:	b17e      	cbz	r6, 80009b4 <__register_exitproc+0x40>
 8000994:	eb04 0580 	add.w	r5, r4, r0, lsl #2
 8000998:	2101      	movs	r1, #1
 800099a:	f8c5 a088 	str.w	sl, [r5, #136]	; 0x88
 800099e:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 80009a2:	fa01 f200 	lsl.w	r2, r1, r0
 80009a6:	4317      	orrs	r7, r2
 80009a8:	2e02      	cmp	r6, #2
 80009aa:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 80009ae:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
 80009b2:	d01e      	beq.n	80009f2 <__register_exitproc+0x7e>
 80009b4:	3002      	adds	r0, #2
 80009b6:	6063      	str	r3, [r4, #4]
 80009b8:	f844 8020 	str.w	r8, [r4, r0, lsl #2]
 80009bc:	2000      	movs	r0, #0
 80009be:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80009c2:	4b14      	ldr	r3, [pc, #80]	; (8000a14 <__register_exitproc+0xa0>)
 80009c4:	b303      	cbz	r3, 8000a08 <__register_exitproc+0x94>
 80009c6:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80009ca:	f3af 8000 	nop.w
 80009ce:	4604      	mov	r4, r0
 80009d0:	b1d0      	cbz	r0, 8000a08 <__register_exitproc+0x94>
 80009d2:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
 80009d6:	2700      	movs	r7, #0
 80009d8:	e880 0088 	stmia.w	r0, {r3, r7}
 80009dc:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 80009e0:	4638      	mov	r0, r7
 80009e2:	2301      	movs	r3, #1
 80009e4:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 80009e8:	f8c4 718c 	str.w	r7, [r4, #396]	; 0x18c
 80009ec:	2e00      	cmp	r6, #0
 80009ee:	d0e1      	beq.n	80009b4 <__register_exitproc+0x40>
 80009f0:	e7d0      	b.n	8000994 <__register_exitproc+0x20>
 80009f2:	f8d4 118c 	ldr.w	r1, [r4, #396]	; 0x18c
 80009f6:	430a      	orrs	r2, r1
 80009f8:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 80009fc:	e7da      	b.n	80009b4 <__register_exitproc+0x40>
 80009fe:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 8000a02:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8000a06:	e7c0      	b.n	800098a <__register_exitproc+0x16>
 8000a08:	f04f 30ff 	mov.w	r0, #4294967295
 8000a0c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000a10:	08000a60 	.word	0x08000a60
 8000a14:	00000000 	.word	0x00000000

08000a18 <register_fini>:
 8000a18:	4b02      	ldr	r3, [pc, #8]	; (8000a24 <register_fini+0xc>)
 8000a1a:	b113      	cbz	r3, 8000a22 <register_fini+0xa>
 8000a1c:	4802      	ldr	r0, [pc, #8]	; (8000a28 <register_fini+0x10>)
 8000a1e:	f7ff bf65 	b.w	80008ec <atexit>
 8000a22:	4770      	bx	lr
 8000a24:	00000000 	.word	0x00000000
 8000a28:	080008f9 	.word	0x080008f9

08000a2c <_init>:
 8000a2c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000a2e:	bf00      	nop
 8000a30:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000a32:	bc08      	pop	{r3}
 8000a34:	469e      	mov	lr, r3
 8000a36:	4770      	bx	lr

08000a38 <_fini>:
 8000a38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000a3a:	bf00      	nop
 8000a3c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000a3e:	bc08      	pop	{r3}
 8000a40:	469e      	mov	lr, r3
 8000a42:	4770      	bx	lr
