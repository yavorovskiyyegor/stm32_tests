
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   00000188  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         00000880  08000188  08000188  00010188  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000020  08000a08  08000a08  00010a08  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  08000a28  08000a28  00010a28  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  08000a30  08000a30  00010a30  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000430  20000000  08000a34  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .ccmram       00000000  10000000  10000000  00020430  2**0  CONTENTS
  7 .bss          00000024  20000430  20000430  00020430  2**2  ALLOC
  8 ._user_heap_stack 00000604  20000454  20000454  00020430  2**0  ALLOC
  9 .ARM.attributes 0000002a  00000000  00000000  00020430  2**0  CONTENTS, READONLY
 10 .comment      00000070  00000000  00000000  0002045a  2**0  CONTENTS, READONLY
 11 .debug_info   00002bdc  00000000  00000000  000204ca  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_abbrev 00000a75  00000000  00000000  000230a6  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_loc    00000743  00000000  00000000  00023b1b  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_aranges 00000100  00000000  00000000  0002425e  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_line   0000087c  00000000  00000000  0002435e  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_str    00000c6c  00000000  00000000  00024bda  2**0  CONTENTS, READONLY, DEBUGGING
 17 .debug_frame  000002a8  00000000  00000000  00025848  2**2  CONTENTS, READONLY, DEBUGGING
 18 .debug_ranges 00000070  00000000  00000000  00025af0  2**0  CONTENTS, READONLY, DEBUGGING

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
 80001f0:	080009f0 	.word	0x080009f0

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
 800021c:	080009f0 	.word	0x080009f0
 8000220:	20000434 	.word	0x20000434
 8000224:	20000430 	.word	0x20000430
 8000228:	00000000 	.word	0x00000000

