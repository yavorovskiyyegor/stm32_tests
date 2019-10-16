
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   00000188  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         00000614  08000188  08000188  00010188  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000020  0800079c  0800079c  0001079c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  080007bc  080007bc  000107bc  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  080007c4  080007c4  000107c4  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000438  20000000  080007c8  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .ccmram       00000000  10000000  10000000  00020438  2**0  CONTENTS
  7 .bss          0000002c  20000438  20000438  00020438  2**2  ALLOC
  8 ._user_heap_stack 00000604  20000464  20000464  00020438  2**0  ALLOC
  9 .ARM.attributes 0000002a  00000000  00000000  00020438  2**0  CONTENTS, READONLY
 10 .comment      00000070  00000000  00000000  00020462  2**0  CONTENTS, READONLY
 11 .debug_info   0000281d  00000000  00000000  000204d2  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_abbrev 00000a38  00000000  00000000  00022cef  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_loc    000005b7  00000000  00000000  00023727  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_aranges 00000100  00000000  00000000  00023cde  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_line   0000084e  00000000  00000000  00023dde  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_str    00000b6d  00000000  00000000  0002462c  2**0  CONTENTS, READONLY, DEBUGGING
 17 .debug_frame  000001ec  00000000  00000000  0002519c  2**2  CONTENTS, READONLY, DEBUGGING
 18 .debug_ranges 00000070  00000000  00000000  00025388  2**0  CONTENTS, READONLY, DEBUGGING

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
 80001f0:	08000784 	.word	0x08000784

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
 800021c:	08000784 	.word	0x08000784
 8000220:	2000043c 	.word	0x2000043c
 8000224:	20000438 	.word	0x20000438
 8000228:	00000000 	.word	0x00000000

