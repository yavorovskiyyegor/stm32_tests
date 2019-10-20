
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   00000188  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         000006dc  08000188  08000188  00010188  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000020  08000864  08000864  00010864  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  08000884  08000884  00010884  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  0800088c  0800088c  0001088c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000438  20000000  08000890  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .ccmram       00000000  10000000  10000000  00020438  2**0  CONTENTS
  7 .bss          00000024  20000438  20000438  00020438  2**2  ALLOC
  8 ._user_heap_stack 00000604  2000045c  2000045c  00020438  2**0  ALLOC
  9 .ARM.attributes 0000002a  00000000  00000000  00020438  2**0  CONTENTS, READONLY
 10 .comment      00000070  00000000  00000000  00020462  2**0  CONTENTS, READONLY
 11 .debug_info   00002ac1  00000000  00000000  000204d2  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_abbrev 00000a7d  00000000  00000000  00022f93  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_loc    00000633  00000000  00000000  00023a10  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_aranges 00000100  00000000  00000000  00024043  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_line   00000880  00000000  00000000  00024143  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_str    00000bd3  00000000  00000000  000249c3  2**0  CONTENTS, READONLY, DEBUGGING
 17 .debug_frame  00000228  00000000  00000000  00025598  2**2  CONTENTS, READONLY, DEBUGGING
 18 .debug_ranges 00000070  00000000  00000000  000257c0  2**0  CONTENTS, READONLY, DEBUGGING

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
 800019c:	2000043b 	.word	0x2000043b
 80001a0:	20000438 	.word	0x20000438
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
 80001c0:	20000438 	.word	0x20000438
 80001c4:	20000438 	.word	0x20000438
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
 80001e8:	20000438 	.word	0x20000438
 80001ec:	00000000 	.word	0x00000000
 80001f0:	0800084c 	.word	0x0800084c

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
 800021c:	0800084c 	.word	0x0800084c
 8000220:	2000043c 	.word	0x2000043c
 8000224:	20000438 	.word	0x20000438
 8000228:	00000000 	.word	0x00000000