0800022c <GPIOConfig>:
 800022c:	b480      	push	{r7}
 800022e:	af00      	add	r7, sp, #0
 8000230:	4a10      	ldr	r2, [pc, #64]	; (8000274 <GPIOConfig+0x48>)
 8000232:	4b10      	ldr	r3, [pc, #64]	; (8000274 <GPIOConfig+0x48>)
 8000234:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000236:	f043 0301 	orr.w	r3, r3, #1
 800023a:	6313      	str	r3, [r2, #48]	; 0x30
 800023c:	4a0e      	ldr	r2, [pc, #56]	; (8000278 <GPIOConfig+0x4c>)
 800023e:	4b0e      	ldr	r3, [pc, #56]	; (8000278 <GPIOConfig+0x4c>)
 8000240:	681b      	ldr	r3, [r3, #0]
 8000242:	f043 0308 	orr.w	r3, r3, #8
 8000246:	6013      	str	r3, [r2, #0]
 8000248:	4a0b      	ldr	r2, [pc, #44]	; (8000278 <GPIOConfig+0x4c>)
 800024a:	4b0b      	ldr	r3, [pc, #44]	; (8000278 <GPIOConfig+0x4c>)
 800024c:	681b      	ldr	r3, [r3, #0]
 800024e:	f043 0302 	orr.w	r3, r3, #2
 8000252:	6013      	str	r3, [r2, #0]
 8000254:	4a08      	ldr	r2, [pc, #32]	; (8000278 <GPIOConfig+0x4c>)
 8000256:	4b08      	ldr	r3, [pc, #32]	; (8000278 <GPIOConfig+0x4c>)
 8000258:	681b      	ldr	r3, [r3, #0]
 800025a:	f043 0350 	orr.w	r3, r3, #80	; 0x50
 800025e:	6013      	str	r3, [r2, #0]
 8000260:	4a05      	ldr	r2, [pc, #20]	; (8000278 <GPIOConfig+0x4c>)
 8000262:	4b05      	ldr	r3, [pc, #20]	; (8000278 <GPIOConfig+0x4c>)
 8000264:	68db      	ldr	r3, [r3, #12]
 8000266:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 800026a:	60d3      	str	r3, [r2, #12]
 800026c:	46bd      	mov	sp, r7
 800026e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000272:	4770      	bx	lr
 8000274:	40023800 	.word	0x40023800
 8000278:	40020000 	.word	0x40020000

0800027c <TIM2Config>:
 800027c:	b480      	push	{r7}
 800027e:	af00      	add	r7, sp, #0
 8000280:	4a18      	ldr	r2, [pc, #96]	; (80002e4 <TIM2Config+0x68>)
 8000282:	4b18      	ldr	r3, [pc, #96]	; (80002e4 <TIM2Config+0x68>)
 8000284:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000286:	f043 0301 	orr.w	r3, r3, #1
 800028a:	6413      	str	r3, [r2, #64]	; 0x40
 800028c:	4b16      	ldr	r3, [pc, #88]	; (80002e8 <TIM2Config+0x6c>)
 800028e:	f240 32e7 	movw	r2, #999	; 0x3e7
 8000292:	62da      	str	r2, [r3, #44]	; 0x2c
 8000294:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000298:	f643 627f 	movw	r2, #15999	; 0x3e7f
 800029c:	629a      	str	r2, [r3, #40]	; 0x28
 800029e:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80002a2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80002a6:	681b      	ldr	r3, [r3, #0]
 80002a8:	f043 0304 	orr.w	r3, r3, #4
 80002ac:	6013      	str	r3, [r2, #0]
 80002ae:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80002b2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80002b6:	68db      	ldr	r3, [r3, #12]
 80002b8:	f043 0301 	orr.w	r3, r3, #1
 80002bc:	60d3      	str	r3, [r2, #12]
 80002be:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80002c2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80002c6:	681b      	ldr	r3, [r3, #0]
 80002c8:	f043 0301 	orr.w	r3, r3, #1
 80002cc:	6013      	str	r3, [r2, #0]
 80002ce:	4a07      	ldr	r2, [pc, #28]	; (80002ec <TIM2Config+0x70>)
 80002d0:	4b06      	ldr	r3, [pc, #24]	; (80002ec <TIM2Config+0x70>)
 80002d2:	681b      	ldr	r3, [r3, #0]
 80002d4:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 80002d8:	6013      	str	r3, [r2, #0]
 80002da:	46bd      	mov	sp, r7
 80002dc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002e0:	4770      	bx	lr
 80002e2:	bf00      	nop
 80002e4:	40023800 	.word	0x40023800
 80002e8:	40000800 	.word	0x40000800
 80002ec:	e000e100 	.word	0xe000e100

080002f0 <TIM4Config>:
 80002f0:	b480      	push	{r7}
 80002f2:	af00      	add	r7, sp, #0
 80002f4:	4a11      	ldr	r2, [pc, #68]	; (800033c <TIM4Config+0x4c>)
 80002f6:	4b11      	ldr	r3, [pc, #68]	; (800033c <TIM4Config+0x4c>)
 80002f8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80002fa:	f043 0304 	orr.w	r3, r3, #4
 80002fe:	6413      	str	r3, [r2, #64]	; 0x40
 8000300:	4b0f      	ldr	r3, [pc, #60]	; (8000340 <TIM4Config+0x50>)
 8000302:	2231      	movs	r2, #49	; 0x31
 8000304:	62da      	str	r2, [r3, #44]	; 0x2c
 8000306:	4b0e      	ldr	r3, [pc, #56]	; (8000340 <TIM4Config+0x50>)
 8000308:	f643 627f 	movw	r2, #15999	; 0x3e7f
 800030c:	629a      	str	r2, [r3, #40]	; 0x28
 800030e:	4a0c      	ldr	r2, [pc, #48]	; (8000340 <TIM4Config+0x50>)
 8000310:	4b0b      	ldr	r3, [pc, #44]	; (8000340 <TIM4Config+0x50>)
 8000312:	681b      	ldr	r3, [r3, #0]
 8000314:	f043 0304 	orr.w	r3, r3, #4
 8000318:	6013      	str	r3, [r2, #0]
 800031a:	4a09      	ldr	r2, [pc, #36]	; (8000340 <TIM4Config+0x50>)
 800031c:	4b08      	ldr	r3, [pc, #32]	; (8000340 <TIM4Config+0x50>)
 800031e:	68db      	ldr	r3, [r3, #12]
 8000320:	f043 0301 	orr.w	r3, r3, #1
 8000324:	60d3      	str	r3, [r2, #12]
 8000326:	4a07      	ldr	r2, [pc, #28]	; (8000344 <TIM4Config+0x54>)
 8000328:	4b06      	ldr	r3, [pc, #24]	; (8000344 <TIM4Config+0x54>)
 800032a:	681b      	ldr	r3, [r3, #0]
 800032c:	f043 4380 	orr.w	r3, r3, #1073741824	; 0x40000000
 8000330:	6013      	str	r3, [r2, #0]
 8000332:	46bd      	mov	sp, r7
 8000334:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000338:	4770      	bx	lr
 800033a:	bf00      	nop
 800033c:	40023800 	.word	0x40023800
 8000340:	40000800 	.word	0x40000800
 8000344:	e000e100 	.word	0xe000e100

08000348 <TIM5Config>:
 8000348:	b480      	push	{r7}
 800034a:	af00      	add	r7, sp, #0
 800034c:	4a1a      	ldr	r2, [pc, #104]	; (80003b8 <TIM5Config+0x70>)
 800034e:	4b1a      	ldr	r3, [pc, #104]	; (80003b8 <TIM5Config+0x70>)
 8000350:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000352:	f043 0308 	orr.w	r3, r3, #8
 8000356:	6413      	str	r3, [r2, #64]	; 0x40
 8000358:	4b18      	ldr	r3, [pc, #96]	; (80003bc <TIM5Config+0x74>)
 800035a:	2263      	movs	r2, #99	; 0x63
 800035c:	62da      	str	r2, [r3, #44]	; 0x2c
 800035e:	4b17      	ldr	r3, [pc, #92]	; (80003bc <TIM5Config+0x74>)
 8000360:	229f      	movs	r2, #159	; 0x9f
 8000362:	629a      	str	r2, [r3, #40]	; 0x28
 8000364:	4a15      	ldr	r2, [pc, #84]	; (80003bc <TIM5Config+0x74>)
 8000366:	4b15      	ldr	r3, [pc, #84]	; (80003bc <TIM5Config+0x74>)
 8000368:	681b      	ldr	r3, [r3, #0]
 800036a:	f043 0304 	orr.w	r3, r3, #4
 800036e:	6013      	str	r3, [r2, #0]
 8000370:	4a12      	ldr	r2, [pc, #72]	; (80003bc <TIM5Config+0x74>)
 8000372:	4b12      	ldr	r3, [pc, #72]	; (80003bc <TIM5Config+0x74>)
 8000374:	681b      	ldr	r3, [r3, #0]
 8000376:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800037a:	6013      	str	r3, [r2, #0]
 800037c:	4a0f      	ldr	r2, [pc, #60]	; (80003bc <TIM5Config+0x74>)
 800037e:	4b0f      	ldr	r3, [pc, #60]	; (80003bc <TIM5Config+0x74>)
 8000380:	699b      	ldr	r3, [r3, #24]
 8000382:	f443 43e0 	orr.w	r3, r3, #28672	; 0x7000
 8000386:	f043 0370 	orr.w	r3, r3, #112	; 0x70
 800038a:	6193      	str	r3, [r2, #24]
 800038c:	4b0b      	ldr	r3, [pc, #44]	; (80003bc <TIM5Config+0x74>)
 800038e:	2231      	movs	r2, #49	; 0x31
 8000390:	635a      	str	r2, [r3, #52]	; 0x34
 8000392:	4b0a      	ldr	r3, [pc, #40]	; (80003bc <TIM5Config+0x74>)
 8000394:	2200      	movs	r2, #0
 8000396:	639a      	str	r2, [r3, #56]	; 0x38
 8000398:	4a08      	ldr	r2, [pc, #32]	; (80003bc <TIM5Config+0x74>)
 800039a:	4b08      	ldr	r3, [pc, #32]	; (80003bc <TIM5Config+0x74>)
 800039c:	681b      	ldr	r3, [r3, #0]
 800039e:	f043 0301 	orr.w	r3, r3, #1
 80003a2:	6013      	str	r3, [r2, #0]
 80003a4:	4a06      	ldr	r2, [pc, #24]	; (80003c0 <TIM5Config+0x78>)
 80003a6:	4b06      	ldr	r3, [pc, #24]	; (80003c0 <TIM5Config+0x78>)
 80003a8:	681b      	ldr	r3, [r3, #0]
 80003aa:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 80003ae:	6013      	str	r3, [r2, #0]
 80003b0:	46bd      	mov	sp, r7
 80003b2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003b6:	4770      	bx	lr
 80003b8:	40023800 	.word	0x40023800
 80003bc:	40000c00 	.word	0x40000c00
 80003c0:	e000e100 	.word	0xe000e100

080003c4 <EXTIConfig>:
 80003c4:	b480      	push	{r7}
 80003c6:	af00      	add	r7, sp, #0
 80003c8:	4a0f      	ldr	r2, [pc, #60]	; (8000408 <EXTIConfig+0x44>)
 80003ca:	4b0f      	ldr	r3, [pc, #60]	; (8000408 <EXTIConfig+0x44>)
 80003cc:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 80003ce:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 80003d2:	6453      	str	r3, [r2, #68]	; 0x44
 80003d4:	4a0d      	ldr	r2, [pc, #52]	; (800040c <EXTIConfig+0x48>)
 80003d6:	4b0d      	ldr	r3, [pc, #52]	; (800040c <EXTIConfig+0x48>)
 80003d8:	68db      	ldr	r3, [r3, #12]
 80003da:	60d3      	str	r3, [r2, #12]
 80003dc:	4a0c      	ldr	r2, [pc, #48]	; (8000410 <EXTIConfig+0x4c>)
 80003de:	4b0c      	ldr	r3, [pc, #48]	; (8000410 <EXTIConfig+0x4c>)
 80003e0:	68db      	ldr	r3, [r3, #12]
 80003e2:	f043 0320 	orr.w	r3, r3, #32
 80003e6:	60d3      	str	r3, [r2, #12]
 80003e8:	4a09      	ldr	r2, [pc, #36]	; (8000410 <EXTIConfig+0x4c>)
 80003ea:	4b09      	ldr	r3, [pc, #36]	; (8000410 <EXTIConfig+0x4c>)
 80003ec:	681b      	ldr	r3, [r3, #0]
 80003ee:	f043 0320 	orr.w	r3, r3, #32
 80003f2:	6013      	str	r3, [r2, #0]
 80003f4:	4a07      	ldr	r2, [pc, #28]	; (8000414 <EXTIConfig+0x50>)
 80003f6:	4b07      	ldr	r3, [pc, #28]	; (8000414 <EXTIConfig+0x50>)
 80003f8:	681b      	ldr	r3, [r3, #0]
 80003fa:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 80003fe:	6013      	str	r3, [r2, #0]
 8000400:	46bd      	mov	sp, r7
 8000402:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000406:	4770      	bx	lr
 8000408:	40023800 	.word	0x40023800
 800040c:	40013800 	.word	0x40013800
 8000410:	40013c00 	.word	0x40013c00
 8000414:	e000e100 	.word	0xe000e100

08000418 <EXTI9_5_IRQHandler>:
 8000418:	b480      	push	{r7}
 800041a:	af00      	add	r7, sp, #0
 800041c:	4a10      	ldr	r2, [pc, #64]	; (8000460 <EXTI9_5_IRQHandler+0x48>)
 800041e:	4b10      	ldr	r3, [pc, #64]	; (8000460 <EXTI9_5_IRQHandler+0x48>)
 8000420:	681b      	ldr	r3, [r3, #0]
 8000422:	f483 0300 	eor.w	r3, r3, #8388608	; 0x800000
 8000426:	6013      	str	r3, [r2, #0]
 8000428:	4a0e      	ldr	r2, [pc, #56]	; (8000464 <EXTI9_5_IRQHandler+0x4c>)
 800042a:	4b0e      	ldr	r3, [pc, #56]	; (8000464 <EXTI9_5_IRQHandler+0x4c>)
 800042c:	695b      	ldr	r3, [r3, #20]
 800042e:	f023 0320 	bic.w	r3, r3, #32
 8000432:	6153      	str	r3, [r2, #20]
 8000434:	4a0c      	ldr	r2, [pc, #48]	; (8000468 <EXTI9_5_IRQHandler+0x50>)
 8000436:	4b0c      	ldr	r3, [pc, #48]	; (8000468 <EXTI9_5_IRQHandler+0x50>)
 8000438:	681b      	ldr	r3, [r3, #0]
 800043a:	f043 0301 	orr.w	r3, r3, #1
 800043e:	6013      	str	r3, [r2, #0]
 8000440:	4a0a      	ldr	r2, [pc, #40]	; (800046c <EXTI9_5_IRQHandler+0x54>)
 8000442:	4b0a      	ldr	r3, [pc, #40]	; (800046c <EXTI9_5_IRQHandler+0x54>)
 8000444:	6a1b      	ldr	r3, [r3, #32]
 8000446:	f043 0301 	orr.w	r3, r3, #1
 800044a:	6213      	str	r3, [r2, #32]
 800044c:	4a07      	ldr	r2, [pc, #28]	; (800046c <EXTI9_5_IRQHandler+0x54>)
 800044e:	4b07      	ldr	r3, [pc, #28]	; (800046c <EXTI9_5_IRQHandler+0x54>)
 8000450:	68db      	ldr	r3, [r3, #12]
 8000452:	f043 0301 	orr.w	r3, r3, #1
 8000456:	60d3      	str	r3, [r2, #12]
 8000458:	46bd      	mov	sp, r7
 800045a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800045e:	4770      	bx	lr
 8000460:	e000e100 	.word	0xe000e100
 8000464:	40013c00 	.word	0x40013c00
 8000468:	40000800 	.word	0x40000800
 800046c:	40000c00 	.word	0x40000c00

08000470 <TIM5_IRQHandler>:
 8000470:	b480      	push	{r7}
 8000472:	af00      	add	r7, sp, #0
 8000474:	4b0e      	ldr	r3, [pc, #56]	; (80004b0 <TIM5_IRQHandler+0x40>)
 8000476:	781b      	ldrb	r3, [r3, #0]
 8000478:	3301      	adds	r3, #1
 800047a:	b2da      	uxtb	r2, r3
 800047c:	4b0c      	ldr	r3, [pc, #48]	; (80004b0 <TIM5_IRQHandler+0x40>)
 800047e:	701a      	strb	r2, [r3, #0]
 8000480:	4b0b      	ldr	r3, [pc, #44]	; (80004b0 <TIM5_IRQHandler+0x40>)
 8000482:	781b      	ldrb	r3, [r3, #0]
 8000484:	2bff      	cmp	r3, #255	; 0xff
 8000486:	d10e      	bne.n	80004a6 <TIM5_IRQHandler+0x36>
 8000488:	4b09      	ldr	r3, [pc, #36]	; (80004b0 <TIM5_IRQHandler+0x40>)
 800048a:	2200      	movs	r2, #0
 800048c:	701a      	strb	r2, [r3, #0]
 800048e:	4a09      	ldr	r2, [pc, #36]	; (80004b4 <TIM5_IRQHandler+0x44>)
 8000490:	4b08      	ldr	r3, [pc, #32]	; (80004b4 <TIM5_IRQHandler+0x44>)
 8000492:	6a1b      	ldr	r3, [r3, #32]
 8000494:	f023 0301 	bic.w	r3, r3, #1
 8000498:	6213      	str	r3, [r2, #32]
 800049a:	4a06      	ldr	r2, [pc, #24]	; (80004b4 <TIM5_IRQHandler+0x44>)
 800049c:	4b05      	ldr	r3, [pc, #20]	; (80004b4 <TIM5_IRQHandler+0x44>)
 800049e:	68db      	ldr	r3, [r3, #12]
 80004a0:	f023 0301 	bic.w	r3, r3, #1
 80004a4:	60d3      	str	r3, [r2, #12]
 80004a6:	46bd      	mov	sp, r7
 80004a8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004ac:	4770      	bx	lr
 80004ae:	bf00      	nop
 80004b0:	2000044e 	.word	0x2000044e
 80004b4:	40000c00 	.word	0x40000c00

080004b8 <TIM4_IRQHandler>:
 80004b8:	b480      	push	{r7}
 80004ba:	af00      	add	r7, sp, #0
 80004bc:	4b3c      	ldr	r3, [pc, #240]	; (80005b0 <TIM4_IRQHandler+0xf8>)
 80004be:	691b      	ldr	r3, [r3, #16]
 80004c0:	095b      	lsrs	r3, r3, #5
 80004c2:	2b00      	cmp	r3, #0
 80004c4:	d128      	bne.n	8000518 <TIM4_IRQHandler+0x60>
 80004c6:	4b3b      	ldr	r3, [pc, #236]	; (80005b4 <TIM4_IRQHandler+0xfc>)
 80004c8:	781b      	ldrb	r3, [r3, #0]
 80004ca:	2b64      	cmp	r3, #100	; 0x64
 80004cc:	d801      	bhi.n	80004d2 <TIM4_IRQHandler+0x1a>
 80004ce:	2201      	movs	r2, #1
 80004d0:	e000      	b.n	80004d4 <TIM4_IRQHandler+0x1c>
 80004d2:	22c4      	movs	r2, #196	; 0xc4
 80004d4:	4b37      	ldr	r3, [pc, #220]	; (80005b4 <TIM4_IRQHandler+0xfc>)
 80004d6:	781b      	ldrb	r3, [r3, #0]
 80004d8:	4413      	add	r3, r2
 80004da:	b2da      	uxtb	r2, r3
 80004dc:	4b35      	ldr	r3, [pc, #212]	; (80005b4 <TIM4_IRQHandler+0xfc>)
 80004de:	701a      	strb	r2, [r3, #0]
 80004e0:	4b34      	ldr	r3, [pc, #208]	; (80005b4 <TIM4_IRQHandler+0xfc>)
 80004e2:	781b      	ldrb	r3, [r3, #0]
 80004e4:	2b28      	cmp	r3, #40	; 0x28
 80004e6:	d15e      	bne.n	80005a6 <TIM4_IRQHandler+0xee>
 80004e8:	4b33      	ldr	r3, [pc, #204]	; (80005b8 <TIM4_IRQHandler+0x100>)
 80004ea:	781b      	ldrb	r3, [r3, #0]
 80004ec:	b2db      	uxtb	r3, r3
 80004ee:	f083 0304 	eor.w	r3, r3, #4
 80004f2:	b2da      	uxtb	r2, r3
 80004f4:	4b30      	ldr	r3, [pc, #192]	; (80005b8 <TIM4_IRQHandler+0x100>)
 80004f6:	701a      	strb	r2, [r3, #0]
 80004f8:	4b2f      	ldr	r3, [pc, #188]	; (80005b8 <TIM4_IRQHandler+0x100>)
 80004fa:	781b      	ldrb	r3, [r3, #0]
 80004fc:	b2db      	uxtb	r3, r3
 80004fe:	f003 0304 	and.w	r3, r3, #4
 8000502:	2b00      	cmp	r3, #0
 8000504:	d04f      	beq.n	80005a6 <TIM4_IRQHandler+0xee>
 8000506:	4a2a      	ldr	r2, [pc, #168]	; (80005b0 <TIM4_IRQHandler+0xf8>)
 8000508:	4b2b      	ldr	r3, [pc, #172]	; (80005b8 <TIM4_IRQHandler+0x100>)
 800050a:	781b      	ldrb	r3, [r3, #0]
 800050c:	b2db      	uxtb	r3, r3
 800050e:	f003 0303 	and.w	r3, r3, #3
 8000512:	009b      	lsls	r3, r3, #2
 8000514:	6193      	str	r3, [r2, #24]
 8000516:	e046      	b.n	80005a6 <TIM4_IRQHandler+0xee>
 8000518:	4b26      	ldr	r3, [pc, #152]	; (80005b4 <TIM4_IRQHandler+0xfc>)
 800051a:	781b      	ldrb	r3, [r3, #0]
 800051c:	2b00      	cmp	r3, #0
 800051e:	d033      	beq.n	8000588 <TIM4_IRQHandler+0xd0>
 8000520:	4b24      	ldr	r3, [pc, #144]	; (80005b4 <TIM4_IRQHandler+0xfc>)
 8000522:	781b      	ldrb	r3, [r3, #0]
 8000524:	2b27      	cmp	r3, #39	; 0x27
 8000526:	d814      	bhi.n	8000552 <TIM4_IRQHandler+0x9a>
 8000528:	4b23      	ldr	r3, [pc, #140]	; (80005b8 <TIM4_IRQHandler+0x100>)
 800052a:	781b      	ldrb	r3, [r3, #0]
 800052c:	b2db      	uxtb	r3, r3
 800052e:	b2db      	uxtb	r3, r3
 8000530:	f003 0304 	and.w	r3, r3, #4
 8000534:	b2da      	uxtb	r2, r3
 8000536:	4b20      	ldr	r3, [pc, #128]	; (80005b8 <TIM4_IRQHandler+0x100>)
 8000538:	781b      	ldrb	r3, [r3, #0]
 800053a:	b2db      	uxtb	r3, r3
 800053c:	3301      	adds	r3, #1
 800053e:	b2db      	uxtb	r3, r3
 8000540:	b2db      	uxtb	r3, r3
 8000542:	f003 0303 	and.w	r3, r3, #3
 8000546:	b2db      	uxtb	r3, r3
 8000548:	4313      	orrs	r3, r2
 800054a:	b2db      	uxtb	r3, r3
 800054c:	b2da      	uxtb	r2, r3
 800054e:	4b1a      	ldr	r3, [pc, #104]	; (80005b8 <TIM4_IRQHandler+0x100>)
 8000550:	701a      	strb	r2, [r3, #0]
 8000552:	4b19      	ldr	r3, [pc, #100]	; (80005b8 <TIM4_IRQHandler+0x100>)
 8000554:	781b      	ldrb	r3, [r3, #0]
 8000556:	b2db      	uxtb	r3, r3
 8000558:	f003 0304 	and.w	r3, r3, #4
 800055c:	2b00      	cmp	r3, #0
 800055e:	d007      	beq.n	8000570 <TIM4_IRQHandler+0xb8>
 8000560:	4a13      	ldr	r2, [pc, #76]	; (80005b0 <TIM4_IRQHandler+0xf8>)
 8000562:	4b15      	ldr	r3, [pc, #84]	; (80005b8 <TIM4_IRQHandler+0x100>)
 8000564:	781b      	ldrb	r3, [r3, #0]
 8000566:	b2db      	uxtb	r3, r3
 8000568:	f003 0303 	and.w	r3, r3, #3
 800056c:	009b      	lsls	r3, r3, #2
 800056e:	6193      	str	r3, [r2, #24]
 8000570:	4a0f      	ldr	r2, [pc, #60]	; (80005b0 <TIM4_IRQHandler+0xf8>)
 8000572:	4b11      	ldr	r3, [pc, #68]	; (80005b8 <TIM4_IRQHandler+0x100>)
 8000574:	781b      	ldrb	r3, [r3, #0]
 8000576:	b2db      	uxtb	r3, r3
 8000578:	43db      	mvns	r3, r3
 800057a:	f003 0303 	and.w	r3, r3, #3
 800057e:	049b      	lsls	r3, r3, #18
 8000580:	6193      	str	r3, [r2, #24]
 8000582:	4b0c      	ldr	r3, [pc, #48]	; (80005b4 <TIM4_IRQHandler+0xfc>)
 8000584:	2200      	movs	r2, #0
 8000586:	701a      	strb	r2, [r3, #0]
 8000588:	4a0c      	ldr	r2, [pc, #48]	; (80005bc <TIM4_IRQHandler+0x104>)
 800058a:	4b0c      	ldr	r3, [pc, #48]	; (80005bc <TIM4_IRQHandler+0x104>)
 800058c:	681b      	ldr	r3, [r3, #0]
 800058e:	f023 0301 	bic.w	r3, r3, #1
 8000592:	6013      	str	r3, [r2, #0]
 8000594:	4b09      	ldr	r3, [pc, #36]	; (80005bc <TIM4_IRQHandler+0x104>)
 8000596:	2200      	movs	r2, #0
 8000598:	625a      	str	r2, [r3, #36]	; 0x24
 800059a:	4a09      	ldr	r2, [pc, #36]	; (80005c0 <TIM4_IRQHandler+0x108>)
 800059c:	4b08      	ldr	r3, [pc, #32]	; (80005c0 <TIM4_IRQHandler+0x108>)
 800059e:	681b      	ldr	r3, [r3, #0]
 80005a0:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 80005a4:	6013      	str	r3, [r2, #0]
 80005a6:	46bd      	mov	sp, r7
 80005a8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005ac:	4770      	bx	lr
 80005ae:	bf00      	nop
 80005b0:	40020000 	.word	0x40020000
 80005b4:	2000044f 	.word	0x2000044f
 80005b8:	2000044c 	.word	0x2000044c
 80005bc:	40000800 	.word	0x40000800
 80005c0:	e000e100 	.word	0xe000e100

080005c4 <TIM2_IRQHandler>:
 80005c4:	b480      	push	{r7}
 80005c6:	af00      	add	r7, sp, #0
 80005c8:	4b42      	ldr	r3, [pc, #264]	; (80006d4 <TIM2_IRQHandler+0x110>)
 80005ca:	781b      	ldrb	r3, [r3, #0]
 80005cc:	2b03      	cmp	r3, #3
 80005ce:	d002      	beq.n	80005d6 <TIM2_IRQHandler+0x12>
 80005d0:	2b06      	cmp	r3, #6
 80005d2:	d028      	beq.n	8000626 <TIM2_IRQHandler+0x62>
 80005d4:	e031      	b.n	800063a <TIM2_IRQHandler+0x76>
 80005d6:	4b40      	ldr	r3, [pc, #256]	; (80006d8 <TIM2_IRQHandler+0x114>)
 80005d8:	781b      	ldrb	r3, [r3, #0]
 80005da:	2b00      	cmp	r3, #0
 80005dc:	d005      	beq.n	80005ea <TIM2_IRQHandler+0x26>
 80005de:	4a3f      	ldr	r2, [pc, #252]	; (80006dc <TIM2_IRQHandler+0x118>)
 80005e0:	4b3e      	ldr	r3, [pc, #248]	; (80006dc <TIM2_IRQHandler+0x118>)
 80005e2:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80005e4:	3301      	adds	r3, #1
 80005e6:	6393      	str	r3, [r2, #56]	; 0x38
 80005e8:	e004      	b.n	80005f4 <TIM2_IRQHandler+0x30>
 80005ea:	4a3c      	ldr	r2, [pc, #240]	; (80006dc <TIM2_IRQHandler+0x118>)
 80005ec:	4b3b      	ldr	r3, [pc, #236]	; (80006dc <TIM2_IRQHandler+0x118>)
 80005ee:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80005f0:	3b01      	subs	r3, #1
 80005f2:	6393      	str	r3, [r2, #56]	; 0x38
 80005f4:	4b39      	ldr	r3, [pc, #228]	; (80006dc <TIM2_IRQHandler+0x118>)
 80005f6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80005f8:	2b62      	cmp	r3, #98	; 0x62
 80005fa:	d803      	bhi.n	8000604 <TIM2_IRQHandler+0x40>
 80005fc:	4b37      	ldr	r3, [pc, #220]	; (80006dc <TIM2_IRQHandler+0x118>)
 80005fe:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8000600:	2b00      	cmp	r3, #0
 8000602:	d109      	bne.n	8000618 <TIM2_IRQHandler+0x54>
 8000604:	4b34      	ldr	r3, [pc, #208]	; (80006d8 <TIM2_IRQHandler+0x114>)
 8000606:	781b      	ldrb	r3, [r3, #0]
 8000608:	2b00      	cmp	r3, #0
 800060a:	bf0c      	ite	eq
 800060c:	2301      	moveq	r3, #1
 800060e:	2300      	movne	r3, #0
 8000610:	b2db      	uxtb	r3, r3
 8000612:	461a      	mov	r2, r3
 8000614:	4b30      	ldr	r3, [pc, #192]	; (80006d8 <TIM2_IRQHandler+0x114>)
 8000616:	701a      	strb	r2, [r3, #0]
 8000618:	4a30      	ldr	r2, [pc, #192]	; (80006dc <TIM2_IRQHandler+0x118>)
 800061a:	4b30      	ldr	r3, [pc, #192]	; (80006dc <TIM2_IRQHandler+0x118>)
 800061c:	6a1b      	ldr	r3, [r3, #32]
 800061e:	f043 0310 	orr.w	r3, r3, #16
 8000622:	6213      	str	r3, [r2, #32]
 8000624:	e00f      	b.n	8000646 <TIM2_IRQHandler+0x82>
 8000626:	4b2b      	ldr	r3, [pc, #172]	; (80006d4 <TIM2_IRQHandler+0x110>)
 8000628:	2200      	movs	r2, #0
 800062a:	701a      	strb	r2, [r3, #0]
 800062c:	4a2b      	ldr	r2, [pc, #172]	; (80006dc <TIM2_IRQHandler+0x118>)
 800062e:	4b2b      	ldr	r3, [pc, #172]	; (80006dc <TIM2_IRQHandler+0x118>)
 8000630:	6a1b      	ldr	r3, [r3, #32]
 8000632:	f023 0310 	bic.w	r3, r3, #16
 8000636:	6213      	str	r3, [r2, #32]
 8000638:	e005      	b.n	8000646 <TIM2_IRQHandler+0x82>
 800063a:	4b26      	ldr	r3, [pc, #152]	; (80006d4 <TIM2_IRQHandler+0x110>)
 800063c:	781b      	ldrb	r3, [r3, #0]
 800063e:	3301      	adds	r3, #1
 8000640:	b2da      	uxtb	r2, r3
 8000642:	4b24      	ldr	r3, [pc, #144]	; (80006d4 <TIM2_IRQHandler+0x110>)
 8000644:	701a      	strb	r2, [r3, #0]
 8000646:	4b26      	ldr	r3, [pc, #152]	; (80006e0 <TIM2_IRQHandler+0x11c>)
 8000648:	781b      	ldrb	r3, [r3, #0]
 800064a:	b2db      	uxtb	r3, r3
 800064c:	f003 0304 	and.w	r3, r3, #4
 8000650:	2b00      	cmp	r3, #0
 8000652:	d13b      	bne.n	80006cc <TIM2_IRQHandler+0x108>
 8000654:	4b22      	ldr	r3, [pc, #136]	; (80006e0 <TIM2_IRQHandler+0x11c>)
 8000656:	781b      	ldrb	r3, [r3, #0]
 8000658:	b2db      	uxtb	r3, r3
 800065a:	f003 0301 	and.w	r3, r3, #1
 800065e:	2b00      	cmp	r3, #0
 8000660:	d00d      	beq.n	800067e <TIM2_IRQHandler+0xba>
 8000662:	4b1c      	ldr	r3, [pc, #112]	; (80006d4 <TIM2_IRQHandler+0x110>)
 8000664:	781b      	ldrb	r3, [r3, #0]
 8000666:	f003 0301 	and.w	r3, r3, #1
 800066a:	b2db      	uxtb	r3, r3
 800066c:	2b00      	cmp	r3, #0
 800066e:	d006      	beq.n	800067e <TIM2_IRQHandler+0xba>
 8000670:	4a1c      	ldr	r2, [pc, #112]	; (80006e4 <TIM2_IRQHandler+0x120>)
 8000672:	4b1c      	ldr	r3, [pc, #112]	; (80006e4 <TIM2_IRQHandler+0x120>)
 8000674:	699b      	ldr	r3, [r3, #24]
 8000676:	f043 0304 	orr.w	r3, r3, #4
 800067a:	6193      	str	r3, [r2, #24]
 800067c:	e005      	b.n	800068a <TIM2_IRQHandler+0xc6>
 800067e:	4a19      	ldr	r2, [pc, #100]	; (80006e4 <TIM2_IRQHandler+0x120>)
 8000680:	4b18      	ldr	r3, [pc, #96]	; (80006e4 <TIM2_IRQHandler+0x120>)
 8000682:	699b      	ldr	r3, [r3, #24]
 8000684:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 8000688:	6193      	str	r3, [r2, #24]
 800068a:	4b15      	ldr	r3, [pc, #84]	; (80006e0 <TIM2_IRQHandler+0x11c>)
 800068c:	781b      	ldrb	r3, [r3, #0]
 800068e:	b2db      	uxtb	r3, r3
 8000690:	f003 0302 	and.w	r3, r3, #2
 8000694:	2b00      	cmp	r3, #0
 8000696:	d013      	beq.n	80006c0 <TIM2_IRQHandler+0xfc>
 8000698:	4b0e      	ldr	r3, [pc, #56]	; (80006d4 <TIM2_IRQHandler+0x110>)
 800069a:	781a      	ldrb	r2, [r3, #0]
 800069c:	4b12      	ldr	r3, [pc, #72]	; (80006e8 <TIM2_IRQHandler+0x124>)
 800069e:	fba3 1302 	umull	r1, r3, r3, r2
 80006a2:	0859      	lsrs	r1, r3, #1
 80006a4:	460b      	mov	r3, r1
 80006a6:	005b      	lsls	r3, r3, #1
 80006a8:	440b      	add	r3, r1
 80006aa:	1ad3      	subs	r3, r2, r3
 80006ac:	b2db      	uxtb	r3, r3
 80006ae:	2b00      	cmp	r3, #0
 80006b0:	d106      	bne.n	80006c0 <TIM2_IRQHandler+0xfc>
 80006b2:	4a0c      	ldr	r2, [pc, #48]	; (80006e4 <TIM2_IRQHandler+0x120>)
 80006b4:	4b0b      	ldr	r3, [pc, #44]	; (80006e4 <TIM2_IRQHandler+0x120>)
 80006b6:	699b      	ldr	r3, [r3, #24]
 80006b8:	f043 0308 	orr.w	r3, r3, #8
 80006bc:	6193      	str	r3, [r2, #24]
 80006be:	e005      	b.n	80006cc <TIM2_IRQHandler+0x108>
 80006c0:	4a08      	ldr	r2, [pc, #32]	; (80006e4 <TIM2_IRQHandler+0x120>)
 80006c2:	4b08      	ldr	r3, [pc, #32]	; (80006e4 <TIM2_IRQHandler+0x120>)
 80006c4:	699b      	ldr	r3, [r3, #24]
 80006c6:	f443 2300 	orr.w	r3, r3, #524288	; 0x80000
 80006ca:	6193      	str	r3, [r2, #24]
 80006cc:	46bd      	mov	sp, r7
 80006ce:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006d2:	4770      	bx	lr
 80006d4:	20000450 	.word	0x20000450
 80006d8:	20000000 	.word	0x20000000
 80006dc:	40000c00 	.word	0x40000c00
 80006e0:	2000044c 	.word	0x2000044c
 80006e4:	40020000 	.word	0x40020000
 80006e8:	aaaaaaab 	.word	0xaaaaaaab

080006ec <main>:
 80006ec:	b580      	push	{r7, lr}
 80006ee:	af00      	add	r7, sp, #0
 80006f0:	f7ff fd9c 	bl	800022c <GPIOConfig>
 80006f4:	f7ff fdc2 	bl	800027c <TIM2Config>
 80006f8:	f7ff fdfa 	bl	80002f0 <TIM4Config>
 80006fc:	f7ff fe24 	bl	8000348 <TIM5Config>
 8000700:	f7ff fe60 	bl	80003c4 <EXTIConfig>
 8000704:	e7fe      	b.n	8000704 <main+0x18>
 8000706:	bf00      	nop

08000708 <SystemInit>:
 8000708:	b480      	push	{r7}
 800070a:	af00      	add	r7, sp, #0
 800070c:	4a12      	ldr	r2, [pc, #72]	; (8000758 <SystemInit+0x50>)
 800070e:	4b12      	ldr	r3, [pc, #72]	; (8000758 <SystemInit+0x50>)
 8000710:	681b      	ldr	r3, [r3, #0]
 8000712:	f043 0301 	orr.w	r3, r3, #1
 8000716:	6013      	str	r3, [r2, #0]
 8000718:	4b0f      	ldr	r3, [pc, #60]	; (8000758 <SystemInit+0x50>)
 800071a:	2200      	movs	r2, #0
 800071c:	609a      	str	r2, [r3, #8]
 800071e:	4a0e      	ldr	r2, [pc, #56]	; (8000758 <SystemInit+0x50>)
 8000720:	4b0d      	ldr	r3, [pc, #52]	; (8000758 <SystemInit+0x50>)
 8000722:	681b      	ldr	r3, [r3, #0]
 8000724:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8000728:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 800072c:	6013      	str	r3, [r2, #0]
 800072e:	4b0a      	ldr	r3, [pc, #40]	; (8000758 <SystemInit+0x50>)
 8000730:	4a0a      	ldr	r2, [pc, #40]	; (800075c <SystemInit+0x54>)
 8000732:	605a      	str	r2, [r3, #4]
 8000734:	4a08      	ldr	r2, [pc, #32]	; (8000758 <SystemInit+0x50>)
 8000736:	4b08      	ldr	r3, [pc, #32]	; (8000758 <SystemInit+0x50>)
 8000738:	681b      	ldr	r3, [r3, #0]
 800073a:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 800073e:	6013      	str	r3, [r2, #0]
 8000740:	4b05      	ldr	r3, [pc, #20]	; (8000758 <SystemInit+0x50>)
 8000742:	2200      	movs	r2, #0
 8000744:	60da      	str	r2, [r3, #12]
 8000746:	4b06      	ldr	r3, [pc, #24]	; (8000760 <SystemInit+0x58>)
 8000748:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 800074c:	609a      	str	r2, [r3, #8]
 800074e:	46bd      	mov	sp, r7
 8000750:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000754:	4770      	bx	lr
 8000756:	bf00      	nop
 8000758:	40023800 	.word	0x40023800
 800075c:	24003010 	.word	0x24003010
 8000760:	e000ed00 	.word	0xe000ed00

08000764 <SystemCoreClockUpdate>:
 8000764:	b480      	push	{r7}
 8000766:	b087      	sub	sp, #28
 8000768:	af00      	add	r7, sp, #0
 800076a:	2300      	movs	r3, #0
 800076c:	613b      	str	r3, [r7, #16]
 800076e:	2300      	movs	r3, #0
 8000770:	617b      	str	r3, [r7, #20]
 8000772:	2302      	movs	r3, #2
 8000774:	60fb      	str	r3, [r7, #12]
 8000776:	2300      	movs	r3, #0
 8000778:	60bb      	str	r3, [r7, #8]
 800077a:	2302      	movs	r3, #2
 800077c:	607b      	str	r3, [r7, #4]
 800077e:	4b32      	ldr	r3, [pc, #200]	; (8000848 <SystemCoreClockUpdate+0xe4>)
 8000780:	689b      	ldr	r3, [r3, #8]
 8000782:	f003 030c 	and.w	r3, r3, #12
 8000786:	613b      	str	r3, [r7, #16]
 8000788:	693b      	ldr	r3, [r7, #16]
 800078a:	2b04      	cmp	r3, #4
 800078c:	d007      	beq.n	800079e <SystemCoreClockUpdate+0x3a>
 800078e:	2b08      	cmp	r3, #8
 8000790:	d009      	beq.n	80007a6 <SystemCoreClockUpdate+0x42>
 8000792:	2b00      	cmp	r3, #0
 8000794:	d13f      	bne.n	8000816 <SystemCoreClockUpdate+0xb2>
 8000796:	4b2d      	ldr	r3, [pc, #180]	; (800084c <SystemCoreClockUpdate+0xe8>)
 8000798:	4a2d      	ldr	r2, [pc, #180]	; (8000850 <SystemCoreClockUpdate+0xec>)
 800079a:	601a      	str	r2, [r3, #0]
 800079c:	e03f      	b.n	800081e <SystemCoreClockUpdate+0xba>
 800079e:	4b2b      	ldr	r3, [pc, #172]	; (800084c <SystemCoreClockUpdate+0xe8>)
 80007a0:	4a2c      	ldr	r2, [pc, #176]	; (8000854 <SystemCoreClockUpdate+0xf0>)
 80007a2:	601a      	str	r2, [r3, #0]
 80007a4:	e03b      	b.n	800081e <SystemCoreClockUpdate+0xba>
 80007a6:	4b28      	ldr	r3, [pc, #160]	; (8000848 <SystemCoreClockUpdate+0xe4>)
 80007a8:	685b      	ldr	r3, [r3, #4]
 80007aa:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 80007ae:	0d9b      	lsrs	r3, r3, #22
 80007b0:	60bb      	str	r3, [r7, #8]
 80007b2:	4b25      	ldr	r3, [pc, #148]	; (8000848 <SystemCoreClockUpdate+0xe4>)
 80007b4:	685b      	ldr	r3, [r3, #4]
 80007b6:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 80007ba:	607b      	str	r3, [r7, #4]
 80007bc:	68bb      	ldr	r3, [r7, #8]
 80007be:	2b00      	cmp	r3, #0
 80007c0:	d00d      	beq.n	80007de <SystemCoreClockUpdate+0x7a>
 80007c2:	4a24      	ldr	r2, [pc, #144]	; (8000854 <SystemCoreClockUpdate+0xf0>)
 80007c4:	687b      	ldr	r3, [r7, #4]
 80007c6:	fbb2 f2f3 	udiv	r2, r2, r3
 80007ca:	4b1f      	ldr	r3, [pc, #124]	; (8000848 <SystemCoreClockUpdate+0xe4>)
 80007cc:	6859      	ldr	r1, [r3, #4]
 80007ce:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 80007d2:	400b      	ands	r3, r1
 80007d4:	099b      	lsrs	r3, r3, #6
 80007d6:	fb03 f302 	mul.w	r3, r3, r2
 80007da:	617b      	str	r3, [r7, #20]
 80007dc:	e00c      	b.n	80007f8 <SystemCoreClockUpdate+0x94>
 80007de:	4a1c      	ldr	r2, [pc, #112]	; (8000850 <SystemCoreClockUpdate+0xec>)
 80007e0:	687b      	ldr	r3, [r7, #4]
 80007e2:	fbb2 f2f3 	udiv	r2, r2, r3
 80007e6:	4b18      	ldr	r3, [pc, #96]	; (8000848 <SystemCoreClockUpdate+0xe4>)
 80007e8:	6859      	ldr	r1, [r3, #4]
 80007ea:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 80007ee:	400b      	ands	r3, r1
 80007f0:	099b      	lsrs	r3, r3, #6
 80007f2:	fb03 f302 	mul.w	r3, r3, r2
 80007f6:	617b      	str	r3, [r7, #20]
 80007f8:	4b13      	ldr	r3, [pc, #76]	; (8000848 <SystemCoreClockUpdate+0xe4>)
 80007fa:	685b      	ldr	r3, [r3, #4]
 80007fc:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8000800:	0c1b      	lsrs	r3, r3, #16
 8000802:	3301      	adds	r3, #1
 8000804:	005b      	lsls	r3, r3, #1
 8000806:	60fb      	str	r3, [r7, #12]
 8000808:	697a      	ldr	r2, [r7, #20]
 800080a:	68fb      	ldr	r3, [r7, #12]
 800080c:	fbb2 f3f3 	udiv	r3, r2, r3
 8000810:	4a0e      	ldr	r2, [pc, #56]	; (800084c <SystemCoreClockUpdate+0xe8>)
 8000812:	6013      	str	r3, [r2, #0]
 8000814:	e003      	b.n	800081e <SystemCoreClockUpdate+0xba>
 8000816:	4b0d      	ldr	r3, [pc, #52]	; (800084c <SystemCoreClockUpdate+0xe8>)
 8000818:	4a0d      	ldr	r2, [pc, #52]	; (8000850 <SystemCoreClockUpdate+0xec>)
 800081a:	601a      	str	r2, [r3, #0]
 800081c:	bf00      	nop
 800081e:	4b0a      	ldr	r3, [pc, #40]	; (8000848 <SystemCoreClockUpdate+0xe4>)
 8000820:	689b      	ldr	r3, [r3, #8]
 8000822:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8000826:	091b      	lsrs	r3, r3, #4
 8000828:	4a0b      	ldr	r2, [pc, #44]	; (8000858 <SystemCoreClockUpdate+0xf4>)
 800082a:	5cd3      	ldrb	r3, [r2, r3]
 800082c:	613b      	str	r3, [r7, #16]
 800082e:	4b07      	ldr	r3, [pc, #28]	; (800084c <SystemCoreClockUpdate+0xe8>)
 8000830:	681a      	ldr	r2, [r3, #0]
 8000832:	693b      	ldr	r3, [r7, #16]
 8000834:	fa22 f303 	lsr.w	r3, r2, r3
 8000838:	4a04      	ldr	r2, [pc, #16]	; (800084c <SystemCoreClockUpdate+0xe8>)
 800083a:	6013      	str	r3, [r2, #0]
 800083c:	371c      	adds	r7, #28
 800083e:	46bd      	mov	sp, r7
 8000840:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000844:	4770      	bx	lr
 8000846:	bf00      	nop
 8000848:	40023800 	.word	0x40023800
 800084c:	20000004 	.word	0x20000004
 8000850:	00f42400 	.word	0x00f42400
 8000854:	017d7840 	.word	0x017d7840
 8000858:	08000a08 	.word	0x08000a08

0800085c <Reset_Handler>:
 800085c:	f8df d034 	ldr.w	sp, [pc, #52]	; 8000894 <LoopFillZerobss+0x14>
 8000860:	2100      	movs	r1, #0
 8000862:	e003      	b.n	800086c <LoopCopyDataInit>

08000864 <CopyDataInit>:
 8000864:	4b0c      	ldr	r3, [pc, #48]	; (8000898 <LoopFillZerobss+0x18>)
 8000866:	585b      	ldr	r3, [r3, r1]
 8000868:	5043      	str	r3, [r0, r1]
 800086a:	3104      	adds	r1, #4

0800086c <LoopCopyDataInit>:
 800086c:	480b      	ldr	r0, [pc, #44]	; (800089c <LoopFillZerobss+0x1c>)
 800086e:	4b0c      	ldr	r3, [pc, #48]	; (80008a0 <LoopFillZerobss+0x20>)
 8000870:	1842      	adds	r2, r0, r1
 8000872:	429a      	cmp	r2, r3
 8000874:	d3f6      	bcc.n	8000864 <CopyDataInit>
 8000876:	4a0b      	ldr	r2, [pc, #44]	; (80008a4 <LoopFillZerobss+0x24>)
 8000878:	e002      	b.n	8000880 <LoopFillZerobss>

0800087a <FillZerobss>:
 800087a:	2300      	movs	r3, #0
 800087c:	f842 3b04 	str.w	r3, [r2], #4

08000880 <LoopFillZerobss>:
 8000880:	4b09      	ldr	r3, [pc, #36]	; (80008a8 <LoopFillZerobss+0x28>)
 8000882:	429a      	cmp	r2, r3
 8000884:	d3f9      	bcc.n	800087a <FillZerobss>
 8000886:	f7ff ff3f 	bl	8000708 <SystemInit>
 800088a:	f000 f82d 	bl	80008e8 <__libc_init_array>
 800088e:	f7ff ff2d 	bl	80006ec <main>
 8000892:	4770      	bx	lr
 8000894:	20020000 	.word	0x20020000
 8000898:	08000a34 	.word	0x08000a34
 800089c:	20000000 	.word	0x20000000
 80008a0:	20000430 	.word	0x20000430
 80008a4:	20000430 	.word	0x20000430
 80008a8:	20000454 	.word	0x20000454

080008ac <ADC_IRQHandler>:
 80008ac:	e7fe      	b.n	80008ac <ADC_IRQHandler>
	...

080008b0 <atexit>:
 80008b0:	4601      	mov	r1, r0
 80008b2:	2000      	movs	r0, #0
 80008b4:	4602      	mov	r2, r0
 80008b6:	4603      	mov	r3, r0
 80008b8:	f000 b83e 	b.w	8000938 <__register_exitproc>

080008bc <__libc_fini_array>:
 80008bc:	b538      	push	{r3, r4, r5, lr}
 80008be:	4b08      	ldr	r3, [pc, #32]	; (80008e0 <__libc_fini_array+0x24>)
 80008c0:	4d08      	ldr	r5, [pc, #32]	; (80008e4 <__libc_fini_array+0x28>)
 80008c2:	1aed      	subs	r5, r5, r3
 80008c4:	10ac      	asrs	r4, r5, #2
 80008c6:	bf18      	it	ne
 80008c8:	18ed      	addne	r5, r5, r3
 80008ca:	d005      	beq.n	80008d8 <__libc_fini_array+0x1c>
 80008cc:	3c01      	subs	r4, #1
 80008ce:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80008d2:	4798      	blx	r3
 80008d4:	2c00      	cmp	r4, #0
 80008d6:	d1f9      	bne.n	80008cc <__libc_fini_array+0x10>
 80008d8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80008dc:	f000 b88e 	b.w	80009fc <_fini>
 80008e0:	08000a30 	.word	0x08000a30
 80008e4:	08000a34 	.word	0x08000a34

080008e8 <__libc_init_array>:
 80008e8:	b570      	push	{r4, r5, r6, lr}
 80008ea:	4e0f      	ldr	r6, [pc, #60]	; (8000928 <__libc_init_array+0x40>)
 80008ec:	4d0f      	ldr	r5, [pc, #60]	; (800092c <__libc_init_array+0x44>)
 80008ee:	1b76      	subs	r6, r6, r5
 80008f0:	10b6      	asrs	r6, r6, #2
 80008f2:	bf18      	it	ne
 80008f4:	2400      	movne	r4, #0
 80008f6:	d005      	beq.n	8000904 <__libc_init_array+0x1c>
 80008f8:	3401      	adds	r4, #1
 80008fa:	f855 3b04 	ldr.w	r3, [r5], #4
 80008fe:	4798      	blx	r3
 8000900:	42a6      	cmp	r6, r4
 8000902:	d1f9      	bne.n	80008f8 <__libc_init_array+0x10>
 8000904:	4e0a      	ldr	r6, [pc, #40]	; (8000930 <__libc_init_array+0x48>)
 8000906:	4d0b      	ldr	r5, [pc, #44]	; (8000934 <__libc_init_array+0x4c>)
 8000908:	1b76      	subs	r6, r6, r5
 800090a:	f000 f871 	bl	80009f0 <_init>
 800090e:	10b6      	asrs	r6, r6, #2
 8000910:	bf18      	it	ne
 8000912:	2400      	movne	r4, #0
 8000914:	d006      	beq.n	8000924 <__libc_init_array+0x3c>
 8000916:	3401      	adds	r4, #1
 8000918:	f855 3b04 	ldr.w	r3, [r5], #4
 800091c:	4798      	blx	r3
 800091e:	42a6      	cmp	r6, r4
 8000920:	d1f9      	bne.n	8000916 <__libc_init_array+0x2e>
 8000922:	bd70      	pop	{r4, r5, r6, pc}
 8000924:	bd70      	pop	{r4, r5, r6, pc}
 8000926:	bf00      	nop
 8000928:	08000a28 	.word	0x08000a28
 800092c:	08000a28 	.word	0x08000a28
 8000930:	08000a30 	.word	0x08000a30
 8000934:	08000a28 	.word	0x08000a28

08000938 <__register_exitproc>:
 8000938:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800093c:	4c25      	ldr	r4, [pc, #148]	; (80009d4 <__register_exitproc+0x9c>)
 800093e:	6825      	ldr	r5, [r4, #0]
 8000940:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 8000944:	4606      	mov	r6, r0
 8000946:	4688      	mov	r8, r1
 8000948:	4692      	mov	sl, r2
 800094a:	4699      	mov	r9, r3
 800094c:	b3cc      	cbz	r4, 80009c2 <__register_exitproc+0x8a>
 800094e:	6860      	ldr	r0, [r4, #4]
 8000950:	281f      	cmp	r0, #31
 8000952:	dc18      	bgt.n	8000986 <__register_exitproc+0x4e>
 8000954:	1c43      	adds	r3, r0, #1
 8000956:	b17e      	cbz	r6, 8000978 <__register_exitproc+0x40>
 8000958:	eb04 0580 	add.w	r5, r4, r0, lsl #2
 800095c:	2101      	movs	r1, #1
 800095e:	f8c5 a088 	str.w	sl, [r5, #136]	; 0x88
 8000962:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 8000966:	fa01 f200 	lsl.w	r2, r1, r0
 800096a:	4317      	orrs	r7, r2
 800096c:	2e02      	cmp	r6, #2
 800096e:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8000972:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
 8000976:	d01e      	beq.n	80009b6 <__register_exitproc+0x7e>
 8000978:	3002      	adds	r0, #2
 800097a:	6063      	str	r3, [r4, #4]
 800097c:	f844 8020 	str.w	r8, [r4, r0, lsl #2]
 8000980:	2000      	movs	r0, #0
 8000982:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000986:	4b14      	ldr	r3, [pc, #80]	; (80009d8 <__register_exitproc+0xa0>)
 8000988:	b303      	cbz	r3, 80009cc <__register_exitproc+0x94>
 800098a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 800098e:	f3af 8000 	nop.w
 8000992:	4604      	mov	r4, r0
 8000994:	b1d0      	cbz	r0, 80009cc <__register_exitproc+0x94>
 8000996:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
 800099a:	2700      	movs	r7, #0
 800099c:	e880 0088 	stmia.w	r0, {r3, r7}
 80009a0:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 80009a4:	4638      	mov	r0, r7
 80009a6:	2301      	movs	r3, #1
 80009a8:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 80009ac:	f8c4 718c 	str.w	r7, [r4, #396]	; 0x18c
 80009b0:	2e00      	cmp	r6, #0
 80009b2:	d0e1      	beq.n	8000978 <__register_exitproc+0x40>
 80009b4:	e7d0      	b.n	8000958 <__register_exitproc+0x20>
 80009b6:	f8d4 118c 	ldr.w	r1, [r4, #396]	; 0x18c
 80009ba:	430a      	orrs	r2, r1
 80009bc:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 80009c0:	e7da      	b.n	8000978 <__register_exitproc+0x40>
 80009c2:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 80009c6:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 80009ca:	e7c0      	b.n	800094e <__register_exitproc+0x16>
 80009cc:	f04f 30ff 	mov.w	r0, #4294967295
 80009d0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80009d4:	08000a24 	.word	0x08000a24
 80009d8:	00000000 	.word	0x00000000

080009dc <register_fini>:
 80009dc:	4b02      	ldr	r3, [pc, #8]	; (80009e8 <register_fini+0xc>)
 80009de:	b113      	cbz	r3, 80009e6 <register_fini+0xa>
 80009e0:	4802      	ldr	r0, [pc, #8]	; (80009ec <register_fini+0x10>)
 80009e2:	f7ff bf65 	b.w	80008b0 <atexit>
 80009e6:	4770      	bx	lr
 80009e8:	00000000 	.word	0x00000000
 80009ec:	080008bd 	.word	0x080008bd

080009f0 <_init>:
 80009f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80009f2:	bf00      	nop
 80009f4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80009f6:	bc08      	pop	{r3}
 80009f8:	469e      	mov	lr, r3
 80009fa:	4770      	bx	lr

080009fc <_fini>:
 80009fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80009fe:	bf00      	nop
 8000a00:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000a02:	bc08      	pop	{r3}
 8000a04:	469e      	mov	lr, r3
 8000a06:	4770      	bx	lr