0800022c <SysTickConfig>:
 800022c:	b480      	push	{r7}
 800022e:	af00      	add	r7, sp, #0
 8000230:	4a0a      	ldr	r2, [pc, #40]	; (800025c <SysTickConfig+0x30>)
 8000232:	4b0a      	ldr	r3, [pc, #40]	; (800025c <SysTickConfig+0x30>)
 8000234:	685b      	ldr	r3, [r3, #4]
 8000236:	f043 03c7 	orr.w	r3, r3, #199	; 0xc7
 800023a:	6053      	str	r3, [r2, #4]
 800023c:	4a07      	ldr	r2, [pc, #28]	; (800025c <SysTickConfig+0x30>)
 800023e:	4b07      	ldr	r3, [pc, #28]	; (800025c <SysTickConfig+0x30>)
 8000240:	689b      	ldr	r3, [r3, #8]
 8000242:	f043 03c7 	orr.w	r3, r3, #199	; 0xc7
 8000246:	6093      	str	r3, [r2, #8]
 8000248:	4a04      	ldr	r2, [pc, #16]	; (800025c <SysTickConfig+0x30>)
 800024a:	4b04      	ldr	r3, [pc, #16]	; (800025c <SysTickConfig+0x30>)
 800024c:	681b      	ldr	r3, [r3, #0]
 800024e:	f043 0303 	orr.w	r3, r3, #3
 8000252:	6013      	str	r3, [r2, #0]
 8000254:	46bd      	mov	sp, r7
 8000256:	f85d 7b04 	ldr.w	r7, [sp], #4
 800025a:	4770      	bx	lr
 800025c:	e000e010 	.word	0xe000e010

08000260 <SysTick_Handler>:
 8000260:	b480      	push	{r7}
 8000262:	af00      	add	r7, sp, #0
 8000264:	4b56      	ldr	r3, [pc, #344]	; (80003c0 <SysTick_Handler+0x160>)
 8000266:	681b      	ldr	r3, [r3, #0]
 8000268:	2b00      	cmp	r3, #0
 800026a:	d103      	bne.n	8000274 <SysTick_Handler+0x14>
 800026c:	4b55      	ldr	r3, [pc, #340]	; (80003c4 <SysTick_Handler+0x164>)
 800026e:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8000272:	619a      	str	r2, [r3, #24]
 8000274:	4b52      	ldr	r3, [pc, #328]	; (80003c0 <SysTick_Handler+0x160>)
 8000276:	681b      	ldr	r3, [r3, #0]
 8000278:	f241 3288 	movw	r2, #5000	; 0x1388
 800027c:	4293      	cmp	r3, r2
 800027e:	d103      	bne.n	8000288 <SysTick_Handler+0x28>
 8000280:	4b50      	ldr	r3, [pc, #320]	; (80003c4 <SysTick_Handler+0x164>)
 8000282:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8000286:	619a      	str	r2, [r3, #24]
 8000288:	4b4d      	ldr	r3, [pc, #308]	; (80003c0 <SysTick_Handler+0x160>)
 800028a:	681b      	ldr	r3, [r3, #0]
 800028c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000290:	4293      	cmp	r3, r2
 8000292:	d005      	beq.n	80002a0 <SysTick_Handler+0x40>
 8000294:	4b4a      	ldr	r3, [pc, #296]	; (80003c0 <SysTick_Handler+0x160>)
 8000296:	681b      	ldr	r3, [r3, #0]
 8000298:	f242 720f 	movw	r2, #9999	; 0x270f
 800029c:	4293      	cmp	r3, r2
 800029e:	d145      	bne.n	800032c <SysTick_Handler+0xcc>
 80002a0:	4b49      	ldr	r3, [pc, #292]	; (80003c8 <SysTick_Handler+0x168>)
 80002a2:	681b      	ldr	r3, [r3, #0]
 80002a4:	2b00      	cmp	r3, #0
 80002a6:	d00f      	beq.n	80002c8 <SysTick_Handler+0x68>
 80002a8:	4b48      	ldr	r3, [pc, #288]	; (80003cc <SysTick_Handler+0x16c>)
 80002aa:	681b      	ldr	r3, [r3, #0]
 80002ac:	3301      	adds	r3, #1
 80002ae:	4a47      	ldr	r2, [pc, #284]	; (80003cc <SysTick_Handler+0x16c>)
 80002b0:	6013      	str	r3, [r2, #0]
 80002b2:	4b46      	ldr	r3, [pc, #280]	; (80003cc <SysTick_Handler+0x16c>)
 80002b4:	681b      	ldr	r3, [r3, #0]
 80002b6:	2b09      	cmp	r3, #9
 80002b8:	bfd4      	ite	le
 80002ba:	2301      	movle	r3, #1
 80002bc:	2300      	movgt	r3, #0
 80002be:	b2db      	uxtb	r3, r3
 80002c0:	461a      	mov	r2, r3
 80002c2:	4b41      	ldr	r3, [pc, #260]	; (80003c8 <SysTick_Handler+0x168>)
 80002c4:	601a      	str	r2, [r3, #0]
 80002c6:	e00e      	b.n	80002e6 <SysTick_Handler+0x86>
 80002c8:	4b40      	ldr	r3, [pc, #256]	; (80003cc <SysTick_Handler+0x16c>)
 80002ca:	681b      	ldr	r3, [r3, #0]
 80002cc:	3b01      	subs	r3, #1
 80002ce:	4a3f      	ldr	r2, [pc, #252]	; (80003cc <SysTick_Handler+0x16c>)
 80002d0:	6013      	str	r3, [r2, #0]
 80002d2:	4b3e      	ldr	r3, [pc, #248]	; (80003cc <SysTick_Handler+0x16c>)
 80002d4:	681b      	ldr	r3, [r3, #0]
 80002d6:	2b00      	cmp	r3, #0
 80002d8:	bfd4      	ite	le
 80002da:	2301      	movle	r3, #1
 80002dc:	2300      	movgt	r3, #0
 80002de:	b2db      	uxtb	r3, r3
 80002e0:	461a      	mov	r2, r3
 80002e2:	4b39      	ldr	r3, [pc, #228]	; (80003c8 <SysTick_Handler+0x168>)
 80002e4:	601a      	str	r2, [r3, #0]
 80002e6:	4b3a      	ldr	r3, [pc, #232]	; (80003d0 <SysTick_Handler+0x170>)
 80002e8:	681b      	ldr	r3, [r3, #0]
 80002ea:	2b00      	cmp	r3, #0
 80002ec:	d00f      	beq.n	800030e <SysTick_Handler+0xae>
 80002ee:	4b39      	ldr	r3, [pc, #228]	; (80003d4 <SysTick_Handler+0x174>)
 80002f0:	681b      	ldr	r3, [r3, #0]
 80002f2:	3301      	adds	r3, #1
 80002f4:	4a37      	ldr	r2, [pc, #220]	; (80003d4 <SysTick_Handler+0x174>)
 80002f6:	6013      	str	r3, [r2, #0]
 80002f8:	4b36      	ldr	r3, [pc, #216]	; (80003d4 <SysTick_Handler+0x174>)
 80002fa:	681b      	ldr	r3, [r3, #0]
 80002fc:	2b09      	cmp	r3, #9
 80002fe:	bfd4      	ite	le
 8000300:	2301      	movle	r3, #1
 8000302:	2300      	movgt	r3, #0
 8000304:	b2db      	uxtb	r3, r3
 8000306:	461a      	mov	r2, r3
 8000308:	4b31      	ldr	r3, [pc, #196]	; (80003d0 <SysTick_Handler+0x170>)
 800030a:	601a      	str	r2, [r3, #0]
 800030c:	e00e      	b.n	800032c <SysTick_Handler+0xcc>
 800030e:	4b31      	ldr	r3, [pc, #196]	; (80003d4 <SysTick_Handler+0x174>)
 8000310:	681b      	ldr	r3, [r3, #0]
 8000312:	3b01      	subs	r3, #1
 8000314:	4a2f      	ldr	r2, [pc, #188]	; (80003d4 <SysTick_Handler+0x174>)
 8000316:	6013      	str	r3, [r2, #0]
 8000318:	4b2e      	ldr	r3, [pc, #184]	; (80003d4 <SysTick_Handler+0x174>)
 800031a:	681b      	ldr	r3, [r3, #0]
 800031c:	2b00      	cmp	r3, #0
 800031e:	bfd4      	ite	le
 8000320:	2301      	movle	r3, #1
 8000322:	2300      	movgt	r3, #0
 8000324:	b2db      	uxtb	r3, r3
 8000326:	461a      	mov	r2, r3
 8000328:	4b29      	ldr	r3, [pc, #164]	; (80003d0 <SysTick_Handler+0x170>)
 800032a:	601a      	str	r2, [r3, #0]
 800032c:	4b24      	ldr	r3, [pc, #144]	; (80003c0 <SysTick_Handler+0x160>)
 800032e:	681b      	ldr	r3, [r3, #0]
 8000330:	3301      	adds	r3, #1
 8000332:	4a23      	ldr	r2, [pc, #140]	; (80003c0 <SysTick_Handler+0x160>)
 8000334:	6013      	str	r3, [r2, #0]
 8000336:	4b22      	ldr	r3, [pc, #136]	; (80003c0 <SysTick_Handler+0x160>)
 8000338:	681b      	ldr	r3, [r3, #0]
 800033a:	f242 7210 	movw	r2, #10000	; 0x2710
 800033e:	4293      	cmp	r3, r2
 8000340:	d102      	bne.n	8000348 <SysTick_Handler+0xe8>
 8000342:	4b1f      	ldr	r3, [pc, #124]	; (80003c0 <SysTick_Handler+0x160>)
 8000344:	2200      	movs	r2, #0
 8000346:	601a      	str	r2, [r3, #0]
 8000348:	4b23      	ldr	r3, [pc, #140]	; (80003d8 <SysTick_Handler+0x178>)
 800034a:	681a      	ldr	r2, [r3, #0]
 800034c:	4b1f      	ldr	r3, [pc, #124]	; (80003cc <SysTick_Handler+0x16c>)
 800034e:	681b      	ldr	r3, [r3, #0]
 8000350:	429a      	cmp	r2, r3
 8000352:	d103      	bne.n	800035c <SysTick_Handler+0xfc>
 8000354:	4b1b      	ldr	r3, [pc, #108]	; (80003c4 <SysTick_Handler+0x164>)
 8000356:	f04f 7200 	mov.w	r2, #33554432	; 0x2000000
 800035a:	619a      	str	r2, [r3, #24]
 800035c:	4b1e      	ldr	r3, [pc, #120]	; (80003d8 <SysTick_Handler+0x178>)
 800035e:	681a      	ldr	r2, [r3, #0]
 8000360:	4b1c      	ldr	r3, [pc, #112]	; (80003d4 <SysTick_Handler+0x174>)
 8000362:	681b      	ldr	r3, [r3, #0]
 8000364:	429a      	cmp	r2, r3
 8000366:	d103      	bne.n	8000370 <SysTick_Handler+0x110>
 8000368:	4b16      	ldr	r3, [pc, #88]	; (80003c4 <SysTick_Handler+0x164>)
 800036a:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
 800036e:	619a      	str	r2, [r3, #24]
 8000370:	4b19      	ldr	r3, [pc, #100]	; (80003d8 <SysTick_Handler+0x178>)
 8000372:	681b      	ldr	r3, [r3, #0]
 8000374:	2b00      	cmp	r3, #0
 8000376:	d107      	bne.n	8000388 <SysTick_Handler+0x128>
 8000378:	4b16      	ldr	r3, [pc, #88]	; (80003d4 <SysTick_Handler+0x174>)
 800037a:	681b      	ldr	r3, [r3, #0]
 800037c:	2b00      	cmp	r3, #0
 800037e:	d003      	beq.n	8000388 <SysTick_Handler+0x128>
 8000380:	4b10      	ldr	r3, [pc, #64]	; (80003c4 <SysTick_Handler+0x164>)
 8000382:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000386:	619a      	str	r2, [r3, #24]
 8000388:	4b13      	ldr	r3, [pc, #76]	; (80003d8 <SysTick_Handler+0x178>)
 800038a:	681b      	ldr	r3, [r3, #0]
 800038c:	2b00      	cmp	r3, #0
 800038e:	d107      	bne.n	80003a0 <SysTick_Handler+0x140>
 8000390:	4b0e      	ldr	r3, [pc, #56]	; (80003cc <SysTick_Handler+0x16c>)
 8000392:	681b      	ldr	r3, [r3, #0]
 8000394:	2b00      	cmp	r3, #0
 8000396:	d003      	beq.n	80003a0 <SysTick_Handler+0x140>
 8000398:	4b0a      	ldr	r3, [pc, #40]	; (80003c4 <SysTick_Handler+0x164>)
 800039a:	f44f 7200 	mov.w	r2, #512	; 0x200
 800039e:	619a      	str	r2, [r3, #24]
 80003a0:	4b0d      	ldr	r3, [pc, #52]	; (80003d8 <SysTick_Handler+0x178>)
 80003a2:	681b      	ldr	r3, [r3, #0]
 80003a4:	3301      	adds	r3, #1
 80003a6:	4a0c      	ldr	r2, [pc, #48]	; (80003d8 <SysTick_Handler+0x178>)
 80003a8:	6013      	str	r3, [r2, #0]
 80003aa:	4b0b      	ldr	r3, [pc, #44]	; (80003d8 <SysTick_Handler+0x178>)
 80003ac:	681b      	ldr	r3, [r3, #0]
 80003ae:	2b0a      	cmp	r3, #10
 80003b0:	d102      	bne.n	80003b8 <SysTick_Handler+0x158>
 80003b2:	4b09      	ldr	r3, [pc, #36]	; (80003d8 <SysTick_Handler+0x178>)
 80003b4:	2200      	movs	r2, #0
 80003b6:	601a      	str	r2, [r3, #0]
 80003b8:	46bd      	mov	sp, r7
 80003ba:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003be:	4770      	bx	lr
 80003c0:	20000454 	.word	0x20000454
 80003c4:	40020c00 	.word	0x40020c00
 80003c8:	2000045c 	.word	0x2000045c
 80003cc:	20000000 	.word	0x20000000
 80003d0:	20000004 	.word	0x20000004
 80003d4:	20000458 	.word	0x20000458
 80003d8:	20000460 	.word	0x20000460

080003dc <GPIO_Config>:
 80003dc:	b480      	push	{r7}
 80003de:	af00      	add	r7, sp, #0
 80003e0:	4a08      	ldr	r2, [pc, #32]	; (8000404 <GPIO_Config+0x28>)
 80003e2:	4b08      	ldr	r3, [pc, #32]	; (8000404 <GPIO_Config+0x28>)
 80003e4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80003e6:	f043 0309 	orr.w	r3, r3, #9
 80003ea:	6313      	str	r3, [r2, #48]	; 0x30
 80003ec:	4a06      	ldr	r2, [pc, #24]	; (8000408 <GPIO_Config+0x2c>)
 80003ee:	4b06      	ldr	r3, [pc, #24]	; (8000408 <GPIO_Config+0x2c>)
 80003f0:	681b      	ldr	r3, [r3, #0]
 80003f2:	f043 53a8 	orr.w	r3, r3, #352321536	; 0x15000000
 80003f6:	f443 23a0 	orr.w	r3, r3, #327680	; 0x50000
 80003fa:	6013      	str	r3, [r2, #0]
 80003fc:	46bd      	mov	sp, r7
 80003fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000402:	4770      	bx	lr
 8000404:	40023800 	.word	0x40023800
 8000408:	40020c00 	.word	0x40020c00

0800040c <main>:
 800040c:	b580      	push	{r7, lr}
 800040e:	b082      	sub	sp, #8
 8000410:	af00      	add	r7, sp, #0
 8000412:	f7ff ffe3 	bl	80003dc <GPIO_Config>
 8000416:	f7ff ff09 	bl	800022c <SysTickConfig>
 800041a:	4b1d      	ldr	r3, [pc, #116]	; (8000490 <main+0x84>)
 800041c:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 8000420:	619a      	str	r2, [r3, #24]
 8000422:	2300      	movs	r3, #0
 8000424:	607b      	str	r3, [r7, #4]
 8000426:	e011      	b.n	800044c <main+0x40>
 8000428:	4b1a      	ldr	r3, [pc, #104]	; (8000494 <main+0x88>)
 800042a:	691b      	ldr	r3, [r3, #16]
 800042c:	f003 0301 	and.w	r3, r3, #1
 8000430:	2b00      	cmp	r3, #0
 8000432:	d004      	beq.n	800043e <main+0x32>
 8000434:	4b16      	ldr	r3, [pc, #88]	; (8000490 <main+0x84>)
 8000436:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 800043a:	619a      	str	r2, [r3, #24]
 800043c:	e003      	b.n	8000446 <main+0x3a>
 800043e:	4b14      	ldr	r3, [pc, #80]	; (8000490 <main+0x84>)
 8000440:	f04f 5200 	mov.w	r2, #536870912	; 0x20000000
 8000444:	619a      	str	r2, [r3, #24]
 8000446:	687b      	ldr	r3, [r7, #4]
 8000448:	3301      	adds	r3, #1
 800044a:	607b      	str	r3, [r7, #4]
 800044c:	687b      	ldr	r3, [r7, #4]
 800044e:	4a12      	ldr	r2, [pc, #72]	; (8000498 <main+0x8c>)
 8000450:	4293      	cmp	r3, r2
 8000452:	dde9      	ble.n	8000428 <main+0x1c>
 8000454:	4b0e      	ldr	r3, [pc, #56]	; (8000490 <main+0x84>)
 8000456:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800045a:	619a      	str	r2, [r3, #24]
 800045c:	2300      	movs	r3, #0
 800045e:	607b      	str	r3, [r7, #4]
 8000460:	e011      	b.n	8000486 <main+0x7a>
 8000462:	4b0c      	ldr	r3, [pc, #48]	; (8000494 <main+0x88>)
 8000464:	691b      	ldr	r3, [r3, #16]
 8000466:	f003 0301 	and.w	r3, r3, #1
 800046a:	2b00      	cmp	r3, #0
 800046c:	d004      	beq.n	8000478 <main+0x6c>
 800046e:	4b08      	ldr	r3, [pc, #32]	; (8000490 <main+0x84>)
 8000470:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000474:	619a      	str	r2, [r3, #24]
 8000476:	e003      	b.n	8000480 <main+0x74>
 8000478:	4b05      	ldr	r3, [pc, #20]	; (8000490 <main+0x84>)
 800047a:	f04f 5200 	mov.w	r2, #536870912	; 0x20000000
 800047e:	619a      	str	r2, [r3, #24]
 8000480:	687b      	ldr	r3, [r7, #4]
 8000482:	3301      	adds	r3, #1
 8000484:	607b      	str	r3, [r7, #4]
 8000486:	687b      	ldr	r3, [r7, #4]
 8000488:	4a03      	ldr	r2, [pc, #12]	; (8000498 <main+0x8c>)
 800048a:	4293      	cmp	r3, r2
 800048c:	dde9      	ble.n	8000462 <main+0x56>
 800048e:	e7c4      	b.n	800041a <main+0xe>
 8000490:	40020c00 	.word	0x40020c00
 8000494:	40020000 	.word	0x40020000
 8000498:	000f423f 	.word	0x000f423f

0800049c <SystemInit>:
 800049c:	b480      	push	{r7}
 800049e:	af00      	add	r7, sp, #0
 80004a0:	4a12      	ldr	r2, [pc, #72]	; (80004ec <SystemInit+0x50>)
 80004a2:	4b12      	ldr	r3, [pc, #72]	; (80004ec <SystemInit+0x50>)
 80004a4:	681b      	ldr	r3, [r3, #0]
 80004a6:	f043 0301 	orr.w	r3, r3, #1
 80004aa:	6013      	str	r3, [r2, #0]
 80004ac:	4b0f      	ldr	r3, [pc, #60]	; (80004ec <SystemInit+0x50>)
 80004ae:	2200      	movs	r2, #0
 80004b0:	609a      	str	r2, [r3, #8]
 80004b2:	4a0e      	ldr	r2, [pc, #56]	; (80004ec <SystemInit+0x50>)
 80004b4:	4b0d      	ldr	r3, [pc, #52]	; (80004ec <SystemInit+0x50>)
 80004b6:	681b      	ldr	r3, [r3, #0]
 80004b8:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 80004bc:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 80004c0:	6013      	str	r3, [r2, #0]
 80004c2:	4b0a      	ldr	r3, [pc, #40]	; (80004ec <SystemInit+0x50>)
 80004c4:	4a0a      	ldr	r2, [pc, #40]	; (80004f0 <SystemInit+0x54>)
 80004c6:	605a      	str	r2, [r3, #4]
 80004c8:	4a08      	ldr	r2, [pc, #32]	; (80004ec <SystemInit+0x50>)
 80004ca:	4b08      	ldr	r3, [pc, #32]	; (80004ec <SystemInit+0x50>)
 80004cc:	681b      	ldr	r3, [r3, #0]
 80004ce:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 80004d2:	6013      	str	r3, [r2, #0]
 80004d4:	4b05      	ldr	r3, [pc, #20]	; (80004ec <SystemInit+0x50>)
 80004d6:	2200      	movs	r2, #0
 80004d8:	60da      	str	r2, [r3, #12]
 80004da:	4b06      	ldr	r3, [pc, #24]	; (80004f4 <SystemInit+0x58>)
 80004dc:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80004e0:	609a      	str	r2, [r3, #8]
 80004e2:	46bd      	mov	sp, r7
 80004e4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004e8:	4770      	bx	lr
 80004ea:	bf00      	nop
 80004ec:	40023800 	.word	0x40023800
 80004f0:	24003010 	.word	0x24003010
 80004f4:	e000ed00 	.word	0xe000ed00

080004f8 <SystemCoreClockUpdate>:
 80004f8:	b480      	push	{r7}
 80004fa:	b087      	sub	sp, #28
 80004fc:	af00      	add	r7, sp, #0
 80004fe:	2300      	movs	r3, #0
 8000500:	613b      	str	r3, [r7, #16]
 8000502:	2300      	movs	r3, #0
 8000504:	617b      	str	r3, [r7, #20]
 8000506:	2302      	movs	r3, #2
 8000508:	60fb      	str	r3, [r7, #12]
 800050a:	2300      	movs	r3, #0
 800050c:	60bb      	str	r3, [r7, #8]
 800050e:	2302      	movs	r3, #2
 8000510:	607b      	str	r3, [r7, #4]
 8000512:	4b32      	ldr	r3, [pc, #200]	; (80005dc <SystemCoreClockUpdate+0xe4>)
 8000514:	689b      	ldr	r3, [r3, #8]
 8000516:	f003 030c 	and.w	r3, r3, #12
 800051a:	613b      	str	r3, [r7, #16]
 800051c:	693b      	ldr	r3, [r7, #16]
 800051e:	2b04      	cmp	r3, #4
 8000520:	d007      	beq.n	8000532 <SystemCoreClockUpdate+0x3a>
 8000522:	2b08      	cmp	r3, #8
 8000524:	d009      	beq.n	800053a <SystemCoreClockUpdate+0x42>
 8000526:	2b00      	cmp	r3, #0
 8000528:	d13f      	bne.n	80005aa <SystemCoreClockUpdate+0xb2>
 800052a:	4b2d      	ldr	r3, [pc, #180]	; (80005e0 <SystemCoreClockUpdate+0xe8>)
 800052c:	4a2d      	ldr	r2, [pc, #180]	; (80005e4 <SystemCoreClockUpdate+0xec>)
 800052e:	601a      	str	r2, [r3, #0]
 8000530:	e03f      	b.n	80005b2 <SystemCoreClockUpdate+0xba>
 8000532:	4b2b      	ldr	r3, [pc, #172]	; (80005e0 <SystemCoreClockUpdate+0xe8>)
 8000534:	4a2c      	ldr	r2, [pc, #176]	; (80005e8 <SystemCoreClockUpdate+0xf0>)
 8000536:	601a      	str	r2, [r3, #0]
 8000538:	e03b      	b.n	80005b2 <SystemCoreClockUpdate+0xba>
 800053a:	4b28      	ldr	r3, [pc, #160]	; (80005dc <SystemCoreClockUpdate+0xe4>)
 800053c:	685b      	ldr	r3, [r3, #4]
 800053e:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8000542:	0d9b      	lsrs	r3, r3, #22
 8000544:	60bb      	str	r3, [r7, #8]
 8000546:	4b25      	ldr	r3, [pc, #148]	; (80005dc <SystemCoreClockUpdate+0xe4>)
 8000548:	685b      	ldr	r3, [r3, #4]
 800054a:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 800054e:	607b      	str	r3, [r7, #4]
 8000550:	68bb      	ldr	r3, [r7, #8]
 8000552:	2b00      	cmp	r3, #0
 8000554:	d00d      	beq.n	8000572 <SystemCoreClockUpdate+0x7a>
 8000556:	4a24      	ldr	r2, [pc, #144]	; (80005e8 <SystemCoreClockUpdate+0xf0>)
 8000558:	687b      	ldr	r3, [r7, #4]
 800055a:	fbb2 f2f3 	udiv	r2, r2, r3
 800055e:	4b1f      	ldr	r3, [pc, #124]	; (80005dc <SystemCoreClockUpdate+0xe4>)
 8000560:	6859      	ldr	r1, [r3, #4]
 8000562:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 8000566:	400b      	ands	r3, r1
 8000568:	099b      	lsrs	r3, r3, #6
 800056a:	fb03 f302 	mul.w	r3, r3, r2
 800056e:	617b      	str	r3, [r7, #20]
 8000570:	e00c      	b.n	800058c <SystemCoreClockUpdate+0x94>
 8000572:	4a1c      	ldr	r2, [pc, #112]	; (80005e4 <SystemCoreClockUpdate+0xec>)
 8000574:	687b      	ldr	r3, [r7, #4]
 8000576:	fbb2 f2f3 	udiv	r2, r2, r3
 800057a:	4b18      	ldr	r3, [pc, #96]	; (80005dc <SystemCoreClockUpdate+0xe4>)
 800057c:	6859      	ldr	r1, [r3, #4]
 800057e:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 8000582:	400b      	ands	r3, r1
 8000584:	099b      	lsrs	r3, r3, #6
 8000586:	fb03 f302 	mul.w	r3, r3, r2
 800058a:	617b      	str	r3, [r7, #20]
 800058c:	4b13      	ldr	r3, [pc, #76]	; (80005dc <SystemCoreClockUpdate+0xe4>)
 800058e:	685b      	ldr	r3, [r3, #4]
 8000590:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8000594:	0c1b      	lsrs	r3, r3, #16
 8000596:	3301      	adds	r3, #1
 8000598:	005b      	lsls	r3, r3, #1
 800059a:	60fb      	str	r3, [r7, #12]
 800059c:	697a      	ldr	r2, [r7, #20]
 800059e:	68fb      	ldr	r3, [r7, #12]
 80005a0:	fbb2 f3f3 	udiv	r3, r2, r3
 80005a4:	4a0e      	ldr	r2, [pc, #56]	; (80005e0 <SystemCoreClockUpdate+0xe8>)
 80005a6:	6013      	str	r3, [r2, #0]
 80005a8:	e003      	b.n	80005b2 <SystemCoreClockUpdate+0xba>
 80005aa:	4b0d      	ldr	r3, [pc, #52]	; (80005e0 <SystemCoreClockUpdate+0xe8>)
 80005ac:	4a0d      	ldr	r2, [pc, #52]	; (80005e4 <SystemCoreClockUpdate+0xec>)
 80005ae:	601a      	str	r2, [r3, #0]
 80005b0:	bf00      	nop
 80005b2:	4b0a      	ldr	r3, [pc, #40]	; (80005dc <SystemCoreClockUpdate+0xe4>)
 80005b4:	689b      	ldr	r3, [r3, #8]
 80005b6:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80005ba:	091b      	lsrs	r3, r3, #4
 80005bc:	4a0b      	ldr	r2, [pc, #44]	; (80005ec <SystemCoreClockUpdate+0xf4>)
 80005be:	5cd3      	ldrb	r3, [r2, r3]
 80005c0:	613b      	str	r3, [r7, #16]
 80005c2:	4b07      	ldr	r3, [pc, #28]	; (80005e0 <SystemCoreClockUpdate+0xe8>)
 80005c4:	681a      	ldr	r2, [r3, #0]
 80005c6:	693b      	ldr	r3, [r7, #16]
 80005c8:	fa22 f303 	lsr.w	r3, r2, r3
 80005cc:	4a04      	ldr	r2, [pc, #16]	; (80005e0 <SystemCoreClockUpdate+0xe8>)
 80005ce:	6013      	str	r3, [r2, #0]
 80005d0:	371c      	adds	r7, #28
 80005d2:	46bd      	mov	sp, r7
 80005d4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005d8:	4770      	bx	lr
 80005da:	bf00      	nop
 80005dc:	40023800 	.word	0x40023800
 80005e0:	20000008 	.word	0x20000008
 80005e4:	00f42400 	.word	0x00f42400
 80005e8:	017d7840 	.word	0x017d7840
 80005ec:	0800079c 	.word	0x0800079c

080005f0 <Reset_Handler>:
 80005f0:	f8df d034 	ldr.w	sp, [pc, #52]	; 8000628 <LoopFillZerobss+0x14>
 80005f4:	2100      	movs	r1, #0
 80005f6:	e003      	b.n	8000600 <LoopCopyDataInit>

080005f8 <CopyDataInit>:
 80005f8:	4b0c      	ldr	r3, [pc, #48]	; (800062c <LoopFillZerobss+0x18>)
 80005fa:	585b      	ldr	r3, [r3, r1]
 80005fc:	5043      	str	r3, [r0, r1]
 80005fe:	3104      	adds	r1, #4

08000600 <LoopCopyDataInit>:
 8000600:	480b      	ldr	r0, [pc, #44]	; (8000630 <LoopFillZerobss+0x1c>)
 8000602:	4b0c      	ldr	r3, [pc, #48]	; (8000634 <LoopFillZerobss+0x20>)
 8000604:	1842      	adds	r2, r0, r1
 8000606:	429a      	cmp	r2, r3
 8000608:	d3f6      	bcc.n	80005f8 <CopyDataInit>
 800060a:	4a0b      	ldr	r2, [pc, #44]	; (8000638 <LoopFillZerobss+0x24>)
 800060c:	e002      	b.n	8000614 <LoopFillZerobss>

0800060e <FillZerobss>:
 800060e:	2300      	movs	r3, #0
 8000610:	f842 3b04 	str.w	r3, [r2], #4

08000614 <LoopFillZerobss>:
 8000614:	4b09      	ldr	r3, [pc, #36]	; (800063c <LoopFillZerobss+0x28>)
 8000616:	429a      	cmp	r2, r3
 8000618:	d3f9      	bcc.n	800060e <FillZerobss>
 800061a:	f7ff ff3f 	bl	800049c <SystemInit>
 800061e:	f000 f82d 	bl	800067c <__libc_init_array>
 8000622:	f7ff fef3 	bl	800040c <main>
 8000626:	4770      	bx	lr
 8000628:	20020000 	.word	0x20020000
 800062c:	080007c8 	.word	0x080007c8
 8000630:	20000000 	.word	0x20000000
 8000634:	20000438 	.word	0x20000438
 8000638:	20000438 	.word	0x20000438
 800063c:	20000464 	.word	0x20000464

08000640 <ADC_IRQHandler>:
 8000640:	e7fe      	b.n	8000640 <ADC_IRQHandler>
	...

08000644 <atexit>:
 8000644:	4601      	mov	r1, r0
 8000646:	2000      	movs	r0, #0
 8000648:	4602      	mov	r2, r0
 800064a:	4603      	mov	r3, r0
 800064c:	f000 b83e 	b.w	80006cc <__register_exitproc>

08000650 <__libc_fini_array>:
 8000650:	b538      	push	{r3, r4, r5, lr}
 8000652:	4b08      	ldr	r3, [pc, #32]	; (8000674 <__libc_fini_array+0x24>)
 8000654:	4d08      	ldr	r5, [pc, #32]	; (8000678 <__libc_fini_array+0x28>)
 8000656:	1aed      	subs	r5, r5, r3
 8000658:	10ac      	asrs	r4, r5, #2
 800065a:	bf18      	it	ne
 800065c:	18ed      	addne	r5, r5, r3
 800065e:	d005      	beq.n	800066c <__libc_fini_array+0x1c>
 8000660:	3c01      	subs	r4, #1
 8000662:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8000666:	4798      	blx	r3
 8000668:	2c00      	cmp	r4, #0
 800066a:	d1f9      	bne.n	8000660 <__libc_fini_array+0x10>
 800066c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000670:	f000 b88e 	b.w	8000790 <_fini>
 8000674:	080007c4 	.word	0x080007c4
 8000678:	080007c8 	.word	0x080007c8

0800067c <__libc_init_array>:
 800067c:	b570      	push	{r4, r5, r6, lr}
 800067e:	4e0f      	ldr	r6, [pc, #60]	; (80006bc <__libc_init_array+0x40>)
 8000680:	4d0f      	ldr	r5, [pc, #60]	; (80006c0 <__libc_init_array+0x44>)
 8000682:	1b76      	subs	r6, r6, r5
 8000684:	10b6      	asrs	r6, r6, #2
 8000686:	bf18      	it	ne
 8000688:	2400      	movne	r4, #0
 800068a:	d005      	beq.n	8000698 <__libc_init_array+0x1c>
 800068c:	3401      	adds	r4, #1
 800068e:	f855 3b04 	ldr.w	r3, [r5], #4
 8000692:	4798      	blx	r3
 8000694:	42a6      	cmp	r6, r4
 8000696:	d1f9      	bne.n	800068c <__libc_init_array+0x10>
 8000698:	4e0a      	ldr	r6, [pc, #40]	; (80006c4 <__libc_init_array+0x48>)
 800069a:	4d0b      	ldr	r5, [pc, #44]	; (80006c8 <__libc_init_array+0x4c>)
 800069c:	1b76      	subs	r6, r6, r5
 800069e:	f000 f871 	bl	8000784 <_init>
 80006a2:	10b6      	asrs	r6, r6, #2
 80006a4:	bf18      	it	ne
 80006a6:	2400      	movne	r4, #0
 80006a8:	d006      	beq.n	80006b8 <__libc_init_array+0x3c>
 80006aa:	3401      	adds	r4, #1
 80006ac:	f855 3b04 	ldr.w	r3, [r5], #4
 80006b0:	4798      	blx	r3
 80006b2:	42a6      	cmp	r6, r4
 80006b4:	d1f9      	bne.n	80006aa <__libc_init_array+0x2e>
 80006b6:	bd70      	pop	{r4, r5, r6, pc}
 80006b8:	bd70      	pop	{r4, r5, r6, pc}
 80006ba:	bf00      	nop
 80006bc:	080007bc 	.word	0x080007bc
 80006c0:	080007bc 	.word	0x080007bc
 80006c4:	080007c4 	.word	0x080007c4
 80006c8:	080007bc 	.word	0x080007bc

080006cc <__register_exitproc>:
 80006cc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80006d0:	4c25      	ldr	r4, [pc, #148]	; (8000768 <__register_exitproc+0x9c>)
 80006d2:	6825      	ldr	r5, [r4, #0]
 80006d4:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 80006d8:	4606      	mov	r6, r0
 80006da:	4688      	mov	r8, r1
 80006dc:	4692      	mov	sl, r2
 80006de:	4699      	mov	r9, r3
 80006e0:	b3cc      	cbz	r4, 8000756 <__register_exitproc+0x8a>
 80006e2:	6860      	ldr	r0, [r4, #4]
 80006e4:	281f      	cmp	r0, #31
 80006e6:	dc18      	bgt.n	800071a <__register_exitproc+0x4e>
 80006e8:	1c43      	adds	r3, r0, #1
 80006ea:	b17e      	cbz	r6, 800070c <__register_exitproc+0x40>
 80006ec:	eb04 0580 	add.w	r5, r4, r0, lsl #2
 80006f0:	2101      	movs	r1, #1
 80006f2:	f8c5 a088 	str.w	sl, [r5, #136]	; 0x88
 80006f6:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 80006fa:	fa01 f200 	lsl.w	r2, r1, r0
 80006fe:	4317      	orrs	r7, r2
 8000700:	2e02      	cmp	r6, #2
 8000702:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8000706:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
 800070a:	d01e      	beq.n	800074a <__register_exitproc+0x7e>
 800070c:	3002      	adds	r0, #2
 800070e:	6063      	str	r3, [r4, #4]
 8000710:	f844 8020 	str.w	r8, [r4, r0, lsl #2]
 8000714:	2000      	movs	r0, #0
 8000716:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800071a:	4b14      	ldr	r3, [pc, #80]	; (800076c <__register_exitproc+0xa0>)
 800071c:	b303      	cbz	r3, 8000760 <__register_exitproc+0x94>
 800071e:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8000722:	f3af 8000 	nop.w
 8000726:	4604      	mov	r4, r0
 8000728:	b1d0      	cbz	r0, 8000760 <__register_exitproc+0x94>
 800072a:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
 800072e:	2700      	movs	r7, #0
 8000730:	e880 0088 	stmia.w	r0, {r3, r7}
 8000734:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8000738:	4638      	mov	r0, r7
 800073a:	2301      	movs	r3, #1
 800073c:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8000740:	f8c4 718c 	str.w	r7, [r4, #396]	; 0x18c
 8000744:	2e00      	cmp	r6, #0
 8000746:	d0e1      	beq.n	800070c <__register_exitproc+0x40>
 8000748:	e7d0      	b.n	80006ec <__register_exitproc+0x20>
 800074a:	f8d4 118c 	ldr.w	r1, [r4, #396]	; 0x18c
 800074e:	430a      	orrs	r2, r1
 8000750:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 8000754:	e7da      	b.n	800070c <__register_exitproc+0x40>
 8000756:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 800075a:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 800075e:	e7c0      	b.n	80006e2 <__register_exitproc+0x16>
 8000760:	f04f 30ff 	mov.w	r0, #4294967295
 8000764:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000768:	080007b8 	.word	0x080007b8
 800076c:	00000000 	.word	0x00000000

08000770 <register_fini>:
 8000770:	4b02      	ldr	r3, [pc, #8]	; (800077c <register_fini+0xc>)
 8000772:	b113      	cbz	r3, 800077a <register_fini+0xa>
 8000774:	4802      	ldr	r0, [pc, #8]	; (8000780 <register_fini+0x10>)
 8000776:	f7ff bf65 	b.w	8000644 <atexit>
 800077a:	4770      	bx	lr
 800077c:	00000000 	.word	0x00000000
 8000780:	08000651 	.word	0x08000651

08000784 <_init>:
 8000784:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000786:	bf00      	nop
 8000788:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800078a:	bc08      	pop	{r3}
 800078c:	469e      	mov	lr, r3
 800078e:	4770      	bx	lr

08000790 <_fini>:
 8000790:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000792:	bf00      	nop
 8000794:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000796:	bc08      	pop	{r3}
 8000798:	469e      	mov	lr, r3
 800079a:	4770      	bx	lr
