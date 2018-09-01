
./obj/app.elf:     file format elf32-littlearm


Disassembly of section .start:

40002000 <_stext>:
40002000:	e1a0100d 	mov	r1, sp
40002004:	e59fd030 	ldr	sp, [pc, #48]	; 4000203c <sys_exit+0x2c>
40002008:	e92d5ff2 	push	{r1, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
4000200c:	eb000057 	bl	40002170 <main>

40002010 <sys_exit>:
40002010:	e59f2028 	ldr	r2, [pc, #40]	; 40002040 <sys_exit+0x30>
40002014:	e59f3028 	ldr	r3, [pc, #40]	; 40002044 <sys_exit+0x34>
40002018:	e5832000 	str	r2, [r3]
4000201c:	e59f2024 	ldr	r2, [pc, #36]	; 40002048 <sys_exit+0x38>
40002020:	e59f3024 	ldr	r3, [pc, #36]	; 4000204c <sys_exit+0x3c>
40002024:	e5832000 	str	r2, [r3]
40002028:	e59fd00c 	ldr	sp, [pc, #12]	; 4000203c <sys_exit+0x2c>
4000202c:	e24dd02c 	sub	sp, sp, #44	; 0x2c
40002030:	e8bd5ff2 	pop	{r1, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
40002034:	e1a0d001 	mov	sp, r1
40002038:	e12fff1e 	bx	lr
4000203c:	4000fff8 	strdmi	pc, [r0], -r8
40002040:	0000b9f8 	strdeq	fp, [r0], -r8
40002044:	40000cd4 	ldrdmi	r0, [r0], -r4
40002048:	0000b9d4 	ldrdeq	fp, [r0], -r4
4000204c:	40000cd0 	ldrdmi	r0, [r0], -r0	; <UNPREDICTABLE>

Disassembly of section .text:

40002050 <test>:
40002050:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
40002054:	e24dd00c 	sub	sp, sp, #12
40002058:	e3a00e41 	mov	r0, #1040	; 0x410
4000205c:	eb000097 	bl	400022c0 <__malloc2388_veneer>
40002060:	e1a02000 	mov	r2, r0
40002064:	e1a0300f 	mov	r3, pc
40002068:	e58d3004 	str	r3, [sp, #4]
4000206c:	e59d1004 	ldr	r1, [sp, #4]
40002070:	e59f30d4 	ldr	r3, [pc, #212]	; 4000214c <test+0xfc>
40002074:	e5831000 	str	r1, [r3]
40002078:	e59f00d0 	ldr	r0, [pc, #208]	; 40002150 <test+0x100>
4000207c:	eb000095 	bl	400022d8 <__xprintf_veneer>
40002080:	e3a02000 	mov	r2, #0
40002084:	e59f30c8 	ldr	r3, [pc, #200]	; 40002154 <test+0x104>
40002088:	e5832000 	str	r2, [r3]
4000208c:	e1a08003 	mov	r8, r3
40002090:	e3a0ab02 	mov	sl, #2048	; 0x800
40002094:	e59f90bc 	ldr	r9, [pc, #188]	; 40002158 <test+0x108>
40002098:	e59f40bc 	ldr	r4, [pc, #188]	; 4000215c <test+0x10c>
4000209c:	e59f70bc 	ldr	r7, [pc, #188]	; 40002160 <test+0x110>
400020a0:	e59f60bc 	ldr	r6, [pc, #188]	; 40002164 <test+0x114>
400020a4:	e5983000 	ldr	r3, [r8]
400020a8:	e2833001 	add	r3, r3, #1
400020ac:	e5883000 	str	r3, [r8]
400020b0:	e1a0000a 	mov	r0, sl
400020b4:	eb000081 	bl	400022c0 <__malloc2388_veneer>
400020b8:	e1a05000 	mov	r5, r0
400020bc:	e598b000 	ldr	fp, [r8]
400020c0:	eb000080 	bl	400022c8 <__current_sp_veneer>
400020c4:	e1a03000 	mov	r3, r0
400020c8:	e1a02005 	mov	r2, r5
400020cc:	e1a0100b 	mov	r1, fp
400020d0:	e1a00009 	mov	r0, r9
400020d4:	eb00007f 	bl	400022d8 <__xprintf_veneer>
400020d8:	e3550000 	cmp	r5, #0
400020dc:	0a000013 	beq	40002130 <test+0xe0>
400020e0:	e3a03000 	mov	r3, #0
400020e4:	e5843000 	str	r3, [r4]
400020e8:	ea000004 	b	40002100 <test+0xb0>
400020ec:	e5943000 	ldr	r3, [r4]
400020f0:	e2833001 	add	r3, r3, #1
400020f4:	e5843000 	str	r3, [r4]
400020f8:	e1530006 	cmp	r3, r6
400020fc:	caffffe8 	bgt	400020a4 <test+0x54>
40002100:	e2632000 	rsb	r2, r3, #0
40002104:	e7c52003 	strb	r2, [r5, r3]
40002108:	e5942000 	ldr	r2, [r4]
4000210c:	e2623000 	rsb	r3, r2, #0
40002110:	e7d51002 	ldrb	r1, [r5, r2]
40002114:	e20330ff 	and	r3, r3, #255	; 0xff
40002118:	e1510003 	cmp	r1, r3
4000211c:	0afffff2 	beq	400020ec <test+0x9c>
40002120:	e1a01005 	mov	r1, r5
40002124:	e1a00007 	mov	r0, r7
40002128:	eb00006a 	bl	400022d8 <__xprintf_veneer>
4000212c:	eaffffee 	b	400020ec <test+0x9c>
40002130:	e59f0030 	ldr	r0, [pc, #48]	; 40002168 <test+0x118>
40002134:	eb000067 	bl	400022d8 <__xprintf_veneer>
40002138:	e59f002c 	ldr	r0, [pc, #44]	; 4000216c <test+0x11c>
4000213c:	ebffffb3 	bl	40002010 <sys_exit>
40002140:	e28dd00c 	add	sp, sp, #12
40002144:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
40002148:	e12fff1e 	bx	lr
4000214c:	40002420 	andmi	r2, r0, r0, lsr #8
40002150:	400022e8 	andmi	r2, r0, r8, ror #5
40002154:	40002428 	andmi	r2, r0, r8, lsr #8
40002158:	40002300 	andmi	r2, r0, r0, lsl #6
4000215c:	40002424 	andmi	r2, r0, r4, lsr #8
40002160:	4000231c 	andmi	r2, r0, ip, lsl r3
40002164:	000007ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
40002168:	40002328 	andmi	r2, r0, r8, lsr #6
4000216c:	00000975 	andeq	r0, r0, r5, ror r9

40002170 <main>:
40002170:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
40002174:	e59f3118 	ldr	r3, [pc, #280]	; 40002294 <main+0x124>
40002178:	e59f2118 	ldr	r2, [pc, #280]	; 40002298 <main+0x128>
4000217c:	e3a01007 	mov	r1, #7
40002180:	e3a00004 	mov	r0, #4
40002184:	eb000055 	bl	400022e0 <____malloc2388_init_veneer>
40002188:	e1a03000 	mov	r3, r0
4000218c:	e3a02007 	mov	r2, #7
40002190:	e3a01004 	mov	r1, #4
40002194:	e59f0100 	ldr	r0, [pc, #256]	; 4000229c <main+0x12c>
40002198:	eb00004e 	bl	400022d8 <__xprintf_veneer>
4000219c:	e3a00005 	mov	r0, #5
400021a0:	eb000046 	bl	400022c0 <__malloc2388_veneer>
400021a4:	e1a01000 	mov	r1, r0
400021a8:	e59f00f0 	ldr	r0, [pc, #240]	; 400022a0 <main+0x130>
400021ac:	eb000049 	bl	400022d8 <__xprintf_veneer>
400021b0:	e3a04003 	mov	r4, #3
400021b4:	e3a06008 	mov	r6, #8
400021b8:	e59f50e4 	ldr	r5, [pc, #228]	; 400022a4 <main+0x134>
400021bc:	e1a00006 	mov	r0, r6
400021c0:	eb00003e 	bl	400022c0 <__malloc2388_veneer>
400021c4:	e1a01000 	mov	r1, r0
400021c8:	e1a00005 	mov	r0, r5
400021cc:	eb000041 	bl	400022d8 <__xprintf_veneer>
400021d0:	e2544001 	subs	r4, r4, #1
400021d4:	1afffff8 	bne	400021bc <main+0x4c>
400021d8:	e3a04003 	mov	r4, #3
400021dc:	e3a06001 	mov	r6, #1
400021e0:	e59f50c0 	ldr	r5, [pc, #192]	; 400022a8 <main+0x138>
400021e4:	e1a00006 	mov	r0, r6
400021e8:	eb000034 	bl	400022c0 <__malloc2388_veneer>
400021ec:	e1a01000 	mov	r1, r0
400021f0:	e1a00005 	mov	r0, r5
400021f4:	eb000037 	bl	400022d8 <__xprintf_veneer>
400021f8:	e2544001 	subs	r4, r4, #1
400021fc:	1afffff8 	bne	400021e4 <main+0x74>
40002200:	e3a00003 	mov	r0, #3
40002204:	eb00002d 	bl	400022c0 <__malloc2388_veneer>
40002208:	e1a05000 	mov	r5, r0
4000220c:	e1a01000 	mov	r1, r0
40002210:	e59f0094 	ldr	r0, [pc, #148]	; 400022ac <main+0x13c>
40002214:	eb00002f 	bl	400022d8 <__xprintf_veneer>
40002218:	e3a04003 	mov	r4, #3
4000221c:	e3a07008 	mov	r7, #8
40002220:	e59f607c 	ldr	r6, [pc, #124]	; 400022a4 <main+0x134>
40002224:	e1a00007 	mov	r0, r7
40002228:	eb000024 	bl	400022c0 <__malloc2388_veneer>
4000222c:	e1a01000 	mov	r1, r0
40002230:	e1a00006 	mov	r0, r6
40002234:	eb000027 	bl	400022d8 <__xprintf_veneer>
40002238:	e2544001 	subs	r4, r4, #1
4000223c:	1afffff8 	bne	40002224 <main+0xb4>
40002240:	e1a01005 	mov	r1, r5
40002244:	e59f0064 	ldr	r0, [pc, #100]	; 400022b0 <main+0x140>
40002248:	eb000022 	bl	400022d8 <__xprintf_veneer>
4000224c:	e1a00005 	mov	r0, r5
40002250:	eb00001e 	bl	400022d0 <__free2388_veneer>
40002254:	e3a04008 	mov	r4, #8
40002258:	e59f5054 	ldr	r5, [pc, #84]	; 400022b4 <main+0x144>
4000225c:	e1a00004 	mov	r0, r4
40002260:	eb000016 	bl	400022c0 <__malloc2388_veneer>
40002264:	e1a02000 	mov	r2, r0
40002268:	e1a01004 	mov	r1, r4
4000226c:	e1a00005 	mov	r0, r5
40002270:	eb000018 	bl	400022d8 <__xprintf_veneer>
40002274:	e2544001 	subs	r4, r4, #1
40002278:	1afffff7 	bne	4000225c <main+0xec>
4000227c:	ebffff73 	bl	40002050 <test>
40002280:	e59f0030 	ldr	r0, [pc, #48]	; 400022b8 <main+0x148>
40002284:	eb000013 	bl	400022d8 <__xprintf_veneer>
40002288:	e3a00001 	mov	r0, #1
4000228c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
40002290:	e12fff1e 	bx	lr
40002294:	4000fe00 	andmi	pc, r0, r0, lsl #28
40002298:	40002430 	andmi	r2, r0, r0, lsr r4
4000229c:	40002354 	andmi	r2, r0, r4, asr r3
400022a0:	4000239c 	mulmi	r0, ip, r3
400022a4:	400023b0 			; <UNDEFINED> instruction: 0x400023b0
400022a8:	400023c4 	andmi	r2, r0, r4, asr #7
400022ac:	400023d8 	ldrdmi	r2, [r0], -r8
400022b0:	400023ec 	andmi	r2, r0, ip, ror #7
400022b4:	40002400 	andmi	r2, r0, r0, lsl #8
400022b8:	40002414 	andmi	r2, r0, r4, lsl r4
400022bc:	00000000 	andeq	r0, r0, r0

400022c0 <__malloc2388_veneer>:
400022c0:	e51ff004 	ldr	pc, [pc, #-4]	; 400022c4 <__malloc2388_veneer+0x4>
400022c4:	00009a50 	andeq	r9, r0, r0, asr sl

400022c8 <__current_sp_veneer>:
400022c8:	e51ff004 	ldr	pc, [pc, #-4]	; 400022cc <__current_sp_veneer+0x4>
400022cc:	000000b4 	strheq	r0, [r0], -r4

400022d0 <__free2388_veneer>:
400022d0:	e51ff004 	ldr	pc, [pc, #-4]	; 400022d4 <__free2388_veneer+0x4>
400022d4:	00009adc 	ldrdeq	r9, [r0], -ip

400022d8 <__xprintf_veneer>:
400022d8:	e51ff004 	ldr	pc, [pc, #-4]	; 400022dc <__xprintf_veneer+0x4>
400022dc:	0000c094 	muleq	r0, r4, r0

400022e0 <____malloc2388_init_veneer>:
400022e0:	e51ff004 	ldr	pc, [pc, #-4]	; 400022e4 <____malloc2388_init_veneer+0x4>
400022e4:	00009958 	andeq	r9, r0, r8, asr r9

Disassembly of section .rdata:

400022e8 <_srdata>:
400022e8:	3d63700a 	stclcc	0, cr7, [r3, #-40]!	; 0xffffffd8
400022ec:	30257830 	eorcc	r7, r5, r0, lsr r8
400022f0:	202c7838 	eorcs	r7, ip, r8, lsr r8
400022f4:	72646461 	rsbvc	r6, r4, #1627389952	; 0x61000000
400022f8:	3830253d 	ldmdacc	r0!, {r0, r2, r3, r4, r5, r8, sl, sp}
400022fc:	00000a78 	andeq	r0, r0, r8, ror sl
40002300:	64322528 	ldrtvs	r2, [r2], #-1320	; 0xfffffad8
40002304:	65682029 	strbvs	r2, [r8, #-41]!	; 0xffffffd7
40002308:	3d207061 	stccc	0, cr7, [r0, #-388]!	; 0xfffffe7c
4000230c:	38302520 	ldmdacc	r0!, {r5, r8, sl, sp}
40002310:	73202c78 			; <UNDEFINED> instruction: 0x73202c78
40002314:	30253d70 	eorcc	r3, r5, r0, ror sp
40002318:	000a7838 	andeq	r7, sl, r8, lsr r8
4000231c:	30252021 	eorcc	r2, r5, r1, lsr #32
40002320:	253a7838 	ldrcs	r7, [sl, #-2104]!	; 0xfffff7c8
40002324:	00000a58 	andeq	r0, r0, r8, asr sl
40002328:	74697845 	strbtvc	r7, [r9], #-2117	; 0xfffff7bb
4000232c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
40002330:	616e7265 	cmnvs	lr, r5, ror #4
40002334:	20796c6c 	rsbscs	r6, r9, ip, ror #24
40002338:	68746977 	ldmdavs	r4!, {r0, r1, r2, r4, r5, r6, r8, fp, sp, lr}^
4000233c:	74657220 	strbtvc	r7, [r5], #-544	; 0xfffffde0
40002340:	206e7275 	rsbcs	r7, lr, r5, ror r2
40002344:	65646f63 	strbvs	r6, [r4, #-3939]!	; 0xfffff09d
40002348:	39783020 	ldmdbcc	r8!, {r5, ip, sp}^
4000234c:	0a2e3537 	beq	40b8f830 <_sp_base+0xb7f838>
40002350:	00000000 	andeq	r0, r0, r0
40002354:	6c616d0a 	stclvs	13, cr6, [r1], #-40	; 0xffffffd8
40002358:	32636f6c 	rsbcc	r6, r3, #108, 30	; 0x1b0
4000235c:	5f383833 	svcpl	0x00383833
40002360:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
40002364:	756c6328 	strbvc	r6, [ip, #-808]!	; 0xfffffcd8
40002368:	72657473 	rsbvc	r7, r5, #1929379840	; 0x73000000
4000236c:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
40002370:	2c64253d 	cfstr64cs	mvdx2, [r4], #-244	; 0xffffff0c
40002374:	6d656d20 	stclvs	13, cr6, [r5, #-128]!	; 0xffffff80
40002378:	3d676663 	stclcc	6, cr6, [r7, #-396]!	; 0xfffffe74
4000237c:	3a296425 	bcc	40a5b418 <_sp_base+0xa4b420>
40002380:	646c2520 	strbtvs	r2, [ip], #-1312	; 0xfffffae0
40002384:	756c6320 	strbvc	r6, [ip, #-800]!	; 0xfffffce0
40002388:	72657473 	rsbvc	r7, r5, #1929379840	; 0x73000000
4000238c:	76612073 			; <UNDEFINED> instruction: 0x76612073
40002390:	616c6961 	cmnvs	ip, r1, ror #18
40002394:	0a656c62 	beq	4195d524 <_sp_base+0x194d52c>
40002398:	00000000 	andeq	r0, r0, r0
4000239c:	6c61202a 	stclvs	0, cr2, [r1], #-168	; 0xffffff58
400023a0:	28636f6c 	stmdacs	r3!, {r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
400023a4:	3d202935 			; <UNDEFINED> instruction: 0x3d202935
400023a8:	38302520 	ldmdacc	r0!, {r5, r8, sl, sp}
400023ac:	00000a78 	andeq	r0, r0, r8, ror sl
400023b0:	6c61202a 	stclvs	0, cr2, [r1], #-168	; 0xffffff58
400023b4:	28636f6c 	stmdacs	r3!, {r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
400023b8:	3d202938 			; <UNDEFINED> instruction: 0x3d202938
400023bc:	38302520 	ldmdacc	r0!, {r5, r8, sl, sp}
400023c0:	00000a78 	andeq	r0, r0, r8, ror sl
400023c4:	6c61202a 	stclvs	0, cr2, [r1], #-168	; 0xffffff58
400023c8:	28636f6c 	stmdacs	r3!, {r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
400023cc:	3d202931 			; <UNDEFINED> instruction: 0x3d202931
400023d0:	38302520 	ldmdacc	r0!, {r5, r8, sl, sp}
400023d4:	00000a78 	andeq	r0, r0, r8, ror sl
400023d8:	6c61202a 	stclvs	0, cr2, [r1], #-168	; 0xffffff58
400023dc:	28636f6c 	stmdacs	r3!, {r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
400023e0:	3d202933 			; <UNDEFINED> instruction: 0x3d202933
400023e4:	38302520 	ldmdacc	r0!, {r5, r8, sl, sp}
400023e8:	00000a78 	andeq	r0, r0, r8, ror sl
400023ec:	7266202a 	rsbvc	r2, r6, #42	; 0x2a
400023f0:	33286565 			; <UNDEFINED> instruction: 0x33286565
400023f4:	25204020 	strcs	r4, [r0, #-32]!	; 0xffffffe0
400023f8:	29783830 	ldmdbcs	r8!, {r4, r5, fp, ip, sp}^
400023fc:	0000000a 	andeq	r0, r0, sl
40002400:	6c61202a 	stclvs	0, cr2, [r1], #-168	; 0xffffff58
40002404:	28636f6c 	stmdacs	r3!, {r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
40002408:	20296425 	eorcs	r6, r9, r5, lsr #8
4000240c:	3025203d 	eorcc	r2, r5, sp, lsr r0
40002410:	000a7838 	andeq	r7, sl, r8, lsr r8
40002414:	706d6f63 	rsbvc	r6, sp, r3, ror #30
40002418:	6574656c 	ldrbvs	r6, [r4, #-1388]!	; 0xfffffa94
4000241c:	00000a2e 	andeq	r0, r0, lr, lsr #20

Disassembly of section .bss:

40002420 <p>:
40002420:	00000000 	andeq	r0, r0, r0

40002424 <j>:
40002424:	00000000 	andeq	r0, r0, r0

40002428 <i>:
40002428:	00000000 	andeq	r0, r0, r0

Disassembly of section .heap:

40002430 <_end>:
40002430:	3a434347 	bcc	410d3154 <_sp_base+0x10c315c>
40002434:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
40002438:	6f542055 	svcvs	0x00542055
4000243c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
40002440:	20726f66 	rsbscs	r6, r2, r6, ror #30
40002444:	204d5241 	subcs	r5, sp, r1, asr #4
40002448:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
4000244c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
40002450:	6f725020 	svcvs	0x00725020
40002454:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
40002458:	2073726f 	rsbscs	r7, r3, pc, ror #4
4000245c:	30322d36 	eorscc	r2, r2, r6, lsr sp
40002460:	712d3731 			; <UNDEFINED> instruction: 0x712d3731
40002464:	70752d32 	rsbsvc	r2, r5, r2, lsr sp
40002468:	65746164 	ldrbvs	r6, [r4, #-356]!	; 0xfffffe9c
4000246c:	2e362029 	cdpcs	0, 3, cr2, cr6, cr9, {1}
40002470:	20312e33 	eorscs	r2, r1, r3, lsr lr
40002474:	37313032 			; <UNDEFINED> instruction: 0x37313032
40002478:	30323630 	eorscc	r3, r2, r0, lsr r6
4000247c:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
40002480:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
40002484:	5b202965 	blpl	4080ca20 <_sp_base+0x7fca28>
40002488:	2f4d5241 	svccs	0x004d5241
4000248c:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
40002490:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
40002494:	622d362d 	eorvs	r3, sp, #47185920	; 0x2d00000
40002498:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
4000249c:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
400024a0:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
400024a4:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
400024a8:	33343934 	teqcc	r4, #52, 18	; 0xd0000
400024ac:	Address 0x400024ac is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002d41 	andeq	r2, r0, r1, asr #26
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000023 	andeq	r0, r0, r3, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	4d445437 	cfstrdmi	mvd5, [r4, #-220]	; 0xffffff24
  18:	00532d49 	subseq	r2, r3, r9, asr #26
  1c:	01080206 	tsteq	r8, r6, lsl #4
  20:	04120109 	ldreq	r0, [r2], #-265	; 0xfffffef7
  24:	01150114 	tsteq	r5, r4, lsl r1
  28:	01180317 	tsteq	r8, r7, lsl r3
  2c:	Address 0x0000002c is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000bb3 			; <UNDEFINED> instruction: 0x00000bb3
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	0000049a 	muleq	r0, sl, r4
  10:	00011101 	andeq	r1, r1, r1, lsl #2
  14:	00044300 	andeq	r4, r4, r0, lsl #6
  18:	00205000 	eoreq	r5, r0, r0
  1c:	0022bc40 	eoreq	fp, r2, r0, asr #24
  20:	00000040 	andeq	r0, r0, r0, asr #32
  24:	00000000 	andeq	r0, r0, r0
  28:	06010200 	streq	r0, [r1], -r0, lsl #4
  2c:	00000317 	andeq	r0, r0, r7, lsl r3
  30:	00003c03 	andeq	r3, r0, r3, lsl #24
  34:	3b2b0300 	blcc	ac0c3c <__mprec_tinytens+0xa9c3cc>
  38:	02000000 	andeq	r0, r0, #0
  3c:	03150801 	tsteq	r5, #65536	; 0x10000
  40:	02020000 	andeq	r0, r2, #0
  44:	00033105 	andeq	r3, r3, r5, lsl #2
  48:	07020200 	streq	r0, [r2, -r0, lsl #4]
  4c:	0000021d 	andeq	r0, r0, sp, lsl r2
  50:	b9050402 	stmdblt	r5, {r1, sl}
  54:	02000000 	andeq	r0, r0, #0
  58:	00710704 	rsbseq	r0, r1, r4, lsl #14
  5c:	57040000 	strpl	r0, [r4, -r0]
  60:	02000000 	andeq	r0, r0, #0
  64:	00b40508 	adcseq	r0, r4, r8, lsl #10
  68:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  6c:	00006c07 	andeq	r6, r0, r7, lsl #24
  70:	05040500 	streq	r0, [r4, #-1280]	; 0xfffffb00
  74:	00746e69 	rsbseq	r6, r4, r9, ror #28
  78:	00036c03 	andeq	r6, r3, r3, lsl #24
  7c:	83e80300 	mvnhi	r0, #0, 6
  80:	02000000 	andeq	r0, r0, #0
  84:	00760704 	rsbseq	r0, r6, r4, lsl #14
  88:	3e030000 	cdpcc	0, 0, cr0, cr3, cr0, {0}
  8c:	04000000 	streq	r0, [r0], #-0
  90:	00003018 	andeq	r3, r0, r8, lsl r0
  94:	036e0300 	cmneq	lr, #0, 6
  98:	52040000 	andpl	r0, r4, #0
  9c:	00000078 	andeq	r0, r0, r8, ror r0
  a0:	cc040802 	stcgt	8, cr0, [r4], {2}
  a4:	02000002 	andeq	r0, r0, #2
  a8:	02be0704 	adcseq	r0, lr, #4, 14	; 0x100000
  ac:	01060000 	mrseq	r0, (UNDEF: 6)
  b0:	000000ba 	strheq	r0, [r0], -sl
  b4:	00003b07 	andeq	r3, r0, r7, lsl #22
  b8:	21080000 	mrscs	r0, (UNDEF: 8)
  bc:	05000001 	streq	r0, [r0, #-1]
  c0:	0000c715 	andeq	ip, r0, r5, lsl r7
  c4:	09010100 	stmdbeq	r1, {r8}
  c8:	0000ae04 	andeq	sl, r0, r4, lsl #28
  cc:	3b010a00 	blcc	428d4 <__mprec_tinytens+0x1e064>
  d0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
  d4:	00000567 	andeq	r0, r0, r7, ror #10
  d8:	00e02505 	rsceq	r2, r0, r5, lsl #10
  dc:	01010000 	mrseq	r0, (UNDEF: 1)
  e0:	00cd0409 	sbceq	r0, sp, r9, lsl #8
  e4:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  e8:	0002c704 	andeq	ip, r2, r4, lsl #14
  ec:	026f0300 	rsbeq	r0, pc, #0, 6
  f0:	22060000 	andcs	r0, r6, #0
  f4:	000000f8 	strdeq	r0, [r0], -r8
  f8:	00fe0409 	rscseq	r0, lr, r9, lsl #8
  fc:	fb0b0000 	blx	2c0106 <__mprec_tinytens+0x29b896>
 100:	01000003 	tsteq	r0, r3
 104:	0002f603 	andeq	pc, r2, r3, lsl #12
 108:	502c0700 	eorpl	r0, ip, r0, lsl #14
 10c:	03000000 	movweq	r0, #0
 110:	00000422 	andeq	r0, r0, r2, lsr #8
 114:	00507207 	subseq	r7, r0, r7, lsl #4
 118:	770c0000 	strvc	r0, [ip, -r0]
 11c:	08000002 	stmdaeq	r0, {r1}
 120:	00830165 	addeq	r0, r3, r5, ror #2
 124:	040d0000 	streq	r0, [sp], #-0
 128:	0145a607 	cmpeq	r5, r7, lsl #12
 12c:	5a0e0000 	bpl	380134 <__mprec_tinytens+0x35b8c4>
 130:	07000002 	streq	r0, [r0, -r2]
 134:	00011aa8 	andeq	r1, r1, r8, lsr #21
 138:	01dd0e00 	bicseq	r0, sp, r0, lsl #28
 13c:	a9070000 	stmdbge	r7, {}	; <UNPREDICTABLE>
 140:	00000145 	andeq	r0, r0, r5, asr #2
 144:	003b0f00 	eorseq	r0, fp, r0, lsl #30
 148:	01550000 	cmpeq	r5, r0
 14c:	a7100000 	ldrge	r0, [r0, -r0]
 150:	03000000 	movweq	r0, #0
 154:	07081100 	streq	r1, [r8, -r0, lsl #2]
 158:	00017aa3 	andeq	r7, r1, r3, lsr #21
 15c:	03f31200 	mvnseq	r1, #0, 4
 160:	a5070000 	strge	r0, [r7, #-0]
 164:	00000071 	andeq	r0, r0, r1, ror r0
 168:	12002302 	andne	r2, r0, #134217728	; 0x8000000
 16c:	00000402 	andeq	r0, r0, r2, lsl #8
 170:	0126aa07 			; <UNDEFINED> instruction: 0x0126aa07
 174:	23020000 	movwcs	r0, #8192	; 0x2000
 178:	59030004 	stmdbpl	r3, {r2}
 17c:	07000003 	streq	r0, [r0, -r3]
 180:	000155ab 	andeq	r5, r1, fp, lsr #11
 184:	01830300 	orreq	r0, r3, r0, lsl #6
 188:	af070000 	svcge	0x00070000
 18c:	000000ed 	andeq	r0, r0, sp, ror #1
 190:	04090413 	streq	r0, [r9], #-1043	; 0xfffffbed
 194:	00000198 	muleq	r0, r8, r1
 198:	1e080102 	adfnee	f0, f0, f2
 19c:	14000003 	strne	r0, [r0], #-3
 1a0:	00000198 	muleq	r0, r8, r1
 1a4:	00052f03 	andeq	r2, r5, r3, lsl #30
 1a8:	57160900 	ldrpl	r0, [r6, -r0, lsl #18]
 1ac:	15000000 	strne	r0, [r0, #-0]
 1b0:	00000194 	muleq	r0, r4, r1
 1b4:	0e2f0918 			; <UNDEFINED> instruction: 0x0e2f0918
 1b8:	12000002 	andne	r0, r0, #2
 1bc:	0000037d 	andeq	r0, r0, sp, ror r3
 1c0:	020e3109 	andeq	r3, lr, #1073741826	; 0x40000002
 1c4:	23020000 	movwcs	r0, #8192	; 0x2000
 1c8:	6b5f1600 	blvs	17c59d0 <__mprec_tinytens+0x17a1160>
 1cc:	71320900 	teqvc	r2, r0, lsl #18
 1d0:	02000000 	andeq	r0, r0, #0
 1d4:	d6120423 	ldrle	r0, [r2], -r3, lsr #8
 1d8:	09000003 	stmdbeq	r0, {r0, r1}
 1dc:	00007132 	andeq	r7, r0, r2, lsr r1
 1e0:	08230200 	stmdaeq	r3!, {r9}
 1e4:	00017212 	andeq	r7, r1, r2, lsl r2
 1e8:	71320900 	teqvc	r2, r0, lsl #18
 1ec:	02000000 	andeq	r0, r0, #0
 1f0:	94120c23 	ldrls	r0, [r2], #-3107	; 0xfffff3dd
 1f4:	09000005 	stmdbeq	r0, {r0, r2}
 1f8:	00007132 	andeq	r7, r0, r2, lsr r1
 1fc:	10230200 	eorne	r0, r3, r0, lsl #4
 200:	00785f16 	rsbseq	r5, r8, r6, lsl pc
 204:	02143309 	andseq	r3, r4, #603979776	; 0x24000000
 208:	23020000 	movwcs	r0, #8192	; 0x2000
 20c:	04090014 	streq	r0, [r9], #-20	; 0xffffffec
 210:	000001af 	andeq	r0, r0, pc, lsr #3
 214:	0001a40f 	andeq	sl, r1, pc, lsl #8
 218:	00022400 	andeq	r2, r2, r0, lsl #8
 21c:	00a71000 	adceq	r1, r7, r0
 220:	00000000 	andeq	r0, r0, r0
 224:	0001d815 	andeq	sp, r1, r5, lsl r8
 228:	37092400 	strcc	r2, [r9, -r0, lsl #8]
 22c:	000002af 	andeq	r0, r0, pc, lsr #5
 230:	0000ab12 	andeq	sl, r0, r2, lsl fp
 234:	71390900 	teqvc	r9, r0, lsl #18
 238:	02000000 	andeq	r0, r0, #0
 23c:	2a120023 	bcs	4802d0 <__mprec_tinytens+0x45ba60>
 240:	09000004 	stmdbeq	r0, {r2}
 244:	0000713a 	andeq	r7, r0, sl, lsr r1
 248:	04230200 	strteq	r0, [r3], #-512	; 0xfffffe00
 24c:	0000ce12 	andeq	ip, r0, r2, lsl lr
 250:	713b0900 	teqvc	fp, r0, lsl #18
 254:	02000000 	andeq	r0, r0, #0
 258:	15120823 	ldrne	r0, [r2, #-2083]	; 0xfffff7dd
 25c:	09000006 	stmdbeq	r0, {r1, r2}
 260:	0000713c 	andeq	r7, r0, ip, lsr r1
 264:	0c230200 	sfmeq	f0, 4, [r3], #-0
 268:	0002da12 	andeq	sp, r2, r2, lsl sl
 26c:	713d0900 	teqvc	sp, r0, lsl #18
 270:	02000000 	andeq	r0, r0, #0
 274:	8d121023 	ldchi	0, cr1, [r2, #-140]	; 0xffffff74
 278:	09000002 	stmdbeq	r0, {r1}
 27c:	0000713e 	andeq	r7, r0, lr, lsr r1
 280:	14230200 	strtne	r0, [r3], #-512	; 0xfffffe00
 284:	00059912 	andeq	r9, r5, r2, lsl r9
 288:	713f0900 	teqvc	pc, r0, lsl #18
 28c:	02000000 	andeq	r0, r0, #0
 290:	3b121823 	blcc	486324 <__mprec_tinytens+0x461ab4>
 294:	09000003 	stmdbeq	r0, {r0, r1}
 298:	00007140 	andeq	r7, r0, r0, asr #2
 29c:	1c230200 	sfmne	f0, 4, [r3], #-0
 2a0:	0005d712 	andeq	sp, r5, r2, lsl r7
 2a4:	71410900 	cmpvc	r1, r0, lsl #18
 2a8:	02000000 	andeq	r0, r0, #0
 2ac:	17002023 	strne	r2, [r0, -r3, lsr #32]
 2b0:	000000dd 	ldrdeq	r0, [r0], -sp
 2b4:	4a090108 	bmi	2406dc <__mprec_tinytens+0x21be6c>
 2b8:	000002f8 	strdeq	r0, [r0], -r8
 2bc:	00016512 	andeq	r6, r1, r2, lsl r5
 2c0:	f84b0900 			; <UNDEFINED> instruction: 0xf84b0900
 2c4:	02000002 	andeq	r0, r0, #2
 2c8:	00120023 	andseq	r0, r2, r3, lsr #32
 2cc:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
 2d0:	0002f84c 	andeq	pc, r2, ip, asr #16
 2d4:	80230300 	eorhi	r0, r3, r0, lsl #6
 2d8:	05211201 	streq	r1, [r1, #-513]!	; 0xfffffdff
 2dc:	4e090000 	cdpmi	0, 0, cr0, cr9, cr0, {0}
 2e0:	000001a4 	andeq	r0, r0, r4, lsr #3
 2e4:	02802303 	addeq	r2, r0, #201326592	; 0xc000000
 2e8:	00010212 	andeq	r0, r1, r2, lsl r2
 2ec:	a4510900 	ldrbge	r0, [r1], #-2304	; 0xfffff700
 2f0:	03000001 	movweq	r0, #1
 2f4:	00028423 	andeq	r8, r2, r3, lsr #8
 2f8:	0001900f 	andeq	r9, r1, pc
 2fc:	00030800 	andeq	r0, r3, r0, lsl #16
 300:	00a71000 	adceq	r1, r7, r0
 304:	001f0000 	andseq	r0, pc, r0
 308:	0002e317 	andeq	lr, r2, r7, lsl r3
 30c:	09019000 	stmdbeq	r1, {ip, pc}
 310:	00034f5d 	andeq	r4, r3, sp, asr pc
 314:	037d1200 	cmneq	sp, #0, 4
 318:	5e090000 	cdppl	0, 0, cr0, cr9, cr0, {0}
 31c:	0000034f 	andeq	r0, r0, pc, asr #6
 320:	12002302 	andne	r2, r0, #134217728	; 0x8000000
 324:	00000395 	muleq	r0, r5, r3
 328:	00715f09 	rsbseq	r5, r1, r9, lsl #30
 32c:	23020000 	movwcs	r0, #8192	; 0x2000
 330:	016d1204 	cmneq	sp, r4, lsl #4
 334:	61090000 	mrsvs	r0, (UNDEF: 9)
 338:	00000355 	andeq	r0, r0, r5, asr r3
 33c:	12082302 	andne	r2, r8, #134217728	; 0x8000000
 340:	000000dd 	ldrdeq	r0, [r0], -sp
 344:	02af6209 	adceq	r6, pc, #-1879048192	; 0x90000000
 348:	23030000 	movwcs	r0, #12288	; 0x3000
 34c:	09000188 	stmdbeq	r0, {r3, r7, r8}
 350:	00030804 	andeq	r0, r3, r4, lsl #16
 354:	03650f00 	cmneq	r5, #0, 30
 358:	03650000 	cmneq	r5, #0
 35c:	a7100000 	ldrge	r0, [r0, -r0]
 360:	1f000000 	svcne	0x00000000
 364:	6b040900 	blvs	10276c <__mprec_tinytens+0xddefc>
 368:	18000003 	stmdane	r0, {r0, r1}
 36c:	03451501 	movteq	r1, #21761	; 0x5501
 370:	09080000 	stmdbeq	r8, {}	; <UNPREDICTABLE>
 374:	00039675 	andeq	r9, r3, r5, ror r6
 378:	00c81200 	sbceq	r1, r8, r0, lsl #4
 37c:	76090000 	strvc	r0, [r9], -r0
 380:	00000396 	muleq	r0, r6, r3
 384:	12002302 	andne	r2, r0, #134217728	; 0x8000000
 388:	00000013 	andeq	r0, r0, r3, lsl r0
 38c:	00717709 	rsbseq	r7, r1, r9, lsl #14
 390:	23020000 	movwcs	r0, #8192	; 0x2000
 394:	04090004 	streq	r0, [r9], #-4
 398:	0000003b 	andeq	r0, r0, fp, lsr r0
 39c:	00036415 	andeq	r6, r3, r5, lsl r4
 3a0:	b5096800 	strlt	r6, [r9, #-2048]	; 0xfffff800
 3a4:	000004f6 	strdeq	r0, [r0], -r6
 3a8:	00705f16 	rsbseq	r5, r0, r6, lsl pc
 3ac:	0396b609 	orrseq	fp, r6, #9437184	; 0x900000
 3b0:	23020000 	movwcs	r0, #8192	; 0x2000
 3b4:	725f1600 	subsvc	r1, pc, #0, 12
 3b8:	71b70900 			; <UNDEFINED> instruction: 0x71b70900
 3bc:	02000000 	andeq	r0, r0, #0
 3c0:	5f160423 	svcpl	0x00160423
 3c4:	b8090077 	stmdalt	r9, {r0, r1, r2, r4, r5, r6}
 3c8:	00000071 	andeq	r0, r0, r1, ror r0
 3cc:	12082302 	andne	r2, r8, #134217728	; 0x8000000
 3d0:	000000fb 	strdeq	r0, [r0], -fp
 3d4:	0042b909 	subeq	fp, r2, r9, lsl #18
 3d8:	23020000 	movwcs	r0, #8192	; 0x2000
 3dc:	0203120c 	andeq	r1, r3, #12, 4	; 0xc0000000
 3e0:	ba090000 	blt	2403e8 <__mprec_tinytens+0x21bb78>
 3e4:	00000042 	andeq	r0, r0, r2, asr #32
 3e8:	160e2302 	strne	r2, [lr], -r2, lsl #6
 3ec:	0066625f 	rsbeq	r6, r6, pc, asr r2
 3f0:	036dbb09 	cmneq	sp, #9216	; 0x2400
 3f4:	23020000 	movwcs	r0, #8192	; 0x2000
 3f8:	00831210 	addeq	r1, r3, r0, lsl r2
 3fc:	bc090000 	stclt	0, cr0, [r9], {-0}
 400:	00000071 	andeq	r0, r0, r1, ror r0
 404:	12182302 	andsne	r2, r8, #134217728	; 0x8000000
 408:	000000eb 	andeq	r0, r0, fp, ror #1
 40c:	0190c309 	orrseq	ip, r0, r9, lsl #6
 410:	23020000 	movwcs	r0, #8192	; 0x2000
 414:	01b6121c 			; <UNDEFINED> instruction: 0x01b6121c
 418:	c5090000 	strgt	r0, [r9, #-0]
 41c:	0000067e 	andeq	r0, r0, lr, ror r6
 420:	12202302 	eorne	r2, r0, #134217728	; 0x8000000
 424:	00000286 	andeq	r0, r0, r6, lsl #5
 428:	06a9c709 	strteq	ip, [r9], r9, lsl #14
 42c:	23020000 	movwcs	r0, #8192	; 0x2000
 430:	041c1224 	ldreq	r1, [ip], #-548	; 0xfffffddc
 434:	ca090000 	bgt	24043c <__mprec_tinytens+0x21bbcc>
 438:	000006ce 	andeq	r0, r0, lr, asr #13
 43c:	12282302 	eorne	r2, r8, #134217728	; 0x8000000
 440:	000005f1 	strdeq	r0, [r0], -r1
 444:	06e9cb09 	strbteq	ip, [r9], r9, lsl #22
 448:	23020000 	movwcs	r0, #8192	; 0x2000
 44c:	755f162c 	ldrbvc	r1, [pc, #-1580]	; fffffe28 <_sp_base+0xbffefe30>
 450:	ce090062 	cdpgt	0, 0, cr0, cr9, cr2, {3}
 454:	0000036d 	andeq	r0, r0, sp, ror #6
 458:	16302302 	ldrtne	r2, [r0], -r2, lsl #6
 45c:	0070755f 	rsbseq	r7, r0, pc, asr r5
 460:	0396cf09 	orrseq	ip, r6, #9, 30	; 0x24
 464:	23020000 	movwcs	r0, #8192	; 0x2000
 468:	755f1638 	ldrbvc	r1, [pc, #-1592]	; fffffe38 <_sp_base+0xbffefe40>
 46c:	d0090072 	andle	r0, r9, r2, ror r0
 470:	00000071 	andeq	r0, r0, r1, ror r0
 474:	123c2302 	eorsne	r2, ip, #134217728	; 0x8000000
 478:	000000c2 	andeq	r0, r0, r2, asr #1
 47c:	06efd309 	strbteq	sp, [pc], r9, lsl #6
 480:	23020000 	movwcs	r0, #8192	; 0x2000
 484:	05c91240 	strbeq	r1, [r9, #576]	; 0x240
 488:	d4090000 	strle	r0, [r9], #-0
 48c:	000006ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
 490:	16432302 	strbne	r2, [r3], -r2, lsl #6
 494:	00626c5f 	rsbeq	r6, r2, pc, asr ip
 498:	036dd709 	cmneq	sp, #2359296	; 0x240000
 49c:	23020000 	movwcs	r0, #8192	; 0x2000
 4a0:	01181244 	tsteq	r8, r4, asr #4
 4a4:	da090000 	ble	2404ac <__mprec_tinytens+0x21bc3c>
 4a8:	00000071 	andeq	r0, r0, r1, ror r0
 4ac:	124c2302 	subne	r2, ip, #134217728	; 0x8000000
 4b0:	00000133 	andeq	r0, r0, r3, lsr r1
 4b4:	0104db09 	tsteq	r4, r9, lsl #22
 4b8:	23020000 	movwcs	r0, #8192	; 0x2000
 4bc:	00461250 	subeq	r1, r6, r0, asr r2
 4c0:	de090000 	cdple	0, 0, cr0, cr9, cr0, {0}
 4c4:	00000515 	andeq	r0, r0, r5, lsl r5
 4c8:	12542302 	subsne	r2, r4, #134217728	; 0x8000000
 4cc:	000003fc 	strdeq	r0, [r0], -ip
 4d0:	0185e209 	orreq	lr, r5, r9, lsl #4
 4d4:	23020000 	movwcs	r0, #8192	; 0x2000
 4d8:	00331258 	eorseq	r1, r3, r8, asr r2
 4dc:	e4090000 	str	r0, [r9], #-0
 4e0:	0000017a 	andeq	r0, r0, sl, ror r1
 4e4:	125c2302 	subsne	r2, ip, #134217728	; 0x8000000
 4e8:	0000027e 	andeq	r0, r0, lr, ror r2
 4ec:	0071e509 	rsbseq	lr, r1, r9, lsl #10
 4f0:	23020000 	movwcs	r0, #8192	; 0x2000
 4f4:	01190064 	tsteq	r9, r4, rrx
 4f8:	00000071 	andeq	r0, r0, r1, ror r0
 4fc:	00000515 	andeq	r0, r0, r5, lsl r5
 500:	00051507 	andeq	r1, r5, r7, lsl #10
 504:	01900700 	orrseq	r0, r0, r0, lsl #14
 508:	92070000 	andls	r0, r7, #0
 50c:	07000001 	streq	r0, [r0, -r1]
 510:	00000071 	andeq	r0, r0, r1, ror r0
 514:	20040900 	andcs	r0, r4, r0, lsl #18
 518:	14000005 	strne	r0, [r0], #-5
 51c:	00000515 	andeq	r0, r0, r5, lsl r5
 520:	0003de1a 	andeq	sp, r3, sl, lsl lr
 524:	09042800 	stmdbeq	r4, {fp, sp}
 528:	067e0239 			; <UNDEFINED> instruction: 0x067e0239
 52c:	2a1b0000 	bcs	6c0534 <__mprec_tinytens+0x69bcc4>
 530:	09000003 	stmdbeq	r0, {r0, r1}
 534:	0071023b 	rsbseq	r0, r1, fp, lsr r2
 538:	23020000 	movwcs	r0, #8192	; 0x2000
 53c:	010a1b00 	tsteq	sl, r0, lsl #22
 540:	40090000 	andmi	r0, r9, r0
 544:	00075c02 	andeq	r5, r7, r2, lsl #24
 548:	04230200 	strteq	r0, [r3], #-512	; 0xfffffe00
 54c:	0001f31b 	andeq	pc, r1, fp, lsl r3	; <UNPREDICTABLE>
 550:	02400900 	subeq	r0, r0, #0, 18
 554:	0000075c 	andeq	r0, r0, ip, asr r7
 558:	1b082302 	blne	209168 <__mprec_tinytens+0x1e48f8>
 55c:	0000018c 	andeq	r0, r0, ip, lsl #3
 560:	5c024009 	stcpl	0, cr4, [r2], {9}
 564:	02000007 	andeq	r0, r0, #7
 568:	901b0c23 	andsls	r0, fp, r3, lsr #24
 56c:	09000003 	stmdbeq	r0, {r0, r1}
 570:	00710242 	rsbseq	r0, r1, r2, asr #4
 574:	23020000 	movwcs	r0, #8192	; 0x2000
 578:	00281b10 	eoreq	r1, r8, r0, lsl fp
 57c:	43090000 	movwmi	r0, #36864	; 0x9000
 580:	00097702 	andeq	r7, r9, r2, lsl #14
 584:	14230200 	strtne	r0, [r3], #-512	; 0xfffffe00
 588:	0003ac1b 	andeq	sl, r3, fp, lsl ip
 58c:	02460900 	subeq	r0, r6, #0, 18
 590:	00000071 	andeq	r0, r0, r1, ror r0
 594:	1b302302 	blne	c091a4 <__mprec_tinytens+0xbe4934>
 598:	0000039a 	muleq	r0, sl, r3
 59c:	8d024709 	stchi	7, cr4, [r2, #-36]	; 0xffffffdc
 5a0:	02000009 	andeq	r0, r0, #9
 5a4:	eb1b3423 	bl	6cd638 <__mprec_tinytens+0x6a8dc8>
 5a8:	09000002 	stmdbeq	r0, {r1}
 5ac:	00710249 	rsbseq	r0, r1, r9, asr #4
 5b0:	23020000 	movwcs	r0, #8192	; 0x2000
 5b4:	03a21b38 			; <UNDEFINED> instruction: 0x03a21b38
 5b8:	4b090000 	blmi	2405c0 <__mprec_tinytens+0x21bd50>
 5bc:	00099f02 	andeq	r9, r9, r2, lsl #30
 5c0:	3c230200 	sfmcc	f0, 4, [r3], #-0
 5c4:	0002521b 	andeq	r5, r2, fp, lsl r2
 5c8:	024e0900 	subeq	r0, lr, #0, 18
 5cc:	0000020e 	andeq	r0, r0, lr, lsl #4
 5d0:	1b402302 	blne	10091e0 <__mprec_tinytens+0xfe4970>
 5d4:	000001bc 			; <UNDEFINED> instruction: 0x000001bc
 5d8:	71024f09 	tstvc	r2, r9, lsl #30
 5dc:	02000000 	andeq	r0, r0, #0
 5e0:	0b1b4423 	bleq	6d1674 <__mprec_tinytens+0x6ace04>
 5e4:	09000006 	stmdbeq	r0, {r1, r2}
 5e8:	020e0250 	andeq	r0, lr, #80, 4
 5ec:	23020000 	movwcs	r0, #8192	; 0x2000
 5f0:	02fd1b48 	rscseq	r1, sp, #72, 22	; 0x12000
 5f4:	51090000 	mrspl	r0, (UNDEF: 9)
 5f8:	0009a502 	andeq	sl, r9, r2, lsl #10
 5fc:	4c230200 	sfmmi	f0, 4, [r3], #-0
 600:	0001fb1b 	andeq	pc, r1, fp, lsl fp	; <UNPREDICTABLE>
 604:	02540900 	subseq	r0, r4, #0, 18
 608:	00000071 	andeq	r0, r0, r1, ror r0
 60c:	1b502302 	blne	140921c <__mprec_tinytens+0x13e49ac>
 610:	0000012b 	andeq	r0, r0, fp, lsr #2
 614:	92025509 	andls	r5, r2, #37748736	; 0x2400000
 618:	02000001 	andeq	r0, r0, #1
 61c:	231b5423 	tstcs	fp, #587202560	; 0x23000000
 620:	09000003 	stmdbeq	r0, {r0, r1}
 624:	09550278 	ldmdbeq	r5, {r3, r4, r5, r6, r9}^
 628:	23020000 	movwcs	r0, #8192	; 0x2000
 62c:	02e31b58 	rsceq	r1, r3, #88, 22	; 0x16000
 630:	7c090000 	stcvc	0, cr0, [r9], {-0}
 634:	00034f02 	andeq	r4, r3, r2, lsl #30
 638:	c8230300 	stmdagt	r3!, {r8, r9}
 63c:	02301b02 	eorseq	r1, r0, #2048	; 0x800
 640:	7d090000 	stcvc	0, cr0, [r9, #-0]
 644:	00030802 	andeq	r0, r3, r2, lsl #16
 648:	cc230300 	stcgt	3, cr0, [r3], #-0
 64c:	05b31b02 	ldreq	r1, [r3, #2818]!	; 0xb02
 650:	81090000 	mrshi	r0, (UNDEF: 9)
 654:	0009b702 	andeq	fp, r9, r2, lsl #14
 658:	dc230300 	stcle	3, cr0, [r3], #-0
 65c:	00f31b05 	rscseq	r1, r3, r5, lsl #22
 660:	86090000 	strhi	r0, [r9], -r0
 664:	00071b02 	andeq	r1, r7, r2, lsl #22
 668:	e0230300 	eor	r0, r3, r0, lsl #6
 66c:	00d81b05 	sbcseq	r1, r8, r5, lsl #22
 670:	87090000 	strhi	r0, [r9, -r0]
 674:	0009c302 	andeq	ip, r9, r2, lsl #6
 678:	ec230300 	stc	3, cr0, [r3], #-0
 67c:	04090005 	streq	r0, [r9], #-5
 680:	000004f6 	strdeq	r0, [r0], -r6
 684:	00710119 	rsbseq	r0, r1, r9, lsl r1
 688:	06a30000 	strteq	r0, [r3], r0
 68c:	15070000 	strne	r0, [r7, #-0]
 690:	07000005 	streq	r0, [r0, -r5]
 694:	00000190 	muleq	r0, r0, r1
 698:	0006a307 	andeq	sl, r6, r7, lsl #6
 69c:	00710700 	rsbseq	r0, r1, r0, lsl #14
 6a0:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
 6a4:	00019f04 	andeq	r9, r1, r4, lsl #30
 6a8:	84040900 	strhi	r0, [r4], #-2304	; 0xfffff700
 6ac:	19000006 	stmdbne	r0, {r1, r2}
 6b0:	00010f01 	andeq	r0, r1, r1, lsl #30
 6b4:	0006ce00 	andeq	ip, r6, r0, lsl #28
 6b8:	05150700 	ldreq	r0, [r5, #-1792]	; 0xfffff900
 6bc:	90070000 	andls	r0, r7, r0
 6c0:	07000001 	streq	r0, [r0, -r1]
 6c4:	0000010f 	andeq	r0, r0, pc, lsl #2
 6c8:	00007107 	andeq	r7, r0, r7, lsl #2
 6cc:	04090000 	streq	r0, [r9], #-0
 6d0:	000006af 	andeq	r0, r0, pc, lsr #13
 6d4:	00710119 	rsbseq	r0, r1, r9, lsl r1
 6d8:	06e90000 	strbteq	r0, [r9], r0
 6dc:	15070000 	strne	r0, [r7, #-0]
 6e0:	07000005 	streq	r0, [r0, -r5]
 6e4:	00000190 	muleq	r0, r0, r1
 6e8:	d4040900 	strle	r0, [r4], #-2304	; 0xfffff700
 6ec:	0f000006 	svceq	0x00000006
 6f0:	0000003b 	andeq	r0, r0, fp, lsr r0
 6f4:	000006ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
 6f8:	0000a710 	andeq	sl, r0, r0, lsl r7
 6fc:	0f000200 	svceq	0x00000200
 700:	0000003b 	andeq	r0, r0, fp, lsr r0
 704:	0000070f 	andeq	r0, r0, pc, lsl #14
 708:	0000a710 	andeq	sl, r0, r0, lsl r7
 70c:	0c000000 	stceq	0, cr0, [r0], {-0}
 710:	00000352 	andeq	r0, r0, r2, asr r3
 714:	9c011f09 	stcls	15, cr1, [r1], {9}
 718:	1c000003 	stcne	0, cr0, [r0], {3}
 71c:	000005a3 	andeq	r0, r0, r3, lsr #11
 720:	0123090c 			; <UNDEFINED> instruction: 0x0123090c
 724:	00000756 	andeq	r0, r0, r6, asr r7
 728:	00037d1b 	andeq	r7, r3, fp, lsl sp
 72c:	01250900 			; <UNDEFINED> instruction: 0x01250900
 730:	00000756 	andeq	r0, r0, r6, asr r7
 734:	1b002302 	blne	9344 <disk_ioctl+0xd8>
 738:	00000216 	andeq	r0, r0, r6, lsl r2
 73c:	71012609 	tstvc	r1, r9, lsl #12
 740:	02000000 	andeq	r0, r0, #0
 744:	4c1b0423 	cfldrsmi	mvf0, [fp], {35}	; 0x23
 748:	09000003 	stmdbeq	r0, {r0, r1}
 74c:	075c0127 	ldrbeq	r0, [ip, -r7, lsr #2]
 750:	23020000 	movwcs	r0, #8192	; 0x2000
 754:	04090008 	streq	r0, [r9], #-8
 758:	0000071b 	andeq	r0, r0, fp, lsl r7
 75c:	070f0409 	streq	r0, [pc, -r9, lsl #8]
 760:	e51c0000 	ldr	r0, [ip, #-0]
 764:	0e000003 	cdpeq	0, 0, cr0, cr0, cr3, {0}
 768:	9d013f09 	stcls	15, cr3, [r1, #-36]	; 0xffffffdc
 76c:	1b000007 	blne	790 <current_sp+0x6dc>
 770:	000003ed 	andeq	r0, r0, sp, ror #7
 774:	9d014009 	stcls	0, cr4, [r1, #-36]	; 0xffffffdc
 778:	02000007 	andeq	r0, r0, #7
 77c:	941b0023 	ldrls	r0, [fp], #-35	; 0xffffffdd
 780:	09000004 	stmdbeq	r0, {r2}
 784:	079d0141 	ldreq	r0, [sp, r1, asr #2]
 788:	23020000 	movwcs	r0, #8192	; 0x2000
 78c:	052a1b06 	streq	r1, [sl, #-2822]!	; 0xfffff4fa
 790:	42090000 	andmi	r0, r9, #0
 794:	00004901 	andeq	r4, r0, r1, lsl #18
 798:	0c230200 	sfmeq	f0, 4, [r3], #-0
 79c:	00490f00 	subeq	r0, r9, r0, lsl #30
 7a0:	07ad0000 	streq	r0, [sp, r0]!
 7a4:	a7100000 	ldrge	r0, [r0, -r0]
 7a8:	02000000 	andeq	r0, r0, #0
 7ac:	09d01d00 	ldmibeq	r0, {r8, sl, fp, ip}^
 7b0:	08dd0259 	ldmeq	sp, {r0, r3, r4, r6, r9}^
 7b4:	771b0000 	ldrvc	r0, [fp, -r0]
 7b8:	09000005 	stmdbeq	r0, {r0, r2}
 7bc:	0083025b 	addeq	r0, r3, fp, asr r2
 7c0:	23020000 	movwcs	r0, #8192	; 0x2000
 7c4:	05141b00 	ldreq	r1, [r4, #-2816]	; 0xfffff500
 7c8:	5c090000 	stcpl	0, cr0, [r9], {-0}
 7cc:	00019202 	andeq	r9, r1, r2, lsl #4
 7d0:	04230200 	strteq	r0, [r3], #-512	; 0xfffffe00
 7d4:	0002451b 	andeq	r4, r2, fp, lsl r5
 7d8:	025d0900 	subseq	r0, sp, #0, 18
 7dc:	000008dd 	ldrdeq	r0, [r0], -sp
 7e0:	1b082302 	blne	2093f0 <__mprec_tinytens+0x1e4b80>
 7e4:	000005e2 	andeq	r0, r0, r2, ror #11
 7e8:	24025e09 	strcs	r5, [r2], #-3593	; 0xfffff1f7
 7ec:	02000002 	andeq	r0, r0, #2
 7f0:	9c1b2423 	cfldrsls	mvf2, [fp], {35}	; 0x23
 7f4:	09000001 	stmdbeq	r0, {r0}
 7f8:	0071025f 	rsbseq	r0, r1, pc, asr r2
 7fc:	23020000 	movwcs	r0, #8192	; 0x2000
 800:	03781b48 	cmneq	r8, #72, 22	; 0x12000
 804:	60090000 	andvs	r0, r9, r0
 808:	00006a02 	andeq	r6, r0, r2, lsl #20
 80c:	50230200 	eorpl	r0, r3, r0, lsl #4
 810:	0005f81b 	andeq	pc, r5, fp, lsl r8	; <UNPREDICTABLE>
 814:	02610900 	rsbeq	r0, r1, #0, 18
 818:	00000762 	andeq	r0, r0, r2, ror #14
 81c:	1b582302 	blne	160942c <__mprec_tinytens+0x15e4bbc>
 820:	00000383 	andeq	r0, r0, r3, lsl #7
 824:	7a026209 	bvc	99050 <__mprec_tinytens+0x747e0>
 828:	02000001 	andeq	r0, r0, #1
 82c:	fd1b6823 	ldc2	8, cr6, [fp, #-140]	; 0xffffff74
 830:	09000005 	stmdbeq	r0, {r0, r2}
 834:	017a0263 	cmneq	sl, r3, ror #4
 838:	23020000 	movwcs	r0, #8192	; 0x2000
 83c:	03071b70 	movweq	r1, #31600	; 0x7b70
 840:	64090000 	strvs	r0, [r9], #-0
 844:	00017a02 	andeq	r7, r1, r2, lsl #20
 848:	78230200 	stmdavc	r3!, {r9}
 84c:	0005a91b 	andeq	sl, r5, fp, lsl r9
 850:	02650900 	rsbeq	r0, r5, #0, 18
 854:	000008ed 	andeq	r0, r0, sp, ror #17
 858:	01802303 	orreq	r2, r0, r3, lsl #6
 85c:	0002391b 	andeq	r3, r2, fp, lsl r9
 860:	02660900 	rsbeq	r0, r6, #0, 18
 864:	000008fd 	strdeq	r0, [r0], -sp
 868:	01882303 	orreq	r2, r8, r3, lsl #6
 86c:	0005371b 	andeq	r3, r5, fp, lsl r7
 870:	02670900 	rsbeq	r0, r7, #0, 18
 874:	00000071 	andeq	r0, r0, r1, ror r0
 878:	01a02303 	lsleq	r2, r3, #6
 87c:	0001571b 	andeq	r5, r1, fp, lsl r7
 880:	02680900 	rsbeq	r0, r8, #0, 18
 884:	0000017a 	andeq	r0, r0, sl, ror r1
 888:	01a42303 			; <UNDEFINED> instruction: 0x01a42303
 88c:	00009c1b 	andeq	r9, r0, fp, lsl ip
 890:	02690900 	rsbeq	r0, r9, #0, 18
 894:	0000017a 	andeq	r0, r0, sl, ror r1
 898:	01ac2303 			; <UNDEFINED> instruction: 0x01ac2303
 89c:	0001461b 	andeq	r4, r1, fp, lsl r6
 8a0:	026a0900 	rsbeq	r0, sl, #0, 18
 8a4:	0000017a 	andeq	r0, r0, sl, ror r1
 8a8:	01b42303 			; <UNDEFINED> instruction: 0x01b42303
 8ac:	00004c1b 	andeq	r4, r0, fp, lsl ip
 8b0:	026b0900 	rsbeq	r0, fp, #0, 18
 8b4:	0000017a 	andeq	r0, r0, sl, ror r1
 8b8:	01bc2303 			; <UNDEFINED> instruction: 0x01bc2303
 8bc:	00005b1b 	andeq	r5, r0, fp, lsl fp
 8c0:	026c0900 	rsbeq	r0, ip, #0, 18
 8c4:	0000017a 	andeq	r0, r0, sl, ror r1
 8c8:	01c42303 	biceq	r2, r4, r3, lsl #6
 8cc:	0003281b 	andeq	r2, r3, fp, lsl r8
 8d0:	026d0900 	rsbeq	r0, sp, #0, 18
 8d4:	00000071 	andeq	r0, r0, r1, ror r0
 8d8:	01cc2303 	biceq	r2, ip, r3, lsl #6
 8dc:	01980f00 	orrseq	r0, r8, r0, lsl #30
 8e0:	08ed0000 	stmiaeq	sp!, {}^	; <UNPREDICTABLE>
 8e4:	a7100000 	ldrge	r0, [r0, -r0]
 8e8:	19000000 	stmdbne	r0, {}	; <UNPREDICTABLE>
 8ec:	01980f00 	orrseq	r0, r8, r0, lsl #30
 8f0:	08fd0000 	ldmeq	sp!, {}^	; <UNPREDICTABLE>
 8f4:	a7100000 	ldrge	r0, [r0, -r0]
 8f8:	07000000 	streq	r0, [r0, -r0]
 8fc:	01980f00 	orrseq	r0, r8, r0, lsl #30
 900:	090d0000 	stmdbeq	sp, {}	; <UNPREDICTABLE>
 904:	a7100000 	ldrge	r0, [r0, -r0]
 908:	17000000 	strne	r0, [r0, -r0]
 90c:	09f01d00 	ldmibeq	r0!, {r8, sl, fp, ip}^
 910:	09350272 	ldmdbeq	r5!, {r1, r4, r5, r6, r9}
 914:	d31b0000 	tstle	fp, #0
 918:	09000002 	stmdbeq	r0, {r1}
 91c:	09350275 	ldmdbeq	r5!, {r0, r2, r4, r5, r6, r9}
 920:	23020000 	movwcs	r0, #8192	; 0x2000
 924:	02a31b00 	adceq	r1, r3, #0, 22
 928:	76090000 	strvc	r0, [r9], -r0
 92c:	00094502 	andeq	r4, r9, r2, lsl #10
 930:	78230200 	stmdavc	r3!, {r9}
 934:	03960f00 	orrseq	r0, r6, #0, 30
 938:	09450000 	stmdbeq	r5, {}^	; <UNPREDICTABLE>
 93c:	a7100000 	ldrge	r0, [r0, -r0]
 940:	1d000000 	stcne	0, cr0, [r0, #-0]
 944:	00830f00 	addeq	r0, r3, r0, lsl #30
 948:	09550000 	ldmdbeq	r5, {}^	; <UNPREDICTABLE>
 94c:	a7100000 	ldrge	r0, [r0, -r0]
 950:	1d000000 	stcne	0, cr0, [r0, #-0]
 954:	09f01e00 	ldmibeq	r0!, {r9, sl, fp, ip}^
 958:	09770257 	ldmdbeq	r7!, {r0, r1, r2, r4, r6, r9}^
 95c:	de1f0000 	cdple	0, 1, cr0, cr15, cr0, {0}
 960:	09000003 	stmdbeq	r0, {r0, r1}
 964:	07ad026e 	streq	r0, [sp, lr, ror #4]!
 968:	cf1f0000 	svcgt	0x001f0000
 96c:	09000005 	stmdbeq	r0, {r0, r2}
 970:	090d0277 	stmdbeq	sp, {r0, r1, r2, r4, r5, r6, r9}
 974:	0f000000 	svceq	0x00000000
 978:	00000198 	muleq	r0, r8, r1
 97c:	00000987 	andeq	r0, r0, r7, lsl #19
 980:	0000a710 	andeq	sl, r0, r0, lsl r7
 984:	0b001800 	bleq	698c <f_stat+0x68>
 988:	0000008c 	andeq	r0, r0, ip, lsl #1
 98c:	87040901 	strhi	r0, [r4, -r1, lsl #18]
 990:	06000009 	streq	r0, [r0], -r9
 994:	00099f01 	andeq	r9, r9, r1, lsl #30
 998:	05150700 	ldreq	r0, [r5, #-1792]	; 0xfffff900
 99c:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
 9a0:	00099304 	andeq	r9, r9, r4, lsl #6
 9a4:	0e040900 	vmlaeq.f16	s0, s8, s0	; <UNPREDICTABLE>
 9a8:	06000002 	streq	r0, [r0], -r2
 9ac:	0009b701 	andeq	fp, r9, r1, lsl #14
 9b0:	00710700 	rsbseq	r0, r1, r0, lsl #14
 9b4:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
 9b8:	0009bd04 	andeq	fp, r9, r4, lsl #26
 9bc:	ab040900 	blge	102dc4 <__mprec_tinytens+0xde554>
 9c0:	0f000009 	svceq	0x00000009
 9c4:	0000070f 	andeq	r0, r0, pc, lsl #14
 9c8:	000009d3 	ldrdeq	r0, [r0], -r3
 9cc:	0000a710 	andeq	sl, r0, r0, lsl r7
 9d0:	20000200 	andcs	r0, r0, r0, lsl #4
 9d4:	0000055b 	andeq	r0, r0, fp, asr r5
 9d8:	1502fe09 	strne	pc, [r2, #-3593]	; 0xfffff1f7
 9dc:	01000005 	tsteq	r0, r5
 9e0:	05542001 	ldrbeq	r2, [r4, #-1]
 9e4:	ff090000 			; <UNDEFINED> instruction: 0xff090000
 9e8:	00051b02 	andeq	r1, r5, r2, lsl #22
 9ec:	03010100 	movweq	r0, #4352	; 0x1100
 9f0:	00000260 	andeq	r0, r0, r0, ror #4
 9f4:	00490d0a 	subeq	r0, r9, sl, lsl #26
 9f8:	44030000 	strmi	r0, [r3], #-0
 9fc:	0a000005 	beq	a18 <current_sp+0x964>
 a00:	0000490e 	andeq	r4, r0, lr, lsl #18
 a04:	02970300 	addseq	r0, r7, #0, 6
 a08:	0f0a0000 	svceq	0x000a0000
 a0c:	00000049 	andeq	r0, r0, r9, asr #32
 a10:	0005bd03 	andeq	fp, r5, r3, lsl #26
 a14:	49100a00 	ldmdbmi	r0, {r9, fp}
 a18:	11000000 	mrsne	r0, (UNDEF: 0)
 a1c:	86110a14 			; <UNDEFINED> instruction: 0x86110a14
 a20:	1200000a 	andne	r0, r0, #10
 a24:	000001ab 	andeq	r0, r0, fp, lsr #3
 a28:	0a86120a 	beq	fe185258 <_sp_base+0xbe175260>
 a2c:	23020000 	movwcs	r0, #8192	; 0x2000
 a30:	013b1200 	teqeq	fp, r0, lsl #4
 a34:	130a0000 	movwne	r0, #40960	; 0xa000
 a38:	00000a86 	andeq	r0, r0, r6, lsl #21
 a3c:	12042302 	andne	r2, r4, #134217728	; 0x8000000
 a40:	000001c6 	andeq	r0, r0, r6, asr #3
 a44:	0190140a 	orrseq	r1, r0, sl, lsl #8
 a48:	23020000 	movwcs	r0, #8192	; 0x2000
 a4c:	000c1208 	andeq	r1, ip, r8, lsl #4
 a50:	150a0000 	strne	r0, [sl, #-0]
 a54:	000009fa 	strdeq	r0, [r0], -sl
 a58:	120c2302 	andne	r2, ip, #134217728	; 0x8000000
 a5c:	00000019 	andeq	r0, r0, r9, lsl r0
 a60:	09ef160a 	stmibeq	pc!, {r1, r3, r9, sl, ip}^	; <UNPREDICTABLE>
 a64:	23020000 	movwcs	r0, #8192	; 0x2000
 a68:	0584120e 	streq	r1, [r4, #526]	; 0x20e
 a6c:	170a0000 	strne	r0, [sl, -r0]
 a70:	00000a05 	andeq	r0, r0, r5, lsl #20
 a74:	12102302 	andsne	r2, r0, #134217728	; 0x8000000
 a78:	000003c5 	andeq	r0, r0, r5, asr #7
 a7c:	008a190a 	addeq	r1, sl, sl, lsl #18
 a80:	23020000 	movwcs	r0, #8192	; 0x2000
 a84:	04090012 	streq	r0, [r9], #-18	; 0xffffffee
 a88:	00000a10 	andeq	r0, r0, r0, lsl sl
 a8c:	00040a03 	andeq	r0, r4, r3, lsl #20
 a90:	1b1b0a00 	blne	6c3298 <__mprec_tinytens+0x69ea28>
 a94:	0800000a 	stmdaeq	r0, {r1, r3}
 a98:	00000209 	andeq	r0, r0, r9, lsl #4
 a9c:	0050600b 	subseq	r6, r0, fp
 aa0:	01010000 	mrseq	r0, (UNDEF: 1)
 aa4:	00017808 	andeq	r7, r1, r8, lsl #16
 aa8:	50610b00 	rsbpl	r0, r1, r0, lsl #22
 aac:	01000000 	mrseq	r0, (UNDEF: 0)
 ab0:	0a8c0f01 	beq	fe3046bc <_sp_base+0xbe2f46c4>
 ab4:	0abc0000 	beq	fef00abc <_sp_base+0xbeef0ac4>
 ab8:	00210000 	eoreq	r0, r1, r0
 abc:	00043308 	andeq	r3, r4, r8, lsl #6
 ac0:	b1090100 	mrslt	r0, (UNDEF: 25)
 ac4:	0100000a 	tsteq	r0, sl
 ac8:	02ac0801 	adceq	r0, ip, #65536	; 0x10000
 acc:	0a010000 	beq	40ad4 <__mprec_tinytens+0x1c264>
 ad0:	0000008a 	andeq	r0, r0, sl, lsl #1
 ad4:	69220101 	stmdbvs	r2!, {r0, r8}
 ad8:	710c0100 	mrsvc	r0, (UNDEF: 28)
 adc:	01000000 	mrseq	r0, (UNDEF: 0)
 ae0:	24280305 	strtcs	r0, [r8], #-773	; 0xfffffcfb
 ae4:	6a224000 	bvs	890aec <__mprec_tinytens+0x86c27c>
 ae8:	710c0100 	mrsvc	r0, (UNDEF: 28)
 aec:	01000000 	mrseq	r0, (UNDEF: 0)
 af0:	24240305 	strtcs	r0, [r4], #-773	; 0xfffffcfb
 af4:	70224000 	eorvc	r4, r2, r0
 af8:	570d0100 	strpl	r0, [sp, -r0, lsl #2]
 afc:	01000000 	mrseq	r0, (UNDEF: 0)
 b00:	24200305 	strtcs	r0, [r0], #-773	; 0xfffffcfb
 b04:	01234000 			; <UNDEFINED> instruction: 0x01234000
 b08:	00000610 	andeq	r0, r0, r0, lsl r6
 b0c:	71012701 	tstvc	r1, r1, lsl #14
 b10:	70000000 	andvc	r0, r0, r0
 b14:	bc400021 	mcrrlt	0, 2, r0, r0, cr1
 b18:	00400022 	subeq	r0, r0, r2, lsr #32
 b1c:	56000000 	strpl	r0, [r0], -r0
 b20:	2400000b 	strcs	r0, [r0], #-11
 b24:	29010069 	stmdbcs	r1, {r0, r3, r5, r6}
 b28:	00000071 	andeq	r0, r0, r1, ror r0
 b2c:	0000002c 	andeq	r0, r0, ip, lsr #32
 b30:	6b6c6225 	blvs	1b193cc <__mprec_tinytens+0x1af4b5c>
 b34:	3b2a0100 	blcc	a80f3c <__mprec_tinytens+0xa5c6cc>
 b38:	04000000 	streq	r0, [r0], #-0
 b3c:	00057026 	andeq	r7, r5, r6, lsr #32
 b40:	3b2a0100 	blcc	a80f48 <__mprec_tinytens+0xa5c6d8>
 b44:	07000000 	streq	r0, [r0, -r0]
 b48:	01006b24 	tsteq	r0, r4, lsr #22
 b4c:	0001902b 	andeq	r9, r1, fp, lsr #32
 b50:	00004a00 	andeq	r4, r0, r0, lsl #20
 b54:	01270000 			; <UNDEFINED> instruction: 0x01270000
 b58:	00000097 	muleq	r0, r7, r0
 b5c:	50010e01 	andpl	r0, r1, r1, lsl #28
 b60:	70400020 	subvc	r0, r0, r0, lsr #32
 b64:	73400021 	movtvc	r0, #33	; 0x21
 b68:	9e000000 	cdpls	0, 0, cr0, cr0, cr0, {0}
 b6c:	2400000b 	strcs	r0, [r0], #-11
 b70:	01006370 	tsteq	r0, r0, ror r3
 b74:	00039610 	andeq	r9, r3, r0, lsl r6
 b78:	0000b700 	andeq	fp, r0, r0, lsl #14
 b7c:	0b9e2800 	bleq	fe78ab84 <_sp_base+0xbe77ab8c>
 b80:	20640000 	rsbcs	r0, r4, r0
 b84:	20704000 	rsbscs	r4, r0, r0
 b88:	64294000 	strtvs	r4, [r9], #-0
 b8c:	70400020 	subvc	r0, r0, r0, lsr #32
 b90:	2a400020 	bcs	1000c18 <__mprec_tinytens+0xfdc3a8>
 b94:	00000bab 	andeq	r0, r0, fp, lsr #23
 b98:	00549102 	subseq	r9, r4, r2, lsl #2
 b9c:	e42b0000 	strt	r0, [fp], #-0
 ba0:	02000001 	andeq	r0, r0, #1
 ba4:	00570126 	subseq	r0, r7, r6, lsr #2
 ba8:	2c030000 	stccs	0, cr0, [r3], {-0}
 bac:	02006370 	andeq	r6, r0, #112, 6	; 0xc0000001
 bb0:	00005e27 	andeq	r5, r0, r7, lsr #28
 bb4:	Address 0x00000bb4 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	00064306 	andeq	r4, r6, r6, lsl #6
  14:	00240200 	eoreq	r0, r4, r0, lsl #4
  18:	0b3e0b0b 	bleq	f82c4c <__mprec_tinytens+0xf5e3dc>
  1c:	00000e03 	andeq	r0, r0, r3, lsl #28
  20:	03001603 	movweq	r1, #1539	; 0x603
  24:	3b0b3a0e 	blcc	2ce864 <__mprec_tinytens+0x2a9ff4>
  28:	0013490b 	andseq	r4, r3, fp, lsl #18
  2c:	00350400 	eorseq	r0, r5, r0, lsl #8
  30:	00001349 	andeq	r1, r0, r9, asr #6
  34:	0b002405 	bleq	9050 <disk_initialize+0x1dc>
  38:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
  3c:	06000008 	streq	r0, [r0], -r8
  40:	0c270115 	stfeqs	f0, [r7], #-84	; 0xffffffac
  44:	00001301 	andeq	r1, r0, r1, lsl #6
  48:	49000507 	stmdbmi	r0, {r0, r1, r2, r8, sl}
  4c:	08000013 	stmdaeq	r0, {r0, r1, r4}
  50:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
  54:	0b3b0b3a 	bleq	ec2d44 <__mprec_tinytens+0xe9e4d4>
  58:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; ffffff3c <_sp_base+0xbffeff44>
  5c:	00000c3c 	andeq	r0, r0, ip, lsr ip
  60:	0b000f09 	bleq	3c8c <LPC2388_Initialize+0x230>
  64:	0013490b 	andseq	r4, r3, fp, lsl #18
  68:	00150a00 	andseq	r0, r5, r0, lsl #20
  6c:	13490c27 	movtne	r0, #39975	; 0x9c27
  70:	130b0000 	movwne	r0, #45056	; 0xb000
  74:	3c0e0300 	stccc	3, cr0, [lr], {-0}
  78:	0c00000c 	stceq	0, cr0, [r0], {12}
  7c:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
  80:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	0b01170d 	bleq	45cc4 <__mprec_tinytens+0x21454>
  8c:	3b0b3a0b 	blcc	2ce8c0 <__mprec_tinytens+0x2aa050>
  90:	0013010b 	andseq	r0, r3, fp, lsl #2
  94:	000d0e00 	andeq	r0, sp, r0, lsl #28
  98:	0b3a0e03 	bleq	e838ac <__mprec_tinytens+0xe5f03c>
  9c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  a0:	010f0000 	mrseq	r0, CPSR
  a4:	01134901 	tsteq	r3, r1, lsl #18
  a8:	10000013 	andne	r0, r0, r3, lsl r0
  ac:	13490021 	movtne	r0, #36897	; 0x9021
  b0:	00000b2f 	andeq	r0, r0, pc, lsr #22
  b4:	0b011311 	bleq	44d00 <__mprec_tinytens+0x20490>
  b8:	3b0b3a0b 	blcc	2ce8ec <__mprec_tinytens+0x2aa07c>
  bc:	0013010b 	andseq	r0, r3, fp, lsl #2
  c0:	000d1200 	andeq	r1, sp, r0, lsl #4
  c4:	0b3a0e03 	bleq	e838d8 <__mprec_tinytens+0xe5f068>
  c8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  cc:	00000a38 	andeq	r0, r0, r8, lsr sl
  d0:	0b000f13 	bleq	3d24 <LPC2388_Initialize+0x2c8>
  d4:	1400000b 	strne	r0, [r0], #-11
  d8:	13490026 	movtne	r0, #36902	; 0x9026
  dc:	13150000 	tstne	r5, #0
  e0:	0b0e0301 	bleq	380cec <__mprec_tinytens+0x35c47c>
  e4:	3b0b3a0b 	blcc	2ce918 <__mprec_tinytens+0x2aa0a8>
  e8:	0013010b 	andseq	r0, r3, fp, lsl #2
  ec:	000d1600 	andeq	r1, sp, r0, lsl #12
  f0:	0b3a0803 	bleq	e82104 <__mprec_tinytens+0xe5d894>
  f4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  f8:	00000a38 	andeq	r0, r0, r8, lsr sl
  fc:	03011317 	movweq	r1, #4887	; 0x1317
 100:	3a050b0e 	bcc	142d40 <__mprec_tinytens+0x11e4d0>
 104:	010b3b0b 	tsteq	fp, fp, lsl #22
 108:	18000013 	stmdane	r0, {r0, r1, r4}
 10c:	0c270015 	stceq	0, cr0, [r7], #-84	; 0xffffffac
 110:	15190000 	ldrne	r0, [r9, #-0]
 114:	490c2701 	stmdbmi	ip, {r0, r8, r9, sl, sp}
 118:	00130113 	andseq	r0, r3, r3, lsl r1
 11c:	01131a00 	tsteq	r3, r0, lsl #20
 120:	050b0e03 	streq	r0, [fp, #-3587]	; 0xfffff1fd
 124:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 128:	00001301 	andeq	r1, r0, r1, lsl #6
 12c:	03000d1b 	movweq	r0, #3355	; 0xd1b
 130:	3b0b3a0e 	blcc	2ce970 <__mprec_tinytens+0x2aa100>
 134:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
 138:	1c00000a 	stcne	0, cr0, [r0], {10}
 13c:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
 140:	0b3a0b0b 	bleq	e82d74 <__mprec_tinytens+0xe5e504>
 144:	1301053b 	movwne	r0, #5435	; 0x153b
 148:	131d0000 	tstne	sp, #0
 14c:	3a0b0b01 	bcc	2c2d58 <__mprec_tinytens+0x29e4e8>
 150:	01053b0b 	tsteq	r5, fp, lsl #22
 154:	1e000013 	mcrne	0, 0, r0, cr0, cr3, {0}
 158:	0b0b0117 	bleq	2c05bc <__mprec_tinytens+0x29bd4c>
 15c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 160:	00001301 	andeq	r1, r0, r1, lsl #6
 164:	03000d1f 	movweq	r0, #3359	; 0xd1f
 168:	3b0b3a0e 	blcc	2ce9a8 <__mprec_tinytens+0x2aa138>
 16c:	00134905 	andseq	r4, r3, r5, lsl #18
 170:	00342000 	eorseq	r2, r4, r0
 174:	0b3a0e03 	bleq	e83988 <__mprec_tinytens+0xe5f118>
 178:	1349053b 	movtne	r0, #38203	; 0x953b
 17c:	0c3c0c3f 	ldceq	12, cr0, [ip], #-252	; 0xffffff04
 180:	21210000 			; <UNDEFINED> instruction: 0x21210000
 184:	22000000 	andcs	r0, r0, #0
 188:	08030034 	stmdaeq	r3, {r2, r4, r5}
 18c:	0b3b0b3a 	bleq	ec2e7c <__mprec_tinytens+0xe9e60c>
 190:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; 74 <current_sp-0x40>
 194:	00000a02 	andeq	r0, r0, r2, lsl #20
 198:	3f012e23 	svccc	0x00012e23
 19c:	3a0e030c 	bcc	380dd4 <__mprec_tinytens+0x35c564>
 1a0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 1a4:	1113490c 	tstne	r3, ip, lsl #18
 1a8:	40011201 	andmi	r1, r1, r1, lsl #4
 1ac:	00130106 	andseq	r0, r3, r6, lsl #2
 1b0:	00342400 	eorseq	r2, r4, r0, lsl #8
 1b4:	0b3a0803 	bleq	e821c8 <__mprec_tinytens+0xe5d958>
 1b8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 1bc:	00000602 	andeq	r0, r0, r2, lsl #12
 1c0:	03003425 	movweq	r3, #1061	; 0x425
 1c4:	3b0b3a08 	blcc	2ce9ec <__mprec_tinytens+0x2aa17c>
 1c8:	1c13490b 			; <UNDEFINED> instruction: 0x1c13490b
 1cc:	2600000b 	strcs	r0, [r0], -fp
 1d0:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 1d4:	0b3b0b3a 	bleq	ec2ec4 <__mprec_tinytens+0xe9e654>
 1d8:	0b1c1349 	bleq	704f04 <__mprec_tinytens+0x6e0694>
 1dc:	2e270000 	cdpcs	0, 2, cr0, cr7, cr0, {0}
 1e0:	030c3f01 	movweq	r3, #52993	; 0xcf01
 1e4:	3b0b3a0e 	blcc	2cea24 <__mprec_tinytens+0x2aa1b4>
 1e8:	110c270b 	tstne	ip, fp, lsl #14
 1ec:	40011201 	andmi	r1, r1, r1, lsl #4
 1f0:	00130106 	andseq	r0, r3, r6, lsl #2
 1f4:	011d2800 	tsteq	sp, r0, lsl #16
 1f8:	01111331 	tsteq	r1, r1, lsr r3
 1fc:	00000112 	andeq	r0, r0, r2, lsl r1
 200:	11010b29 	tstne	r1, r9, lsr #22
 204:	00011201 	andeq	r1, r1, r1, lsl #4
 208:	00342a00 	eorseq	r2, r4, r0, lsl #20
 20c:	0a021331 	beq	84ed8 <__mprec_tinytens+0x60668>
 210:	2e2b0000 	cdpcs	0, 2, cr0, cr11, cr0, {0}
 214:	3a0e0301 	bcc	380e20 <__mprec_tinytens+0x35c5b0>
 218:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 21c:	2013490c 	andscs	r4, r3, ip, lsl #18
 220:	2c00000b 	stccs	0, cr0, [r0], {11}
 224:	08030034 	stmdaeq	r3, {r2, r4, r5}
 228:	0b3b0b3a 	bleq	ec2f18 <__mprec_tinytens+0xe9e6a8>
 22c:	00001349 	andeq	r1, r0, r9, asr #6
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000120 	andeq	r0, r0, r0, lsr #2
   4:	00000124 	andeq	r0, r0, r4, lsr #2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000124 	andeq	r0, r0, r4, lsr #2
  10:	00000240 	andeq	r0, r0, r0, asr #4
  14:	187d0002 	ldmdane	sp!, {r1}^
  18:	00000240 	andeq	r0, r0, r0, asr #4
  1c:	0000026c 	andeq	r0, r0, ip, ror #4
  20:	007d0002 	rsbseq	r0, sp, r2
	...
  2c:	0000020c 	andeq	r0, r0, ip, lsl #4
  30:	00000224 	andeq	r0, r0, r4, lsr #4
  34:	28540001 	ldmdacs	r4, {r0}^
  38:	40000002 	andmi	r0, r0, r2
  3c:	01000002 	tsteq	r0, r2
  40:	00005400 	andeq	r5, r0, r0, lsl #8
  44:	00000000 	andeq	r0, r0, r0
  48:	01bc0000 			; <UNDEFINED> instruction: 0x01bc0000
  4c:	01c40000 	biceq	r0, r4, r0
  50:	00010000 	andeq	r0, r1, r0
  54:	0001c450 	andeq	ip, r1, r0, asr r4
  58:	0001c700 	andeq	ip, r1, r0, lsl #14
  5c:	51000100 	mrspl	r0, (UNDEF: 16)
  60:	000001c7 	andeq	r0, r0, r7, asr #3
  64:	0000020c 	andeq	r0, r0, ip, lsl #4
  68:	00550001 	subseq	r0, r5, r1
	...
  74:	04000000 	streq	r0, [r0], #-0
  78:	02000000 	andeq	r0, r0, #0
  7c:	04007d00 	streq	r7, [r0], #-3328	; 0xfffff300
  80:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
  84:	02000000 	andeq	r0, r0, #0
  88:	08247d00 	stmdaeq	r4!, {r8, sl, fp, ip, sp, lr}
  8c:	f4000000 	vst4.8	{d0-d3}, [r0], r0
  90:	02000000 	andeq	r0, r0, #0
  94:	f4307d00 			; <UNDEFINED> instruction: 0xf4307d00
  98:	f8000000 			; <UNDEFINED> instruction: 0xf8000000
  9c:	02000000 	andeq	r0, r0, #0
  a0:	f8247d00 			; <UNDEFINED> instruction: 0xf8247d00
  a4:	20000000 	andcs	r0, r0, r0
  a8:	02000001 	andeq	r0, r0, #1
  ac:	00007d00 	andeq	r7, r0, r0, lsl #26
  b0:	00000000 	andeq	r0, r0, r0
  b4:	14000000 	strne	r0, [r0], #-0
  b8:	2c000000 	stccs	0, cr0, [r0], {-0}
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	002c5000 	eoreq	r5, ip, r0
  c4:	002f0000 	eoreq	r0, pc, r0
  c8:	00010000 	andeq	r0, r1, r0
  cc:	00006c52 	andeq	r6, r0, r2, asr ip
  d0:	00007300 	andeq	r7, r0, r0, lsl #6
  d4:	50000100 	andpl	r0, r0, r0, lsl #2
  d8:	00000073 	andeq	r0, r0, r3, ror r0
  dc:	000000f8 	strdeq	r0, [r0], -r8
  e0:	00550001 	subseq	r0, r5, r1
  e4:	00000000 	andeq	r0, r0, r0
  e8:	Address 0x000000e8 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	40002050 	andmi	r2, r0, r0, asr r0
  14:	0000026c 	andeq	r0, r0, ip, ror #4
	...

Disassembly of section .debug_macinfo:

00000000 <.debug_macinfo>:
       0:	5f5f0001 	svcpl	0x005f0001
       4:	43445453 	movtmi	r5, #17491	; 0x4453
       8:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
       c:	5f000100 	svcpl	0x00000100
      10:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
      14:	45565f43 	ldrbmi	r5, [r6, #-3907]	; 0xfffff0bd
      18:	4f495352 	svcmi	0x00495352
      1c:	205f5f4e 	subscs	r5, pc, lr, asr #30
      20:	31313032 	teqcc	r1, r2, lsr r0
      24:	004c3231 	subeq	r3, ip, r1, lsr r2
      28:	5f5f0001 	svcpl	0x005f0001
      2c:	43445453 	movtmi	r5, #17491	; 0x4453
      30:	4654555f 			; <UNDEFINED> instruction: 0x4654555f
      34:	5f36315f 	svcpl	0x0036315f
      38:	0031205f 	eorseq	r2, r1, pc, asr r0
      3c:	5f5f0001 	svcpl	0x005f0001
      40:	43445453 	movtmi	r5, #17491	; 0x4453
      44:	4654555f 			; <UNDEFINED> instruction: 0x4654555f
      48:	5f32335f 	svcpl	0x0032335f
      4c:	0031205f 	eorseq	r2, r1, pc, asr r0
      50:	5f5f0001 	svcpl	0x005f0001
      54:	43445453 	movtmi	r5, #17491	; 0x4453
      58:	534f485f 	movtpl	r4, #63583	; 0xf85f
      5c:	5f444554 	svcpl	0x00444554
      60:	0031205f 	eorseq	r2, r1, pc, asr r0
      64:	5f5f0001 	svcpl	0x005f0001
      68:	43554e47 	cmpmi	r5, #1136	; 0x470
      6c:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
      70:	5f000100 	svcpl	0x00000100
      74:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
      78:	494d5f43 	stmdbmi	sp, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
      7c:	5f524f4e 	svcpl	0x00524f4e
      80:	0033205f 	eorseq	r2, r3, pc, asr r0
      84:	5f5f0001 	svcpl	0x005f0001
      88:	43554e47 	cmpmi	r5, #1136	; 0x470
      8c:	5441505f 	strbpl	r5, [r1], #-95	; 0xffffffa1
      90:	454c4843 	strbmi	r4, [ip, #-2115]	; 0xfffff7bd
      94:	5f4c4556 	svcpl	0x004c4556
      98:	0031205f 	eorseq	r2, r1, pc, asr r0
      9c:	5f5f0001 	svcpl	0x005f0001
      a0:	53524556 	cmppl	r2, #360710144	; 0x15800000
      a4:	5f4e4f49 	svcpl	0x004e4f49
      a8:	3622205f 			; <UNDEFINED> instruction: 0x3622205f
      ac:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
      b0:	31303220 	teqcc	r0, r0, lsr #4
      b4:	32363037 	eorscc	r3, r6, #55	; 0x37
      b8:	72282030 	eorvc	r2, r8, #48	; 0x30
      bc:	61656c65 	cmnvs	r5, r5, ror #24
      c0:	20296573 	eorcs	r6, r9, r3, ror r5
      c4:	4d52415b 	ldfmie	f4, [r2, #-364]	; 0xfffffe94
      c8:	626d652f 	rsbvs	r6, sp, #197132288	; 0xbc00000
      cc:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
      d0:	2d362d64 	ldccs	13, cr2, [r6, #-400]!	; 0xfffffe70
      d4:	6e617262 	cdpvs	2, 6, cr7, cr1, cr2, {3}
      d8:	72206863 	eorvc	r6, r0, #6488064	; 0x630000
      dc:	73697665 	cmnvc	r9, #105906176	; 0x6500000
      e0:	206e6f69 	rsbcs	r6, lr, r9, ror #30
      e4:	34393432 	ldrtcc	r3, [r9], #-1074	; 0xfffffbce
      e8:	225d3733 	subscs	r3, sp, #13369344	; 0xcc0000
      ec:	5f000100 	svcpl	0x00000100
      f0:	4f54415f 	svcmi	0x0054415f
      f4:	5f43494d 	svcpl	0x0043494d
      f8:	414c4552 	cmpmi	ip, r2, asr r5
      fc:	20444558 	subcs	r4, r4, r8, asr r5
     100:	00010030 	andeq	r0, r1, r0, lsr r0
     104:	54415f5f 	strbpl	r5, [r1], #-3935	; 0xfffff0a1
     108:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
     10c:	5145535f 	cmppl	r5, pc, asr r3
     110:	5453435f 	ldrbpl	r4, [r3], #-863	; 0xfffffca1
     114:	01003520 	tsteq	r0, r0, lsr #10
     118:	415f5f00 	cmpmi	pc, r0, lsl #30
     11c:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
     120:	43415f43 	movtmi	r5, #8003	; 0x1f43
     124:	52495551 	subpl	r5, r9, #339738624	; 0x14400000
     128:	00322045 	eorseq	r2, r2, r5, asr #32
     12c:	5f5f0001 	svcpl	0x005f0001
     130:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 34 <current_sp-0x80>
     134:	525f4349 	subspl	r4, pc, #603979777	; 0x24000001
     138:	41454c45 	cmpmi	r5, r5, asr #24
     13c:	33204553 			; <UNDEFINED> instruction: 0x33204553
     140:	5f000100 	svcpl	0x00000100
     144:	4f54415f 	svcmi	0x0054415f
     148:	5f43494d 	svcpl	0x0043494d
     14c:	5f514341 	svcpl	0x00514341
     150:	204c4552 	subcs	r4, ip, r2, asr r5
     154:	00010034 	andeq	r0, r1, r4, lsr r0
     158:	54415f5f 	strbpl	r5, [r1], #-3935	; 0xfffff0a1
     15c:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
     160:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
     164:	454d5553 	strbmi	r5, [sp, #-1363]	; 0xfffffaad
     168:	01003120 	tsteq	r0, r0, lsr #2
     16c:	4f5f5f00 	svcmi	0x005f5f00
     170:	4d495450 	cfstrdmi	mvd5, [r9, #-320]	; 0xfffffec0
     174:	5f455a49 	svcpl	0x00455a49
     178:	0031205f 	eorseq	r2, r1, pc, asr r0
     17c:	5f5f0001 	svcpl	0x005f0001
     180:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
     184:	4d5f4554 	cfldr64mi	mvdx4, [pc, #-336]	; 3c <current_sp-0x78>
     188:	5f485441 	svcpl	0x00485441
     18c:	594c4e4f 	stmdbpl	ip, {r0, r1, r2, r3, r6, r9, sl, fp, lr}^
     190:	30205f5f 	eorcc	r5, r0, pc, asr pc
     194:	5f000100 	svcpl	0x00000100
     198:	5a49535f 	bpl	1254f1c <__mprec_tinytens+0x12306ac>
     19c:	5f464f45 	svcpl	0x00464f45
     1a0:	5f544e49 	svcpl	0x00544e49
     1a4:	0034205f 	eorseq	r2, r4, pc, asr r0
     1a8:	5f5f0001 	svcpl	0x005f0001
     1ac:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
     1b0:	4c5f464f 	mrrcmi	6, 4, r4, pc, cr15	; <UNPREDICTABLE>
     1b4:	5f474e4f 	svcpl	0x00474e4f
     1b8:	0034205f 	eorseq	r2, r4, pc, asr r0
     1bc:	5f5f0001 	svcpl	0x005f0001
     1c0:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
     1c4:	4c5f464f 	mrrcmi	6, 4, r4, pc, cr15	; <UNPREDICTABLE>
     1c8:	5f474e4f 	svcpl	0x00474e4f
     1cc:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
     1d0:	38205f5f 	stmdacc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
     1d4:	5f000100 	svcpl	0x00000100
     1d8:	5a49535f 	bpl	1254f5c <__mprec_tinytens+0x12306ec>
     1dc:	5f464f45 	svcpl	0x00464f45
     1e0:	524f4853 	subpl	r4, pc, #5439488	; 0x530000
     1e4:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     1e8:	00010032 	andeq	r0, r1, r2, lsr r0
     1ec:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     1f0:	464f455a 			; <UNDEFINED> instruction: 0x464f455a
     1f4:	4f4c465f 	svcmi	0x004c465f
     1f8:	5f5f5441 	svcpl	0x005f5441
     1fc:	01003420 	tsteq	r0, r0, lsr #8
     200:	535f5f00 	cmppl	pc, #0, 30
     204:	4f455a49 	svcmi	0x00455a49
     208:	4f445f46 	svcmi	0x00445f46
     20c:	454c4255 	strbmi	r4, [ip, #-597]	; 0xfffffdab
     210:	38205f5f 	stmdacc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
     214:	5f000100 	svcpl	0x00000100
     218:	5a49535f 	bpl	1254f9c <__mprec_tinytens+0x123072c>
     21c:	5f464f45 	svcpl	0x00464f45
     220:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
     224:	554f445f 	strbpl	r4, [pc, #-1119]	; fffffdcd <_sp_base+0xbffefdd5>
     228:	5f454c42 	svcpl	0x00454c42
     22c:	0038205f 	eorseq	r2, r8, pc, asr r0
     230:	5f5f0001 	svcpl	0x005f0001
     234:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
     238:	535f464f 	cmppl	pc, #82837504	; 0x4f00000
     23c:	5f455a49 	svcpl	0x00455a49
     240:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     244:	00010034 	andeq	r0, r1, r4, lsr r0
     248:	48435f5f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     24c:	425f5241 	subsmi	r5, pc, #268435460	; 0x10000004
     250:	5f5f5449 	svcpl	0x005f5449
     254:	01003820 	tsteq	r0, r0, lsr #16
     258:	425f5f00 	subsmi	r5, pc, #0, 30
     25c:	45474749 	strbmi	r4, [r7, #-1865]	; 0xfffff8b7
     260:	415f5453 	cmpmi	pc, r3, asr r4	; <UNPREDICTABLE>
     264:	4e47494c 	vmlsmi.f16	s9, s14, s24	; <UNPREDICTABLE>
     268:	544e454d 	strbpl	r4, [lr], #-1357	; 0xfffffab3
     26c:	38205f5f 	stmdacc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
     270:	5f000100 	svcpl	0x00000100
     274:	44524f5f 	ldrbmi	r4, [r2], #-3935	; 0xfffff0a1
     278:	4c5f5245 	lfmmi	f5, 2, [pc], {69}	; 0x45
     27c:	4c545449 	cfldrdmi	mvd5, [r4], {73}	; 0x49
     280:	4e455f45 	cdpmi	15, 4, cr5, cr5, cr5, {2}
     284:	4e414944 	vmlsmi.f16	s9, s2, s8	; <UNPREDICTABLE>
     288:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     28c:	00343332 	eorseq	r3, r4, r2, lsr r3
     290:	5f5f0001 	svcpl	0x005f0001
     294:	4544524f 	strbmi	r5, [r4, #-591]	; 0xfffffdb1
     298:	49425f52 	stmdbmi	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
     29c:	4e455f47 	cdpmi	15, 4, cr5, cr5, cr7, {2}
     2a0:	4e414944 	vmlsmi.f16	s9, s2, s8	; <UNPREDICTABLE>
     2a4:	34205f5f 	strtcc	r5, [r0], #-3935	; 0xfffff0a1
     2a8:	00313233 	eorseq	r3, r1, r3, lsr r2
     2ac:	5f5f0001 	svcpl	0x005f0001
     2b0:	4544524f 	strbmi	r5, [r4, #-591]	; 0xfffffdb1
     2b4:	44505f52 	ldrbmi	r5, [r0], #-3922	; 0xfffff0ae
     2b8:	4e455f50 	mcrmi	15, 2, r5, cr5, cr0, {2}
     2bc:	4e414944 	vmlsmi.f16	s9, s2, s8	; <UNPREDICTABLE>
     2c0:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
     2c4:	00323134 	eorseq	r3, r2, r4, lsr r1
     2c8:	5f5f0001 	svcpl	0x005f0001
     2cc:	45545942 	ldrbmi	r5, [r4, #-2370]	; 0xfffff6be
     2d0:	44524f5f 	ldrbmi	r4, [r2], #-3935	; 0xfffff0a1
     2d4:	5f5f5245 	svcpl	0x005f5245
     2d8:	4f5f5f20 	svcmi	0x005f5f20
     2dc:	52454452 	subpl	r4, r5, #1375731712	; 0x52000000
     2e0:	54494c5f 	strbpl	r4, [r9], #-3167	; 0xfffff3a1
     2e4:	5f454c54 	svcpl	0x00454c54
     2e8:	49444e45 	stmdbmi	r4, {r0, r2, r6, r9, sl, fp, lr}^
     2ec:	5f5f4e41 	svcpl	0x005f4e41
     2f0:	5f000100 	svcpl	0x00000100
     2f4:	4f4c465f 	svcmi	0x004c465f
     2f8:	575f5441 	ldrbpl	r5, [pc, -r1, asr #8]
     2fc:	5f44524f 	svcpl	0x0044524f
     300:	4544524f 	strbmi	r5, [r4, #-591]	; 0xfffffdb1
     304:	205f5f52 	subscs	r5, pc, r2, asr pc	; <UNPREDICTABLE>
     308:	524f5f5f 	subpl	r5, pc, #380	; 0x17c
     30c:	5f524544 	svcpl	0x00524544
     310:	5454494c 	ldrbpl	r4, [r4], #-2380	; 0xfffff6b4
     314:	455f454c 	ldrbmi	r4, [pc, #-1356]	; fffffdd0 <_sp_base+0xbffefdd8>
     318:	4149444e 	cmpmi	r9, lr, asr #8
     31c:	005f5f4e 	subseq	r5, pc, lr, asr #30
     320:	5f5f0001 	svcpl	0x005f0001
     324:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
     328:	505f464f 	subspl	r4, pc, pc, asr #12
     32c:	544e494f 	strbpl	r4, [lr], #-2383	; 0xfffff6b1
     330:	5f5f5245 	svcpl	0x005f5245
     334:	01003420 	tsteq	r0, r0, lsr #8
     338:	535f5f00 	cmppl	pc, #0, 30
     33c:	5f455a49 	svcpl	0x00455a49
     340:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     344:	75205f5f 	strvc	r5, [r0, #-3935]!	; 0xfffff0a1
     348:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
     34c:	2064656e 	rsbcs	r6, r4, lr, ror #10
     350:	00746e69 	rsbseq	r6, r4, r9, ror #28
     354:	5f5f0001 	svcpl	0x005f0001
     358:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
     35c:	5f464649 	svcpl	0x00464649
     360:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     364:	69205f5f 	stmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
     368:	0100746e 	tsteq	r0, lr, ror #8
     36c:	575f5f00 	ldrbpl	r5, [pc, -r0, lsl #30]
     370:	52414843 	subpl	r4, r1, #4390912	; 0x430000
     374:	5059545f 	subspl	r5, r9, pc, asr r4
     378:	205f5f45 	subscs	r5, pc, r5, asr #30
     37c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     380:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     384:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     388:	5f000100 	svcpl	0x00000100
     38c:	4e49575f 	mcrmi	7, 2, r5, cr9, cr15, {2}
     390:	59545f54 	ldmdbpl	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
     394:	5f5f4550 	svcpl	0x005f4550
     398:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
     39c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
     3a0:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
     3a4:	00010074 	andeq	r0, r1, r4, ror r0
     3a8:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     3ac:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
     3b0:	5059545f 	subspl	r5, r9, pc, asr r4
     3b4:	205f5f45 	subscs	r5, pc, r5, asr #30
     3b8:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
     3bc:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
     3c0:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
     3c4:	00010074 	andeq	r0, r1, r4, ror r0
     3c8:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     3cc:	414d544e 	cmpmi	sp, lr, asr #8
     3d0:	59545f58 	ldmdbpl	r4, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     3d4:	5f5f4550 	svcpl	0x005f4550
     3d8:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
     3dc:	6f6c2067 	svcvs	0x006c2067
     3e0:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
     3e4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
     3e8:	2064656e 	rsbcs	r6, r4, lr, ror #10
     3ec:	00746e69 	rsbseq	r6, r4, r9, ror #28
     3f0:	5f5f0001 	svcpl	0x005f0001
     3f4:	52414843 	subpl	r4, r1, #4390912	; 0x430000
     3f8:	545f3631 	ldrbpl	r3, [pc], #-1585	; 400 <current_sp+0x34c>
     3fc:	5f455059 	svcpl	0x00455059
     400:	6873205f 	ldmdavs	r3!, {r0, r1, r2, r3, r4, r6, sp}^
     404:	2074726f 	rsbscs	r7, r4, pc, ror #4
     408:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     40c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     410:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     414:	5f000100 	svcpl	0x00000100
     418:	4148435f 	cmpmi	r8, pc, asr r3
     41c:	5f323352 	svcpl	0x00323352
     420:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     424:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
     428:	20676e6f 	rsbcs	r6, r7, pc, ror #28
     42c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     430:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     434:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     438:	5f000100 	svcpl	0x00000100
     43c:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
     440:	4f54415f 	svcmi	0x0054415f
     444:	5f43494d 	svcpl	0x0043494d
     448:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     44c:	69205f5f 	stmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
     450:	0100746e 	tsteq	r0, lr, ror #8
     454:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     458:	5f38544e 	svcpl	0x0038544e
     45c:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     460:	73205f5f 			; <UNDEFINED> instruction: 0x73205f5f
     464:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
     468:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
     46c:	01007261 	tsteq	r0, r1, ror #4
     470:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     474:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
     478:	5059545f 	subspl	r5, r9, pc, asr r4
     47c:	205f5f45 	subscs	r5, pc, r5, asr #30
     480:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
     484:	6e692074 	mcrvs	0, 3, r2, cr9, cr4, {3}
     488:	00010074 	andeq	r0, r1, r4, ror r0
     48c:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     490:	5f323354 	svcpl	0x00323354
     494:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     498:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
     49c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
     4a0:	00746e69 	rsbseq	r6, r4, r9, ror #28
     4a4:	5f5f0001 	svcpl	0x005f0001
     4a8:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
     4ac:	59545f34 	ldmdbpl	r4, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
     4b0:	5f5f4550 	svcpl	0x005f4550
     4b4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
     4b8:	6f6c2067 	svcvs	0x006c2067
     4bc:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
     4c0:	0100746e 	tsteq	r0, lr, ror #8
     4c4:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffff5cc <_sp_base+0xbffef5d4>
     4c8:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
     4cc:	5059545f 	subspl	r5, r9, pc, asr r4
     4d0:	205f5f45 	subscs	r5, pc, r5, asr #30
     4d4:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     4d8:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     4dc:	61686320 	cmnvs	r8, r0, lsr #6
     4e0:	00010072 	andeq	r0, r1, r2, ror r0
     4e4:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     4e8:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
     4ec:	5059545f 	subspl	r5, r9, pc, asr r4
     4f0:	205f5f45 	subscs	r5, pc, r5, asr #30
     4f4:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
     4f8:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
     4fc:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
     500:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
     504:	0100746e 	tsteq	r0, lr, ror #8
     508:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffff610 <_sp_base+0xbffef618>
     50c:	33544e49 	cmpcc	r4, #1168	; 0x490
     510:	59545f32 	ldmdbpl	r4, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
     514:	5f5f4550 	svcpl	0x005f4550
     518:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
     51c:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
     520:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
     524:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
     528:	0100746e 	tsteq	r0, lr, ror #8
     52c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffff634 <_sp_base+0xbffef63c>
     530:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
     534:	59545f34 	ldmdbpl	r4, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
     538:	5f5f4550 	svcpl	0x005f4550
     53c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
     540:	6f6c2067 	svcvs	0x006c2067
     544:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
     548:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
     54c:	2064656e 	rsbcs	r6, r4, lr, ror #10
     550:	00746e69 	rsbseq	r6, r4, r9, ror #28
     554:	5f5f0001 	svcpl	0x005f0001
     558:	5f544e49 	svcpl	0x00544e49
     55c:	5341454c 	movtpl	r4, #5452	; 0x154c
     560:	545f3854 	ldrbpl	r3, [pc], #-2132	; 568 <current_sp+0x4b4>
     564:	5f455059 	svcpl	0x00455059
     568:	6973205f 	ldmdbvs	r3!, {r0, r1, r2, r3, r4, r6, sp}^
     56c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     570:	61686320 	cmnvs	r8, r0, lsr #6
     574:	00010072 	andeq	r0, r1, r2, ror r0
     578:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     57c:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
     580:	31545341 	cmpcc	r4, r1, asr #6
     584:	59545f36 	ldmdbpl	r4, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
     588:	5f5f4550 	svcpl	0x005f4550
     58c:	6f687320 	svcvs	0x00687320
     590:	69207472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, ip, sp, lr}
     594:	0100746e 	tsteq	r0, lr, ror #8
     598:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     59c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
     5a0:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
     5a4:	545f3233 	ldrbpl	r3, [pc], #-563	; 5ac <current_sp+0x4f8>
     5a8:	5f455059 	svcpl	0x00455059
     5ac:	6f6c205f 	svcvs	0x006c205f
     5b0:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
     5b4:	0100746e 	tsteq	r0, lr, ror #8
     5b8:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     5bc:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
     5c0:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
     5c4:	545f3436 	ldrbpl	r3, [pc], #-1078	; 5cc <current_sp+0x518>
     5c8:	5f455059 	svcpl	0x00455059
     5cc:	6f6c205f 	svcvs	0x006c205f
     5d0:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
     5d4:	20676e6f 	rsbcs	r6, r7, pc, ror #28
     5d8:	00746e69 	rsbseq	r6, r4, r9, ror #28
     5dc:	5f5f0001 	svcpl	0x005f0001
     5e0:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
     5e4:	41454c5f 	cmpmi	r5, pc, asr ip
     5e8:	5f385453 	svcpl	0x00385453
     5ec:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     5f0:	75205f5f 	strvc	r5, [r0, #-3935]!	; 0xfffff0a1
     5f4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
     5f8:	2064656e 	rsbcs	r6, r4, lr, ror #10
     5fc:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
     600:	5f000100 	svcpl	0x00000100
     604:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
     608:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
     60c:	31545341 	cmpcc	r4, r1, asr #6
     610:	59545f36 	ldmdbpl	r4, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
     614:	5f5f4550 	svcpl	0x005f4550
     618:	6f687320 	svcvs	0x00687320
     61c:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
     620:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
     624:	2064656e 	rsbcs	r6, r4, lr, ror #10
     628:	00746e69 	rsbseq	r6, r4, r9, ror #28
     62c:	5f5f0001 	svcpl	0x005f0001
     630:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
     634:	41454c5f 	cmpmi	r5, pc, asr ip
     638:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
     63c:	5059545f 	subspl	r5, r9, pc, asr r4
     640:	205f5f45 	subscs	r5, pc, r5, asr #30
     644:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
     648:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
     64c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
     650:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
     654:	00010074 	andeq	r0, r1, r4, ror r0
     658:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     65c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
     660:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
     664:	545f3436 	ldrbpl	r3, [pc], #-1078	; 66c <current_sp+0x5b8>
     668:	5f455059 	svcpl	0x00455059
     66c:	6f6c205f 	svcvs	0x006c205f
     670:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
     674:	20676e6f 	rsbcs	r6, r7, pc, ror #28
     678:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     67c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     680:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     684:	5f000100 	svcpl	0x00000100
     688:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     68c:	5341465f 	movtpl	r4, #5727	; 0x165f
     690:	545f3854 	ldrbpl	r3, [pc], #-2132	; 698 <current_sp+0x5e4>
     694:	5f455059 	svcpl	0x00455059
     698:	6e69205f 	mcrvs	0, 3, r2, cr9, cr15, {2}
     69c:	00010074 	andeq	r0, r1, r4, ror r0
     6a0:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     6a4:	41465f54 	cmpmi	r6, r4, asr pc
     6a8:	36315453 			; <UNDEFINED> instruction: 0x36315453
     6ac:	5059545f 	subspl	r5, r9, pc, asr r4
     6b0:	205f5f45 	subscs	r5, pc, r5, asr #30
     6b4:	00746e69 	rsbseq	r6, r4, r9, ror #28
     6b8:	5f5f0001 	svcpl	0x005f0001
     6bc:	5f544e49 	svcpl	0x00544e49
     6c0:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     6c4:	545f3233 	ldrbpl	r3, [pc], #-563	; 6cc <current_sp+0x618>
     6c8:	5f455059 	svcpl	0x00455059
     6cc:	6e69205f 	mcrvs	0, 3, r2, cr9, cr15, {2}
     6d0:	00010074 	andeq	r0, r1, r4, ror r0
     6d4:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     6d8:	41465f54 	cmpmi	r6, r4, asr pc
     6dc:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
     6e0:	5059545f 	subspl	r5, r9, pc, asr r4
     6e4:	205f5f45 	subscs	r5, pc, r5, asr #30
     6e8:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
     6ec:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
     6f0:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
     6f4:	00010074 	andeq	r0, r1, r4, ror r0
     6f8:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     6fc:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
     700:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
     704:	5059545f 	subspl	r5, r9, pc, asr r4
     708:	205f5f45 	subscs	r5, pc, r5, asr #30
     70c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     710:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     714:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     718:	5f000100 	svcpl	0x00000100
     71c:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
     720:	41465f54 	cmpmi	r6, r4, asr pc
     724:	36315453 			; <UNDEFINED> instruction: 0x36315453
     728:	5059545f 	subspl	r5, r9, pc, asr r4
     72c:	205f5f45 	subscs	r5, pc, r5, asr #30
     730:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     734:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     738:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     73c:	5f000100 	svcpl	0x00000100
     740:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
     744:	41465f54 	cmpmi	r6, r4, asr pc
     748:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
     74c:	5059545f 	subspl	r5, r9, pc, asr r4
     750:	205f5f45 	subscs	r5, pc, r5, asr #30
     754:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     758:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     75c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     760:	5f000100 	svcpl	0x00000100
     764:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
     768:	41465f54 	cmpmi	r6, r4, asr pc
     76c:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
     770:	5059545f 	subspl	r5, r9, pc, asr r4
     774:	205f5f45 	subscs	r5, pc, r5, asr #30
     778:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
     77c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
     780:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
     784:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
     788:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
     78c:	0100746e 	tsteq	r0, lr, ror #8
     790:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     794:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
     798:	59545f52 	ldmdbpl	r4, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
     79c:	5f5f4550 	svcpl	0x005f4550
     7a0:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     7a4:	5f000100 	svcpl	0x00000100
     7a8:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
     7ac:	52545054 	subspl	r5, r4, #84	; 0x54
     7b0:	5059545f 	subspl	r5, r9, pc, asr r4
     7b4:	205f5f45 	subscs	r5, pc, r5, asr #30
     7b8:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     7bc:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     7c0:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     7c4:	5f000100 	svcpl	0x00000100
     7c8:	7361685f 	cmnvc	r1, #6225920	; 0x5f0000
     7cc:	636e695f 	cmnvs	lr, #1556480	; 0x17c000
     7d0:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
     7d4:	52545328 	subspl	r5, r4, #40, 6	; 0xa0000000
     7d8:	5f5f2029 	svcpl	0x005f2029
     7dc:	5f736168 	svcpl	0x00736168
     7e0:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     7e4:	5f656475 	svcpl	0x00656475
     7e8:	5453285f 	ldrbpl	r2, [r3], #-2143	; 0xfffff7a1
     7ec:	01002952 	tsteq	r0, r2, asr r9
     7f0:	685f5f00 	ldmdavs	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     7f4:	695f7361 	ldmdbvs	pc, {r0, r5, r6, r8, r9, ip, sp, lr}^	; <UNPREDICTABLE>
     7f8:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
     7fc:	6e5f6564 	cdpvs	5, 5, cr6, cr15, cr4, {3}
     800:	28747865 	ldmdacs	r4!, {r0, r2, r5, r6, fp, ip, sp, lr}^
     804:	29525453 	ldmdbcs	r2, {r0, r1, r4, r6, sl, ip, lr}^
     808:	685f5f20 	ldmdavs	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     80c:	695f7361 	ldmdbvs	pc, {r0, r5, r6, r8, r9, ip, sp, lr}^	; <UNPREDICTABLE>
     810:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
     814:	6e5f6564 	cdpvs	5, 5, cr6, cr15, cr4, {3}
     818:	5f747865 	svcpl	0x00747865
     81c:	5453285f 	ldrbpl	r2, [r3], #-2143	; 0xfffff7a1
     820:	01002952 	tsteq	r0, r2, asr r9
     824:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
     828:	415f5858 	cmpmi	pc, r8, asr r8	; <UNPREDICTABLE>
     82c:	565f4942 	ldrbpl	r4, [pc], -r2, asr #18
     830:	49535245 	ldmdbmi	r3, {r0, r2, r6, r9, ip, lr}^
     834:	31204e4f 			; <UNDEFINED> instruction: 0x31204e4f
     838:	00303130 	eorseq	r3, r0, r0, lsr r1
     83c:	5f5f0001 	svcpl	0x005f0001
     840:	41484353 	cmpmi	r8, r3, asr r3
     844:	414d5f52 	cmpmi	sp, r2, asr pc
     848:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     84c:	66377830 			; <UNDEFINED> instruction: 0x66377830
     850:	5f000100 	svcpl	0x00000100
     854:	5248535f 	subpl	r5, r8, #2080374785	; 0x7c000001
     858:	414d5f54 	cmpmi	sp, r4, asr pc
     85c:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     860:	66377830 			; <UNDEFINED> instruction: 0x66377830
     864:	01006666 	tsteq	r0, r6, ror #12
     868:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     86c:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 73c <current_sp+0x688>
     870:	5f5f5841 	svcpl	0x005f5841
     874:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     878:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     87c:	00666666 	rsbeq	r6, r6, r6, ror #12
     880:	5f5f0001 	svcpl	0x005f0001
     884:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
     888:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     88c:	30205f5f 	eorcc	r5, r0, pc, asr pc
     890:	66663778 			; <UNDEFINED> instruction: 0x66663778
     894:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     898:	01004c66 	tsteq	r0, r6, ror #24
     89c:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
     8a0:	5f474e4f 	svcpl	0x00474e4f
     8a4:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
     8a8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     8ac:	30205f5f 	eorcc	r5, r0, pc, asr pc
     8b0:	66663778 			; <UNDEFINED> instruction: 0x66663778
     8b4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     8b8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     8bc:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     8c0:	004c4c66 	subeq	r4, ip, r6, ror #24
     8c4:	5f5f0001 	svcpl	0x005f0001
     8c8:	41484357 	cmpmi	r8, r7, asr r3
     8cc:	414d5f52 	cmpmi	sp, r2, asr pc
     8d0:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     8d4:	66667830 			; <UNDEFINED> instruction: 0x66667830
     8d8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     8dc:	00556666 	subseq	r6, r5, r6, ror #12
     8e0:	5f5f0001 	svcpl	0x005f0001
     8e4:	41484357 	cmpmi	r8, r7, asr r3
     8e8:	494d5f52 	stmdbmi	sp, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
     8ec:	205f5f4e 	subscs	r5, pc, lr, asr #30
     8f0:	01005530 	tsteq	r0, r0, lsr r5
     8f4:	575f5f00 	ldrbpl	r5, [pc, -r0, lsl #30]
     8f8:	5f544e49 	svcpl	0x00544e49
     8fc:	5f58414d 	svcpl	0x0058414d
     900:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     904:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     908:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     90c:	00010055 	andeq	r0, r1, r5, asr r0
     910:	49575f5f 	ldmdbmi	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     914:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 7e4 <current_sp+0x730>
     918:	5f5f4e49 	svcpl	0x005f4e49
     91c:	00553020 	subseq	r3, r5, r0, lsr #32
     920:	5f5f0001 	svcpl	0x005f0001
     924:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
     928:	5f464649 	svcpl	0x00464649
     92c:	5f58414d 	svcpl	0x0058414d
     930:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     934:	66666637 			; <UNDEFINED> instruction: 0x66666637
     938:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     93c:	5f000100 	svcpl	0x00000100
     940:	5a49535f 	bpl	12556c4 <__mprec_tinytens+0x1230e54>
     944:	414d5f45 	cmpmi	sp, r5, asr #30
     948:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     94c:	66667830 			; <UNDEFINED> instruction: 0x66667830
     950:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     954:	00556666 	subseq	r6, r5, r6, ror #12
     958:	5f5f0001 	svcpl	0x005f0001
     95c:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
     960:	4d5f5841 	ldclmi	8, cr5, [pc, #-260]	; 864 <current_sp+0x7b0>
     964:	5f5f5841 	svcpl	0x005f5841
     968:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     96c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     970:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     974:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     978:	4c666666 	stclmi	6, cr6, [r6], #-408	; 0xfffffe68
     97c:	0001004c 	andeq	r0, r1, ip, asr #32
     980:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     984:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
     988:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
     98c:	20632029 	rsbcs	r2, r3, r9, lsr #32
     990:	4c202323 	stcmi	3, cr2, [r0], #-140	; 0xffffff74
     994:	0001004c 	andeq	r0, r1, ip, asr #32
     998:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     99c:	414d544e 	cmpmi	sp, lr, asr #8
     9a0:	414d5f58 	cmpmi	sp, r8, asr pc
     9a4:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     9a8:	66667830 			; <UNDEFINED> instruction: 0x66667830
     9ac:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     9b0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     9b4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     9b8:	4c556666 	mrrcmi	6, 6, r6, r5, cr6
     9bc:	0001004c 	andeq	r0, r1, ip, asr #32
     9c0:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     9c4:	414d544e 	cmpmi	sp, lr, asr #8
     9c8:	28435f58 	stmdacs	r3, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     9cc:	63202963 			; <UNDEFINED> instruction: 0x63202963
     9d0:	20232320 	eorcs	r2, r3, r0, lsr #6
     9d4:	004c4c55 	subeq	r4, ip, r5, asr ip
     9d8:	5f5f0001 	svcpl	0x005f0001
     9dc:	5f474953 	svcpl	0x00474953
     9e0:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 8e4 <current_sp+0x830>
     9e4:	4d5f4349 	ldclmi	3, cr4, [pc, #-292]	; 8c8 <current_sp+0x814>
     9e8:	5f5f5841 	svcpl	0x005f5841
     9ec:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     9f0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     9f4:	00666666 	rsbeq	r6, r6, r6, ror #12
     9f8:	5f5f0001 	svcpl	0x005f0001
     9fc:	5f474953 	svcpl	0x00474953
     a00:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 904 <current_sp+0x850>
     a04:	4d5f4349 	ldclmi	3, cr4, [pc, #-292]	; 8e8 <current_sp+0x834>
     a08:	5f5f4e49 	svcpl	0x005f4e49
     a0c:	5f2d2820 	svcpl	0x002d2820
     a10:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
     a14:	4f54415f 	svcmi	0x0054415f
     a18:	5f43494d 	svcpl	0x0043494d
     a1c:	5f58414d 	svcpl	0x0058414d
     a20:	202d205f 	eorcs	r2, sp, pc, asr r0
     a24:	01002931 	tsteq	r0, r1, lsr r9
     a28:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     a2c:	5f38544e 	svcpl	0x0038544e
     a30:	5f58414d 	svcpl	0x0058414d
     a34:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     a38:	01006637 	tsteq	r0, r7, lsr r6
     a3c:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     a40:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
     a44:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     a48:	30205f5f 	eorcc	r5, r0, pc, asr pc
     a4c:	66663778 			; <UNDEFINED> instruction: 0x66663778
     a50:	00010066 	andeq	r0, r1, r6, rrx
     a54:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     a58:	5f323354 	svcpl	0x00323354
     a5c:	5f58414d 	svcpl	0x0058414d
     a60:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     a64:	66666637 			; <UNDEFINED> instruction: 0x66666637
     a68:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     a6c:	0001004c 	andeq	r0, r1, ip, asr #32
     a70:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     a74:	5f343654 	svcpl	0x00343654
     a78:	5f58414d 	svcpl	0x0058414d
     a7c:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     a80:	66666637 			; <UNDEFINED> instruction: 0x66666637
     a84:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     a88:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     a8c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     a90:	01004c4c 	tsteq	r0, ip, asr #24
     a94:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffb9c <_sp_base+0xbffefba4>
     a98:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
     a9c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     aa0:	30205f5f 	eorcc	r5, r0, pc, asr pc
     aa4:	00666678 	rsbeq	r6, r6, r8, ror r6
     aa8:	5f5f0001 	svcpl	0x005f0001
     aac:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
     ab0:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 9f4 <current_sp+0x940>
     ab4:	5f5f5841 	svcpl	0x005f5841
     ab8:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
     abc:	00666666 	rsbeq	r6, r6, r6, ror #12
     ac0:	5f5f0001 	svcpl	0x005f0001
     ac4:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
     ac8:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; a04 <current_sp+0x950>
     acc:	5f5f5841 	svcpl	0x005f5841
     ad0:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
     ad4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     ad8:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
     adc:	0001004c 	andeq	r0, r1, ip, asr #32
     ae0:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     ae4:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
     ae8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     aec:	30205f5f 	eorcc	r5, r0, pc, asr pc
     af0:	66666678 			; <UNDEFINED> instruction: 0x66666678
     af4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     af8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     afc:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     b00:	4c4c5566 	cfstr64mi	mvdx5, [ip], {102}	; 0x66
     b04:	5f000100 	svcpl	0x00000100
     b08:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     b0c:	41454c5f 	cmpmi	r5, pc, asr ip
     b10:	5f385453 	svcpl	0x00385453
     b14:	5f58414d 	svcpl	0x0058414d
     b18:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     b1c:	01006637 	tsteq	r0, r7, lsr r6
     b20:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     b24:	5f38544e 	svcpl	0x0038544e
     b28:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
     b2c:	01006320 	tsteq	r0, r0, lsr #6
     b30:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     b34:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
     b38:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
     b3c:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; a80 <current_sp+0x9cc>
     b40:	5f5f5841 	svcpl	0x005f5841
     b44:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     b48:	00666666 	rsbeq	r6, r6, r6, ror #12
     b4c:	5f5f0001 	svcpl	0x005f0001
     b50:	31544e49 	cmpcc	r4, r9, asr #28
     b54:	28435f36 	stmdacs	r3, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
     b58:	63202963 			; <UNDEFINED> instruction: 0x63202963
     b5c:	5f000100 	svcpl	0x00000100
     b60:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     b64:	41454c5f 	cmpmi	r5, pc, asr ip
     b68:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
     b6c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     b70:	30205f5f 	eorcc	r5, r0, pc, asr pc
     b74:	66663778 			; <UNDEFINED> instruction: 0x66663778
     b78:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     b7c:	01004c66 	tsteq	r0, r6, ror #24
     b80:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     b84:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
     b88:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
     b8c:	20632029 	rsbcs	r2, r3, r9, lsr #32
     b90:	4c202323 	stcmi	3, cr2, [r0], #-140	; 0xffffff74
     b94:	5f000100 	svcpl	0x00000100
     b98:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     b9c:	41454c5f 	cmpmi	r5, pc, asr ip
     ba0:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
     ba4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     ba8:	30205f5f 	eorcc	r5, r0, pc, asr pc
     bac:	66663778 			; <UNDEFINED> instruction: 0x66663778
     bb0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     bb4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     bb8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     bbc:	004c4c66 	subeq	r4, ip, r6, ror #24
     bc0:	5f5f0001 	svcpl	0x005f0001
     bc4:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
     bc8:	28435f34 	stmdacs	r3, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
     bcc:	63202963 			; <UNDEFINED> instruction: 0x63202963
     bd0:	20232320 	eorcs	r2, r3, r0, lsr #6
     bd4:	01004c4c 	tsteq	r0, ip, asr #24
     bd8:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffce0 <_sp_base+0xbffefce8>
     bdc:	5f544e49 	svcpl	0x00544e49
     be0:	5341454c 	movtpl	r4, #5452	; 0x154c
     be4:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; a9c <current_sp+0x9e8>
     be8:	5f5f5841 	svcpl	0x005f5841
     bec:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
     bf0:	00010066 	andeq	r0, r1, r6, rrx
     bf4:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     bf8:	5f38544e 	svcpl	0x0038544e
     bfc:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
     c00:	01006320 	tsteq	r0, r0, lsr #6
     c04:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffd0c <_sp_base+0xbffefd14>
     c08:	5f544e49 	svcpl	0x00544e49
     c0c:	5341454c 	movtpl	r4, #5452	; 0x154c
     c10:	5f363154 	svcpl	0x00363154
     c14:	5f58414d 	svcpl	0x0058414d
     c18:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     c1c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     c20:	5f000100 	svcpl	0x00000100
     c24:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
     c28:	5f363154 	svcpl	0x00363154
     c2c:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
     c30:	01006320 	tsteq	r0, r0, lsr #6
     c34:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffd3c <_sp_base+0xbffefd44>
     c38:	5f544e49 	svcpl	0x00544e49
     c3c:	5341454c 	movtpl	r4, #5452	; 0x154c
     c40:	5f323354 	svcpl	0x00323354
     c44:	5f58414d 	svcpl	0x0058414d
     c48:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     c4c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     c50:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     c54:	01004c55 	tsteq	r0, r5, asr ip
     c58:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffd60 <_sp_base+0xbffefd68>
     c5c:	33544e49 	cmpcc	r4, #1168	; 0x490
     c60:	28435f32 	stmdacs	r3, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
     c64:	63202963 			; <UNDEFINED> instruction: 0x63202963
     c68:	20232320 	eorcs	r2, r3, r0, lsr #6
     c6c:	01004c55 	tsteq	r0, r5, asr ip
     c70:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffd78 <_sp_base+0xbffefd80>
     c74:	5f544e49 	svcpl	0x00544e49
     c78:	5341454c 	movtpl	r4, #5452	; 0x154c
     c7c:	5f343654 	svcpl	0x00343654
     c80:	5f58414d 	svcpl	0x0058414d
     c84:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     c88:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     c8c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     c90:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     c94:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     c98:	004c4c55 	subeq	r4, ip, r5, asr ip
     c9c:	5f5f0001 	svcpl	0x005f0001
     ca0:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
     ca4:	435f3436 	cmpmi	pc, #905969664	; 0x36000000
     ca8:	20296328 	eorcs	r6, r9, r8, lsr #6
     cac:	23232063 			; <UNDEFINED> instruction: 0x23232063
     cb0:	4c4c5520 	cfstr64mi	mvdx5, [ip], {32}
     cb4:	5f000100 	svcpl	0x00000100
     cb8:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     cbc:	5341465f 	movtpl	r4, #5727	; 0x165f
     cc0:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; b78 <current_sp+0xac4>
     cc4:	5f5f5841 	svcpl	0x005f5841
     cc8:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     ccc:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     cd0:	00666666 	rsbeq	r6, r6, r6, ror #12
     cd4:	5f5f0001 	svcpl	0x005f0001
     cd8:	5f544e49 	svcpl	0x00544e49
     cdc:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     ce0:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; c24 <current_sp+0xb70>
     ce4:	5f5f5841 	svcpl	0x005f5841
     ce8:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     cec:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     cf0:	00666666 	rsbeq	r6, r6, r6, ror #12
     cf4:	5f5f0001 	svcpl	0x005f0001
     cf8:	5f544e49 	svcpl	0x00544e49
     cfc:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     d00:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; c3c <current_sp+0xb88>
     d04:	5f5f5841 	svcpl	0x005f5841
     d08:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     d0c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     d10:	00666666 	rsbeq	r6, r6, r6, ror #12
     d14:	5f5f0001 	svcpl	0x005f0001
     d18:	5f544e49 	svcpl	0x00544e49
     d1c:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     d20:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; c50 <current_sp+0xb9c>
     d24:	5f5f5841 	svcpl	0x005f5841
     d28:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     d2c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     d30:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     d34:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     d38:	4c666666 	stclmi	6, cr6, [r6], #-408	; 0xfffffe68
     d3c:	0001004c 	andeq	r0, r1, ip, asr #32
     d40:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     d44:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
     d48:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
     d4c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     d50:	30205f5f 	eorcc	r5, r0, pc, asr pc
     d54:	66666678 			; <UNDEFINED> instruction: 0x66666678
     d58:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     d5c:	01005566 	tsteq	r0, r6, ror #10
     d60:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffe68 <_sp_base+0xbffefe70>
     d64:	5f544e49 	svcpl	0x00544e49
     d68:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     d6c:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; cb0 <current_sp+0xbfc>
     d70:	5f5f5841 	svcpl	0x005f5841
     d74:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
     d78:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     d7c:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
     d80:	5f000100 	svcpl	0x00000100
     d84:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
     d88:	41465f54 	cmpmi	r6, r4, asr pc
     d8c:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
     d90:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     d94:	30205f5f 	eorcc	r5, r0, pc, asr pc
     d98:	66666678 			; <UNDEFINED> instruction: 0x66666678
     d9c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     da0:	01005566 	tsteq	r0, r6, ror #10
     da4:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffeac <_sp_base+0xbffefeb4>
     da8:	5f544e49 	svcpl	0x00544e49
     dac:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     db0:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; ce0 <current_sp+0xc2c>
     db4:	5f5f5841 	svcpl	0x005f5841
     db8:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
     dbc:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     dc0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     dc4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     dc8:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
     dcc:	01004c4c 	tsteq	r0, ip, asr #24
     dd0:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     dd4:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
     dd8:	414d5f52 	cmpmi	sp, r2, asr pc
     ddc:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     de0:	66377830 			; <UNDEFINED> instruction: 0x66377830
     de4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     de8:	01006666 	tsteq	r0, r6, ror #12
     dec:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffef4 <_sp_base+0xbffefefc>
     df0:	50544e49 	subspl	r4, r4, r9, asr #28
     df4:	4d5f5254 	lfmmi	f5, 2, [pc, #-336]	; cac <current_sp+0xbf8>
     df8:	5f5f5841 	svcpl	0x005f5841
     dfc:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
     e00:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     e04:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
     e08:	5f000100 	svcpl	0x00000100
     e0c:	4343475f 	movtmi	r4, #14175	; 0x375f
     e10:	4345495f 	movtmi	r4, #22879	; 0x595f
     e14:	3935355f 	ldmdbcc	r5!, {r0, r1, r2, r3, r4, r6, r8, sl, ip, sp}
     e18:	01003020 	tsteq	r0, r0, lsr #32
     e1c:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
     e20:	495f4343 	ldmdbmi	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
     e24:	355f4345 	ldrbcc	r4, [pc, #-837]	; ae7 <current_sp+0xa33>
     e28:	435f3935 	cmpmi	pc, #868352	; 0xd4000
     e2c:	4c504d4f 	mrrcmi	13, 4, r4, r0, cr15
     e30:	30205845 	eorcc	r5, r0, r5, asr #16
     e34:	5f000100 	svcpl	0x00000100
     e38:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     e3c:	4156455f 	cmpmi	r6, pc, asr r5
     e40:	454d5f4c 	strbmi	r5, [sp, #-3916]	; 0xfffff0b4
     e44:	444f4854 	strbmi	r4, [pc], #-2132	; e4c <srload+0x58>
     e48:	30205f5f 	eorcc	r5, r0, pc, asr pc
     e4c:	5f000100 	svcpl	0x00000100
     e50:	4345445f 	movtmi	r4, #21599	; 0x545f
     e54:	4156455f 	cmpmi	r6, pc, asr r5
     e58:	454d5f4c 	strbmi	r5, [sp, #-3916]	; 0xfffff0b4
     e5c:	444f4854 	strbmi	r4, [pc], #-2132	; e64 <srload+0x70>
     e60:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
     e64:	5f000100 	svcpl	0x00000100
     e68:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     e6c:	4441525f 	strbmi	r5, [r1], #-607	; 0xfffffda1
     e70:	5f5f5849 	svcpl	0x005f5849
     e74:	01003220 	tsteq	r0, r0, lsr #4
     e78:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     e7c:	4d5f544c 	cfldrdmi	mvd5, [pc, #-304]	; d54 <current_sp+0xca0>
     e80:	5f544e41 	svcpl	0x00544e41
     e84:	5f474944 	svcpl	0x00474944
     e88:	3432205f 	ldrtcc	r2, [r2], #-95	; 0xffffffa1
     e8c:	5f000100 	svcpl	0x00000100
     e90:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     e94:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
     e98:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
     e9c:	5f000100 	svcpl	0x00000100
     ea0:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     ea4:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     ea8:	5058455f 	subspl	r4, r8, pc, asr r5
     eac:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
     eb0:	3532312d 	ldrcc	r3, [r2, #-301]!	; 0xfffffed3
     eb4:	00010029 	andeq	r0, r1, r9, lsr #32
     eb8:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
     ebc:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
     ec0:	30315f4e 	eorscc	r5, r1, lr, asr #30
     ec4:	5058455f 	subspl	r4, r8, pc, asr r5
     ec8:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
     ecc:	2937332d 	ldmdbcs	r7!, {r0, r2, r3, r5, r8, r9, ip, sp}
     ed0:	5f000100 	svcpl	0x00000100
     ed4:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     ed8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     edc:	5058455f 	subspl	r4, r8, pc, asr r5
     ee0:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     ee4:	01003832 	tsteq	r0, r2, lsr r8
     ee8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     eec:	4d5f544c 	cfldrdmi	mvd5, [pc, #-304]	; dc4 <current_sp+0xd10>
     ef0:	315f5841 	cmpcc	pc, r1, asr #16
     ef4:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
     ef8:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
     efc:	01003833 	tsteq	r0, r3, lsr r8
     f00:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     f04:	445f544c 	ldrbmi	r5, [pc], #-1100	; f0c <srload+0x118>
     f08:	4d494345 	stclmi	3, cr4, [r9, #-276]	; 0xfffffeec
     f0c:	445f4c41 	ldrbmi	r4, [pc], #-3137	; f14 <srload+0x120>
     f10:	5f5f4749 	svcpl	0x005f4749
     f14:	01003920 	tsteq	r0, r0, lsr #18
     f18:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     f1c:	4d5f544c 	cfldrdmi	mvd5, [pc, #-304]	; df4 <srload>
     f20:	5f5f5841 	svcpl	0x005f5841
     f24:	342e3320 	strtcc	r3, [lr], #-800	; 0xfffffce0
     f28:	32383230 	eorscc	r3, r8, #48, 4
     f2c:	36363433 			; <UNDEFINED> instruction: 0x36363433
     f30:	32353833 	eorscc	r3, r5, #3342336	; 0x330000
     f34:	65363838 	ldrvs	r3, [r6, #-2104]!	; 0xfffff7c8
     f38:	4638332b 	ldrtmi	r3, [r8], -fp, lsr #6
     f3c:	5f000100 	svcpl	0x00000100
     f40:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     f44:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     f48:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     f4c:	3537312e 	ldrcc	r3, [r7, #-302]!	; 0xfffffed2
     f50:	33343934 	teqcc	r4, #52, 18	; 0xd0000
     f54:	32383035 	eorscc	r3, r8, #53	; 0x35
     f58:	37383232 			; <UNDEFINED> instruction: 0x37383232
     f5c:	332d6535 			; <UNDEFINED> instruction: 0x332d6535
     f60:	01004638 	tsteq	r0, r8, lsr r6
     f64:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     f68:	455f544c 	ldrbmi	r5, [pc, #-1100]	; b24 <current_sp+0xa70>
     f6c:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
     f70:	5f5f4e4f 	svcpl	0x005f4e4f
     f74:	312e3120 			; <UNDEFINED> instruction: 0x312e3120
     f78:	39303239 	ldmdbcc	r0!, {r0, r3, r4, r5, r9, ip, sp}
     f7c:	35393832 	ldrcc	r3, [r9, #-2098]!	; 0xfffff7ce
     f80:	38373035 	ldmdacc	r7!, {r0, r2, r4, r5, ip, sp}
     f84:	65353231 	ldrvs	r3, [r5, #-561]!	; 0xfffffdcf
     f88:	0046372d 	subeq	r3, r6, sp, lsr #14
     f8c:	5f5f0001 	svcpl	0x005f0001
     f90:	5f544c46 	svcpl	0x00544c46
     f94:	4f4e4544 	svcmi	0x004e4544
     f98:	4d5f4d52 	ldclmi	13, cr4, [pc, #-328]	; e58 <srload+0x64>
     f9c:	5f5f4e49 	svcpl	0x005f4e49
     fa0:	342e3120 	strtcc	r3, [lr], #-288	; 0xfffffee0
     fa4:	39323130 	ldmdbcc	r2!, {r4, r5, r8, ip, sp}
     fa8:	34363438 	ldrtcc	r3, [r6], #-1080	; 0xfffffbc8
     fac:	38343233 	ldmdacc	r4!, {r0, r1, r4, r5, r9, ip, sp}
     fb0:	65313731 	ldrvs	r3, [r1, #-1841]!	; 0xfffff8cf
     fb4:	4635342d 	ldrtmi	r3, [r5], -sp, lsr #8
     fb8:	5f000100 	svcpl	0x00000100
     fbc:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     fc0:	5341485f 	movtpl	r4, #6239	; 0x185f
     fc4:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
     fc8:	5f4d524f 	svcpl	0x004d524f
     fcc:	0031205f 	eorseq	r2, r1, pc, asr r0
     fd0:	5f5f0001 	svcpl	0x005f0001
     fd4:	5f544c46 	svcpl	0x00544c46
     fd8:	5f534148 	svcpl	0x00534148
     fdc:	49464e49 	stmdbmi	r6, {r0, r3, r6, r9, sl, fp, lr}^
     fe0:	5954494e 	ldmdbpl	r4, {r1, r2, r3, r6, r8, fp, lr}^
     fe4:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     fe8:	5f000100 	svcpl	0x00000100
     fec:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     ff0:	5341485f 	movtpl	r4, #6239	; 0x185f
     ff4:	4955515f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, ip, lr}^
     ff8:	4e5f5445 	cdpmi	4, 5, cr5, cr15, cr5, {2}
     ffc:	5f5f4e41 	svcpl	0x005f4e41
    1000:	01003120 	tsteq	r0, r0, lsr #2
    1004:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 100c <srload+0x218>
    1008:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; f08 <srload+0x114>
    100c:	5f544e41 	svcpl	0x00544e41
    1010:	5f474944 	svcpl	0x00474944
    1014:	3335205f 	teqcc	r5, #95	; 0x5f
    1018:	5f000100 	svcpl	0x00000100
    101c:	4c42445f 	cfstrdmi	mvd4, [r2], {95}	; 0x5f
    1020:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    1024:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1028:	00010035 	andeq	r0, r1, r5, lsr r0
    102c:	42445f5f 	submi	r5, r4, #380	; 0x17c
    1030:	494d5f4c 	stmdbmi	sp, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    1034:	58455f4e 	stmdapl	r5, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    1038:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    103c:	30312d28 	eorscc	r2, r1, r8, lsr #26
    1040:	00293132 	eoreq	r3, r9, r2, lsr r1
    1044:	5f5f0001 	svcpl	0x005f0001
    1048:	5f4c4244 	svcpl	0x004c4244
    104c:	5f4e494d 	svcpl	0x004e494d
    1050:	455f3031 	ldrbmi	r3, [pc, #-49]	; 1027 <srload+0x233>
    1054:	5f5f5058 	svcpl	0x005f5058
    1058:	332d2820 			; <UNDEFINED> instruction: 0x332d2820
    105c:	00293730 	eoreq	r3, r9, r0, lsr r7
    1060:	5f5f0001 	svcpl	0x005f0001
    1064:	5f4c4244 	svcpl	0x004c4244
    1068:	5f58414d 	svcpl	0x0058414d
    106c:	5f505845 	svcpl	0x00505845
    1070:	3031205f 	eorscc	r2, r1, pc, asr r0
    1074:	01003432 	tsteq	r0, r2, lsr r4
    1078:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 1080 <srload+0x28c>
    107c:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; f7c <srload+0x188>
    1080:	315f5841 	cmpcc	pc, r1, asr #16
    1084:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    1088:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    108c:	00383033 	eorseq	r3, r8, r3, lsr r0
    1090:	5f5f0001 	svcpl	0x005f0001
    1094:	5f4c4244 	svcpl	0x004c4244
    1098:	49434544 	stmdbmi	r3, {r2, r6, r8, sl, lr}^
    109c:	5f4c414d 	svcpl	0x004c414d
    10a0:	5f474944 	svcpl	0x00474944
    10a4:	3731205f 			; <UNDEFINED> instruction: 0x3731205f
    10a8:	5f000100 	svcpl	0x00000100
    10ac:	4c42445f 	cfstrdmi	mvd4, [r2], {95}	; 0x5f
    10b0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    10b4:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    10b8:	756f6428 	strbvc	r6, [pc, #-1064]!	; c98 <current_sp+0xbe4>
    10bc:	29656c62 	stmdbcs	r5!, {r1, r5, r6, sl, fp, sp, lr}^
    10c0:	39372e31 	ldmdbcc	r7!, {r0, r4, r5, r9, sl, fp, sp}
    10c4:	33393637 	teqcc	r9, #57671680	; 0x3700000
    10c8:	38343331 	ldmdacc	r4!, {r0, r4, r5, r8, r9, ip, sp}
    10cc:	31333236 	teqcc	r3, r6, lsr r2
    10d0:	2b653735 	blcs	194edac <__mprec_tinytens+0x192a53c>
    10d4:	4c383033 	ldcmi	0, cr3, [r8], #-204	; 0xffffff34
    10d8:	00010029 	andeq	r0, r1, r9, lsr #32
    10dc:	42445f5f 	submi	r5, r4, #380	; 0x17c
    10e0:	494d5f4c 	stmdbmi	sp, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    10e4:	205f5f4e 	subscs	r5, pc, lr, asr #30
    10e8:	6f642828 	svcvs	0x00642828
    10ec:	656c6275 	strbvs	r6, [ip, #-629]!	; 0xfffffd8b
    10f0:	322e3229 	eorcc	r3, lr, #-1879048190	; 0x90000002
    10f4:	37303532 			; <UNDEFINED> instruction: 0x37303532
    10f8:	38353833 	ldmdacc	r5!, {r0, r1, r4, r5, fp, ip, sp}
    10fc:	32373035 	eorscc	r3, r7, #53	; 0x35
    1100:	65343130 	ldrvs	r3, [r4, #-304]!	; 0xfffffed0
    1104:	3830332d 	ldmdacc	r0!, {r0, r2, r3, r5, r8, r9, ip, sp}
    1108:	0100294c 	tsteq	r0, ip, asr #18
    110c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 1114 <srload+0x320>
    1110:	455f4c42 	ldrbmi	r4, [pc, #-3138]	; 4d6 <current_sp+0x422>
    1114:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    1118:	5f5f4e4f 	svcpl	0x005f4e4f
    111c:	64282820 	strtvs	r2, [r8], #-2080	; 0xfffff7e0
    1120:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
    1124:	2e322965 	vsubcs.f16	s4, s4, s11	; <UNPREDICTABLE>
    1128:	34303232 	ldrtcc	r3, [r0], #-562	; 0xfffffdce
    112c:	34303634 	ldrtcc	r3, [r0], #-1588	; 0xfffff9cc
    1130:	30353239 	eorscc	r3, r5, r9, lsr r2
    1134:	31333133 	teqcc	r3, r3, lsr r1
    1138:	36312d65 	ldrtcc	r2, [r1], -r5, ror #26
    113c:	0100294c 	tsteq	r0, ip, asr #18
    1140:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 1148 <srload+0x354>
    1144:	445f4c42 	ldrbmi	r4, [pc], #-3138	; 114c <srload+0x358>
    1148:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    114c:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    1150:	205f5f4e 	subscs	r5, pc, lr, asr #30
    1154:	6f642828 	svcvs	0x00642828
    1158:	656c6275 	strbvs	r6, [ip, #-629]!	; 0xfffffd8b
    115c:	392e3429 	stmdbcc	lr!, {r0, r3, r5, sl, ip, sp}
    1160:	35363034 	ldrcc	r3, [r6, #-52]!	; 0xffffffcc
    1164:	38353436 	ldmdacc	r5!, {r1, r2, r4, r5, sl, ip, sp}
    1168:	34323134 	ldrtcc	r3, [r2], #-308	; 0xfffffecc
    116c:	65343536 	ldrvs	r3, [r4, #-1334]!	; 0xfffffaca
    1170:	3432332d 	ldrtcc	r3, [r2], #-813	; 0xfffffcd3
    1174:	0100294c 	tsteq	r0, ip, asr #18
    1178:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 1180 <srload+0x38c>
    117c:	485f4c42 	ldmdami	pc, {r1, r6, sl, fp, lr}^	; <UNPREDICTABLE>
    1180:	445f5341 	ldrbmi	r5, [pc], #-833	; 1188 <srload+0x394>
    1184:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    1188:	205f5f4d 	subscs	r5, pc, sp, asr #30
    118c:	00010031 	andeq	r0, r1, r1, lsr r0
    1190:	42445f5f 	submi	r5, r4, #380	; 0x17c
    1194:	41485f4c 	cmpmi	r8, ip, asr #30
    1198:	4e495f53 	mcrmi	15, 2, r5, cr9, cr3, {2}
    119c:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
    11a0:	5f5f5954 	svcpl	0x005f5954
    11a4:	01003120 	tsteq	r0, r0, lsr #2
    11a8:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 11b0 <srload+0x3bc>
    11ac:	485f4c42 	ldmdami	pc, {r1, r6, sl, fp, lr}^	; <UNPREDICTABLE>
    11b0:	515f5341 	cmppl	pc, r1, asr #6
    11b4:	54454955 	strbpl	r4, [r5], #-2389	; 0xfffff6ab
    11b8:	4e414e5f 	mcrmi	14, 2, r4, cr1, cr15, {2}
    11bc:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    11c0:	5f000100 	svcpl	0x00000100
    11c4:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    11c8:	414d5f4c 	cmpmi	sp, ip, asr #30
    11cc:	445f544e 	ldrbmi	r5, [pc], #-1102	; 11d4 <exec_file+0x8>
    11d0:	5f5f4749 	svcpl	0x005f4749
    11d4:	00333520 	eorseq	r3, r3, r0, lsr #10
    11d8:	5f5f0001 	svcpl	0x005f0001
    11dc:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    11e0:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    11e4:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    11e8:	00010035 	andeq	r0, r1, r5, lsr r0
    11ec:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    11f0:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 10f0 <srload+0x2fc>
    11f4:	455f4e49 	ldrbmi	r4, [pc, #-3657]	; 3b3 <current_sp+0x2ff>
    11f8:	5f5f5058 	svcpl	0x005f5058
    11fc:	312d2820 			; <UNDEFINED> instruction: 0x312d2820
    1200:	29313230 	ldmdbcs	r1!, {r4, r5, r9, ip, sp}
    1204:	5f000100 	svcpl	0x00000100
    1208:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    120c:	494d5f4c 	stmdbmi	sp, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    1210:	30315f4e 	eorscc	r5, r1, lr, asr #30
    1214:	5058455f 	subspl	r4, r8, pc, asr r5
    1218:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    121c:	3730332d 	ldrcc	r3, [r0, -sp, lsr #6]!
    1220:	00010029 	andeq	r0, r1, r9, lsr #32
    1224:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    1228:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 1128 <srload+0x334>
    122c:	455f5841 	ldrbmi	r5, [pc, #-2113]	; 9f3 <current_sp+0x93f>
    1230:	5f5f5058 	svcpl	0x005f5058
    1234:	32303120 	eorscc	r3, r0, #32, 2
    1238:	00010034 	andeq	r0, r1, r4, lsr r0
    123c:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    1240:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 1140 <srload+0x34c>
    1244:	315f5841 	cmpcc	pc, r1, asr #16
    1248:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    124c:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    1250:	00383033 	eorseq	r3, r8, r3, lsr r0
    1254:	5f5f0001 	svcpl	0x005f0001
    1258:	49434544 	stmdbmi	r3, {r2, r6, r8, sl, lr}^
    125c:	5f4c414d 	svcpl	0x004c414d
    1260:	5f474944 	svcpl	0x00474944
    1264:	3731205f 			; <UNDEFINED> instruction: 0x3731205f
    1268:	5f000100 	svcpl	0x00000100
    126c:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    1270:	414d5f4c 	cmpmi	sp, ip, asr #30
    1274:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1278:	39372e31 	ldmdbcc	r7!, {r0, r4, r5, r9, sl, fp, sp}
    127c:	33393637 	teqcc	r9, #57671680	; 0x3700000
    1280:	38343331 	ldmdacc	r4!, {r0, r4, r5, r8, r9, ip, sp}
    1284:	31333236 	teqcc	r3, r6, lsr r2
    1288:	2b653735 	blcs	194ef64 <__mprec_tinytens+0x192a6f4>
    128c:	4c383033 	ldcmi	0, cr3, [r8], #-204	; 0xffffff34
    1290:	5f000100 	svcpl	0x00000100
    1294:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    1298:	494d5f4c 	stmdbmi	sp, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    129c:	205f5f4e 	subscs	r5, pc, lr, asr #30
    12a0:	32322e32 	eorscc	r2, r2, #800	; 0x320
    12a4:	33373035 	teqcc	r7, #53	; 0x35
    12a8:	35383538 	ldrcc	r3, [r8, #-1336]!	; 0xfffffac8
    12ac:	30323730 	eorscc	r3, r2, r0, lsr r7
    12b0:	2d653431 	cfstrdcs	mvd3, [r5, #-196]!	; 0xffffff3c
    12b4:	4c383033 	ldcmi	0, cr3, [r8], #-204	; 0xffffff34
    12b8:	5f000100 	svcpl	0x00000100
    12bc:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    12c0:	50455f4c 	subpl	r5, r5, ip, asr #30
    12c4:	4f4c4953 	svcmi	0x004c4953
    12c8:	205f5f4e 	subscs	r5, pc, lr, asr #30
    12cc:	32322e32 	eorscc	r2, r2, #800	; 0x320
    12d0:	36343430 			; <UNDEFINED> instruction: 0x36343430
    12d4:	32393430 	eorscc	r3, r9, #48, 8	; 0x30000000
    12d8:	31333035 	teqcc	r3, r5, lsr r0
    12dc:	2d653133 	stfcse	f3, [r5, #-204]!	; 0xffffff34
    12e0:	004c3631 	subeq	r3, ip, r1, lsr r6
    12e4:	5f5f0001 	svcpl	0x005f0001
    12e8:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    12ec:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
    12f0:	5f4d524f 	svcpl	0x004d524f
    12f4:	5f4e494d 	svcpl	0x004e494d
    12f8:	2e34205f 	mrccs	0, 1, r2, cr4, cr15, {2}
    12fc:	36303439 			; <UNDEFINED> instruction: 0x36303439
    1300:	35343635 	ldrcc	r3, [r4, #-1589]!	; 0xfffff9cb
    1304:	32313438 	eorscc	r3, r1, #56, 8	; 0x38000000
    1308:	34353634 	ldrtcc	r3, [r5], #-1588	; 0xfffff9cc
    130c:	32332d65 	eorscc	r2, r3, #6464	; 0x1940
    1310:	01004c34 	tsteq	r0, r4, lsr ip
    1314:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    1318:	5f4c4244 	svcpl	0x004c4244
    131c:	5f534148 	svcpl	0x00534148
    1320:	4f4e4544 	svcmi	0x004e4544
    1324:	5f5f4d52 	svcpl	0x005f4d52
    1328:	01003120 	tsteq	r0, r0, lsr #2
    132c:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    1330:	5f4c4244 	svcpl	0x004c4244
    1334:	5f534148 	svcpl	0x00534148
    1338:	49464e49 	stmdbmi	r6, {r0, r3, r6, r9, sl, fp, lr}^
    133c:	5954494e 	ldmdbpl	r4, {r1, r2, r3, r6, r8, fp, lr}^
    1340:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1344:	5f000100 	svcpl	0x00000100
    1348:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    134c:	41485f4c 	cmpmi	r8, ip, asr #30
    1350:	55515f53 	ldrbpl	r5, [r1, #-3923]	; 0xfffff0ad
    1354:	5f544549 	svcpl	0x00544549
    1358:	5f4e414e 	svcpl	0x004e414e
    135c:	0031205f 	eorseq	r2, r1, pc, asr r0
    1360:	5f5f0001 	svcpl	0x005f0001
    1364:	33434544 	movtcc	r4, #13636	; 0x3544
    1368:	414d5f32 	cmpmi	sp, r2, lsr pc
    136c:	445f544e 	ldrbmi	r5, [pc], #-1102	; 1374 <_dbl2str+0x70>
    1370:	5f5f4749 	svcpl	0x005f4749
    1374:	01003720 	tsteq	r0, r0, lsr #14
    1378:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 1380 <_dbl2str+0x7c>
    137c:	32334345 	eorscc	r4, r3, #335544321	; 0x14000001
    1380:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1384:	5058455f 	subspl	r4, r8, pc, asr r5
    1388:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    138c:	2934392d 	ldmdbcs	r4!, {r0, r2, r3, r5, r8, fp, ip, sp}
    1390:	5f000100 	svcpl	0x00000100
    1394:	4345445f 	movtmi	r4, #21599	; 0x545f
    1398:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 12d4 <exec_file+0x108>
    139c:	455f5841 	ldrbmi	r5, [pc, #-2113]	; b63 <current_sp+0xaaf>
    13a0:	5f5f5058 	svcpl	0x005f5058
    13a4:	00373920 	eorseq	r3, r7, r0, lsr #18
    13a8:	5f5f0001 	svcpl	0x005f0001
    13ac:	33434544 	movtcc	r4, #13636	; 0x3544
    13b0:	494d5f32 	stmdbmi	sp, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    13b4:	205f5f4e 	subscs	r5, pc, lr, asr #30
    13b8:	392d4531 	pushcc	{r0, r4, r5, r8, sl, lr}
    13bc:	00464435 	subeq	r4, r6, r5, lsr r4
    13c0:	5f5f0001 	svcpl	0x005f0001
    13c4:	33434544 	movtcc	r4, #13636	; 0x3544
    13c8:	414d5f32 	cmpmi	sp, r2, lsr pc
    13cc:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    13d0:	39392e39 	ldmdbcc	r9!, {r0, r3, r4, r5, r9, sl, fp, sp}
    13d4:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    13d8:	44363945 	ldrtmi	r3, [r6], #-2373	; 0xfffff6bb
    13dc:	00010046 	andeq	r0, r1, r6, asr #32
    13e0:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    13e4:	5f323343 	svcpl	0x00323343
    13e8:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    13ec:	5f4e4f4c 	svcpl	0x004e4f4c
    13f0:	4531205f 	ldrmi	r2, [r1, #-95]!	; 0xffffffa1
    13f4:	4644362d 	strbmi	r3, [r4], -sp, lsr #12
    13f8:	5f000100 	svcpl	0x00000100
    13fc:	4345445f 	movtmi	r4, #21599	; 0x545f
    1400:	535f3233 	cmppl	pc, #805306371	; 0x30000003
    1404:	4f4e4255 	svcmi	0x004e4255
    1408:	4c414d52 	mcrrmi	13, 5, r4, r1, cr2
    140c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1410:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1414:	3030302e 	eorscc	r3, r0, lr, lsr #32
    1418:	45313030 	ldrmi	r3, [r1, #-48]!	; 0xffffffd0
    141c:	4435392d 	ldrtmi	r3, [r5], #-2349	; 0xfffff6d3
    1420:	00010046 	andeq	r0, r1, r6, asr #32
    1424:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    1428:	5f343643 	svcpl	0x00343643
    142c:	544e414d 	strbpl	r4, [lr], #-333	; 0xfffffeb3
    1430:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    1434:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1438:	00010036 	andeq	r0, r1, r6, lsr r0
    143c:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    1440:	5f343643 	svcpl	0x00343643
    1444:	5f4e494d 	svcpl	0x004e494d
    1448:	5f505845 	svcpl	0x00505845
    144c:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    1450:	29323833 	ldmdbcs	r2!, {r0, r1, r4, r5, fp, ip, sp}
    1454:	5f000100 	svcpl	0x00000100
    1458:	4345445f 	movtmi	r4, #21599	; 0x545f
    145c:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 138c <xstrlen+0x4>
    1460:	455f5841 	ldrbmi	r5, [pc, #-2113]	; c27 <current_sp+0xb73>
    1464:	5f5f5058 	svcpl	0x005f5058
    1468:	35383320 	ldrcc	r3, [r8, #-800]!	; 0xfffffce0
    146c:	5f000100 	svcpl	0x00000100
    1470:	4345445f 	movtmi	r4, #21599	; 0x545f
    1474:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 13a4 <xstrlen+0x1c>
    1478:	5f5f4e49 	svcpl	0x005f4e49
    147c:	2d453120 	stfcse	f3, [r5, #-128]	; 0xffffff80
    1480:	44333833 	ldrtmi	r3, [r3], #-2099	; 0xfffff7cd
    1484:	00010044 	andeq	r0, r1, r4, asr #32
    1488:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    148c:	5f343643 	svcpl	0x00343643
    1490:	5f58414d 	svcpl	0x0058414d
    1494:	2e39205f 	mrccs	0, 1, r2, cr9, cr15, {2}
    1498:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    149c:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    14a0:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    14a4:	45393939 	ldrmi	r3, [r9, #-2361]!	; 0xfffff6c7
    14a8:	44343833 	ldrtmi	r3, [r4], #-2099	; 0xfffff7cd
    14ac:	00010044 	andeq	r0, r1, r4, asr #32
    14b0:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    14b4:	5f343643 	svcpl	0x00343643
    14b8:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    14bc:	5f4e4f4c 	svcpl	0x004e4f4c
    14c0:	4531205f 	ldrmi	r2, [r1, #-95]!	; 0xffffffa1
    14c4:	4435312d 	ldrtmi	r3, [r5], #-301	; 0xfffffed3
    14c8:	00010044 	andeq	r0, r1, r4, asr #32
    14cc:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    14d0:	5f343643 	svcpl	0x00343643
    14d4:	4e425553 	mcrmi	5, 2, r5, cr2, cr3, {2}
    14d8:	414d524f 	cmpmi	sp, pc, asr #4
    14dc:	494d5f4c 	stmdbmi	sp, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    14e0:	205f5f4e 	subscs	r5, pc, lr, asr #30
    14e4:	30302e30 	eorscc	r2, r0, r0, lsr lr
    14e8:	30303030 	eorscc	r3, r0, r0, lsr r0
    14ec:	30303030 	eorscc	r3, r0, r0, lsr r0
    14f0:	30303030 	eorscc	r3, r0, r0, lsr r0
    14f4:	332d4531 			; <UNDEFINED> instruction: 0x332d4531
    14f8:	44443338 	strbmi	r3, [r4], #-824	; 0xfffffcc8
    14fc:	5f000100 	svcpl	0x00000100
    1500:	4345445f 	movtmi	r4, #21599	; 0x545f
    1504:	5f383231 	svcpl	0x00383231
    1508:	544e414d 	strbpl	r4, [lr], #-333	; 0xfffffeb3
    150c:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    1510:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    1514:	00010034 	andeq	r0, r1, r4, lsr r0
    1518:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    151c:	38323143 	ldmdacc	r2!, {r0, r1, r6, r8, ip, sp}
    1520:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1524:	5058455f 	subspl	r4, r8, pc, asr r5
    1528:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    152c:	3431362d 	ldrtcc	r3, [r1], #-1581	; 0xfffff9d3
    1530:	01002932 	tsteq	r0, r2, lsr r9
    1534:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 153c <ntlibc_strcat+0x24>
    1538:	32314345 	eorscc	r4, r1, #335544321	; 0x14000001
    153c:	414d5f38 	cmpmi	sp, r8, lsr pc
    1540:	58455f58 	stmdapl	r5, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1544:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    1548:	35343136 	ldrcc	r3, [r4, #-310]!	; 0xfffffeca
    154c:	5f000100 	svcpl	0x00000100
    1550:	4345445f 	movtmi	r4, #21599	; 0x545f
    1554:	5f383231 	svcpl	0x00383231
    1558:	5f4e494d 	svcpl	0x004e494d
    155c:	4531205f 	ldrmi	r2, [r1, #-95]!	; 0xffffffa1
    1560:	3431362d 	ldrtcc	r3, [r1], #-1581	; 0xfffff9d3
    1564:	004c4433 	subeq	r4, ip, r3, lsr r4
    1568:	5f5f0001 	svcpl	0x005f0001
    156c:	31434544 	cmpcc	r3, r4, asr #10
    1570:	4d5f3832 	ldclmi	8, cr3, [pc, #-200]	; 14b0 <xstrcmp+0x88>
    1574:	5f5f5841 	svcpl	0x005f5841
    1578:	392e3920 	stmdbcc	lr!, {r5, r8, fp, ip, sp}
    157c:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    1580:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    1584:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    1588:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    158c:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    1590:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    1594:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    1598:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    159c:	34313645 	ldrtcc	r3, [r1], #-1605	; 0xfffff9bb
    15a0:	004c4434 	subeq	r4, ip, r4, lsr r4
    15a4:	5f5f0001 	svcpl	0x005f0001
    15a8:	31434544 	cmpcc	r3, r4, asr #10
    15ac:	455f3832 	ldrbmi	r3, [pc, #-2098]	; d82 <current_sp+0xcce>
    15b0:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    15b4:	5f5f4e4f 	svcpl	0x005f4e4f
    15b8:	2d453120 	stfcse	f3, [r5, #-128]	; 0xffffff80
    15bc:	4c443333 	mcrrmi	3, 3, r3, r4, cr3
    15c0:	5f000100 	svcpl	0x00000100
    15c4:	4345445f 	movtmi	r4, #21599	; 0x545f
    15c8:	5f383231 	svcpl	0x00383231
    15cc:	4e425553 	mcrmi	5, 2, r5, cr2, cr3, {2}
    15d0:	414d524f 	cmpmi	sp, pc, asr #4
    15d4:	494d5f4c 	stmdbmi	sp, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    15d8:	205f5f4e 	subscs	r5, pc, lr, asr #30
    15dc:	30302e30 	eorscc	r2, r0, r0, lsr lr
    15e0:	30303030 	eorscc	r3, r0, r0, lsr r0
    15e4:	30303030 	eorscc	r3, r0, r0, lsr r0
    15e8:	30303030 	eorscc	r3, r0, r0, lsr r0
    15ec:	30303030 	eorscc	r3, r0, r0, lsr r0
    15f0:	30303030 	eorscc	r3, r0, r0, lsr r0
    15f4:	30303030 	eorscc	r3, r0, r0, lsr r0
    15f8:	30303030 	eorscc	r3, r0, r0, lsr r0
    15fc:	45313030 	ldrmi	r3, [r1, #-48]!	; 0xffffffd0
    1600:	3431362d 	ldrtcc	r3, [r1], #-1581	; 0xfffff9d3
    1604:	004c4433 	subeq	r4, ip, r3, lsr r4
    1608:	5f5f0001 	svcpl	0x005f0001
    160c:	41524653 	cmpmi	r2, r3, asr r6
    1610:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
    1614:	5f544942 	svcpl	0x00544942
    1618:	0037205f 	eorseq	r2, r7, pc, asr r0
    161c:	5f5f0001 	svcpl	0x005f0001
    1620:	41524653 	cmpmi	r2, r3, asr r6
    1624:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    1628:	5f544942 	svcpl	0x00544942
    162c:	0030205f 	eorseq	r2, r0, pc, asr r0
    1630:	5f5f0001 	svcpl	0x005f0001
    1634:	41524653 	cmpmi	r2, r3, asr r6
    1638:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 1534 <ntlibc_strcat+0x1c>
    163c:	5f5f4e49 	svcpl	0x005f4e49
    1640:	302d2820 	eorcc	r2, sp, r0, lsr #16
    1644:	5248352e 	subpl	r3, r8, #192937984	; 0xb800000
    1648:	352e302d 	strcc	r3, [lr, #-45]!	; 0xffffffd3
    164c:	00295248 	eoreq	r5, r9, r8, asr #4
    1650:	5f5f0001 	svcpl	0x005f0001
    1654:	41524653 	cmpmi	r2, r3, asr r6
    1658:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 1554 <ntlibc_strcat+0x3c>
    165c:	5f5f5841 	svcpl	0x005f5841
    1660:	37583020 	ldrbcc	r3, [r8, -r0, lsr #32]
    1664:	372d5046 	strcc	r5, [sp, -r6, asr #32]!
    1668:	01005248 	tsteq	r0, r8, asr #4
    166c:	535f5f00 	cmppl	pc, #0, 30
    1670:	43415246 	movtmi	r5, #4678	; 0x1246
    1674:	50455f54 	subpl	r5, r5, r4, asr pc
    1678:	4f4c4953 	svcmi	0x004c4953
    167c:	205f5f4e 	subscs	r5, pc, lr, asr #30
    1680:	50317830 	eorspl	r7, r1, r0, lsr r8
    1684:	5248372d 	subpl	r3, r8, #11796480	; 0xb40000
    1688:	5f000100 	svcpl	0x00000100
    168c:	4653555f 			; <UNDEFINED> instruction: 0x4653555f
    1690:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    1694:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1698:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    169c:	00010038 	andeq	r0, r1, r8, lsr r0
    16a0:	53555f5f 	cmppl	r5, #380	; 0x17c
    16a4:	43415246 	movtmi	r5, #4678	; 0x1246
    16a8:	42495f54 	submi	r5, r9, #84, 30	; 0x150
    16ac:	5f5f5449 	svcpl	0x005f5449
    16b0:	01003020 	tsteq	r0, r0, lsr #32
    16b4:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 7bc <current_sp+0x708>
    16b8:	41524653 	cmpmi	r2, r3, asr r6
    16bc:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 15b8 <ntlibc_strncmp+0x10>
    16c0:	5f5f4e49 	svcpl	0x005f4e49
    16c4:	302e3020 	eorcc	r3, lr, r0, lsr #32
    16c8:	00524855 	subseq	r4, r2, r5, asr r8
    16cc:	5f5f0001 	svcpl	0x005f0001
    16d0:	52465355 	subpl	r5, r6, #1409286145	; 0x54000001
    16d4:	5f544341 	svcpl	0x00544341
    16d8:	5f58414d 	svcpl	0x0058414d
    16dc:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    16e0:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    16e4:	52485538 	subpl	r5, r8, #56, 10	; 0xe000000
    16e8:	5f000100 	svcpl	0x00000100
    16ec:	4653555f 			; <UNDEFINED> instruction: 0x4653555f
    16f0:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    16f4:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    16f8:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    16fc:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1700:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    1704:	52485538 	subpl	r5, r8, #56, 10	; 0xe000000
    1708:	5f000100 	svcpl	0x00000100
    170c:	4152465f 	cmpmi	r2, pc, asr r6
    1710:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
    1714:	5f544942 	svcpl	0x00544942
    1718:	3531205f 	ldrcc	r2, [r1, #-95]!	; 0xffffffa1
    171c:	5f000100 	svcpl	0x00000100
    1720:	4152465f 	cmpmi	r2, pc, asr r6
    1724:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    1728:	5f544942 	svcpl	0x00544942
    172c:	0030205f 	eorseq	r2, r0, pc, asr r0
    1730:	5f5f0001 	svcpl	0x005f0001
    1734:	43415246 	movtmi	r5, #4678	; 0x1246
    1738:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    173c:	205f5f4e 	subscs	r5, pc, lr, asr #30
    1740:	2e302d28 	cdpcs	13, 3, cr2, cr0, cr8, {1}
    1744:	302d5235 	eorcc	r5, sp, r5, lsr r2
    1748:	2952352e 	ldmdbcs	r2, {r1, r2, r3, r5, r8, sl, ip, sp}^
    174c:	5f000100 	svcpl	0x00000100
    1750:	4152465f 	cmpmi	r2, pc, asr r6
    1754:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 1650 <ntlibc_isalpha+0x1c>
    1758:	5f5f5841 	svcpl	0x005f5841
    175c:	37583020 	ldrbcc	r3, [r8, -r0, lsr #32]
    1760:	50464646 	subpl	r4, r6, r6, asr #12
    1764:	5235312d 	eorspl	r3, r5, #1073741835	; 0x4000000b
    1768:	5f000100 	svcpl	0x00000100
    176c:	4152465f 	cmpmi	r2, pc, asr r6
    1770:	455f5443 	ldrbmi	r5, [pc, #-1091]	; 1335 <_dbl2str+0x31>
    1774:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    1778:	5f5f4e4f 	svcpl	0x005f4e4f
    177c:	31783020 	cmncc	r8, r0, lsr #32
    1780:	35312d50 	ldrcc	r2, [r1, #-3408]!	; 0xfffff2b0
    1784:	00010052 	andeq	r0, r1, r2, asr r0
    1788:	46555f5f 	usaxmi	r5, r5, pc	; <UNPREDICTABLE>
    178c:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    1790:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1794:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1798:	01003631 	tsteq	r0, r1, lsr r6
    179c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 8a4 <current_sp+0x7f0>
    17a0:	43415246 	movtmi	r5, #4678	; 0x1246
    17a4:	42495f54 	submi	r5, r9, #84, 30	; 0x150
    17a8:	5f5f5449 	svcpl	0x005f5449
    17ac:	01003020 	tsteq	r0, r0, lsr #32
    17b0:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 8b8 <current_sp+0x804>
    17b4:	43415246 	movtmi	r5, #4678	; 0x1246
    17b8:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    17bc:	205f5f4e 	subscs	r5, pc, lr, asr #30
    17c0:	55302e30 	ldrpl	r2, [r0, #-3632]!	; 0xfffff1d0
    17c4:	00010052 	andeq	r0, r1, r2, asr r0
    17c8:	46555f5f 	usaxmi	r5, r5, pc	; <UNPREDICTABLE>
    17cc:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    17d0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    17d4:	30205f5f 	eorcc	r5, r0, pc, asr pc
    17d8:	46464658 			; <UNDEFINED> instruction: 0x46464658
    17dc:	312d5046 			; <UNDEFINED> instruction: 0x312d5046
    17e0:	00525536 	subseq	r5, r2, r6, lsr r5
    17e4:	5f5f0001 	svcpl	0x005f0001
    17e8:	41524655 	cmpmi	r2, r5, asr r6
    17ec:	455f5443 	ldrbmi	r5, [pc, #-1091]	; 13b1 <xstrlen+0x29>
    17f0:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    17f4:	5f5f4e4f 	svcpl	0x005f4e4f
    17f8:	31783020 	cmncc	r8, r0, lsr #32
    17fc:	36312d50 			; <UNDEFINED> instruction: 0x36312d50
    1800:	01005255 	tsteq	r0, r5, asr r2
    1804:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    1808:	43415246 	movtmi	r5, #4678	; 0x1246
    180c:	42465f54 	submi	r5, r6, #84, 30	; 0x150
    1810:	5f5f5449 	svcpl	0x005f5449
    1814:	00313320 	eorseq	r3, r1, r0, lsr #6
    1818:	5f5f0001 	svcpl	0x005f0001
    181c:	4152464c 	cmpmi	r2, ip, asr #12
    1820:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    1824:	5f544942 	svcpl	0x00544942
    1828:	0030205f 	eorseq	r2, r0, pc, asr r0
    182c:	5f5f0001 	svcpl	0x005f0001
    1830:	4152464c 	cmpmi	r2, ip, asr #12
    1834:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 1730 <ntlibc_atoi+0x28>
    1838:	5f5f4e49 	svcpl	0x005f4e49
    183c:	302d2820 	eorcc	r2, sp, r0, lsr #16
    1840:	524c352e 	subpl	r3, ip, #192937984	; 0xb800000
    1844:	352e302d 	strcc	r3, [lr, #-45]!	; 0xffffffd3
    1848:	0029524c 	eoreq	r5, r9, ip, asr #4
    184c:	5f5f0001 	svcpl	0x005f0001
    1850:	4152464c 	cmpmi	r2, ip, asr #12
    1854:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 1750 <ntlibc_atoi+0x48>
    1858:	5f5f5841 	svcpl	0x005f5841
    185c:	37583020 	ldrbcc	r3, [r8, -r0, lsr #32]
    1860:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1864:	50464646 	subpl	r4, r6, r6, asr #12
    1868:	4c31332d 	ldcmi	3, cr3, [r1], #-180	; 0xffffff4c
    186c:	00010052 	andeq	r0, r1, r2, asr r0
    1870:	464c5f5f 			; <UNDEFINED> instruction: 0x464c5f5f
    1874:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    1878:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    187c:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    1880:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1884:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    1888:	524c3133 	subpl	r3, ip, #-1073741812	; 0xc000000c
    188c:	5f000100 	svcpl	0x00000100
    1890:	464c555f 			; <UNDEFINED> instruction: 0x464c555f
    1894:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    1898:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    189c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    18a0:	01003233 	tsteq	r0, r3, lsr r2
    18a4:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 9ac <current_sp+0x8f8>
    18a8:	4152464c 	cmpmi	r2, ip, asr #12
    18ac:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    18b0:	5f544942 	svcpl	0x00544942
    18b4:	0030205f 	eorseq	r2, r0, pc, asr r0
    18b8:	5f5f0001 	svcpl	0x005f0001
    18bc:	52464c55 	subpl	r4, r6, #21760	; 0x5500
    18c0:	5f544341 	svcpl	0x00544341
    18c4:	5f4e494d 	svcpl	0x004e494d
    18c8:	2e30205f 	mrccs	0, 1, r2, cr0, cr15, {2}
    18cc:	524c5530 	subpl	r5, ip, #48, 10	; 0xc000000
    18d0:	5f000100 	svcpl	0x00000100
    18d4:	464c555f 			; <UNDEFINED> instruction: 0x464c555f
    18d8:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    18dc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    18e0:	30205f5f 	eorcc	r5, r0, pc, asr pc
    18e4:	46464658 			; <UNDEFINED> instruction: 0x46464658
    18e8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    18ec:	332d5046 			; <UNDEFINED> instruction: 0x332d5046
    18f0:	524c5532 	subpl	r5, ip, #209715200	; 0xc800000
    18f4:	5f000100 	svcpl	0x00000100
    18f8:	464c555f 			; <UNDEFINED> instruction: 0x464c555f
    18fc:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    1900:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    1904:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    1908:	30205f5f 	eorcc	r5, r0, pc, asr pc
    190c:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    1910:	4c553233 	lfmmi	f3, 2, [r5], {51}	; 0x33
    1914:	00010052 	andeq	r0, r1, r2, asr r0
    1918:	4c4c5f5f 	mcrrmi	15, 5, r5, ip, cr15
    191c:	43415246 	movtmi	r5, #4678	; 0x1246
    1920:	42465f54 	submi	r5, r6, #84, 30	; 0x150
    1924:	5f5f5449 	svcpl	0x005f5449
    1928:	00333620 	eorseq	r3, r3, r0, lsr #12
    192c:	5f5f0001 	svcpl	0x005f0001
    1930:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
    1934:	5f544341 	svcpl	0x00544341
    1938:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    193c:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1940:	5f000100 	svcpl	0x00000100
    1944:	464c4c5f 			; <UNDEFINED> instruction: 0x464c4c5f
    1948:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    194c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1950:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    1954:	352e302d 	strcc	r3, [lr, #-45]!	; 0xffffffd3
    1958:	2d524c4c 	ldclcs	12, cr4, [r2, #-304]	; 0xfffffed0
    195c:	4c352e30 	ldcmi	14, cr2, [r5], #-192	; 0xffffff40
    1960:	0029524c 	eoreq	r5, r9, ip, asr #4
    1964:	5f5f0001 	svcpl	0x005f0001
    1968:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
    196c:	5f544341 	svcpl	0x00544341
    1970:	5f58414d 	svcpl	0x0058414d
    1974:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1978:	46464637 			; <UNDEFINED> instruction: 0x46464637
    197c:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1980:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1984:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1988:	33362d50 	teqcc	r6, #80, 26	; 0x1400
    198c:	00524c4c 	subseq	r4, r2, ip, asr #24
    1990:	5f5f0001 	svcpl	0x005f0001
    1994:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
    1998:	5f544341 	svcpl	0x00544341
    199c:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    19a0:	5f4e4f4c 	svcpl	0x004e4f4c
    19a4:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    19a8:	362d5031 			; <UNDEFINED> instruction: 0x362d5031
    19ac:	524c4c33 	subpl	r4, ip, #13056	; 0x3300
    19b0:	5f000100 	svcpl	0x00000100
    19b4:	4c4c555f 	cfstr64mi	mvdx5, [ip], {95}	; 0x5f
    19b8:	43415246 	movtmi	r5, #4678	; 0x1246
    19bc:	42465f54 	submi	r5, r6, #84, 30	; 0x150
    19c0:	5f5f5449 	svcpl	0x005f5449
    19c4:	00343620 	eorseq	r3, r4, r0, lsr #12
    19c8:	5f5f0001 	svcpl	0x005f0001
    19cc:	464c4c55 			; <UNDEFINED> instruction: 0x464c4c55
    19d0:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    19d4:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    19d8:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    19dc:	00010030 	andeq	r0, r1, r0, lsr r0
    19e0:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    19e4:	4152464c 	cmpmi	r2, ip, asr #12
    19e8:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 18e4 <ntopt_parse+0x20>
    19ec:	5f5f4e49 	svcpl	0x005f4e49
    19f0:	302e3020 	eorcc	r3, lr, r0, lsr #32
    19f4:	524c4c55 	subpl	r4, ip, #21760	; 0x5500
    19f8:	5f000100 	svcpl	0x00000100
    19fc:	4c4c555f 	cfstr64mi	mvdx5, [ip], {95}	; 0x5f
    1a00:	43415246 	movtmi	r5, #4678	; 0x1246
    1a04:	414d5f54 	cmpmi	sp, r4, asr pc
    1a08:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1a0c:	46465830 			; <UNDEFINED> instruction: 0x46465830
    1a10:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1a14:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1a18:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1a1c:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    1a20:	4c553436 	cfldrdmi	mvd3, [r5], {54}	; 0x36
    1a24:	0100524c 	tsteq	r0, ip, asr #4
    1a28:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; b30 <current_sp+0xa7c>
    1a2c:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
    1a30:	5f544341 	svcpl	0x00544341
    1a34:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    1a38:	5f4e4f4c 	svcpl	0x004e4f4c
    1a3c:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1a40:	362d5031 			; <UNDEFINED> instruction: 0x362d5031
    1a44:	4c4c5534 	cfstr64mi	mvdx5, [ip], {52}	; 0x34
    1a48:	00010052 	andeq	r0, r1, r2, asr r0
    1a4c:	41535f5f 	cmpmi	r3, pc, asr pc
    1a50:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1a54:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1a58:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1a5c:	00010037 	andeq	r0, r1, r7, lsr r0
    1a60:	41535f5f 	cmpmi	r3, pc, asr pc
    1a64:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1a68:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    1a6c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1a70:	00010038 	andeq	r0, r1, r8, lsr r0
    1a74:	41535f5f 	cmpmi	r3, pc, asr pc
    1a78:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1a7c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1a80:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    1a84:	3158302d 	cmpcc	r8, sp, lsr #32
    1a88:	4b483750 	blmi	120f7d0 <__mprec_tinytens+0x11eaf60>
    1a8c:	3158302d 	cmpcc	r8, sp, lsr #32
    1a90:	4b483750 	blmi	120f7d8 <__mprec_tinytens+0x11eaf68>
    1a94:	00010029 	andeq	r0, r1, r9, lsr #32
    1a98:	41535f5f 	cmpmi	r3, pc, asr pc
    1a9c:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1aa0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1aa4:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1aa8:	46463758 			; <UNDEFINED> instruction: 0x46463758
    1aac:	372d5046 	strcc	r5, [sp, -r6, asr #32]!
    1ab0:	01004b48 	tsteq	r0, r8, asr #22
    1ab4:	535f5f00 	cmppl	pc, #0, 30
    1ab8:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1abc:	50455f4d 	subpl	r5, r5, sp, asr #30
    1ac0:	4f4c4953 	svcmi	0x004c4953
    1ac4:	205f5f4e 	subscs	r5, pc, lr, asr #30
    1ac8:	50317830 	eorspl	r7, r1, r0, lsr r8
    1acc:	4b48372d 	blmi	120f788 <__mprec_tinytens+0x11eaf18>
    1ad0:	5f000100 	svcpl	0x00000100
    1ad4:	4153555f 	cmpmi	r3, pc, asr r5
    1ad8:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1adc:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1ae0:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1ae4:	00010038 	andeq	r0, r1, r8, lsr r0
    1ae8:	53555f5f 	cmppl	r5, #380	; 0x17c
    1aec:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1af0:	42495f4d 	submi	r5, r9, #308	; 0x134
    1af4:	5f5f5449 	svcpl	0x005f5449
    1af8:	01003820 	tsteq	r0, r0, lsr #16
    1afc:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; c04 <current_sp+0xb50>
    1b00:	43434153 	movtmi	r4, #12627	; 0x3153
    1b04:	4d5f4d55 	ldclmi	13, cr4, [pc, #-340]	; 19b8 <ntopt_parse+0xf4>
    1b08:	5f5f4e49 	svcpl	0x005f4e49
    1b0c:	302e3020 	eorcc	r3, lr, r0, lsr #32
    1b10:	004b4855 	subeq	r4, fp, r5, asr r8
    1b14:	5f5f0001 	svcpl	0x005f0001
    1b18:	43415355 	movtmi	r5, #4949	; 0x1355
    1b1c:	5f4d5543 	svcpl	0x004d5543
    1b20:	5f58414d 	svcpl	0x0058414d
    1b24:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1b28:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1b2c:	55382d50 	ldrpl	r2, [r8, #-3408]!	; 0xfffff2b0
    1b30:	01004b48 	tsteq	r0, r8, asr #22
    1b34:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; c3c <current_sp+0xb88>
    1b38:	43434153 	movtmi	r4, #12627	; 0x3153
    1b3c:	455f4d55 	ldrbmi	r4, [pc, #-3413]	; def <usrcmd_execute+0x17>
    1b40:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    1b44:	5f5f4e4f 	svcpl	0x005f4e4f
    1b48:	31783020 	cmncc	r8, r0, lsr #32
    1b4c:	55382d50 	ldrpl	r2, [r8, #-3408]!	; 0xfffff2b0
    1b50:	01004b48 	tsteq	r0, r8, asr #22
    1b54:	415f5f00 	cmpmi	pc, r0, lsl #30
    1b58:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1b5c:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1b60:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1b64:	01003531 	tsteq	r0, r1, lsr r5
    1b68:	415f5f00 	cmpmi	pc, r0, lsl #30
    1b6c:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1b70:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    1b74:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1b78:	01003631 	tsteq	r0, r1, lsr r6
    1b7c:	415f5f00 	cmpmi	pc, r0, lsl #30
    1b80:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1b84:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1b88:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    1b8c:	3158302d 	cmpcc	r8, sp, lsr #32
    1b90:	4b353150 	blmi	d4e0d8 <__mprec_tinytens+0xd29868>
    1b94:	3158302d 	cmpcc	r8, sp, lsr #32
    1b98:	4b353150 	blmi	d4e0e0 <__mprec_tinytens+0xd29870>
    1b9c:	00010029 	andeq	r0, r1, r9, lsr #32
    1ba0:	43415f5f 	movtmi	r5, #8031	; 0x1f5f
    1ba4:	5f4d5543 	svcpl	0x004d5543
    1ba8:	5f58414d 	svcpl	0x0058414d
    1bac:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1bb0:	46464637 			; <UNDEFINED> instruction: 0x46464637
    1bb4:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1bb8:	35312d50 	ldrcc	r2, [r1, #-3408]!	; 0xfffff2b0
    1bbc:	0001004b 	andeq	r0, r1, fp, asr #32
    1bc0:	43415f5f 	movtmi	r5, #8031	; 0x1f5f
    1bc4:	5f4d5543 	svcpl	0x004d5543
    1bc8:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    1bcc:	5f4e4f4c 	svcpl	0x004e4f4c
    1bd0:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1bd4:	312d5031 			; <UNDEFINED> instruction: 0x312d5031
    1bd8:	01004b35 	tsteq	r0, r5, lsr fp
    1bdc:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; ce4 <current_sp+0xc30>
    1be0:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1be4:	42465f4d 	submi	r5, r6, #308	; 0x134
    1be8:	5f5f5449 	svcpl	0x005f5449
    1bec:	00363120 	eorseq	r3, r6, r0, lsr #2
    1bf0:	5f5f0001 	svcpl	0x005f0001
    1bf4:	43434155 	movtmi	r4, #12629	; 0x3155
    1bf8:	495f4d55 	ldmdbmi	pc, {r0, r2, r4, r6, r8, sl, fp, lr}^	; <UNPREDICTABLE>
    1bfc:	5f544942 	svcpl	0x00544942
    1c00:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    1c04:	5f000100 	svcpl	0x00000100
    1c08:	4341555f 	movtmi	r5, #5471	; 0x155f
    1c0c:	5f4d5543 	svcpl	0x004d5543
    1c10:	5f4e494d 	svcpl	0x004e494d
    1c14:	2e30205f 	mrccs	0, 1, r2, cr0, cr15, {2}
    1c18:	004b5530 	subeq	r5, fp, r0, lsr r5
    1c1c:	5f5f0001 	svcpl	0x005f0001
    1c20:	43434155 	movtmi	r4, #12629	; 0x3155
    1c24:	4d5f4d55 	ldclmi	13, cr4, [pc, #-340]	; 1ad8 <ntopt_parse+0x214>
    1c28:	5f5f5841 	svcpl	0x005f5841
    1c2c:	46583020 	ldrbmi	r3, [r8], -r0, lsr #32
    1c30:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1c34:	50464646 	subpl	r4, r6, r6, asr #12
    1c38:	5536312d 	ldrpl	r3, [r6, #-301]!	; 0xfffffed3
    1c3c:	0001004b 	andeq	r0, r1, fp, asr #32
    1c40:	41555f5f 	cmpmi	r5, pc, asr pc
    1c44:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1c48:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    1c4c:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    1c50:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1c54:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    1c58:	4b553631 	blmi	154f524 <__mprec_tinytens+0x152acb4>
    1c5c:	5f000100 	svcpl	0x00000100
    1c60:	43414c5f 	movtmi	r4, #7263	; 0x1c5f
    1c64:	5f4d5543 	svcpl	0x004d5543
    1c68:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    1c6c:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    1c70:	00010031 	andeq	r0, r1, r1, lsr r0
    1c74:	414c5f5f 	cmpmi	ip, pc, asr pc
    1c78:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1c7c:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    1c80:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1c84:	01003233 	tsteq	r0, r3, lsr r2
    1c88:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    1c8c:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1c90:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    1c94:	205f5f4e 	subscs	r5, pc, lr, asr #30
    1c98:	58302d28 	ldmdapl	r0!, {r3, r5, r8, sl, fp, sp}
    1c9c:	31335031 	teqcc	r3, r1, lsr r0
    1ca0:	302d4b4c 	eorcc	r4, sp, ip, asr #22
    1ca4:	33503158 	cmpcc	r0, #88, 2
    1ca8:	294b4c31 	stmdbcs	fp, {r0, r4, r5, sl, fp, lr}^
    1cac:	5f000100 	svcpl	0x00000100
    1cb0:	43414c5f 	movtmi	r4, #7263	; 0x1c5f
    1cb4:	5f4d5543 	svcpl	0x004d5543
    1cb8:	5f58414d 	svcpl	0x0058414d
    1cbc:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1cc0:	46464637 			; <UNDEFINED> instruction: 0x46464637
    1cc4:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1cc8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1ccc:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1cd0:	31332d50 	teqcc	r3, r0, asr sp
    1cd4:	01004b4c 	tsteq	r0, ip, asr #22
    1cd8:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    1cdc:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1ce0:	50455f4d 	subpl	r5, r5, sp, asr #30
    1ce4:	4f4c4953 	svcmi	0x004c4953
    1ce8:	205f5f4e 	subscs	r5, pc, lr, asr #30
    1cec:	50317830 	eorspl	r7, r1, r0, lsr r8
    1cf0:	4c31332d 	ldcmi	3, cr3, [r1], #-180	; 0xffffff4c
    1cf4:	0001004b 	andeq	r0, r1, fp, asr #32
    1cf8:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    1cfc:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1d00:	42465f4d 	submi	r5, r6, #308	; 0x134
    1d04:	5f5f5449 	svcpl	0x005f5449
    1d08:	00323320 	eorseq	r3, r2, r0, lsr #6
    1d0c:	5f5f0001 	svcpl	0x005f0001
    1d10:	43414c55 	movtmi	r4, #7253	; 0x1c55
    1d14:	5f4d5543 	svcpl	0x004d5543
    1d18:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    1d1c:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    1d20:	00010032 	andeq	r0, r1, r2, lsr r0
    1d24:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    1d28:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1d2c:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    1d30:	205f5f4e 	subscs	r5, pc, lr, asr #30
    1d34:	55302e30 	ldrpl	r2, [r0, #-3632]!	; 0xfffff1d0
    1d38:	01004b4c 	tsteq	r0, ip, asr #22
    1d3c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; e44 <srload+0x50>
    1d40:	4343414c 	movtmi	r4, #12620	; 0x314c
    1d44:	4d5f4d55 	ldclmi	13, cr4, [pc, #-340]	; 1bf8 <ntopt_parse+0x334>
    1d48:	5f5f5841 	svcpl	0x005f5841
    1d4c:	46583020 	ldrbmi	r3, [r8], -r0, lsr #32
    1d50:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1d54:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1d58:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1d5c:	50464646 	subpl	r4, r6, r6, asr #12
    1d60:	5532332d 	ldrpl	r3, [r2, #-813]!	; 0xfffffcd3
    1d64:	01004b4c 	tsteq	r0, ip, asr #22
    1d68:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; e70 <srload+0x7c>
    1d6c:	4343414c 	movtmi	r4, #12620	; 0x314c
    1d70:	455f4d55 	ldrbmi	r4, [pc, #-3413]	; 1023 <srload+0x22f>
    1d74:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    1d78:	5f5f4e4f 	svcpl	0x005f4e4f
    1d7c:	31783020 	cmncc	r8, r0, lsr #32
    1d80:	32332d50 	eorscc	r2, r3, #80, 26	; 0x1400
    1d84:	004b4c55 	subeq	r4, fp, r5, asr ip
    1d88:	5f5f0001 	svcpl	0x005f0001
    1d8c:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
    1d90:	5f4d5543 	svcpl	0x004d5543
    1d94:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    1d98:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    1d9c:	00010031 	andeq	r0, r1, r1, lsr r0
    1da0:	4c4c5f5f 	mcrrmi	15, 5, r5, ip, cr15
    1da4:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1da8:	42495f4d 	submi	r5, r9, #308	; 0x134
    1dac:	5f5f5449 	svcpl	0x005f5449
    1db0:	00323320 	eorseq	r3, r2, r0, lsr #6
    1db4:	5f5f0001 	svcpl	0x005f0001
    1db8:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
    1dbc:	5f4d5543 	svcpl	0x004d5543
    1dc0:	5f4e494d 	svcpl	0x004e494d
    1dc4:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    1dc8:	50315830 	eorspl	r5, r1, r0, lsr r8
    1dcc:	4c4c3133 	stfmie	f3, [ip], {51}	; 0x33
    1dd0:	58302d4b 	ldmdapl	r0!, {r0, r1, r3, r6, r8, sl, fp, sp}
    1dd4:	31335031 	teqcc	r3, r1, lsr r0
    1dd8:	294b4c4c 	stmdbcs	fp, {r2, r3, r6, sl, fp, lr}^
    1ddc:	5f000100 	svcpl	0x00000100
    1de0:	414c4c5f 	cmpmi	ip, pc, asr ip
    1de4:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1de8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1dec:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1df0:	46463758 			; <UNDEFINED> instruction: 0x46463758
    1df4:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1df8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1dfc:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1e00:	332d5046 			; <UNDEFINED> instruction: 0x332d5046
    1e04:	4b4c4c31 	blmi	1314ed0 <__mprec_tinytens+0x12f0660>
    1e08:	5f000100 	svcpl	0x00000100
    1e0c:	414c4c5f 	cmpmi	ip, pc, asr ip
    1e10:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1e14:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    1e18:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    1e1c:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1e20:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    1e24:	4c4c3133 	stfmie	f3, [ip], {51}	; 0x33
    1e28:	0001004b 	andeq	r0, r1, fp, asr #32
    1e2c:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    1e30:	4343414c 	movtmi	r4, #12620	; 0x314c
    1e34:	465f4d55 			; <UNDEFINED> instruction: 0x465f4d55
    1e38:	5f544942 	svcpl	0x00544942
    1e3c:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    1e40:	5f000100 	svcpl	0x00000100
    1e44:	4c4c555f 	cfstr64mi	mvdx5, [ip], {95}	; 0x5f
    1e48:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1e4c:	42495f4d 	submi	r5, r9, #308	; 0x134
    1e50:	5f5f5449 	svcpl	0x005f5449
    1e54:	00323320 	eorseq	r3, r2, r0, lsr #6
    1e58:	5f5f0001 	svcpl	0x005f0001
    1e5c:	414c4c55 	cmpmi	ip, r5, asr ip
    1e60:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1e64:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1e68:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1e6c:	4c55302e 	mrrcmi	0, 2, r3, r5, cr14
    1e70:	01004b4c 	tsteq	r0, ip, asr #22
    1e74:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; f7c <srload+0x188>
    1e78:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
    1e7c:	5f4d5543 	svcpl	0x004d5543
    1e80:	5f58414d 	svcpl	0x0058414d
    1e84:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1e88:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1e8c:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1e90:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1e94:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1e98:	32332d50 	eorscc	r2, r3, #80, 26	; 0x1400
    1e9c:	4b4c4c55 	blmi	1314ff8 <__mprec_tinytens+0x12f0788>
    1ea0:	5f000100 	svcpl	0x00000100
    1ea4:	4c4c555f 	cfstr64mi	mvdx5, [ip], {95}	; 0x5f
    1ea8:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1eac:	50455f4d 	subpl	r5, r5, sp, asr #30
    1eb0:	4f4c4953 	svcmi	0x004c4953
    1eb4:	205f5f4e 	subscs	r5, pc, lr, asr #30
    1eb8:	50317830 	eorspl	r7, r1, r0, lsr r8
    1ebc:	5532332d 	ldrpl	r3, [r2, #-813]!	; 0xfffffcd3
    1ec0:	004b4c4c 	subeq	r4, fp, ip, asr #24
    1ec4:	5f5f0001 	svcpl	0x005f0001
    1ec8:	465f5151 			; <UNDEFINED> instruction: 0x465f5151
    1ecc:	5f544942 	svcpl	0x00544942
    1ed0:	0037205f 	eorseq	r2, r7, pc, asr r0
    1ed4:	5f5f0001 	svcpl	0x005f0001
    1ed8:	495f5151 	ldmdbmi	pc, {r0, r4, r6, r8, ip, lr}^	; <UNPREDICTABLE>
    1edc:	5f544942 	svcpl	0x00544942
    1ee0:	0030205f 	eorseq	r2, r0, pc, asr r0
    1ee4:	5f5f0001 	svcpl	0x005f0001
    1ee8:	465f5148 	ldrbmi	r5, [pc], -r8, asr #2
    1eec:	5f544942 	svcpl	0x00544942
    1ef0:	3531205f 	ldrcc	r2, [r1, #-95]!	; 0xffffffa1
    1ef4:	5f000100 	svcpl	0x00000100
    1ef8:	5f51485f 	svcpl	0x0051485f
    1efc:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    1f00:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1f04:	5f000100 	svcpl	0x00000100
    1f08:	5f51535f 	svcpl	0x0051535f
    1f0c:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    1f10:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    1f14:	00010031 	andeq	r0, r1, r1, lsr r0
    1f18:	51535f5f 	cmppl	r3, pc, asr pc
    1f1c:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    1f20:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1f24:	00010030 	andeq	r0, r1, r0, lsr r0
    1f28:	51445f5f 	cmppl	r4, pc, asr pc
    1f2c:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1f30:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1f34:	01003336 	tsteq	r0, r6, lsr r3
    1f38:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 1f40 <ntopt_parse+0x67c>
    1f3c:	42495f51 	submi	r5, r9, #324	; 0x144
    1f40:	5f5f5449 	svcpl	0x005f5449
    1f44:	01003020 	tsteq	r0, r0, lsr #32
    1f48:	545f5f00 	ldrbpl	r5, [pc], #-3840	; 1f50 <ntopt_parse+0x68c>
    1f4c:	42465f51 	submi	r5, r6, #324	; 0x144
    1f50:	5f5f5449 	svcpl	0x005f5449
    1f54:	37323120 	ldrcc	r3, [r2, -r0, lsr #2]!
    1f58:	5f000100 	svcpl	0x00000100
    1f5c:	5f51545f 	svcpl	0x0051545f
    1f60:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    1f64:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1f68:	5f000100 	svcpl	0x00000100
    1f6c:	5151555f 	cmppl	r1, pc, asr r5
    1f70:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1f74:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1f78:	00010038 	andeq	r0, r1, r8, lsr r0
    1f7c:	51555f5f 	cmppl	r5, pc, asr pc
    1f80:	42495f51 	submi	r5, r9, #324	; 0x144
    1f84:	5f5f5449 	svcpl	0x005f5449
    1f88:	01003020 	tsteq	r0, r0, lsr #32
    1f8c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 1094 <srload+0x2a0>
    1f90:	465f5148 	ldrbmi	r5, [pc], -r8, asr #2
    1f94:	5f544942 	svcpl	0x00544942
    1f98:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    1f9c:	5f000100 	svcpl	0x00000100
    1fa0:	5148555f 	cmppl	r8, pc, asr r5
    1fa4:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    1fa8:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1fac:	00010030 	andeq	r0, r1, r0, lsr r0
    1fb0:	53555f5f 	cmppl	r5, #380	; 0x17c
    1fb4:	42465f51 	submi	r5, r6, #324	; 0x144
    1fb8:	5f5f5449 	svcpl	0x005f5449
    1fbc:	00323320 	eorseq	r3, r2, r0, lsr #6
    1fc0:	5f5f0001 	svcpl	0x005f0001
    1fc4:	5f515355 	svcpl	0x00515355
    1fc8:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    1fcc:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1fd0:	5f000100 	svcpl	0x00000100
    1fd4:	5144555f 	cmppl	r4, pc, asr r5
    1fd8:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1fdc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1fe0:	01003436 	tsteq	r0, r6, lsr r4
    1fe4:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 10ec <srload+0x2f8>
    1fe8:	495f5144 	ldmdbmi	pc, {r2, r6, r8, ip, lr}^	; <UNPREDICTABLE>
    1fec:	5f544942 	svcpl	0x00544942
    1ff0:	0030205f 	eorseq	r2, r0, pc, asr r0
    1ff4:	5f5f0001 	svcpl	0x005f0001
    1ff8:	5f515455 	svcpl	0x00515455
    1ffc:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    2000:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    2004:	01003832 	tsteq	r0, r2, lsr r8
    2008:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 1110 <srload+0x31c>
    200c:	495f5154 	ldmdbmi	pc, {r2, r4, r6, r8, ip, lr}^	; <UNPREDICTABLE>
    2010:	5f544942 	svcpl	0x00544942
    2014:	0030205f 	eorseq	r2, r0, pc, asr r0
    2018:	5f5f0001 	svcpl	0x005f0001
    201c:	465f4148 	ldrbmi	r4, [pc], -r8, asr #2
    2020:	5f544942 	svcpl	0x00544942
    2024:	0037205f 	eorseq	r2, r7, pc, asr r0
    2028:	5f5f0001 	svcpl	0x005f0001
    202c:	495f4148 	ldmdbmi	pc, {r3, r6, r8, lr}^	; <UNPREDICTABLE>
    2030:	5f544942 	svcpl	0x00544942
    2034:	0038205f 	eorseq	r2, r8, pc, asr r0
    2038:	5f5f0001 	svcpl	0x005f0001
    203c:	465f4153 			; <UNDEFINED> instruction: 0x465f4153
    2040:	5f544942 	svcpl	0x00544942
    2044:	3531205f 	ldrcc	r2, [r1, #-95]!	; 0xffffffa1
    2048:	5f000100 	svcpl	0x00000100
    204c:	5f41535f 	svcpl	0x0041535f
    2050:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    2054:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    2058:	00010036 	andeq	r0, r1, r6, lsr r0
    205c:	41445f5f 	cmpmi	r4, pc, asr pc
    2060:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    2064:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    2068:	01003133 	tsteq	r0, r3, lsr r1
    206c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 2074 <ntopt_parse+0x7b0>
    2070:	42495f41 	submi	r5, r9, #260	; 0x104
    2074:	5f5f5449 	svcpl	0x005f5449
    2078:	00323320 	eorseq	r3, r2, r0, lsr #6
    207c:	5f5f0001 	svcpl	0x005f0001
    2080:	465f4154 			; <UNDEFINED> instruction: 0x465f4154
    2084:	5f544942 	svcpl	0x00544942
    2088:	3336205f 	teqcc	r6, #95	; 0x5f
    208c:	5f000100 	svcpl	0x00000100
    2090:	5f41545f 	svcpl	0x0041545f
    2094:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    2098:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
    209c:	00010034 	andeq	r0, r1, r4, lsr r0
    20a0:	48555f5f 	ldmdami	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    20a4:	42465f41 	submi	r5, r6, #260	; 0x104
    20a8:	5f5f5449 	svcpl	0x005f5449
    20ac:	01003820 	tsteq	r0, r0, lsr #16
    20b0:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 11b8 <srload+0x3c4>
    20b4:	495f4148 	ldmdbmi	pc, {r3, r6, r8, lr}^	; <UNPREDICTABLE>
    20b8:	5f544942 	svcpl	0x00544942
    20bc:	0038205f 	eorseq	r2, r8, pc, asr r0
    20c0:	5f5f0001 	svcpl	0x005f0001
    20c4:	5f415355 	svcpl	0x00415355
    20c8:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    20cc:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    20d0:	00010036 	andeq	r0, r1, r6, lsr r0
    20d4:	53555f5f 	cmppl	r5, #380	; 0x17c
    20d8:	42495f41 	submi	r5, r9, #260	; 0x104
    20dc:	5f5f5449 	svcpl	0x005f5449
    20e0:	00363120 	eorseq	r3, r6, r0, lsr #2
    20e4:	5f5f0001 	svcpl	0x005f0001
    20e8:	5f414455 	svcpl	0x00414455
    20ec:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    20f0:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    20f4:	00010032 	andeq	r0, r1, r2, lsr r0
    20f8:	44555f5f 	ldrbmi	r5, [r5], #-3935	; 0xfffff0a1
    20fc:	42495f41 	submi	r5, r9, #260	; 0x104
    2100:	5f5f5449 	svcpl	0x005f5449
    2104:	00323320 	eorseq	r3, r2, r0, lsr #6
    2108:	5f5f0001 	svcpl	0x005f0001
    210c:	5f415455 	svcpl	0x00415455
    2110:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    2114:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
    2118:	00010034 	andeq	r0, r1, r4, lsr r0
    211c:	54555f5f 	ldrbpl	r5, [r5], #-3935	; 0xfffff0a1
    2120:	42495f41 	submi	r5, r9, #260	; 0x104
    2124:	5f5f5449 	svcpl	0x005f5449
    2128:	00343620 	eorseq	r3, r4, r0, lsr #12
    212c:	5f5f0001 	svcpl	0x005f0001
    2130:	49474552 	stmdbmi	r7, {r1, r4, r6, r8, sl, lr}^
    2134:	52455453 	subpl	r5, r5, #1392508928	; 0x53000000
    2138:	4552505f 	ldrbmi	r5, [r2, #-95]	; 0xffffffa1
    213c:	5f584946 	svcpl	0x00584946
    2140:	0100205f 	qaddeq	r2, pc, r0	; <UNPREDICTABLE>
    2144:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 124c <exec_file+0x80>
    2148:	5f524553 	svcpl	0x00524553
    214c:	4542414c 	strbmi	r4, [r2, #-332]	; 0xfffffeb4
    2150:	52505f4c 	subspl	r5, r0, #76, 30	; 0x130
    2154:	58494645 	stmdapl	r9, {r0, r2, r6, r9, sl, lr}^
    2158:	00205f5f 	eoreq	r5, r0, pc, asr pc
    215c:	5f5f0001 	svcpl	0x005f0001
    2160:	43554e47 	cmpmi	r5, #1136	; 0x470
    2164:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    2168:	4e495f43 	cdpmi	15, 4, cr5, cr9, cr3, {2}
    216c:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    2170:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    2174:	5f000100 	svcpl	0x00000100
    2178:	4148435f 	cmpmi	r8, pc, asr r3
    217c:	4e555f52 	mrcmi	15, 2, r5, cr5, cr2, {2}
    2180:	4e474953 			; <UNDEFINED> instruction: 0x4e474953
    2184:	5f5f4445 	svcpl	0x005f4445
    2188:	01003120 	tsteq	r0, r0, lsr #2
    218c:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    2190:	415f4343 	cmpmi	pc, r3, asr #6
    2194:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    2198:	4f425f43 	svcmi	0x00425f43
    219c:	4c5f4c4f 	mrrcmi	12, 4, r4, pc, cr15	; <UNPREDICTABLE>
    21a0:	5f4b434f 	svcpl	0x004b434f
    21a4:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    21a8:	01003120 	tsteq	r0, r0, lsr #2
    21ac:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    21b0:	415f4343 	cmpmi	pc, r3, asr #6
    21b4:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    21b8:	48435f43 	stmdami	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    21bc:	4c5f5241 	lfmmi	f5, 2, [pc], {65}	; 0x41
    21c0:	5f4b434f 	svcpl	0x004b434f
    21c4:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    21c8:	01003120 	tsteq	r0, r0, lsr #2
    21cc:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    21d0:	415f4343 	cmpmi	pc, r3, asr #6
    21d4:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    21d8:	48435f43 	stmdami	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    21dc:	36315241 	ldrtcc	r5, [r1], -r1, asr #4
    21e0:	4c5f545f 	cfldrdmi	mvd5, [pc], {95}	; 0x5f
    21e4:	5f4b434f 	svcpl	0x004b434f
    21e8:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    21ec:	01003120 	tsteq	r0, r0, lsr #2
    21f0:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    21f4:	415f4343 	cmpmi	pc, r3, asr #6
    21f8:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    21fc:	48435f43 	stmdami	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    2200:	32335241 	eorscc	r5, r3, #268435460	; 0x10000004
    2204:	4c5f545f 	cfldrdmi	mvd5, [pc], {95}	; 0x5f
    2208:	5f4b434f 	svcpl	0x004b434f
    220c:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    2210:	01003120 	tsteq	r0, r0, lsr #2
    2214:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    2218:	415f4343 	cmpmi	pc, r3, asr #6
    221c:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    2220:	43575f43 	cmpmi	r7, #268	; 0x10c
    2224:	5f524148 	svcpl	0x00524148
    2228:	4f4c5f54 	svcmi	0x004c5f54
    222c:	465f4b43 	ldrbmi	r4, [pc], -r3, asr #22
    2230:	20454552 	subcs	r4, r5, r2, asr r5
    2234:	00010031 	andeq	r0, r1, r1, lsr r0
    2238:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    223c:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    2240:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    2244:	4f48535f 	svcmi	0x0048535f
    2248:	4c5f5452 	cfldrdmi	mvd5, [pc], {82}	; 0x52
    224c:	5f4b434f 	svcpl	0x004b434f
    2250:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    2254:	01003120 	tsteq	r0, r0, lsr #2
    2258:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    225c:	415f4343 	cmpmi	pc, r3, asr #6
    2260:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    2264:	4e495f43 	cdpmi	15, 4, cr5, cr9, cr3, {2}
    2268:	4f4c5f54 	svcmi	0x004c5f54
    226c:	465f4b43 	ldrbmi	r4, [pc], -r3, asr #22
    2270:	20454552 	subcs	r4, r5, r2, asr r5
    2274:	00010031 	andeq	r0, r1, r1, lsr r0
    2278:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    227c:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    2280:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    2284:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    2288:	4f4c5f47 	svcmi	0x004c5f47
    228c:	465f4b43 	ldrbmi	r4, [pc], -r3, asr #22
    2290:	20454552 	subcs	r4, r5, r2, asr r5
    2294:	00010031 	andeq	r0, r1, r1, lsr r0
    2298:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    229c:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    22a0:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    22a4:	4f4c4c5f 	svcmi	0x004c4c5f
    22a8:	4c5f474e 	mrrcmi	7, 4, r4, pc, cr14	; <UNPREDICTABLE>
    22ac:	5f4b434f 	svcpl	0x004b434f
    22b0:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    22b4:	01003120 	tsteq	r0, r0, lsr #2
    22b8:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    22bc:	415f4343 	cmpmi	pc, r3, asr #6
    22c0:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    22c4:	45545f43 	ldrbmi	r5, [r4, #-3907]	; 0xfffff0bd
    22c8:	415f5453 	cmpmi	pc, r3, asr r4	; <UNPREDICTABLE>
    22cc:	535f444e 	cmppl	pc, #1308622848	; 0x4e000000
    22d0:	545f5445 	ldrbpl	r5, [pc], #-1093	; 22d8 <vtrecv_callback+0xa4>
    22d4:	56455552 			; <UNDEFINED> instruction: 0x56455552
    22d8:	31204c41 			; <UNDEFINED> instruction: 0x31204c41
    22dc:	5f000100 	svcpl	0x00000100
    22e0:	4343475f 	movtmi	r4, #14175	; 0x375f
    22e4:	4f54415f 	svcmi	0x0054415f
    22e8:	5f43494d 	svcpl	0x0043494d
    22ec:	4e494f50 	mcrmi	15, 2, r4, cr9, cr0, {2}
    22f0:	5f524554 	svcpl	0x00524554
    22f4:	4b434f4c 	blmi	10d602c <__mprec_tinytens+0x10b17bc>
    22f8:	4552465f 	ldrbmi	r4, [r2, #-1631]	; 0xfffff9a1
    22fc:	00312045 	eorseq	r2, r1, r5, asr #32
    2300:	5f5f0001 	svcpl	0x005f0001
    2304:	5f434347 	svcpl	0x00434347
    2308:	45564148 	ldrbmi	r4, [r6, #-328]	; 0xfffffeb8
    230c:	4157445f 	cmpmi	r7, pc, asr r4
    2310:	5f324652 	svcpl	0x00324652
    2314:	5f494643 	svcpl	0x00494643
    2318:	204d5341 	subcs	r5, sp, r1, asr #6
    231c:	00010031 	andeq	r0, r1, r1, lsr r0
    2320:	52505f5f 	subspl	r5, r0, #380	; 0x17c
    2324:	414d4741 	cmpmi	sp, r1, asr #14
    2328:	4445525f 	strbmi	r5, [r5], #-607	; 0xfffffda1
    232c:	4e494645 	cdpmi	6, 4, cr4, cr9, cr5, {2}
    2330:	58455f45 	stmdapl	r5, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    2334:	4d414e54 	stclmi	14, cr4, [r1, #-336]	; 0xfffffeb0
    2338:	00312045 	eorseq	r2, r1, r5, asr #32
    233c:	5f5f0001 	svcpl	0x005f0001
    2340:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2344:	575f464f 	ldrbpl	r4, [pc, -pc, asr #12]
    2348:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    234c:	5f5f545f 	svcpl	0x005f545f
    2350:	01003420 	tsteq	r0, r0, lsr #8
    2354:	535f5f00 	cmppl	pc, #0, 30
    2358:	4f455a49 	svcmi	0x00455a49
    235c:	49575f46 	ldmdbmi	r7, {r1, r2, r6, r8, r9, sl, fp, ip, lr}^
    2360:	545f544e 	ldrbpl	r5, [pc], #-1102	; 2368 <ntshell_init+0x18>
    2364:	34205f5f 	strtcc	r5, [r0], #-3935	; 0xfffff0a1
    2368:	5f000100 	svcpl	0x00000100
    236c:	5a49535f 	bpl	12570f0 <__mprec_tinytens+0x1232880>
    2370:	5f464f45 	svcpl	0x00464f45
    2374:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    2378:	5f464649 	svcpl	0x00464649
    237c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    2380:	00020034 	andeq	r0, r2, r4, lsr r0
    2384:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    2388:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    238c:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    2390:	53445f45 	movtpl	r5, #20293	; 0x4f45
    2394:	00020050 	andeq	r0, r2, r0, asr r0
    2398:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    239c:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    23a0:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    23a4:	42515f45 	subsmi	r5, r1, #276	; 0x114
    23a8:	02005449 	andeq	r5, r0, #1224736768	; 0x49000000
    23ac:	415f5f00 	cmpmi	pc, r0, lsl #30
    23b0:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    23b4:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    23b8:	535f4552 	cmppl	pc, #343932928	; 0x14800000
    23bc:	02005441 	andeq	r5, r0, #1090519040	; 0x41000000
    23c0:	415f5f00 	cmpmi	pc, r0, lsl #30
    23c4:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    23c8:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    23cc:	435f4552 	cmpmi	pc, #343932928	; 0x14800000
    23d0:	54505952 	ldrbpl	r5, [r0], #-2386	; 0xfffff6ae
    23d4:	0002004f 	andeq	r0, r2, pc, asr #32
    23d8:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    23dc:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    23e0:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    23e4:	4e555f45 	cdpmi	15, 5, cr5, cr5, cr5, {2}
    23e8:	47494c41 	strbmi	r4, [r9, -r1, asr #24]
    23ec:	0044454e 	subeq	r4, r4, lr, asr #10
    23f0:	5f5f0002 	svcpl	0x005f0002
    23f4:	5f4d5241 	svcpl	0x004d5241
    23f8:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    23fc:	5f455255 	svcpl	0x00455255
    2400:	4d445251 	sfmmi	f5, 2, [r4, #-324]	; 0xfffffebc
    2404:	00010058 	andeq	r0, r1, r8, asr r0
    2408:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    240c:	32335f4d 	eorscc	r5, r3, #308	; 0x134
    2410:	5f544942 	svcpl	0x00544942
    2414:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    2418:	00312045 	eorseq	r2, r1, r5, asr #32
    241c:	5f5f0002 	svcpl	0x005f0002
    2420:	5f4d5241 	svcpl	0x004d5241
    2424:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    2428:	5f455255 	svcpl	0x00455255
    242c:	4552444c 	ldrbmi	r4, [r2, #-1100]	; 0xfffffbb4
    2430:	00020058 	andeq	r0, r2, r8, asr r0
    2434:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    2438:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    243c:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    2440:	4c435f45 	mcrrmi	15, 4, r5, r3, cr5
    2444:	0002005a 	andeq	r0, r2, sl, asr r0
    2448:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    244c:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    2450:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    2454:	49535f45 	ldmdbmi	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    2458:	3233444d 	eorscc	r4, r3, #1291845632	; 0x4d000000
    245c:	5f000100 	svcpl	0x00000100
    2460:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    2464:	5a49535f 	bpl	12571e8 <__mprec_tinytens+0x1232978>
    2468:	5f464f45 	svcpl	0x00464f45
    246c:	494e494d 	stmdbmi	lr, {r0, r2, r3, r6, r8, fp, lr}^
    2470:	5f4c414d 	svcpl	0x004c414d
    2474:	4d554e45 	ldclmi	14, cr4, [r5, #-276]	; 0xfffffeec
    2478:	01003120 	tsteq	r0, r0, lsr #2
    247c:	415f5f00 	cmpmi	pc, r0, lsl #30
    2480:	535f4d52 	cmppl	pc, #5248	; 0x1480
    2484:	4f455a49 	svcmi	0x00455a49
    2488:	43575f46 	cmpmi	r7, #280	; 0x118
    248c:	5f524148 	svcpl	0x00524148
    2490:	00342054 	eorseq	r2, r4, r4, asr r0
    2494:	5f5f0001 	svcpl	0x005f0001
    2498:	5f6d7261 	svcpl	0x006d7261
    249c:	0031205f 	eorseq	r2, r1, pc, asr r0
    24a0:	5f5f0001 	svcpl	0x005f0001
    24a4:	5f4d5241 	svcpl	0x004d5241
    24a8:	48435241 	stmdami	r3, {r0, r6, r9, ip, lr}^
    24ac:	01003420 	tsteq	r0, r0, lsr #8
    24b0:	415f5f00 	cmpmi	pc, r0, lsl #30
    24b4:	415f4d52 	cmpmi	pc, r2, asr sp	; <UNPREDICTABLE>
    24b8:	5f484352 	svcpl	0x00484352
    24bc:	5f415349 	svcpl	0x00415349
    24c0:	204d5241 	subcs	r5, sp, r1, asr #4
    24c4:	00010031 	andeq	r0, r1, r1, lsr r0
    24c8:	50415f5f 	subpl	r5, r1, pc, asr pc
    24cc:	335f5343 	cmpcc	pc, #201326593	; 0xc000001
    24d0:	205f5f32 	subscs	r5, pc, r2, lsr pc	; <UNPREDICTABLE>
    24d4:	00020031 	andeq	r0, r2, r1, lsr r0
    24d8:	68745f5f 	ldmdavs	r4!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    24dc:	5f626d75 	svcpl	0x00626d75
    24e0:	0002005f 	andeq	r0, r2, pc, asr r0
    24e4:	68745f5f 	ldmdavs	r4!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    24e8:	32626d75 	rsbcc	r6, r2, #7488	; 0x1d40
    24ec:	02005f5f 	andeq	r5, r0, #380	; 0x17c
    24f0:	545f5f00 	ldrbpl	r5, [pc], #-3840	; 24f8 <ntstdio_putc+0x54>
    24f4:	424d5548 	submi	r5, sp, #72, 10	; 0x12000000
    24f8:	5f5f4c45 	svcpl	0x005f4c45
    24fc:	5f000100 	svcpl	0x00000100
    2500:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    2504:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
    2508:	53495f48 	movtpl	r5, #40776	; 0x9f48
    250c:	48545f41 	ldmdami	r4, {r0, r6, r8, r9, sl, fp, ip, lr}^
    2510:	20424d55 	subcs	r4, r2, r5, asr sp
    2514:	00010031 	andeq	r0, r1, r1, lsr r0
    2518:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    251c:	5f4c454d 	svcpl	0x004c454d
    2520:	0031205f 	eorseq	r2, r1, pc, asr r0
    2524:	5f5f0001 	svcpl	0x005f0001
    2528:	54464f53 	strbpl	r4, [r6], #-3923	; 0xfffff0ad
    252c:	5f5f5046 	svcpl	0x005f5046
    2530:	01003120 	tsteq	r0, r0, lsr #2
    2534:	565f5f00 	ldrbpl	r5, [pc], -r0, lsl #30
    2538:	465f5046 	ldrbmi	r5, [pc], -r6, asr #32
    253c:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    2540:	00020031 	andeq	r0, r2, r1, lsr r0
    2544:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    2548:	50465f4d 	subpl	r5, r6, sp, asr #30
    254c:	5f000200 	svcpl	0x00000200
    2550:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    2554:	4145465f 	cmpmi	r5, pc, asr r6
    2558:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    255c:	414d465f 	cmpmi	sp, pc, asr r6
    2560:	5f000200 	svcpl	0x00000200
    2564:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    2568:	4f454e5f 	svcmi	0x00454e5f
    256c:	005f5f4e 	subseq	r5, pc, lr, asr #30
    2570:	5f5f0002 	svcpl	0x005f0002
    2574:	5f4d5241 	svcpl	0x004d5241
    2578:	4e4f454e 	cdpmi	5, 4, cr4, cr15, cr14, {2}
    257c:	5f000200 	svcpl	0x00000200
    2580:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    2584:	4f454e5f 	svcmi	0x00454e5f
    2588:	50465f4e 	subpl	r5, r6, lr, asr #30
    258c:	5f000100 	svcpl	0x00000100
    2590:	5548545f 	strbpl	r5, [r8, #-1119]	; 0xfffffba1
    2594:	495f424d 	ldmdbmi	pc, {r0, r2, r3, r6, r9, lr}^	; <UNPREDICTABLE>
    2598:	5245544e 	subpl	r5, r5, #1308622848	; 0x4e000000
    259c:	4b524f57 	blmi	1496300 <__mprec_tinytens+0x1471a90>
    25a0:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    25a4:	5f000100 	svcpl	0x00000100
    25a8:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    25ac:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
    25b0:	54345f48 	ldrtpl	r5, [r4], #-3912	; 0xfffff0b8
    25b4:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    25b8:	5f000100 	svcpl	0x00000100
    25bc:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    25c0:	5343505f 	movtpl	r5, #12383	; 0x305f
    25c4:	01003120 	tsteq	r0, r0, lsr #2
    25c8:	415f5f00 	cmpmi	pc, r0, lsl #30
    25cc:	455f4d52 	ldrbmi	r4, [pc, #-3410]	; 1882 <ntlibc_utoa+0x46>
    25d0:	5f494241 	svcpl	0x00494241
    25d4:	0031205f 	eorseq	r2, r1, pc, asr r0
    25d8:	5f5f0002 	svcpl	0x005f0002
    25dc:	5f4d5241 	svcpl	0x004d5241
    25e0:	48435241 	stmdami	r3, {r0, r6, r9, ip, lr}^
    25e4:	5458455f 	ldrbpl	r4, [r8], #-1375	; 0xfffffaa1
    25e8:	4944495f 	stmdbmi	r4, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    25ec:	005f5f56 	subseq	r5, pc, r6, asr pc	; <UNPREDICTABLE>
    25f0:	5f5f0002 	svcpl	0x005f0002
    25f4:	5f4d5241 	svcpl	0x004d5241
    25f8:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    25fc:	5f455255 	svcpl	0x00455255
    2600:	56494449 	strbpl	r4, [r9], -r9, asr #8
    2604:	5f000200 	svcpl	0x00000200
    2608:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    260c:	4d53415f 	ldfmie	f4, [r3, #-380]	; 0xfffffe84
    2610:	4e59535f 	mrcmi	3, 2, r5, cr9, cr15, {2}
    2614:	5f584154 	svcpl	0x00584154
    2618:	46494e55 			; <UNDEFINED> instruction: 0x46494e55
    261c:	5f444549 	svcpl	0x00444549
    2620:	0001005f 	andeq	r0, r1, pc, asr r0
    2624:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    2628:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    262c:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    2630:	4f435f45 	svcmi	0x00435f45
    2634:	434f5250 	movtmi	r5, #62032	; 0xf250
    2638:	01003120 	tsteq	r0, r0, lsr #2
    263c:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    2640:	545f5858 	ldrbpl	r5, [pc], #-2136	; 2648 <ntstdio_puts+0x138>
    2644:	49455059 	stmdbmi	r5, {r0, r3, r4, r6, ip, lr}^
    2648:	5f4f464e 	svcpl	0x004f464e
    264c:	41555145 	cmpmi	r5, r5, asr #2
    2650:	5954494c 	ldmdbpl	r4, {r2, r3, r6, r8, fp, lr}^
    2654:	4c4e495f 	mcrrmi	9, 5, r4, lr, cr15	; <UNPREDICTABLE>
    2658:	20454e49 	subcs	r4, r5, r9, asr #28
    265c:	00010030 	andeq	r0, r1, r0, lsr r0
    2660:	4c455f5f 	mcrrmi	15, 5, r5, r5, cr15
    2664:	205f5f46 	subscs	r5, pc, r6, asr #30
    2668:	00010031 	andeq	r0, r1, r1, lsr r0
    266c:	53555f5f 	cmppl	r5, #380	; 0x17c
    2670:	495f5345 	ldmdbmi	pc, {r0, r2, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
    2674:	4654494e 	ldrbmi	r4, [r4], -lr, asr #18
    2678:	5f494e49 	svcpl	0x00494e49
    267c:	0031205f 	eorseq	r2, r1, pc, asr r0
    2680:	03010003 	movweq	r0, #4099	; 0x1003
    2684:	02010205 	andeq	r0, r1, #1342177280	; 0x50000000
    2688:	4f49425f 	svcmi	0x0049425f
    268c:	38333253 	ldmdacc	r3!, {r0, r1, r4, r6, r9, ip, sp}
    2690:	5f485f38 	svcpl	0x00485f38
    2694:	04030020 	streq	r0, [r3], #-32	; 0xffffffe0
    2698:	0d09030c 	stceq	3, cr0, [r9, #-48]	; 0xffffffd0
    269c:	535f0a01 	cmppl	pc, #4096	; 0x1000
    26a0:	4e494454 	mcrmi	4, 2, r4, cr9, cr4, {2}
    26a4:	20485f54 	subcs	r5, r8, r4, asr pc
    26a8:	030c0300 	movweq	r0, #49920	; 0xc300
    26ac:	4d5f0601 	ldclmi	6, cr0, [pc, #-4]	; 26b0 <ntstdio_puts+0x1a0>
    26b0:	49484341 	stmdbmi	r8, {r0, r6, r8, r9, lr}^
    26b4:	5f5f454e 	svcpl	0x005f454e
    26b8:	41464544 	cmpmi	r6, r4, asr #10
    26bc:	5f544c55 	svcpl	0x00544c55
    26c0:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    26c4:	20485f53 	subcs	r5, r8, r3, asr pc
    26c8:	0e080300 	cdpeq	3, 0, cr0, cr8, cr0, {0}
    26cc:	535f1601 	cmppl	pc, #1048576	; 0x100000
    26d0:	465f5359 			; <UNDEFINED> instruction: 0x465f5359
    26d4:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    26d8:	5f534552 	svcpl	0x00534552
    26dc:	03002048 	movweq	r2, #72	; 0x48
    26e0:	04010f1c 	streq	r0, [r1], #-3868	; 0xfffff0e4
    26e4:	57454e5f 	smlsldpl	r4, r5, pc, lr	; <UNPREDICTABLE>
    26e8:	5f42494c 	svcpl	0x0042494c
    26ec:	53524556 	cmppl	r2, #360710144	; 0x15800000
    26f0:	5f4e4f49 	svcpl	0x004e4f49
    26f4:	205f5f48 	subscs	r5, pc, r8, asr #30
    26f8:	06010031 			; <UNDEFINED> instruction: 0x06010031
    26fc:	57454e5f 	smlsldpl	r4, r5, pc, lr	; <UNPREDICTABLE>
    2700:	5f42494c 	svcpl	0x0042494c
    2704:	53524556 	cmppl	r2, #360710144	; 0x15800000
    2708:	204e4f49 	subcs	r4, lr, r9, asr #30
    270c:	352e3222 	strcc	r3, [lr, #-546]!	; 0xfffffdde
    2710:	0022302e 	eoreq	r3, r2, lr, lsr #32
    2714:	5f5f0701 	svcpl	0x005f0701
    2718:	4c57454e 	cfldr64mi	mvdx4, [r7], {78}	; 0x4e
    271c:	5f5f4249 	svcpl	0x005f4249
    2720:	01003220 	tsteq	r0, r0, lsr #4
    2724:	4e5f5f08 	cdpmi	15, 5, cr5, cr15, cr8, {0}
    2728:	494c5745 	stmdbmi	ip, {r0, r2, r6, r8, r9, sl, ip, lr}^
    272c:	494d5f42 	stmdbmi	sp, {r1, r6, r8, r9, sl, fp, ip, lr}^
    2730:	5f524f4e 	svcpl	0x00524f4e
    2734:	0035205f 	eorseq	r2, r5, pc, asr r0
    2738:	5f5f0901 	svcpl	0x005f0901
    273c:	4c57454e 	cfldr64mi	mvdx4, [r7], {78}	; 0x4e
    2740:	505f4249 	subspl	r4, pc, r9, asr #4
    2744:	48435441 	stmdami	r3, {r0, r6, sl, ip, lr}^
    2748:	4556454c 	ldrbmi	r4, [r6, #-1356]	; 0xfffffab4
    274c:	205f5f4c 	subscs	r5, pc, ip, asr #30
    2750:	01040030 	tsteq	r4, r0, lsr r0
    2754:	475f5f21 	ldrbmi	r5, [pc, -r1, lsr #30]
    2758:	5f43554e 	svcpl	0x0043554e
    275c:	52455250 	subpl	r5, r5, #80, 4
    2760:	6d285145 	stfvss	f5, [r8, #-276]!	; 0xfffffeec
    2764:	6d2c6a61 	vstmdbvs	ip!, {s12-s108}
    2768:	20296e69 	eorcs	r6, r9, r9, ror #28
    276c:	5f5f2828 	svcpl	0x005f2828
    2770:	43554e47 	cmpmi	r5, #1136	; 0x470
    2774:	3c205f5f 	stccc	15, cr5, [r0], #-380	; 0xfffffe84
    2778:	3631203c 			; <UNDEFINED> instruction: 0x3631203c
    277c:	202b2029 	eorcs	r2, fp, r9, lsr #32
    2780:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    2784:	4d5f4355 	ldclmi	3, cr4, [pc, #-340]	; 2638 <ntstdio_puts+0x128>
    2788:	524f4e49 	subpl	r4, pc, #1168	; 0x490
    278c:	3e205f5f 	mcrcc	15, 1, r5, cr0, cr15, {2}
    2790:	2828203d 	stmdacs	r8!, {r0, r2, r3, r4, r5, sp}
    2794:	296a616d 	stmdbcs	sl!, {r0, r2, r3, r5, r6, r8, sp, lr}^
    2798:	203c3c20 	eorscs	r3, ip, r0, lsr #24
    279c:	20293631 	eorcs	r3, r9, r1, lsr r6
    27a0:	6d28202b 	stcvs	0, cr2, [r8, #-172]!	; 0xffffff54
    27a4:	29296e69 	stmdbcs	r9!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}
    27a8:	5f280100 	svcpl	0x00280100
    27ac:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    27b0:	52505f43 	subspl	r5, r0, #268	; 0x10c
    27b4:	51455245 	cmppl	r5, r5, asr #4
    27b8:	6d285f5f 	stcvs	15, cr5, [r8, #-380]!	; 0xfffffe84
    27bc:	696d2c61 	stmdbvs	sp!, {r0, r5, r6, sl, fp, sp}^
    27c0:	5f5f2029 	svcpl	0x005f2029
    27c4:	43554e47 	cmpmi	r5, #1136	; 0x470
    27c8:	4552505f 	ldrbmi	r5, [r2, #-95]	; 0xffffffa1
    27cc:	28514552 	ldmdacs	r1, {r1, r4, r6, r8, sl, lr}^
    27d0:	202c616d 	eorcs	r6, ip, sp, ror #2
    27d4:	0029696d 	eoreq	r6, r9, sp, ror #18
    27d8:	5f018002 	svcpl	0x00018002
    27dc:	41464544 	cmpmi	r6, r4, asr #10
    27e0:	5f544c55 	svcpl	0x00544c55
    27e4:	52554f53 	subspl	r4, r5, #332	; 0x14c
    27e8:	01004543 	tsteq	r0, r3, asr #10
    27ec:	445f0181 	ldrbmi	r0, [pc], #-385	; 27f4 <ntstdio_puts+0x2e4>
    27f0:	55414645 	strbpl	r4, [r1, #-1605]	; 0xfffff9bb
    27f4:	535f544c 	cmppl	pc, #76, 8	; 0x4c000000
    27f8:	4352554f 	cmpmi	r2, #331350016	; 0x13c00000
    27fc:	00312045 	eorseq	r2, r1, r5, asr #32
    2800:	5f018502 	svcpl	0x00018502
    2804:	49534f50 	ldmdbmi	r3, {r4, r6, r8, r9, sl, fp, lr}^
    2808:	4f535f58 	svcmi	0x00535f58
    280c:	45435255 	strbmi	r5, [r3, #-597]	; 0xfffffdab
    2810:	01860100 	orreq	r0, r6, r0, lsl #2
    2814:	534f505f 	movtpl	r5, #61535	; 0xf05f
    2818:	535f5849 	cmppl	pc, #4784128	; 0x490000
    281c:	4352554f 	cmpmi	r2, #331350016	; 0x13c00000
    2820:	00312045 	eorseq	r2, r1, r5, asr #32
    2824:	5f018702 	svcpl	0x00018702
    2828:	49534f50 	ldmdbmi	r3, {r4, r6, r8, r9, sl, fp, lr}^
    282c:	5f435f58 	svcpl	0x00435f58
    2830:	52554f53 	subspl	r4, r5, #332	; 0x14c
    2834:	01004543 	tsteq	r0, r3, asr #10
    2838:	505f0188 	subspl	r0, pc, r8, lsl #3
    283c:	5849534f 	stmdapl	r9, {r0, r1, r2, r3, r6, r8, r9, ip, lr}^
    2840:	535f435f 	cmppl	pc, #2080374785	; 0x7c000001
    2844:	4352554f 	cmpmi	r2, #331350016	; 0x13c00000
    2848:	30322045 	eorscc	r2, r2, r5, asr #32
    284c:	39303830 	ldmdbcc	r0!, {r4, r5, fp, ip, sp}
    2850:	9b02004c 	blls	82988 <__mprec_tinytens+0x5e118>
    2854:	54415f01 	strbpl	r5, [r1], #-3841	; 0xfffff0ff
    2858:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
    285c:	554f535f 	strbpl	r5, [pc, #-863]	; 2505 <ntstdio_putc+0x61>
    2860:	00454352 	subeq	r4, r5, r2, asr r3
    2864:	5f019c01 	svcpl	0x00019c01
    2868:	49465441 	stmdbmi	r6, {r0, r6, sl, ip, lr}^
    286c:	535f454c 	cmppl	pc, #76, 10	; 0x13000000
    2870:	4352554f 	cmpmi	r2, #331350016	; 0x13c00000
    2874:	00312045 	eorseq	r2, r1, r5, asr #32
    2878:	5f01f201 	svcpl	0x0001f201
    287c:	4654415f 			; <UNDEFINED> instruction: 0x4654415f
    2880:	5f454c49 	svcpl	0x00454c49
    2884:	49534956 	ldmdbmi	r3, {r1, r2, r4, r6, r8, fp, lr}^
    2888:	20454c42 	subcs	r4, r5, r2, asr #24
    288c:	f8010031 			; <UNDEFINED> instruction: 0xf8010031
    2890:	425f5f01 	subsmi	r5, pc, #1, 30
    2894:	565f4453 			; <UNDEFINED> instruction: 0x565f4453
    2898:	42495349 	submi	r5, r9, #603979777	; 0x24000001
    289c:	3120454c 			; <UNDEFINED> instruction: 0x3120454c
    28a0:	02800100 	addeq	r0, r0, #0, 2
    28a4:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    28a8:	49565f55 	ldmdbmi	r6, {r0, r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    28ac:	4c424953 	mcrrmi	9, 5, r4, r2, cr3	; <UNPREDICTABLE>
    28b0:	00302045 	eorseq	r2, r0, r5, asr #32
    28b4:	5f028501 	svcpl	0x00028501
    28b8:	4f53495f 	svcmi	0x0053495f
    28bc:	565f435f 			; <UNDEFINED> instruction: 0x565f435f
    28c0:	42495349 	submi	r5, r9, #603979777	; 0x24000001
    28c4:	3220454c 	eorcc	r4, r0, #76, 10	; 0x13000000
    28c8:	00313130 	eorseq	r3, r1, r0, lsr r1
    28cc:	5f029001 	svcpl	0x00029001
    28d0:	52414c5f 	subpl	r4, r1, #24320	; 0x5f00
    28d4:	49464547 	stmdbmi	r6, {r0, r1, r2, r6, r8, sl, lr}^
    28d8:	565f454c 	ldrbpl	r4, [pc], -ip, asr #10
    28dc:	42495349 	submi	r5, r9, #603979777	; 0x24000001
    28e0:	3020454c 	eorcc	r4, r0, ip, asr #10
    28e4:	02940100 	addseq	r0, r4, #0, 2
    28e8:	494d5f5f 	stmdbmi	sp, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    28ec:	565f4353 			; <UNDEFINED> instruction: 0x565f4353
    28f0:	42495349 	submi	r5, r9, #603979777	; 0x24000001
    28f4:	3120454c 			; <UNDEFINED> instruction: 0x3120454c
    28f8:	029a0100 	addseq	r0, sl, #0, 2
    28fc:	4f505f5f 	svcmi	0x00505f5f
    2900:	5f584953 	svcpl	0x00584953
    2904:	49534956 	ldmdbmi	r3, {r1, r2, r4, r6, r8, fp, lr}^
    2908:	20454c42 	subcs	r4, r5, r2, asr #24
    290c:	38303032 	ldmdacc	r0!, {r1, r4, r5, ip, sp}
    2910:	01003930 	tsteq	r0, r0, lsr r9
    2914:	5f5f02aa 	svcpl	0x005f02aa
    2918:	44495653 	strbmi	r5, [r9], #-1619	; 0xfffff9ad
    291c:	5349565f 	movtpl	r5, #38495	; 0x965f
    2920:	454c4249 	strbmi	r4, [ip, #-585]	; 0xfffffdb7
    2924:	01003120 	tsteq	r0, r0, lsr #2
    2928:	5f5f02ba 	svcpl	0x005f02ba
    292c:	5f495358 	svcpl	0x00495358
    2930:	49534956 	ldmdbmi	r3, {r1, r2, r4, r6, r8, fp, lr}^
    2934:	20454c42 	subcs	r4, r5, r2, asr #24
    2938:	01040030 	tsteq	r4, r0, lsr r0
    293c:	455f5f0f 	ldrbmi	r5, [pc, #-3855]	; 1a35 <ntopt_parse+0x171>
    2940:	78285058 	stmdavc	r8!, {r3, r4, r6, ip, lr}
    2944:	5f5f2029 	svcpl	0x005f2029
    2948:	78232320 	stmdavc	r3!, {r5, r8, r9, sp}
    294c:	5f232320 	svcpl	0x00232320
    2950:	1a01005f 	bne	42ad4 <__mprec_tinytens+0x1e264>
    2954:	61685f5f 	cmnvs	r8, pc, asr pc
    2958:	6c5f6576 	cfldr64vs	mvdx6, [pc], {118}	; 0x76
    295c:	6c676e6f 	stclvs	14, cr6, [r7], #-444	; 0xfffffe44
    2960:	36676e6f 	strbtcc	r6, [r7], -pc, ror #28
    2964:	00312034 	eorseq	r2, r1, r4, lsr r0
    2968:	5f5f2101 	svcpl	0x005f2101
    296c:	65766168 	ldrbvs	r6, [r6, #-360]!	; 0xfffffe98
    2970:	6e6f6c5f 	mcrvs	12, 3, r6, cr15, cr15, {2}
    2974:	20323367 	eorscs	r3, r2, r7, ror #6
    2978:	2f010031 	svccs	0x00010031
    297c:	695f5f5f 	ldmdbvs	pc, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2980:	5f38746e 	svcpl	0x0038746e
    2984:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    2988:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    298c:	00312064 	eorseq	r2, r1, r4, rrx
    2990:	5f5f3d01 	svcpl	0x005f3d01
    2994:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    2998:	745f3631 	ldrbvc	r3, [pc], #-1585	; 29a0 <ntstdio_fputs+0x30>
    299c:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    29a0:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    29a4:	01003120 	tsteq	r0, r0, lsr #2
    29a8:	5f5f5f53 	svcpl	0x005f5f53
    29ac:	33746e69 	cmncc	r4, #1680	; 0x690
    29b0:	5f745f32 	svcpl	0x00745f32
    29b4:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    29b8:	2064656e 	rsbcs	r6, r4, lr, ror #10
    29bc:	6d010031 	stcvs	0, cr0, [r1, #-196]	; 0xffffff3c
    29c0:	695f5f5f 	ldmdbvs	pc, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    29c4:	3436746e 	ldrtcc	r7, [r6], #-1134	; 0xfffffb92
    29c8:	645f745f 	ldrbvs	r7, [pc], #-1119	; 29d0 <ntstdio_printf+0x20>
    29cc:	6e696665 	cdpvs	6, 6, cr6, cr9, cr5, {3}
    29d0:	31206465 			; <UNDEFINED> instruction: 0x31206465
    29d4:	018c0100 	orreq	r0, ip, r0, lsl #2
    29d8:	695f5f5f 	ldmdbvs	pc, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    29dc:	6c5f746e 	cfldrdvs	mvd7, [pc], {110}	; 0x6e
    29e0:	74736165 	ldrbtvc	r6, [r3], #-357	; 0xfffffe9b
    29e4:	5f745f38 	svcpl	0x00745f38
    29e8:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    29ec:	2064656e 	rsbcs	r6, r4, lr, ror #10
    29f0:	a6010031 			; <UNDEFINED> instruction: 0xa6010031
    29f4:	5f5f5f01 	svcpl	0x005f5f01
    29f8:	5f746e69 	svcpl	0x00746e69
    29fc:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    2a00:	5f363174 	svcpl	0x00363174
    2a04:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    2a08:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    2a0c:	00312064 	eorseq	r2, r1, r4, rrx
    2a10:	5f01bc01 	svcpl	0x0001bc01
    2a14:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    2a18:	656c5f74 	strbvs	r5, [ip, #-3956]!	; 0xfffff08c
    2a1c:	33747361 	cmncc	r4, #-2080374783	; 0x84000001
    2a20:	5f745f32 	svcpl	0x00745f32
    2a24:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    2a28:	2064656e 	rsbcs	r6, r4, lr, ror #10
    2a2c:	ce010031 	mcrgt	0, 0, r0, cr1, cr1, {1}
    2a30:	5f5f5f01 	svcpl	0x005f5f01
    2a34:	5f746e69 	svcpl	0x00746e69
    2a38:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    2a3c:	5f343674 	svcpl	0x00343674
    2a40:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    2a44:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    2a48:	00312064 	eorseq	r2, r1, r4, rrx
    2a4c:	5f01f402 	svcpl	0x0001f402
    2a50:	5058455f 	subspl	r4, r8, pc, asr r5
    2a54:	0d030400 	cfstrseq	mvf0, [r3, #-0]
    2a58:	5f0a0110 	svcpl	0x000a0110
    2a5c:	5f535953 	svcpl	0x00535953
    2a60:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2a64:	5f505553 	svcpl	0x00505553
    2a68:	01002048 	tsteq	r0, r8, asr #32
    2a6c:	535f5f10 	cmppl	pc, #16, 30	; 0x40
    2a70:	4e494454 	mcrmi	4, 2, r4, cr9, cr4, {2}
    2a74:	58455f54 	stmdapl	r5, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2a78:	29782850 	ldmdbcs	r8!, {r4, r6, fp, sp}^
    2a7c:	205f5f20 	subscs	r5, pc, r0, lsr #30
    2a80:	20782323 	rsbscs	r2, r8, r3, lsr #6
    2a84:	5f5f2323 	svcpl	0x005f2323
    2a88:	732a0200 			; <UNDEFINED> instruction: 0x732a0200
    2a8c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    2a90:	2b020064 	blcs	82c28 <__mprec_tinytens+0x5e3b8>
    2a94:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    2a98:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    2a9c:	632c0200 			; <UNDEFINED> instruction: 0x632c0200
    2aa0:	00726168 	rsbseq	r6, r2, r8, ror #2
    2aa4:	68732d02 	ldmdavs	r3!, {r1, r8, sl, fp, sp}^
    2aa8:	0074726f 	rsbseq	r7, r4, pc, ror #4
    2aac:	6e692e02 	cdpvs	14, 6, cr2, cr9, cr2, {0}
    2ab0:	2f020074 	svccs	0x00020074
    2ab4:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    2ab8:	00303274 	eorseq	r3, r0, r4, ror r2
    2abc:	6f6c3002 	svcvs	0x006c3002
    2ac0:	0100676e 	tsteq	r0, lr, ror #14
    2ac4:	67697331 			; <UNDEFINED> instruction: 0x67697331
    2ac8:	2064656e 	rsbcs	r6, r4, lr, ror #10
    2acc:	0100302b 	tsteq	r0, fp, lsr #32
    2ad0:	736e7532 	cmnvc	lr, #209715200	; 0xc800000
    2ad4:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    2ad8:	302b2064 	eorcc	r2, fp, r4, rrx
    2adc:	63330100 	teqvs	r3, #0, 2
    2ae0:	20726168 	rsbscs	r6, r2, r8, ror #2
    2ae4:	0100302b 	tsteq	r0, fp, lsr #32
    2ae8:	6f687334 	svcvs	0x00687334
    2aec:	2b207472 	blcs	81fcbc <__mprec_tinytens+0x7fb44c>
    2af0:	35010031 	strcc	r0, [r1, #-49]	; 0xffffffcf
    2af4:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    2af8:	20303274 	eorscs	r3, r0, r4, ror r2
    2afc:	0100322b 	tsteq	r0, fp, lsr #4
    2b00:	746e6936 	strbtvc	r6, [lr], #-2358	; 0xfffff6ca
    2b04:	00322b20 	eorseq	r2, r2, r0, lsr #22
    2b08:	6f6c3701 	svcvs	0x006c3701
    2b0c:	2b20676e 	blcs	81c8cc <__mprec_tinytens+0x7f805c>
    2b10:	40010034 	andmi	r0, r1, r4, lsr r0
    2b14:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2b18:	5f525450 	svcpl	0x00525450
    2b1c:	495f5145 	ldmdbmi	pc, {r0, r2, r6, r8, ip, lr}^	; <UNPREDICTABLE>
    2b20:	0020544e 	eoreq	r5, r0, lr, asr #8
    2b24:	495f4701 	ldmdbmi	pc, {r0, r8, r9, sl, lr}^	; <UNPREDICTABLE>
    2b28:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    2b2c:	5f51455f 	svcpl	0x0051455f
    2b30:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    2b34:	4f010020 	svcmi	0x00010020
    2b38:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    2b3c:	22203854 	eorcs	r3, r0, #84, 16	; 0x540000
    2b40:	00226868 	eoreq	r6, r2, r8, ror #16
    2b44:	5f5f5a01 	svcpl	0x005f5a01
    2b48:	31544e49 	cmpcc	r4, r9, asr #28
    2b4c:	68222036 	stmdavs	r2!, {r1, r2, r4, r5, sp}
    2b50:	65010022 	strvs	r0, [r1, #-34]	; 0xffffffde
    2b54:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    2b58:	20323354 	eorscs	r3, r2, r4, asr r3
    2b5c:	00226c22 	eoreq	r6, r2, r2, lsr #24
    2b60:	5f5f6e01 	svcpl	0x005f6e01
    2b64:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    2b68:	6c222034 	stcvs	0, cr2, [r2], #-208	; 0xffffff30
    2b6c:	0100226c 	tsteq	r0, ip, ror #4
    2b70:	465f5f75 	usub16mi	r5, pc, r5	; <UNPREDICTABLE>
    2b74:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    2b78:	7e010020 	cdpvc	0, 0, cr0, cr1, cr0, {1}
    2b7c:	41465f5f 	cmpmi	r6, pc, asr pc
    2b80:	36315453 			; <UNDEFINED> instruction: 0x36315453
    2b84:	85010020 	strhi	r0, [r1, #-32]	; 0xffffffe0
    2b88:	465f5f01 	ldrbmi	r5, [pc], -r1, lsl #30
    2b8c:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    2b90:	01002032 	tsteq	r0, r2, lsr r0
    2b94:	5f5f0190 	svcpl	0x005f0190
    2b98:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    2b9c:	22203436 	eorcs	r3, r0, #905969664	; 0x36000000
    2ba0:	00226c6c 	eoreq	r6, r2, ip, ror #24
    2ba4:	5f019401 	svcpl	0x00019401
    2ba8:	41454c5f 	cmpmi	r5, pc, asr ip
    2bac:	20385453 	eorscs	r5, r8, r3, asr r4
    2bb0:	22686822 	rsbcs	r6, r8, #2228224	; 0x220000
    2bb4:	019f0100 	orrseq	r0, pc, r0, lsl #2
    2bb8:	454c5f5f 	strbmi	r5, [ip, #-3935]	; 0xfffff0a1
    2bbc:	31545341 	cmpcc	r4, r1, asr #6
    2bc0:	68222036 	stmdavs	r2!, {r1, r2, r4, r5, sp}
    2bc4:	aa010022 	bge	42c54 <__mprec_tinytens+0x1e3e4>
    2bc8:	4c5f5f01 	mrrcmi	15, 0, r5, pc, cr1	; <UNPREDICTABLE>
    2bcc:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    2bd0:	22203233 	eorcs	r3, r0, #805306371	; 0x30000003
    2bd4:	0100226c 	tsteq	r0, ip, ror #4
    2bd8:	5f5f01b3 	svcpl	0x005f01b3
    2bdc:	5341454c 	movtpl	r4, #5452	; 0x154c
    2be0:	20343654 	eorscs	r3, r4, r4, asr r6
    2be4:	226c6c22 	rsbcs	r6, ip, #8704	; 0x2200
    2be8:	01b50200 			; <UNDEFINED> instruction: 0x01b50200
    2bec:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    2bf0:	02006465 	andeq	r6, r0, #1694498816	; 0x65000000
    2bf4:	6e7501b6 	mrcvs	1, 3, r0, cr5, cr6, {5}
    2bf8:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    2bfc:	02006465 	andeq	r6, r0, #1694498816	; 0x65000000
    2c00:	686301b7 	stmdavs	r3!, {r0, r1, r2, r4, r5, r7, r8}^
    2c04:	02007261 	andeq	r7, r0, #268435462	; 0x10000006
    2c08:	687301b8 	ldmdavs	r3!, {r3, r4, r5, r7, r8}^
    2c0c:	0074726f 	rsbseq	r7, r4, pc, ror #4
    2c10:	6901b902 	stmdbvs	r1, {r1, r8, fp, ip, sp, pc}
    2c14:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
    2c18:	6f6c01ba 	svcvs	0x006c01ba
    2c1c:	0200676e 	andeq	r6, r0, #28835840	; 0x1b80000
    2c20:	5f5f01bf 	svcpl	0x005f01bf
    2c24:	32746e69 	rsbscc	r6, r4, #1680	; 0x690
    2c28:	03040030 	movweq	r0, #16432	; 0x4030
    2c2c:	0a01040e 	beq	43c6c <__mprec_tinytens+0x1f3fc>
    2c30:	5359535f 	cmppl	r9, #2080374785	; 0x7c000001
    2c34:	54535f5f 	ldrbpl	r5, [r3], #-3935	; 0xfffff0a1
    2c38:	544e4944 	strbpl	r4, [lr], #-2372	; 0xfffff6bc
    2c3c:	0020485f 	eoreq	r4, r0, pc, asr r8
    2c40:	495f1501 	ldmdbmi	pc, {r0, r8, sl, ip}^	; <UNPREDICTABLE>
    2c44:	5f38544e 	svcpl	0x0038544e
    2c48:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    2c4c:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    2c50:	00204445 	eoreq	r4, r0, r5, asr #8
    2c54:	555f1901 	ldrbpl	r1, [pc, #-2305]	; 235b <ntshell_init+0xb>
    2c58:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    2c5c:	445f545f 	ldrbmi	r5, [pc], #-1119	; 2c64 <text_editor_backspace+0x4c>
    2c60:	414c4345 	cmpmi	ip, r5, asr #6
    2c64:	20444552 	subcs	r4, r4, r2, asr r5
    2c68:	5f1b0100 	svcpl	0x001b0100
    2c6c:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    2c70:	5f745f38 	svcpl	0x00745f38
    2c74:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    2c78:	2064656e 	rsbcs	r6, r4, lr, ror #10
    2c7c:	21010031 	tstcs	r1, r1, lsr r0
    2c80:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2c84:	545f3631 	ldrbpl	r3, [pc], #-1585	; 2c8c <text_editor_delete+0x8>
    2c88:	4345445f 	movtmi	r4, #21599	; 0x545f
    2c8c:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    2c90:	01002044 	tsteq	r0, r4, asr #32
    2c94:	49555f25 	ldmdbmi	r5, {r0, r2, r5, r8, r9, sl, fp, ip, lr}^
    2c98:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    2c9c:	445f545f 	ldrbmi	r5, [pc], #-1119	; 2ca4 <text_editor_delete+0x20>
    2ca0:	414c4345 	cmpmi	ip, r5, asr #6
    2ca4:	20444552 	subcs	r4, r4, r2, asr r5
    2ca8:	5f270100 	svcpl	0x00270100
    2cac:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    2cb0:	745f3631 	ldrbvc	r3, [pc], #-1585	; 2cb8 <text_editor_delete+0x34>
    2cb4:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    2cb8:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    2cbc:	01003120 	tsteq	r0, r0, lsr #2
    2cc0:	4e495f2d 	cdpmi	15, 4, cr5, cr9, cr13, {1}
    2cc4:	5f323354 	svcpl	0x00323354
    2cc8:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    2ccc:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    2cd0:	00204445 	eoreq	r4, r0, r5, asr #8
    2cd4:	555f3101 	ldrbpl	r3, [pc, #-257]	; 2bdb <text_editor_insert+0x43>
    2cd8:	33544e49 	cmpcc	r4, #1168	; 0x490
    2cdc:	5f545f32 	svcpl	0x00545f32
    2ce0:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    2ce4:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    2ce8:	33010020 	movwcc	r0, #4128	; 0x1020
    2cec:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    2cf0:	5f323374 	svcpl	0x00323374
    2cf4:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    2cf8:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    2cfc:	00312064 	eorseq	r2, r1, r4, rrx
    2d00:	495f3901 	ldmdbmi	pc, {r0, r8, fp, ip, sp}^	; <UNPREDICTABLE>
    2d04:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    2d08:	445f545f 	ldrbmi	r5, [pc], #-1119	; 2d10 <text_editor_cursor_tail+0x8>
    2d0c:	414c4345 	cmpmi	ip, r5, asr #6
    2d10:	20444552 	subcs	r4, r4, r2, asr r5
    2d14:	5f3d0100 	svcpl	0x003d0100
    2d18:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2d1c:	545f3436 	ldrbpl	r3, [pc], #-1078	; 2d24 <text_editor_cursor_left>
    2d20:	4345445f 	movtmi	r4, #21599	; 0x545f
    2d24:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    2d28:	01002044 	tsteq	r0, r4, asr #32
    2d2c:	695f5f3f 	ldmdbvs	pc, {r0, r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2d30:	3436746e 	ldrtcc	r7, [r6], #-1134	; 0xfffffb92
    2d34:	645f745f 	ldrbvs	r7, [pc], #-1119	; 2d3c <text_editor_cursor_left+0x18>
    2d38:	6e696665 	cdpvs	6, 6, cr6, cr9, cr5, {3}
    2d3c:	31206465 			; <UNDEFINED> instruction: 0x31206465
    2d40:	5f440100 	svcpl	0x00440100
    2d44:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    2d48:	545f5841 	ldrbpl	r5, [pc], #-2113	; 2d50 <text_editor_cursor_right+0x10>
    2d4c:	4345445f 	movtmi	r4, #21599	; 0x545f
    2d50:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    2d54:	01002044 	tsteq	r0, r4, asr #32
    2d58:	49555f49 	ldmdbmi	r5, {r0, r3, r6, r8, r9, sl, fp, ip, lr}^
    2d5c:	414d544e 	cmpmi	sp, lr, asr #8
    2d60:	5f545f58 	svcpl	0x00545f58
    2d64:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    2d68:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    2d6c:	4e010020 	cdpmi	0, 0, cr0, cr1, cr0, {1}
    2d70:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2d74:	5f525450 	svcpl	0x00525450
    2d78:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    2d7c:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    2d80:	00204445 	eoreq	r4, r0, r5, asr #8
    2d84:	555f5301 	ldrbpl	r5, [pc, #-769]	; 2a8b <ntstdio_gets+0x2f>
    2d88:	50544e49 	subspl	r4, r4, r9, asr #28
    2d8c:	545f5254 	ldrbpl	r5, [pc], #-596	; 2d94 <text_editor_set_text+0x34>
    2d90:	4345445f 	movtmi	r4, #21599	; 0x545f
    2d94:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    2d98:	04002044 	streq	r2, [r0], #-68	; 0xffffffbc
    2d9c:	5f5f1701 	svcpl	0x005f1701
    2da0:	5f746e69 	svcpl	0x00746e69
    2da4:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    2da8:	745f3874 	ldrbvc	r3, [pc], #-2164	; 2db0 <text_editor_get_text+0x10>
    2dac:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    2db0:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    2db4:	01003120 	tsteq	r0, r0, lsr #2
    2db8:	695f5f1d 	ldmdbvs	pc, {r0, r2, r3, r4, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2dbc:	6c5f746e 	cfldrdvs	mvd7, [pc], {110}	; 0x6e
    2dc0:	74736165 	ldrbtvc	r6, [r3], #-357	; 0xfffffe9b
    2dc4:	745f3631 	ldrbvc	r3, [pc], #-1585	; 2dcc <text_editor_get_text+0x2c>
    2dc8:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    2dcc:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    2dd0:	01003120 	tsteq	r0, r0, lsr #2
    2dd4:	695f5f23 	ldmdbvs	pc, {r0, r1, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2dd8:	6c5f746e 	cfldrdvs	mvd7, [pc], {110}	; 0x6e
    2ddc:	74736165 	ldrbtvc	r6, [r3], #-357	; 0xfffffe9b
    2de0:	745f3233 	ldrbvc	r3, [pc], #-563	; 2de8 <text_history_init+0x4>
    2de4:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    2de8:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    2dec:	01003120 	tsteq	r0, r0, lsr #2
    2df0:	695f5f29 	ldmdbvs	pc, {r0, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2df4:	6c5f746e 	cfldrdvs	mvd7, [pc], {110}	; 0x6e
    2df8:	74736165 	ldrbtvc	r6, [r3], #-357	; 0xfffffe9b
    2dfc:	745f3436 	ldrbvc	r3, [pc], #-1078	; 2e04 <text_history_init+0x20>
    2e00:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    2e04:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    2e08:	01003120 	tsteq	r0, r0, lsr #2
    2e0c:	695f5f35 	ldmdbvs	pc, {r0, r2, r4, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2e10:	665f746e 	ldrbvs	r7, [pc], -lr, ror #8
    2e14:	38747361 	ldmdacc	r4!, {r0, r5, r6, r8, r9, ip, sp, lr}^
    2e18:	645f745f 	ldrbvs	r7, [pc], #-1119	; 2e20 <text_history_write+0x10>
    2e1c:	6e696665 	cdpvs	6, 6, cr6, cr9, cr5, {3}
    2e20:	31206465 			; <UNDEFINED> instruction: 0x31206465
    2e24:	5f3f0100 	svcpl	0x003f0100
    2e28:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    2e2c:	7361665f 	cmnvc	r1, #99614720	; 0x5f00000
    2e30:	5f363174 	svcpl	0x00363174
    2e34:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    2e38:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    2e3c:	00312064 	eorseq	r2, r1, r4, rrx
    2e40:	5f5f4901 	svcpl	0x005f4901
    2e44:	5f746e69 	svcpl	0x00746e69
    2e48:	74736166 	ldrbtvc	r6, [r3], #-358	; 0xfffffe9a
    2e4c:	745f3233 	ldrbvc	r3, [pc], #-563	; 2e54 <text_history_write+0x44>
    2e50:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    2e54:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    2e58:	01003120 	tsteq	r0, r0, lsr #2
    2e5c:	695f5f53 	ldmdbvs	pc, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2e60:	665f746e 	ldrbvs	r7, [pc], -lr, ror #8
    2e64:	36747361 	ldrbtcc	r7, [r4], -r1, ror #6
    2e68:	5f745f34 	svcpl	0x00745f34
    2e6c:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    2e70:	2064656e 	rsbcs	r6, r4, lr, ror #10
    2e74:	80010031 	andhi	r0, r1, r1, lsr r0
    2e78:	544e4901 	strbpl	r4, [lr], #-2305	; 0xfffff6ff
    2e7c:	5f525450 	svcpl	0x00525450
    2e80:	204e494d 	subcs	r4, lr, sp, asr #18
    2e84:	5f5f2d28 	svcpl	0x005f2d28
    2e88:	50544e49 	subspl	r4, r4, r9, asr #28
    2e8c:	4d5f5254 	lfmmi	f5, 2, [pc, #-336]	; 2d44 <text_editor_cursor_right+0x4>
    2e90:	5f5f5841 	svcpl	0x005f5841
    2e94:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    2e98:	81010029 	tsthi	r1, r9, lsr #32
    2e9c:	544e4901 	strbpl	r4, [lr], #-2305	; 0xfffff6ff
    2ea0:	5f525450 	svcpl	0x00525450
    2ea4:	2058414d 	subscs	r4, r8, sp, asr #2
    2ea8:	495f5f28 	ldmdbmi	pc, {r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2eac:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
    2eb0:	414d5f52 	cmpmi	sp, r2, asr pc
    2eb4:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2eb8:	01820100 	orreq	r0, r2, r0, lsl #2
    2ebc:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2ec0:	5f525450 	svcpl	0x00525450
    2ec4:	2058414d 	subscs	r4, r8, sp, asr #2
    2ec8:	555f5f28 	ldrbpl	r5, [pc, #-3880]	; 1fa8 <ntopt_parse+0x6e4>
    2ecc:	50544e49 	subspl	r4, r4, r9, asr #28
    2ed0:	4d5f5254 	lfmmi	f5, 2, [pc, #-336]	; 2d88 <text_editor_set_text+0x28>
    2ed4:	5f5f5841 	svcpl	0x005f5841
    2ed8:	98010029 	stmdals	r1, {r0, r3, r5}
    2edc:	544e4901 	strbpl	r4, [lr], #-2305	; 0xfffff6ff
    2ee0:	494d5f38 	stmdbmi	sp, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    2ee4:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
    2ee8:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    2eec:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 2da4 <text_editor_get_text+0x4>
    2ef0:	5f5f5841 	svcpl	0x005f5841
    2ef4:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    2ef8:	99010029 	stmdbls	r1, {r0, r3, r5}
    2efc:	544e4901 	strbpl	r4, [lr], #-2305	; 0xfffff6ff
    2f00:	414d5f38 	cmpmi	sp, r8, lsr pc
    2f04:	5f282058 	svcpl	0x00282058
    2f08:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2f0c:	414d5f38 	cmpmi	sp, r8, lsr pc
    2f10:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2f14:	019a0100 	orrseq	r0, sl, r0, lsl #2
    2f18:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2f1c:	414d5f38 	cmpmi	sp, r8, lsr pc
    2f20:	5f282058 	svcpl	0x00282058
    2f24:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    2f28:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 2de0 <text_editor_clear+0x10>
    2f2c:	5f5f5841 	svcpl	0x005f5841
    2f30:	a2010029 	andge	r0, r1, #41	; 0x29
    2f34:	544e4901 	strbpl	r4, [lr], #-2305	; 0xfffff6ff
    2f38:	41454c5f 	cmpmi	r5, pc, asr ip
    2f3c:	5f385453 	svcpl	0x00385453
    2f40:	204e494d 	subcs	r4, lr, sp, asr #18
    2f44:	5f5f2d28 	svcpl	0x005f2d28
    2f48:	5f544e49 	svcpl	0x00544e49
    2f4c:	5341454c 	movtpl	r4, #5452	; 0x154c
    2f50:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 2e08 <text_history_init+0x24>
    2f54:	5f5f5841 	svcpl	0x005f5841
    2f58:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    2f5c:	a3010029 	movwge	r0, #4137	; 0x1029
    2f60:	544e4901 	strbpl	r4, [lr], #-2305	; 0xfffff6ff
    2f64:	41454c5f 	cmpmi	r5, pc, asr ip
    2f68:	5f385453 	svcpl	0x00385453
    2f6c:	2058414d 	subscs	r4, r8, sp, asr #2
    2f70:	495f5f28 	ldmdbmi	pc, {r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2f74:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    2f78:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    2f7c:	414d5f38 	cmpmi	sp, r8, lsr pc
    2f80:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2f84:	01a40100 			; <UNDEFINED> instruction: 0x01a40100
    2f88:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2f8c:	41454c5f 	cmpmi	r5, pc, asr ip
    2f90:	5f385453 	svcpl	0x00385453
    2f94:	2058414d 	subscs	r4, r8, sp, asr #2
    2f98:	555f5f28 	ldrbpl	r5, [pc, #-3880]	; 2078 <ntopt_parse+0x7b4>
    2f9c:	5f544e49 	svcpl	0x00544e49
    2fa0:	5341454c 	movtpl	r4, #5452	; 0x154c
    2fa4:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 2e5c <text_history_write+0x4c>
    2fa8:	5f5f5841 	svcpl	0x005f5841
    2fac:	ae010029 	cdpge	0, 0, cr0, cr1, cr9, {1}
    2fb0:	544e4901 	strbpl	r4, [lr], #-2305	; 0xfffff6ff
    2fb4:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 2ef8 <text_history_read_point_prev+0x1c>
    2fb8:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    2fbc:	495f5f2d 	ldmdbmi	pc, {r0, r2, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2fc0:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    2fc4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2fc8:	2d205f5f 	stccs	15, cr5, [r0, #-380]!	; 0xfffffe84
    2fcc:	00293120 	eoreq	r3, r9, r0, lsr #2
    2fd0:	4901af01 	stmdbmi	r1, {r0, r8, r9, sl, fp, sp, pc}
    2fd4:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    2fd8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2fdc:	5f5f2820 	svcpl	0x005f2820
    2fe0:	31544e49 	cmpcc	r4, r9, asr #28
    2fe4:	414d5f36 	cmpmi	sp, r6, lsr pc
    2fe8:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2fec:	01b00100 	lslseq	r0, r0, #2
    2ff0:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2ff4:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 2f38 <text_history_find+0x18>
    2ff8:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    2ffc:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    3000:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    3004:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3008:	00295f5f 	eoreq	r5, r9, pc, asr pc
    300c:	4901b801 	stmdbmi	r1, {r0, fp, ip, sp, pc}
    3010:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    3014:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    3018:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 2f5c <text_history_find+0x3c>
    301c:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    3020:	495f5f2d 	ldmdbmi	pc, {r0, r2, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3024:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    3028:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    302c:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 2f70 <text_history_find+0x50>
    3030:	5f5f5841 	svcpl	0x005f5841
    3034:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    3038:	b9010029 	stmdblt	r1, {r0, r3, r5}
    303c:	544e4901 	strbpl	r4, [lr], #-2305	; 0xfffff6ff
    3040:	41454c5f 	cmpmi	r5, pc, asr ip
    3044:	36315453 			; <UNDEFINED> instruction: 0x36315453
    3048:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    304c:	5f5f2820 	svcpl	0x005f2820
    3050:	5f544e49 	svcpl	0x00544e49
    3054:	5341454c 	movtpl	r4, #5452	; 0x154c
    3058:	5f363154 	svcpl	0x00363154
    305c:	5f58414d 	svcpl	0x0058414d
    3060:	0100295f 	tsteq	r0, pc, asr r9
    3064:	495501ba 	ldmdbmi	r5, {r1, r3, r4, r5, r7, r8}^
    3068:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    306c:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    3070:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 2fb4 <text_history_find+0x94>
    3074:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    3078:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    307c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    3080:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    3084:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 2fc8 <text_history_find+0xa8>
    3088:	5f5f5841 	svcpl	0x005f5841
    308c:	c4010029 	strgt	r0, [r1], #-41	; 0xffffffd7
    3090:	544e4901 	strbpl	r4, [lr], #-2305	; 0xfffff6ff
    3094:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 2fd0 <text_history_find+0xb0>
    3098:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    309c:	495f5f2d 	ldmdbmi	pc, {r0, r2, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    30a0:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    30a4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    30a8:	2d205f5f 	stccs	15, cr5, [r0, #-380]!	; 0xfffffe84
    30ac:	00293120 	eoreq	r3, r9, r0, lsr #2
    30b0:	4901c501 	stmdbmi	r1, {r0, r8, sl, lr, pc}
    30b4:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    30b8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    30bc:	5f5f2820 	svcpl	0x005f2820
    30c0:	33544e49 	cmpcc	r4, #1168	; 0x490
    30c4:	414d5f32 	cmpmi	sp, r2, lsr pc
    30c8:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    30cc:	01c60100 	biceq	r0, r6, r0, lsl #2
    30d0:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    30d4:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 3010 <text_history_find+0xf0>
    30d8:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    30dc:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    30e0:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    30e4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    30e8:	00295f5f 	eoreq	r5, r9, pc, asr pc
    30ec:	4901d401 	stmdbmi	r1, {r0, sl, ip, lr, pc}
    30f0:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    30f4:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    30f8:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 3034 <text_history_find+0x114>
    30fc:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    3100:	495f5f2d 	ldmdbmi	pc, {r0, r2, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3104:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    3108:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    310c:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 3048 <text_history_find+0x128>
    3110:	5f5f5841 	svcpl	0x005f5841
    3114:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    3118:	d5010029 	strle	r0, [r1, #-41]	; 0xffffffd7
    311c:	544e4901 	strbpl	r4, [lr], #-2305	; 0xfffff6ff
    3120:	41454c5f 	cmpmi	r5, pc, asr ip
    3124:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    3128:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    312c:	5f5f2820 	svcpl	0x005f2820
    3130:	5f544e49 	svcpl	0x00544e49
    3134:	5341454c 	movtpl	r4, #5452	; 0x154c
    3138:	5f323354 	svcpl	0x00323354
    313c:	5f58414d 	svcpl	0x0058414d
    3140:	0100295f 	tsteq	r0, pc, asr r9
    3144:	495501d6 	ldmdbmi	r5, {r1, r2, r4, r6, r7, r8}^
    3148:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    314c:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    3150:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 308c <text_history_find+0x16c>
    3154:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    3158:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    315c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    3160:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    3164:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 30a0 <text_history_find+0x180>
    3168:	5f5f5841 	svcpl	0x005f5841
    316c:	e6010029 	str	r0, [r1], -r9, lsr #32
    3170:	544e4901 	strbpl	r4, [lr], #-2305	; 0xfffff6ff
    3174:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 30a4 <text_history_find+0x184>
    3178:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    317c:	495f5f2d 	ldmdbmi	pc, {r0, r2, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3180:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    3184:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3188:	2d205f5f 	stccs	15, cr5, [r0, #-380]!	; 0xfffffe84
    318c:	00293120 	eoreq	r3, r9, r0, lsr #2
    3190:	4901e701 	stmdbmi	r1, {r0, r8, r9, sl, sp, lr, pc}
    3194:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    3198:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    319c:	5f5f2820 	svcpl	0x005f2820
    31a0:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    31a4:	414d5f34 	cmpmi	sp, r4, lsr pc
    31a8:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    31ac:	01e80100 	mvneq	r0, r0, lsl #2
    31b0:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    31b4:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 30e4 <text_history_find+0x1c4>
    31b8:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    31bc:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    31c0:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    31c4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    31c8:	00295f5f 	eoreq	r5, r9, pc, asr pc
    31cc:	4901f601 	stmdbmi	r1, {r0, r9, sl, ip, sp, lr, pc}
    31d0:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    31d4:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    31d8:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 3108 <text_history_find+0x1e8>
    31dc:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    31e0:	495f5f2d 	ldmdbmi	pc, {r0, r2, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    31e4:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    31e8:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    31ec:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 311c <vtrecv_init>
    31f0:	5f5f5841 	svcpl	0x005f5841
    31f4:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    31f8:	f7010029 			; <UNDEFINED> instruction: 0xf7010029
    31fc:	544e4901 	strbpl	r4, [lr], #-2305	; 0xfffff6ff
    3200:	41454c5f 	cmpmi	r5, pc, asr ip
    3204:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    3208:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    320c:	5f5f2820 	svcpl	0x005f2820
    3210:	5f544e49 	svcpl	0x00544e49
    3214:	5341454c 	movtpl	r4, #5452	; 0x154c
    3218:	5f343654 	svcpl	0x00343654
    321c:	5f58414d 	svcpl	0x0058414d
    3220:	0100295f 	tsteq	r0, pc, asr r9
    3224:	495501f8 	ldmdbmi	r5, {r3, r4, r5, r6, r7, r8}^
    3228:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    322c:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    3230:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 3160 <vtrecv_execute+0x24>
    3234:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    3238:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    323c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    3240:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    3244:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 3174 <vtrecv_execute+0x38>
    3248:	5f5f5841 	svcpl	0x005f5841
    324c:	86010029 	strhi	r0, [r1], -r9, lsr #32
    3250:	544e4902 	strbpl	r4, [lr], #-2306	; 0xfffff6fe
    3254:	5341465f 	movtpl	r4, #5727	; 0x165f
    3258:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 3110 <text_history_find+0x1f0>
    325c:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    3260:	495f5f2d 	ldmdbmi	pc, {r0, r2, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3264:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    3268:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    326c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3270:	2d205f5f 	stccs	15, cr5, [r0, #-380]!	; 0xfffffe84
    3274:	00293120 	eoreq	r3, r9, r0, lsr #2
    3278:	49028701 	stmdbmi	r2, {r0, r8, r9, sl, pc}
    327c:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    3280:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    3284:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3288:	5f5f2820 	svcpl	0x005f2820
    328c:	5f544e49 	svcpl	0x00544e49
    3290:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    3294:	414d5f38 	cmpmi	sp, r8, lsr pc
    3298:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    329c:	02880100 	addeq	r0, r8, #0, 2
    32a0:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    32a4:	5341465f 	movtpl	r4, #5727	; 0x165f
    32a8:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 3160 <vtrecv_execute+0x24>
    32ac:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    32b0:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    32b4:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    32b8:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    32bc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    32c0:	00295f5f 	eoreq	r5, r9, pc, asr pc
    32c4:	49029601 	stmdbmi	r2, {r0, r9, sl, ip, pc}
    32c8:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    32cc:	31545341 	cmpcc	r4, r1, asr #6
    32d0:	494d5f36 	stmdbmi	sp, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    32d4:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
    32d8:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    32dc:	41465f54 	cmpmi	r6, r4, asr pc
    32e0:	36315453 			; <UNDEFINED> instruction: 0x36315453
    32e4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    32e8:	2d205f5f 	stccs	15, cr5, [r0, #-380]!	; 0xfffffe84
    32ec:	00293120 	eoreq	r3, r9, r0, lsr #2
    32f0:	49029701 	stmdbmi	r2, {r0, r8, r9, sl, ip, pc}
    32f4:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    32f8:	31545341 	cmpcc	r4, r1, asr #6
    32fc:	414d5f36 	cmpmi	sp, r6, lsr pc
    3300:	5f282058 	svcpl	0x00282058
    3304:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    3308:	5341465f 	movtpl	r4, #5727	; 0x165f
    330c:	5f363154 	svcpl	0x00363154
    3310:	5f58414d 	svcpl	0x0058414d
    3314:	0100295f 	tsteq	r0, pc, asr r9
    3318:	49550298 	ldmdbmi	r5, {r3, r4, r7, r9}^
    331c:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    3320:	31545341 	cmpcc	r4, r1, asr #6
    3324:	414d5f36 	cmpmi	sp, r6, lsr pc
    3328:	5f282058 	svcpl	0x00282058
    332c:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    3330:	41465f54 	cmpmi	r6, r4, asr pc
    3334:	36315453 			; <UNDEFINED> instruction: 0x36315453
    3338:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    333c:	00295f5f 	eoreq	r5, r9, pc, asr pc
    3340:	4902a601 	stmdbmi	r2, {r0, r9, sl, sp, pc}
    3344:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    3348:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    334c:	494d5f32 	stmdbmi	sp, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    3350:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
    3354:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    3358:	41465f54 	cmpmi	r6, r4, asr pc
    335c:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    3360:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3364:	2d205f5f 	stccs	15, cr5, [r0, #-380]!	; 0xfffffe84
    3368:	00293120 	eoreq	r3, r9, r0, lsr #2
    336c:	4902a701 	stmdbmi	r2, {r0, r8, r9, sl, sp, pc}
    3370:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    3374:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    3378:	414d5f32 	cmpmi	sp, r2, lsr pc
    337c:	5f282058 	svcpl	0x00282058
    3380:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    3384:	5341465f 	movtpl	r4, #5727	; 0x165f
    3388:	5f323354 	svcpl	0x00323354
    338c:	5f58414d 	svcpl	0x0058414d
    3390:	0100295f 	tsteq	r0, pc, asr r9
    3394:	495502a8 	ldmdbmi	r5, {r3, r5, r7, r9}^
    3398:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    339c:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    33a0:	414d5f32 	cmpmi	sp, r2, lsr pc
    33a4:	5f282058 	svcpl	0x00282058
    33a8:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    33ac:	41465f54 	cmpmi	r6, r4, asr pc
    33b0:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    33b4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    33b8:	00295f5f 	eoreq	r5, r9, pc, asr pc
    33bc:	4902b601 	stmdbmi	r2, {r0, r9, sl, ip, sp, pc}
    33c0:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    33c4:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    33c8:	494d5f34 	stmdbmi	sp, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    33cc:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
    33d0:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    33d4:	41465f54 	cmpmi	r6, r4, asr pc
    33d8:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    33dc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    33e0:	2d205f5f 	stccs	15, cr5, [r0, #-380]!	; 0xfffffe84
    33e4:	00293120 	eoreq	r3, r9, r0, lsr #2
    33e8:	4902b701 	stmdbmi	r2, {r0, r8, r9, sl, ip, sp, pc}
    33ec:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    33f0:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    33f4:	414d5f34 	cmpmi	sp, r4, lsr pc
    33f8:	5f282058 	svcpl	0x00282058
    33fc:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    3400:	5341465f 	movtpl	r4, #5727	; 0x165f
    3404:	5f343654 	svcpl	0x00343654
    3408:	5f58414d 	svcpl	0x0058414d
    340c:	0100295f 	tsteq	r0, pc, asr r9
    3410:	495502b8 	ldmdbmi	r5, {r3, r4, r5, r7, r9}^
    3414:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    3418:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    341c:	414d5f34 	cmpmi	sp, r4, lsr pc
    3420:	5f282058 	svcpl	0x00282058
    3424:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    3428:	41465f54 	cmpmi	r6, r4, asr pc
    342c:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    3430:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3434:	00295f5f 	eoreq	r5, r9, pc, asr pc
    3438:	4902c601 	stmdbmi	r2, {r0, r9, sl, lr, pc}
    343c:	414d544e 	cmpmi	sp, lr, asr #8
    3440:	414d5f58 	cmpmi	sp, r8, asr pc
    3444:	5f282058 	svcpl	0x00282058
    3448:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    344c:	5f58414d 	svcpl	0x0058414d
    3450:	5f58414d 	svcpl	0x0058414d
    3454:	0100295f 	tsteq	r0, pc, asr r9
    3458:	4e4902c7 	cdpmi	2, 4, cr0, cr9, cr7, {6}
    345c:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    3460:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    3464:	492d2820 	pushmi	{r5, fp, sp}
    3468:	414d544e 	cmpmi	sp, lr, asr #8
    346c:	414d5f58 	cmpmi	sp, r8, asr pc
    3470:	202d2058 	eorcs	r2, sp, r8, asr r0
    3474:	01002931 	tsteq	r0, r1, lsr r9
    3478:	495502cf 	ldmdbmi	r5, {r0, r1, r2, r3, r6, r7, r9}^
    347c:	414d544e 	cmpmi	sp, lr, asr #8
    3480:	414d5f58 	cmpmi	sp, r8, asr pc
    3484:	5f282058 	svcpl	0x00282058
    3488:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    348c:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    3490:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3494:	00295f5f 	eoreq	r5, r9, pc, asr pc
    3498:	5302d701 	movwpl	sp, #9985	; 0x2701
    349c:	5f455a49 	svcpl	0x00455a49
    34a0:	2058414d 	subscs	r4, r8, sp, asr #2
    34a4:	535f5f28 	cmppl	pc, #40, 30	; 0xa0
    34a8:	5f455a49 	svcpl	0x00455a49
    34ac:	5f58414d 	svcpl	0x0058414d
    34b0:	0100295f 	tsteq	r0, pc, asr r9
    34b4:	495302dd 	ldmdbmi	r3, {r0, r2, r3, r4, r6, r7, r9}^
    34b8:	54415f47 	strbpl	r5, [r1], #-3911	; 0xfffff0b9
    34bc:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    34c0:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    34c4:	5f2d2820 	svcpl	0x002d2820
    34c8:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    34cc:	5f544e49 	svcpl	0x00544e49
    34d0:	28505845 	ldmdacs	r0, {r0, r2, r6, fp, ip, lr}^
    34d4:	5f544e49 	svcpl	0x00544e49
    34d8:	2958414d 	ldmdbcs	r8, {r0, r2, r3, r6, r8, lr}^
    34dc:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    34e0:	de010029 	cdple	0, 0, cr0, cr1, cr9, {1}
    34e4:	47495302 	strbmi	r5, [r9, -r2, lsl #6]
    34e8:	4f54415f 	svcmi	0x0054415f
    34ec:	5f43494d 	svcpl	0x0043494d
    34f0:	2058414d 	subscs	r4, r8, sp, asr #2
    34f4:	535f5f28 	cmppl	pc, #40, 30	; 0xa0
    34f8:	4e494454 	mcrmi	4, 2, r4, cr9, cr4, {2}
    34fc:	58455f54 	stmdapl	r5, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    3500:	4e492850 	mcrmi	8, 2, r2, cr9, cr0, {2}
    3504:	414d5f54 	cmpmi	sp, r4, asr pc
    3508:	00292958 	eoreq	r2, r9, r8, asr r9
    350c:	5002e201 	andpl	lr, r2, r1, lsl #4
    3510:	49445254 	stmdbmi	r4, {r2, r4, r6, r9, ip, lr}^
    3514:	4d5f4646 	ldclmi	6, cr4, [pc, #-280]	; 3404 <vtsend_cursor_forward+0x14>
    3518:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    351c:	54505f5f 	ldrbpl	r5, [r0], #-3935	; 0xfffff0a1
    3520:	46494452 			; <UNDEFINED> instruction: 0x46494452
    3524:	414d5f46 	cmpmi	sp, r6, asr #30
    3528:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    352c:	02e60100 	rsceq	r0, r6, #0, 2
    3530:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    3534:	5f464649 	svcpl	0x00464649
    3538:	204e494d 	subcs	r4, lr, sp, asr #18
    353c:	54502d28 	ldrbpl	r2, [r0], #-3368	; 0xfffff2d8
    3540:	46494452 			; <UNDEFINED> instruction: 0x46494452
    3544:	414d5f46 	cmpmi	sp, r6, asr #30
    3548:	202d2058 	eorcs	r2, sp, r8, asr r0
    354c:	01002931 	tsteq	r0, r1, lsr r9
    3550:	435702eb 	cmpmi	r7, #-1342177266	; 0xb000000e
    3554:	5f524148 	svcpl	0x00524148
    3558:	204e494d 	subcs	r4, lr, sp, asr #18
    355c:	575f5f28 	ldrbpl	r5, [pc, -r8, lsr #30]
    3560:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    3564:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    3568:	00295f5f 	eoreq	r5, r9, pc, asr pc
    356c:	5702f601 	strpl	pc, [r2, -r1, lsl #12]
    3570:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    3574:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3578:	5f5f2820 	svcpl	0x005f2820
    357c:	41484357 	cmpmi	r8, r7, asr r3
    3580:	414d5f52 	cmpmi	sp, r2, asr pc
    3584:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3588:	03800100 	orreq	r0, r0, #0, 2
    358c:	544e4957 	strbpl	r4, [lr], #-2391	; 0xfffff6a9
    3590:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3594:	5f5f2820 	svcpl	0x005f2820
    3598:	544e4957 	strbpl	r4, [lr], #-2391	; 0xfffff6a9
    359c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    35a0:	00295f5f 	eoreq	r5, r9, pc, asr pc
    35a4:	57038501 	strpl	r8, [r3, -r1, lsl #10]
    35a8:	5f544e49 	svcpl	0x00544e49
    35ac:	204e494d 	subcs	r4, lr, sp, asr #18
    35b0:	575f5f28 	ldrbpl	r5, [pc, -r8, lsr #30]
    35b4:	5f544e49 	svcpl	0x00544e49
    35b8:	5f4e494d 	svcpl	0x004e494d
    35bc:	0100295f 	tsteq	r0, pc, asr r9
    35c0:	4e49038c 	cdpmi	3, 4, cr0, cr9, cr12, {4}
    35c4:	435f3854 	cmpmi	pc, #84, 16	; 0x540000
    35c8:	20297828 	eorcs	r7, r9, r8, lsr #16
    35cc:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    35d0:	435f3854 	cmpmi	pc, #84, 16	; 0x540000
    35d4:	00297828 	eoreq	r7, r9, r8, lsr #16
    35d8:	55038d01 	strpl	r8, [r3, #-3329]	; 0xfffff2ff
    35dc:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    35e0:	7828435f 	stmdavc	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, lr}
    35e4:	5f5f2029 	svcpl	0x005f2029
    35e8:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    35ec:	28435f38 	stmdacs	r3, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    35f0:	01002978 	tsteq	r0, r8, ror r9
    35f4:	4e490398 	mcrmi	3, 2, r0, cr9, cr8, {4}
    35f8:	5f363154 	svcpl	0x00363154
    35fc:	29782843 	ldmdbcs	r8!, {r0, r1, r6, fp, sp}^
    3600:	495f5f20 	ldmdbmi	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3604:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    3608:	7828435f 	stmdavc	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, lr}
    360c:	99010029 	stmdbls	r1, {r0, r3, r5}
    3610:	4e495503 	cdpmi	5, 4, cr5, cr9, cr3, {0}
    3614:	5f363154 	svcpl	0x00363154
    3618:	29782843 	ldmdbcs	r8!, {r0, r1, r6, fp, sp}^
    361c:	555f5f20 	ldrbpl	r5, [pc, #-3872]	; 2704 <ntstdio_puts+0x1f4>
    3620:	31544e49 	cmpcc	r4, r9, asr #28
    3624:	28435f36 	stmdacs	r3, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    3628:	01002978 	tsteq	r0, r8, ror r9
    362c:	4e4903a4 	cdpmi	3, 4, cr0, cr9, cr4, {5}
    3630:	5f323354 	svcpl	0x00323354
    3634:	29782843 	ldmdbcs	r8!, {r0, r1, r6, fp, sp}^
    3638:	495f5f20 	ldmdbmi	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    363c:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    3640:	7828435f 	stmdavc	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, lr}
    3644:	a5010029 	strge	r0, [r1, #-41]	; 0xffffffd7
    3648:	4e495503 	cdpmi	5, 4, cr5, cr9, cr3, {0}
    364c:	5f323354 	svcpl	0x00323354
    3650:	29782843 	ldmdbcs	r8!, {r0, r1, r6, fp, sp}^
    3654:	555f5f20 	ldrbpl	r5, [pc, #-3872]	; 273c <ntstdio_puts+0x22c>
    3658:	33544e49 	cmpcc	r4, #1168	; 0x490
    365c:	28435f32 	stmdacs	r3, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    3660:	01002978 	tsteq	r0, r8, ror r9
    3664:	4e4903b1 	mcrmi	3, 2, r0, cr9, cr1, {5}
    3668:	5f343654 	svcpl	0x00343654
    366c:	29782843 	ldmdbcs	r8!, {r0, r1, r6, fp, sp}^
    3670:	495f5f20 	ldmdbmi	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3674:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    3678:	7828435f 	stmdavc	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, lr}
    367c:	b2010029 	andlt	r0, r1, #41	; 0x29
    3680:	4e495503 	cdpmi	5, 4, cr5, cr9, cr3, {0}
    3684:	5f343654 	svcpl	0x00343654
    3688:	29782843 	ldmdbcs	r8!, {r0, r1, r6, fp, sp}^
    368c:	555f5f20 	ldrbpl	r5, [pc, #-3872]	; 2774 <ntstdio_puts+0x264>
    3690:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    3694:	28435f34 	stmdacs	r3, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    3698:	01002978 	tsteq	r0, r8, ror r9
    369c:	4e4903c1 	cdpmi	3, 4, cr0, cr9, cr1, {6}
    36a0:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    36a4:	7828435f 	stmdavc	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, lr}
    36a8:	5f5f2029 	svcpl	0x005f2029
    36ac:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    36b0:	435f5841 	cmpmi	pc, #4259840	; 0x410000
    36b4:	00297828 	eoreq	r7, r9, r8, lsr #16
    36b8:	5503c201 	strpl	ip, [r3, #-513]	; 0xfffffdff
    36bc:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    36c0:	435f5841 	cmpmi	pc, #4259840	; 0x410000
    36c4:	20297828 	eorcs	r7, r9, r8, lsr #16
    36c8:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    36cc:	414d544e 	cmpmi	sp, lr, asr #8
    36d0:	28435f58 	stmdacs	r3, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    36d4:	04002978 	streq	r2, [r0], #-2424	; 0xfffff688
    36d8:	475f0d01 	ldrbmi	r0, [pc, -r1, lsl #26]
    36dc:	575f4343 	ldrbpl	r4, [pc, -r3, asr #6]
    36e0:	5f504152 	svcpl	0x00504152
    36e4:	49445453 	stmdbmi	r4, {r0, r1, r4, r6, sl, ip, lr}^
    36e8:	485f544e 	ldmdami	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    36ec:	01040020 	tsteq	r4, r0, lsr #32
    36f0:	69786512 	ldmdbvs	r8!, {r1, r4, r8, sl, sp, lr}^
    36f4:	29782874 	ldmdbcs	r8!, {r2, r4, r5, r6, fp, sp}^
    36f8:	73797320 	cmnvc	r9, #32, 6	; 0x80000000
    36fc:	6978655f 	ldmdbvs	r8!, {r0, r1, r2, r3, r4, r6, r8, sl, sp, lr}^
    3700:	29782874 	ldmdbcs	r8!, {r2, r4, r5, r6, fp, sp}^
    3704:	64150100 	ldrvs	r0, [r5], #-256	; 0xffffff00
    3708:	28667332 	stmdacs	r6!, {r1, r4, r5, r8, r9, ip, sp, lr}^
    370c:	2c642c62 	stclcs	12, cr2, [r4], #-392	; 0xfffffe78
    3710:	29702c77 	ldmdbcs	r0!, {r0, r1, r2, r4, r5, r6, sl, fp, sp}^
    3714:	62645f20 	rsbvs	r5, r4, #32, 30	; 0x80
    3718:	7473326c 	ldrbtvc	r3, [r3], #-620	; 0xfffffd94
    371c:	2c622872 	stclcs	8, cr2, [r2], #-456	; 0xfffffe38
    3720:	202c6420 	eorcs	r6, ip, r0, lsr #8
    3724:	70202c77 	eorvc	r2, r0, r7, ror ip
    3728:	6627202c 	strtvs	r2, [r7], -ip, lsr #32
    372c:	01002927 	tsteq	r0, r7, lsr #18
    3730:	73326416 	teqvc	r2, #369098752	; 0x16000000
    3734:	2c622865 	stclcs	8, cr2, [r2], #-404	; 0xfffffe6c
    3738:	2c772c64 	ldclcs	12, cr2, [r7], #-400	; 0xfffffe70
    373c:	5f202970 	svcpl	0x00202970
    3740:	326c6264 	rsbcc	r6, ip, #100, 4	; 0x40000006
    3744:	28727473 	ldmdacs	r2!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
    3748:	64202c62 	strtvs	r2, [r0], #-3170	; 0xfffff39e
    374c:	2c77202c 	ldclcs	0, cr2, [r7], #-176	; 0xffffff50
    3750:	202c7020 	eorcs	r7, ip, r0, lsr #32
    3754:	29276527 	stmdbcs	r7!, {r0, r1, r2, r5, r8, sl, sp, lr}
    3758:	64170100 	ldrvs	r0, [r7], #-256	; 0xffffff00
    375c:	28677332 	stmdacs	r7!, {r1, r4, r5, r8, r9, ip, sp, lr}^
    3760:	2c642c62 	stclcs	12, cr2, [r4], #-392	; 0xfffffe78
    3764:	29702c77 	ldmdbcs	r0!, {r0, r1, r2, r4, r5, r6, sl, fp, sp}^
    3768:	62645f20 	rsbvs	r5, r4, #32, 30	; 0x80
    376c:	7473326c 	ldrbtvc	r3, [r3], #-620	; 0xfffffd94
    3770:	2c622872 	stclcs	8, cr2, [r2], #-456	; 0xfffffe38
    3774:	202c6420 	eorcs	r6, ip, r0, lsr #8
    3778:	70202c77 	eorvc	r2, r0, r7, ror ip
    377c:	6727202c 	strvs	r2, [r7, -ip, lsr #32]!
    3780:	04002927 	streq	r2, [r0], #-2343	; 0xfffff6d9
    3784:	01050603 	tsteq	r5, r3, lsl #12
    3788:	54535f06 	ldrbpl	r5, [r3], #-3846	; 0xfffff0fa
    378c:	4e554652 	mrcmi	6, 2, r4, cr5, cr2, {2}
    3790:	01002043 	tsteq	r0, r3, asr #32
    3794:	53555f0c 	cmppl	r5, #12, 30	; 0x30
    3798:	46585f45 	ldrbmi	r5, [r8], -r5, asr #30
    379c:	5f434e55 	svcpl	0x00434e55
    37a0:	2054554f 	subscs	r5, r4, pc, asr #10
    37a4:	0d010031 	stceq	0, cr0, [r1, #-196]	; 0xffffff3c
    37a8:	5f52435f 	svcpl	0x0052435f
    37ac:	464c5243 	strbmi	r5, [ip], -r3, asr #4
    37b0:	01003120 	tsteq	r0, r0, lsr #2
    37b4:	53555f0f 	cmppl	r5, #15, 30	; 0x3c
    37b8:	46585f45 	ldrbmi	r5, [r8], -r5, asr #30
    37bc:	5f434e55 	svcpl	0x00434e55
    37c0:	31204e49 			; <UNDEFINED> instruction: 0x31204e49
    37c4:	5f100100 	svcpl	0x00100100
    37c8:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    37cc:	4843455f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, sl, lr}^
    37d0:	0031204f 	eorseq	r2, r1, pc, asr #32
    37d4:	64781401 	ldrbtvs	r1, [r8], #-1025	; 0xfffffbff
    37d8:	6f5f7665 	svcvs	0x005f7665
    37dc:	66287475 			; <UNDEFINED> instruction: 0x66287475
    37e0:	29636e75 	stmdbcs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    37e4:	75667820 	strbvc	r7, [r6, #-2080]!	; 0xfffff7e0
    37e8:	6f5f636e 	svcvs	0x005f636e
    37ec:	3d207475 	cfstrscc	mvf7, [r0, #-468]!	; 0xfffffe2c
    37f0:	6f762820 	svcvs	0x00762820
    37f4:	2a286469 	bcs	a1c9a0 <__mprec_tinytens+0x9f8130>
    37f8:	6e752829 	cdpvs	8, 7, cr2, cr5, cr9, {1}
    37fc:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    3800:	63206465 			; <UNDEFINED> instruction: 0x63206465
    3804:	29726168 	ldmdbcs	r2!, {r3, r5, r6, r8, sp, lr}^
    3808:	75662829 	strbvc	r2, [r6, #-2089]!	; 0xfffff7d7
    380c:	0029636e 	eoreq	r6, r9, lr, ror #6
    3810:	57441d01 	strbpl	r1, [r4, -r1, lsl #26]
    3814:	4148435f 	cmpmi	r8, pc, asr r3
    3818:	69732052 	ldmdbvs	r3!, {r1, r4, r6, sp}^
    381c:	666f657a 			; <UNDEFINED> instruction: 0x666f657a
    3820:	61686328 	cmnvs	r8, r8, lsr #6
    3824:	01002972 	tsteq	r0, r2, ror r9
    3828:	5f57441e 	svcpl	0x0057441e
    382c:	524f4853 	subpl	r4, pc, #5439488	; 0x530000
    3830:	69732054 	ldmdbvs	r3!, {r2, r4, r6, sp}^
    3834:	666f657a 			; <UNDEFINED> instruction: 0x666f657a
    3838:	6f687328 	svcvs	0x00687328
    383c:	00297472 	eoreq	r7, r9, r2, ror r4
    3840:	57441f01 	strbpl	r1, [r4, -r1, lsl #30]
    3844:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    3848:	69732047 	ldmdbvs	r3!, {r0, r1, r2, r6, sp}^
    384c:	666f657a 			; <UNDEFINED> instruction: 0x666f657a
    3850:	6e6f6c28 	cdpvs	12, 6, cr6, cr15, cr8, {1}
    3854:	01002967 	tsteq	r0, r7, ror #18
    3858:	65647824 	strbvs	r7, [r4, #-2084]!	; 0xfffff7dc
    385c:	6e695f76 	mcrvs	15, 3, r5, cr9, cr6, {3}
    3860:	6e756628 	cdpvs	6, 7, cr6, cr5, cr8, {1}
    3864:	78202963 	stmdavc	r0!, {r0, r1, r5, r6, r8, fp, sp}
    3868:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
    386c:	206e695f 	rsbcs	r6, lr, pc, asr r9
    3870:	7528203d 	strvc	r2, [r8, #-61]!	; 0xffffffc3
    3874:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    3878:	2064656e 	rsbcs	r6, r4, lr, ror #10
    387c:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    3880:	28292a28 	stmdacs	r9!, {r3, r5, r9, fp, sp}
    3884:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    3888:	66282929 	strtvs	r2, [r8], -r9, lsr #18
    388c:	29636e75 	stmdbcs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    3890:	07030400 	streq	r0, [r3, -r0, lsl #8]
    3894:	5f02010b 	svcpl	0x0002010b
    3898:	4c4c414d 	stfmie	f4, [ip], {77}	; 0x4d
    389c:	3332434f 	teqcc	r2, #1006632961	; 0x3c000001
    38a0:	485f3838 	ldmdami	pc, {r3, r4, r5, fp, ip, sp}^	; <UNPREDICTABLE>
    38a4:	0300205f 	movweq	r2, #95	; 0x5f
    38a8:	02010a56 	andeq	r0, r1, #352256	; 0x56000
    38ac:	4e49545f 	mcrmi	4, 2, r5, cr9, cr15, {2}
    38b0:	4c414d59 	mcrrmi	13, 5, r4, r1, cr9
    38b4:	5f434f4c 	svcpl	0x00434f4c
    38b8:	00205f48 	eoreq	r5, r0, r8, asr #30
    38bc:	01110403 	tsteq	r1, r3, lsl #8
    38c0:	54535f08 	ldrbpl	r5, [r3], #-3848	; 0xfffff0f8
    38c4:	474e4952 	smlsldmi	r4, lr, r2, r9
    38c8:	205f485f 	subscs	r4, pc, pc, asr r8	; <UNPREDICTABLE>
    38cc:	120a0300 	andne	r0, sl, #0, 6
    38d0:	415f0d01 	cmpmi	pc, r1, lsl #26
    38d4:	4449534e 	strbmi	r5, [r9], #-846	; 0xfffffcb2
    38d8:	5f4c4345 	svcpl	0x004c4345
    38dc:	00205f48 	eoreq	r5, r0, r8, asr #30
    38e0:	01130f03 	tsteq	r3, r3, lsl #30
    38e4:	4e5f5f08 	cdpmi	15, 5, cr5, cr15, cr8, {0}
    38e8:	494c5745 	stmdbmi	ip, {r0, r2, r6, r8, r9, sl, ip, lr}^
    38ec:	5f485f42 	svcpl	0x00485f42
    38f0:	0031205f 	eorseq	r2, r1, pc, asr r0
    38f4:	575f1501 	ldrbpl	r1, [pc, -r1, lsl #10]
    38f8:	5f544e41 	svcpl	0x00544e41
    38fc:	4c5f4f49 	mrrcmi	15, 4, r4, pc, cr9	; <UNPREDICTABLE>
    3900:	5f474e4f 	svcpl	0x00474e4f
    3904:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    3908:	01003120 	tsteq	r0, r0, lsr #2
    390c:	41575f18 	cmpmi	r7, r8, lsl pc
    3910:	525f544e 	subspl	r5, pc, #1308622848	; 0x4e000000
    3914:	53494745 	movtpl	r4, #38725	; 0x9745
    3918:	5f524554 	svcpl	0x00524554
    391c:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
    3920:	01003120 	tsteq	r0, r0, lsr #2
    3924:	424d5f28 	submi	r5, sp, #40, 30	; 0xa0
    3928:	4e454c5f 	mcrmi	12, 2, r4, cr5, cr15, {2}
    392c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3930:	01003120 	tsteq	r0, r0, lsr #2
    3934:	56414832 			; <UNDEFINED> instruction: 0x56414832
    3938:	4e495f45 	cdpmi	15, 4, cr5, cr9, cr5, {2}
    393c:	49465449 	stmdbmi	r6, {r0, r3, r6, sl, ip, lr}^
    3940:	415f494e 	cmpmi	pc, lr, asr #18
    3944:	59415252 	stmdbpl	r1, {r1, r4, r6, r9, ip, lr}^
    3948:	01003120 	tsteq	r0, r0, lsr #2
    394c:	54415f36 	strbpl	r5, [r1], #-3894	; 0xfffff0ca
    3950:	54495845 	strbpl	r5, [r9], #-2117	; 0xfffff7bb
    3954:	4e59445f 	mrcmi	4, 2, r4, cr9, cr15, {2}
    3958:	43494d41 	movtmi	r4, #40257	; 0x9d41
    395c:	4c4c415f 	stfmie	f4, [ip], {95}	; 0x5f
    3960:	3120434f 			; <UNDEFINED> instruction: 0x3120434f
    3964:	5f390100 	svcpl	0x00390100
    3968:	45564148 	ldrbmi	r4, [r6, #-328]	; 0xfffffeb8
    396c:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    3970:	4f445f47 	svcmi	0x00445f47
    3974:	454c4255 	strbmi	r4, [ip, #-597]	; 0xfffffdab
    3978:	01003120 	tsteq	r0, r0, lsr #2
    397c:	41485f3c 	cmpmi	r8, ip, lsr pc
    3980:	435f4556 	cmpmi	pc, #360710144	; 0x15800000
    3984:	4e495f43 	cdpmi	15, 4, cr5, cr9, cr3, {2}
    3988:	49424948 	stmdbmi	r2, {r3, r6, r8, fp, lr}^
    398c:	4f4c5f54 	svcmi	0x004c5f54
    3990:	545f504f 	ldrbpl	r5, [pc], #-79	; 3998 <vtsend_draw_box+0xe4>
    3994:	494c5f4f 	stmdbmi	ip, {r0, r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    3998:	4c414342 	mcrrmi	3, 4, r4, r1, cr2
    399c:	0031204c 	eorseq	r2, r1, ip, asr #32
    39a0:	4c5f3f01 	mrrcmi	15, 0, r3, pc, cr1	; <UNPREDICTABLE>
    39a4:	5f4c4244 	svcpl	0x004c4244
    39a8:	445f5145 	ldrbmi	r5, [pc], #-325	; 39b0 <vtsend_draw_box+0xfc>
    39ac:	31204c42 			; <UNDEFINED> instruction: 0x31204c42
    39b0:	5f420100 	svcpl	0x00420100
    39b4:	52575646 	subspl	r5, r7, #73400320	; 0x4600000
    39b8:	5f455449 	svcpl	0x00455449
    39bc:	535f4e49 	cmppl	pc, #1168	; 0x490
    39c0:	41455254 	cmpmi	r5, r4, asr r2
    39c4:	204f494d 	subcs	r4, pc, sp, asr #18
    39c8:	45010031 	strmi	r0, [r1, #-49]	; 0xffffffcf
    39cc:	4553465f 	ldrbmi	r4, [r3, #-1631]	; 0xfffff9a1
    39d0:	4f5f4b45 	svcmi	0x005f4b45
    39d4:	4d495450 	cfstrdmi	mvd5, [r9, #-320]	; 0xfffffec0
    39d8:	54415a49 	strbpl	r5, [r1], #-2633	; 0xfffff5b7
    39dc:	204e4f49 	subcs	r4, lr, r9, asr #30
    39e0:	48010031 	stmdami	r1, {r0, r4, r5}
    39e4:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    39e8:	524f5f45 	subpl	r5, pc, #276	; 0x114
    39ec:	544e4549 	strbpl	r4, [lr], #-1353	; 0xfffffab7
    39f0:	01003120 	tsteq	r0, r0, lsr #2
    39f4:	4e555f4b 	cdpmi	15, 5, cr5, cr5, cr11, {2}
    39f8:	5f465542 	svcpl	0x00465542
    39fc:	45525453 	ldrbmi	r5, [r2, #-1107]	; 0xfffffbad
    3a00:	4f5f4d41 	svcmi	0x005f4d41
    3a04:	31205450 			; <UNDEFINED> instruction: 0x31205450
    3a08:	5f570100 	svcpl	0x00570100
    3a0c:	41544552 	cmpmi	r4, r2, asr r5
    3a10:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
    3a14:	454c4241 	strbmi	r4, [ip, #-577]	; 0xfffffdbf
    3a18:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    3a1c:	474e494b 	strbmi	r4, [lr, -fp, asr #18]
    3a20:	04003120 	streq	r3, [r0], #-288	; 0xfffffee0
    3a24:	01141003 	tsteq	r4, r3
    3a28:	535f5f02 	cmppl	pc, #2, 30
    3a2c:	435f5359 	cmpmi	pc, #1677721601	; 0x64000001
    3a30:	49464e4f 	stmdbmi	r6, {r0, r1, r2, r3, r6, r9, sl, fp, lr}^
    3a34:	5f485f47 	svcpl	0x00485f47
    3a38:	0300205f 	movweq	r2, #95	; 0x5f
    3a3c:	3c011504 	cfstr32cc	mvfx1, [r1], {4}
    3a40:	45495f5f 	strbmi	r5, [r9, #-3935]	; 0xfffff0a1
    3a44:	4c5f4545 	cfldr64mi	mvdx4, [pc], {69}	; 0x45
    3a48:	4c545449 	cfldrdmi	mvd5, [r4], {73}	; 0x49
    3a4c:	4e455f45 	cdpmi	15, 4, cr5, cr5, cr5, {2}
    3a50:	4e414944 	vmlsmi.f16	s9, s2, s8	; <UNPREDICTABLE>
    3a54:	01040020 	tsteq	r4, r0, lsr #32
    3a58:	505f01db 	ldrsbpl	r0, [pc], #-27	; <UNPREDICTABLE>
    3a5c:	544e494f 	strbpl	r4, [lr], #-2383	; 0xfffff6b1
    3a60:	495f5245 	ldmdbmi	pc, {r0, r2, r6, r9, ip, lr}^	; <UNPREDICTABLE>
    3a64:	6c20544e 	cfstrsvs	mvf5, [r0], #-312	; 0xfffffec8
    3a68:	00676e6f 	rsbeq	r6, r7, pc, ror #28
    3a6c:	5f01e102 	svcpl	0x0001e102
    3a70:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    3a74:	414d5f44 	cmpmi	sp, r4, asr #30
    3a78:	e5010058 	str	r0, [r1, #-88]	; 0xffffffa8
    3a7c:	525f5f01 	subspl	r5, pc, #1, 30
    3a80:	5f444e41 	svcpl	0x00444e41
    3a84:	2058414d 	subscs	r4, r8, sp, asr #2
    3a88:	66377830 			; <UNDEFINED> instruction: 0x66377830
    3a8c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    3a90:	01006666 	tsteq	r0, r6, ror #12
    3a94:	5f5f01f4 	svcpl	0x005f01f4
    3a98:	4f505845 	svcmi	0x00505845
    3a9c:	00205452 	eoreq	r5, r0, r2, asr r4
    3aa0:	5f01f801 	svcpl	0x0001f801
    3aa4:	504d495f 	subpl	r4, sp, pc, asr r9
    3aa8:	2054524f 	subscs	r5, r4, pc, asr #4
    3aac:	01ff0100 	mvnseq	r0, r0, lsl #2
    3ab0:	4145525f 	cmpmi	r5, pc, asr r2
    3ab4:	52575f44 	subspl	r5, r7, #68, 30	; 0x110
    3ab8:	5f455449 	svcpl	0x00455449
    3abc:	55544552 	ldrbpl	r4, [r4, #-1362]	; 0xfffffaae
    3ac0:	545f4e52 	ldrbpl	r4, [pc], #-3666	; 3ac8 <LPC2388_Initialize+0x6c>
    3ac4:	20455059 	subcs	r5, r5, r9, asr r0
    3ac8:	00746e69 	rsbseq	r6, r4, r9, ror #28
    3acc:	5f028501 	svcpl	0x00028501
    3ad0:	44414552 	strbmi	r4, [r1], #-1362	; 0xfffffaae
    3ad4:	4952575f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    3ad8:	425f4554 	subsmi	r4, pc, #84, 10	; 0x15000000
    3adc:	49534655 	ldmdbmi	r3, {r0, r2, r4, r6, r9, sl, lr}^
    3ae0:	545f455a 	ldrbpl	r4, [pc], #-1370	; 3ae8 <LPC2388_Initialize+0x8c>
    3ae4:	20455059 	subcs	r5, r5, r9, asr r0
    3ae8:	00746e69 	rsbseq	r6, r4, r9, ror #28
    3aec:	5f170104 	svcpl	0x00170104
    3af0:	45564148 	ldrbmi	r4, [r6, #-328]	; 0xfffffeb8
    3af4:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    3af8:	01002043 	tsteq	r0, r3, asr #32
    3afc:	45425f2c 	strbmi	r5, [r2, #-3884]	; 0xfffff0d4
    3b00:	5f4e4947 	svcpl	0x004e4947
    3b04:	5f445453 	svcpl	0x00445453
    3b08:	01002043 	tsteq	r0, r3, asr #32
    3b0c:	4e455f2d 	cdpmi	15, 4, cr5, cr5, cr13, {1}
    3b10:	54535f44 	ldrbpl	r5, [r3], #-3908	; 0xfffff0bc
    3b14:	20435f44 	subcs	r5, r3, r4, asr #30
    3b18:	5f2e0100 	svcpl	0x002e0100
    3b1c:	48544f4e 	ldmdami	r4, {r1, r2, r3, r6, r8, r9, sl, fp, lr}^
    3b20:	20574f52 	subscs	r4, r7, r2, asr pc
    3b24:	5f320100 	svcpl	0x00320100
    3b28:	20525450 	subscs	r5, r2, r0, asr r4
    3b2c:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    3b30:	01002a20 	tsteq	r0, r0, lsr #20
    3b34:	4e415f33 	mcrmi	15, 2, r5, cr1, cr3, {1}
    3b38:	002c2044 	eoreq	r2, ip, r4, asr #32
    3b3c:	4e5f3401 	cdpmi	4, 5, cr3, cr15, cr1, {0}
    3b40:	4752414f 	ldrbmi	r4, [r2, -pc, asr #2]
    3b44:	6f762053 	svcvs	0x00762053
    3b48:	01006469 	tsteq	r0, r9, ror #8
    3b4c:	4f435f35 	svcmi	0x00435f35
    3b50:	2054534e 	subscs	r5, r4, lr, asr #6
    3b54:	736e6f63 	cmnvc	lr, #396	; 0x18c
    3b58:	36010074 			; <UNDEFINED> instruction: 0x36010074
    3b5c:	4c4f565f 	mcrrmi	6, 5, r5, pc, cr15
    3b60:	4c495441 	cfstrdmi	mvd5, [r9], {65}	; 0x41
    3b64:	6f762045 	svcvs	0x00762045
    3b68:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    3b6c:	0100656c 	tsteq	r0, ip, ror #10
    3b70:	49535f37 	ldmdbmi	r3, {r0, r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    3b74:	44454e47 	strbmi	r4, [r5], #-3655	; 0xfffff1b9
    3b78:	67697320 	strbvs	r7, [r9, -r0, lsr #6]!
    3b7c:	0064656e 	rsbeq	r6, r4, lr, ror #10
    3b80:	445f3801 	ldrbmi	r3, [pc], #-2049	; 3b88 <LPC2388_Initialize+0x12c>
    3b84:	2053544f 	subscs	r5, r3, pc, asr #8
    3b88:	2e2e202c 	cdpcs	0, 2, cr2, cr14, cr12, {1}
    3b8c:	3901002e 	stmdbcc	r1, {r1, r2, r3, r5}
    3b90:	494f565f 	stmdbmi	pc, {r0, r1, r2, r3, r4, r6, r9, sl, ip, lr}^	; <UNPREDICTABLE>
    3b94:	6f762044 	svcvs	0x00762044
    3b98:	01006469 	tsteq	r0, r9, ror #8
    3b9c:	58455f40 	stmdapl	r5, {r6, r8, r9, sl, fp, ip, lr}^
    3ba0:	5f4e5546 	svcpl	0x004e5546
    3ba4:	48544f4e 	ldmdami	r4, {r1, r2, r3, r6, r8, r9, sl, fp, lr}^
    3ba8:	28574f52 	ldmdacs	r7, {r1, r4, r6, r8, r9, sl, fp, lr}^
    3bac:	656d616e 	strbvs	r6, [sp, #-366]!	; 0xfffffe92
    3bb0:	6f72702c 	svcvs	0x0072702c
    3bb4:	20296f74 	eorcs	r6, r9, r4, ror pc
    3bb8:	656d616e 	strbvs	r6, [sp, #-366]!	; 0xfffffe92
    3bbc:	6f727020 	svcvs	0x00727020
    3bc0:	5f206f74 	svcpl	0x00206f74
    3bc4:	48544f4e 	ldmdami	r4, {r1, r2, r3, r6, r8, r9, sl, fp, lr}^
    3bc8:	00574f52 	subseq	r4, r7, r2, asr pc
    3bcc:	455f4101 	ldrbmi	r4, [pc, #-257]	; 3ad3 <LPC2388_Initialize+0x77>
    3bd0:	4e554658 	mrcmi	6, 2, r4, cr5, cr8, {2}
    3bd4:	6d616e28 	stclvs	14, cr6, [r1, #-160]!	; 0xffffff60
    3bd8:	72702c65 	rsbsvc	r2, r0, #25856	; 0x6500
    3bdc:	296f746f 	stmdbcs	pc!, {r0, r1, r2, r3, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    3be0:	6d616e20 	stclvs	14, cr6, [r1, #-128]!	; 0xffffff80
    3be4:	72702065 	rsbsvc	r2, r0, #101	; 0x65
    3be8:	006f746f 	rsbeq	r7, pc, pc, ror #8
    3bec:	455f4201 	ldrbmi	r4, [pc, #-513]	; 39f3 <vtsend_fill_box+0x1b>
    3bf0:	52415058 	subpl	r5, r1, #88	; 0x58
    3bf4:	616e284d 	cmnvs	lr, sp, asr #16
    3bf8:	702c656d 	eorvc	r6, ip, sp, ror #10
    3bfc:	6f746f72 	svcvs	0x00746f72
    3c00:	2a282029 	bcs	a0bcac <__mprec_tinytens+0x9e743c>
    3c04:	6d616e20 	stclvs	14, cr6, [r1, #-128]!	; 0xffffff80
    3c08:	70202965 	eorvc	r2, r0, r5, ror #18
    3c0c:	6f746f72 	svcvs	0x00746f72
    3c10:	5f430100 	svcpl	0x00430100
    3c14:	4e465845 	cdpmi	8, 4, cr5, cr6, cr5, {2}
    3c18:	28525450 	ldmdacs	r2, {r4, r6, sl, ip, lr}^
    3c1c:	656d616e 	strbvs	r6, [sp, #-366]!	; 0xfffffe92
    3c20:	6f72702c 	svcvs	0x0072702c
    3c24:	20296f74 	eorcs	r6, r9, r4, ror pc
    3c28:	6e202a28 	vmulvs.f32	s4, s0, s17
    3c2c:	29656d61 	stmdbcs	r5!, {r0, r5, r6, r8, sl, fp, sp, lr}^
    3c30:	6f727020 	svcvs	0x00727020
    3c34:	01006f74 	tsteq	r0, r4, ror pc
    3c38:	45445f45 	strbmi	r5, [r4, #-3909]	; 0xfffff0bb
    3c3c:	284e5546 	stmdacs	lr, {r1, r2, r6, r8, sl, ip, lr}^
    3c40:	656d616e 	strbvs	r6, [sp, #-366]!	; 0xfffffe92
    3c44:	6772612c 	ldrbvs	r6, [r2, -ip, lsr #2]!
    3c48:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0xfffff694
    3c4c:	6772612c 	ldrbvs	r6, [r2, -ip, lsr #2]!
    3c50:	6e202973 			; <UNDEFINED> instruction: 0x6e202973
    3c54:	28656d61 	stmdacs	r5!, {r0, r5, r6, r8, sl, fp, sp, lr}^
    3c58:	73677261 	cmnvc	r7, #268435462	; 0x10000006
    3c5c:	46010029 	strmi	r0, [r1], -r9, lsr #32
    3c60:	4645445f 			; <UNDEFINED> instruction: 0x4645445f
    3c64:	565f4e55 			; <UNDEFINED> instruction: 0x565f4e55
    3c68:	2844494f 	stmdacs	r4, {r0, r1, r2, r3, r6, r8, fp, lr}^
    3c6c:	656d616e 	strbvs	r6, [sp, #-366]!	; 0xfffffe92
    3c70:	616e2029 	cmnvs	lr, r9, lsr #32
    3c74:	5f28656d 	svcpl	0x0028656d
    3c78:	52414f4e 	subpl	r4, r1, #312	; 0x138
    3c7c:	00295347 	eoreq	r5, r9, r7, asr #6
    3c80:	435f4701 	cmpmi	pc, #262144	; 0x40000
    3c84:	5f545341 	svcpl	0x00545341
    3c88:	44494f56 	strbmi	r4, [r9], #-3926	; 0xfffff0aa
    3c8c:	6f762820 	svcvs	0x00762820
    3c90:	00296469 	eoreq	r6, r9, r9, ror #8
    3c94:	4c5f4901 	mrrcmi	9, 0, r4, pc, cr1	; <UNPREDICTABLE>
    3c98:	5f474e4f 	svcpl	0x00474e4f
    3c9c:	42554f44 	subsmi	r4, r5, #68, 30	; 0x110
    3ca0:	6c20454c 	cfstr32vs	mvfx4, [r0], #-304	; 0xfffffed0
    3ca4:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    3ca8:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
    3cac:	0100656c 	tsteq	r0, ip, ror #10
    3cb0:	41505f4c 	cmpmi	r0, ip, asr #30
    3cb4:	534d4152 	movtpl	r4, #53586	; 0xd152
    3cb8:	72617028 	rsbvc	r7, r1, #40	; 0x28
    3cbc:	696c6d61 	stmdbvs	ip!, {r0, r5, r6, r8, sl, fp, sp, lr}^
    3cc0:	20297473 	eorcs	r7, r9, r3, ror r4
    3cc4:	61726170 	cmnvs	r2, r0, ror r1
    3cc8:	73696c6d 	cmnvc	r9, #27904	; 0x6d00
    3ccc:	65010074 	strvs	r0, [r1, #-116]	; 0xffffff8c
    3cd0:	5454415f 	ldrbpl	r4, [r4], #-351	; 0xfffffea1
    3cd4:	55424952 	strbpl	r4, [r2, #-2386]	; 0xfffff6ae
    3cd8:	61284554 			; <UNDEFINED> instruction: 0x61284554
    3cdc:	73727474 	cmnvc	r2, #116, 8	; 0x74000000
    3ce0:	5f5f2029 	svcpl	0x005f2029
    3ce4:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    3ce8:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    3cec:	205f5f65 	subscs	r5, pc, r5, ror #30
    3cf0:	74746128 	ldrbtvc	r6, [r4], #-296	; 0xfffffed8
    3cf4:	00297372 	eoreq	r7, r9, r2, ror r3
    3cf8:	455f7f01 	ldrbmi	r7, [pc, #-3841]	; 2dff <text_history_init+0x1b>
    3cfc:	4144494c 	cmpmi	r4, ip, asr #18
    3d00:	5f454c42 	svcpl	0x00454c42
    3d04:	494c4e49 	stmdbmi	ip, {r0, r3, r6, r9, sl, fp, lr}^
    3d08:	7320454e 			; <UNDEFINED> instruction: 0x7320454e
    3d0c:	69746174 	ldmdbvs	r4!, {r2, r4, r5, r6, r8, sp, lr}^
    3d10:	5f5f2063 	svcpl	0x005f2063
    3d14:	696c6e69 	stmdbvs	ip!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    3d18:	5f5f656e 	svcpl	0x005f656e
    3d1c:	01830100 	orreq	r0, r3, r0, lsl #2
    3d20:	494f4e5f 	stmdbmi	pc, {r0, r1, r2, r3, r4, r6, r9, sl, fp, lr}^	; <UNPREDICTABLE>
    3d24:	4e494c4e 	cdpmi	12, 4, cr4, cr9, cr14, {2}
    3d28:	5f5f2045 	svcpl	0x005f2045
    3d2c:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    3d30:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    3d34:	205f5f65 	subscs	r5, pc, r5, ror #30
    3d38:	5f5f2828 	svcpl	0x005f2828
    3d3c:	6e696f6e 	cdpvs	15, 6, cr6, cr9, cr14, {3}
    3d40:	656e696c 	strbvs	r6, [lr, #-2412]!	; 0xfffff694
    3d44:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    3d48:	01840100 	orreq	r0, r4, r0, lsl #2
    3d4c:	494f4e5f 	stmdbmi	pc, {r0, r1, r2, r3, r4, r6, r9, sl, fp, lr}^	; <UNPREDICTABLE>
    3d50:	4e494c4e 	cdpmi	12, 4, cr4, cr9, cr14, {2}
    3d54:	54535f45 	ldrbpl	r5, [r3], #-3909	; 0xfffff0bb
    3d58:	43495441 	movtmi	r5, #37953	; 0x9441
    3d5c:	4f4e5f20 	svcmi	0x004e5f20
    3d60:	494c4e49 	stmdbmi	ip, {r0, r3, r6, r9, sl, fp, lr}^
    3d64:	7320454e 			; <UNDEFINED> instruction: 0x7320454e
    3d68:	69746174 	ldmdbvs	r4!, {r2, r4, r5, r6, r8, sp, lr}^
    3d6c:	03040063 	movweq	r0, #16483	; 0x4063
    3d70:	0b01090b 	bleq	461a4 <__mprec_tinytens+0x21934>
    3d74:	5359535f 	cmppl	r9, #2080374785	; 0x7c000001
    3d78:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    3d7c:	485f544e 	ldmdami	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    3d80:	0300205f 	movweq	r2, #95	; 0x5f
    3d84:	0304120d 	movweq	r1, #16909	; 0x420d
    3d88:	2701080e 	strcs	r0, [r1, -lr, lsl #16]
    3d8c:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    3d90:	5f464544 	svcpl	0x00464544
    3d94:	01002048 	tsteq	r0, r8, asr #32
    3d98:	54535f28 	ldrbpl	r5, [r3], #-3880	; 0xfffff0d8
    3d9c:	46454444 	strbmi	r4, [r5], -r4, asr #8
    3da0:	205f485f 	subscs	r4, pc, pc, asr r8	; <UNPREDICTABLE>
    3da4:	5f2a0100 	svcpl	0x002a0100
    3da8:	49534e41 	ldmdbmi	r3, {r0, r6, r9, sl, fp, lr}^
    3dac:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    3db0:	5f464544 	svcpl	0x00464544
    3db4:	01002048 	tsteq	r0, r8, asr #32
    3db8:	505f0189 	subspl	r0, pc, r9, lsl #3
    3dbc:	49445254 	stmdbmi	r4, {r2, r4, r6, r9, ip, lr}^
    3dc0:	545f4646 	ldrbpl	r4, [pc], #-1606	; 3dc8 <LPC2388_Initialize+0x36c>
    3dc4:	8a010020 	bhi	43e4c <__mprec_tinytens+0x1f5dc>
    3dc8:	5f545f01 	svcpl	0x00545f01
    3dcc:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    3dd0:	5f464649 	svcpl	0x00464649
    3dd4:	8b010020 	blhi	43e5c <__mprec_tinytens+0x1f5ec>
    3dd8:	5f545f01 	svcpl	0x00545f01
    3ddc:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    3de0:	20464649 	subcs	r4, r6, r9, asr #12
    3de4:	018c0100 	orreq	r0, ip, r0, lsl #2
    3de8:	54505f5f 	ldrbpl	r5, [r0], #-3935	; 0xfffff0a1
    3dec:	46494452 			; <UNDEFINED> instruction: 0x46494452
    3df0:	20545f46 	subscs	r5, r4, r6, asr #30
    3df4:	018d0100 	orreq	r0, sp, r0, lsl #2
    3df8:	5254505f 	subspl	r5, r4, #95	; 0x5f
    3dfc:	46464944 	strbmi	r4, [r6], -r4, asr #18
    3e00:	205f545f 	subscs	r5, pc, pc, asr r4	; <UNPREDICTABLE>
    3e04:	018e0100 	orreq	r0, lr, r0, lsl #2
    3e08:	4453425f 	ldrbmi	r4, [r3], #-607	; 0xfffffda1
    3e0c:	5254505f 	subspl	r5, r4, #95	; 0x5f
    3e10:	46464944 	strbmi	r4, [r6], -r4, asr #18
    3e14:	205f545f 	subscs	r5, pc, pc, asr r4	; <UNPREDICTABLE>
    3e18:	018f0100 	orreq	r0, pc, r0, lsl #2
    3e1c:	695f5f5f 	ldmdbvs	pc, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3e20:	705f746e 	subsvc	r7, pc, lr, ror #8
    3e24:	69647274 	stmdbvs	r4!, {r2, r4, r5, r6, r9, ip, sp, lr}^
    3e28:	745f6666 	ldrbvc	r6, [pc], #-1638	; 3e30 <LPC2388_Initialize+0x3d4>
    3e2c:	0020685f 	eoreq	r6, r0, pc, asr r8
    3e30:	5f019001 	svcpl	0x00019001
    3e34:	5f434347 	svcpl	0x00434347
    3e38:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    3e3c:	5f464649 	svcpl	0x00464649
    3e40:	01002054 	qaddeq	r2, r4, r0
    3e44:	505f0191 			; <UNDEFINED> instruction: 0x505f0191
    3e48:	49445254 	stmdbmi	r4, {r2, r4, r6, r9, ip, lr}^
    3e4c:	545f4646 	ldrbpl	r4, [pc], #-1606	; 3e54 <LPC2388_Initialize+0x3f8>
    3e50:	4345445f 	movtmi	r4, #21599	; 0x545f
    3e54:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    3e58:	02002044 	andeq	r2, r0, #68	; 0x44
    3e5c:	5f5f01a1 	svcpl	0x005f01a1
    3e60:	6465656e 	strbtvs	r6, [r5], #-1390	; 0xfffffa92
    3e64:	7274705f 	rsbsvc	r7, r4, #95	; 0x5f
    3e68:	66666964 	strbtvs	r6, [r6], -r4, ror #18
    3e6c:	0100745f 	tsteq	r0, pc, asr r4
    3e70:	5f5f01bb 	svcpl	0x005f01bb
    3e74:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    3e78:	5f5f745f 	svcpl	0x005f745f
    3e7c:	bc010020 	stclt	0, cr0, [r1], {32}
    3e80:	535f5f01 	cmppl	pc, #1, 30
    3e84:	5f455a49 	svcpl	0x00455a49
    3e88:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    3e8c:	01bd0100 			; <UNDEFINED> instruction: 0x01bd0100
    3e90:	5a49535f 	bpl	1258c14 <__mprec_tinytens+0x12343a4>
    3e94:	20545f45 	subscs	r5, r4, r5, asr #30
    3e98:	01be0100 			; <UNDEFINED> instruction: 0x01be0100
    3e9c:	5359535f 	cmppl	r9, #2080374785	; 0x7c000001
    3ea0:	5a49535f 	bpl	1258c24 <__mprec_tinytens+0x12343b4>
    3ea4:	5f545f45 	svcpl	0x00545f45
    3ea8:	01002048 	tsteq	r0, r8, asr #32
    3eac:	545f01bf 	ldrbpl	r0, [pc], #-447	; 3eb4 <LPC2388_Initialize+0x458>
    3eb0:	5a49535f 	bpl	1258c34 <__mprec_tinytens+0x12343c4>
    3eb4:	00205f45 	eoreq	r5, r0, r5, asr #30
    3eb8:	5f01c001 	svcpl	0x0001c001
    3ebc:	49535f54 	ldmdbmi	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    3ec0:	0020455a 	eoreq	r4, r0, sl, asr r5
    3ec4:	5f01c101 	svcpl	0x0001c101
    3ec8:	5a49535f 	bpl	1258c4c <__mprec_tinytens+0x12343dc>
    3ecc:	20545f45 	subscs	r5, r4, r5, asr #30
    3ed0:	01c20100 	biceq	r0, r2, r0, lsl #2
    3ed4:	5a49535f 	bpl	1258c58 <__mprec_tinytens+0x12343e8>
    3ed8:	5f545f45 	svcpl	0x00545f45
    3edc:	c3010020 	movwgt	r0, #4128	; 0x1020
    3ee0:	53425f01 	movtpl	r5, #12033	; 0x2f01
    3ee4:	49535f44 	ldmdbmi	r3, {r2, r6, r8, r9, sl, fp, ip, lr}^
    3ee8:	545f455a 	ldrbpl	r4, [pc], #-1370	; 3ef0 <LPC2388_Initialize+0x494>
    3eec:	0100205f 	qaddeq	r2, pc, r0	; <UNPREDICTABLE>
    3ef0:	535f01c4 	cmppl	pc, #196, 2	; 0x31
    3ef4:	5f455a49 	svcpl	0x00455a49
    3ef8:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    3efc:	454e4946 	strbmi	r4, [lr, #-2374]	; 0xfffff6ba
    3f00:	00205f44 	eoreq	r5, r0, r4, asr #30
    3f04:	5f01c501 	svcpl	0x0001c501
    3f08:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    3f0c:	445f545f 	ldrbmi	r5, [pc], #-1119	; 3f14 <LPC2388_Initialize+0x4b8>
    3f10:	4e494645 	cdpmi	6, 4, cr4, cr9, cr5, {2}
    3f14:	00204445 	eoreq	r4, r0, r5, asr #8
    3f18:	5f01c601 	svcpl	0x0001c601
    3f1c:	5f445342 	svcpl	0x00445342
    3f20:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    3f24:	445f545f 	ldrbmi	r5, [pc], #-1119	; 3f2c <LPC2388_Initialize+0x4d0>
    3f28:	4e494645 	cdpmi	6, 4, cr4, cr9, cr5, {2}
    3f2c:	205f4445 	subscs	r4, pc, r5, asr #8
    3f30:	01c70100 	biceq	r0, r7, r0, lsl #2
    3f34:	5a49535f 	bpl	1258cb8 <__mprec_tinytens+0x1234448>
    3f38:	5f545f45 	svcpl	0x00545f45
    3f3c:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    3f40:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    3f44:	c8010020 	stmdagt	r1, {r5}
    3f48:	5f5f5f01 	svcpl	0x005f5f01
    3f4c:	5f746e69 	svcpl	0x00746e69
    3f50:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    3f54:	685f745f 	ldmdavs	pc, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    3f58:	c9010020 	stmdbgt	r1, {r5}
    3f5c:	43475f01 	movtmi	r5, #32513	; 0x7f01
    3f60:	49535f43 	ldmdbmi	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    3f64:	545f455a 	ldrbpl	r4, [pc], #-1370	; 3f6c <LPC2388_Initialize+0x510>
    3f68:	ca010020 	bgt	43ff0 <__mprec_tinytens+0x1f780>
    3f6c:	49535f01 	ldmdbmi	r3, {r0, r8, r9, sl, fp, ip, lr}^
    3f70:	5f54455a 	svcpl	0x0054455a
    3f74:	d2010020 	andle	r0, r1, #32
    3f78:	735f5f01 	cmpvc	pc, #1, 30
    3f7c:	5f657a69 	svcpl	0x00657a69
    3f80:	02002074 	andeq	r2, r0, #116	; 0x74
    3f84:	5f5f01ee 	svcpl	0x005f01ee
    3f88:	6465656e 	strbtvs	r6, [r5], #-1390	; 0xfffffa92
    3f8c:	7a69735f 	bvc	1a60d10 <__mprec_tinytens+0x1a3c4a0>
    3f90:	00745f65 	rsbseq	r5, r4, r5, ror #30
    3f94:	5f028b01 	svcpl	0x00028b01
    3f98:	6863775f 	stmdavs	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
    3f9c:	745f7261 	ldrbvc	r7, [pc], #-609	; 3fa4 <LPC2388_Initialize+0x548>
    3fa0:	00205f5f 	eoreq	r5, r0, pc, asr pc
    3fa4:	5f028c01 	svcpl	0x00028c01
    3fa8:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    3fac:	545f5241 	ldrbpl	r5, [pc], #-577	; 3fb4 <LPC2388_Initialize+0x558>
    3fb0:	00205f5f 	eoreq	r5, r0, pc, asr pc
    3fb4:	5f028d01 	svcpl	0x00028d01
    3fb8:	41484357 	cmpmi	r8, r7, asr r3
    3fbc:	20545f52 	subscs	r5, r4, r2, asr pc
    3fc0:	028e0100 	addeq	r0, lr, #0, 2
    3fc4:	575f545f 			; <UNDEFINED> instruction: 0x575f545f
    3fc8:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    3fcc:	0100205f 	qaddeq	r2, pc, r0	; <UNPREDICTABLE>
    3fd0:	545f028f 	ldrbpl	r0, [pc], #-655	; 3fd8 <LPC2388_Initialize+0x57c>
    3fd4:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    3fd8:	00205241 	eoreq	r5, r0, r1, asr #4
    3fdc:	5f029001 	svcpl	0x00029001
    3fe0:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    3fe4:	545f5241 	ldrbpl	r5, [pc], #-577	; 3fec <LPC2388_Initialize+0x590>
    3fe8:	91010020 	tstls	r1, r0, lsr #32
    3fec:	43575f02 	cmpmi	r7, #2, 30
    3ff0:	5f524148 	svcpl	0x00524148
    3ff4:	00205f54 	eoreq	r5, r0, r4, asr pc
    3ff8:	5f029201 	svcpl	0x00029201
    3ffc:	5f445342 	svcpl	0x00445342
    4000:	41484357 	cmpmi	r8, r7, asr r3
    4004:	5f545f52 	svcpl	0x00545f52
    4008:	93010020 	movwls	r0, #4128	; 0x1020
    400c:	43575f02 	cmpmi	r7, #2, 30
    4010:	5f524148 	svcpl	0x00524148
    4014:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    4018:	454e4946 	strbmi	r4, [lr, #-2374]	; 0xfffff6ba
    401c:	00205f44 	eoreq	r5, r0, r4, asr #30
    4020:	5f029401 	svcpl	0x00029401
    4024:	41484357 	cmpmi	r8, r7, asr r3
    4028:	5f545f52 	svcpl	0x00545f52
    402c:	49464544 	stmdbmi	r6, {r2, r6, r8, sl, lr}^
    4030:	2044454e 	subcs	r4, r4, lr, asr #10
    4034:	02950100 	addseq	r0, r5, #0, 2
    4038:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    403c:	545f5241 	ldrbpl	r5, [pc], #-577	; 4044 <LPC2388_Initialize+0x5e8>
    4040:	0020485f 	eoreq	r4, r0, pc, asr r8
    4044:	5f029601 	svcpl	0x00029601
    4048:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    404c:	63775f74 	cmnvs	r7, #116, 30	; 0x1d0
    4050:	5f726168 	svcpl	0x00726168
    4054:	20685f74 	rsbcs	r5, r8, r4, ror pc
    4058:	02970100 	addseq	r0, r7, #0, 2
    405c:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    4060:	43575f54 	cmpmi	r7, #84, 30	; 0x150
    4064:	5f524148 	svcpl	0x00524148
    4068:	20485f54 	subcs	r5, r8, r4, asr pc
    406c:	02980100 	addseq	r0, r8, #0, 2
    4070:	4343475f 	movtmi	r4, #14175	; 0x375f
    4074:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    4078:	545f5241 	ldrbpl	r5, [pc], #-577	; 4080 <LPC2388_Initialize+0x624>
    407c:	99010020 	stmdbls	r1, {r5}
    4080:	43575f02 	cmpmi	r7, #2, 30
    4084:	5f524148 	svcpl	0x00524148
    4088:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    408c:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    4090:	00204445 	eoreq	r4, r0, r5, asr #8
    4094:	5f02a602 	svcpl	0x0002a602
    4098:	5f445342 	svcpl	0x00445342
    409c:	41484357 	cmpmi	r8, r7, asr r3
    40a0:	5f545f52 	svcpl	0x00545f52
    40a4:	02db0200 	sbcseq	r0, fp, #0, 4
    40a8:	656e5f5f 	strbvs	r5, [lr, #-3935]!	; 0xfffff0a1
    40ac:	775f6465 	ldrbvc	r6, [pc, -r5, ror #8]
    40b0:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    40b4:	0200745f 	andeq	r7, r0, #1593835520	; 0x5f000000
    40b8:	554e0391 	strbpl	r0, [lr, #-913]	; 0xfffffc6f
    40bc:	01004c4c 	tsteq	r0, ip, asr #24
    40c0:	554e0396 	strbpl	r0, [lr, #-918]	; 0xfffffc6a
    40c4:	28204c4c 	stmdacs	r0!, {r2, r3, r6, sl, fp, lr}
    40c8:	696f7628 	stmdbvs	pc!, {r3, r5, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    40cc:	292a2064 	stmdbcs	sl!, {r2, r5, r6, sp}
    40d0:	02002930 	andeq	r2, r0, #48, 18	; 0xc0000
    40d4:	5f5f039c 	svcpl	0x005f039c
    40d8:	6465656e 	strbtvs	r6, [r5], #-1390	; 0xfffffa92
    40dc:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    40e0:	a101004c 	tstge	r1, ip, asr #32
    40e4:	66666f03 	strbtvs	r6, [r6], -r3, lsl #30
    40e8:	6f746573 	svcvs	0x00746573
    40ec:	59542866 	ldmdbpl	r4, {r1, r2, r5, r6, fp, sp}^
    40f0:	4d2c4550 	cfstr32mi	mvfx4, [ip, #-320]!	; 0xfffffec0
    40f4:	45424d45 	strbmi	r4, [r2, #-3397]	; 0xfffff2bb
    40f8:	5f202952 	svcpl	0x00202952
    40fc:	6975625f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
    4100:	6e69746c 	cdpvs	4, 6, cr7, cr9, cr12, {3}
    4104:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
    4108:	6f746573 	svcvs	0x00746573
    410c:	54282066 	strtpl	r2, [r8], #-102	; 0xffffff9a
    4110:	2c455059 	mcrrcs	0, 5, r5, r5, cr9
    4114:	4d454d20 	stclmi	13, cr4, [r5, #-128]	; 0xffffff80
    4118:	29524542 	ldmdbcs	r2, {r1, r6, r8, sl, lr}^
    411c:	03a60100 			; <UNDEFINED> instruction: 0x03a60100
    4120:	4343475f 	movtmi	r4, #14175	; 0x375f
    4124:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    4128:	494c415f 	stmdbmi	ip, {r0, r1, r2, r3, r4, r6, r8, lr}^
    412c:	545f4e47 	ldrbpl	r4, [pc], #-3655	; 4134 <LPC2388_Initialize+0x6d8>
    4130:	03040020 	movweq	r0, #16416	; 0x4020
    4134:	1401070f 	strne	r0, [r1], #-1807	; 0xfffff8f1
    4138:	5359535f 	cmppl	r9, #2080374785	; 0x7c000001
    413c:	59545f5f 	ldmdbpl	r4, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    4140:	5f534550 	svcpl	0x00534550
    4144:	03002048 	movweq	r2, #72	; 0x48
    4148:	06011618 			; <UNDEFINED> instruction: 0x06011618
    414c:	43414d5f 	movtmi	r4, #7519	; 0x1d5f
    4150:	454e4948 	strbmi	r4, [lr, #-2376]	; 0xfffff6b8
    4154:	59545f5f 	ldmdbpl	r4, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    4158:	5f534550 	svcpl	0x00534550
    415c:	04002048 	streq	r2, [r0], #-72	; 0xffffffb8
    4160:	01061903 	tsteq	r6, r3, lsl #18
    4164:	535f5f02 	cmppl	pc, #2, 30
    4168:	4c5f5359 	mrrcmi	3, 5, r5, pc, cr9	; <UNPREDICTABLE>
    416c:	5f4b434f 	svcpl	0x004b434f
    4170:	205f5f48 	subscs	r5, pc, r8, asr #30
    4174:	5f230100 	svcpl	0x00230100
    4178:	4b434f4c 	blmi	10d7eb0 <__mprec_tinytens+0x10b3640>
    417c:	4345525f 	movtmi	r5, #21087	; 0x525f
    4180:	49535255 	ldmdbmi	r3, {r0, r2, r4, r6, r9, ip, lr}^
    4184:	545f4556 	ldrbpl	r4, [pc], #-1366	; 418c <LPC2388_Initialize+0x730>
    4188:	4f4c5f20 	svcmi	0x004c5f20
    418c:	545f4b43 	ldrbpl	r4, [pc], #-2883	; 4194 <LPC2388_Initialize+0x738>
    4190:	5f250100 	svcpl	0x00250100
    4194:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    4198:	4e495f4b 	cdpmi	15, 4, cr5, cr9, cr11, {2}
    419c:	63285449 			; <UNDEFINED> instruction: 0x63285449
    41a0:	7373616c 	cmnvc	r3, #108, 2
    41a4:	636f6c2c 	cmnvs	pc, #44, 24	; 0x2c00
    41a8:	6520296b 	strvs	r2, [r0, #-2411]!	; 0xfffff695
    41ac:	72657478 	rsbvc	r7, r5, #120, 8	; 0x78000000
    41b0:	7473206e 	ldrbtvc	r2, [r3], #-110	; 0xffffff92
    41b4:	74637572 	strbtvc	r7, [r3], #-1394	; 0xfffffa8e
    41b8:	6c5f5f20 	mrrcvs	15, 2, r5, pc, cr0	; <UNPREDICTABLE>
    41bc:	206b636f 	rsbcs	r6, fp, pc, ror #6
    41c0:	6f6c5f5f 	svcvs	0x006c5f5f
    41c4:	205f6b63 	subscs	r6, pc, r3, ror #22
    41c8:	6c202323 	stcvs	3, cr2, [r0], #-140	; 0xffffff74
    41cc:	3b6b636f 	blcc	1adcf90 <__mprec_tinytens+0x1ab8720>
    41d0:	616c6320 	cmnvs	ip, r0, lsr #6
    41d4:	5f207373 	svcpl	0x00207373
    41d8:	4b434f4c 	blmi	10d7f10 <__mprec_tinytens+0x10b36a0>
    41dc:	6c20545f 	cfstrsvs	mvf5, [r0], #-380	; 0xfffffe84
    41e0:	206b636f 	rsbcs	r6, fp, pc, ror #6
    41e4:	5f26203d 	svcpl	0x0026203d
    41e8:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    41ec:	23205f6b 			; <UNDEFINED> instruction: 0x23205f6b
    41f0:	6f6c2023 	svcvs	0x006c2023
    41f4:	01006b63 	tsteq	r0, r3, ror #22
    41f8:	4c5f5f27 	mrrcmi	15, 2, r5, pc, cr7	; <UNPREDICTABLE>
    41fc:	5f4b434f 	svcpl	0x004b434f
    4200:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    4204:	4345525f 	movtmi	r5, #21087	; 0x525f
    4208:	49535255 	ldmdbmi	r3, {r0, r2, r4, r6, r9, ip, lr}^
    420c:	63284556 			; <UNDEFINED> instruction: 0x63284556
    4210:	7373616c 	cmnvc	r3, #108, 2
    4214:	636f6c2c 	cmnvs	pc, #44, 24	; 0x2c00
    4218:	5f20296b 	svcpl	0x0020296b
    421c:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    4220:	4e495f4b 	cdpmi	15, 4, cr5, cr9, cr11, {2}
    4224:	63285449 			; <UNDEFINED> instruction: 0x63285449
    4228:	7373616c 	cmnvc	r3, #108, 2
    422c:	636f6c2c 	cmnvs	pc, #44, 24	; 0x2c00
    4230:	0100296b 	tsteq	r0, fp, ror #18
    4234:	6c5f5f2a 	mrrcvs	15, 2, r5, pc, cr10	; <UNPREDICTABLE>
    4238:	5f6b636f 	svcpl	0x006b636f
    423c:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
    4240:	636f6c28 	cmnvs	pc, #40, 24	; 0x2800
    4244:	5f20296b 	svcpl	0x0020296b
    4248:	7465725f 	strbtvc	r7, [r5], #-607	; 0xfffffda1
    424c:	65677261 	strbvs	r7, [r7, #-609]!	; 0xfffffd9f
    4250:	6f6c5f74 	svcvs	0x006c5f74
    4254:	695f6b63 	ldmdbvs	pc, {r0, r1, r5, r6, r8, r9, fp, sp, lr}^	; <UNPREDICTABLE>
    4258:	2874696e 	ldmdacs	r4!, {r1, r2, r3, r5, r6, r8, fp, sp, lr}^
    425c:	636f6c26 	cmnvs	pc, #9728	; 0x2600
    4260:	0100296b 	tsteq	r0, fp, ror #18
    4264:	6c5f5f2c 	mrrcvs	15, 2, r5, pc, cr12	; <UNPREDICTABLE>
    4268:	5f6b636f 	svcpl	0x006b636f
    426c:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
    4270:	6365725f 	cmnvs	r5, #-268435451	; 0xf0000005
    4274:	69737275 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, ip, sp, lr}^
    4278:	6c286576 	cfstr32vs	mvfx6, [r8], #-472	; 0xfffffe28
    427c:	296b636f 	stmdbcs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    4280:	725f5f20 	subsvc	r5, pc, #32, 30	; 0x80
    4284:	72617465 	rsbvc	r7, r1, #1694498816	; 0x65000000
    4288:	5f746567 	svcpl	0x00746567
    428c:	6b636f6c 	blvs	18e0044 <__mprec_tinytens+0x18bb7d4>
    4290:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
    4294:	65725f74 	ldrbvs	r5, [r2, #-3956]!	; 0xfffff08c
    4298:	73727563 	cmnvc	r2, #415236096	; 0x18c00000
    429c:	28657669 	stmdacs	r5!, {r0, r3, r5, r6, r9, sl, ip, sp, lr}^
    42a0:	636f6c26 	cmnvs	pc, #9728	; 0x2600
    42a4:	0100296b 	tsteq	r0, fp, ror #18
    42a8:	6c5f5f2e 	mrrcvs	15, 2, r5, pc, cr14	; <UNPREDICTABLE>
    42ac:	5f6b636f 	svcpl	0x006b636f
    42b0:	736f6c63 	cmnvc	pc, #25344	; 0x6300
    42b4:	6f6c2865 	svcvs	0x006c2865
    42b8:	20296b63 	eorcs	r6, r9, r3, ror #22
    42bc:	65725f5f 	ldrbvs	r5, [r2, #-3935]!	; 0xfffff0a1
    42c0:	67726174 			; <UNDEFINED> instruction: 0x67726174
    42c4:	6c5f7465 	cfldrdvs	mvd7, [pc], {101}	; 0x65
    42c8:	5f6b636f 	svcpl	0x006b636f
    42cc:	736f6c63 	cmnvc	pc, #25344	; 0x6300
    42d0:	6f6c2865 	svcvs	0x006c2865
    42d4:	00296b63 	eoreq	r6, r9, r3, ror #22
    42d8:	5f5f3001 	svcpl	0x005f3001
    42dc:	6b636f6c 	blvs	18e0094 <__mprec_tinytens+0x18bb824>
    42e0:	6f6c635f 	svcvs	0x006c635f
    42e4:	725f6573 	subsvc	r6, pc, #482344960	; 0x1cc00000
    42e8:	72756365 	rsbsvc	r6, r5, #-1811939327	; 0x94000001
    42ec:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    42f0:	636f6c28 	cmnvs	pc, #40, 24	; 0x2800
    42f4:	5f20296b 	svcpl	0x0020296b
    42f8:	7465725f 	strbtvc	r7, [r5], #-607	; 0xfffffda1
    42fc:	65677261 	strbvs	r7, [r7, #-609]!	; 0xfffffd9f
    4300:	6f6c5f74 	svcvs	0x006c5f74
    4304:	635f6b63 	cmpvs	pc, #101376	; 0x18c00
    4308:	65736f6c 	ldrbvs	r6, [r3, #-3948]!	; 0xfffff094
    430c:	6365725f 	cmnvs	r5, #-268435451	; 0xf0000005
    4310:	69737275 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, ip, sp, lr}^
    4314:	6c286576 	cfstr32vs	mvfx6, [r8], #-472	; 0xfffffe28
    4318:	296b636f 	stmdbcs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    431c:	5f320100 	svcpl	0x00320100
    4320:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    4324:	63615f6b 	cmnvs	r1, #428	; 0x1ac
    4328:	72697571 	rsbvc	r7, r9, #473956352	; 0x1c400000
    432c:	6f6c2865 	svcvs	0x006c2865
    4330:	20296b63 	eorcs	r6, r9, r3, ror #22
    4334:	65725f5f 	ldrbvs	r5, [r2, #-3935]!	; 0xfffff0a1
    4338:	67726174 			; <UNDEFINED> instruction: 0x67726174
    433c:	6c5f7465 	cfldrdvs	mvd7, [pc], {101}	; 0x65
    4340:	5f6b636f 	svcpl	0x006b636f
    4344:	75716361 	ldrbvc	r6, [r1, #-865]!	; 0xfffffc9f
    4348:	28657269 	stmdacs	r5!, {r0, r3, r5, r6, r9, ip, sp, lr}^
    434c:	6b636f6c 	blvs	18e0104 <__mprec_tinytens+0x18bb894>
    4350:	34010029 	strcc	r0, [r1], #-41	; 0xffffffd7
    4354:	6f6c5f5f 	svcvs	0x006c5f5f
    4358:	615f6b63 	cmpvs	pc, r3, ror #22
    435c:	69757163 	ldmdbvs	r5!, {r0, r1, r5, r6, r8, ip, sp, lr}^
    4360:	725f6572 	subsvc	r6, pc, #478150656	; 0x1c800000
    4364:	72756365 	rsbsvc	r6, r5, #-1811939327	; 0x94000001
    4368:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    436c:	636f6c28 	cmnvs	pc, #40, 24	; 0x2800
    4370:	5f20296b 	svcpl	0x0020296b
    4374:	7465725f 	strbtvc	r7, [r5], #-607	; 0xfffffda1
    4378:	65677261 	strbvs	r7, [r7, #-609]!	; 0xfffffd9f
    437c:	6f6c5f74 	svcvs	0x006c5f74
    4380:	615f6b63 	cmpvs	pc, r3, ror #22
    4384:	69757163 	ldmdbvs	r5!, {r0, r1, r5, r6, r8, ip, sp, lr}^
    4388:	725f6572 	subsvc	r6, pc, #478150656	; 0x1c800000
    438c:	72756365 	rsbsvc	r6, r5, #-1811939327	; 0x94000001
    4390:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    4394:	636f6c28 	cmnvs	pc, #40, 24	; 0x2800
    4398:	0100296b 	tsteq	r0, fp, ror #18
    439c:	6c5f5f36 	mrrcvs	15, 3, r5, pc, cr6	; <UNPREDICTABLE>
    43a0:	5f6b636f 	svcpl	0x006b636f
    43a4:	5f797274 	svcpl	0x00797274
    43a8:	75716361 	ldrbvc	r6, [r1, #-865]!	; 0xfffffc9f
    43ac:	28657269 	stmdacs	r5!, {r0, r3, r5, r6, r9, ip, sp, lr}^
    43b0:	6b636f6c 	blvs	18e0168 <__mprec_tinytens+0x18bb8f8>
    43b4:	5f5f2029 	svcpl	0x005f2029
    43b8:	61746572 	cmnvs	r4, r2, ror r5
    43bc:	74656772 	strbtvc	r6, [r5], #-1906	; 0xfffff88e
    43c0:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    43c4:	72745f6b 	rsbsvc	r5, r4, #428	; 0x1ac
    43c8:	63615f79 	cmnvs	r1, #484	; 0x1e4
    43cc:	72697571 	rsbvc	r7, r9, #473956352	; 0x1c400000
    43d0:	6f6c2865 	svcvs	0x006c2865
    43d4:	00296b63 	eoreq	r6, r9, r3, ror #22
    43d8:	5f5f3801 	svcpl	0x005f3801
    43dc:	6b636f6c 	blvs	18e0194 <__mprec_tinytens+0x18bb924>
    43e0:	7972745f 	ldmdbvc	r2!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}^
    43e4:	7163615f 	cmnvc	r3, pc, asr r1
    43e8:	65726975 	ldrbvs	r6, [r2, #-2421]!	; 0xfffff68b
    43ec:	6365725f 	cmnvs	r5, #-268435451	; 0xf0000005
    43f0:	69737275 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, ip, sp, lr}^
    43f4:	6c286576 	cfstr32vs	mvfx6, [r8], #-472	; 0xfffffe28
    43f8:	296b636f 	stmdbcs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    43fc:	725f5f20 	subsvc	r5, pc, #32, 30	; 0x80
    4400:	72617465 	rsbvc	r7, r1, #1694498816	; 0x65000000
    4404:	5f746567 	svcpl	0x00746567
    4408:	6b636f6c 	blvs	18e01c0 <__mprec_tinytens+0x18bb950>
    440c:	7972745f 	ldmdbvc	r2!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}^
    4410:	7163615f 	cmnvc	r3, pc, asr r1
    4414:	65726975 	ldrbvs	r6, [r2, #-2421]!	; 0xfffff68b
    4418:	6365725f 	cmnvs	r5, #-268435451	; 0xf0000005
    441c:	69737275 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, ip, sp, lr}^
    4420:	6c286576 	cfstr32vs	mvfx6, [r8], #-472	; 0xfffffe28
    4424:	296b636f 	stmdbcs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    4428:	5f3b0100 	svcpl	0x003b0100
    442c:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    4430:	65725f6b 	ldrbvs	r5, [r2, #-3947]!	; 0xfffff095
    4434:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    4438:	6f6c2865 	svcvs	0x006c2865
    443c:	20296b63 	eorcs	r6, r9, r3, ror #22
    4440:	65725f5f 	ldrbvs	r5, [r2, #-3935]!	; 0xfffff0a1
    4444:	67726174 			; <UNDEFINED> instruction: 0x67726174
    4448:	6c5f7465 	cfldrdvs	mvd7, [pc], {101}	; 0x65
    444c:	5f6b636f 	svcpl	0x006b636f
    4450:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
    4454:	28657361 	stmdacs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
    4458:	6b636f6c 	blvs	18e0210 <__mprec_tinytens+0x18bb9a0>
    445c:	3d010029 	stccc	0, cr0, [r1, #-164]	; 0xffffff5c
    4460:	6f6c5f5f 	svcvs	0x006c5f5f
    4464:	725f6b63 	subsvc	r6, pc, #101376	; 0x18c00
    4468:	61656c65 	cmnvs	r5, r5, ror #24
    446c:	725f6573 	subsvc	r6, pc, #482344960	; 0x1cc00000
    4470:	72756365 	rsbsvc	r6, r5, #-1811939327	; 0x94000001
    4474:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    4478:	636f6c28 	cmnvs	pc, #40, 24	; 0x2800
    447c:	5f20296b 	svcpl	0x0020296b
    4480:	7465725f 	strbtvc	r7, [r5], #-607	; 0xfffffda1
    4484:	65677261 	strbvs	r7, [r7, #-609]!	; 0xfffffd9f
    4488:	6f6c5f74 	svcvs	0x006c5f74
    448c:	725f6b63 	subsvc	r6, pc, #101376	; 0x18c00
    4490:	61656c65 	cmnvs	r5, r5, ror #24
    4494:	725f6573 	subsvc	r6, pc, #482344960	; 0x1cc00000
    4498:	72756365 	rsbsvc	r6, r5, #-1811939327	; 0x94000001
    449c:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    44a0:	636f6c28 	cmnvs	pc, #40, 24	; 0x2800
    44a4:	0400296b 	streq	r2, [r0], #-2411	; 0xfffff695
    44a8:	5f5f7d02 	svcpl	0x005f7d02
    44ac:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    44b0:	0100745f 	tsteq	r0, pc, asr r4
    44b4:	6e750190 	mrcvs	1, 3, r0, cr5, cr0, {4}
    44b8:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    44bc:	73206465 			; <UNDEFINED> instruction: 0x73206465
    44c0:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    44c4:	92020064 	andls	r0, r2, #100	; 0x64
    44c8:	736e7501 	cmnvc	lr, #4194304	; 0x400000
    44cc:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    44d0:	9e010064 	cdpls	0, 0, cr0, cr1, cr4, {3}
    44d4:	6e5f5f01 	cdpvs	15, 5, cr5, cr15, cr1, {0}
    44d8:	5f646565 	svcpl	0x00646565
    44dc:	746e6977 	strbtvc	r6, [lr], #-2423	; 0xfffff689
    44e0:	0020745f 	eoreq	r7, r0, pc, asr r4
    44e4:	08019f03 	stmdaeq	r1, {r0, r1, r8, r9, sl, fp, ip, pc}
    44e8:	5f01a102 	svcpl	0x0001a102
    44ec:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
    44f0:	74705f64 	ldrbtvc	r5, [r0], #-3940	; 0xfffff09c
    44f4:	66696472 			; <UNDEFINED> instruction: 0x66696472
    44f8:	00745f66 	rsbseq	r5, r4, r6, ror #30
    44fc:	5f01ee02 	svcpl	0x0001ee02
    4500:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
    4504:	69735f64 	ldmdbvs	r3!, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
    4508:	745f657a 	ldrbvc	r6, [pc], #-1402	; 4510 <LPC2388_Initialize+0xab4>
    450c:	02db0200 	sbcseq	r0, fp, #0, 4
    4510:	656e5f5f 	strbvs	r5, [lr, #-3935]!	; 0xfffff0a1
    4514:	775f6465 	ldrbvc	r6, [pc, -r5, ror #8]
    4518:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    451c:	0100745f 	tsteq	r0, pc, asr r4
    4520:	575f02e0 	ldrbpl	r0, [pc, -r0, ror #5]
    4524:	5f544e49 	svcpl	0x00544e49
    4528:	02002054 	andeq	r2, r0, #84	; 0x54
    452c:	5f5f02e7 	svcpl	0x005f02e7
    4530:	6465656e 	strbtvs	r6, [r5], #-1390	; 0xfffffa92
    4534:	6e69775f 	mcrvs	7, 3, r7, cr9, cr15, {2}
    4538:	00745f74 	rsbseq	r5, r4, r4, ror pc
    453c:	4e039102 	mvfmis	f1, f2
    4540:	004c4c55 	subeq	r4, ip, r5, asr ip
    4544:	4e039601 	cfmadd32mi	mvax0, mvfx9, mvfx3, mvfx1
    4548:	204c4c55 	subcs	r4, ip, r5, asr ip
    454c:	6f762828 	svcvs	0x00762828
    4550:	2a206469 	bcs	81d6fc <__mprec_tinytens+0x7f8e8c>
    4554:	00293029 	eoreq	r3, r9, r9, lsr #32
    4558:	5f039c02 	svcpl	0x00039c02
    455c:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
    4560:	554e5f64 	strbpl	r5, [lr, #-3940]	; 0xfffff09c
    4564:	01004c4c 	tsteq	r0, ip, asr #24
    4568:	666f03a1 	strbtvs	r0, [pc], -r1, lsr #7
    456c:	74657366 	strbtvc	r7, [r5], #-870	; 0xfffffc9a
    4570:	5428666f 	strtpl	r6, [r8], #-1647	; 0xfffff991
    4574:	2c455059 	mcrrcs	0, 5, r5, r5, cr9
    4578:	424d454d 	submi	r4, sp, #322961408	; 0x13400000
    457c:	20295245 	eorcs	r5, r9, r5, asr #4
    4580:	75625f5f 	strbvc	r5, [r2, #-3935]!	; 0xfffff0a1
    4584:	69746c69 	ldmdbvs	r4!, {r0, r3, r5, r6, sl, fp, sp, lr}^
    4588:	666f5f6e 	strbtvs	r5, [pc], -lr, ror #30
    458c:	74657366 	strbtvc	r7, [r5], #-870	; 0xfffffc9a
    4590:	2820666f 	stmdacs	r0!, {r0, r1, r2, r3, r5, r6, r9, sl, sp, lr}
    4594:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    4598:	454d202c 	strbmi	r2, [sp, #-44]	; 0xffffffd4
    459c:	5245424d 	subpl	r4, r5, #-805306364	; 0xd0000004
    45a0:	01040029 	tsteq	r4, r9, lsr #32
    45a4:	435f01b7 	cmpmi	pc, #-1073741779	; 0xc000002d
    45a8:	4b434f4c 	blmi	10d82e0 <__mprec_tinytens+0x10b3a70>
    45ac:	205f545f 	subscs	r5, pc, pc, asr r4	; <UNPREDICTABLE>
    45b0:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    45b4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    45b8:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    45bc:	ba010067 	blt	44760 <__mprec_tinytens+0x1fef0>
    45c0:	49545f01 	ldmdbmi	r4, {r0, r8, r9, sl, fp, ip, lr}^
    45c4:	545f454d 	ldrbpl	r4, [pc], #-1357	; 45cc <LPC2388_Initialize+0xb70>
    45c8:	6f6c205f 	svcvs	0x006c205f
    45cc:	0100676e 	tsteq	r0, lr, ror #14
    45d0:	435f01bd 	cmpmi	pc, #1073741871	; 0x4000002f
    45d4:	4b434f4c 	blmi	10d830c <__mprec_tinytens+0x10b3a9c>
    45d8:	545f4449 	ldrbpl	r4, [pc], #-1097	; 45e0 <LPC2388_Initialize+0xb84>
    45dc:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
    45e0:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    45e4:	6c206465 	cfstrsvs	mvf6, [r0], #-404	; 0xfffffe6c
    45e8:	00676e6f 	rsbeq	r6, r7, pc, ror #28
    45ec:	5f01c001 	svcpl	0x0001c001
    45f0:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
    45f4:	5f545f52 	svcpl	0x00545f52
    45f8:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    45fc:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    4600:	6f6c2064 	svcvs	0x006c2064
    4604:	0400676e 	streq	r6, [r0], #-1902	; 0xfffff892
    4608:	4e5f1101 	rdfmie	f1, f7, f1
    460c:	204c4c55 	subcs	r4, ip, r5, asr ip
    4610:	15010030 	strne	r0, [r1, #-48]	; 0xffffffd0
    4614:	6f4c5f5f 	svcvs	0x004c5f5f
    4618:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
    461c:	00676e6f 	rsbeq	r6, r7, pc, ror #28
    4620:	415f4801 	cmpmi	pc, r1, lsl #16
    4624:	49584554 	ldmdbmi	r8, {r2, r4, r6, r8, sl, lr}^
    4628:	49535f54 	ldmdbmi	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    462c:	3320455a 			; <UNDEFINED> instruction: 0x3320455a
    4630:	64010032 	strvs	r0, [r1], #-50	; 0xffffffce
    4634:	4554415f 	ldrbmi	r4, [r4, #-351]	; 0xfffffea1
    4638:	5f544958 	svcpl	0x00544958
    463c:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    4640:	4e5f7b20 	vnmlsmi.f64	d23, d15, d16
    4644:	2c4c4c55 	mcrrcs	12, 5, r4, ip, cr5
    4648:	202c3020 	eorcs	r3, ip, r0, lsr #32
    464c:	554e5f7b 	strbpl	r5, [lr, #-3963]	; 0xfffff085
    4650:	2c7d4c4c 	ldclcs	12, cr4, [sp], #-304	; 0xfffffed0
    4654:	5f7b7b20 	svcpl	0x007b7b20
    4658:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    465c:	7b202c7d 	blvc	80f858 <__mprec_tinytens+0x7eafe8>
    4660:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    4664:	202c7d4c 	eorcs	r7, ip, ip, asr #26
    4668:	30202c30 	eorcc	r2, r0, r0, lsr ip
    466c:	01007d7d 	tsteq	r0, sp, ror sp
    4670:	45525f6a 	ldrbmi	r5, [r2, #-3946]	; 0xfffff096
    4674:	5f544e45 	svcpl	0x00544e45
    4678:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    467c:	4554415f 	ldrbmi	r4, [r4, #-351]	; 0xfffffea1
    4680:	20544958 	subscs	r4, r4, r8, asr r9
    4684:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    4688:	5f202c4c 	svcpl	0x00202c4c
    468c:	58455441 	stmdapl	r5, {r0, r6, sl, ip, lr}^
    4690:	495f5449 	ldmdbmi	pc, {r0, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    4694:	2c54494e 	mrrccs	9, 4, r4, r4, cr14	; <UNPREDICTABLE>
    4698:	01b20100 			; <UNDEFINED> instruction: 0x01b20100
    469c:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    46a0:	535f544e 	cmppl	pc, #1308622848	; 0x4e000000
    46a4:	4c4c414d 	stfmie	f4, [ip], {77}	; 0x4d
    46a8:	4548435f 	strbmi	r4, [r8, #-863]	; 0xfffffca1
    46ac:	495f4b43 	ldmdbmi	pc, {r0, r1, r6, r8, r9, fp, lr}^	; <UNPREDICTABLE>
    46b0:	2854494e 	ldmdacs	r4, {r1, r2, r3, r6, r8, fp, lr}^
    46b4:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    46b8:	b8010020 	stmdalt	r1, {r5}
    46bc:	41525f02 	cmpmi	r2, r2, lsl #30
    46c0:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
    46c4:	4545535f 	strbmi	r5, [r5, #-863]	; 0xfffffca1
    46c8:	20305f44 	eorscs	r5, r0, r4, asr #30
    46cc:	33783028 	cmncc	r8, #40	; 0x28
    46d0:	29653033 	stmdbcs	r5!, {r0, r1, r4, r5, ip, sp}^
    46d4:	02b90100 	adcseq	r0, r9, #0, 2
    46d8:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    46dc:	5f383444 	svcpl	0x00383444
    46e0:	44454553 	strbmi	r4, [r5], #-1363	; 0xfffffaad
    46e4:	2820315f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, ip, sp}
    46e8:	62617830 	rsbvs	r7, r1, #48, 16	; 0x300000
    46ec:	00296463 	eoreq	r6, r9, r3, ror #8
    46f0:	5f02ba01 	svcpl	0x0002ba01
    46f4:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    46f8:	535f3834 	cmppl	pc, #52, 16	; 0x340000
    46fc:	5f444545 	svcpl	0x00444545
    4700:	30282032 	eorcc	r2, r8, r2, lsr r0
    4704:	33323178 	teqcc	r2, #120, 2
    4708:	01002934 	tsteq	r0, r4, lsr r9
    470c:	525f02bb 	subspl	r0, pc, #-1342177269	; 0xb000000b
    4710:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
    4714:	554d5f38 	strbpl	r5, [sp, #-3896]	; 0xfffff0c8
    4718:	305f544c 	subscc	r5, pc, ip, asr #8
    471c:	78302820 	ldmdavc	r0!, {r5, fp, sp}
    4720:	64363665 	ldrtvs	r3, [r6], #-1637	; 0xfffff99b
    4724:	bc010029 	stclt	0, cr0, [r1], {41}	; 0x29
    4728:	41525f02 	cmpmi	r2, r2, lsl #30
    472c:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
    4730:	4c554d5f 	mrrcmi	13, 5, r4, r5, cr15
    4734:	20315f54 	eorscs	r5, r1, r4, asr pc
    4738:	64783028 	ldrbtvs	r3, [r8], #-40	; 0xffffffd8
    473c:	29636565 	stmdbcs	r3!, {r0, r2, r5, r6, r8, sl, sp, lr}^
    4740:	02bd0100 	adcseq	r0, sp, #0, 2
    4744:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    4748:	5f383444 	svcpl	0x00383444
    474c:	544c554d 	strbpl	r5, [ip], #-1357	; 0xfffffab3
    4750:	2820325f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r9, ip, sp}
    4754:	30307830 	eorscc	r7, r0, r0, lsr r8
    4758:	00293530 	eoreq	r3, r9, r0, lsr r5
    475c:	5f02be01 	svcpl	0x0002be01
    4760:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    4764:	415f3834 	cmpmi	pc, r4, lsr r8	; <UNPREDICTABLE>
    4768:	28204444 	stmdacs	r0!, {r2, r6, sl, lr}
    476c:	30307830 	eorscc	r7, r0, r0, lsr r8
    4770:	00296230 	eoreq	r6, r9, r0, lsr r2
    4774:	5f02ca01 	svcpl	0x0002ca01
    4778:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    477c:	4d455f54 	stclmi	15, cr5, [r5, #-336]	; 0xfffffeb0
    4780:	45475245 	strbmi	r5, [r7, #-581]	; 0xfffffdbb
    4784:	5f59434e 	svcpl	0x0059434e
    4788:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    478c:	00353220 	eorseq	r3, r5, r0, lsr #4
    4790:	5f02cb01 	svcpl	0x0002cb01
    4794:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    4798:	53415f54 	movtpl	r5, #8020	; 0x1f54
    479c:	4d495443 	cfstrdmi	mvd5, [r9, #-268]	; 0xfffffef4
    47a0:	49535f45 	ldmdbmi	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    47a4:	3220455a 	eorcc	r4, r0, #377487360	; 0x16800000
    47a8:	cc010036 	stcgt	0, cr0, [r1], {54}	; 0x36
    47ac:	45525f02 	ldrbmi	r5, [r2, #-3842]	; 0xfffff0fe
    47b0:	5f544e45 	svcpl	0x00544e45
    47b4:	4e474953 			; <UNDEFINED> instruction: 0x4e474953
    47b8:	535f4c41 	cmppl	pc, #16640	; 0x4100
    47bc:	20455a49 	subcs	r5, r5, r9, asr #20
    47c0:	01003432 	tsteq	r0, r2, lsr r4
    47c4:	4e5f04f4 	mrcmi	4, 2, r0, cr15, cr4, {7}
    47c8:	53494c5f 	movtpl	r4, #40031	; 0x9c5f
    47cc:	33205354 			; <UNDEFINED> instruction: 0x33205354
    47d0:	8a010030 	bhi	44898 <__mprec_tinytens+0x20028>
    47d4:	45525f05 	ldrbmi	r5, [r2, #-3845]	; 0xfffff0fb
    47d8:	5f544e45 	svcpl	0x00544e45
    47dc:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    47e0:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    47e4:	207b2029 	rsbscs	r2, fp, r9, lsr #32
    47e8:	26202c30 			; <UNDEFINED> instruction: 0x26202c30
    47ec:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    47f0:	5f5f2e29 	svcpl	0x005f2e29
    47f4:	305b6673 	subscc	r6, fp, r3, ror r6
    47f8:	26202c5d 			; <UNDEFINED> instruction: 0x26202c5d
    47fc:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    4800:	5f5f2e29 	svcpl	0x005f2e29
    4804:	315b6673 	cmpcc	fp, r3, ror r6
    4808:	26202c5d 			; <UNDEFINED> instruction: 0x26202c5d
    480c:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    4810:	5f5f2e29 	svcpl	0x005f2e29
    4814:	325b6673 	subscc	r6, fp, #120586240	; 0x7300000
    4818:	30202c5d 	eorcc	r2, r0, sp, asr ip
    481c:	2222202c 	eorcs	r2, r2, #44	; 0x2c
    4820:	2c30202c 	ldccs	0, cr2, [r0], #-176	; 0xffffff50
    4824:	554e5f20 	strbpl	r5, [lr, #-3872]	; 0xfffff0e0
    4828:	202c4c4c 	eorcs	r4, ip, ip, asr #24
    482c:	5f202c30 	svcpl	0x00202c30
    4830:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    4834:	4e5f202c 	cdpmi	0, 5, cr2, cr15, cr12, {1}
    4838:	2c4c4c55 	mcrrcs	12, 5, r4, ip, cr5
    483c:	202c3020 	eorcs	r3, ip, r0, lsr #32
    4840:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    4844:	5f202c4c 	svcpl	0x00202c4c
    4848:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    484c:	2c30202c 	ldccs	0, cr2, [r0], #-176	; 0xffffff50
    4850:	554e5f20 	strbpl	r5, [lr, #-3872]	; 0xfffff0e0
    4854:	202c4c4c 	eorcs	r4, ip, ip, asr #24
    4858:	207b207b 	rsbscs	r2, fp, fp, ror r0
    485c:	5f202c30 	svcpl	0x00202c30
    4860:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    4864:	2222202c 	eorcs	r2, r2, #44	; 0x2c
    4868:	307b202c 	rsbscc	r2, fp, ip, lsr #32
    486c:	2c30202c 	ldccs	0, cr2, [r0], #-176	; 0xffffff50
    4870:	202c3020 	eorcs	r3, ip, r0, lsr #32
    4874:	30202c30 	eorcc	r2, r0, r0, lsr ip
    4878:	2c30202c 	ldccs	0, cr2, [r0], #-176	; 0xffffff50
    487c:	202c3020 	eorcs	r3, ip, r0, lsr #32
    4880:	30202c30 	eorcc	r2, r0, r0, lsr ip
    4884:	30202c7d 	eorcc	r2, r0, sp, ror ip
    4888:	2c31202c 	ldccs	0, cr2, [r1], #-176	; 0xffffff50
    488c:	7b207b20 	blvc	823514 <__mprec_tinytens+0x7feca4>
    4890:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    4894:	5f383444 	svcpl	0x00383444
    4898:	44454553 	strbmi	r4, [r5], #-1363	; 0xfffffaad
    489c:	202c305f 	eorcs	r3, ip, pc, asr r0
    48a0:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    48a4:	5f383444 	svcpl	0x00383444
    48a8:	44454553 	strbmi	r4, [r5], #-1363	; 0xfffffaad
    48ac:	202c315f 	eorcs	r3, ip, pc, asr r1
    48b0:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    48b4:	5f383444 	svcpl	0x00383444
    48b8:	44454553 	strbmi	r4, [r5], #-1363	; 0xfffffaad
    48bc:	2c7d325f 	lfmcs	f3, 2, [sp], #-380	; 0xfffffe84
    48c0:	525f7b20 	subspl	r7, pc, #32, 22	; 0x8000
    48c4:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
    48c8:	554d5f38 	strbpl	r5, [sp, #-3896]	; 0xfffff0c8
    48cc:	305f544c 	subscc	r5, pc, ip, asr #8
    48d0:	525f202c 	subspl	r2, pc, #44	; 0x2c
    48d4:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
    48d8:	554d5f38 	strbpl	r5, [sp, #-3896]	; 0xfffff0c8
    48dc:	315f544c 	cmpcc	pc, ip, asr #8
    48e0:	525f202c 	subspl	r2, pc, #44	; 0x2c
    48e4:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
    48e8:	554d5f38 	strbpl	r5, [sp, #-3896]	; 0xfffff0c8
    48ec:	325f544c 	subscc	r5, pc, #76, 8	; 0x4c000000
    48f0:	5f202c7d 	svcpl	0x00202c7d
    48f4:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    48f8:	415f3834 	cmpmi	pc, r4, lsr r8	; <UNPREDICTABLE>
    48fc:	7d204444 	cfstrsvc	mvf4, [r0, #-272]!	; 0xfffffef0
    4900:	307b202c 	rsbscc	r2, fp, ip, lsr #32
    4904:	307b202c 	rsbscc	r2, fp, ip, lsr #32
    4908:	202c7d7d 	eorcs	r7, ip, sp, ror sp
    490c:	202c307b 	eorcs	r3, ip, fp, ror r0
    4910:	7d7d307b 	ldclvc	0, cr3, [sp, #-492]!	; 0xfffffe14
    4914:	307b202c 	rsbscc	r2, fp, ip, lsr #32
    4918:	307b202c 	rsbscc	r2, fp, ip, lsr #32
    491c:	202c7d7d 	eorcs	r7, ip, sp, ror sp
    4920:	202c2222 	eorcs	r2, ip, r2, lsr #4
    4924:	202c2222 	eorcs	r2, ip, r2, lsr #4
    4928:	7b202c30 	blvc	80f9f0 <__mprec_tinytens+0x7eb180>
    492c:	7b202c30 	blvc	80f9f4 <__mprec_tinytens+0x7eb184>
    4930:	2c7d7d30 	ldclcs	13, cr7, [sp], #-192	; 0xffffff40
    4934:	2c307b20 			; <UNDEFINED> instruction: 0x2c307b20
    4938:	7d307b20 	vldmdbvc	r0!, {d7-d22}
    493c:	7b202c7d 	blvc	80fb38 <__mprec_tinytens+0x7eb2c8>
    4940:	7b202c30 	blvc	80fa08 <__mprec_tinytens+0x7eb198>
    4944:	2c7d7d30 	ldclcs	13, cr7, [sp], #-192	; 0xffffff40
    4948:	2c307b20 			; <UNDEFINED> instruction: 0x2c307b20
    494c:	7d307b20 	vldmdbvc	r0!, {d7-d22}
    4950:	7b202c7d 	blvc	80fb4c <__mprec_tinytens+0x7eb2dc>
    4954:	7b202c30 	blvc	80fa1c <__mprec_tinytens+0x7eb1ac>
    4958:	207d7d30 	rsbscs	r7, sp, r0, lsr sp
    495c:	2c7d207d 	ldclcs	0, cr2, [sp], #-500	; 0xfffffe0c
    4960:	45525f20 	ldrbmi	r5, [r2, #-3872]	; 0xfffff0e0
    4964:	5f544e45 	svcpl	0x00544e45
    4968:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    496c:	4554415f 	ldrbmi	r4, [r4, #-351]	; 0xfffffea1
    4970:	20544958 	subscs	r4, r4, r8, asr r9
    4974:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    4978:	7b202c4c 	blvc	80fab0 <__mprec_tinytens+0x7eb240>
    497c:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    4980:	30202c4c 	eorcc	r2, r0, ip, asr #24
    4984:	4e5f202c 	cdpmi	0, 5, cr2, cr15, cr12, {1}
    4988:	7d4c4c55 	stclvc	12, cr4, [ip, #-340]	; 0xfffffeac
    498c:	01007d20 	tsteq	r0, r0, lsr #26
    4990:	525f05ba 	subspl	r0, pc, #780140544	; 0x2e800000
    4994:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    4998:	494e495f 	stmdbmi	lr, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    499c:	54505f54 	ldrbpl	r5, [r0], #-3924	; 0xfffff0ac
    49a0:	455a5f52 	ldrbmi	r5, [sl, #-3922]	; 0xfffff0ae
    49a4:	44454f52 	strbmi	r4, [r5], #-3922	; 0xfffff0ae
    49a8:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    49ac:	207b2029 	rsbscs	r2, fp, r9, lsr #32
    49b0:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    49b4:	5f3e2d29 	svcpl	0x003e2d29
    49b8:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
    49bc:	203d206e 	eorscs	r2, sp, lr, rrx
    49c0:	61762826 	cmnvs	r6, r6, lsr #16
    49c4:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    49c8:	66735f5f 	uhsaxvs	r5, r3, pc	; <UNPREDICTABLE>
    49cc:	3b5d305b 	blcc	1750b40 <__mprec_tinytens+0x172c2d0>
    49d0:	61762820 	cmnvs	r6, r0, lsr #16
    49d4:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    49d8:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
    49dc:	2074756f 	rsbscs	r7, r4, pc, ror #10
    49e0:	2826203d 	stmdacs	r6!, {r0, r2, r3, r4, r5, sp}
    49e4:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    49e8:	5f5f3e2d 	svcpl	0x005f3e2d
    49ec:	315b6673 	cmpcc	fp, r3, ror r6
    49f0:	28203b5d 	stmdacs	r0!, {r0, r2, r3, r4, r6, r8, r9, fp, ip, sp}
    49f4:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    49f8:	735f3e2d 	cmpvc	pc, #720	; 0x2d0
    49fc:	72656474 	rsbvc	r6, r5, #116, 8	; 0x74000000
    4a00:	203d2072 	eorscs	r2, sp, r2, ror r0
    4a04:	61762826 	cmnvs	r6, r6, lsr #16
    4a08:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    4a0c:	66735f5f 	uhsaxvs	r5, r3, pc	; <UNPREDICTABLE>
    4a10:	3b5d325b 	blcc	1751384 <__mprec_tinytens+0x172cb14>
    4a14:	61762820 	cmnvs	r6, r0, lsr #16
    4a18:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    4a1c:	77656e5f 			; <UNDEFINED> instruction: 0x77656e5f
    4a20:	65725f2e 	ldrbvs	r5, [r2, #-3886]!	; 0xfffff0d2
    4a24:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
    4a28:	6e61725f 	mcrvs	2, 3, r7, cr1, cr15, {2}
    4a2c:	656e5f64 	strbvs	r5, [lr, #-3940]!	; 0xfffff09c
    4a30:	3d207478 	cfstrscc	mvf7, [r0, #-480]!	; 0xfffffe20
    4a34:	203b3120 	eorscs	r3, fp, r0, lsr #2
    4a38:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    4a3c:	5f3e2d29 	svcpl	0x003e2d29
    4a40:	2e77656e 	cdpcs	5, 7, cr6, cr7, cr14, {3}
    4a44:	6565725f 	strbvs	r7, [r5, #-607]!	; 0xfffffda1
    4a48:	5f2e746e 	svcpl	0x002e746e
    4a4c:	2e383472 	mrccs	4, 1, r3, cr8, cr2, {3}
    4a50:	6565735f 	strbvs	r7, [r5, #-863]!	; 0xfffffca1
    4a54:	5d305b64 	vldmdbpl	r0!, {d5-<overflow reg d54>}
    4a58:	5f203d20 	svcpl	0x00203d20
    4a5c:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    4a60:	535f3834 	cmppl	pc, #52, 16	; 0x340000
    4a64:	5f444545 	svcpl	0x00444545
    4a68:	28203b30 	stmdacs	r0!, {r4, r5, r8, r9, fp, ip, sp}
    4a6c:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    4a70:	6e5f3e2d 	cdpvs	14, 5, cr3, cr15, cr13, {1}
    4a74:	5f2e7765 	svcpl	0x002e7765
    4a78:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
    4a7c:	725f2e74 	subsvc	r2, pc, #116, 28	; 0x740
    4a80:	5f2e3834 	svcpl	0x002e3834
    4a84:	64656573 	strbtvs	r6, [r5], #-1395	; 0xfffffa8d
    4a88:	205d315b 	subscs	r3, sp, fp, asr r1
    4a8c:	525f203d 	subspl	r2, pc, #61	; 0x3d
    4a90:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
    4a94:	45535f38 	ldrbmi	r5, [r3, #-3896]	; 0xfffff0c8
    4a98:	315f4445 	cmpcc	pc, r5, asr #8
    4a9c:	7628203b 			; <UNDEFINED> instruction: 0x7628203b
    4aa0:	2d297261 	sfmcs	f7, 4, [r9, #-388]!	; 0xfffffe7c
    4aa4:	656e5f3e 	strbvs	r5, [lr, #-3902]!	; 0xfffff0c2
    4aa8:	725f2e77 	subsvc	r2, pc, #1904	; 0x770
    4aac:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    4ab0:	34725f2e 	ldrbtcc	r5, [r2], #-3886	; 0xfffff0d2
    4ab4:	735f2e38 	cmpvc	pc, #56, 28	; 0x380
    4ab8:	5b646565 	blpl	191e054 <__mprec_tinytens+0x18f97e4>
    4abc:	3d205d32 	stccc	13, cr5, [r0, #-200]!	; 0xffffff38
    4ac0:	41525f20 	cmpmi	r2, r0, lsr #30
    4ac4:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
    4ac8:	4545535f 	strbmi	r5, [r5, #-863]	; 0xfffffca1
    4acc:	3b325f44 	blcc	c9c7e4 <__mprec_tinytens+0xc77f74>
    4ad0:	61762820 	cmnvs	r6, r0, lsr #16
    4ad4:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    4ad8:	77656e5f 			; <UNDEFINED> instruction: 0x77656e5f
    4adc:	65725f2e 	ldrbvs	r5, [r2, #-3886]!	; 0xfffff0d2
    4ae0:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
    4ae4:	3834725f 	ldmdacc	r4!, {r0, r1, r2, r3, r4, r6, r9, ip, sp, lr}
    4ae8:	756d5f2e 	strbvc	r5, [sp, #-3886]!	; 0xfffff0d2
    4aec:	305b746c 	subscc	r7, fp, ip, ror #8
    4af0:	203d205d 	eorscs	r2, sp, sp, asr r0
    4af4:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    4af8:	5f383444 	svcpl	0x00383444
    4afc:	544c554d 	strbpl	r5, [ip], #-1357	; 0xfffffab3
    4b00:	203b305f 	eorscs	r3, fp, pc, asr r0
    4b04:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    4b08:	5f3e2d29 	svcpl	0x003e2d29
    4b0c:	2e77656e 	cdpcs	5, 7, cr6, cr7, cr14, {3}
    4b10:	6565725f 	strbvs	r7, [r5, #-607]!	; 0xfffffda1
    4b14:	5f2e746e 	svcpl	0x002e746e
    4b18:	2e383472 	mrccs	4, 1, r3, cr8, cr2, {3}
    4b1c:	6c756d5f 	ldclvs	13, cr6, [r5], #-380	; 0xfffffe84
    4b20:	5d315b74 	vldmdbpl	r1!, {d5-<overflow reg d62>}
    4b24:	5f203d20 	svcpl	0x00203d20
    4b28:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    4b2c:	4d5f3834 	ldclmi	8, cr3, [pc, #-208]	; 4a64 <LPC2388_Initialize+0x1008>
    4b30:	5f544c55 	svcpl	0x00544c55
    4b34:	28203b31 	stmdacs	r0!, {r0, r4, r5, r8, r9, fp, ip, sp}
    4b38:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    4b3c:	6e5f3e2d 	cdpvs	14, 5, cr3, cr15, cr13, {1}
    4b40:	5f2e7765 	svcpl	0x002e7765
    4b44:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
    4b48:	725f2e74 	subsvc	r2, pc, #116, 28	; 0x740
    4b4c:	5f2e3834 	svcpl	0x002e3834
    4b50:	746c756d 	strbtvc	r7, [ip], #-1389	; 0xfffffa93
    4b54:	205d325b 	subscs	r3, sp, fp, asr r2
    4b58:	525f203d 	subspl	r2, pc, #61	; 0x3d
    4b5c:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
    4b60:	554d5f38 	strbpl	r5, [sp, #-3896]	; 0xfffff0c8
    4b64:	325f544c 	subscc	r5, pc, #76, 8	; 0x4c000000
    4b68:	7628203b 			; <UNDEFINED> instruction: 0x7628203b
    4b6c:	2d297261 	sfmcs	f7, 4, [r9, #-388]!	; 0xfffffe7c
    4b70:	656e5f3e 	strbvs	r5, [lr, #-3902]!	; 0xfffff0c2
    4b74:	725f2e77 	subsvc	r2, pc, #1904	; 0x770
    4b78:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    4b7c:	34725f2e 	ldrbtcc	r5, [r2], #-3886	; 0xfffff0d2
    4b80:	615f2e38 	cmpvs	pc, r8, lsr lr	; <UNPREDICTABLE>
    4b84:	3d206464 	cfstrscc	mvf6, [r0, #-400]!	; 0xfffffe70
    4b88:	41525f20 	cmpmi	r2, r0, lsr #30
    4b8c:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
    4b90:	4444415f 	strbmi	r4, [r4], #-351	; 0xfffffea1
    4b94:	007d203b 	rsbseq	r2, sp, fp, lsr r0
    4b98:	5f05c801 	svcpl	0x0005c801
    4b9c:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    4ba0:	48435f54 	stmdami	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    4ba4:	5f4b4345 	svcpl	0x004b4345
    4ba8:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    4bac:	70283834 	eorvc	r3, r8, r4, lsr r8
    4bb0:	20297274 	eorcs	r7, r9, r4, ror r2
    4bb4:	05c90100 	strbeq	r0, [r9, #256]	; 0x100
    4bb8:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    4bbc:	435f544e 	cmpmi	pc, #1308622848	; 0x4e000000
    4bc0:	4b434548 	blmi	10d60e8 <__mprec_tinytens+0x10b1878>
    4bc4:	28504d5f 	ldmdacs	r0, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    4bc8:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    4bcc:	ca010020 	bgt	44c54 <__mprec_tinytens+0x203e4>
    4bd0:	45525f05 	ldrbmi	r5, [r2, #-3845]	; 0xfffff0fb
    4bd4:	5f544e45 	svcpl	0x00544e45
    4bd8:	43454843 	movtmi	r4, #22595	; 0x5843
    4bdc:	4d545f4b 	ldclmi	15, cr5, [r4, #-300]	; 0xfffffed4
    4be0:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    4be4:	01002029 	tsteq	r0, r9, lsr #32
    4be8:	525f05cb 	subspl	r0, pc, #851443712	; 0x32c00000
    4bec:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    4bf0:	4548435f 	strbmi	r4, [r8, #-863]	; 0xfffffca1
    4bf4:	415f4b43 	cmpmi	pc, r3, asr #22
    4bf8:	49544353 	ldmdbmi	r4, {r0, r1, r4, r6, r8, r9, lr}^
    4bfc:	425f454d 	subsmi	r4, pc, #322961408	; 0x13400000
    4c00:	70284655 	eorvc	r4, r8, r5, asr r6
    4c04:	20297274 	eorcs	r7, r9, r4, ror r2
    4c08:	05cc0100 	strbeq	r0, [ip, #256]	; 0x100
    4c0c:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    4c10:	435f544e 	cmpmi	pc, #1308622848	; 0x4e000000
    4c14:	4b434548 	blmi	10d613c <__mprec_tinytens+0x10b18cc>
    4c18:	454d455f 	strbmi	r4, [sp, #-1375]	; 0xfffffaa1
    4c1c:	4e454752 	mcrmi	7, 2, r4, cr5, cr2, {2}
    4c20:	70285943 	eorvc	r5, r8, r3, asr #18
    4c24:	20297274 	eorcs	r7, r9, r4, ror r2
    4c28:	05cd0100 	strbeq	r0, [sp, #256]	; 0x100
    4c2c:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    4c30:	435f544e 	cmpmi	pc, #1308622848	; 0x4e000000
    4c34:	4b434548 	blmi	10d615c <__mprec_tinytens+0x10b18ec>
    4c38:	53494d5f 	movtpl	r4, #40287	; 0x9d5f
    4c3c:	74702843 	ldrbtvc	r2, [r0], #-2115	; 0xfffff7bd
    4c40:	00202972 	eoreq	r2, r0, r2, ror r9
    4c44:	5f05ce01 	svcpl	0x0005ce01
    4c48:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    4c4c:	48435f54 	stmdami	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    4c50:	5f4b4345 	svcpl	0x004b4345
    4c54:	4e474953 			; <UNDEFINED> instruction: 0x4e474953
    4c58:	425f4c41 	subsmi	r4, pc, #16640	; 0x4100
    4c5c:	70284655 	eorvc	r4, r8, r5, asr r6
    4c60:	20297274 	eorcs	r7, r9, r4, ror r2
    4c64:	05d00100 	ldrbeq	r0, [r0, #256]	; 0x100
    4c68:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    4c6c:	535f544e 	cmppl	pc, #1308622848	; 0x4e000000
    4c70:	474e4749 	strbmi	r4, [lr, -r9, asr #14]
    4c74:	70284d41 	eorvc	r4, r8, r1, asr #26
    4c78:	20297274 	eorcs	r7, r9, r4, ror r2
    4c7c:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    4c80:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    4c84:	77656e5f 			; <UNDEFINED> instruction: 0x77656e5f
    4c88:	65725f2e 	ldrbvs	r5, [r2, #-3886]!	; 0xfffff0d2
    4c8c:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
    4c90:	6d61675f 	stclvs	7, cr6, [r1, #-380]!	; 0xfffffe84
    4c94:	735f616d 	cmpvc	pc, #1073741851	; 0x4000001b
    4c98:	676e6769 	strbvs	r6, [lr, -r9, ror #14]!
    4c9c:	00296d61 	eoreq	r6, r9, r1, ror #26
    4ca0:	5f05d101 	svcpl	0x0005d101
    4ca4:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    4ca8:	41525f54 	cmpmi	r2, r4, asr pc
    4cac:	4e5f444e 	cdpmi	4, 5, cr4, cr15, cr14, {2}
    4cb0:	28545845 	ldmdacs	r4, {r0, r2, r6, fp, ip, lr}^
    4cb4:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    4cb8:	70282820 	eorvc	r2, r8, r0, lsr #16
    4cbc:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    4cc0:	656e5f3e 	strbvs	r5, [lr, #-3902]!	; 0xfffff0c2
    4cc4:	725f2e77 	subsvc	r2, pc, #1904	; 0x770
    4cc8:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    4ccc:	61725f2e 	cmnvs	r2, lr, lsr #30
    4cd0:	6e5f646e 	cdpvs	4, 5, cr6, cr15, cr14, {3}
    4cd4:	29747865 	ldmdbcs	r4!, {r0, r2, r5, r6, fp, ip, sp, lr}^
    4cd8:	05d20100 	ldrbeq	r0, [r2, #256]	; 0x100
    4cdc:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    4ce0:	525f544e 	subspl	r5, pc, #1308622848	; 0x4e000000
    4ce4:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
    4ce8:	45535f38 	ldrbmi	r5, [r3, #-3896]	; 0xfffff0c8
    4cec:	70284445 	eorvc	r4, r8, r5, asr #8
    4cf0:	20297274 	eorcs	r7, r9, r4, ror r2
    4cf4:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    4cf8:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    4cfc:	77656e5f 			; <UNDEFINED> instruction: 0x77656e5f
    4d00:	65725f2e 	ldrbvs	r5, [r2, #-3886]!	; 0xfffff0d2
    4d04:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
    4d08:	3834725f 	ldmdacc	r4!, {r0, r1, r2, r3, r4, r6, r9, ip, sp, lr}
    4d0c:	65735f2e 	ldrbvs	r5, [r3, #-3886]!	; 0xfffff0d2
    4d10:	00296465 	eoreq	r6, r9, r5, ror #8
    4d14:	5f05d301 	svcpl	0x0005d301
    4d18:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    4d1c:	41525f54 	cmpmi	r2, r4, asr pc
    4d20:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
    4d24:	4c554d5f 	mrrcmi	13, 5, r4, r5, cr15
    4d28:	74702854 	ldrbtvc	r2, [r0], #-2132	; 0xfffff7ac
    4d2c:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    4d30:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    4d34:	5f3e2d29 	svcpl	0x003e2d29
    4d38:	2e77656e 	cdpcs	5, 7, cr6, cr7, cr14, {3}
    4d3c:	6565725f 	strbvs	r7, [r5, #-607]!	; 0xfffffda1
    4d40:	5f2e746e 	svcpl	0x002e746e
    4d44:	2e383472 	mrccs	4, 1, r3, cr8, cr2, {3}
    4d48:	6c756d5f 	ldclvs	13, cr6, [r5], #-380	; 0xfffffe84
    4d4c:	01002974 	tsteq	r0, r4, ror r9
    4d50:	525f05d4 	subspl	r0, pc, #212, 10	; 0x35000000
    4d54:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    4d58:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    4d5c:	5f383444 	svcpl	0x00383444
    4d60:	28444441 	stmdacs	r4, {r0, r6, sl, lr}^
    4d64:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    4d68:	70282820 	eorvc	r2, r8, r0, lsr #16
    4d6c:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    4d70:	656e5f3e 	strbvs	r5, [lr, #-3902]!	; 0xfffff0c2
    4d74:	725f2e77 	subsvc	r2, pc, #1904	; 0x770
    4d78:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    4d7c:	34725f2e 	ldrbtcc	r5, [r2], #-3886	; 0xfffff0d2
    4d80:	615f2e38 	cmpvs	pc, r8, lsr lr	; <UNPREDICTABLE>
    4d84:	00296464 	eoreq	r6, r9, r4, ror #8
    4d88:	5f05d501 	svcpl	0x0005d501
    4d8c:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    4d90:	504d5f54 	subpl	r5, sp, r4, asr pc
    4d94:	5345525f 	movtpl	r5, #21087	; 0x525f
    4d98:	28544c55 	ldmdacs	r4, {r0, r2, r4, r6, sl, fp, lr}^
    4d9c:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    4da0:	70282820 	eorvc	r2, r8, r0, lsr #16
    4da4:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    4da8:	65725f3e 	ldrbvs	r5, [r2, #-3902]!	; 0xfffff0c2
    4dac:	746c7573 	strbtvc	r7, [ip], #-1395	; 0xfffffa8d
    4db0:	d6010029 	strle	r0, [r1], -r9, lsr #32
    4db4:	45525f05 	ldrbmi	r5, [r2, #-3845]	; 0xfffff0fb
    4db8:	5f544e45 	svcpl	0x00544e45
    4dbc:	525f504d 	subspl	r5, pc, #77	; 0x4d
    4dc0:	4c555345 	mrrcmi	3, 4, r5, r5, cr5	; <UNPREDICTABLE>
    4dc4:	284b5f54 	stmdacs	fp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    4dc8:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    4dcc:	70282820 	eorvc	r2, r8, r0, lsr #16
    4dd0:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    4dd4:	65725f3e 	ldrbvs	r5, [r2, #-3902]!	; 0xfffff0c2
    4dd8:	746c7573 	strbtvc	r7, [ip], #-1395	; 0xfffffa8d
    4ddc:	00296b5f 	eoreq	r6, r9, pc, asr fp
    4de0:	5f05d701 	svcpl	0x0005d701
    4de4:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    4de8:	504d5f54 	subpl	r5, sp, r4, asr pc
    4dec:	5335505f 	teqpl	r5, #95	; 0x5f
    4df0:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    4df4:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    4df8:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    4dfc:	705f3e2d 	subsvc	r3, pc, sp, lsr #28
    4e00:	00297335 	eoreq	r7, r9, r5, lsr r3
    4e04:	5f05d801 	svcpl	0x0005d801
    4e08:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    4e0c:	504d5f54 	subpl	r5, sp, r4, asr pc
    4e10:	4552465f 	ldrbmi	r4, [r2, #-1631]	; 0xfffff9a1
    4e14:	53494c45 	movtpl	r4, #40005	; 0x9c45
    4e18:	74702854 	ldrbtvc	r2, [r0], #-2132	; 0xfffff7ac
    4e1c:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    4e20:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    4e24:	5f3e2d29 	svcpl	0x003e2d29
    4e28:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
    4e2c:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0xfffff694
    4e30:	d9010029 	stmdble	r1, {r0, r3, r5}
    4e34:	45525f05 	ldrbmi	r5, [r2, #-3845]	; 0xfffff0fb
    4e38:	5f544e45 	svcpl	0x00544e45
    4e3c:	54435341 	strbpl	r5, [r3], #-833	; 0xfffffcbf
    4e40:	5f454d49 	svcpl	0x00454d49
    4e44:	28465542 	stmdacs	r6, {r1, r6, r8, sl, ip, lr}^
    4e48:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    4e4c:	70282820 	eorvc	r2, r8, r0, lsr #16
    4e50:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    4e54:	656e5f3e 	strbvs	r5, [lr, #-3902]!	; 0xfffff0c2
    4e58:	725f2e77 	subsvc	r2, pc, #1904	; 0x770
    4e5c:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    4e60:	73615f2e 	cmnvc	r1, #46, 30	; 0xb8
    4e64:	6d697463 	cfstrdvs	mvd7, [r9, #-396]!	; 0xfffffe74
    4e68:	75625f65 	strbvc	r5, [r2, #-3941]!	; 0xfffff09b
    4e6c:	01002966 	tsteq	r0, r6, ror #18
    4e70:	525f05da 	subspl	r0, pc, #914358272	; 0x36800000
    4e74:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    4e78:	284d545f 	stmdacs	sp, {r0, r1, r2, r3, r4, r6, sl, ip, lr}^
    4e7c:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    4e80:	28262820 	stmdacs	r6!, {r5, fp, sp}
    4e84:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    4e88:	6e5f3e2d 	cdpvs	14, 5, cr3, cr15, cr13, {1}
    4e8c:	5f2e7765 	svcpl	0x002e7765
    4e90:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
    4e94:	6c5f2e74 	mrrcvs	14, 7, r2, pc, cr4	; <UNPREDICTABLE>
    4e98:	6c61636f 	stclvs	3, cr6, [r1], #-444	; 0xfffffe44
    4e9c:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
    4ea0:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
    4ea4:	db010029 	blle	44f50 <__mprec_tinytens+0x206e0>
    4ea8:	45525f05 	ldrbmi	r5, [r2, #-3845]	; 0xfffff0fb
    4eac:	5f544e45 	svcpl	0x00544e45
    4eb0:	52454d45 	subpl	r4, r5, #4416	; 0x1140
    4eb4:	434e4547 	movtmi	r4, #58695	; 0xe547
    4eb8:	74702859 	ldrbtvc	r2, [r0], #-2137	; 0xfffff7a7
    4ebc:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    4ec0:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    4ec4:	5f3e2d29 	svcpl	0x003e2d29
    4ec8:	72656d65 	rsbvc	r6, r5, #6464	; 0x1940
    4ecc:	636e6567 	cmnvs	lr, #432013312	; 0x19c00000
    4ed0:	01002979 	tsteq	r0, r9, ror r9
    4ed4:	525f05dc 	subspl	r0, pc, #220, 10	; 0x37000000
    4ed8:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    4edc:	5254535f 	subspl	r5, r4, #2080374785	; 0x7c000001
    4ee0:	5f4b4f54 	svcpl	0x004b4f54
    4ee4:	5453414c 	ldrbpl	r4, [r3], #-332	; 0xfffffeb4
    4ee8:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    4eec:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    4ef0:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    4ef4:	6e5f3e2d 	cdpvs	14, 5, cr3, cr15, cr13, {1}
    4ef8:	5f2e7765 	svcpl	0x002e7765
    4efc:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
    4f00:	735f2e74 	cmpvc	pc, #116, 28	; 0x740
    4f04:	6f747274 	svcvs	0x00747274
    4f08:	616c5f6b 	cmnvs	ip, fp, ror #30
    4f0c:	00297473 	eoreq	r7, r9, r3, ror r4
    4f10:	5f05dd01 	svcpl	0x0005dd01
    4f14:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    4f18:	424d5f54 	submi	r5, sp, #84, 30	; 0x150
    4f1c:	5f4e454c 	svcpl	0x004e454c
    4f20:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    4f24:	74702845 	ldrbtvc	r2, [r0], #-2117	; 0xfffff7bb
    4f28:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    4f2c:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    4f30:	5f3e2d29 	svcpl	0x003e2d29
    4f34:	2e77656e 	cdpcs	5, 7, cr6, cr7, cr14, {3}
    4f38:	6565725f 	strbvs	r7, [r5, #-607]!	; 0xfffffda1
    4f3c:	5f2e746e 	svcpl	0x002e746e
    4f40:	656c626d 	strbvs	r6, [ip, #-621]!	; 0xfffffd93
    4f44:	74735f6e 	ldrbtvc	r5, [r3], #-3950	; 0xfffff092
    4f48:	29657461 	stmdbcs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    4f4c:	05de0100 	ldrbeq	r0, [lr, #256]	; 0x100
    4f50:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    4f54:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 4e24 <LPC2388_Initialize+0x13c8>
    4f58:	574f5442 	strbpl	r5, [pc, -r2, asr #8]
    4f5c:	54535f43 	ldrbpl	r5, [r3], #-3907	; 0xfffff0bd
    4f60:	28455441 	stmdacs	r5, {r0, r6, sl, ip, lr}^
    4f64:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    4f68:	70282820 	eorvc	r2, r8, r0, lsr #16
    4f6c:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    4f70:	656e5f3e 	strbvs	r5, [lr, #-3902]!	; 0xfffff0c2
    4f74:	725f2e77 	subsvc	r2, pc, #1904	; 0x770
    4f78:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    4f7c:	626d5f2e 	rsbvs	r5, sp, #46, 30	; 0xb8
    4f80:	63776f74 	cmnvs	r7, #116, 30	; 0x1d0
    4f84:	6174735f 	cmnvs	r4, pc, asr r3
    4f88:	00296574 	eoreq	r6, r9, r4, ror r5
    4f8c:	5f05df01 	svcpl	0x0005df01
    4f90:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    4f94:	43575f54 	cmpmi	r7, #84, 30	; 0x150
    4f98:	424d4f54 	submi	r4, sp, #84, 30	; 0x150
    4f9c:	4154535f 	cmpmi	r4, pc, asr r3
    4fa0:	70284554 	eorvc	r4, r8, r4, asr r5
    4fa4:	20297274 	eorcs	r7, r9, r4, ror r2
    4fa8:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    4fac:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    4fb0:	77656e5f 			; <UNDEFINED> instruction: 0x77656e5f
    4fb4:	65725f2e 	ldrbvs	r5, [r2, #-3886]!	; 0xfffff0d2
    4fb8:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
    4fbc:	7463775f 	strbtvc	r7, [r3], #-1887	; 0xfffff8a1
    4fc0:	5f626d6f 	svcpl	0x00626d6f
    4fc4:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    4fc8:	01002965 	tsteq	r0, r5, ror #18
    4fcc:	525f05e0 	subspl	r0, pc, #224, 10	; 0x38000000
    4fd0:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    4fd4:	52424d5f 	subpl	r4, r2, #6080	; 0x17c0
    4fd8:	5f4e454c 	svcpl	0x004e454c
    4fdc:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    4fe0:	74702845 	ldrbtvc	r2, [r0], #-2117	; 0xfffff7bb
    4fe4:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    4fe8:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    4fec:	5f3e2d29 	svcpl	0x003e2d29
    4ff0:	2e77656e 	cdpcs	5, 7, cr6, cr7, cr14, {3}
    4ff4:	6565725f 	strbvs	r7, [r5, #-607]!	; 0xfffffda1
    4ff8:	5f2e746e 	svcpl	0x002e746e
    4ffc:	6c72626d 	lfmvs	f6, 2, [r2], #-436	; 0xfffffe4c
    5000:	735f6e65 	cmpvc	pc, #1616	; 0x650
    5004:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    5008:	e1010029 	tst	r1, r9, lsr #32
    500c:	45525f05 	ldrbmi	r5, [r2, #-3845]	; 0xfffff0fb
    5010:	5f544e45 	svcpl	0x00544e45
    5014:	5452424d 	ldrbpl	r4, [r2], #-589	; 0xfffffdb3
    5018:	5f43574f 	svcpl	0x0043574f
    501c:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    5020:	74702845 	ldrbtvc	r2, [r0], #-2117	; 0xfffff7bb
    5024:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    5028:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    502c:	5f3e2d29 	svcpl	0x003e2d29
    5030:	2e77656e 	cdpcs	5, 7, cr6, cr7, cr14, {3}
    5034:	6565725f 	strbvs	r7, [r5, #-607]!	; 0xfffffda1
    5038:	5f2e746e 	svcpl	0x002e746e
    503c:	7472626d 	ldrbtvc	r6, [r2], #-621	; 0xfffffd93
    5040:	5f63776f 	svcpl	0x0063776f
    5044:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    5048:	01002965 	tsteq	r0, r5, ror #18
    504c:	525f05e2 	subspl	r0, pc, #947912704	; 0x38800000
    5050:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    5054:	53424d5f 	movtpl	r4, #11615	; 0x2d5f
    5058:	574f5452 	smlsldpl	r5, pc, r2, r4	; <UNPREDICTABLE>
    505c:	535f5343 	cmppl	pc, #201326593	; 0xc000001
    5060:	45544154 	ldrbmi	r4, [r4, #-340]	; 0xfffffeac
    5064:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    5068:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    506c:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    5070:	6e5f3e2d 	cdpvs	14, 5, cr3, cr15, cr13, {1}
    5074:	5f2e7765 	svcpl	0x002e7765
    5078:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
    507c:	6d5f2e74 	ldclvs	14, cr2, [pc, #-464]	; 4eb4 <LPC2388_Initialize+0x1458>
    5080:	74727362 	ldrbtvc	r7, [r2], #-866	; 0xfffffc9e
    5084:	7363776f 	cmnvc	r3, #29097984	; 0x1bc0000
    5088:	6174735f 	cmnvs	r4, pc, asr r3
    508c:	00296574 	eoreq	r6, r9, r4, ror r5
    5090:	5f05e301 	svcpl	0x0005e301
    5094:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    5098:	43575f54 	cmpmi	r7, #84, 30	; 0x150
    509c:	4d4f5452 	cfstrdmi	mvd5, [pc, #-328]	; 4f5c <LPC2388_Initialize+0x1500>
    50a0:	54535f42 	ldrbpl	r5, [r3], #-3906	; 0xfffff0be
    50a4:	28455441 	stmdacs	r5, {r0, r6, sl, ip, lr}^
    50a8:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    50ac:	70282820 	eorvc	r2, r8, r0, lsr #16
    50b0:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    50b4:	656e5f3e 	strbvs	r5, [lr, #-3902]!	; 0xfffff0c2
    50b8:	725f2e77 	subsvc	r2, pc, #1904	; 0x770
    50bc:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    50c0:	63775f2e 	cmnvs	r7, #46, 30	; 0xb8
    50c4:	6d6f7472 	cfstrdvs	mvd7, [pc, #-456]!	; 4f04 <LPC2388_Initialize+0x14a8>
    50c8:	74735f62 	ldrbtvc	r5, [r3], #-3938	; 0xfffff09e
    50cc:	29657461 	stmdbcs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    50d0:	05e40100 	strbeq	r0, [r4, #256]!	; 0x100
    50d4:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    50d8:	575f544e 	ldrbpl	r5, [pc, -lr, asr #8]
    50dc:	54525343 	ldrbpl	r5, [r2], #-835	; 0xfffffcbd
    50e0:	53424d4f 	movtpl	r4, #11599	; 0x2d4f
    50e4:	4154535f 	cmpmi	r4, pc, asr r3
    50e8:	70284554 	eorvc	r4, r8, r4, asr r5
    50ec:	20297274 	eorcs	r7, r9, r4, ror r2
    50f0:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    50f4:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    50f8:	77656e5f 			; <UNDEFINED> instruction: 0x77656e5f
    50fc:	65725f2e 	ldrbvs	r5, [r2, #-3886]!	; 0xfffff0d2
    5100:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
    5104:	7363775f 	cmnvc	r3, #24903680	; 0x17c0000
    5108:	6d6f7472 	cfstrdvs	mvd7, [pc, #-456]!	; 4f48 <LPC2388_Initialize+0x14ec>
    510c:	735f7362 	cmpvc	pc, #-2013265919	; 0x88000001
    5110:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    5114:	e5010029 	str	r0, [r1, #-41]	; 0xffffffd7
    5118:	45525f05 	ldrbmi	r5, [r2, #-3845]	; 0xfffff0fb
    511c:	5f544e45 	svcpl	0x00544e45
    5120:	4134364c 	teqmi	r4, ip, asr #12
    5124:	4655425f 			; <UNDEFINED> instruction: 0x4655425f
    5128:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    512c:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    5130:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    5134:	6e5f3e2d 	cdpvs	14, 5, cr3, cr15, cr13, {1}
    5138:	5f2e7765 	svcpl	0x002e7765
    513c:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
    5140:	6c5f2e74 	mrrcvs	14, 7, r2, pc, cr4	; <UNPREDICTABLE>
    5144:	5f613436 	svcpl	0x00613436
    5148:	29667562 	stmdbcs	r6!, {r1, r5, r6, r8, sl, ip, sp, lr}^
    514c:	05e60100 	strbeq	r0, [r6, #256]!	; 0x100
    5150:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    5154:	535f544e 	cmppl	pc, #1308622848	; 0x4e000000
    5158:	414e4749 	cmpmi	lr, r9, asr #14
    515c:	55425f4c 	strbpl	r5, [r2, #-3916]	; 0xfffff0b4
    5160:	74702846 	ldrbtvc	r2, [r0], #-2118	; 0xfffff7ba
    5164:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    5168:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    516c:	5f3e2d29 	svcpl	0x003e2d29
    5170:	2e77656e 	cdpcs	5, 7, cr6, cr7, cr14, {3}
    5174:	6565725f 	strbvs	r7, [r5, #-607]!	; 0xfffffda1
    5178:	5f2e746e 	svcpl	0x002e746e
    517c:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    5180:	625f6c61 	subsvs	r6, pc, #24832	; 0x6100
    5184:	00296675 	eoreq	r6, r9, r5, ror r6
    5188:	5f05e701 	svcpl	0x0005e701
    518c:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    5190:	45475f54 	strbmi	r5, [r7, #-3924]	; 0xfffff0ac
    5194:	54414454 	strbpl	r4, [r1], #-1108	; 0xfffffbac
    5198:	52455f45 	subpl	r5, r5, #276	; 0x114
    519c:	28505f52 	ldmdacs	r0, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    51a0:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    51a4:	28262820 	stmdacs	r6!, {r5, fp, sp}
    51a8:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    51ac:	5f3e2d29 	svcpl	0x003e2d29
    51b0:	2e77656e 	cdpcs	5, 7, cr6, cr7, cr14, {3}
    51b4:	6565725f 	strbvs	r7, [r5, #-607]!	; 0xfffffda1
    51b8:	5f2e746e 	svcpl	0x002e746e
    51bc:	64746567 	ldrbtvs	r6, [r4], #-1383	; 0xfffffa99
    51c0:	5f657461 	svcpl	0x00657461
    51c4:	29727265 	ldmdbcs	r2!, {r0, r2, r5, r6, r9, ip, sp, lr}^
    51c8:	eb010029 	bl	45274 <__mprec_tinytens+0x20a04>
    51cc:	45525f05 	ldrbmi	r5, [r2, #-3845]	; 0xfffff0fb
    51d0:	5f544e45 	svcpl	0x00544e45
    51d4:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    51d8:	5254505f 	subspl	r5, r4, #95	; 0x5f
    51dc:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    51e0:	207b2029 	rsbscs	r2, fp, r9, lsr #32
    51e4:	736d656d 	cmnvc	sp, #457179136	; 0x1b400000
    51e8:	28287465 	stmdacs	r8!, {r0, r2, r5, r6, sl, ip, sp, lr}
    51ec:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    51f0:	2c30202c 	ldccs	0, cr2, [r0], #-176	; 0xffffff50
    51f4:	7a697320 	bvc	1a61e7c <__mprec_tinytens+0x1a3d60c>
    51f8:	28666f65 	stmdacs	r6!, {r0, r2, r5, r6, r8, r9, sl, fp, sp, lr}^
    51fc:	6176282a 	cmnvs	r6, sl, lsr #16
    5200:	29292972 	stmdbcs	r9!, {r1, r4, r5, r6, r8, fp, sp}
    5204:	525f203b 	subspl	r2, pc, #59	; 0x3b
    5208:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    520c:	494e495f 	stmdbmi	lr, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    5210:	54505f54 	ldrbpl	r5, [r0], #-3924	; 0xfffff0ac
    5214:	455a5f52 	ldrbmi	r5, [sl, #-3922]	; 0xfffff0ae
    5218:	44454f52 	strbmi	r4, [r5], #-3922	; 0xfffff0ae
    521c:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    5220:	7d203b29 	fstmdbxvc	r0!, {d3-d22}	;@ Deprecated
    5224:	05f30100 	ldrbeq	r0, [r3, #256]!	; 0x100
    5228:	616d4b5f 	cmnvs	sp, pc, asr fp
    522c:	73282078 			; <UNDEFINED> instruction: 0x73282078
    5230:	6f657a69 	svcvs	0x00657a69
    5234:	73282066 			; <UNDEFINED> instruction: 0x73282066
    5238:	5f657a69 	svcpl	0x00657a69
    523c:	3c202974 			; <UNDEFINED> instruction: 0x3c202974
    5240:	2933203c 	ldmdbcs	r3!, {r2, r3, r4, r5, sp}
    5244:	05fb0100 	ldrbeq	r0, [fp, #256]!	; 0x100
    5248:	54415f5f 	strbpl	r5, [r1], #-3935	; 0xfffff0a1
    524c:	42495254 	submi	r5, r9, #84, 4	; 0x40000005
    5250:	5f455455 	svcpl	0x00455455
    5254:	55504d49 	ldrbpl	r4, [r0, #-3401]	; 0xfffff2b7
    5258:	505f4552 	subspl	r4, pc, r2, asr r5	; <UNPREDICTABLE>
    525c:	5f5f5254 	svcpl	0x005f5254
    5260:	8b010020 	blhi	452e8 <__mprec_tinytens+0x20a78>
    5264:	45525f06 	ldrbmi	r5, [r2, #-3846]	; 0xfffff0fa
    5268:	20544e45 	subscs	r4, r4, r5, asr #28
    526c:	706d695f 	rsbvc	r6, sp, pc, asr r9
    5270:	5f657275 	svcpl	0x00657275
    5274:	00727470 	rsbseq	r7, r2, r0, ror r4
    5278:	5f068e01 	svcpl	0x00068e01
    527c:	424f4c47 	submi	r4, pc, #18176	; 0x4700
    5280:	525f4c41 	subspl	r4, pc, #16640	; 0x4100
    5284:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    5288:	6c675f20 	stclvs	15, cr5, [r7], #-128	; 0xffffff80
    528c:	6c61626f 	sfmvs	f6, 2, [r1], #-444	; 0xfffffe44
    5290:	706d695f 	rsbvc	r6, sp, pc, asr r9
    5294:	5f657275 	svcpl	0x00657275
    5298:	00727470 	rsbseq	r7, r2, r0, ror r4
    529c:	5f069401 	svcpl	0x00069401
    52a0:	424f4c47 	submi	r4, pc, #18176	; 0x4700
    52a4:	415f4c41 	cmpmi	pc, r1, asr #24
    52a8:	49584554 	ldmdbmi	r8, {r2, r4, r6, r8, sl, lr}^
    52ac:	5f282054 	svcpl	0x00282054
    52b0:	424f4c47 	submi	r4, pc, #18176	; 0x4700
    52b4:	525f4c41 	subspl	r4, pc, #16640	; 0x4100
    52b8:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    52bc:	615f3e2d 	cmpvs	pc, sp, lsr #28
    52c0:	69786574 	ldmdbvs	r8!, {r2, r4, r5, r6, r8, sl, sp, lr}^
    52c4:	04002974 	streq	r2, [r0], #-2420	; 0xfffff68c
    52c8:	01170c03 	tsteq	r7, r3, lsl #24
    52cc:	59535f29 	ldmdbpl	r3, {r0, r3, r5, r8, r9, sl, fp, ip, lr}^
    52d0:	44435f53 	strbmi	r5, [r3], #-3923	; 0xfffff0ad
    52d4:	5f534645 	svcpl	0x00534645
    52d8:	00205f48 	eoreq	r5, r0, r8, asr #30
    52dc:	04082d03 	streq	r2, [r8], #-3331	; 0xfffff2fd
    52e0:	5f5f2f01 	svcpl	0x005f2f01
    52e4:	28544d50 	ldmdacs	r4, {r4, r6, r8, sl, fp, lr}^
    52e8:	73677261 	cmnvc	r7, #268435462	; 0x10000006
    52ec:	72612029 	rsbvc	r2, r1, #41	; 0x29
    52f0:	01007367 	tsteq	r0, r7, ror #6
    52f4:	445f5f30 	ldrbmi	r5, [pc], #-3888	; 52fc <LPC2388_Initialize+0x18a0>
    52f8:	2053544f 	subscs	r5, r3, pc, asr #8
    52fc:	2e2e202c 	cdpcs	0, 2, cr2, cr14, cr12, {1}
    5300:	3101002e 	tstcc	r1, lr, lsr #32
    5304:	48545f5f 	ldmdami	r4, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    5308:	20574f52 	subscs	r4, r7, r2, asr pc
    530c:	5f340100 	svcpl	0x00340100
    5310:	4d53415f 	ldfmie	f4, [r3, #-380]	; 0xfffffe84
    5314:	454d414e 	strbmi	r4, [sp, #-334]	; 0xfffffeb2
    5318:	616e6328 	cmnvs	lr, r8, lsr #6
    531c:	2029656d 	eorcs	r6, r9, sp, ror #10
    5320:	53585f5f 	cmppl	r8, #380	; 0x17c
    5324:	4e495254 	mcrmi	2, 2, r5, cr9, cr4, {2}
    5328:	5f282047 	svcpl	0x00282047
    532c:	4553555f 	ldrbmi	r5, [r3, #-1375]	; 0xfffffaa1
    5330:	414c5f52 	cmpmi	ip, r2, asr pc
    5334:	5f4c4542 	svcpl	0x004c4542
    5338:	46455250 			; <UNDEFINED> instruction: 0x46455250
    533c:	5f5f5849 	svcpl	0x005f5849
    5340:	6e632029 	cdpvs	0, 6, cr2, cr3, cr9, {1}
    5344:	00656d61 	rsbeq	r6, r5, r1, ror #26
    5348:	5f5f3701 	svcpl	0x005f3701
    534c:	5f727470 	svcpl	0x00727470
    5350:	6f762074 	svcvs	0x00762074
    5354:	2a206469 	bcs	81e500 <__mprec_tinytens+0x7f9c90>
    5358:	5f380100 	svcpl	0x00380100
    535c:	6e6f6c5f 	mcrvs	12, 3, r6, cr15, cr15, {2}
    5360:	6f645f67 	svcvs	0x00645f67
    5364:	656c6275 	strbvs	r6, [ip, #-629]!	; 0xfffffd8b
    5368:	6c20745f 	cfstrsvs	mvf7, [r0], #-380	; 0xfffffe84
    536c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    5370:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
    5374:	0100656c 	tsteq	r0, ip, ror #10
    5378:	615f5f3a 	cmpvs	pc, sl, lsr pc	; <UNPREDICTABLE>
    537c:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    5380:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    5384:	6c616d5f 	stclvs	13, cr6, [r1], #-380	; 0xfffffe84
    5388:	5f636f6c 	svcpl	0x00636f6c
    538c:	0100205f 	qaddeq	r2, pc, r0	; <UNPREDICTABLE>
    5390:	615f5f3b 	cmpvs	pc, fp, lsr pc	; <UNPREDICTABLE>
    5394:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    5398:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    539c:	7275705f 	rsbsvc	r7, r5, #95	; 0x5f
    53a0:	205f5f65 	subscs	r5, pc, r5, ror #30
    53a4:	5f3c0100 	svcpl	0x003c0100
    53a8:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    53ac:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    53b0:	665f6574 			; <UNDEFINED> instruction: 0x665f6574
    53b4:	616d726f 	cmnvs	sp, pc, ror #4
    53b8:	74735f74 	ldrbtvc	r5, [r3], #-3956	; 0xfffff08c
    53bc:	6f6d6672 	svcvs	0x006d6672
    53c0:	285f5f6e 	ldmdacs	pc, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    53c4:	29622c61 	stmdbcs	r2!, {r0, r5, r6, sl, fp, sp}^
    53c8:	3d010020 	stccc	0, cr0, [r1, #-128]	; 0xffffff80
    53cc:	6c665f5f 	stclvs	15, cr5, [r6], #-380	; 0xfffffe84
    53d0:	72617865 	rsbvc	r7, r1, #6619136	; 0x650000
    53d4:	305b2072 	subscc	r2, fp, r2, ror r0
    53d8:	4001005d 	andmi	r0, r1, sp, asr r0
    53dc:	6f625f5f 	svcvs	0x00625f5f
    53e0:	65646e75 	strbvs	r6, [r4, #-3701]!	; 0xfffff18b
    53e4:	01002064 	tsteq	r0, r4, rrx
    53e8:	755f5f41 	ldrbvc	r5, [pc, #-3905]	; 44af <LPC2388_Initialize+0xa53>
    53ec:	756f626e 	strbvc	r6, [pc, #-622]!	; 5186 <LPC2388_Initialize+0x172a>
    53f0:	6465646e 	strbtvs	r6, [r5], #-1134	; 0xfffffb92
    53f4:	42010020 	andmi	r0, r1, #32
    53f8:	74705f5f 	ldrbtvc	r5, [r0], #-3935	; 0xfffff0a1
    53fc:	6c617672 	stclvs	6, cr7, [r1], #-456	; 0xfffffe38
    5400:	00206575 	eoreq	r6, r0, r5, ror r5
    5404:	5f5f4c01 	svcpl	0x005f4c01
    5408:	5f736168 	svcpl	0x00736168
    540c:	65747865 	ldrbvs	r7, [r4, #-2149]!	; 0xfffff79b
    5410:	6f69736e 	svcvs	0x0069736e
    5414:	5f5f206e 	svcpl	0x005f206e
    5418:	5f736168 	svcpl	0x00736168
    541c:	74616566 	strbtvc	r6, [r1], #-1382	; 0xfffffa9a
    5420:	00657275 	rsbeq	r7, r5, r5, ror r2
    5424:	5f5f4f01 	svcpl	0x005f4f01
    5428:	5f736168 	svcpl	0x00736168
    542c:	74616566 	strbtvc	r6, [r1], #-1382	; 0xfffffa9a
    5430:	28657275 	stmdacs	r5!, {r0, r2, r4, r5, r6, r9, ip, sp, lr}^
    5434:	30202978 	eorcc	r2, r0, r8, ror r9
    5438:	5f550100 	svcpl	0x00550100
    543c:	7361685f 	cmnvc	r1, #6225920	; 0x5f0000
    5440:	6975625f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
    5444:	6e69746c 	cdpvs	4, 6, cr7, cr9, cr12, {3}
    5448:	20297828 	eorcs	r7, r9, r8, lsr #16
    544c:	5c010030 	stcpl	0, cr0, [r1], {48}	; 0x30
    5450:	45425f5f 	strbmi	r5, [r2, #-3935]	; 0xfffff0a1
    5454:	5f4e4947 	svcpl	0x004e4947
    5458:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    545c:	01002053 	qaddeq	r2, r3, r0
    5460:	455f5f5d 	ldrbmi	r5, [pc, #-3933]	; 450b <LPC2388_Initialize+0xaaf>
    5464:	445f444e 	ldrbmi	r4, [pc], #-1102	; 546c <LPC2388_Initialize+0x1a10>
    5468:	534c4345 	movtpl	r4, #49989	; 0xc345
    546c:	69010020 	stmdbvs	r1, {r5}
    5470:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    5474:	494c4355 	stmdbmi	ip, {r0, r2, r4, r6, r8, r9, lr}^
    5478:	415f454b 	cmpmi	pc, fp, asr #10
    547c:	33204d53 			; <UNDEFINED> instruction: 0x33204d53
    5480:	5f6a0100 	svcpl	0x006a0100
    5484:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    5488:	4b494c43 	blmi	125859c <__mprec_tinytens+0x1233d2c>
    548c:	414d5f45 	cmpmi	sp, r5, asr #30
    5490:	425f4854 	subsmi	r4, pc, #84, 16	; 0x540000
    5494:	544c4955 	strbpl	r4, [ip], #-2389	; 0xfffff6ab
    5498:	435f4e49 	cmpmi	pc, #1168	; 0x490
    549c:	54534e4f 	ldrbpl	r4, [r3], #-3663	; 0xfffff1b1
    54a0:	53544e41 	cmppl	r4, #1040	; 0x410
    54a4:	6e010020 	cdpvs	0, 0, cr0, cr1, cr0, {1}
    54a8:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    54ac:	494c4355 	stmdbmi	ip, {r0, r2, r4, r6, r8, r9, lr}^
    54b0:	5f5f454b 	svcpl	0x005f454b
    54b4:	5059545f 	subspl	r5, r9, pc, asr r4
    54b8:	20464f45 	subcs	r4, r6, r5, asr #30
    54bc:	6f010031 	svcvs	0x00010031
    54c0:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    54c4:	494c4355 	stmdbmi	ip, {r0, r2, r4, r6, r8, r9, lr}^
    54c8:	5f5f454b 	svcpl	0x005f454b
    54cc:	46464f5f 			; <UNDEFINED> instruction: 0x46464f5f
    54d0:	4f544553 	svcmi	0x00544553
    54d4:	00312046 	eorseq	r2, r1, r6, asr #32
    54d8:	5f5f7001 	svcpl	0x005f7001
    54dc:	43554e47 	cmpmi	r5, #1136	; 0x470
    54e0:	454b494c 	strbmi	r4, [fp, #-2380]	; 0xfffff6b4
    54e4:	535f5f5f 	cmppl	pc, #380	; 0x17c
    54e8:	49544345 	ldmdbmi	r4, {r0, r2, r6, r8, r9, lr}^
    54ec:	31204e4f 			; <UNDEFINED> instruction: 0x31204e4f
    54f0:	5f730100 	svcpl	0x00730100
    54f4:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    54f8:	4b494c43 	blmi	125860c <__mprec_tinytens+0x1233d9c>
    54fc:	54435f45 	strbpl	r5, [r3], #-3909	; 0xfffff0bb
    5500:	535f524f 	cmppl	pc, #-268435452	; 0xf0000004
    5504:	49544345 	ldmdbmi	r4, {r0, r2, r6, r8, r9, lr}^
    5508:	485f4e4f 	ldmdami	pc, {r0, r1, r2, r3, r6, r9, sl, fp, lr}^	; <UNPREDICTABLE>
    550c:	4c444e41 	mcrrmi	14, 4, r4, r4, cr1
    5510:	20474e49 	subcs	r4, r7, r9, asr #28
    5514:	76010031 			; <UNDEFINED> instruction: 0x76010031
    5518:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    551c:	494c4355 	stmdbmi	ip, {r0, r2, r4, r6, r8, r9, lr}^
    5520:	425f454b 	subsmi	r4, pc, #314572800	; 0x12c00000
    5524:	544c4955 	strbpl	r4, [ip], #-2389	; 0xfffff6ab
    5528:	435f4e49 	cmpmi	pc, #1168	; 0x490
    552c:	54534e4f 	ldrbpl	r4, [r3], #-3663	; 0xfffff1b1
    5530:	5f544e41 	svcpl	0x00544e41
    5534:	00312050 	eorseq	r2, r1, r0, asr r0
    5538:	5f5f7d01 	svcpl	0x005f7d01
    553c:	43554e47 	cmpmi	r5, #1136	; 0x470
    5540:	454b494c 	strbmi	r4, [fp, #-2380]	; 0xfffff6b4
    5544:	4955425f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r9, lr}^
    5548:	4e49544c 	cdpmi	4, 4, cr5, cr9, cr12, {2}
    554c:	5241565f 	subpl	r5, r1, #99614720	; 0x5f00000
    5550:	53475241 	movtpl	r5, #29249	; 0x7241
    5554:	01003120 	tsteq	r0, r0, lsr #2
    5558:	475f5f7e 			; <UNDEFINED> instruction: 0x475f5f7e
    555c:	4c43554e 	cfstr64mi	mvdx5, [r3], {78}	; 0x4e
    5560:	5f454b49 	svcpl	0x00454b49
    5564:	4c495542 	cfstr64mi	mvdx5, [r9], {66}	; 0x42
    5568:	5f4e4954 	svcpl	0x004e4954
    556c:	41445453 	cmpmi	r4, r3, asr r4
    5570:	31204752 			; <UNDEFINED> instruction: 0x31204752
    5574:	5f7f0100 	svcpl	0x007f0100
    5578:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    557c:	4b494c43 	blmi	1258690 <__mprec_tinytens+0x1233e20>
    5580:	55425f45 	strbpl	r5, [r2, #-3909]	; 0xfffff0bb
    5584:	49544c49 	ldmdbmi	r4, {r0, r3, r6, sl, fp, lr}^
    5588:	41565f4e 	cmpmi	r6, lr, asr #30
    558c:	53494c41 	movtpl	r4, #40001	; 0x9c41
    5590:	00312054 	eorseq	r2, r1, r4, asr r0
    5594:	5f018301 	svcpl	0x00018301
    5598:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    559c:	41565f43 	cmpmi	r6, r3, asr #30
    55a0:	53494c5f 	movtpl	r4, #40031	; 0x9c5f
    55a4:	4f435f54 	svcmi	0x00435f54
    55a8:	5441504d 	strbpl	r5, [r1], #-77	; 0xffffffb3
    55ac:	4c494249 	sfmmi	f4, 2, [r9], {73}	; 0x49
    55b0:	20595449 	subscs	r5, r9, r9, asr #8
    55b4:	8a010031 	bhi	45680 <__mprec_tinytens+0x20e10>
    55b8:	635f5f01 	cmpvs	pc, #1, 30
    55bc:	69706d6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, sl, fp, sp, lr}^
    55c0:	5f72656c 	svcpl	0x0072656c
    55c4:	626d656d 	rsbvs	r6, sp, #457179136	; 0x1b400000
    55c8:	29287261 	stmdbcs	r8!, {r0, r5, r6, r9, ip, sp, lr}
    55cc:	615f5f20 	cmpvs	pc, r0, lsr #30
    55d0:	5f206d73 	svcpl	0x00206d73
    55d4:	6c6f765f 	stclvs	6, cr7, [pc], #-380	; 5460 <LPC2388_Initialize+0x1a04>
    55d8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    55dc:	20222865 	eorcs	r2, r2, r5, ror #16
    55e0:	203a2022 	eorscs	r2, sl, r2, lsr #32
    55e4:	203a203a 	eorscs	r2, sl, sl, lsr r0
    55e8:	6d656d22 	stclvs	13, cr6, [r5, #-136]!	; 0xffffff78
    55ec:	2279726f 	rsbscs	r7, r9, #-268435450	; 0xf0000006
    55f0:	8e010029 	cdphi	0, 0, cr0, cr1, cr9, {1}
    55f4:	475f5f01 	ldrbmi	r5, [pc, -r1, lsl #30]
    55f8:	4c43554e 	cfstr64mi	mvdx5, [r3], {78}	; 0x4e
    55fc:	5f454b49 	svcpl	0x00454b49
    5600:	4c495542 	cfstr64mi	mvdx5, [r9], {66}	; 0x42
    5604:	5f4e4954 	svcpl	0x004e4954
    5608:	5458454e 	ldrbpl	r4, [r8], #-1358	; 0xfffffab2
    560c:	4752415f 			; <UNDEFINED> instruction: 0x4752415f
    5610:	01003120 	tsteq	r0, r0, lsr #2
    5614:	5f5f018f 	svcpl	0x005f018f
    5618:	43554e47 	cmpmi	r5, #1136	; 0x470
    561c:	454b494c 	strbmi	r4, [fp, #-2380]	; 0xfffff6b4
    5620:	54414d5f 	strbpl	r4, [r1], #-3423	; 0xfffff2a1
    5624:	55425f48 	strbpl	r5, [r2, #-3912]	; 0xfffff0b8
    5628:	49544c49 	ldmdbmi	r4, {r0, r3, r6, sl, fp, lr}^
    562c:	45525f4e 	ldrbmi	r5, [r2, #-3918]	; 0xfffff0b2
    5630:	53504f4c 	cmppl	r0, #76, 30	; 0x130
    5634:	92010020 	andls	r0, r1, #32
    5638:	475f5f01 	ldrbmi	r5, [pc, -r1, lsl #30]
    563c:	4c43554e 	cfstr64mi	mvdx5, [r3], {78}	; 0x4e
    5640:	5f454b49 	svcpl	0x00454b49
    5644:	4c495542 	cfstr64mi	mvdx5, [r9], {66}	; 0x42
    5648:	5f4e4954 	svcpl	0x004e4954
    564c:	434d454d 	movtmi	r4, #54605	; 0xd54d
    5650:	31205950 			; <UNDEFINED> instruction: 0x31205950
    5654:	01950100 	orrseq	r0, r5, r0, lsl #2
    5658:	43435f5f 	movtmi	r5, #16223	; 0x3f5f
    565c:	5055535f 	subspl	r5, r5, pc, asr r3
    5660:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
    5664:	4e495f53 	mcrmi	15, 2, r5, cr9, cr3, {2}
    5668:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    566c:	01003120 	tsteq	r0, r0, lsr #2
    5670:	5f5f0196 	svcpl	0x005f0196
    5674:	535f4343 	cmppl	pc, #201326593	; 0xc000001
    5678:	4f505055 	svcmi	0x00505055
    567c:	5f535452 	svcpl	0x00535452
    5680:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    5684:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    5688:	01003120 	tsteq	r0, r0, lsr #2
    568c:	5f5f0197 	svcpl	0x005f0197
    5690:	535f4343 	cmppl	pc, #201326593	; 0xc000001
    5694:	4f505055 	svcmi	0x00505055
    5698:	5f535452 	svcpl	0x00535452
    569c:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    56a0:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    56a4:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    56a8:	01990100 	orrseq	r0, r9, r0, lsl #2
    56ac:	43435f5f 	movtmi	r5, #16223	; 0x3f5f
    56b0:	5055535f 	subspl	r5, r5, pc, asr r3
    56b4:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
    56b8:	5f5f5f53 	svcpl	0x005f5f53
    56bc:	434e5546 	movtmi	r5, #58694	; 0xe546
    56c0:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    56c4:	019a0100 	orrseq	r0, sl, r0, lsl #2
    56c8:	43435f5f 	movtmi	r5, #16223	; 0x3f5f
    56cc:	5055535f 	subspl	r5, r5, pc, asr r3
    56d0:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
    56d4:	41575f53 	cmpmi	r7, r3, asr pc
    56d8:	4e494e52 	mcrmi	14, 2, r4, cr9, cr2, {2}
    56dc:	00312047 	eorseq	r2, r1, r7, asr #32
    56e0:	5f019c01 	svcpl	0x00019c01
    56e4:	5f43435f 	svcpl	0x0043435f
    56e8:	50505553 	subspl	r5, r0, r3, asr r5
    56ec:	5354524f 	cmppl	r4, #-268435452	; 0xf0000004
    56f0:	5241565f 	subpl	r5, r1, #99614720	; 0x5f00000
    56f4:	43494441 	movtmi	r4, #37953	; 0x9441
    56f8:	5858585f 	ldmdapl	r8, {r0, r1, r2, r3, r4, r6, fp, ip, lr}^
    56fc:	01003120 	tsteq	r0, r0, lsr #2
    5700:	5f5f019e 	svcpl	0x005f019e
    5704:	535f4343 	cmppl	pc, #201326593	; 0xc000001
    5708:	4f505055 	svcmi	0x00505055
    570c:	5f535452 	svcpl	0x00535452
    5710:	414e5944 	cmpmi	lr, r4, asr #18
    5714:	5f43494d 	svcpl	0x0043494d
    5718:	41525241 	cmpmi	r2, r1, asr #4
    571c:	4e495f59 	mcrmi	15, 2, r5, cr9, cr9, {2}
    5720:	31205449 			; <UNDEFINED> instruction: 0x31205449
    5724:	01af0100 			; <UNDEFINED> instruction: 0x01af0100
    5728:	28505f5f 	ldmdacs	r0, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    572c:	746f7270 	strbtvc	r7, [pc], #-624	; 5734 <f_open+0x88>
    5730:	2029736f 	eorcs	r7, r9, pc, ror #6
    5734:	746f7270 	strbtvc	r7, [pc], #-624	; 573c <f_open+0x90>
    5738:	0100736f 	tsteq	r0, pc, ror #6
    573c:	5f5f01b0 	svcpl	0x005f01b0
    5740:	434e4f43 	movtmi	r4, #61251	; 0xef43
    5744:	28315441 	ldmdacs	r1!, {r0, r6, sl, ip, lr}
    5748:	29792c78 	ldmdbcs	r9!, {r3, r4, r5, r6, sl, fp, sp}^
    574c:	23207820 			; <UNDEFINED> instruction: 0x23207820
    5750:	00792023 	rsbseq	r2, r9, r3, lsr #32
    5754:	5f01b101 	svcpl	0x0001b101
    5758:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
    575c:	28544143 	ldmdacs	r4, {r0, r1, r6, r8, lr}^
    5760:	29792c78 	ldmdbcs	r9!, {r3, r4, r5, r6, sl, fp, sp}^
    5764:	435f5f20 	cmpmi	pc, #32, 30	; 0x80
    5768:	41434e4f 	cmpmi	r3, pc, asr #28
    576c:	78283154 	stmdavc	r8!, {r2, r4, r6, r8, ip, sp}
    5770:	0029792c 	eoreq	r7, r9, ip, lsr #18
    5774:	5f01b201 	svcpl	0x0001b201
    5778:	5254535f 	subspl	r5, r4, #2080374785	; 0x7c000001
    577c:	28474e49 	stmdacs	r7, {r0, r3, r6, r9, sl, fp, lr}^
    5780:	23202978 			; <UNDEFINED> instruction: 0x23202978
    5784:	b3010078 	movwlt	r0, #4216	; 0x1078
    5788:	585f5f01 	ldmdapl	pc, {r0, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    578c:	49525453 	ldmdbmi	r2, {r0, r1, r4, r6, sl, ip, lr}^
    5790:	7828474e 	stmdavc	r8!, {r1, r2, r3, r6, r8, r9, sl, lr}
    5794:	5f5f2029 	svcpl	0x005f2029
    5798:	49525453 	ldmdbmi	r2, {r0, r1, r4, r6, sl, ip, lr}^
    579c:	7828474e 	stmdavc	r8!, {r1, r2, r3, r6, r8, r9, sl, lr}
    57a0:	b5010029 	strlt	r0, [r1, #-41]	; 0xffffffd7
    57a4:	635f5f01 	cmpvs	pc, #1, 30
    57a8:	74736e6f 	ldrbtvc	r6, [r3], #-3695	; 0xfffff191
    57ac:	6e6f6320 	cdpvs	3, 6, cr6, cr15, cr0, {1}
    57b0:	01007473 	tsteq	r0, r3, ror r4
    57b4:	5f5f01b6 	svcpl	0x005f01b6
    57b8:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    57bc:	73206465 			; <UNDEFINED> instruction: 0x73206465
    57c0:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    57c4:	b7010064 	strlt	r0, [r1, -r4, rrx]
    57c8:	765f5f01 	ldrbvc	r5, [pc], -r1, lsl #30
    57cc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    57d0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    57d4:	616c6f76 	smcvs	50934	; 0xc6f6
    57d8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    57dc:	01ef0100 	mvneq	r0, r0, lsl #2
    57e0:	65775f5f 	ldrbvs	r5, [r7, #-3935]!	; 0xfffff0a1
    57e4:	735f6b61 	cmpvc	pc, #99328	; 0x18400
    57e8:	6f626d79 	svcvs	0x00626d79
    57ec:	5f5f206c 	svcpl	0x005f206c
    57f0:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    57f4:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    57f8:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    57fc:	775f5f28 	ldrbvc	r5, [pc, -r8, lsr #30]
    5800:	5f6b6165 	svcpl	0x006b6165
    5804:	0029295f 	eoreq	r2, r9, pc, asr r9
    5808:	5f01fc01 	svcpl	0x0001fc01
    580c:	6165645f 	cmnvs	r5, pc, asr r4
    5810:	5f203264 	svcpl	0x00203264
    5814:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    5818:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    581c:	5f5f6574 	svcpl	0x005f6574
    5820:	5f5f2828 	svcpl	0x005f2828
    5824:	65726f6e 	ldrbvs	r6, [r2, #-3950]!	; 0xfffff092
    5828:	6e727574 	mrcvs	5, 3, r7, cr2, cr4, {3}
    582c:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5830:	01fd0100 	mvnseq	r0, r0, lsl #2
    5834:	75705f5f 	ldrbvc	r5, [r0, #-3935]!	; 0xfffff0a1
    5838:	20326572 	eorscs	r6, r2, r2, ror r5
    583c:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    5840:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    5844:	5f657475 	svcpl	0x00657475
    5848:	5f28285f 	svcpl	0x0028285f
    584c:	6e6f635f 	mcrvs	3, 3, r6, cr15, cr15, {2}
    5850:	5f5f7473 	svcpl	0x005f7473
    5854:	01002929 	tsteq	r0, r9, lsr #18
    5858:	5f5f01fe 	svcpl	0x005f01fe
    585c:	73756e75 	cmnvc	r5, #1872	; 0x750
    5860:	5f206465 	svcpl	0x00206465
    5864:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    5868:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    586c:	5f5f6574 	svcpl	0x005f6574
    5870:	5f5f2828 	svcpl	0x005f2828
    5874:	73756e75 	cmnvc	r5, #1872	; 0x750
    5878:	5f5f6465 	svcpl	0x005f6465
    587c:	01002929 	tsteq	r0, r9, lsr #18
    5880:	5f5f01ff 	svcpl	0x005f01ff
    5884:	64657375 	strbtvs	r7, [r5], #-885	; 0xfffffc8b
    5888:	615f5f20 	cmpvs	pc, r0, lsr #30
    588c:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    5890:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    5894:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5898:	73755f5f 	cmnvc	r5, #380	; 0x17c
    589c:	5f5f6465 	svcpl	0x005f6465
    58a0:	01002929 	tsteq	r0, r9, lsr #18
    58a4:	5f5f0280 	svcpl	0x005f0280
    58a8:	6b636170 	blvs	18dde70 <__mprec_tinytens+0x18b9600>
    58ac:	5f206465 	svcpl	0x00206465
    58b0:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    58b4:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    58b8:	5f5f6574 	svcpl	0x005f6574
    58bc:	5f5f2828 	svcpl	0x005f2828
    58c0:	6b636170 	blvs	18dde88 <__mprec_tinytens+0x18b9618>
    58c4:	5f5f6465 	svcpl	0x005f6465
    58c8:	01002929 	tsteq	r0, r9, lsr #18
    58cc:	5f5f0281 	svcpl	0x005f0281
    58d0:	67696c61 	strbvs	r6, [r9, -r1, ror #24]!
    58d4:	2864656e 	stmdacs	r4!, {r1, r2, r3, r5, r6, r8, sl, sp, lr}^
    58d8:	5f202978 	svcpl	0x00202978
    58dc:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    58e0:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    58e4:	5f5f6574 	svcpl	0x005f6574
    58e8:	5f5f2828 	svcpl	0x005f2828
    58ec:	67696c61 	strbvs	r6, [r9, -r1, ror #24]!
    58f0:	5f64656e 	svcpl	0x0064656e
    58f4:	2978285f 	ldmdbcs	r8!, {r0, r1, r2, r3, r4, r6, fp, sp}^
    58f8:	01002929 	tsteq	r0, r9, lsr #18
    58fc:	5f5f0282 	svcpl	0x005f0282
    5900:	74636573 	strbtvc	r6, [r3], #-1395	; 0xfffffa8d
    5904:	286e6f69 	stmdacs	lr!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
    5908:	5f202978 	svcpl	0x00202978
    590c:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    5910:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    5914:	5f5f6574 	svcpl	0x005f6574
    5918:	5f5f2828 	svcpl	0x005f2828
    591c:	74636573 	strbtvc	r6, [r3], #-1395	; 0xfffffa8d
    5920:	5f6e6f69 	svcpl	0x006e6f69
    5924:	2978285f 	ldmdbcs	r8!, {r0, r1, r2, r3, r4, r6, fp, sp}^
    5928:	01002929 	tsteq	r0, r9, lsr #18
    592c:	5f5f0285 	svcpl	0x005f0285
    5930:	6f6c6c61 	svcvs	0x006c6c61
    5934:	69735f63 	ldmdbvs	r3!, {r0, r1, r5, r6, r8, r9, sl, fp, ip, lr}^
    5938:	7828657a 	stmdavc	r8!, {r1, r3, r4, r5, r6, r8, sl, sp, lr}
    593c:	5f5f2029 	svcpl	0x005f2029
    5940:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    5944:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    5948:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    594c:	615f5f28 	cmpvs	pc, r8, lsr #30
    5950:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
    5954:	7a69735f 	bvc	1a626d8 <__mprec_tinytens+0x1a3de68>
    5958:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    595c:	29292978 	stmdbcs	r9!, {r3, r4, r5, r6, r8, fp, sp}
    5960:	028a0100 	addeq	r0, sl, #0, 2
    5964:	6c615f5f 	stclvs	15, cr5, [r1], #-380	; 0xfffffe84
    5968:	5f636f6c 	svcpl	0x00636f6c
    596c:	67696c61 	strbvs	r6, [r9, -r1, ror #24]!
    5970:	2978286e 	ldmdbcs	r8!, {r1, r2, r3, r5, r6, fp, sp}^
    5974:	615f5f20 	cmpvs	pc, r0, lsr #30
    5978:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    597c:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    5980:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5984:	6c615f5f 	stclvs	15, cr5, [r1], #-380	; 0xfffffe84
    5988:	5f636f6c 	svcpl	0x00636f6c
    598c:	67696c61 	strbvs	r6, [r9, -r1, ror #24]!
    5990:	285f5f6e 	ldmdacs	pc, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5994:	29292978 	stmdbcs	r9!, {r3, r4, r5, r6, r8, fp, sp}
    5998:	02e40100 	rsceq	r0, r4, #0, 2
    599c:	65675f5f 	strbvs	r5, [r7, #-3935]!	; 0xfffff0a1
    59a0:	6972656e 	ldmdbvs	r2!, {r1, r2, r3, r5, r6, r8, sl, sp, lr}^
    59a4:	78652863 	stmdavc	r5!, {r0, r1, r5, r6, fp, sp}^
    59a8:	742c7270 	strtvc	r7, [ip], #-624	; 0xfffffd90
    59ac:	7365792c 	cmnvc	r5, #44, 18	; 0xb0000
    59b0:	296f6e2c 	stmdbcs	pc!, {r2, r3, r5, r9, sl, fp, sp, lr}^	; <UNPREDICTABLE>
    59b4:	65475f20 	strbvs	r5, [r7, #-3872]	; 0xfffff0e0
    59b8:	6972656e 	ldmdbvs	r2!, {r1, r2, r3, r5, r6, r8, sl, sp, lr}^
    59bc:	78652863 	stmdavc	r5!, {r0, r1, r5, r6, fp, sp}^
    59c0:	202c7270 	eorcs	r7, ip, r0, ror r2
    59c4:	79203a74 	stmdbvc	r0!, {r2, r4, r5, r6, r9, fp, ip, sp}
    59c8:	202c7365 	eorcs	r7, ip, r5, ror #6
    59cc:	61666564 	cmnvs	r6, r4, ror #10
    59d0:	3a746c75 	bcc	1d20bac <__mprec_tinytens+0x1cfc33c>
    59d4:	296f6e20 	stmdbcs	pc!, {r5, r9, sl, fp, sp, lr}^	; <UNPREDICTABLE>
    59d8:	02f60100 	rscseq	r0, r6, #0, 2
    59dc:	696d5f5f 	stmdbvs	sp!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    59e0:	69735f6e 	ldmdbvs	r3!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    59e4:	7828657a 	stmdavc	r8!, {r1, r3, r4, r5, r6, r8, sl, sp, lr}
    59e8:	74732029 	ldrbtvc	r2, [r3], #-41	; 0xffffffd7
    59ec:	63697461 	cmnvs	r9, #1627389952	; 0x61000000
    59f0:	29782820 	ldmdbcs	r8!, {r5, fp, sp}^
    59f4:	02fc0100 	rscseq	r0, ip, #0, 2
    59f8:	616d5f5f 	cmnvs	sp, pc, asr pc
    59fc:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
    5a00:	6b696c5f 	blvs	1a60b84 <__mprec_tinytens+0x1a3c314>
    5a04:	5f5f2065 	svcpl	0x005f2065
    5a08:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    5a0c:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    5a10:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5a14:	6d5f5f28 	ldclvs	15, cr5, [pc, #-160]	; 597c <f_open+0x2d0>
    5a18:	6f6c6c61 	svcvs	0x006c6c61
    5a1c:	295f5f63 	ldmdbcs	pc, {r0, r1, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5a20:	fd010029 	stc2	0, cr0, [r1, #-164]	; 0xffffff5c
    5a24:	705f5f02 	subsvc	r5, pc, r2, lsl #30
    5a28:	20657275 	rsbcs	r7, r5, r5, ror r2
    5a2c:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    5a30:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    5a34:	5f657475 	svcpl	0x00657475
    5a38:	5f28285f 	svcpl	0x0028285f
    5a3c:	7275705f 	rsbsvc	r7, r5, #95	; 0x5f
    5a40:	295f5f65 	ldmdbcs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5a44:	84010029 	strhi	r0, [r1], #-41	; 0xffffffd7
    5a48:	615f5f03 	cmpvs	pc, r3, lsl #30
    5a4c:	7961776c 	stmdbvc	r1!, {r2, r3, r5, r6, r8, r9, sl, ip, sp, lr}^
    5a50:	6e695f73 	mcrvs	15, 3, r5, cr9, cr3, {3}
    5a54:	656e696c 	strbvs	r6, [lr, #-2412]!	; 0xfffff694
    5a58:	615f5f20 	cmpvs	pc, r0, lsr #30
    5a5c:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    5a60:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    5a64:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5a68:	6c615f5f 	stclvs	15, cr5, [r1], #-380	; 0xfffffe84
    5a6c:	73796177 	cmnvc	r9, #-1073741795	; 0xc000001d
    5a70:	6c6e695f 			; <UNDEFINED> instruction: 0x6c6e695f
    5a74:	5f656e69 	svcpl	0x00656e69
    5a78:	0029295f 	eoreq	r2, r9, pc, asr r9
    5a7c:	5f038a01 	svcpl	0x00038a01
    5a80:	696f6e5f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, fp, sp, lr}^	; <UNPREDICTABLE>
    5a84:	6e696c6e 	cdpvs	12, 6, cr6, cr9, cr14, {3}
    5a88:	5f5f2065 	svcpl	0x005f2065
    5a8c:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    5a90:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    5a94:	205f5f65 	subscs	r5, pc, r5, ror #30
    5a98:	5f5f2828 	svcpl	0x005f2828
    5a9c:	6e696f6e 	cdpvs	15, 6, cr6, cr9, cr14, {3}
    5aa0:	656e696c 	strbvs	r6, [lr, #-2412]!	; 0xfffff694
    5aa4:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5aa8:	03900100 	orrseq	r0, r0, #0, 2
    5aac:	6f6e5f5f 	svcvs	0x006e5f5f
    5ab0:	6c756e6e 	ldclvs	14, cr6, [r5], #-440	; 0xfffffe48
    5ab4:	2978286c 	ldmdbcs	r8!, {r2, r3, r5, r6, fp, sp}^
    5ab8:	615f5f20 	cmpvs	pc, r0, lsr #30
    5abc:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    5ac0:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    5ac4:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5ac8:	6f6e5f5f 	svcvs	0x006e5f5f
    5acc:	6c756e6e 	ldclvs	14, cr6, [r5], #-440	; 0xfffffe48
    5ad0:	285f5f6c 	ldmdacs	pc, {r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5ad4:	29292978 	stmdbcs	r9!, {r3, r4, r5, r6, r8, fp, sp}
    5ad8:	03910100 	orrseq	r0, r1, #0, 2
    5adc:	6f6e5f5f 	svcvs	0x006e5f5f
    5ae0:	6c756e6e 	ldclvs	14, cr6, [r5], #-440	; 0xfffffe48
    5ae4:	6c615f6c 	stclvs	15, cr5, [r1], #-432	; 0xfffffe50
    5ae8:	5f5f206c 	svcpl	0x005f206c
    5aec:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    5af0:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    5af4:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5af8:	6e5f5f28 	cdpvs	15, 5, cr5, cr15, cr8, {1}
    5afc:	756e6e6f 	strbvc	r6, [lr, #-3695]!	; 0xfffff191
    5b00:	5f5f6c6c 	svcpl	0x005f6c6c
    5b04:	01002929 	tsteq	r0, r9, lsr #18
    5b08:	5f5f0398 	svcpl	0x005f0398
    5b0c:	74736166 	ldrbtvc	r6, [r3], #-358	; 0xfffffe9a
    5b10:	6c6c6163 	stfvse	f6, [ip], #-396	; 0xfffffe74
    5b14:	615f5f20 	cmpvs	pc, r0, lsr #30
    5b18:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    5b1c:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    5b20:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5b24:	61665f5f 	cmnvs	r6, pc, asr pc
    5b28:	61637473 	smcvs	14147	; 0x3743
    5b2c:	5f5f6c6c 	svcpl	0x005f6c6c
    5b30:	01002929 	tsteq	r0, r9, lsr #18
    5b34:	5f5f0399 	svcpl	0x005f0399
    5b38:	75736572 	ldrbvc	r6, [r3, #-1394]!	; 0xfffffa8e
    5b3c:	755f746c 	ldrbvc	r7, [pc, #-1132]	; 56d8 <f_open+0x2c>
    5b40:	635f6573 	cmpvs	pc, #482344960	; 0x1cc00000
    5b44:	6b636568 	blvs	18df0ec <__mprec_tinytens+0x18ba87c>
    5b48:	615f5f20 	cmpvs	pc, r0, lsr #30
    5b4c:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    5b50:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    5b54:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5b58:	61775f5f 	cmnvs	r7, pc, asr pc
    5b5c:	755f6e72 	ldrbvc	r6, [pc, #-3698]	; 4cf2 <LPC2388_Initialize+0x1296>
    5b60:	6573756e 	ldrbvs	r7, [r3, #-1390]!	; 0xfffffa92
    5b64:	65725f64 	ldrbvs	r5, [r2, #-3940]!	; 0xfffff09c
    5b68:	746c7573 	strbtvc	r7, [ip], #-1395	; 0xfffffa8d
    5b6c:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5b70:	03a00100 	moveq	r0, #0, 2
    5b74:	65725f5f 	ldrbvs	r5, [r2, #-3935]!	; 0xfffff0a1
    5b78:	6e727574 	mrcvs	5, 3, r7, cr2, cr4, {3}
    5b7c:	77745f73 			; <UNDEFINED> instruction: 0x77745f73
    5b80:	20656369 	rsbcs	r6, r5, r9, ror #6
    5b84:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    5b88:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    5b8c:	5f657475 	svcpl	0x00657475
    5b90:	5f28285f 	svcpl	0x0028285f
    5b94:	7465725f 	strbtvc	r7, [r5], #-607	; 0xfffffda1
    5b98:	736e7275 	cmnvc	lr, #1342177287	; 0x50000007
    5b9c:	6977745f 	ldmdbvs	r7!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}^
    5ba0:	5f5f6563 	svcpl	0x005f6563
    5ba4:	01002929 	tsteq	r0, r9, lsr #18
    5ba8:	5f5f03a6 	svcpl	0x005f03a6
    5bac:	65726e75 	ldrbvs	r6, [r2, #-3701]!	; 0xfffff18b
    5bb0:	61686361 	cmnvs	r8, r1, ror #6
    5bb4:	28656c62 	stmdacs	r5!, {r1, r5, r6, sl, fp, sp, lr}^
    5bb8:	5f5f2029 	svcpl	0x005f2029
    5bbc:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    5bc0:	5f6e6974 	svcpl	0x006e6974
    5bc4:	65726e75 	ldrbvs	r6, [r2, #-3701]!	; 0xfffff18b
    5bc8:	61686361 	cmnvs	r8, r1, ror #6
    5bcc:	28656c62 	stmdacs	r5!, {r1, r5, r6, sl, fp, sp, lr}^
    5bd0:	ba010029 	blt	45c7c <__mprec_tinytens+0x2140c>
    5bd4:	725f5f03 	subsvc	r5, pc, #3, 30
    5bd8:	72747365 	rsbsvc	r7, r4, #-1811939327	; 0x94000001
    5bdc:	20746369 	rsbscs	r6, r4, r9, ror #6
    5be0:	74736572 	ldrbtvc	r6, [r3], #-1394	; 0xfffffa8e
    5be4:	74636972 	strbtvc	r6, [r3], #-2418	; 0xfffff68e
    5be8:	03db0100 	bicseq	r0, fp, #0, 2
    5bec:	72705f5f 	rsbsvc	r5, r0, #380	; 0x17c
    5bf0:	63696465 	cmnvs	r9, #1694498816	; 0x65000000
    5bf4:	72745f74 	rsbsvc	r5, r4, #116, 30	; 0x1d0
    5bf8:	65286575 	strvs	r6, [r8, #-1397]!	; 0xfffffa8b
    5bfc:	20297078 	eorcs	r7, r9, r8, ror r0
    5c00:	75625f5f 	strbvc	r5, [r2, #-3935]!	; 0xfffff0a1
    5c04:	69746c69 	ldmdbvs	r4!, {r0, r3, r5, r6, sl, fp, sp, lr}^
    5c08:	78655f6e 	stmdavc	r5!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    5c0c:	74636570 	strbtvc	r6, [r3], #-1392	; 0xfffffa90
    5c10:	78652828 	stmdavc	r5!, {r3, r5, fp, sp}^
    5c14:	202c2970 	eorcs	r2, ip, r0, ror r9
    5c18:	01002931 	tsteq	r0, r1, lsr r9
    5c1c:	5f5f03dc 	svcpl	0x005f03dc
    5c20:	64657270 	strbtvs	r7, [r5], #-624	; 0xfffffd90
    5c24:	5f746369 	svcpl	0x00746369
    5c28:	736c6166 	cmnvc	ip, #-2147483623	; 0x80000019
    5c2c:	78652865 	stmdavc	r5!, {r0, r2, r5, r6, fp, sp}^
    5c30:	5f202970 	svcpl	0x00202970
    5c34:	6975625f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
    5c38:	6e69746c 	cdpvs	4, 6, cr7, cr9, cr12, {3}
    5c3c:	7078655f 	rsbsvc	r6, r8, pc, asr r5
    5c40:	28746365 	ldmdacs	r4!, {r0, r2, r5, r6, r8, r9, sp, lr}^
    5c44:	70786528 	rsbsvc	r6, r8, r8, lsr #10
    5c48:	30202c29 	eorcc	r2, r0, r9, lsr #24
    5c4c:	e3010029 	movw	r0, #4137	; 0x1029
    5c50:	6e5f5f03 	cdpvs	15, 5, cr5, cr15, cr3, {0}
    5c54:	5f6c6c75 	svcpl	0x006c6c75
    5c58:	746e6573 	strbtvc	r6, [lr], #-1395	; 0xfffffa8d
    5c5c:	6c656e69 	stclvs	14, cr6, [r5], #-420	; 0xfffffe5c
    5c60:	615f5f20 	cmpvs	pc, r0, lsr #30
    5c64:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    5c68:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    5c6c:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5c70:	65735f5f 	ldrbvs	r5, [r3, #-3935]!	; 0xfffff0a1
    5c74:	6e69746e 	cdpvs	4, 6, cr7, cr9, cr14, {3}
    5c78:	5f5f6c65 	svcpl	0x005f6c65
    5c7c:	01002929 	tsteq	r0, r9, lsr #18
    5c80:	5f5f03e4 	svcpl	0x005f03e4
    5c84:	6f707865 	svcvs	0x00707865
    5c88:	64657472 	strbtvs	r7, [r5], #-1138	; 0xfffffb8e
    5c8c:	615f5f20 	cmpvs	pc, r0, lsr #30
    5c90:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    5c94:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    5c98:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5c9c:	69765f5f 	ldmdbvs	r6!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    5ca0:	69626973 	stmdbvs	r2!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
    5ca4:	7974696c 	ldmdbvc	r4!, {r2, r3, r5, r6, r8, fp, sp, lr}^
    5ca8:	22285f5f 	eorcs	r5, r8, #380	; 0x17c
    5cac:	61666564 	cmnvs	r6, r4, ror #10
    5cb0:	22746c75 	rsbscs	r6, r4, #29952	; 0x7500
    5cb4:	00292929 	eoreq	r2, r9, r9, lsr #18
    5cb8:	5f03e701 	svcpl	0x0003e701
    5cbc:	6469685f 	strbtvs	r6, [r9], #-2143	; 0xfffff7a1
    5cc0:	206e6564 	rsbcs	r6, lr, r4, ror #10
    5cc4:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    5cc8:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    5ccc:	5f657475 	svcpl	0x00657475
    5cd0:	5f28285f 	svcpl	0x0028285f
    5cd4:	7369765f 	cmnvc	r9, #99614720	; 0x5f00000
    5cd8:	6c696269 	sfmvs	f6, 2, [r9], #-420	; 0xfffffe5c
    5cdc:	5f797469 	svcpl	0x00797469
    5ce0:	6822285f 	stmdavs	r2!, {r0, r1, r2, r3, r4, r6, fp, sp}
    5ce4:	65646469 	strbvs	r6, [r4, #-1129]!	; 0xfffffb97
    5ce8:	2929226e 	stmdbcs	r9!, {r1, r2, r3, r5, r6, r9, sp}
    5cec:	f1010029 	setend	le
    5cf0:	6f5f5f03 	svcvs	0x005f5f03
    5cf4:	65736666 	ldrbvs	r6, [r3, #-1638]!	; 0xfffff99a
    5cf8:	28666f74 	stmdacs	r6!, {r2, r4, r5, r6, r8, r9, sl, fp, sp, lr}^
    5cfc:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    5d00:	6569662c 	strbvs	r6, [r9, #-1580]!	; 0xfffff9d4
    5d04:	2029646c 	eorcs	r6, r9, ip, ror #8
    5d08:	7366666f 	cmnvc	r6, #116391936	; 0x6f00000
    5d0c:	666f7465 	strbtvs	r7, [pc], -r5, ror #8
    5d10:	70797428 	rsbsvc	r7, r9, r8, lsr #8
    5d14:	66202c65 	strtvs	r2, [r0], -r5, ror #24
    5d18:	646c6569 	strbtvs	r6, [ip], #-1385	; 0xfffffa97
    5d1c:	f2010029 	vhadd.s8	d0, d1, d25
    5d20:	725f5f03 	subsvc	r5, pc, #3, 30
    5d24:	65676e61 	strbvs	r6, [r7, #-3681]!	; 0xfffff19f
    5d28:	7428666f 	strtvc	r6, [r8], #-1647	; 0xfffff991
    5d2c:	2c657079 	stclcs	0, cr7, [r5], #-484	; 0xfffffe1c
    5d30:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
    5d34:	6e652c74 	mcrvs	12, 3, r2, cr5, cr4, {3}
    5d38:	28202964 	stmdacs	r0!, {r2, r5, r6, r8, fp, sp}
    5d3c:	666f5f5f 	uqsaxvs	r5, pc, pc	; <UNPREDICTABLE>
    5d40:	74657366 	strbtvc	r7, [r5], #-870	; 0xfffffc9a
    5d44:	7428666f 	strtvc	r6, [r8], #-1647	; 0xfffff991
    5d48:	2c657079 	stclcs	0, cr7, [r5], #-484	; 0xfffffe1c
    5d4c:	646e6520 	strbtvs	r6, [lr], #-1312	; 0xfffffae0
    5d50:	202d2029 	eorcs	r2, sp, r9, lsr #32
    5d54:	666f5f5f 	uqsaxvs	r5, pc, pc	; <UNPREDICTABLE>
    5d58:	74657366 	strbtvc	r7, [r5], #-870	; 0xfffffc9a
    5d5c:	7428666f 	strtvc	r6, [r8], #-1647	; 0xfffff991
    5d60:	2c657079 	stclcs	0, cr7, [r5], #-484	; 0xfffffe1c
    5d64:	61747320 	cmnvs	r4, r0, lsr #6
    5d68:	29297472 	stmdbcs	r9!, {r1, r4, r5, r6, sl, ip, sp, lr}
    5d6c:	03fc0100 	mvnseq	r0, #0, 2
    5d70:	6f635f5f 	svcvs	0x00635f5f
    5d74:	6961746e 	stmdbvs	r1!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}^
    5d78:	6f72656e 	svcvs	0x0072656e
    5d7c:	2c782866 	ldclcs	8, cr2, [r8], #-408	; 0xfffffe68
    5d80:	296d2c73 	stmdbcs	sp!, {r0, r1, r4, r5, r6, sl, fp, sp}^
    5d84:	207b2820 	rsbscs	r2, fp, r0, lsr #16
    5d88:	736e6f63 	cmnvc	lr, #396	; 0x18c
    5d8c:	6f762074 	svcvs	0x00762074
    5d90:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5d94:	5f20656c 	svcpl	0x0020656c
    5d98:	7079745f 	rsbsvc	r7, r9, pc, asr r4
    5d9c:	28666f65 	stmdacs	r6!, {r0, r2, r5, r6, r8, r9, sl, fp, sp, lr}^
    5da0:	20732828 	rsbscs	r2, r3, r8, lsr #16
    5da4:	2930292a 	ldmdbcs	r0!, {r1, r3, r5, r8, fp, sp}
    5da8:	296d3e2d 	stmdbcs	sp!, {r0, r2, r3, r5, r9, sl, fp, ip, sp}^
    5dac:	5f5f2a20 	svcpl	0x005f2a20
    5db0:	203d2078 	eorscs	r2, sp, r8, ror r0
    5db4:	3b297828 	blcc	a63e5c <__mprec_tinytens+0xa3f5ec>
    5db8:	445f5f20 	ldrbmi	r5, [pc], #-3872	; 5dc0 <f_write+0x1a0>
    5dbc:	41555145 	cmpmi	r5, r5, asr #2
    5dc0:	5946494c 	stmdbpl	r6, {r2, r3, r6, r8, fp, lr}^
    5dc4:	2a207328 	bcs	822a6c <__mprec_tinytens+0x7fe1fc>
    5dc8:	6328202c 			; <UNDEFINED> instruction: 0x6328202c
    5dcc:	74736e6f 	ldrbtvc	r6, [r3], #-3695	; 0xfffff191
    5dd0:	6c6f7620 	stclvs	6, cr7, [pc], #-128	; 5d58 <f_write+0x138>
    5dd4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5dd8:	68632065 	stmdavs	r3!, {r0, r2, r5, r6, sp}^
    5ddc:	2a207261 	bcs	822768 <__mprec_tinytens+0x7fdef8>
    5de0:	785f5f29 	ldmdavc	pc, {r0, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5de4:	5f202d20 	svcpl	0x00202d20
    5de8:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
    5dec:	6f746573 	svcvs	0x00746573
    5df0:	2c732866 	ldclcs	8, cr2, [r3], #-408	; 0xfffffe68
    5df4:	29296d20 	stmdbcs	r9!, {r5, r8, sl, fp, sp, lr}
    5df8:	00297d3b 	eoreq	r7, r9, fp, lsr sp
    5dfc:	5f049201 	svcpl	0x00049201
    5e00:	6972705f 	ldmdbvs	r2!, {r0, r1, r2, r3, r4, r6, ip, sp, lr}^
    5e04:	6c66746e 	cfstrdvs	mvd7, [r6], #-440	; 0xfffffe48
    5e08:	28656b69 	stmdacs	r5!, {r0, r3, r5, r6, r8, r9, fp, sp, lr}^
    5e0c:	61746d66 	cmnvs	r4, r6, ror #26
    5e10:	662c6772 			; <UNDEFINED> instruction: 0x662c6772
    5e14:	74737269 	ldrbtvc	r7, [r3], #-617	; 0xfffffd97
    5e18:	61726176 	cmnvs	r2, r6, ror r1
    5e1c:	20296772 	eorcs	r6, r9, r2, ror r7
    5e20:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    5e24:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    5e28:	5f657475 	svcpl	0x00657475
    5e2c:	5f28285f 	svcpl	0x0028285f
    5e30:	726f665f 	rsbvc	r6, pc, #99614720	; 0x5f00000
    5e34:	5f74616d 	svcpl	0x0074616d
    5e38:	5f28205f 	svcpl	0x0028205f
    5e3c:	6972705f 	ldmdbvs	r2!, {r0, r1, r2, r3, r4, r6, ip, sp, lr}^
    5e40:	5f66746e 	svcpl	0x0066746e
    5e44:	66202c5f 			; <UNDEFINED> instruction: 0x66202c5f
    5e48:	7261746d 	rsbvc	r7, r1, #1828716544	; 0x6d000000
    5e4c:	66202c67 	strtvs	r2, [r0], -r7, ror #24
    5e50:	74737269 	ldrbtvc	r7, [r3], #-617	; 0xfffffd97
    5e54:	61726176 	cmnvs	r2, r6, ror r1
    5e58:	29296772 	stmdbcs	r9!, {r1, r4, r5, r6, r8, r9, sl, sp, lr}
    5e5c:	94010029 	strls	r0, [r1], #-41	; 0xffffffd7
    5e60:	735f5f04 	cmpvc	pc, #4, 30
    5e64:	666e6163 	strbtvs	r6, [lr], -r3, ror #2
    5e68:	656b696c 	strbvs	r6, [fp, #-2412]!	; 0xfffff694
    5e6c:	746d6628 	strbtvc	r6, [sp], #-1576	; 0xfffff9d8
    5e70:	2c677261 	sfmcs	f7, 2, [r7], #-388	; 0xfffffe7c
    5e74:	73726966 	cmnvc	r2, #1671168	; 0x198000
    5e78:	72617674 	rsbvc	r7, r1, #116, 12	; 0x7400000
    5e7c:	29677261 	stmdbcs	r7!, {r0, r5, r6, r9, ip, sp, lr}^
    5e80:	615f5f20 	cmpvs	pc, r0, lsr #30
    5e84:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    5e88:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    5e8c:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5e90:	6f665f5f 	svcvs	0x00665f5f
    5e94:	74616d72 	strbtvc	r6, [r1], #-3442	; 0xfffff28e
    5e98:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5e9c:	63735f5f 	cmnvs	r3, #380	; 0x17c
    5ea0:	5f666e61 	svcpl	0x00666e61
    5ea4:	66202c5f 			; <UNDEFINED> instruction: 0x66202c5f
    5ea8:	7261746d 	rsbvc	r7, r1, #1828716544	; 0x6d000000
    5eac:	66202c67 	strtvs	r2, [r0], -r7, ror #24
    5eb0:	74737269 	ldrbtvc	r7, [r3], #-617	; 0xfffffd97
    5eb4:	61726176 	cmnvs	r2, r6, ror r1
    5eb8:	29296772 	stmdbcs	r9!, {r1, r4, r5, r6, r8, r9, sl, sp, lr}
    5ebc:	96010029 	strls	r0, [r1], -r9, lsr #32
    5ec0:	665f5f04 	ldrbvs	r5, [pc], -r4, lsl #30
    5ec4:	616d726f 	cmnvs	sp, pc, ror #4
    5ec8:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
    5ecc:	6d662867 	stclvs	8, cr2, [r6, #-412]!	; 0xfffffe64
    5ed0:	67726174 			; <UNDEFINED> instruction: 0x67726174
    5ed4:	5f5f2029 	svcpl	0x005f2029
    5ed8:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    5edc:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    5ee0:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5ee4:	665f5f28 	ldrbvs	r5, [pc], -r8, lsr #30
    5ee8:	616d726f 	cmnvs	sp, pc, ror #4
    5eec:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
    5ef0:	205f5f67 	subscs	r5, pc, r7, ror #30
    5ef4:	746d6628 	strbtvc	r6, [sp], #-1576	; 0xfffff9d8
    5ef8:	29677261 	stmdbcs	r7!, {r0, r5, r6, r9, ip, sp, lr}^
    5efc:	01002929 	tsteq	r0, r9, lsr #18
    5f00:	5f5f0497 	svcpl	0x005f0497
    5f04:	66727473 			; <UNDEFINED> instruction: 0x66727473
    5f08:	6c6e6f6d 	stclvs	15, cr6, [lr], #-436	; 0xfffffe4c
    5f0c:	28656b69 	stmdacs	r5!, {r0, r3, r5, r6, r8, r9, fp, sp, lr}^
    5f10:	61746d66 	cmnvs	r4, r6, ror #26
    5f14:	662c6772 			; <UNDEFINED> instruction: 0x662c6772
    5f18:	74737269 	ldrbtvc	r7, [r3], #-617	; 0xfffffd97
    5f1c:	61726176 	cmnvs	r2, r6, ror r1
    5f20:	20296772 	eorcs	r6, r9, r2, ror r7
    5f24:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    5f28:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    5f2c:	5f657475 	svcpl	0x00657475
    5f30:	5f28285f 	svcpl	0x0028285f
    5f34:	726f665f 	rsbvc	r6, pc, #99614720	; 0x5f00000
    5f38:	5f74616d 	svcpl	0x0074616d
    5f3c:	5f28205f 	svcpl	0x0028205f
    5f40:	7274735f 	rsbsvc	r7, r4, #2080374785	; 0x7c000001
    5f44:	6e6f6d66 	cdpvs	13, 6, cr6, cr15, cr6, {3}
    5f48:	202c5f5f 	eorcs	r5, ip, pc, asr pc
    5f4c:	61746d66 	cmnvs	r4, r6, ror #26
    5f50:	202c6772 	eorcs	r6, ip, r2, ror r7
    5f54:	73726966 	cmnvc	r2, #1671168	; 0x198000
    5f58:	72617674 	rsbvc	r7, r1, #116, 12	; 0x7400000
    5f5c:	29677261 	stmdbcs	r7!, {r0, r5, r6, r9, ip, sp, lr}^
    5f60:	01002929 	tsteq	r0, r9, lsr #18
    5f64:	5f5f0499 	svcpl	0x005f0499
    5f68:	66727473 			; <UNDEFINED> instruction: 0x66727473
    5f6c:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
    5f70:	656b696c 	strbvs	r6, [fp, #-2412]!	; 0xfffff694
    5f74:	746d6628 	strbtvc	r6, [sp], #-1576	; 0xfffff9d8
    5f78:	2c677261 	sfmcs	f7, 2, [r7], #-388	; 0xfffffe7c
    5f7c:	73726966 	cmnvc	r2, #1671168	; 0x198000
    5f80:	72617674 	rsbvc	r7, r1, #116, 12	; 0x7400000
    5f84:	29677261 	stmdbcs	r7!, {r0, r5, r6, r9, ip, sp, lr}^
    5f88:	615f5f20 	cmpvs	pc, r0, lsr #30
    5f8c:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    5f90:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    5f94:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5f98:	6f665f5f 	svcvs	0x00665f5f
    5f9c:	74616d72 	strbtvc	r6, [r1], #-3442	; 0xfffff28e
    5fa0:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5fa4:	74735f5f 	ldrbtvc	r5, [r3], #-3935	; 0xfffff0a1
    5fa8:	69746672 	ldmdbvs	r4!, {r1, r4, r5, r6, r9, sl, sp, lr}^
    5fac:	5f5f656d 	svcpl	0x005f656d
    5fb0:	6d66202c 	stclvs	0, cr2, [r6, #-176]!	; 0xffffff50
    5fb4:	67726174 			; <UNDEFINED> instruction: 0x67726174
    5fb8:	6966202c 	stmdbvs	r6!, {r2, r3, r5, sp}^
    5fbc:	76747372 			; <UNDEFINED> instruction: 0x76747372
    5fc0:	72617261 	rsbvc	r7, r1, #268435462	; 0x10000006
    5fc4:	29292967 	stmdbcs	r9!, {r0, r1, r2, r5, r6, r8, fp, sp}
    5fc8:	04a30100 	strteq	r0, [r3], #256	; 0x100
    5fcc:	72705f5f 	rsbsvc	r5, r0, #380	; 0x17c
    5fd0:	66746e69 	ldrbtvs	r6, [r4], -r9, ror #28
    5fd4:	6b696c30 	blvs	1a6109c <__mprec_tinytens+0x1a3c82c>
    5fd8:	6d662865 	stclvs	8, cr2, [r6, #-404]!	; 0xfffffe6c
    5fdc:	67726174 			; <UNDEFINED> instruction: 0x67726174
    5fe0:	7269662c 	rsbvc	r6, r9, #44, 12	; 0x2c00000
    5fe4:	61767473 	cmnvs	r6, r3, ror r4
    5fe8:	67726172 			; <UNDEFINED> instruction: 0x67726172
    5fec:	01002029 	tsteq	r0, r9, lsr #32
    5ff0:	5f5f04a8 	svcpl	0x005f04a8
    5ff4:	6f727473 	svcvs	0x00727473
    5ff8:	725f676e 	subsvc	r6, pc, #28835840	; 0x1b80000
    5ffc:	72656665 	rsbvc	r6, r5, #105906176	; 0x6500000
    6000:	65636e65 	strbvs	r6, [r3, #-3685]!	; 0xfffff19b
    6004:	6d797328 	ldclvs	3, cr7, [r9, #-160]!	; 0xffffff60
    6008:	696c612c 	stmdbvs	ip!, {r2, r3, r5, r8, sp, lr}^
    600c:	79737361 	ldmdbvc	r3!, {r0, r5, r6, r8, r9, ip, sp, lr}^
    6010:	6520296d 	strvs	r2, [r0, #-2413]!	; 0xfffff693
    6014:	72657478 	rsbvc	r7, r5, #120, 8	; 0x78000000
    6018:	5f5f206e 	svcpl	0x005f206e
    601c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    6020:	2820666f 	stmdacs	r0!, {r0, r1, r2, r3, r5, r6, r9, sl, sp, lr}
    6024:	296d7973 	stmdbcs	sp!, {r0, r1, r4, r5, r6, r8, fp, ip, sp, lr}^
    6028:	696c6120 	stmdbvs	ip!, {r5, r8, sp, lr}^
    602c:	79737361 	ldmdbvc	r3!, {r0, r5, r6, r8, r9, ip, sp, lr}^
    6030:	5f5f206d 	svcpl	0x005f206d
    6034:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    6038:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    603c:	205f5f65 	subscs	r5, pc, r5, ror #30
    6040:	5f5f2828 	svcpl	0x005f2828
    6044:	61696c61 	cmnvs	r9, r1, ror #24
    6048:	205f5f73 	subscs	r5, pc, r3, ror pc	; <UNPREDICTABLE>
    604c:	79732328 	ldmdbvc	r3!, {r3, r5, r8, r9, sp}^
    6050:	2929296d 	stmdbcs	r9!, {r0, r2, r3, r5, r6, r8, fp, sp}
    6054:	04ad0100 	strteq	r0, [sp], #256	; 0x100
    6058:	65775f5f 	ldrbvs	r5, [r7, #-3935]!	; 0xfffff0a1
    605c:	725f6b61 	subsvc	r6, pc, #99328	; 0x18400
    6060:	72656665 	rsbvc	r6, r5, #105906176	; 0x6500000
    6064:	65636e65 	strbvs	r6, [r3, #-3685]!	; 0xfffff19b
    6068:	6d797328 	ldclvs	3, cr7, [r9, #-160]!	; 0xffffff60
    606c:	696c612c 	stmdbvs	ip!, {r2, r3, r5, r8, sp, lr}^
    6070:	20297361 	eorcs	r7, r9, r1, ror #6
    6074:	73615f5f 	cmnvc	r1, #380	; 0x17c
    6078:	285f5f6d 	ldmdacs	pc, {r0, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    607c:	65772e22 	ldrbvs	r2, [r7, #-3618]!	; 0xfffff1de
    6080:	22206b61 	eorcs	r6, r0, #99328	; 0x18400
    6084:	6c612320 	stclvs	3, cr2, [r1], #-128	; 0xffffff80
    6088:	29736169 	ldmdbcs	r3!, {r0, r3, r5, r6, r8, sp, lr}^
    608c:	5f5f203b 	svcpl	0x005f203b
    6090:	5f6d7361 	svcpl	0x006d7361
    6094:	2e22285f 	mcrcs	8, 1, r2, cr2, cr15, {2}
    6098:	20757165 	rsbscs	r7, r5, r5, ror #2
    609c:	61232022 			; <UNDEFINED> instruction: 0x61232022
    60a0:	7361696c 	cmnvc	r1, #108, 18	; 0x1b0000
    60a4:	202c2220 	eorcs	r2, ip, r0, lsr #4
    60a8:	73232022 			; <UNDEFINED> instruction: 0x73232022
    60ac:	00296d79 	eoreq	r6, r9, r9, ror sp
    60b0:	5f04b001 	svcpl	0x0004b001
    60b4:	7261775f 	rsbvc	r7, r1, #24903680	; 0x17c0000
    60b8:	65725f6e 	ldrbvs	r5, [r2, #-3950]!	; 0xfffff092
    60bc:	65726566 	ldrbvs	r6, [r2, #-1382]!	; 0xfffffa9a
    60c0:	7365636e 	cmnvc	r5, #-1207959551	; 0xb8000001
    60c4:	6d797328 	ldclvs	3, cr7, [r9, #-160]!	; 0xffffff60
    60c8:	67736d2c 	ldrbvs	r6, [r3, -ip, lsr #26]!
    60cc:	5f5f2029 	svcpl	0x005f2029
    60d0:	5f6d7361 	svcpl	0x006d7361
    60d4:	2e22285f 	mcrcs	8, 1, r2, cr2, cr15, {2}
    60d8:	74636573 	strbtvc	r6, [r3], #-1395	; 0xfffffa8d
    60dc:	206e6f69 	rsbcs	r6, lr, r9, ror #30
    60e0:	756e672e 	strbvc	r6, [lr, #-1838]!	; 0xfffff8d2
    60e4:	7261772e 	rsbvc	r7, r1, #12058624	; 0xb80000
    60e8:	676e696e 	strbvs	r6, [lr, -lr, ror #18]!
    60ec:	2320222e 			; <UNDEFINED> instruction: 0x2320222e
    60f0:	296d7973 	stmdbcs	sp!, {r0, r1, r4, r5, r6, r8, fp, ip, sp, lr}^
    60f4:	5f5f203b 	svcpl	0x005f203b
    60f8:	5f6d7361 	svcpl	0x006d7361
    60fc:	2e22285f 	mcrcs	8, 1, r2, cr2, cr15, {2}
    6100:	69637361 	stmdbvs	r3!, {r0, r5, r6, r8, r9, ip, sp, lr}^
    6104:	225c207a 	subscs	r2, ip, #122	; 0x7a
    6108:	736d2022 	cmnvc	sp, #34	; 0x22
    610c:	5c222067 	stcpl	0, cr2, [r2], #-412	; 0xfffffe64
    6110:	3b292222 	blcc	a4e9a0 <__mprec_tinytens+0xa2a130>
    6114:	615f5f20 	cmpvs	pc, r0, lsr #30
    6118:	5f5f6d73 	svcpl	0x005f6d73
    611c:	702e2228 	eorvc	r2, lr, r8, lsr #4
    6120:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
    6124:	2273756f 	rsbscs	r7, r3, #465567744	; 0x1bc00000
    6128:	b4010029 	strlt	r0, [r1], #-41	; 0xffffffd7
    612c:	735f5f04 	cmpvc	pc, #4, 30
    6130:	635f6d79 	cmpvs	pc, #7744	; 0x1e40
    6134:	61706d6f 	cmnvs	r0, pc, ror #26
    6138:	79732874 	ldmdbvc	r3!, {r2, r4, r5, r6, fp, sp}^
    613c:	6d692c6d 	stclvs	12, cr2, [r9, #-436]!	; 0xfffffe4c
    6140:	762c6c70 			; <UNDEFINED> instruction: 0x762c6c70
    6144:	64697265 	strbtvs	r7, [r9], #-613	; 0xfffffd9b
    6148:	5f5f2029 	svcpl	0x005f2029
    614c:	5f6d7361 	svcpl	0x006d7361
    6150:	2e22285f 	mcrcs	8, 1, r2, cr2, cr15, {2}
    6154:	766d7973 			; <UNDEFINED> instruction: 0x766d7973
    6158:	22207265 	eorcs	r7, r0, #1342177286	; 0x50000006
    615c:	6d692320 	stclvs	3, cr2, [r9, #-128]!	; 0xffffff80
    6160:	22206c70 	eorcs	r6, r0, #112, 24	; 0x7000
    6164:	2022202c 	eorcs	r2, r2, ip, lsr #32
    6168:	6d797323 	ldclvs	3, cr7, [r9, #-140]!	; 0xffffff74
    616c:	22402220 	subcs	r2, r0, #32, 4
    6170:	65762320 	ldrbvs	r2, [r6, #-800]!	; 0xfffffce0
    6174:	29646972 	stmdbcs	r4!, {r1, r4, r5, r6, r8, fp, sp, lr}^
    6178:	04b60100 	ldrteq	r0, [r6], #256	; 0x100
    617c:	79735f5f 	ldmdbvc	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    6180:	65645f6d 	strbvs	r5, [r4, #-3949]!	; 0xfffff093
    6184:	6c756166 	ldfvse	f6, [r5], #-408	; 0xfffffe68
    6188:	79732874 	ldmdbvc	r3!, {r2, r4, r5, r6, fp, sp}^
    618c:	6d692c6d 	stclvs	12, cr2, [r9, #-436]!	; 0xfffffe4c
    6190:	762c6c70 			; <UNDEFINED> instruction: 0x762c6c70
    6194:	64697265 	strbtvs	r7, [r9], #-613	; 0xfffffd9b
    6198:	5f5f2029 	svcpl	0x005f2029
    619c:	5f6d7361 	svcpl	0x006d7361
    61a0:	2e22285f 	mcrcs	8, 1, r2, cr2, cr15, {2}
    61a4:	766d7973 			; <UNDEFINED> instruction: 0x766d7973
    61a8:	22207265 	eorcs	r7, r0, #1342177286	; 0x50000006
    61ac:	6d692320 	stclvs	3, cr2, [r9, #-128]!	; 0xffffff80
    61b0:	22206c70 	eorcs	r6, r0, #112, 24	; 0x7000
    61b4:	2022202c 	eorcs	r2, r2, ip, lsr #32
    61b8:	6d797323 	ldclvs	3, cr7, [r9, #-140]!	; 0xffffff74
    61bc:	40402220 	submi	r2, r0, r0, lsr #4
    61c0:	76232022 	strtvc	r2, [r3], -r2, lsr #32
    61c4:	64697265 	strbtvs	r7, [r9], #-613	; 0xfffffd9b
    61c8:	d9010029 	stmdble	r1, {r0, r3, r5}
    61cc:	465f5f04 	ldrbmi	r5, [pc], -r4, lsl #30
    61d0:	49445342 	stmdbmi	r4, {r1, r6, r8, r9, ip, lr}^
    61d4:	29732844 	ldmdbcs	r3!, {r2, r6, fp, sp}^
    61d8:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    61dc:	20746375 	rsbscs	r6, r4, r5, ror r3
    61e0:	61685f5f 	cmnvs	r8, pc, asr pc
    61e4:	01006b63 	tsteq	r0, r3, ror #22
    61e8:	5f5f04dd 	svcpl	0x005f04dd
    61ec:	49534352 	ldmdbmi	r3, {r1, r4, r6, r8, r9, lr}^
    61f0:	29732844 	ldmdbcs	r3!, {r2, r6, fp, sp}^
    61f4:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    61f8:	20746375 	rsbscs	r6, r4, r5, ror r3
    61fc:	61685f5f 	cmnvs	r8, pc, asr pc
    6200:	01006b63 	tsteq	r0, r3, ror #22
    6204:	5f5f04e1 	svcpl	0x005f04e1
    6208:	49534352 	ldmdbmi	r3, {r1, r4, r6, r8, r9, lr}^
    620c:	4f535f44 	svcmi	0x00535f44
    6210:	45435255 	strbmi	r5, [r3, #-597]	; 0xfffffdab
    6214:	20297328 	eorcs	r7, r9, r8, lsr #6
    6218:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
    621c:	5f207463 	svcpl	0x00207463
    6220:	6361685f 	cmnvs	r1, #6225920	; 0x5f0000
    6224:	e501006b 	str	r0, [r1, #-107]	; 0xffffff95
    6228:	535f5f04 	cmppl	pc, #4, 30
    622c:	49534343 	ldmdbmi	r3, {r0, r1, r6, r8, r9, lr}^
    6230:	29732844 	ldmdbcs	r3!, {r2, r6, fp, sp}^
    6234:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    6238:	20746375 	rsbscs	r6, r4, r5, ror r3
    623c:	61685f5f 	cmnvs	r8, pc, asr pc
    6240:	01006b63 	tsteq	r0, r3, ror #22
    6244:	5f5f04e9 	svcpl	0x005f04e9
    6248:	59504f43 	ldmdbpl	r0, {r0, r1, r6, r8, r9, sl, fp, lr}^
    624c:	48474952 	stmdami	r7, {r1, r4, r6, r8, fp, lr}^
    6250:	29732854 	ldmdbcs	r3!, {r2, r4, r6, fp, sp}^
    6254:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    6258:	20746375 	rsbscs	r6, r4, r5, ror r3
    625c:	61685f5f 	cmnvs	r8, pc, asr pc
    6260:	01006b63 	tsteq	r0, r3, ror #22
    6264:	5f5f04ed 	svcpl	0x005f04ed
    6268:	4f434544 	svcmi	0x00434544
    626c:	2854534e 	ldmdacs	r4, {r1, r2, r3, r6, r8, r9, ip, lr}^
    6270:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    6274:	7261762c 	rsbvc	r7, r1, #44, 12	; 0x2c00000
    6278:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    627c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    6280:	5f5f2829 	svcpl	0x005f2829
    6284:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6288:	5f727470 	svcpl	0x00727470
    628c:	63282974 			; <UNDEFINED> instruction: 0x63282974
    6290:	74736e6f 	ldrbtvc	r6, [r3], #-3695	; 0xfffff191
    6294:	696f7620 	stmdbvs	pc!, {r5, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    6298:	292a2064 	stmdbcs	sl!, {r2, r5, r6, sp}
    629c:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    62a0:	01002929 	tsteq	r0, r9, lsr #18
    62a4:	5f5f04f1 	svcpl	0x005f04f1
    62a8:	4f564544 	svcmi	0x00564544
    62ac:	4954414c 	ldmdbmi	r4, {r2, r3, r6, r8, lr}^
    62b0:	7428454c 	strtvc	r4, [r8], #-1356	; 0xfffffab4
    62b4:	2c657079 	stclcs	0, cr7, [r5], #-484	; 0xfffffe1c
    62b8:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    62bc:	74282820 	strtvc	r2, [r8], #-2080	; 0xfffff7e0
    62c0:	29657079 	stmdbcs	r5!, {r0, r3, r4, r5, r6, ip, sp, lr}^
    62c4:	755f5f28 	ldrbvc	r5, [pc, #-3880]	; 53a4 <LPC2388_Initialize+0x1948>
    62c8:	70746e69 	rsbsvc	r6, r4, r9, ror #28
    62cc:	745f7274 	ldrbvc	r7, [pc], #-628	; 62d4 <f_getcwd+0x13c>
    62d0:	6f762829 	svcvs	0x00762829
    62d4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    62d8:	7620656c 	strtvc	r6, [r0], -ip, ror #10
    62dc:	2064696f 	rsbcs	r6, r4, pc, ror #18
    62e0:	7628292a 	strtvc	r2, [r8], -sl, lsr #18
    62e4:	29297261 	stmdbcs	r9!, {r0, r5, r6, r9, ip, sp, lr}
    62e8:	04f50100 	ldrbteq	r0, [r5], #256	; 0x100
    62ec:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    62f0:	4c415551 	cfstr64mi	mvdx5, [r1], {81}	; 0x51
    62f4:	28594649 	ldmdacs	r9, {r0, r3, r6, r9, sl, lr}^
    62f8:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    62fc:	7261762c 	rsbvc	r7, r1, #44, 12	; 0x2c00000
    6300:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    6304:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    6308:	5f5f2829 	svcpl	0x005f2829
    630c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6310:	5f727470 	svcpl	0x00727470
    6314:	63282974 			; <UNDEFINED> instruction: 0x63282974
    6318:	74736e6f 	ldrbtvc	r6, [r3], #-3695	; 0xfffff191
    631c:	6c6f7620 	stclvs	6, cr7, [pc], #-128	; 62a4 <f_getcwd+0x10c>
    6320:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6324:	6f762065 	svcvs	0x00762065
    6328:	2a206469 	bcs	81f4d4 <__mprec_tinytens+0x7fac64>
    632c:	61762829 	cmnvs	r6, r9, lsr #16
    6330:	00292972 	eoreq	r2, r9, r2, ror r9
    6334:	5f04fc01 	svcpl	0x0004fc01
    6338:	6e6e6f4e 	cdpvs	15, 6, cr6, cr14, cr14, {2}
    633c:	206c6c75 	rsbcs	r6, ip, r5, ror ip
    6340:	04fd0100 	ldrbteq	r0, [sp], #256	; 0x100
    6344:	6c754e5f 	ldclvs	14, cr4, [r5], #-380	; 0xfffffe84
    6348:	6c62616c 	stfvse	f6, [r2], #-432	; 0xfffffe50
    634c:	01002065 	tsteq	r0, r5, rrx
    6350:	4e5f04fe 	mrcmi	4, 2, r0, cr15, cr14, {7}
    6354:	5f6c6c75 	svcpl	0x006c6c75
    6358:	70736e75 	rsbsvc	r6, r3, r5, ror lr
    635c:	66696365 	strbtvs	r6, [r9], -r5, ror #6
    6360:	20646569 	rsbcs	r6, r4, r9, ror #10
    6364:	04ff0100 	ldrbteq	r0, [pc], #256	; 636c <f_getcwd+0x1d4>
    6368:	554e5f5f 	strbpl	r5, [lr, #-3935]	; 0xfffff0a1
    636c:	42414c4c 	submi	r4, r1, #76, 24	; 0x4c00
    6370:	54494c49 	strbpl	r4, [r9], #-3145	; 0xfffff3b7
    6374:	52505f59 	subspl	r5, r0, #356	; 0x164
    6378:	414d4741 	cmpmi	sp, r1, asr #14
    637c:	5355505f 	cmppl	r5, #95	; 0x5f
    6380:	01002048 	tsteq	r0, r8, asr #32
    6384:	5f5f0580 	svcpl	0x005f0580
    6388:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    638c:	4c494241 	sfmmi	f4, 2, [r9], {65}	; 0x41
    6390:	5f595449 	svcpl	0x00595449
    6394:	47415250 	smlsldmi	r5, r1, r0, r2
    6398:	505f414d 	subspl	r4, pc, sp, asr #2
    639c:	0020504f 	eoreq	r5, r0, pc, asr #32
    63a0:	5f059501 	svcpl	0x00059501
    63a4:	6772615f 			; <UNDEFINED> instruction: 0x6772615f
    63a8:	7079745f 	rsbsvc	r7, r9, pc, asr r4
    63ac:	61745f65 	cmnvs	r4, r5, ror #30
    63b0:	72612867 	rsbvc	r2, r1, #6750208	; 0x670000
    63b4:	696b5f67 	stmdbvs	fp!, {r0, r1, r2, r5, r6, r8, r9, sl, fp, ip, lr}^
    63b8:	612c646e 			; <UNDEFINED> instruction: 0x612c646e
    63bc:	695f6772 	ldmdbvs	pc, {r1, r4, r5, r6, r8, r9, sl, sp, lr}^	; <UNPREDICTABLE>
    63c0:	742c7864 	strtvc	r7, [ip], #-2148	; 0xfffff79c
    63c4:	5f657079 	svcpl	0x00657079
    63c8:	5f676174 	svcpl	0x00676174
    63cc:	29786469 	ldmdbcs	r8!, {r0, r3, r5, r6, sl, sp, lr}^
    63d0:	96010020 	strls	r0, [r1], -r0, lsr #32
    63d4:	645f5f05 	ldrbvs	r5, [pc], #-3845	; 63dc <f_lseek+0x2c>
    63d8:	74617461 	strbtvc	r7, [r1], #-1121	; 0xfffffb9f
    63dc:	5f657079 	svcpl	0x00657079
    63e0:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    63e4:	6761745f 			; <UNDEFINED> instruction: 0x6761745f
    63e8:	6e696b28 	vmulvs.f64	d22, d9, d24
    63ec:	79742c64 	ldmdbvc	r4!, {r2, r5, r6, sl, fp, sp}^
    63f0:	20296570 	eorcs	r6, r9, r0, ror r5
    63f4:	05a80100 	streq	r0, [r8, #256]!	; 0x100
    63f8:	6f6c5f5f 	svcvs	0x006c5f5f
    63fc:	615f6b63 	cmpvs	pc, r3, ror #22
    6400:	746f6e6e 	strbtvc	r6, [pc], #-3694	; 6408 <f_lseek+0x58>
    6404:	28657461 	stmdacs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    6408:	00202978 	eoreq	r2, r0, r8, ror r9
    640c:	5f05ac01 	svcpl	0x0005ac01
    6410:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    6414:	6c62616b 	stfvse	f6, [r2], #-428	; 0xfffffe54
    6418:	5f5f2065 	svcpl	0x005f2065
    641c:	6b636f6c 	blvs	18e21d4 <__mprec_tinytens+0x18bd964>
    6420:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    6424:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    6428:	6f6c2865 	svcvs	0x006c2865
    642c:	62616b63 	rsbvs	r6, r1, #101376	; 0x18c00
    6430:	0029656c 	eoreq	r6, r9, ip, ror #10
    6434:	5f05af01 	svcpl	0x0005af01
    6438:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    643c:	655f736b 	ldrbvs	r7, [pc, #-875]	; 60d9 <f_close+0x21>
    6440:	756c6378 	strbvc	r6, [ip, #-888]!	; 0xfffffc88
    6444:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    6448:	2e2e2e28 	cdpcs	14, 2, cr2, cr14, cr8, {1}
    644c:	5f5f2029 	svcpl	0x005f2029
    6450:	6b636f6c 	blvs	18e2208 <__mprec_tinytens+0x18bd998>
    6454:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    6458:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    645c:	78652865 	stmdavc	r5!, {r0, r2, r5, r6, fp, sp}^
    6460:	73756c63 	cmnvc	r5, #25344	; 0x6300
    6464:	5f657669 	svcpl	0x00657669
    6468:	6b636f6c 	blvs	18e2220 <__mprec_tinytens+0x18bd9b0>
    646c:	6e75665f 	mrcvs	6, 3, r6, cr5, cr15, {2}
    6470:	6f697463 	svcvs	0x00697463
    6474:	5f5f286e 	svcpl	0x005f286e
    6478:	415f4156 	cmpmi	pc, r6, asr r1	; <UNPREDICTABLE>
    647c:	5f534752 	svcpl	0x00534752
    6480:	0029295f 	eoreq	r2, r9, pc, asr r9
    6484:	5f05b101 	svcpl	0x0005b101
    6488:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    648c:	735f736b 	cmpvc	pc, #-1409286143	; 0xac000001
    6490:	65726168 	ldrbvs	r6, [r2, #-360]!	; 0xfffffe98
    6494:	2e2e2864 	cdpcs	8, 2, cr2, cr14, cr4, {3}
    6498:	5f20292e 	svcpl	0x0020292e
    649c:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    64a0:	6e615f6b 	cdpvs	15, 6, cr5, cr1, cr11, {3}
    64a4:	61746f6e 	cmnvs	r4, lr, ror #30
    64a8:	73286574 			; <UNDEFINED> instruction: 0x73286574
    64ac:	65726168 	ldrbvs	r6, [r2, #-360]!	; 0xfffffe98
    64b0:	6f6c5f64 	svcvs	0x006c5f64
    64b4:	665f6b63 	ldrbvs	r6, [pc], -r3, ror #22
    64b8:	74636e75 	strbtvc	r6, [r3], #-3701	; 0xfffff18b
    64bc:	286e6f69 	stmdacs	lr!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
    64c0:	41565f5f 	cmpmi	r6, pc, asr pc
    64c4:	4752415f 			; <UNDEFINED> instruction: 0x4752415f
    64c8:	295f5f53 	ldmdbcs	pc, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    64cc:	b5010029 	strlt	r0, [r1, #-41]	; 0xffffffd7
    64d0:	745f5f05 	ldrbvc	r5, [pc], #-3845	; 64d8 <f_lseek+0x128>
    64d4:	6f6c7972 	svcvs	0x006c7972
    64d8:	5f736b63 	svcpl	0x00736b63
    64dc:	6c637865 	stclvs	8, cr7, [r3], #-404	; 0xfffffe6c
    64e0:	76697375 			; <UNDEFINED> instruction: 0x76697375
    64e4:	2e2e2865 	cdpcs	8, 2, cr2, cr14, cr5, {3}
    64e8:	5f20292e 	svcpl	0x0020292e
    64ec:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    64f0:	6e615f6b 	cdpvs	15, 6, cr5, cr1, cr11, {3}
    64f4:	61746f6e 	cmnvs	r4, lr, ror #30
    64f8:	65286574 	strvs	r6, [r8, #-1396]!	; 0xfffffa8c
    64fc:	756c6378 	strbvc	r6, [ip, #-888]!	; 0xfffffc88
    6500:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    6504:	7972745f 	ldmdbvc	r2!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}^
    6508:	6b636f6c 	blvs	18e22c0 <__mprec_tinytens+0x18bda50>
    650c:	6e75665f 	mrcvs	6, 3, r6, cr5, cr15, {2}
    6510:	6f697463 	svcvs	0x00697463
    6514:	5f5f286e 	svcpl	0x005f286e
    6518:	415f4156 	cmpmi	pc, r6, asr r1	; <UNPREDICTABLE>
    651c:	5f534752 	svcpl	0x00534752
    6520:	0029295f 	eoreq	r2, r9, pc, asr r9
    6524:	5f05b701 	svcpl	0x0005b701
    6528:	7972745f 	ldmdbvc	r2!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}^
    652c:	6b636f6c 	blvs	18e22e4 <__mprec_tinytens+0x18bda74>
    6530:	68735f73 	ldmdavs	r3!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    6534:	64657261 	strbtvs	r7, [r5], #-609	; 0xfffffd9f
    6538:	2e2e2e28 	cdpcs	14, 2, cr2, cr14, cr8, {1}
    653c:	5f5f2029 	svcpl	0x005f2029
    6540:	6b636f6c 	blvs	18e22f8 <__mprec_tinytens+0x18bda88>
    6544:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    6548:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    654c:	68732865 	ldmdavs	r3!, {r0, r2, r5, r6, fp, sp}^
    6550:	64657261 	strbtvs	r7, [r5], #-609	; 0xfffffd9f
    6554:	7972745f 	ldmdbvc	r2!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}^
    6558:	6b636f6c 	blvs	18e2310 <__mprec_tinytens+0x18bdaa0>
    655c:	6e75665f 	mrcvs	6, 3, r6, cr5, cr15, {2}
    6560:	6f697463 	svcvs	0x00697463
    6564:	5f5f286e 	svcpl	0x005f286e
    6568:	415f4156 	cmpmi	pc, r6, asr r1	; <UNPREDICTABLE>
    656c:	5f534752 	svcpl	0x00534752
    6570:	0029295f 	eoreq	r2, r9, pc, asr r9
    6574:	5f05bb01 	svcpl	0x0005bb01
    6578:	6c6e755f 	cfstr64vs	mvdx7, [lr], #-380	; 0xfffffe84
    657c:	736b636f 	cmnvc	fp, #-1140850687	; 0xbc000001
    6580:	2e2e2e28 	cdpcs	14, 2, cr2, cr14, cr8, {1}
    6584:	5f5f2029 	svcpl	0x005f2029
    6588:	6b636f6c 	blvs	18e2340 <__mprec_tinytens+0x18bdad0>
    658c:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    6590:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    6594:	6e752865 	cdpvs	8, 7, cr2, cr5, cr5, {3}
    6598:	6b636f6c 	blvs	18e2350 <__mprec_tinytens+0x18bdae0>
    659c:	6e75665f 	mrcvs	6, 3, r6, cr5, cr15, {2}
    65a0:	6f697463 	svcvs	0x00697463
    65a4:	5f5f286e 	svcpl	0x005f286e
    65a8:	415f4156 	cmpmi	pc, r6, asr r1	; <UNPREDICTABLE>
    65ac:	5f534752 	svcpl	0x00534752
    65b0:	0029295f 	eoreq	r2, r9, pc, asr r9
    65b4:	5f05be01 	svcpl	0x0005be01
    65b8:	7373615f 	cmnvc	r3, #-1073741801	; 0xc0000017
    65bc:	73747265 	cmnvc	r4, #1342177286	; 0x50000006
    65c0:	6378655f 	cmnvs	r8, #398458880	; 0x17c00000
    65c4:	6973756c 	ldmdbvs	r3!, {r2, r3, r5, r6, r8, sl, ip, sp, lr}^
    65c8:	2e286576 	mcrcs	5, 1, r6, cr8, cr6, {3}
    65cc:	20292e2e 	eorcs	r2, r9, lr, lsr #28
    65d0:	6f6c5f5f 	svcvs	0x006c5f5f
    65d4:	615f6b63 	cmpvs	pc, r3, ror #22
    65d8:	746f6e6e 	strbtvc	r6, [pc], #-3694	; 65e0 <f_lseek+0x230>
    65dc:	28657461 	stmdacs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    65e0:	65737361 	ldrbvs	r7, [r3, #-865]!	; 0xfffffc9f
    65e4:	655f7472 	ldrbvs	r7, [pc, #-1138]	; 617a <f_chdir+0x82>
    65e8:	756c6378 	strbvc	r6, [ip, #-888]!	; 0xfffffc88
    65ec:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    65f0:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    65f4:	5f5f286b 	svcpl	0x005f286b
    65f8:	415f4156 	cmpmi	pc, r6, asr r1	; <UNPREDICTABLE>
    65fc:	5f534752 	svcpl	0x00534752
    6600:	0029295f 	eoreq	r2, r9, pc, asr r9
    6604:	5f05c001 	svcpl	0x0005c001
    6608:	7373615f 	cmnvc	r3, #-1073741801	; 0xc0000017
    660c:	73747265 	cmnvc	r4, #1342177286	; 0x50000006
    6610:	6168735f 	cmnvs	r8, pc, asr r3
    6614:	28646572 	stmdacs	r4!, {r1, r4, r5, r6, r8, sl, sp, lr}^
    6618:	292e2e2e 	stmdbcs	lr!, {r1, r2, r3, r5, r9, sl, fp, sp}
    661c:	6c5f5f20 	mrrcvs	15, 2, r5, pc, cr0	; <UNPREDICTABLE>
    6620:	5f6b636f 	svcpl	0x006b636f
    6624:	6f6e6e61 	svcvs	0x006e6e61
    6628:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    662c:	73736128 	cmnvc	r3, #40, 2
    6630:	5f747265 	svcpl	0x00747265
    6634:	72616873 	rsbvc	r6, r1, #7536640	; 0x730000
    6638:	6c5f6465 	cfldrdvs	mvd6, [pc], {101}	; 0x65
    663c:	286b636f 	stmdacs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    6640:	41565f5f 	cmpmi	r6, pc, asr pc
    6644:	4752415f 			; <UNDEFINED> instruction: 0x4752415f
    6648:	295f5f53 	ldmdbcs	pc, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    664c:	c4010029 	strgt	r0, [r1], #-41	; 0xffffffd7
    6650:	725f5f05 	subsvc	r5, pc, #5, 30
    6654:	69757165 	ldmdbvs	r5!, {r0, r2, r5, r6, r8, ip, sp, lr}^
    6658:	5f736572 	svcpl	0x00736572
    665c:	6c637865 	stclvs	8, cr7, [r3], #-404	; 0xfffffe6c
    6660:	76697375 			; <UNDEFINED> instruction: 0x76697375
    6664:	2e2e2865 	cdpcs	8, 2, cr2, cr14, cr5, {3}
    6668:	5f20292e 	svcpl	0x0020292e
    666c:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    6670:	6e615f6b 	cdpvs	15, 6, cr5, cr1, cr11, {3}
    6674:	61746f6e 	cmnvs	r4, lr, ror #30
    6678:	65286574 	strvs	r6, [r8, #-1396]!	; 0xfffffa8c
    667c:	756c6378 	strbvc	r6, [ip, #-888]!	; 0xfffffc88
    6680:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    6684:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    6688:	725f736b 	subsvc	r7, pc, #-1409286143	; 0xac000001
    668c:	69757165 	ldmdbvs	r5!, {r0, r2, r5, r6, r8, ip, sp, lr}^
    6690:	28646572 	stmdacs	r4!, {r1, r4, r5, r6, r8, sl, sp, lr}^
    6694:	41565f5f 	cmpmi	r6, pc, asr pc
    6698:	4752415f 			; <UNDEFINED> instruction: 0x4752415f
    669c:	295f5f53 	ldmdbcs	pc, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    66a0:	c6010029 	strgt	r0, [r1], -r9, lsr #32
    66a4:	725f5f05 	subsvc	r5, pc, #5, 30
    66a8:	69757165 	ldmdbvs	r5!, {r0, r2, r5, r6, r8, ip, sp, lr}^
    66ac:	5f736572 	svcpl	0x00736572
    66b0:	72616873 	rsbvc	r6, r1, #7536640	; 0x730000
    66b4:	2e286465 	cdpcs	4, 2, cr6, cr8, cr5, {3}
    66b8:	20292e2e 	eorcs	r2, r9, lr, lsr #28
    66bc:	6f6c5f5f 	svcvs	0x006c5f5f
    66c0:	615f6b63 	cmpvs	pc, r3, ror #22
    66c4:	746f6e6e 	strbtvc	r6, [pc], #-3694	; 66cc <f_lseek+0x31c>
    66c8:	28657461 	stmdacs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    66cc:	72616873 	rsbvc	r6, r1, #7536640	; 0x730000
    66d0:	6c5f6465 	cfldrdvs	mvd6, [pc], {101}	; 0x65
    66d4:	736b636f 	cmnvc	fp, #-1140850687	; 0xbc000001
    66d8:	7165725f 	cmnvc	r5, pc, asr r2
    66dc:	65726975 	ldrbvs	r6, [r2, #-2421]!	; 0xfffff68b
    66e0:	5f5f2864 	svcpl	0x005f2864
    66e4:	415f4156 	cmpmi	pc, r6, asr r1	; <UNPREDICTABLE>
    66e8:	5f534752 	svcpl	0x00534752
    66ec:	0029295f 	eoreq	r2, r9, pc, asr r9
    66f0:	5f05c801 	svcpl	0x0005c801
    66f4:	7165725f 	cmnvc	r5, pc, asr r2
    66f8:	65726975 	ldrbvs	r6, [r2, #-2421]!	; 0xfffff68b
    66fc:	6e755f73 	mrcvs	15, 3, r5, cr5, cr3, {3}
    6700:	6b636f6c 	blvs	18e24b8 <__mprec_tinytens+0x18bdc48>
    6704:	2e286465 	cdpcs	4, 2, cr6, cr8, cr5, {3}
    6708:	20292e2e 	eorcs	r2, r9, lr, lsr #28
    670c:	6f6c5f5f 	svcvs	0x006c5f5f
    6710:	615f6b63 	cmpvs	pc, r3, ror #22
    6714:	746f6e6e 	strbtvc	r6, [pc], #-3694	; 671c <f_opendir+0x18>
    6718:	28657461 	stmdacs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    671c:	6b636f6c 	blvs	18e24d4 <__mprec_tinytens+0x18bdc64>
    6720:	78655f73 	stmdavc	r5!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    6724:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
    6728:	5f286465 	svcpl	0x00286465
    672c:	5f41565f 	svcpl	0x0041565f
    6730:	53475241 	movtpl	r5, #29249	; 0x7241
    6734:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    6738:	05cc0100 	strbeq	r0, [ip, #256]	; 0x100
    673c:	6f6e5f5f 	svcvs	0x006e5f5f
    6740:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    6744:	6e615f6b 	cdpvs	15, 6, cr5, cr1, cr11, {3}
    6748:	73796c61 	cmnvc	r9, #24832	; 0x6100
    674c:	5f207369 	svcpl	0x00207369
    6750:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    6754:	6e615f6b 	cdpvs	15, 6, cr5, cr1, cr11, {3}
    6758:	61746f6e 	cmnvs	r4, lr, ror #30
    675c:	6e286574 	mcrvs	5, 1, r6, cr8, cr4, {3}
    6760:	68745f6f 	ldmdavs	r4!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    6764:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
    6768:	6661735f 			; <UNDEFINED> instruction: 0x6661735f
    676c:	5f797465 	svcpl	0x00797465
    6770:	6c616e61 	stclvs	14, cr6, [r1], #-388	; 0xfffffe7c
    6774:	73697379 	cmnvc	r9, #-469762047	; 0xe4000001
    6778:	cf010029 	svcgt	0x00010029
    677c:	675f5f05 	ldrbvs	r5, [pc, -r5, lsl #30]
    6780:	64726175 	ldrbtvs	r6, [r2], #-373	; 0xfffffe8b
    6784:	625f6465 	subsvs	r6, pc, #1694498816	; 0x65000000
    6788:	29782879 	ldmdbcs	r8!, {r0, r3, r4, r5, r6, fp, sp}^
    678c:	6c5f5f20 	mrrcvs	15, 2, r5, pc, cr0	; <UNPREDICTABLE>
    6790:	5f6b636f 	svcpl	0x006b636f
    6794:	6f6e6e61 	svcvs	0x006e6e61
    6798:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    679c:	61756728 	cmnvs	r5, r8, lsr #14
    67a0:	64656472 	strbtvs	r6, [r5], #-1138	; 0xfffffb8e
    67a4:	2879625f 	ldmdacs	r9!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
    67a8:	00292978 	eoreq	r2, r9, r8, ror r9
    67ac:	5f05d001 	svcpl	0x0005d001
    67b0:	5f74705f 	svcpl	0x0074705f
    67b4:	72617567 	rsbvc	r7, r1, #432013312	; 0x19c00000
    67b8:	5f646564 	svcpl	0x00646564
    67bc:	78287962 	stmdavc	r8!, {r1, r5, r6, r8, fp, ip, sp, lr}
    67c0:	5f5f2029 	svcpl	0x005f2029
    67c4:	6b636f6c 	blvs	18e257c <__mprec_tinytens+0x18bdd0c>
    67c8:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    67cc:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    67d0:	74702865 	ldrbtvc	r2, [r0], #-2149	; 0xfffff79b
    67d4:	6175675f 	cmnvs	r5, pc, asr r7
    67d8:	64656472 	strbtvs	r6, [r5], #-1138	; 0xfffffb8e
    67dc:	2879625f 	ldmdacs	r9!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
    67e0:	00292978 	eoreq	r2, r9, r8, ror r9
    67e4:	5f0f0104 	svcpl	0x000f0104
    67e8:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
    67ec:	69735f64 	ldmdbvs	r3!, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
    67f0:	745f657a 	ldrbvc	r6, [pc], #-1402	; 67f8 <f_closedir+0x28>
    67f4:	10010020 	andne	r0, r1, r0, lsr #32
    67f8:	656e5f5f 	strbvs	r5, [lr, #-3935]!	; 0xfffff0a1
    67fc:	4e5f6465 	cdpmi	4, 5, cr6, cr15, cr5, {3}
    6800:	204c4c55 	subcs	r4, ip, r5, asr ip
    6804:	08110300 	ldmdaeq	r1, {r8, r9}
    6808:	5f01a102 	svcpl	0x0001a102
    680c:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
    6810:	74705f64 	ldrbtvc	r5, [r0], #-3940	; 0xfffff09c
    6814:	66696472 			; <UNDEFINED> instruction: 0x66696472
    6818:	00745f66 	rsbseq	r5, r4, r6, ror #30
    681c:	5f01ee02 	svcpl	0x0001ee02
    6820:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
    6824:	69735f64 	ldmdbvs	r3!, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
    6828:	745f657a 	ldrbvc	r6, [pc], #-1402	; 6830 <f_readdir+0x34>
    682c:	02db0200 	sbcseq	r0, fp, #0, 4
    6830:	656e5f5f 	strbvs	r5, [lr, #-3935]!	; 0xfffff0a1
    6834:	775f6465 	ldrbvc	r6, [pc, -r5, ror #8]
    6838:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    683c:	0200745f 	andeq	r7, r0, #1593835520	; 0x5f000000
    6840:	554e0391 	strbpl	r0, [lr, #-913]	; 0xfffffc6f
    6844:	01004c4c 	tsteq	r0, ip, asr #24
    6848:	554e0396 	strbpl	r0, [lr, #-918]	; 0xfffffc6a
    684c:	28204c4c 	stmdacs	r0!, {r2, r3, r6, sl, fp, lr}
    6850:	696f7628 	stmdbvs	pc!, {r3, r5, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    6854:	292a2064 	stmdbcs	sl!, {r2, r5, r6, sp}
    6858:	02002930 	andeq	r2, r0, #48, 18	; 0xc0000
    685c:	5f5f039c 	svcpl	0x005f039c
    6860:	6465656e 	strbtvs	r6, [r5], #-1390	; 0xfffffa92
    6864:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    6868:	a101004c 	tstge	r1, ip, asr #32
    686c:	66666f03 	strbtvs	r6, [r6], -r3, lsl #30
    6870:	6f746573 	svcvs	0x00746573
    6874:	59542866 	ldmdbpl	r4, {r1, r2, r5, r6, fp, sp}^
    6878:	4d2c4550 	cfstr32mi	mvfx4, [ip, #-320]!	; 0xfffffec0
    687c:	45424d45 	strbmi	r4, [r2, #-3397]	; 0xfffff2bb
    6880:	5f202952 	svcpl	0x00202952
    6884:	6975625f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
    6888:	6e69746c 	cdpvs	4, 6, cr7, cr9, cr12, {3}
    688c:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
    6890:	6f746573 	svcvs	0x00746573
    6894:	54282066 	strtpl	r2, [r8], #-102	; 0xffffff9a
    6898:	2c455059 	mcrrcs	0, 5, r5, r5, cr9
    689c:	4d454d20 	stclmi	13, cr4, [r5, #-128]	; 0xffffff80
    68a0:	29524542 	ldmdbcs	r2, {r1, r6, r8, sl, lr}^
    68a4:	14030400 	strne	r0, [r3], #-1024	; 0xfffffc00
    68a8:	5f040118 	svcpl	0x00040118
    68ac:	434f4c58 	movtmi	r4, #64600	; 0xfc58
    68b0:	5f454c41 	svcpl	0x00454c41
    68b4:	04002048 	streq	r2, [r0], #-72	; 0xffffffb8
    68b8:	1901c003 	stmdbne	r1, {r0, r1, lr, pc}
    68bc:	0b010404 	bleq	478d4 <__mprec_tinytens+0x23064>
    68c0:	5f70735f 	svcpl	0x0070735f
    68c4:	6772616d 	ldrbvs	r6, [r2, -sp, ror #2]!
    68c8:	205f6e69 	subscs	r6, pc, r9, ror #28
    68cc:	69752828 	ldmdbvs	r5!, {r3, r5, fp, sp}^
    68d0:	7470746e 	ldrbtvc	r7, [r0], #-1134	; 0xfffffb92
    68d4:	29745f72 	ldmdbcs	r4!, {r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    68d8:	00293631 	eoreq	r3, r9, r1, lsr r6
    68dc:	4c5c0104 	ldfmie	f0, [ip], {4}
    68e0:	525f4350 	subspl	r4, pc, #80, 6	; 0x40000001
    68e4:	28204d41 	stmdacs	r0!, {r0, r6, r8, sl, fp, lr}
    68e8:	01002931 	tsteq	r0, r1, lsr r9
    68ec:	43504c5d 	cmpmi	r0, #23808	; 0x5d00
    68f0:	4152555f 	cmpmi	r2, pc, asr r5
    68f4:	3128204d 			; <UNDEFINED> instruction: 0x3128204d
    68f8:	203c3c20 	eorscs	r3, ip, r0, lsr #24
    68fc:	01002931 	tsteq	r0, r1, lsr r9
    6900:	43504c5e 	cmpmi	r0, #24064	; 0x5e00
    6904:	4152455f 	cmpmi	r2, pc, asr r5
    6908:	3128204d 			; <UNDEFINED> instruction: 0x3128204d
    690c:	203c3c20 	eorscs	r3, ip, r0, lsr #24
    6910:	01002932 	tsteq	r0, r2, lsr r9
    6914:	67656262 	strbvs	r6, [r5, -r2, ror #4]!
    6918:	6165685f 	cmnvs	r5, pc, asr r8
    691c:	28282070 	stmdacs	r8!, {r4, r5, r6, sp}
    6920:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6924:	5f727470 	svcpl	0x00727470
    6928:	5f262974 	svcpl	0x00262974
    692c:	70616568 	rsbvc	r6, r1, r8, ror #10
    6930:	6174735f 	cmnvs	r4, pc, asr r3
    6934:	295f7472 	ldmdbcs	pc, {r1, r4, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    6938:	65630100 	strbvs	r0, [r3, #-256]!	; 0xffffff00
    693c:	685f646e 	ldmdavs	pc, {r1, r2, r3, r5, r6, sl, sp, lr}^	; <UNPREDICTABLE>
    6940:	20706165 	rsbscs	r6, r0, r5, ror #2
    6944:	69752828 	ldmdbvs	r5!, {r3, r5, fp, sp}^
    6948:	7470746e 	ldrbtvc	r7, [r0], #-1134	; 0xfffffb92
    694c:	29745f72 	ldmdbcs	r4!, {r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    6950:	65685f26 	strbvs	r5, [r8, #-3878]!	; 0xfffff0da
    6954:	655f7061 	ldrbvs	r7, [pc, #-97]	; 68fb <f_findfirst+0xf>
    6958:	295f646e 	ldmdbcs	pc, {r1, r2, r3, r5, r6, sl, sp, lr}^	; <UNPREDICTABLE>
    695c:	6d660100 	stfvse	f0, [r6, #-0]
    6960:	6f6c6c61 	svcvs	0x006c6c61
    6964:	38333263 	ldmdacc	r3!, {r0, r1, r5, r6, r9, ip, sp}
    6968:	6e695f38 	mcrvs	15, 3, r5, cr9, cr8, {1}
    696c:	62287469 	eorvs	r7, r8, #1761607680	; 0x69000000
    6970:	6c662c73 	stclvs	12, cr2, [r6], #-460	; 0xfffffe34
    6974:	5f202967 	svcpl	0x00202967
    6978:	6c616d5f 	stclvs	13, cr6, [r1], #-380	; 0xfffffe84
    697c:	32636f6c 	rsbcc	r6, r3, #108, 30	; 0x1b0
    6980:	5f383833 	svcpl	0x00383833
    6984:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
    6988:	2c736228 	lfmcs	f6, 2, [r3], #-160	; 0xffffff60
    698c:	676c6620 	strbvs	r6, [ip, -r0, lsr #12]!
    6990:	6562202c 	strbvs	r2, [r2, #-44]!	; 0xffffffd4
    6994:	65685f67 	strbvs	r5, [r8, #-3943]!	; 0xfffff099
    6998:	202c7061 	eorcs	r7, ip, r1, rrx
    699c:	5f646e65 	svcpl	0x00646e65
    69a0:	70616568 	rsbvc	r6, r1, r8, ror #10
    69a4:	04040029 	streq	r0, [r4], #-41	; 0xffffffd7
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000002d4 	ldrdeq	r0, [r0], -r4
   4:	02790002 	rsbseq	r0, r9, #2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
  1c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
  20:	636e692f 	cmnvs	lr, #770048	; 0xbc000
  24:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
  28:	5c3a6300 	ldcpl	3, cr6, [sl], #-0
  2c:	72657375 	rsbvc	r7, r5, #-738197503	; 0xd4000001
  30:	73755c73 	cmnvc	r5, #29440	; 0x7300
  34:	645c7265 	ldrbvs	r7, [ip], #-613	; 0xfffffd9b
  38:	746b7365 	strbtvc	r7, [fp], #-869	; 0xfffffc9b
  3c:	615c706f 	cmpvs	ip, pc, rrx
  40:	642d6d72 	strtvs	r6, [sp], #-3442	; 0xfffff28e
  44:	615c7665 	cmpvs	ip, r5, ror #12
  48:	742d6d72 	strtvc	r6, [sp], #-3442	; 0xfffff28e
  4c:	736c6f6f 	cmnvc	ip, #444	; 0x1bc
  50:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
  54:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
  58:	61652d65 	cmnvs	r5, r5, ror #26
  5c:	695c6962 	ldmdbvs	ip, {r1, r5, r6, r8, fp, sp, lr}^
  60:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
  64:	6d5c6564 	cfldr64vs	mvdx6, [ip, #-400]	; 0xfffffe70
  68:	69686361 	stmdbvs	r8!, {r0, r5, r6, r8, r9, sp, lr}^
  6c:	6300656e 	movwvs	r6, #1390	; 0x56e
  70:	73755c3a 	cmnvc	r5, #14848	; 0x3a00
  74:	5c737265 	lfmpl	f7, 2, [r3], #-404	; 0xfffffe6c
  78:	72657375 	rsbvc	r7, r5, #-738197503	; 0xd4000001
  7c:	7365645c 	cmnvc	r5, #92, 8	; 0x5c000000
  80:	706f746b 	rsbvc	r7, pc, fp, ror #8
  84:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
  88:	7665642d 	strbtvc	r6, [r5], -sp, lsr #8
  8c:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
  90:	6f6f742d 	svcvs	0x006f742d
  94:	615c736c 	cmpvs	ip, ip, ror #6
  98:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
  9c:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
  a0:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
  a4:	636e695c 	cmnvs	lr, #92, 18	; 0x170000
  a8:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
  ac:	7379735c 	cmnvc	r9, #92, 6	; 0x70000001
  b0:	5c3a6300 	ldcpl	3, cr6, [sl], #-0
  b4:	72657375 	rsbvc	r7, r5, #-738197503	; 0xd4000001
  b8:	73755c73 	cmnvc	r5, #29440	; 0x7300
  bc:	645c7265 	ldrbvs	r7, [ip], #-613	; 0xfffffd9b
  c0:	746b7365 	strbtvc	r7, [fp], #-869	; 0xfffffc9b
  c4:	615c706f 	cmpvs	ip, pc, rrx
  c8:	642d6d72 	strtvs	r6, [sp], #-3442	; 0xfffff28e
  cc:	615c7665 	cmpvs	ip, r5, ror #12
  d0:	742d6d72 	strtvc	r6, [sp], #-3442	; 0xfffff28e
  d4:	736c6f6f 	cmnvc	ip, #444	; 0x1bc
  d8:	62696c5c 	rsbvs	r6, r9, #92, 24	; 0x5c00
  dc:	6363675c 	cmnvs	r3, #92, 14	; 0x1700000
  e0:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
  e4:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
  e8:	61652d65 	cmnvs	r5, r5, ror #26
  ec:	365c6962 	ldrbcc	r6, [ip], -r2, ror #18
  f0:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
  f4:	636e695c 	cmnvs	lr, #92, 18	; 0x170000
  f8:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
  fc:	5c3a6300 	ldcpl	3, cr6, [sl], #-0
 100:	72657375 	rsbvc	r7, r5, #-738197503	; 0xd4000001
 104:	73755c73 	cmnvc	r5, #29440	; 0x7300
 108:	645c7265 	ldrbvs	r7, [ip], #-613	; 0xfffffd9b
 10c:	746b7365 	strbtvc	r7, [fp], #-869	; 0xfffffc9b
 110:	615c706f 	cmpvs	ip, pc, rrx
 114:	642d6d72 	strtvs	r6, [sp], #-3442	; 0xfffff28e
 118:	615c7665 	cmpvs	ip, r5, ror #12
 11c:	742d6d72 	strtvc	r6, [sp], #-3442	; 0xfffff28e
 120:	736c6f6f 	cmnvc	ip, #444	; 0x1bc
 124:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
 128:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 12c:	61652d65 	cmnvs	r5, r5, ror #26
 130:	695c6962 	ldmdbvs	ip, {r1, r5, r6, r8, fp, sp, lr}^
 134:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 138:	00006564 	andeq	r6, r0, r4, ror #10
 13c:	74736574 	ldrbtvc	r6, [r3], #-1396	; 0xfffffa8c
 140:	0000632e 	andeq	r6, r0, lr, lsr #6
 144:	69620000 	stmdbvs	r2!, {}^	; <UNPREDICTABLE>
 148:	3332736f 	teqcc	r2, #-1140850687	; 0xbc000001
 14c:	682e3838 	stmdavs	lr!, {r3, r4, r5, fp, ip, sp}
 150:	00000100 	andeq	r0, r0, r0, lsl #2
 154:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
 158:	746c7561 	strbtvc	r7, [ip], #-1377	; 0xfffffa9f
 15c:	7079745f 	rsbsvc	r7, r9, pc, asr r4
 160:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 164:	00000200 	andeq	r0, r0, r0, lsl #4
 168:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
 16c:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 170:	00030068 	andeq	r0, r3, r8, rrx
 174:	72707800 	rsbsvc	r7, r0, #0, 16
 178:	66746e69 	ldrbtvs	r6, [r4], -r9, ror #28
 17c:	0100682e 	tsteq	r0, lr, lsr #16
 180:	6f6c0000 	svcvs	0x006c0000
 184:	682e6b63 	stmdavs	lr!, {r0, r1, r5, r6, r8, r9, fp, sp, lr}
 188:	00000300 	andeq	r0, r0, r0, lsl #6
 18c:	7079745f 	rsbsvc	r7, r9, pc, asr r4
 190:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 194:	00000300 	andeq	r0, r0, r0, lsl #6
 198:	64647473 	strbtvs	r7, [r4], #-1139	; 0xfffffb8d
 19c:	682e6665 	stmdavs	lr!, {r0, r2, r5, r6, r9, sl, sp, lr}
 1a0:	00000400 	andeq	r0, r0, r0, lsl #8
 1a4:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
 1a8:	00682e74 	rsbeq	r2, r8, r4, ror lr
 1ac:	74000003 	strvc	r0, [r0], #-3
 1b0:	6d796e69 	ldclvs	14, cr6, [r9, #-420]!	; 0xfffffe5c
 1b4:	6f6c6c61 	svcvs	0x006c6c61
 1b8:	00682e63 	rsbeq	r2, r8, r3, ror #28
 1bc:	6d000001 	stcvs	0, cr0, [r0, #-4]
 1c0:	6f6c6c61 	svcvs	0x006c6c61
 1c4:	38333263 	ldmdacc	r3!, {r0, r1, r5, r6, r9, ip, sp}
 1c8:	00682e38 	rsbeq	r2, r8, r8, lsr lr
 1cc:	73000001 	movwvc	r0, #1
 1d0:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 1d4:	00682e74 	rsbeq	r2, r8, r4, ror lr
 1d8:	73000004 	movwvc	r0, #4
 1dc:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 1e0:	00682e74 	rsbeq	r2, r8, r4, ror lr
 1e4:	66000005 	strvs	r0, [r0], -r5
 1e8:	75746165 	ldrbvc	r6, [r4, #-357]!	; 0xfffffe9b
 1ec:	2e736572 	mrccs	5, 3, r6, cr3, cr2, {3}
 1f0:	00030068 	andeq	r0, r3, r8, rrx
 1f4:	656e5f00 	strbvs	r5, [lr, #-3840]!	; 0xfffff100
 1f8:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
 1fc:	7265765f 	rsbvc	r7, r5, #99614720	; 0x5f00000
 200:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
 204:	0500682e 	streq	r6, [r0, #-2094]	; 0xfffff7d2
 208:	695f0000 	ldmdbvs	pc, {}^	; <UNPREDICTABLE>
 20c:	7573746e 	ldrbvc	r7, [r3, #-1134]!	; 0xfffffb92
 210:	00682e70 	rsbeq	r2, r8, r0, ror lr
 214:	73000003 	movwvc	r0, #3
 218:	6e697274 	mcrvs	2, 3, r7, cr9, cr4, {3}
 21c:	00682e67 	rsbeq	r2, r8, r7, ror #28
 220:	5f000005 	svcpl	0x00000005
 224:	69736e61 	ldmdbvs	r3!, {r0, r5, r6, r9, sl, fp, sp, lr}^
 228:	0500682e 	streq	r6, [r0, #-2094]	; 0xfffff7d2
 22c:	656e0000 	strbvs	r0, [lr, #-0]!
 230:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
 234:	0500682e 	streq	r6, [r0, #-2094]	; 0xfffff7d2
 238:	6f630000 	svcvs	0x00630000
 23c:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 240:	0300682e 	movweq	r6, #2094	; 0x82e
 244:	65690000 	strbvs	r0, [r9, #-0]!
 248:	70666565 	rsbvc	r6, r6, r5, ror #10
 24c:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 250:	745f0000 	ldrbvc	r0, [pc], #-0	; 258 <current_sp+0x1a4>
 254:	73657079 	cmnvc	r5, #121	; 0x79
 258:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 25c:	64630000 	strbtvs	r0, [r3], #-0
 260:	2e736665 	cdpcs	6, 7, cr6, cr3, cr5, {3}
 264:	00030068 	andeq	r0, r3, r8, rrx
 268:	6f6c7800 	svcvs	0x006c7800
 26c:	656c6163 	strbvs	r6, [ip, #-355]!	; 0xfffffe9d
 270:	0500682e 	streq	r6, [r0, #-2094]	; 0xfffff7d2
 274:	74730000 	ldrbtvc	r0, [r3], #-0
 278:	676e6972 			; <UNDEFINED> instruction: 0x676e6972
 27c:	0300682e 	movweq	r6, #2094	; 0x82e
 280:	00000000 	andeq	r0, r0, r0
 284:	20500205 	subscs	r0, r0, r5, lsl #4
 288:	0e034000 	cdpeq	0, 0, cr4, cr3, cr0, {0}
 28c:	02044d01 	andeq	r4, r4, #1, 26	; 0x40
 290:	4b661603 	blmi	1985aa4 <__mprec_tinytens+0x1961234>
 294:	6a030104 	bvs	c06ac <__mprec_tinytens+0x9be3c>
 298:	684b4b2e 	stmdavs	fp, {r1, r2, r3, r5, r8, r9, fp, lr}^
 29c:	30302f2f 	eorscc	r2, r0, pc, lsr #30
 2a0:	67672a2c 	strbvs	r2, [r7, -ip, lsr #20]!
 2a4:	66064bd7 			; <UNDEFINED> instruction: 0x66064bd7
 2a8:	064b9f06 	strbeq	r9, [fp], -r6, lsl #30
 2ac:	4b8706ba 	blmi	fe1c1d9c <_sp_base+0xbe1b1da4>
 2b0:	0378084b 	cmneq	r8, #4915200	; 0x4b0000
 2b4:	3f082e09 	svccc	0x00082e09
 2b8:	064a06bd 			; <UNDEFINED> instruction: 0x064a06bd
 2bc:	4a066b9d 	bmi	19b138 <__mprec_tinytens+0x1768c8>
 2c0:	d94e9d06 	stmdble	lr, {r1, r2, r8, sl, fp, ip, pc}^
 2c4:	9d064a06 	vstrls	s8, [r6, #-24]	; 0xffffffe8
 2c8:	2f4c674e 	svccs	0x004c674e
 2cc:	b9062e06 	stmdblt	r6, {r1, r2, r9, sl, fp, sp}
 2d0:	024d314f 	subeq	r3, sp, #-1073741805	; 0xc0000013
 2d4:	0101001a 	tsteq	r1, sl, lsl r0

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	6f73645f 	svcvs	0x0073645f
   4:	6e61685f 	mcrvs	8, 3, r6, cr1, cr15, {2}
   8:	00656c64 	rsbeq	r6, r5, r4, ror #24
   c:	73756c63 	cmnvc	r5, #25344	; 0x6300
  10:	5f726574 	svcpl	0x00726574
  14:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
  18:	78616d00 	stmdavc	r1!, {r8, sl, fp, sp, lr}^
  1c:	756c635f 	strbvc	r6, [ip, #-863]!	; 0xfffffca1
  20:	72657473 	rsbvc	r7, r5, #1929379840	; 0x73000000
  24:	0064695f 	rsbeq	r6, r4, pc, asr r9
  28:	656d655f 	strbvs	r6, [sp, #-1375]!	; 0xfffffaa1
  2c:	6e656772 	mcrvs	7, 3, r6, cr5, cr2, {3}
  30:	5f007963 	svcpl	0x00007963
  34:	7473626d 	ldrbtvc	r6, [r3], #-621	; 0xfffffd93
  38:	00657461 	rsbeq	r7, r5, r1, ror #8
  3c:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
  40:	5f38746e 	svcpl	0x0038746e
  44:	645f0074 	ldrbvs	r0, [pc], #-116	; 4c <current_sp-0x68>
  48:	00617461 	rsbeq	r7, r1, r1, ror #8
  4c:	7263775f 	rsbvc	r7, r3, #24903680	; 0x17c0000
  50:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
  54:	6174735f 	cmnvs	r4, pc, asr r3
  58:	5f006574 	svcpl	0x00006574
  5c:	72736377 	rsbsvc	r6, r3, #-603979775	; 0xdc000001
  60:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
  64:	74735f73 	ldrbtvc	r5, [r3], #-3955	; 0xfffff08d
  68:	00657461 	rsbeq	r7, r5, r1, ror #8
  6c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  70:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  74:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  78:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  7c:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  80:	5f00746e 	svcpl	0x0000746e
  84:	7366626c 	cmnvc	r6, #108, 4	; 0xc0000006
  88:	00657a69 	rsbeq	r7, r5, r9, ror #20
  8c:	6f6c5f5f 	svcvs	0x006c5f5f
  90:	656c6163 	strbvs	r6, [ip, #-355]!	; 0xfffffe9d
  94:	7400745f 	strvc	r7, [r0], #-1119	; 0xfffffba1
  98:	00747365 	rsbseq	r7, r4, r5, ror #6
  9c:	72626d5f 	rsbvc	r6, r2, #6080	; 0x17c0
  a0:	63776f74 	cmnvs	r7, #116, 30	; 0x1d0
  a4:	6174735f 	cmnvs	r4, pc, asr r3
  a8:	5f006574 	svcpl	0x00006574
  ac:	5f6d745f 	svcpl	0x006d745f
  b0:	00636573 	rsbeq	r6, r3, r3, ror r5
  b4:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  b8:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  bc:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
  c0:	755f0074 	ldrbvc	r0, [pc, #-116]	; 54 <current_sp-0x60>
  c4:	00667562 	rsbeq	r7, r6, r2, ror #10
  c8:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
  cc:	5f5f0065 	svcpl	0x005f0065
  d0:	685f6d74 	ldmdavs	pc, {r2, r4, r5, r6, r8, sl, fp, sp, lr}^	; <UNPREDICTABLE>
  d4:	0072756f 	rsbseq	r7, r2, pc, ror #10
  d8:	66735f5f 	uhsaxvs	r5, r3, pc	; <UNPREDICTABLE>
  dc:	6e6f5f00 	cdpvs	15, 6, cr5, cr15, cr0, {0}
  e0:	6978655f 	ldmdbvs	r8!, {r0, r1, r2, r3, r4, r6, r8, sl, sp, lr}^
  e4:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
  e8:	5f007367 	svcpl	0x00007367
  ec:	6b6f6f63 	blvs	1bdbe80 <__mprec_tinytens+0x1bb7610>
  f0:	5f006569 	svcpl	0x00006569
  f4:	6c67735f 	stclvs	3, cr7, [r7], #-380	; 0xfffffe84
  f8:	5f006575 	svcpl	0x00006575
  fc:	67616c66 	strbvs	r6, [r1, -r6, ror #24]!
 100:	695f0073 	ldmdbvs	pc, {r0, r1, r4, r5, r6}^	; <UNPREDICTABLE>
 104:	78635f73 	stmdavc	r3!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
 108:	735f0061 	cmpvc	pc, #97	; 0x61
 10c:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 110:	73657400 	cmnvc	r5, #0, 8
 114:	00632e74 	rsbeq	r2, r3, r4, ror lr
 118:	6b6c625f 	blvs	1b18a9c <__mprec_tinytens+0x1af422c>
 11c:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
 120:	75667800 	strbvc	r7, [r6, #-2048]!	; 0xfffff800
 124:	6f5f636e 	svcvs	0x005f636e
 128:	5f007475 	svcpl	0x00007475
 12c:	62747663 	rsbsvs	r7, r4, #103809024	; 0x6300000
 130:	5f006675 	svcpl	0x00006675
 134:	7366666f 	cmnvc	r6, #116391936	; 0x6f00000
 138:	6d007465 	cfstrsvs	mvf7, [r0, #-404]	; 0xfffffe6c
 13c:	5f6b7261 	svcpl	0x006b7261
 140:	69616863 	stmdbvs	r1!, {r0, r1, r5, r6, fp, sp, lr}^
 144:	6d5f006e 	ldclvs	0, cr0, [pc, #-440]	; ffffff94 <_sp_base+0xbffeff9c>
 148:	74727362 	ldrbtvc	r7, [r2], #-866	; 0xfffffc9e
 14c:	7363776f 	cmnvc	r3, #29097984	; 0x1bc0000
 150:	6174735f 	cmnvs	r4, pc, asr r3
 154:	5f006574 	svcpl	0x00006574
 158:	6c72626d 	lfmvs	f6, 2, [r2], #-436	; 0xfffffe4c
 15c:	735f6e65 	cmpvc	pc, #1616	; 0x650
 160:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
 164:	6e665f00 	cdpvs	15, 6, cr5, cr6, cr0, {0}
 168:	73677261 	cmnvc	r7, #268435462	; 0x10000006
 16c:	6e665f00 	cdpvs	15, 6, cr5, cr6, cr0, {0}
 170:	735f0073 	cmpvc	pc, #115	; 0x73
 174:	006e6769 	rsbeq	r6, lr, r9, ror #14
 178:	6165685f 	cmnvs	r5, pc, asr r8
 17c:	6e655f70 	mcrvs	15, 3, r5, cr5, cr0, {3}
 180:	5f005f64 	svcpl	0x00005f64
 184:	636f6c66 	cmnvs	pc, #26112	; 0x6600
 188:	00745f6b 	rsbseq	r5, r4, fp, ror #30
 18c:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
 190:	00727265 	rsbseq	r7, r2, r5, ror #4
 194:	6769425f 			; <UNDEFINED> instruction: 0x6769425f
 198:	00746e69 	rsbseq	r6, r4, r9, ror #28
 19c:	6d61675f 	stclvs	7, cr6, [r1, #-380]!	; 0xfffffe84
 1a0:	735f616d 	cmpvc	pc, #1073741851	; 0x4000001b
 1a4:	676e6769 	strbvs	r6, [lr, -r9, ror #14]!
 1a8:	6d006d61 	stcvs	13, cr6, [r0, #-388]	; 0xfffffe7c
 1ac:	5f6b7261 	svcpl	0x006b7261
 1b0:	6f6c6c61 	svcvs	0x006c6c61
 1b4:	725f0063 	subsvc	r0, pc, #99	; 0x63
 1b8:	00646165 	rsbeq	r6, r4, r5, ror #2
 1bc:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
 1c0:	5f746c75 	svcpl	0x00746c75
 1c4:	6568006b 	strbvs	r0, [r8, #-107]!	; 0xffffff95
 1c8:	625f7061 	subsvs	r7, pc, #97	; 0x61
 1cc:	5f657361 	svcpl	0x00657361
 1d0:	72646461 	rsbvc	r6, r4, #1627389952	; 0x61000000
 1d4:	00737365 	rsbseq	r7, r3, r5, ror #6
 1d8:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
 1dc:	775f5f00 	ldrbvc	r5, [pc, -r0, lsl #30]
 1e0:	00626863 	rsbeq	r6, r2, r3, ror #16
 1e4:	5f636367 	svcpl	0x00636367
 1e8:	72727563 	rsbsvc	r7, r2, #415236096	; 0x18c00000
 1ec:	5f746e65 	svcpl	0x00746e65
 1f0:	5f006370 	svcpl	0x00006370
 1f4:	6f647473 	svcvs	0x00647473
 1f8:	5f007475 	svcpl	0x00007475
 1fc:	6c747663 	ldclvs	6, cr7, [r4], #-396	; 0xfffffe74
 200:	5f006e65 	svcpl	0x00006e65
 204:	656c6966 	strbvs	r6, [ip, #-2406]!	; 0xfffff69a
 208:	65685f00 	strbvs	r5, [r8, #-3840]!	; 0xfffff100
 20c:	735f7061 	cmpvc	pc, #97	; 0x61
 210:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
 214:	6e5f005f 	mrcvs	0, 2, r0, cr15, cr15, {2}
 218:	73626f69 	cmnvc	r2, #420	; 0x1a4
 21c:	6f687300 	svcvs	0x00687300
 220:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
 224:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
 228:	2064656e 	rsbcs	r6, r4, lr, ror #10
 22c:	00746e69 	rsbseq	r6, r4, r9, ror #28
 230:	6574615f 	ldrbvs	r6, [r4, #-351]!	; 0xfffffea1
 234:	30746978 	rsbscc	r6, r4, r8, ror r9
 238:	69735f00 	ldmdbvs	r3!, {r8, r9, sl, fp, ip, lr}^
 23c:	6c616e67 	stclvs	14, cr6, [r1], #-412	; 0xfffffe64
 240:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
 244:	73615f00 	cmnvc	r1, #0, 30
 248:	6d697463 	cfstrdvs	mvd7, [r9, #-396]!	; 0xfffffe74
 24c:	75625f65 	strbvc	r5, [r2, #-3941]!	; 0xfffff09b
 250:	725f0066 	subsvc	r0, pc, #102	; 0x66
 254:	6c757365 	ldclvs	3, cr7, [r5], #-404	; 0xfffffe6c
 258:	5f5f0074 	svcpl	0x005f0074
 25c:	00686377 	rsbeq	r6, r8, r7, ror r3
 260:	554c435f 	strbpl	r4, [ip, #-863]	; 0xfffffca1
 264:	52455453 	subpl	r5, r5, #1392508928	; 0x53000000
 268:	5844495f 	stmdapl	r4, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
 26c:	5f00745f 	svcpl	0x0000745f
 270:	4b434f4c 	blmi	10d3fa8 <__mprec_tinytens+0x10af738>
 274:	7700545f 	smlsdvc	r0, pc, r4, r5	; <UNPREDICTABLE>
 278:	5f746e69 	svcpl	0x00746e69
 27c:	665f0074 			; <UNDEFINED> instruction: 0x665f0074
 280:	7367616c 	cmnvc	r7, #108, 2
 284:	775f0032 	smmlarvc	pc, r2, r0, r0	; <UNPREDICTABLE>
 288:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
 28c:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 294 <current_sp+0x1e0>
 290:	65795f6d 	ldrbvs	r5, [r9, #-3949]!	; 0xfffff093
 294:	5f007261 	svcpl	0x00007261
 298:	4b4e4142 	blmi	13907a8 <__mprec_tinytens+0x136bf38>
 29c:	5844495f 	stmdapl	r4, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
 2a0:	5f00745f 	svcpl	0x0000745f
 2a4:	6c616d6e 	stclvs	13, cr6, [r1], #-440	; 0xfffffe48
 2a8:	00636f6c 	rsbeq	r6, r3, ip, ror #30
 2ac:	6e69745f 	mcrvs	4, 3, r7, cr9, cr15, {2}
 2b0:	616d5f79 	smcvs	54777	; 0xd5f9
 2b4:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
 2b8:	616c665f 	cmnvs	ip, pc, asr r6
 2bc:	69730067 	ldmdbvs	r3!, {r0, r1, r2, r5, r6}^
 2c0:	7974657a 	ldmdbvc	r4!, {r1, r3, r4, r5, r6, r8, sl, sp, lr}^
 2c4:	6c006570 	cfstr32vs	mvfx6, [r0], {112}	; 0x70
 2c8:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 2cc:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
 2d0:	5f00656c 	svcpl	0x0000656c
 2d4:	7478656e 	ldrbtvc	r6, [r8], #-1390	; 0xfffffa92
 2d8:	5f5f0066 	svcpl	0x005f0066
 2dc:	6d5f6d74 	ldclvs	13, cr6, [pc, #-464]	; 114 <current_sp+0x60>
 2e0:	5f006e6f 	svcpl	0x00006e6f
 2e4:	78657461 	stmdavc	r5!, {r0, r5, r6, sl, ip, sp, lr}^
 2e8:	5f007469 	svcpl	0x00007469
 2ec:	6964735f 	stmdbvs	r4!, {r0, r1, r2, r3, r4, r6, r8, r9, ip, sp, lr}^
 2f0:	696e6964 	stmdbvs	lr!, {r2, r5, r6, r8, fp, sp, lr}^
 2f4:	6f5f0074 	svcvs	0x005f0074
 2f8:	745f6666 	ldrbvc	r6, [pc], #-1638	; 300 <current_sp+0x24c>
 2fc:	72665f00 	rsbvc	r5, r6, #0, 30
 300:	696c6565 	stmdbvs	ip!, {r0, r2, r5, r6, r8, sl, sp, lr}^
 304:	5f007473 	svcpl	0x00007473
 308:	6f746377 	svcvs	0x00746377
 30c:	735f626d 	cmpvc	pc, #-805306362	; 0xd0000006
 310:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
 314:	736e7500 	cmnvc	lr, #0, 10
 318:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 31c:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
 320:	5f007261 	svcpl	0x00007261
 324:	0077656e 	rsbseq	r6, r7, lr, ror #10
 328:	655f685f 	ldrbvs	r6, [pc, #-2143]	; fffffad1 <_sp_base+0xbffefad9>
 32c:	6f6e7272 	svcvs	0x006e7272
 330:	6f687300 	svcvs	0x00687300
 334:	69207472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, ip, sp, lr}
 338:	5f00746e 	svcpl	0x0000746e
 33c:	5f6d745f 	svcpl	0x006d745f
 340:	79616479 	stmdbvc	r1!, {r0, r3, r4, r5, r6, sl, sp, lr}^
 344:	735f5f00 	cmpvc	pc, #0, 30
 348:	00667562 	rsbeq	r7, r6, r2, ror #10
 34c:	626f695f 	rsbvs	r6, pc, #1556480	; 0x17c000
 350:	5f5f0073 	svcpl	0x005f0073
 354:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
 358:	626d5f00 	rsbvs	r5, sp, #0, 30
 35c:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
 360:	00745f65 	rsbseq	r5, r4, r5, ror #30
 364:	46735f5f 	uhsaxmi	r5, r3, pc	; <UNPREDICTABLE>
 368:	00454c49 	subeq	r4, r5, r9, asr #24
 36c:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
 370:	7470746e 	ldrbtvc	r7, [r0], #-1134	; 0xfffffb92
 374:	00745f72 	rsbseq	r5, r4, r2, ror pc
 378:	6e61725f 	mcrvs	2, 3, r7, cr1, cr15, {2}
 37c:	656e5f64 	strbvs	r5, [lr, #-3940]!	; 0xfffff09c
 380:	5f007478 	svcpl	0x00007478
 384:	656c626d 	strbvs	r6, [ip, #-621]!	; 0xfffffd93
 388:	74735f6e 	ldrbtvc	r5, [r3], #-3950	; 0xfffff092
 38c:	00657461 	rsbeq	r7, r5, r1, ror #8
 390:	636e695f 	cmnvs	lr, #1556480	; 0x17c000
 394:	6e695f00 	cdpvs	15, 6, cr5, cr9, cr0, {0}
 398:	6c5f0064 	mrrcvs	0, 6, r0, pc, cr4	; <UNPREDICTABLE>
 39c:	6c61636f 	stclvs	3, cr6, [r1], #-444	; 0xfffffe44
 3a0:	5f5f0065 	svcpl	0x005f0065
 3a4:	61656c63 	cmnvs	r5, r3, ror #24
 3a8:	0070756e 	rsbseq	r7, r0, lr, ror #10
 3ac:	736e755f 	cmnvc	lr, #398458880	; 0x17c00000
 3b0:	69636570 	stmdbvs	r3!, {r4, r5, r6, r8, sl, sp, lr}^
 3b4:	64656966 	strbtvs	r6, [r5], #-2406	; 0xfffff69a
 3b8:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
 3bc:	5f656c61 	svcpl	0x00656c61
 3c0:	6f666e69 	svcvs	0x00666e69
 3c4:	6b686300 	blvs	1a18fcc <__mprec_tinytens+0x19f475c>
 3c8:	5f70735f 	svcpl	0x0070735f
 3cc:	6c6c6f63 	stclvs	15, cr6, [ip], #-396	; 0xfffffe74
 3d0:	6f697369 	svcvs	0x00697369
 3d4:	6d5f006e 	ldclvs	0, cr0, [pc, #-440]	; 224 <current_sp+0x170>
 3d8:	64777861 	ldrbtvs	r7, [r7], #-2145	; 0xfffff79f
 3dc:	725f0073 	subsvc	r0, pc, #115	; 0x73
 3e0:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
 3e4:	61725f00 	cmnvs	r2, r0, lsl #30
 3e8:	3834646e 	ldmdacc	r4!, {r1, r2, r3, r5, r6, sl, sp, lr}
 3ec:	65735f00 	ldrbvs	r5, [r3, #-3840]!	; 0xfffff100
 3f0:	5f006465 	svcpl	0x00006465
 3f4:	756f635f 	strbvc	r6, [pc, #-863]!	; 9d <current_sp-0x17>
 3f8:	5f00746e 	svcpl	0x0000746e
 3fc:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
 400:	5f5f006b 	svcpl	0x005f006b
 404:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
 408:	545f0065 	ldrbpl	r0, [pc], #-101	; 410 <current_sp+0x35c>
 40c:	414d5f4e 	cmpmi	sp, lr, asr #30
 410:	434f4c4c 	movtmi	r4, #64588	; 0xfc4c
 414:	464e495f 			; <UNDEFINED> instruction: 0x464e495f
 418:	00745f4f 	rsbseq	r5, r4, pc, asr #30
 41c:	6565735f 	strbvs	r7, [r5, #-863]!	; 0xfffffca1
 420:	665f006b 	ldrbvs	r0, [pc], -fp, rrx
 424:	5f736f70 	svcpl	0x00736f70
 428:	5f5f0074 	svcpl	0x005f0074
 42c:	6d5f6d74 	ldclvs	13, cr6, [pc, #-464]	; 264 <current_sp+0x1b0>
 430:	5f006e69 	svcpl	0x00006e69
 434:	6d5f6e74 	ldclvs	14, cr6, [pc, #-464]	; 26c <current_sp+0x1b8>
 438:	6f6c6c61 	svcvs	0x006c6c61
 43c:	6e695f63 	cdpvs	15, 6, cr5, cr9, cr3, {3}
 440:	43006f66 	movwmi	r6, #3942	; 0xf66
 444:	73555c3a 	cmpvc	r5, #14848	; 0x3a00
 448:	5c737265 	lfmpl	f7, 2, [r3], #-404	; 0xfffffe6c
 44c:	52455355 	subpl	r5, r5, #1409286145	; 0x54000001
 450:	7365445c 	cmnvc	r5, #92, 8	; 0x5c000000
 454:	706f746b 	rsbvc	r7, pc, fp, ror #8
 458:	4d52415c 	ldfmie	f4, [r2, #-368]	; 0xfffffe90
 45c:	5645442d 	strbpl	r4, [r5], -sp, lsr #8
 460:	6f72505c 	svcvs	0x0072505c
 464:	7463656a 	strbtvc	r6, [r3], #-1386	; 0xfffffa96
 468:	706c5c73 	rsbvc	r5, ip, r3, ror ip
 46c:	78333263 	ldmdavc	r3!, {r0, r1, r5, r6, r9, ip, sp}
 470:	706c5c78 	rsbvc	r5, ip, r8, ror ip
 474:	38333263 	ldmdacc	r3!, {r0, r1, r5, r6, r9, ip, sp}
 478:	69622d38 	stmdbvs	r2!, {r3, r4, r5, r8, sl, fp, sp}^
 47c:	735c736f 	cmpvc	ip, #-1140850687	; 0xbc000001
 480:	615c6b64 	cmpvs	ip, r4, ror #22
 484:	696c7070 	stmdbvs	ip!, {r4, r5, r6, ip, sp, lr}^
 488:	69746163 	ldmdbvs	r4!, {r0, r1, r5, r6, r8, sp, lr}^
 48c:	685c6e6f 	ldmdavs	ip, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 490:	00706165 	rsbseq	r6, r0, r5, ror #2
 494:	6c756d5f 	ldclvs	13, cr6, [r5], #-380	; 0xfffffe84
 498:	4e470074 	mcrmi	0, 2, r0, cr7, cr4, {3}
 49c:	31432055 	qdaddcc	r2, r5, r3
 4a0:	2e362031 	mrccs	0, 1, r2, cr6, cr1, {1}
 4a4:	20312e33 	eorscs	r2, r1, r3, lsr lr
 4a8:	37313032 			; <UNDEFINED> instruction: 0x37313032
 4ac:	30323630 	eorscc	r3, r2, r0, lsr r6
 4b0:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
 4b4:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
 4b8:	5b202965 	blpl	80aa54 <__mprec_tinytens+0x7e61e4>
 4bc:	2f4d5241 	svccs	0x004d5241
 4c0:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
 4c4:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
 4c8:	622d362d 	eorvs	r3, sp, #47185920	; 0x2d00000
 4cc:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
 4d0:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
 4d4:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
 4d8:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
 4dc:	33343934 	teqcc	r4, #52, 18	; 0xd0000
 4e0:	2d205d37 	stccs	13, cr5, [r0, #-220]!	; 0xffffff24
 4e4:	7570636d 	ldrbvc	r6, [r0, #-877]!	; 0xfffffc93
 4e8:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
 4ec:	6d647437 	cfstrdvs	mvd7, [r4, #-220]!	; 0xffffff24
 4f0:	20732d69 	rsbscs	r2, r3, r9, ror #26
 4f4:	2033672d 	eorscs	r6, r3, sp, lsr #14
 4f8:	7764672d 	strbvc	r6, [r4, -sp, lsr #14]!
 4fc:	2d667261 	sfmcs	f7, 2, [r6, #-388]!	; 0xfffffe7c
 500:	672d2032 			; <UNDEFINED> instruction: 0x672d2032
 504:	69727473 	ldmdbvs	r2!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 508:	642d7463 	strtvs	r7, [sp], #-1123	; 0xfffffb9d
 50c:	66726177 			; <UNDEFINED> instruction: 0x66726177
 510:	004f2d20 	subeq	r2, pc, r0, lsr #26
 514:	7274735f 	rsbsvc	r7, r4, #2080374785	; 0x7c000001
 518:	5f6b6f74 	svcpl	0x006b6f74
 51c:	7473616c 	ldrbtvc	r6, [r3], #-364	; 0xfffffe94
 520:	6e665f00 	cdpvs	15, 6, cr5, cr6, cr0, {0}
 524:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 528:	615f0073 	cmpvs	pc, r3, ror r0	; <UNPREDICTABLE>
 52c:	5f006464 	svcpl	0x00006464
 530:	6f4c555f 	svcvs	0x004c555f
 534:	5f00676e 	svcpl	0x0000676e
 538:	64746567 	ldrbtvs	r6, [r4], #-1383	; 0xfffffa99
 53c:	5f657461 	svcpl	0x00657461
 540:	00727265 	rsbseq	r7, r2, r5, ror #4
 544:	554c435f 	strbpl	r4, [ip, #-863]	; 0xfffffca1
 548:	52455453 	subpl	r5, r5, #1392508928	; 0x53000000
 54c:	5a49535f 	bpl	12552d0 <__mprec_tinytens+0x1230a60>
 550:	00745f45 	rsbseq	r5, r4, r5, asr #30
 554:	6f6c675f 	svcvs	0x006c675f
 558:	5f6c6162 	svcpl	0x006c6162
 55c:	75706d69 	ldrbvc	r6, [r0, #-3433]!	; 0xfffff297
 560:	705f6572 	subsvc	r6, pc, r2, ror r5	; <UNPREDICTABLE>
 564:	78007274 	stmdavc	r0, {r2, r4, r5, r6, r9, ip, sp, lr}
 568:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
 56c:	006e695f 	rsbeq	r6, lr, pc, asr r9
 570:	636d656d 	cmnvs	sp, #457179136	; 0x1b400000
 574:	5f006766 	svcpl	0x00006766
 578:	73756e75 	cmnvc	r5, #1872	; 0x750
 57c:	725f6465 	subsvc	r6, pc, #1694498816	; 0x65000000
 580:	00646e61 	rsbeq	r6, r4, r1, ror #28
 584:	626d756e 	rsbvs	r7, sp, #461373440	; 0x1b800000
 588:	6f5f7265 	svcvs	0x005f7265
 58c:	61625f66 	cmnvs	r2, r6, ror #30
 590:	00736b6e 	rsbseq	r6, r3, lr, ror #22
 594:	7364775f 	cmnvc	r4, #24903680	; 0x17c0000
 598:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 5a0 <current_sp+0x4ec>
 59c:	64775f6d 	ldrbtvs	r5, [r7], #-3949	; 0xfffff093
 5a0:	5f007961 	svcpl	0x00007961
 5a4:	65756c67 	ldrbvs	r6, [r5, #-3175]!	; 0xfffff399
 5a8:	366c5f00 	strbtcc	r5, [ip], -r0, lsl #30
 5ac:	625f6134 	subsvs	r6, pc, #52, 2
 5b0:	5f006675 	svcpl	0x00006675
 5b4:	5f676973 	svcpl	0x00676973
 5b8:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
 5bc:	41425f00 	cmpmi	r2, r0, lsl #30
 5c0:	425f4b4e 	subsmi	r4, pc, #79872	; 0x13800
 5c4:	745f5449 	ldrbvc	r5, [pc], #-1097	; 5cc <current_sp+0x518>
 5c8:	626e5f00 	rsbvs	r5, lr, #0, 30
 5cc:	5f006675 	svcpl	0x00006675
 5d0:	73756e75 	cmnvc	r5, #1872	; 0x750
 5d4:	5f006465 	svcpl	0x00006465
 5d8:	5f6d745f 	svcpl	0x006d745f
 5dc:	73647369 	cmnvc	r4, #-1543503871	; 0xa4000001
 5e0:	6c5f0074 	mrrcvs	0, 7, r0, pc, cr4	; <UNPREDICTABLE>
 5e4:	6c61636f 	stclvs	3, cr6, [r1], #-444	; 0xfffffe44
 5e8:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
 5ec:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
 5f0:	6c635f00 	stclvs	15, cr5, [r3], #-0
 5f4:	0065736f 	rsbeq	r7, r5, pc, ror #6
 5f8:	3834725f 	ldmdacc	r4!, {r0, r1, r2, r3, r4, r6, r9, ip, sp, lr}
 5fc:	626d5f00 	rsbvs	r5, sp, #0, 30
 600:	63776f74 	cmnvs	r7, #116, 30	; 0x1d0
 604:	6174735f 	cmnvs	r4, pc, asr r3
 608:	5f006574 	svcpl	0x00006574
 60c:	00733570 	rsbseq	r3, r3, r0, ror r5
 610:	6e69616d 	powvsez	f6, f1, #5.0
 614:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 61c <current_sp+0x568>
 618:	646d5f6d 	strbtvs	r5, [sp], #-3949	; 0xfffff093
 61c:	Address 0x0000061c is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000034 	andeq	r0, r0, r4, lsr r0
  14:	00000000 	andeq	r0, r0, r0
  18:	40002050 	andmi	r2, r0, r0, asr r0
  1c:	00000120 	andeq	r0, r0, r0, lsr #2
  20:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
  24:	86088509 	strhi	r8, [r8], -r9, lsl #10
  28:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
  2c:	8a048905 	bhi	122448 <__mprec_tinytens+0xfdbd8>
  30:	8e028b03 	vmlahi.f64	d8, d2, d3
  34:	300e4201 	andcc	r4, lr, r1, lsl #4
  38:	240e7602 	strcs	r7, [lr], #-1538	; 0xfffff9fe
  3c:	cacbce42 	bgt	ff2f394c <_sp_base+0xbf2e3954>
  40:	c6c7c8c9 	strbgt	ip, [r7], r9, asr #17
  44:	000ec4c5 	andeq	ip, lr, r5, asr #9
  48:	00000028 	andeq	r0, r0, r8, lsr #32
  4c:	00000000 	andeq	r0, r0, r0
  50:	40002170 	andmi	r2, r0, r0, ror r1
  54:	0000014c 	andeq	r0, r0, ip, asr #2
  58:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
  5c:	86058506 	strhi	r8, [r5], -r6, lsl #10
  60:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
  64:	02018e02 	andeq	r8, r1, #2, 28
  68:	c7c8ce8e 	strbgt	ip, [r8, lr, lsl #29]
  6c:	0ec4c5c6 	cdpeq	5, 12, cr12, cr4, cr6, {6}
  70:	00000000 	andeq	r0, r0, r0