0800022c <Tim2Config>:
 800022c:	b480      	push	{r7}
 800022e:	af00      	add	r7, sp, #0
 8000230:	4a18      	ldr	r2, [pc, #96]	; (8000294 <Tim2Config+0x68>)
 8000232:	4b18      	ldr	r3, [pc, #96]	; (8000294 <Tim2Config+0x68>)
 8000234:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000236:	f043 0301 	orr.w	r3, r3, #1
 800023a:	6413      	str	r3, [r2, #64]	; 0x40
 800023c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000240:	f240 32e7 	movw	r2, #999	; 0x3e7
 8000244:	62da      	str	r2, [r3, #44]	; 0x2c
 8000246:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800024a:	f44f 527a 	mov.w	r2, #16000	; 0x3e80
 800024e:	629a      	str	r2, [r3, #40]	; 0x28
 8000250:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000254:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000258:	681b      	ldr	r3, [r3, #0]
 800025a:	f043 0304 	orr.w	r3, r3, #4
 800025e:	6013      	str	r3, [r2, #0]
 8000260:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000264:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000268:	681b      	ldr	r3, [r3, #0]
 800026a:	f043 0301 	orr.w	r3, r3, #1
 800026e:	6013      	str	r3, [r2, #0]
 8000270:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000274:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000278:	68db      	ldr	r3, [r3, #12]
 800027a:	f043 0301 	orr.w	r3, r3, #1
 800027e:	60d3      	str	r3, [r2, #12]
 8000280:	4a05      	ldr	r2, [pc, #20]	; (8000298 <Tim2Config+0x6c>)
 8000282:	4b05      	ldr	r3, [pc, #20]	; (8000298 <Tim2Config+0x6c>)
 8000284:	681b      	ldr	r3, [r3, #0]
 8000286:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 800028a:	6013      	str	r3, [r2, #0]
 800028c:	46bd      	mov	sp, r7
 800028e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000292:	4770      	bx	lr
 8000294:	40023800 	.word	0x40023800
 8000298:	e000e100 	.word	0xe000e100

0800029c <Tim3Config>:
 800029c:	b480      	push	{r7}
 800029e:	af00      	add	r7, sp, #0
 80002a0:	4a14      	ldr	r2, [pc, #80]	; (80002f4 <Tim3Config+0x58>)
 80002a2:	4b14      	ldr	r3, [pc, #80]	; (80002f4 <Tim3Config+0x58>)
 80002a4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80002a6:	f043 0302 	orr.w	r3, r3, #2
 80002aa:	6413      	str	r3, [r2, #64]	; 0x40
 80002ac:	4b12      	ldr	r3, [pc, #72]	; (80002f8 <Tim3Config+0x5c>)
 80002ae:	2204      	movs	r2, #4
 80002b0:	62da      	str	r2, [r3, #44]	; 0x2c
 80002b2:	4b11      	ldr	r3, [pc, #68]	; (80002f8 <Tim3Config+0x5c>)
 80002b4:	f44f 527a 	mov.w	r2, #16000	; 0x3e80
 80002b8:	629a      	str	r2, [r3, #40]	; 0x28
 80002ba:	4a0f      	ldr	r2, [pc, #60]	; (80002f8 <Tim3Config+0x5c>)
 80002bc:	4b0e      	ldr	r3, [pc, #56]	; (80002f8 <Tim3Config+0x5c>)
 80002be:	681b      	ldr	r3, [r3, #0]
 80002c0:	f043 0304 	orr.w	r3, r3, #4
 80002c4:	6013      	str	r3, [r2, #0]
 80002c6:	4a0c      	ldr	r2, [pc, #48]	; (80002f8 <Tim3Config+0x5c>)
 80002c8:	4b0b      	ldr	r3, [pc, #44]	; (80002f8 <Tim3Config+0x5c>)
 80002ca:	681b      	ldr	r3, [r3, #0]
 80002cc:	f043 0301 	orr.w	r3, r3, #1
 80002d0:	6013      	str	r3, [r2, #0]
 80002d2:	4a09      	ldr	r2, [pc, #36]	; (80002f8 <Tim3Config+0x5c>)
 80002d4:	4b08      	ldr	r3, [pc, #32]	; (80002f8 <Tim3Config+0x5c>)
 80002d6:	68db      	ldr	r3, [r3, #12]
 80002d8:	f043 0301 	orr.w	r3, r3, #1
 80002dc:	60d3      	str	r3, [r2, #12]
 80002de:	4a07      	ldr	r2, [pc, #28]	; (80002fc <Tim3Config+0x60>)
 80002e0:	4b06      	ldr	r3, [pc, #24]	; (80002fc <Tim3Config+0x60>)
 80002e2:	681b      	ldr	r3, [r3, #0]
 80002e4:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 80002e8:	6013      	str	r3, [r2, #0]
 80002ea:	46bd      	mov	sp, r7
 80002ec:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002f0:	4770      	bx	lr
 80002f2:	bf00      	nop
 80002f4:	40023800 	.word	0x40023800
 80002f8:	40000400 	.word	0x40000400
 80002fc:	e000e100 	.word	0xe000e100

08000300 <TIM3_IRQHandler>:
 8000300:	b480      	push	{r7}
 8000302:	af00      	add	r7, sp, #0
 8000304:	4b51      	ldr	r3, [pc, #324]	; (800044c <TIM3_IRQHandler+0x14c>)
 8000306:	f44f 12f8 	mov.w	r2, #2031616	; 0x1f0000
 800030a:	619a      	str	r2, [r3, #24]
 800030c:	4b50      	ldr	r3, [pc, #320]	; (8000450 <TIM3_IRQHandler+0x150>)
 800030e:	f44f 027f 	mov.w	r2, #16711680	; 0xff0000
 8000312:	619a      	str	r2, [r3, #24]
 8000314:	4b4f      	ldr	r3, [pc, #316]	; (8000454 <TIM3_IRQHandler+0x154>)
 8000316:	781b      	ldrb	r3, [r3, #0]
 8000318:	2b04      	cmp	r3, #4
 800031a:	d87c      	bhi.n	8000416 <TIM3_IRQHandler+0x116>
 800031c:	a201      	add	r2, pc, #4	; (adr r2, 8000324 <TIM3_IRQHandler+0x24>)
 800031e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000322:	bf00      	nop
 8000324:	08000339 	.word	0x08000339
 8000328:	08000367 	.word	0x08000367
 800032c:	0800039b 	.word	0x0800039b
 8000330:	080003bf 	.word	0x080003bf
 8000334:	080003f3 	.word	0x080003f3
 8000338:	4845      	ldr	r0, [pc, #276]	; (8000450 <TIM3_IRQHandler+0x150>)
 800033a:	4b47      	ldr	r3, [pc, #284]	; (8000458 <TIM3_IRQHandler+0x158>)
 800033c:	781b      	ldrb	r3, [r3, #0]
 800033e:	b2da      	uxtb	r2, r3
 8000340:	4b46      	ldr	r3, [pc, #280]	; (800045c <TIM3_IRQHandler+0x15c>)
 8000342:	fba3 1302 	umull	r1, r3, r3, r2
 8000346:	08d9      	lsrs	r1, r3, #3
 8000348:	460b      	mov	r3, r1
 800034a:	009b      	lsls	r3, r3, #2
 800034c:	440b      	add	r3, r1
 800034e:	005b      	lsls	r3, r3, #1
 8000350:	1ad3      	subs	r3, r2, r3
 8000352:	b2db      	uxtb	r3, r3
 8000354:	461a      	mov	r2, r3
 8000356:	4b42      	ldr	r3, [pc, #264]	; (8000460 <TIM3_IRQHandler+0x160>)
 8000358:	5c9b      	ldrb	r3, [r3, r2]
 800035a:	b2db      	uxtb	r3, r3
 800035c:	6183      	str	r3, [r0, #24]
 800035e:	4b3b      	ldr	r3, [pc, #236]	; (800044c <TIM3_IRQHandler+0x14c>)
 8000360:	2201      	movs	r2, #1
 8000362:	619a      	str	r2, [r3, #24]
 8000364:	e057      	b.n	8000416 <TIM3_IRQHandler+0x116>
 8000366:	483a      	ldr	r0, [pc, #232]	; (8000450 <TIM3_IRQHandler+0x150>)
 8000368:	4b3b      	ldr	r3, [pc, #236]	; (8000458 <TIM3_IRQHandler+0x158>)
 800036a:	785b      	ldrb	r3, [r3, #1]
 800036c:	b2da      	uxtb	r2, r3
 800036e:	4b3b      	ldr	r3, [pc, #236]	; (800045c <TIM3_IRQHandler+0x15c>)
 8000370:	fba3 1302 	umull	r1, r3, r3, r2
 8000374:	08d9      	lsrs	r1, r3, #3
 8000376:	460b      	mov	r3, r1
 8000378:	009b      	lsls	r3, r3, #2
 800037a:	440b      	add	r3, r1
 800037c:	005b      	lsls	r3, r3, #1
 800037e:	1ad3      	subs	r3, r2, r3
 8000380:	b2db      	uxtb	r3, r3
 8000382:	461a      	mov	r2, r3
 8000384:	4b36      	ldr	r3, [pc, #216]	; (8000460 <TIM3_IRQHandler+0x160>)
 8000386:	5c9b      	ldrb	r3, [r3, r2]
 8000388:	b2db      	uxtb	r3, r3
 800038a:	f063 037f 	orn	r3, r3, #127	; 0x7f
 800038e:	b2db      	uxtb	r3, r3
 8000390:	6183      	str	r3, [r0, #24]
 8000392:	4b2e      	ldr	r3, [pc, #184]	; (800044c <TIM3_IRQHandler+0x14c>)
 8000394:	2202      	movs	r2, #2
 8000396:	619a      	str	r2, [r3, #24]
 8000398:	e03d      	b.n	8000416 <TIM3_IRQHandler+0x116>
 800039a:	4a2d      	ldr	r2, [pc, #180]	; (8000450 <TIM3_IRQHandler+0x150>)
 800039c:	4b2e      	ldr	r3, [pc, #184]	; (8000458 <TIM3_IRQHandler+0x158>)
 800039e:	785b      	ldrb	r3, [r3, #1]
 80003a0:	b2db      	uxtb	r3, r3
 80003a2:	492e      	ldr	r1, [pc, #184]	; (800045c <TIM3_IRQHandler+0x15c>)
 80003a4:	fba1 1303 	umull	r1, r3, r1, r3
 80003a8:	08db      	lsrs	r3, r3, #3
 80003aa:	b2db      	uxtb	r3, r3
 80003ac:	4619      	mov	r1, r3
 80003ae:	4b2c      	ldr	r3, [pc, #176]	; (8000460 <TIM3_IRQHandler+0x160>)
 80003b0:	5c5b      	ldrb	r3, [r3, r1]
 80003b2:	b2db      	uxtb	r3, r3
 80003b4:	6193      	str	r3, [r2, #24]
 80003b6:	4b25      	ldr	r3, [pc, #148]	; (800044c <TIM3_IRQHandler+0x14c>)
 80003b8:	2204      	movs	r2, #4
 80003ba:	619a      	str	r2, [r3, #24]
 80003bc:	e02b      	b.n	8000416 <TIM3_IRQHandler+0x116>
 80003be:	4824      	ldr	r0, [pc, #144]	; (8000450 <TIM3_IRQHandler+0x150>)
 80003c0:	4b25      	ldr	r3, [pc, #148]	; (8000458 <TIM3_IRQHandler+0x158>)
 80003c2:	789b      	ldrb	r3, [r3, #2]
 80003c4:	b2da      	uxtb	r2, r3
 80003c6:	4b25      	ldr	r3, [pc, #148]	; (800045c <TIM3_IRQHandler+0x15c>)
 80003c8:	fba3 1302 	umull	r1, r3, r3, r2
 80003cc:	08d9      	lsrs	r1, r3, #3
 80003ce:	460b      	mov	r3, r1
 80003d0:	009b      	lsls	r3, r3, #2
 80003d2:	440b      	add	r3, r1
 80003d4:	005b      	lsls	r3, r3, #1
 80003d6:	1ad3      	subs	r3, r2, r3
 80003d8:	b2db      	uxtb	r3, r3
 80003da:	461a      	mov	r2, r3
 80003dc:	4b20      	ldr	r3, [pc, #128]	; (8000460 <TIM3_IRQHandler+0x160>)
 80003de:	5c9b      	ldrb	r3, [r3, r2]
 80003e0:	b2db      	uxtb	r3, r3
 80003e2:	f063 037f 	orn	r3, r3, #127	; 0x7f
 80003e6:	b2db      	uxtb	r3, r3
 80003e8:	6183      	str	r3, [r0, #24]
 80003ea:	4b18      	ldr	r3, [pc, #96]	; (800044c <TIM3_IRQHandler+0x14c>)
 80003ec:	2208      	movs	r2, #8
 80003ee:	619a      	str	r2, [r3, #24]
 80003f0:	e011      	b.n	8000416 <TIM3_IRQHandler+0x116>
 80003f2:	4a17      	ldr	r2, [pc, #92]	; (8000450 <TIM3_IRQHandler+0x150>)
 80003f4:	4b18      	ldr	r3, [pc, #96]	; (8000458 <TIM3_IRQHandler+0x158>)
 80003f6:	789b      	ldrb	r3, [r3, #2]
 80003f8:	b2db      	uxtb	r3, r3
 80003fa:	4918      	ldr	r1, [pc, #96]	; (800045c <TIM3_IRQHandler+0x15c>)
 80003fc:	fba1 1303 	umull	r1, r3, r1, r3
 8000400:	08db      	lsrs	r3, r3, #3
 8000402:	b2db      	uxtb	r3, r3
 8000404:	4619      	mov	r1, r3
 8000406:	4b16      	ldr	r3, [pc, #88]	; (8000460 <TIM3_IRQHandler+0x160>)
 8000408:	5c5b      	ldrb	r3, [r3, r1]
 800040a:	b2db      	uxtb	r3, r3
 800040c:	6193      	str	r3, [r2, #24]
 800040e:	4b0f      	ldr	r3, [pc, #60]	; (800044c <TIM3_IRQHandler+0x14c>)
 8000410:	2210      	movs	r2, #16
 8000412:	619a      	str	r2, [r3, #24]
 8000414:	bf00      	nop
 8000416:	4b0f      	ldr	r3, [pc, #60]	; (8000454 <TIM3_IRQHandler+0x154>)
 8000418:	781b      	ldrb	r3, [r3, #0]
 800041a:	2b03      	cmp	r3, #3
 800041c:	d808      	bhi.n	8000430 <TIM3_IRQHandler+0x130>
 800041e:	4b0d      	ldr	r3, [pc, #52]	; (8000454 <TIM3_IRQHandler+0x154>)
 8000420:	781b      	ldrb	r3, [r3, #0]
 8000422:	3301      	adds	r3, #1
 8000424:	b2da      	uxtb	r2, r3
 8000426:	4b0b      	ldr	r3, [pc, #44]	; (8000454 <TIM3_IRQHandler+0x154>)
 8000428:	701a      	strb	r2, [r3, #0]
 800042a:	4b0a      	ldr	r3, [pc, #40]	; (8000454 <TIM3_IRQHandler+0x154>)
 800042c:	781b      	ldrb	r3, [r3, #0]
 800042e:	e000      	b.n	8000432 <TIM3_IRQHandler+0x132>
 8000430:	2300      	movs	r3, #0
 8000432:	4a08      	ldr	r2, [pc, #32]	; (8000454 <TIM3_IRQHandler+0x154>)
 8000434:	7013      	strb	r3, [r2, #0]
 8000436:	4a0b      	ldr	r2, [pc, #44]	; (8000464 <TIM3_IRQHandler+0x164>)
 8000438:	4b0a      	ldr	r3, [pc, #40]	; (8000464 <TIM3_IRQHandler+0x164>)
 800043a:	691b      	ldr	r3, [r3, #16]
 800043c:	f023 0301 	bic.w	r3, r3, #1
 8000440:	6113      	str	r3, [r2, #16]
 8000442:	46bd      	mov	sp, r7
 8000444:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000448:	4770      	bx	lr
 800044a:	bf00      	nop
 800044c:	40021000 	.word	0x40021000
 8000450:	40020c00 	.word	0x40020c00
 8000454:	20000458 	.word	0x20000458
 8000458:	20000454 	.word	0x20000454
 800045c:	cccccccd 	.word	0xcccccccd
 8000460:	20000000 	.word	0x20000000
 8000464:	40000400 	.word	0x40000400

08000468 <TIM2_IRQHandler>:
 8000468:	b480      	push	{r7}
 800046a:	af00      	add	r7, sp, #0
 800046c:	4b26      	ldr	r3, [pc, #152]	; (8000508 <TIM2_IRQHandler+0xa0>)
 800046e:	781b      	ldrb	r3, [r3, #0]
 8000470:	b2db      	uxtb	r3, r3
 8000472:	2b3a      	cmp	r3, #58	; 0x3a
 8000474:	d808      	bhi.n	8000488 <TIM2_IRQHandler+0x20>
 8000476:	4b24      	ldr	r3, [pc, #144]	; (8000508 <TIM2_IRQHandler+0xa0>)
 8000478:	781b      	ldrb	r3, [r3, #0]
 800047a:	b2db      	uxtb	r3, r3
 800047c:	3301      	adds	r3, #1
 800047e:	b2da      	uxtb	r2, r3
 8000480:	4b21      	ldr	r3, [pc, #132]	; (8000508 <TIM2_IRQHandler+0xa0>)
 8000482:	4611      	mov	r1, r2
 8000484:	7019      	strb	r1, [r3, #0]
 8000486:	e000      	b.n	800048a <TIM2_IRQHandler+0x22>
 8000488:	2200      	movs	r2, #0
 800048a:	4b1f      	ldr	r3, [pc, #124]	; (8000508 <TIM2_IRQHandler+0xa0>)
 800048c:	701a      	strb	r2, [r3, #0]
 800048e:	4b1e      	ldr	r3, [pc, #120]	; (8000508 <TIM2_IRQHandler+0xa0>)
 8000490:	781b      	ldrb	r3, [r3, #0]
 8000492:	b2db      	uxtb	r3, r3
 8000494:	2b00      	cmp	r3, #0
 8000496:	d110      	bne.n	80004ba <TIM2_IRQHandler+0x52>
 8000498:	4b1b      	ldr	r3, [pc, #108]	; (8000508 <TIM2_IRQHandler+0xa0>)
 800049a:	785b      	ldrb	r3, [r3, #1]
 800049c:	b2db      	uxtb	r3, r3
 800049e:	2b3a      	cmp	r3, #58	; 0x3a
 80004a0:	d808      	bhi.n	80004b4 <TIM2_IRQHandler+0x4c>
 80004a2:	4b19      	ldr	r3, [pc, #100]	; (8000508 <TIM2_IRQHandler+0xa0>)
 80004a4:	785b      	ldrb	r3, [r3, #1]
 80004a6:	b2db      	uxtb	r3, r3
 80004a8:	3301      	adds	r3, #1
 80004aa:	b2da      	uxtb	r2, r3
 80004ac:	4b16      	ldr	r3, [pc, #88]	; (8000508 <TIM2_IRQHandler+0xa0>)
 80004ae:	4611      	mov	r1, r2
 80004b0:	7059      	strb	r1, [r3, #1]
 80004b2:	e000      	b.n	80004b6 <TIM2_IRQHandler+0x4e>
 80004b4:	2200      	movs	r2, #0
 80004b6:	4b14      	ldr	r3, [pc, #80]	; (8000508 <TIM2_IRQHandler+0xa0>)
 80004b8:	705a      	strb	r2, [r3, #1]
 80004ba:	4b13      	ldr	r3, [pc, #76]	; (8000508 <TIM2_IRQHandler+0xa0>)
 80004bc:	785b      	ldrb	r3, [r3, #1]
 80004be:	b2db      	uxtb	r3, r3
 80004c0:	2b00      	cmp	r3, #0
 80004c2:	d115      	bne.n	80004f0 <TIM2_IRQHandler+0x88>
 80004c4:	4b10      	ldr	r3, [pc, #64]	; (8000508 <TIM2_IRQHandler+0xa0>)
 80004c6:	781b      	ldrb	r3, [r3, #0]
 80004c8:	b2db      	uxtb	r3, r3
 80004ca:	2b00      	cmp	r3, #0
 80004cc:	d110      	bne.n	80004f0 <TIM2_IRQHandler+0x88>
 80004ce:	4b0e      	ldr	r3, [pc, #56]	; (8000508 <TIM2_IRQHandler+0xa0>)
 80004d0:	789b      	ldrb	r3, [r3, #2]
 80004d2:	b2db      	uxtb	r3, r3
 80004d4:	2b16      	cmp	r3, #22
 80004d6:	d808      	bhi.n	80004ea <TIM2_IRQHandler+0x82>
 80004d8:	4b0b      	ldr	r3, [pc, #44]	; (8000508 <TIM2_IRQHandler+0xa0>)
 80004da:	789b      	ldrb	r3, [r3, #2]
 80004dc:	b2db      	uxtb	r3, r3
 80004de:	3301      	adds	r3, #1
 80004e0:	b2da      	uxtb	r2, r3
 80004e2:	4b09      	ldr	r3, [pc, #36]	; (8000508 <TIM2_IRQHandler+0xa0>)
 80004e4:	4611      	mov	r1, r2
 80004e6:	7099      	strb	r1, [r3, #2]
 80004e8:	e000      	b.n	80004ec <TIM2_IRQHandler+0x84>
 80004ea:	2200      	movs	r2, #0
 80004ec:	4b06      	ldr	r3, [pc, #24]	; (8000508 <TIM2_IRQHandler+0xa0>)
 80004ee:	709a      	strb	r2, [r3, #2]
 80004f0:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80004f4:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80004f8:	691b      	ldr	r3, [r3, #16]
 80004fa:	f023 0301 	bic.w	r3, r3, #1
 80004fe:	6113      	str	r3, [r2, #16]
 8000500:	46bd      	mov	sp, r7
 8000502:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000506:	4770      	bx	lr
 8000508:	20000454 	.word	0x20000454

0800050c <GPIO_Config>:
 800050c:	b480      	push	{r7}
 800050e:	af00      	add	r7, sp, #0
 8000510:	4a0c      	ldr	r2, [pc, #48]	; (8000544 <GPIO_Config+0x38>)
 8000512:	4b0c      	ldr	r3, [pc, #48]	; (8000544 <GPIO_Config+0x38>)
 8000514:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000516:	f043 0318 	orr.w	r3, r3, #24
 800051a:	6313      	str	r3, [r2, #48]	; 0x30
 800051c:	4a0a      	ldr	r2, [pc, #40]	; (8000548 <GPIO_Config+0x3c>)
 800051e:	4b0a      	ldr	r3, [pc, #40]	; (8000548 <GPIO_Config+0x3c>)
 8000520:	681b      	ldr	r3, [r3, #0]
 8000522:	f443 73aa 	orr.w	r3, r3, #340	; 0x154
 8000526:	f043 0301 	orr.w	r3, r3, #1
 800052a:	6013      	str	r3, [r2, #0]
 800052c:	4a07      	ldr	r2, [pc, #28]	; (800054c <GPIO_Config+0x40>)
 800052e:	4b07      	ldr	r3, [pc, #28]	; (800054c <GPIO_Config+0x40>)
 8000530:	681b      	ldr	r3, [r3, #0]
 8000532:	f443 43aa 	orr.w	r3, r3, #21760	; 0x5500
 8000536:	f043 0355 	orr.w	r3, r3, #85	; 0x55
 800053a:	6013      	str	r3, [r2, #0]
 800053c:	46bd      	mov	sp, r7
 800053e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000542:	4770      	bx	lr
 8000544:	40023800 	.word	0x40023800
 8000548:	40021000 	.word	0x40021000
 800054c:	40020c00 	.word	0x40020c00

08000550 <main>:
 8000550:	b580      	push	{r7, lr}
 8000552:	af00      	add	r7, sp, #0
 8000554:	f7ff ffda 	bl	800050c <GPIO_Config>
 8000558:	f7ff fe68 	bl	800022c <Tim2Config>
 800055c:	f7ff fe9e 	bl	800029c <Tim3Config>
 8000560:	e7fe      	b.n	8000560 <main+0x10>
 8000562:	bf00      	nop

08000564 <SystemInit>:
 8000564:	b480      	push	{r7}
 8000566:	af00      	add	r7, sp, #0
 8000568:	4a12      	ldr	r2, [pc, #72]	; (80005b4 <SystemInit+0x50>)
 800056a:	4b12      	ldr	r3, [pc, #72]	; (80005b4 <SystemInit+0x50>)
 800056c:	681b      	ldr	r3, [r3, #0]
 800056e:	f043 0301 	orr.w	r3, r3, #1
 8000572:	6013      	str	r3, [r2, #0]
 8000574:	4b0f      	ldr	r3, [pc, #60]	; (80005b4 <SystemInit+0x50>)
 8000576:	2200      	movs	r2, #0
 8000578:	609a      	str	r2, [r3, #8]
 800057a:	4a0e      	ldr	r2, [pc, #56]	; (80005b4 <SystemInit+0x50>)
 800057c:	4b0d      	ldr	r3, [pc, #52]	; (80005b4 <SystemInit+0x50>)
 800057e:	681b      	ldr	r3, [r3, #0]
 8000580:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8000584:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8000588:	6013      	str	r3, [r2, #0]
 800058a:	4b0a      	ldr	r3, [pc, #40]	; (80005b4 <SystemInit+0x50>)
 800058c:	4a0a      	ldr	r2, [pc, #40]	; (80005b8 <SystemInit+0x54>)
 800058e:	605a      	str	r2, [r3, #4]
 8000590:	4a08      	ldr	r2, [pc, #32]	; (80005b4 <SystemInit+0x50>)
 8000592:	4b08      	ldr	r3, [pc, #32]	; (80005b4 <SystemInit+0x50>)
 8000594:	681b      	ldr	r3, [r3, #0]
 8000596:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 800059a:	6013      	str	r3, [r2, #0]
 800059c:	4b05      	ldr	r3, [pc, #20]	; (80005b4 <SystemInit+0x50>)
 800059e:	2200      	movs	r2, #0
 80005a0:	60da      	str	r2, [r3, #12]
 80005a2:	4b06      	ldr	r3, [pc, #24]	; (80005bc <SystemInit+0x58>)
 80005a4:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80005a8:	609a      	str	r2, [r3, #8]
 80005aa:	46bd      	mov	sp, r7
 80005ac:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005b0:	4770      	bx	lr
 80005b2:	bf00      	nop
 80005b4:	40023800 	.word	0x40023800
 80005b8:	24003010 	.word	0x24003010
 80005bc:	e000ed00 	.word	0xe000ed00

080005c0 <SystemCoreClockUpdate>:
 80005c0:	b480      	push	{r7}
 80005c2:	b087      	sub	sp, #28
 80005c4:	af00      	add	r7, sp, #0
 80005c6:	2300      	movs	r3, #0
 80005c8:	613b      	str	r3, [r7, #16]
 80005ca:	2300      	movs	r3, #0
 80005cc:	617b      	str	r3, [r7, #20]
 80005ce:	2302      	movs	r3, #2
 80005d0:	60fb      	str	r3, [r7, #12]
 80005d2:	2300      	movs	r3, #0
 80005d4:	60bb      	str	r3, [r7, #8]
 80005d6:	2302      	movs	r3, #2
 80005d8:	607b      	str	r3, [r7, #4]
 80005da:	4b32      	ldr	r3, [pc, #200]	; (80006a4 <SystemCoreClockUpdate+0xe4>)
 80005dc:	689b      	ldr	r3, [r3, #8]
 80005de:	f003 030c 	and.w	r3, r3, #12
 80005e2:	613b      	str	r3, [r7, #16]
 80005e4:	693b      	ldr	r3, [r7, #16]
 80005e6:	2b04      	cmp	r3, #4
 80005e8:	d007      	beq.n	80005fa <SystemCoreClockUpdate+0x3a>
 80005ea:	2b08      	cmp	r3, #8
 80005ec:	d009      	beq.n	8000602 <SystemCoreClockUpdate+0x42>
 80005ee:	2b00      	cmp	r3, #0
 80005f0:	d13f      	bne.n	8000672 <SystemCoreClockUpdate+0xb2>
 80005f2:	4b2d      	ldr	r3, [pc, #180]	; (80006a8 <SystemCoreClockUpdate+0xe8>)
 80005f4:	4a2d      	ldr	r2, [pc, #180]	; (80006ac <SystemCoreClockUpdate+0xec>)
 80005f6:	601a      	str	r2, [r3, #0]
 80005f8:	e03f      	b.n	800067a <SystemCoreClockUpdate+0xba>
 80005fa:	4b2b      	ldr	r3, [pc, #172]	; (80006a8 <SystemCoreClockUpdate+0xe8>)
 80005fc:	4a2c      	ldr	r2, [pc, #176]	; (80006b0 <SystemCoreClockUpdate+0xf0>)
 80005fe:	601a      	str	r2, [r3, #0]
 8000600:	e03b      	b.n	800067a <SystemCoreClockUpdate+0xba>
 8000602:	4b28      	ldr	r3, [pc, #160]	; (80006a4 <SystemCoreClockUpdate+0xe4>)
 8000604:	685b      	ldr	r3, [r3, #4]
 8000606:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 800060a:	0d9b      	lsrs	r3, r3, #22
 800060c:	60bb      	str	r3, [r7, #8]
 800060e:	4b25      	ldr	r3, [pc, #148]	; (80006a4 <SystemCoreClockUpdate+0xe4>)
 8000610:	685b      	ldr	r3, [r3, #4]
 8000612:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 8000616:	607b      	str	r3, [r7, #4]
 8000618:	68bb      	ldr	r3, [r7, #8]
 800061a:	2b00      	cmp	r3, #0
 800061c:	d00d      	beq.n	800063a <SystemCoreClockUpdate+0x7a>
 800061e:	4a24      	ldr	r2, [pc, #144]	; (80006b0 <SystemCoreClockUpdate+0xf0>)
 8000620:	687b      	ldr	r3, [r7, #4]
 8000622:	fbb2 f2f3 	udiv	r2, r2, r3
 8000626:	4b1f      	ldr	r3, [pc, #124]	; (80006a4 <SystemCoreClockUpdate+0xe4>)
 8000628:	6859      	ldr	r1, [r3, #4]
 800062a:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 800062e:	400b      	ands	r3, r1
 8000630:	099b      	lsrs	r3, r3, #6
 8000632:	fb03 f302 	mul.w	r3, r3, r2
 8000636:	617b      	str	r3, [r7, #20]
 8000638:	e00c      	b.n	8000654 <SystemCoreClockUpdate+0x94>
 800063a:	4a1c      	ldr	r2, [pc, #112]	; (80006ac <SystemCoreClockUpdate+0xec>)
 800063c:	687b      	ldr	r3, [r7, #4]
 800063e:	fbb2 f2f3 	udiv	r2, r2, r3
 8000642:	4b18      	ldr	r3, [pc, #96]	; (80006a4 <SystemCoreClockUpdate+0xe4>)
 8000644:	6859      	ldr	r1, [r3, #4]
 8000646:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 800064a:	400b      	ands	r3, r1
 800064c:	099b      	lsrs	r3, r3, #6
 800064e:	fb03 f302 	mul.w	r3, r3, r2
 8000652:	617b      	str	r3, [r7, #20]
 8000654:	4b13      	ldr	r3, [pc, #76]	; (80006a4 <SystemCoreClockUpdate+0xe4>)
 8000656:	685b      	ldr	r3, [r3, #4]
 8000658:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 800065c:	0c1b      	lsrs	r3, r3, #16
 800065e:	3301      	adds	r3, #1
 8000660:	005b      	lsls	r3, r3, #1
 8000662:	60fb      	str	r3, [r7, #12]
 8000664:	697a      	ldr	r2, [r7, #20]
 8000666:	68fb      	ldr	r3, [r7, #12]
 8000668:	fbb2 f3f3 	udiv	r3, r2, r3
 800066c:	4a0e      	ldr	r2, [pc, #56]	; (80006a8 <SystemCoreClockUpdate+0xe8>)
 800066e:	6013      	str	r3, [r2, #0]
 8000670:	e003      	b.n	800067a <SystemCoreClockUpdate+0xba>
 8000672:	4b0d      	ldr	r3, [pc, #52]	; (80006a8 <SystemCoreClockUpdate+0xe8>)
 8000674:	4a0d      	ldr	r2, [pc, #52]	; (80006ac <SystemCoreClockUpdate+0xec>)
 8000676:	601a      	str	r2, [r3, #0]
 8000678:	bf00      	nop
 800067a:	4b0a      	ldr	r3, [pc, #40]	; (80006a4 <SystemCoreClockUpdate+0xe4>)
 800067c:	689b      	ldr	r3, [r3, #8]
 800067e:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8000682:	091b      	lsrs	r3, r3, #4
 8000684:	4a0b      	ldr	r2, [pc, #44]	; (80006b4 <SystemCoreClockUpdate+0xf4>)
 8000686:	5cd3      	ldrb	r3, [r2, r3]
 8000688:	613b      	str	r3, [r7, #16]
 800068a:	4b07      	ldr	r3, [pc, #28]	; (80006a8 <SystemCoreClockUpdate+0xe8>)
 800068c:	681a      	ldr	r2, [r3, #0]
 800068e:	693b      	ldr	r3, [r7, #16]
 8000690:	fa22 f303 	lsr.w	r3, r2, r3
 8000694:	4a04      	ldr	r2, [pc, #16]	; (80006a8 <SystemCoreClockUpdate+0xe8>)
 8000696:	6013      	str	r3, [r2, #0]
 8000698:	371c      	adds	r7, #28
 800069a:	46bd      	mov	sp, r7
 800069c:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006a0:	4770      	bx	lr
 80006a2:	bf00      	nop
 80006a4:	40023800 	.word	0x40023800
 80006a8:	2000000c 	.word	0x2000000c
 80006ac:	00f42400 	.word	0x00f42400
 80006b0:	017d7840 	.word	0x017d7840
 80006b4:	08000864 	.word	0x08000864

080006b8 <Reset_Handler>:
 80006b8:	f8df d034 	ldr.w	sp, [pc, #52]	; 80006f0 <LoopFillZerobss+0x14>
 80006bc:	2100      	movs	r1, #0
 80006be:	e003      	b.n	80006c8 <LoopCopyDataInit>

080006c0 <CopyDataInit>:
 80006c0:	4b0c      	ldr	r3, [pc, #48]	; (80006f4 <LoopFillZerobss+0x18>)
 80006c2:	585b      	ldr	r3, [r3, r1]
 80006c4:	5043      	str	r3, [r0, r1]
 80006c6:	3104      	adds	r1, #4

080006c8 <LoopCopyDataInit>:
 80006c8:	480b      	ldr	r0, [pc, #44]	; (80006f8 <LoopFillZerobss+0x1c>)
 80006ca:	4b0c      	ldr	r3, [pc, #48]	; (80006fc <LoopFillZerobss+0x20>)
 80006cc:	1842      	adds	r2, r0, r1
 80006ce:	429a      	cmp	r2, r3
 80006d0:	d3f6      	bcc.n	80006c0 <CopyDataInit>
 80006d2:	4a0b      	ldr	r2, [pc, #44]	; (8000700 <LoopFillZerobss+0x24>)
 80006d4:	e002      	b.n	80006dc <LoopFillZerobss>

080006d6 <FillZerobss>:
 80006d6:	2300      	movs	r3, #0
 80006d8:	f842 3b04 	str.w	r3, [r2], #4

080006dc <LoopFillZerobss>:
 80006dc:	4b09      	ldr	r3, [pc, #36]	; (8000704 <LoopFillZerobss+0x28>)
 80006de:	429a      	cmp	r2, r3
 80006e0:	d3f9      	bcc.n	80006d6 <FillZerobss>
 80006e2:	f7ff ff3f 	bl	8000564 <SystemInit>
 80006e6:	f000 f82d 	bl	8000744 <__libc_init_array>
 80006ea:	f7ff ff31 	bl	8000550 <main>
 80006ee:	4770      	bx	lr
 80006f0:	20020000 	.word	0x20020000
 80006f4:	08000890 	.word	0x08000890
 80006f8:	20000000 	.word	0x20000000
 80006fc:	20000438 	.word	0x20000438
 8000700:	20000438 	.word	0x20000438
 8000704:	2000045c 	.word	0x2000045c

08000708 <ADC_IRQHandler>:
 8000708:	e7fe      	b.n	8000708 <ADC_IRQHandler>
	...

0800070c <atexit>:
 800070c:	4601      	mov	r1, r0
 800070e:	2000      	movs	r0, #0
 8000710:	4602      	mov	r2, r0
 8000712:	4603      	mov	r3, r0
 8000714:	f000 b83e 	b.w	8000794 <__register_exitproc>

08000718 <__libc_fini_array>:
 8000718:	b538      	push	{r3, r4, r5, lr}
 800071a:	4b08      	ldr	r3, [pc, #32]	; (800073c <__libc_fini_array+0x24>)
 800071c:	4d08      	ldr	r5, [pc, #32]	; (8000740 <__libc_fini_array+0x28>)
 800071e:	1aed      	subs	r5, r5, r3
 8000720:	10ac      	asrs	r4, r5, #2
 8000722:	bf18      	it	ne
 8000724:	18ed      	addne	r5, r5, r3
 8000726:	d005      	beq.n	8000734 <__libc_fini_array+0x1c>
 8000728:	3c01      	subs	r4, #1
 800072a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800072e:	4798      	blx	r3
 8000730:	2c00      	cmp	r4, #0
 8000732:	d1f9      	bne.n	8000728 <__libc_fini_array+0x10>
 8000734:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000738:	f000 b88e 	b.w	8000858 <_fini>
 800073c:	0800088c 	.word	0x0800088c
 8000740:	08000890 	.word	0x08000890

08000744 <__libc_init_array>:
 8000744:	b570      	push	{r4, r5, r6, lr}
 8000746:	4e0f      	ldr	r6, [pc, #60]	; (8000784 <__libc_init_array+0x40>)
 8000748:	4d0f      	ldr	r5, [pc, #60]	; (8000788 <__libc_init_array+0x44>)
 800074a:	1b76      	subs	r6, r6, r5
 800074c:	10b6      	asrs	r6, r6, #2
 800074e:	bf18      	it	ne
 8000750:	2400      	movne	r4, #0
 8000752:	d005      	beq.n	8000760 <__libc_init_array+0x1c>
 8000754:	3401      	adds	r4, #1
 8000756:	f855 3b04 	ldr.w	r3, [r5], #4
 800075a:	4798      	blx	r3
 800075c:	42a6      	cmp	r6, r4
 800075e:	d1f9      	bne.n	8000754 <__libc_init_array+0x10>
 8000760:	4e0a      	ldr	r6, [pc, #40]	; (800078c <__libc_init_array+0x48>)
 8000762:	4d0b      	ldr	r5, [pc, #44]	; (8000790 <__libc_init_array+0x4c>)
 8000764:	1b76      	subs	r6, r6, r5
 8000766:	f000 f871 	bl	800084c <_init>
 800076a:	10b6      	asrs	r6, r6, #2
 800076c:	bf18      	it	ne
 800076e:	2400      	movne	r4, #0
 8000770:	d006      	beq.n	8000780 <__libc_init_array+0x3c>
 8000772:	3401      	adds	r4, #1
 8000774:	f855 3b04 	ldr.w	r3, [r5], #4
 8000778:	4798      	blx	r3
 800077a:	42a6      	cmp	r6, r4
 800077c:	d1f9      	bne.n	8000772 <__libc_init_array+0x2e>
 800077e:	bd70      	pop	{r4, r5, r6, pc}
 8000780:	bd70      	pop	{r4, r5, r6, pc}
 8000782:	bf00      	nop
 8000784:	08000884 	.word	0x08000884
 8000788:	08000884 	.word	0x08000884
 800078c:	0800088c 	.word	0x0800088c
 8000790:	08000884 	.word	0x08000884

08000794 <__register_exitproc>:
 8000794:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000798:	4c25      	ldr	r4, [pc, #148]	; (8000830 <__register_exitproc+0x9c>)
 800079a:	6825      	ldr	r5, [r4, #0]
 800079c:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 80007a0:	4606      	mov	r6, r0
 80007a2:	4688      	mov	r8, r1
 80007a4:	4692      	mov	sl, r2
 80007a6:	4699      	mov	r9, r3
 80007a8:	b3cc      	cbz	r4, 800081e <__register_exitproc+0x8a>
 80007aa:	6860      	ldr	r0, [r4, #4]
 80007ac:	281f      	cmp	r0, #31
 80007ae:	dc18      	bgt.n	80007e2 <__register_exitproc+0x4e>
 80007b0:	1c43      	adds	r3, r0, #1
 80007b2:	b17e      	cbz	r6, 80007d4 <__register_exitproc+0x40>
 80007b4:	eb04 0580 	add.w	r5, r4, r0, lsl #2
 80007b8:	2101      	movs	r1, #1
 80007ba:	f8c5 a088 	str.w	sl, [r5, #136]	; 0x88
 80007be:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 80007c2:	fa01 f200 	lsl.w	r2, r1, r0
 80007c6:	4317      	orrs	r7, r2
 80007c8:	2e02      	cmp	r6, #2
 80007ca:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 80007ce:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
 80007d2:	d01e      	beq.n	8000812 <__register_exitproc+0x7e>
 80007d4:	3002      	adds	r0, #2
 80007d6:	6063      	str	r3, [r4, #4]
 80007d8:	f844 8020 	str.w	r8, [r4, r0, lsl #2]
 80007dc:	2000      	movs	r0, #0
 80007de:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80007e2:	4b14      	ldr	r3, [pc, #80]	; (8000834 <__register_exitproc+0xa0>)
 80007e4:	b303      	cbz	r3, 8000828 <__register_exitproc+0x94>
 80007e6:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80007ea:	f3af 8000 	nop.w
 80007ee:	4604      	mov	r4, r0
 80007f0:	b1d0      	cbz	r0, 8000828 <__register_exitproc+0x94>
 80007f2:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
 80007f6:	2700      	movs	r7, #0
 80007f8:	e880 0088 	stmia.w	r0, {r3, r7}
 80007fc:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8000800:	4638      	mov	r0, r7
 8000802:	2301      	movs	r3, #1
 8000804:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8000808:	f8c4 718c 	str.w	r7, [r4, #396]	; 0x18c
 800080c:	2e00      	cmp	r6, #0
 800080e:	d0e1      	beq.n	80007d4 <__register_exitproc+0x40>
 8000810:	e7d0      	b.n	80007b4 <__register_exitproc+0x20>
 8000812:	f8d4 118c 	ldr.w	r1, [r4, #396]	; 0x18c
 8000816:	430a      	orrs	r2, r1
 8000818:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 800081c:	e7da      	b.n	80007d4 <__register_exitproc+0x40>
 800081e:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 8000822:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8000826:	e7c0      	b.n	80007aa <__register_exitproc+0x16>
 8000828:	f04f 30ff 	mov.w	r0, #4294967295
 800082c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000830:	08000880 	.word	0x08000880
 8000834:	00000000 	.word	0x00000000

08000838 <register_fini>:
 8000838:	4b02      	ldr	r3, [pc, #8]	; (8000844 <register_fini+0xc>)
 800083a:	b113      	cbz	r3, 8000842 <register_fini+0xa>
 800083c:	4802      	ldr	r0, [pc, #8]	; (8000848 <register_fini+0x10>)
 800083e:	f7ff bf65 	b.w	800070c <atexit>
 8000842:	4770      	bx	lr
 8000844:	00000000 	.word	0x00000000
 8000848:	08000719 	.word	0x08000719

0800084c <_init>:
 800084c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800084e:	bf00      	nop
 8000850:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000852:	bc08      	pop	{r3}
 8000854:	469e      	mov	lr, r3
 8000856:	4770      	bx	lr

08000858 <_fini>:
 8000858:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800085a:	bf00      	nop
 800085c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800085e:	bc08      	pop	{r3}
 8000860:	469e      	mov	lr, r3
 8000862:	4770      	bx	lr
