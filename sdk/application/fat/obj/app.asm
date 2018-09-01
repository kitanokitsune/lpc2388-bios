
./obj/app.elf:     file format elf32-littlearm


Disassembly of section .start:

40002000 <_stext>:
40002000:	e1a0100d 	mov	r1, sp
40002004:	e59fd030 	ldr	sp, [pc, #48]	; 4000203c <sys_exit+0x2c>
40002008:	e92d5ff2 	push	{r1, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
4000200c:	eb000042 	bl	4000211c <main>

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

40002050 <wait_msec>:
40002050:	e0603280 	rsb	r3, r0, r0, lsl #5
40002054:	e0800103 	add	r0, r0, r3, lsl #2
40002058:	e1a00180 	lsl	r0, r0, #3
4000205c:	e59f3020 	ldr	r3, [pc, #32]	; 40002084 <wait_msec+0x34>
40002060:	e3a02002 	mov	r2, #2
40002064:	e5832004 	str	r2, [r3, #4]
40002068:	e3a02001 	mov	r2, #1
4000206c:	e5832004 	str	r2, [r3, #4]
40002070:	e1a02003 	mov	r2, r3
40002074:	e5923008 	ldr	r3, [r2, #8]
40002078:	e1500003 	cmp	r0, r3
4000207c:	8afffffc 	bhi	40002074 <wait_msec+0x24>
40002080:	e12fff1e 	bx	lr
40002084:	e0004000 	and	r4, r0, r0

40002088 <rc2msg>:
40002088:	e92d4010 	push	{r4, lr}
4000208c:	e1a04001 	mov	r4, r1
40002090:	eb0000c6 	bl	400023b0 <__xprintf_veneer>
40002094:	e3540004 	cmp	r4, #4
40002098:	979ff104 	ldrls	pc, [pc, r4, lsl #2]
4000209c:	ea000014 	b	400020f4 <rc2msg+0x6c>
400020a0:	400020dc 	ldrdmi	r2, [r0], -ip
400020a4:	400020b4 	strhmi	r2, [r0], -r4
400020a8:	400020e8 	andmi	r2, r0, r8, ror #1
400020ac:	400020c4 	andmi	r2, r0, r4, asr #1
400020b0:	400020d0 	ldrdmi	r2, [r0], -r0
400020b4:	e59f0048 	ldr	r0, [pc, #72]	; 40002104 <rc2msg+0x7c>
400020b8:	eb0000bc 	bl	400023b0 <__xprintf_veneer>
400020bc:	e8bd4010 	pop	{r4, lr}
400020c0:	e12fff1e 	bx	lr
400020c4:	e59f003c 	ldr	r0, [pc, #60]	; 40002108 <rc2msg+0x80>
400020c8:	eb0000b8 	bl	400023b0 <__xprintf_veneer>
400020cc:	eafffffa 	b	400020bc <rc2msg+0x34>
400020d0:	e59f0034 	ldr	r0, [pc, #52]	; 4000210c <rc2msg+0x84>
400020d4:	eb0000b5 	bl	400023b0 <__xprintf_veneer>
400020d8:	eafffff7 	b	400020bc <rc2msg+0x34>
400020dc:	e59f002c 	ldr	r0, [pc, #44]	; 40002110 <rc2msg+0x88>
400020e0:	eb0000b2 	bl	400023b0 <__xprintf_veneer>
400020e4:	eafffff4 	b	400020bc <rc2msg+0x34>
400020e8:	e59f0024 	ldr	r0, [pc, #36]	; 40002114 <rc2msg+0x8c>
400020ec:	eb0000af 	bl	400023b0 <__xprintf_veneer>
400020f0:	eafffff1 	b	400020bc <rc2msg+0x34>
400020f4:	e1a01004 	mov	r1, r4
400020f8:	e59f0018 	ldr	r0, [pc, #24]	; 40002118 <rc2msg+0x90>
400020fc:	eb0000ab 	bl	400023b0 <__xprintf_veneer>
40002100:	eaffffed 	b	400020bc <rc2msg+0x34>
40002104:	400023c0 	andmi	r2, r0, r0, asr #7
40002108:	400023d0 	ldrdmi	r2, [r0], -r0
4000210c:	400023e4 	andmi	r2, r0, r4, ror #7
40002110:	400023f8 	strdmi	r2, [r0], -r8
40002114:	40002400 	andmi	r2, r0, r0, lsl #8
40002118:	4000241c 	andmi	r2, r0, ip, lsl r4

4000211c <main>:
4000211c:	e92d4030 	push	{r4, r5, lr}
40002120:	e24ddf9b 	sub	sp, sp, #620	; 0x26c
40002124:	e59f21fc 	ldr	r2, [pc, #508]	; 40002328 <main+0x20c>
40002128:	e59f31fc 	ldr	r3, [pc, #508]	; 4000232c <main+0x210>
4000212c:	e5832000 	str	r2, [r3]
40002130:	e59f21f8 	ldr	r2, [pc, #504]	; 40002330 <main+0x214>
40002134:	e59f31f8 	ldr	r3, [pc, #504]	; 40002334 <main+0x218>
40002138:	e5832000 	str	r2, [r3]
4000213c:	eb000099 	bl	400023a8 <__LCD_Init_veneer>
40002140:	e3a01001 	mov	r1, #1
40002144:	e3a00000 	mov	r0, #0
40002148:	eb000090 	bl	40002390 <__LCD_Write_veneer>
4000214c:	e3a01006 	mov	r1, #6
40002150:	e59f01e0 	ldr	r0, [pc, #480]	; 40002338 <main+0x21c>
40002154:	eb000089 	bl	40002380 <__LCD_Puts_veneer>
40002158:	e3a01085 	mov	r1, #133	; 0x85
4000215c:	e3a00000 	mov	r0, #0
40002160:	eb00008a 	bl	40002390 <__LCD_Write_veneer>
40002164:	e59f31d0 	ldr	r3, [pc, #464]	; 4000233c <main+0x220>
40002168:	e55320dd 	ldrb	r2, [r3, #-221]	; 0xffffff23
4000216c:	e3822004 	orr	r2, r2, #4
40002170:	e54320dd 	strb	r2, [r3, #-221]	; 0xffffff23
40002174:	e55320c9 	ldrb	r2, [r3, #-201]	; 0xffffff37
40002178:	e3822004 	orr	r2, r2, #4
4000217c:	e54320c9 	strb	r2, [r3, #-201]	; 0xffffff37
40002180:	e59f01b8 	ldr	r0, [pc, #440]	; 40002340 <main+0x224>
40002184:	eb000089 	bl	400023b0 <__xprintf_veneer>
40002188:	e3a02001 	mov	r2, #1
4000218c:	e59f11b0 	ldr	r1, [pc, #432]	; 40002344 <main+0x228>
40002190:	e28d0008 	add	r0, sp, #8
40002194:	eb00007b 	bl	40002388 <__f_mount_veneer>
40002198:	e1a01000 	mov	r1, r0
4000219c:	e59f01a4 	ldr	r0, [pc, #420]	; 40002348 <main+0x22c>
400021a0:	ebffffb8 	bl	40002088 <rc2msg>
400021a4:	e59f01a0 	ldr	r0, [pc, #416]	; 4000234c <main+0x230>
400021a8:	eb000080 	bl	400023b0 <__xprintf_veneer>
400021ac:	e3a0200a 	mov	r2, #10
400021b0:	e59f1198 	ldr	r1, [pc, #408]	; 40002350 <main+0x234>
400021b4:	e28d0f8f 	add	r0, sp, #572	; 0x23c
400021b8:	eb000078 	bl	400023a0 <__f_open_veneer>
400021bc:	e1a04000 	mov	r4, r0
400021c0:	e1a01000 	mov	r1, r0
400021c4:	e59f0188 	ldr	r0, [pc, #392]	; 40002354 <main+0x238>
400021c8:	ebffffae 	bl	40002088 <rc2msg>
400021cc:	e3540000 	cmp	r4, #0
400021d0:	0a000025 	beq	4000226c <main+0x150>
400021d4:	e59f017c 	ldr	r0, [pc, #380]	; 40002358 <main+0x23c>
400021d8:	eb000074 	bl	400023b0 <__xprintf_veneer>
400021dc:	e3a02001 	mov	r2, #1
400021e0:	e59f1168 	ldr	r1, [pc, #360]	; 40002350 <main+0x234>
400021e4:	e28d0f8f 	add	r0, sp, #572	; 0x23c
400021e8:	eb00006c 	bl	400023a0 <__f_open_veneer>
400021ec:	e1a04000 	mov	r4, r0
400021f0:	e1a01000 	mov	r1, r0
400021f4:	e59f0158 	ldr	r0, [pc, #344]	; 40002354 <main+0x238>
400021f8:	ebffffa2 	bl	40002088 <rc2msg>
400021fc:	e3540000 	cmp	r4, #0
40002200:	0a000031 	beq	400022cc <main+0x1b0>
40002204:	e3a00ffa 	mov	r0, #1000	; 0x3e8
40002208:	ebffff90 	bl	40002050 <wait_msec>
4000220c:	e59f4128 	ldr	r4, [pc, #296]	; 4000233c <main+0x220>
40002210:	e55430c9 	ldrb	r3, [r4, #-201]	; 0xffffff37
40002214:	e3833004 	orr	r3, r3, #4
40002218:	e54430c9 	strb	r3, [r4, #-201]	; 0xffffff37
4000221c:	e3a00ffa 	mov	r0, #1000	; 0x3e8
40002220:	ebffff8a 	bl	40002050 <wait_msec>
40002224:	e55430c9 	ldrb	r3, [r4, #-201]	; 0xffffff37
40002228:	e3c33004 	bic	r3, r3, #4
4000222c:	e54430c9 	strb	r3, [r4, #-201]	; 0xffffff37
40002230:	e3a00ffa 	mov	r0, #1000	; 0x3e8
40002234:	ebffff85 	bl	40002050 <wait_msec>
40002238:	e55430c9 	ldrb	r3, [r4, #-201]	; 0xffffff37
4000223c:	e3833004 	orr	r3, r3, #4
40002240:	e54430c9 	strb	r3, [r4, #-201]	; 0xffffff37
40002244:	e3a01001 	mov	r1, #1
40002248:	e3a00000 	mov	r0, #0
4000224c:	eb00004f 	bl	40002390 <__LCD_Write_veneer>
40002250:	e3a01004 	mov	r1, #4
40002254:	e59f0100 	ldr	r0, [pc, #256]	; 4000235c <main+0x240>
40002258:	eb000048 	bl	40002380 <__LCD_Puts_veneer>
4000225c:	e3a00000 	mov	r0, #0
40002260:	e28ddf9b 	add	sp, sp, #620	; 0x26c
40002264:	e8bd4030 	pop	{r4, r5, lr}
40002268:	e12fff1e 	bx	lr
4000226c:	e28d3004 	add	r3, sp, #4
40002270:	e3a02012 	mov	r2, #18
40002274:	e59f10e4 	ldr	r1, [pc, #228]	; 40002360 <main+0x244>
40002278:	e28d0f8f 	add	r0, sp, #572	; 0x23c
4000227c:	eb000045 	bl	40002398 <__f_write_veneer>
40002280:	e1a01000 	mov	r1, r0
40002284:	e59f00d8 	ldr	r0, [pc, #216]	; 40002364 <main+0x248>
40002288:	ebffff7e 	bl	40002088 <rc2msg>
4000228c:	e28d0f8f 	add	r0, sp, #572	; 0x23c
40002290:	eb000048 	bl	400023b8 <__f_close_veneer>
40002294:	e1a01000 	mov	r1, r0
40002298:	e59f00c8 	ldr	r0, [pc, #200]	; 40002368 <main+0x24c>
4000229c:	ebffff79 	bl	40002088 <rc2msg>
400022a0:	e59d3004 	ldr	r3, [sp, #4]
400022a4:	e3530012 	cmp	r3, #18
400022a8:	1affffc9 	bne	400021d4 <main+0xb8>
400022ac:	e59f3088 	ldr	r3, [pc, #136]	; 4000233c <main+0x220>
400022b0:	e55320dd 	ldrb	r2, [r3, #-221]	; 0xffffff23
400022b4:	e3822004 	orr	r2, r2, #4
400022b8:	e54320dd 	strb	r2, [r3, #-221]	; 0xffffff23
400022bc:	e55320c9 	ldrb	r2, [r3, #-201]	; 0xffffff37
400022c0:	e3c22004 	bic	r2, r2, #4
400022c4:	e54320c9 	strb	r2, [r3, #-201]	; 0xffffff37
400022c8:	eaffffc1 	b	400021d4 <main+0xb8>
400022cc:	e59f0098 	ldr	r0, [pc, #152]	; 4000236c <main+0x250>
400022d0:	eb000036 	bl	400023b0 <__xprintf_veneer>
400022d4:	e3a05001 	mov	r5, #1
400022d8:	e59f4090 	ldr	r4, [pc, #144]	; 40002370 <main+0x254>
400022dc:	e28d3004 	add	r3, sp, #4
400022e0:	e1a02005 	mov	r2, r5
400022e4:	e1a0100d 	mov	r1, sp
400022e8:	e28d0f8f 	add	r0, sp, #572	; 0x23c
400022ec:	eb000021 	bl	40002378 <__f_read_veneer>
400022f0:	e5dd1000 	ldrb	r1, [sp]
400022f4:	e1a00004 	mov	r0, r4
400022f8:	eb00002c 	bl	400023b0 <__xprintf_veneer>
400022fc:	e59d3004 	ldr	r3, [sp, #4]
40002300:	e3530000 	cmp	r3, #0
40002304:	1afffff4 	bne	400022dc <main+0x1c0>
40002308:	e59f0064 	ldr	r0, [pc, #100]	; 40002374 <main+0x258>
4000230c:	eb000027 	bl	400023b0 <__xprintf_veneer>
40002310:	e28d0f8f 	add	r0, sp, #572	; 0x23c
40002314:	eb000027 	bl	400023b8 <__f_close_veneer>
40002318:	e1a01000 	mov	r1, r0
4000231c:	e59f0044 	ldr	r0, [pc, #68]	; 40002368 <main+0x24c>
40002320:	ebffff58 	bl	40002088 <rc2msg>
40002324:	eaffffb6 	b	40002204 <main+0xe8>
40002328:	0000b9f8 	strdeq	fp, [r0], -r8
4000232c:	40000cd4 	ldrdmi	r0, [r0], -r4
40002330:	0000b9d4 	ldrdeq	fp, [r0], -r4
40002334:	40000cd0 	ldrdmi	r0, [r0], -r0	; <UNPREDICTABLE>
40002338:	40002430 	andmi	r2, r0, r0, lsr r4
4000233c:	3fffc0ff 	svccc	0x00ffc0ff
40002340:	40002438 	andmi	r2, r0, r8, lsr r4
40002344:	400024a4 	andmi	r2, r0, r4, lsr #9
40002348:	40002450 	andmi	r2, r0, r0, asr r4
4000234c:	4000245c 	andmi	r2, r0, ip, asr r4
40002350:	4000247c 	andmi	r2, r0, ip, ror r4
40002354:	40002488 	andmi	r2, r0, r8, lsl #9
40002358:	400024c0 	andmi	r2, r0, r0, asr #9
4000235c:	40002518 	andmi	r2, r0, r8, lsl r5
40002360:	40002494 	mulmi	r0, r4, r4
40002364:	400024a8 	andmi	r2, r0, r8, lsr #9
40002368:	400024b4 			; <UNDEFINED> instruction: 0x400024b4
4000236c:	400024dc 	ldrdmi	r2, [r0], -ip
40002370:	400024f8 	strdmi	r2, [r0], -r8
40002374:	400024fc 	strdmi	r2, [r0], -ip

40002378 <__f_read_veneer>:
40002378:	e51ff004 	ldr	pc, [pc, #-4]	; 4000237c <__f_read_veneer+0x4>
4000237c:	000059f0 	strdeq	r5, [r0], -r0

40002380 <__LCD_Puts_veneer>:
40002380:	e51ff004 	ldr	pc, [pc, #-4]	; 40002384 <__LCD_Puts_veneer+0x4>
40002384:	00009778 	andeq	r9, r0, r8, ror r7

40002388 <__f_mount_veneer>:
40002388:	e51ff004 	ldr	pc, [pc, #-4]	; 4000238c <__f_mount_veneer+0x4>
4000238c:	00005620 	andeq	r5, r0, r0, lsr #12

40002390 <__LCD_Write_veneer>:
40002390:	e51ff004 	ldr	pc, [pc, #-4]	; 40002394 <__LCD_Write_veneer+0x4>
40002394:	000095c4 	andeq	r9, r0, r4, asr #11

40002398 <__f_write_veneer>:
40002398:	e51ff004 	ldr	pc, [pc, #-4]	; 4000239c <__f_write_veneer+0x4>
4000239c:	00005c20 	andeq	r5, r0, r0, lsr #24

400023a0 <__f_open_veneer>:
400023a0:	e51ff004 	ldr	pc, [pc, #-4]	; 400023a4 <__f_open_veneer+0x4>
400023a4:	000056ac 	andeq	r5, r0, ip, lsr #13

400023a8 <__LCD_Init_veneer>:
400023a8:	e51ff004 	ldr	pc, [pc, #-4]	; 400023ac <__LCD_Init_veneer+0x4>
400023ac:	00009664 	andeq	r9, r0, r4, ror #12

400023b0 <__xprintf_veneer>:
400023b0:	e51ff004 	ldr	pc, [pc, #-4]	; 400023b4 <__xprintf_veneer+0x4>
400023b4:	0000c094 	muleq	r0, r4, r0

400023b8 <__f_close_veneer>:
400023b8:	e51ff004 	ldr	pc, [pc, #-4]	; 400023bc <__f_close_veneer+0x4>
400023bc:	000060b8 	strheq	r6, [r0], -r8

Disassembly of section .rdata:

400023c0 <_srdata>:
400023c0:	2f52203a 	svccs	0x0052203a
400023c4:	72452057 	subvc	r2, r5, #87	; 0x57
400023c8:	0a726f72 	beq	41c9e198 <_sp_base+0x1c8e1a0>
400023cc:	00000000 	andeq	r0, r0, r0
400023d0:	7244203a 	subvc	r2, r4, #58	; 0x3a
400023d4:	20657669 	rsbcs	r7, r5, r9, ror #12
400023d8:	20746f4e 	rsbscs	r6, r4, lr, asr #30
400023dc:	64616552 	strbtvs	r6, [r1], #-1362	; 0xfffffaae
400023e0:	00000a79 	andeq	r0, r0, r9, ror sl
400023e4:	6e49203a 	mcrvs	0, 2, r2, cr9, cr10, {1}
400023e8:	696c6176 	stmdbvs	ip!, {r1, r2, r4, r5, r6, r8, sp, lr}^
400023ec:	61502064 	cmpvs	r0, r4, rrx
400023f0:	746d6172 	strbtvc	r6, [sp], #-370	; 0xfffffe8e
400023f4:	000a7265 	andeq	r7, sl, r5, ror #4
400023f8:	4b4f203a 	blmi	413ca4e8 <_sp_base+0x13ba4f0>
400023fc:	0000000a 	andeq	r0, r0, sl
40002400:	654d203a 	strbvs	r2, [sp, #-58]	; 0xffffffc6
40002404:	20616964 	rsbcs	r6, r1, r4, ror #18
40002408:	74697257 	strbtvc	r7, [r9], #-599	; 0xfffffda9
4000240c:	72502065 	subsvc	r2, r0, #101	; 0x65
40002410:	6465746f 	strbtvs	r7, [r5], #-1135	; 0xfffffb91
40002414:	0a646574 	beq	4191b9ec <_sp_base+0x190b9f4>
40002418:	00000000 	andeq	r0, r0, r0
4000241c:	6572203a 	ldrbvs	r2, [r2, #-58]!	; 0xffffffc6
40002420:	6e727574 	mrcvs	5, 3, r7, cr2, cr4, {3}
40002424:	6f632073 	svcvs	0x00632073
40002428:	253d6564 	ldrcs	r6, [sp, #-1380]!	; 0xfffffa9c
4000242c:	00000a64 	andeq	r0, r0, r4, ror #20
40002430:	6c6c6548 	cfstr64vs	mvdx6, [ip], #-288	; 0xfffffee0
40002434:	0000216f 	andeq	r2, r0, pc, ror #2
40002438:	2a2a2a0a 	bcs	40a8cc68 <_sp_base+0xa7cc70>
4000243c:	756f4d20 	strbvc	r4, [pc, #-3360]!	; 40001724 <errno+0xa28>
40002440:	4420746e 	strtmi	r7, [r0], #-1134	; 0xfffffb92
40002444:	65766972 	ldrbvs	r6, [r6, #-2418]!	; 0xfffff68e
40002448:	2a2a2a20 	bcs	40a8ccd0 <_sp_base+0xa7ccd8>
4000244c:	0000000a 	andeq	r0, r0, sl
40002450:	6f6d5f66 	svcvs	0x006d5f66
40002454:	28746e75 	ldmdacs	r4!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
40002458:	00000029 	andeq	r0, r0, r9, lsr #32
4000245c:	2a2a2a0a 	bcs	40a8cc8c <_sp_base+0xa7cc94>
40002460:	65724320 	ldrbvs	r4, [r2, #-800]!	; 0xfffffce0
40002464:	20657461 	rsbcs	r7, r5, r1, ror #8
40002468:	4657454e 	ldrbmi	r4, [r7], -lr, asr #10
4000246c:	2e454c49 	cdpcs	12, 4, cr4, cr5, cr9, {2}
40002470:	20545854 	subscs	r5, r4, r4, asr r8
40002474:	0a2a2a2a 	beq	40a8cd24 <_sp_base+0xa7cd2c>
40002478:	00000000 	andeq	r0, r0, r0
4000247c:	6677656e 	ldrbtvs	r6, [r7], -lr, ror #10
40002480:	2e656c69 	cdpcs	12, 6, cr6, cr5, cr9, {3}
40002484:	00747874 	rsbseq	r7, r4, r4, ror r8
40002488:	706f5f66 	rsbvc	r5, pc, r6, ror #30
4000248c:	29286e65 	stmdbcs	r8!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}
40002490:	00000000 	andeq	r0, r0, r0
40002494:	6c6c6548 	cfstr64vs	mvdx6, [ip], #-288	; 0xfffffee0
40002498:	6f74206f 	svcvs	0x0074206f
4000249c:	726f7720 	rsbvc	r7, pc, #32, 14	; 0x800000
400024a0:	0a21646c 	beq	4085b658 <_sp_base+0x84b660>
400024a4:	00000000 	andeq	r0, r0, r0
400024a8:	72775f66 	rsbsvc	r5, r7, #408	; 0x198
400024ac:	28657469 	stmdacs	r5!, {r0, r3, r5, r6, sl, ip, sp, lr}^
400024b0:	00000029 	andeq	r0, r0, r9, lsr #32
400024b4:	6c635f66 	stclvs	15, cr5, [r3], #-408	; 0xfffffe68
400024b8:	2865736f 	stmdacs	r5!, {r0, r1, r2, r3, r5, r6, r8, r9, ip, sp, lr}^
400024bc:	00000029 	andeq	r0, r0, r9, lsr #32
400024c0:	2a2a2a0a 	bcs	40a8ccf0 <_sp_base+0xa7ccf8>
400024c4:	61655220 	cmnvs	r5, r0, lsr #4
400024c8:	454e2064 	strbmi	r2, [lr, #-100]	; 0xffffff9c
400024cc:	4c494657 	mcrrmi	6, 5, r4, r9, cr7
400024d0:	58542e45 	ldmdapl	r4, {r0, r2, r6, r9, sl, fp, sp}^
400024d4:	2a2a2054 	bcs	40a8a62c <_sp_base+0xa7a634>
400024d8:	00000a2a 	andeq	r0, r0, sl, lsr #20
400024dc:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
400024e0:	725f6620 	subsvc	r6, pc, #32, 12	; 0x2000000
400024e4:	28646165 	stmdacs	r4!, {r0, r2, r5, r6, r8, sp, lr}^
400024e8:	74732029 	ldrbtvc	r2, [r3], #-41	; 0xffffffd7
400024ec:	20747261 	rsbscs	r7, r4, r1, ror #4
400024f0:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
400024f4:	0000000a 	andeq	r0, r0, sl
400024f8:	00006325 	andeq	r6, r0, r5, lsr #6
400024fc:	2d2d2d0a 	stccs	13, cr2, [sp, #-40]!	; 0xffffffd8
40002500:	66202d2d 	strtvs	r2, [r0], -sp, lsr #26
40002504:	6165725f 	cmnvs	r5, pc, asr r2
40002508:	20292864 	eorcs	r2, r9, r4, ror #16
4000250c:	20646e65 	rsbcs	r6, r4, r5, ror #28
40002510:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
40002514:	00000a2d 	andeq	r0, r0, sp, lsr #20
40002518:	656e6f44 	strbvs	r6, [lr, #-3908]!	; 0xfffff0bc
4000251c:	00000000 	andeq	r0, r0, r0

Disassembly of section .heap:

40002520 <_end>:
40002520:	3a434347 	bcc	410d3244 <_sp_base+0x10c324c>
40002524:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
40002528:	6f542055 	svcvs	0x00542055
4000252c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
40002530:	20726f66 	rsbscs	r6, r2, r6, ror #30
40002534:	204d5241 	subcs	r5, sp, r1, asr #4
40002538:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
4000253c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
40002540:	6f725020 	svcvs	0x00725020
40002544:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
40002548:	2073726f 	rsbscs	r7, r3, pc, ror #4
4000254c:	30322d36 	eorscc	r2, r2, r6, lsr sp
40002550:	712d3731 			; <UNDEFINED> instruction: 0x712d3731
40002554:	70752d32 	rsbsvc	r2, r5, r2, lsr sp
40002558:	65746164 	ldrbvs	r6, [r4, #-356]!	; 0xfffffe9c
4000255c:	2e362029 	cdpcs	0, 3, cr2, cr6, cr9, {1}
40002560:	20312e33 	eorscs	r2, r1, r3, lsr lr
40002564:	37313032 			; <UNDEFINED> instruction: 0x37313032
40002568:	30323630 	eorscc	r3, r2, r0, lsr r6
4000256c:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
40002570:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
40002574:	5b202965 	blpl	4080cb10 <_sp_base+0x7fcb18>
40002578:	2f4d5241 	svccs	0x004d5241
4000257c:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
40002580:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
40002584:	622d362d 	eorvs	r3, sp, #47185920	; 0x2d00000
40002588:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
4000258c:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
40002590:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
40002594:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
40002598:	33343934 	teqcc	r4, #52, 18	; 0xd0000
4000259c:	Address 0x4000259c is out of bounds.


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
   0:	00000718 	andeq	r0, r0, r8, lsl r7
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	0000027d 	andeq	r0, r0, sp, ror r2
  10:	00018101 	andeq	r8, r1, r1, lsl #2
  14:	00033a00 	andeq	r3, r3, r0, lsl #20
  18:	00205000 	eoreq	r5, r0, r0
  1c:	00237840 	eoreq	r7, r3, r0, asr #16
  20:	00000040 	andeq	r0, r0, r0, asr #32
  24:	00000000 	andeq	r0, r0, r0
  28:	06010200 	streq	r0, [r1], -r0, lsl #4
  2c:	00000223 	andeq	r0, r0, r3, lsr #4
  30:	21080102 	tstcs	r8, r2, lsl #2
  34:	02000002 	andeq	r0, r0, #2
  38:	022f0502 	eoreq	r0, pc, #8388608	; 0x800000
  3c:	02020000 	andeq	r0, r2, #0
  40:	00016307 	andeq	r6, r1, r7, lsl #6
  44:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  48:	00000070 	andeq	r0, r0, r0, ror r0
  4c:	00012203 	andeq	r2, r1, r3, lsl #4
  50:	574f0200 	strbpl	r0, [pc, -r0, lsl #4]
  54:	02000000 	andeq	r0, r0, #0
  58:	00430704 	subeq	r0, r3, r4, lsl #14
  5c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  60:	00006b05 	andeq	r6, r0, r5, lsl #22
  64:	07080200 	streq	r0, [r8, -r0, lsl #4]
  68:	0000003e 	andeq	r0, r0, lr, lsr r0
  6c:	69050404 	stmdbvs	r5, {r2, sl}
  70:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
  74:	00480704 	subeq	r0, r8, r4, lsl #14
  78:	24030000 	strcs	r0, [r3], #-0
  7c:	03000001 	movweq	r0, #1
  80:	00004c30 	andeq	r4, r0, r0, lsr ip
  84:	03180500 	tsteq	r8, #0, 10
  88:	04040000 	streq	r0, [r4], #-0
  8c:	02c90446 	sbceq	r0, r9, #1174405120	; 0x46000000
  90:	42060000 	andmi	r0, r6, #0
  94:	48040030 	stmdami	r4, {r4, r5}
  98:	00003004 	andeq	r3, r0, r4
  9c:	07010100 	streq	r0, [r1, -r0, lsl #2]
  a0:	06002302 	streq	r2, [r0], -r2, lsl #6
  a4:	04003142 	streq	r3, [r0], #-322	; 0xfffffebe
  a8:	00300449 	eorseq	r0, r0, r9, asr #8
  ac:	01010000 	mrseq	r0, (UNDEF: 1)
  b0:	00230206 	eoreq	r0, r3, r6, lsl #4
  b4:	00324206 	eorseq	r4, r2, r6, lsl #4
  b8:	30044a04 	andcc	r4, r4, r4, lsl #20
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	23020501 	movwcs	r0, #9473	; 0x2501
  c4:	33420600 	movtcc	r0, #9728	; 0x2600
  c8:	044b0400 	strbeq	r0, [fp], #-1024	; 0xfffffc00
  cc:	00000030 	andeq	r0, r0, r0, lsr r0
  d0:	02040101 	andeq	r0, r4, #1073741824	; 0x40000000
  d4:	42060023 	andmi	r0, r6, #35	; 0x23
  d8:	4c040034 	stcmi	0, cr0, [r4], {52}	; 0x34
  dc:	00003004 	andeq	r3, r0, r4
  e0:	03010100 	movweq	r0, #4352	; 0x1100
  e4:	06002302 	streq	r2, [r0], -r2, lsl #6
  e8:	04003542 	streq	r3, [r0], #-1346	; 0xfffffabe
  ec:	0030044d 	eorseq	r0, r0, sp, asr #8
  f0:	01010000 	mrseq	r0, (UNDEF: 1)
  f4:	00230202 	eoreq	r0, r3, r2, lsl #4
  f8:	00364206 	eorseq	r4, r6, r6, lsl #4
  fc:	30044e04 	andcc	r4, r4, r4, lsl #28
 100:	01000000 	mrseq	r0, (UNDEF: 0)
 104:	23020101 	movwcs	r0, #8449	; 0x2101
 108:	37420600 	strbcc	r0, [r2, -r0, lsl #12]
 10c:	044f0400 	strbeq	r0, [pc], #-1024	; 114 <current_sp+0x60>
 110:	00000030 	andeq	r0, r0, r0, lsr r0
 114:	02000101 	andeq	r0, r0, #1073741824	; 0x40000000
 118:	42060023 	andmi	r0, r6, #35	; 0x23
 11c:	50040038 	andpl	r0, r4, r8, lsr r0
 120:	00003004 	andeq	r3, r0, r4
 124:	07010100 	streq	r0, [r1, -r0, lsl #2]
 128:	06012302 	streq	r2, [r1], -r2, lsl #6
 12c:	04003942 	streq	r3, [r0], #-2370	; 0xfffff6be
 130:	00300451 	eorseq	r0, r0, r1, asr r4
 134:	01010000 	mrseq	r0, (UNDEF: 1)
 138:	01230206 			; <UNDEFINED> instruction: 0x01230206
 13c:	30314206 	eorscc	r4, r1, r6, lsl #4
 140:	04520400 	ldrbeq	r0, [r2], #-1024	; 0xfffffc00
 144:	00000030 	andeq	r0, r0, r0, lsr r0
 148:	02050101 	andeq	r0, r5, #1073741824	; 0x40000000
 14c:	42060123 	andmi	r0, r6, #-1073741816	; 0xc0000008
 150:	04003131 	streq	r3, [r0], #-305	; 0xfffffecf
 154:	00300453 	eorseq	r0, r0, r3, asr r4
 158:	01010000 	mrseq	r0, (UNDEF: 1)
 15c:	01230204 			; <UNDEFINED> instruction: 0x01230204
 160:	32314206 	eorscc	r4, r1, #1610612736	; 0x60000000
 164:	04540400 	ldrbeq	r0, [r4], #-1024	; 0xfffffc00
 168:	00000030 	andeq	r0, r0, r0, lsr r0
 16c:	02030101 	andeq	r0, r3, #1073741824	; 0x40000000
 170:	42060123 	andmi	r0, r6, #-1073741816	; 0xc0000008
 174:	04003331 	streq	r3, [r0], #-817	; 0xfffffccf
 178:	00300455 	eorseq	r0, r0, r5, asr r4
 17c:	01010000 	mrseq	r0, (UNDEF: 1)
 180:	01230202 			; <UNDEFINED> instruction: 0x01230202
 184:	34314206 	ldrtcc	r4, [r1], #-518	; 0xfffffdfa
 188:	04560400 	ldrbeq	r0, [r6], #-1024	; 0xfffffc00
 18c:	00000030 	andeq	r0, r0, r0, lsr r0
 190:	02010101 	andeq	r0, r1, #1073741824	; 0x40000000
 194:	42060123 	andmi	r0, r6, #-1073741816	; 0xc0000008
 198:	04003531 	streq	r3, [r0], #-1329	; 0xfffffacf
 19c:	00300457 	eorseq	r0, r0, r7, asr r4
 1a0:	01010000 	mrseq	r0, (UNDEF: 1)
 1a4:	01230200 			; <UNDEFINED> instruction: 0x01230200
 1a8:	36314206 	ldrtcc	r4, [r1], -r6, lsl #4
 1ac:	04580400 	ldrbeq	r0, [r8], #-1024	; 0xfffffc00
 1b0:	00000030 	andeq	r0, r0, r0, lsr r0
 1b4:	02070101 	andeq	r0, r7, #1073741824	; 0x40000000
 1b8:	42060223 	andmi	r0, r6, #805306370	; 0x30000002
 1bc:	04003731 	streq	r3, [r0], #-1841	; 0xfffff8cf
 1c0:	00300459 	eorseq	r0, r0, r9, asr r4
 1c4:	01010000 	mrseq	r0, (UNDEF: 1)
 1c8:	02230206 	eoreq	r0, r3, #1610612736	; 0x60000000
 1cc:	38314206 	ldmdacc	r1!, {r1, r2, r9, lr}
 1d0:	045a0400 	ldrbeq	r0, [sl], #-1024	; 0xfffffc00
 1d4:	00000030 	andeq	r0, r0, r0, lsr r0
 1d8:	02050101 	andeq	r0, r5, #1073741824	; 0x40000000
 1dc:	42060223 	andmi	r0, r6, #805306370	; 0x30000002
 1e0:	04003931 	streq	r3, [r0], #-2353	; 0xfffff6cf
 1e4:	0030045b 	eorseq	r0, r0, fp, asr r4
 1e8:	01010000 	mrseq	r0, (UNDEF: 1)
 1ec:	02230204 	eoreq	r0, r3, #4, 4	; 0x40000000
 1f0:	30324206 	eorscc	r4, r2, r6, lsl #4
 1f4:	045c0400 	ldrbeq	r0, [ip], #-1024	; 0xfffffc00
 1f8:	00000030 	andeq	r0, r0, r0, lsr r0
 1fc:	02030101 	andeq	r0, r3, #1073741824	; 0x40000000
 200:	42060223 	andmi	r0, r6, #805306370	; 0x30000002
 204:	04003132 	streq	r3, [r0], #-306	; 0xfffffece
 208:	0030045d 	eorseq	r0, r0, sp, asr r4
 20c:	01010000 	mrseq	r0, (UNDEF: 1)
 210:	02230202 	eoreq	r0, r3, #536870912	; 0x20000000
 214:	32324206 	eorscc	r4, r2, #1610612736	; 0x60000000
 218:	045e0400 	ldrbeq	r0, [lr], #-1024	; 0xfffffc00
 21c:	00000030 	andeq	r0, r0, r0, lsr r0
 220:	02010101 	andeq	r0, r1, #1073741824	; 0x40000000
 224:	42060223 	andmi	r0, r6, #805306370	; 0x30000002
 228:	04003332 	streq	r3, [r0], #-818	; 0xfffffcce
 22c:	0030045f 	eorseq	r0, r0, pc, asr r4
 230:	01010000 	mrseq	r0, (UNDEF: 1)
 234:	02230200 	eoreq	r0, r3, #0, 4
 238:	34324206 	ldrtcc	r4, [r2], #-518	; 0xfffffdfa
 23c:	04600400 	strbteq	r0, [r0], #-1024	; 0xfffffc00
 240:	00000030 	andeq	r0, r0, r0, lsr r0
 244:	02070101 	andeq	r0, r7, #1073741824	; 0x40000000
 248:	42060323 	andmi	r0, r6, #-1946157056	; 0x8c000000
 24c:	04003532 	streq	r3, [r0], #-1330	; 0xffffface
 250:	00300461 	eorseq	r0, r0, r1, ror #8
 254:	01010000 	mrseq	r0, (UNDEF: 1)
 258:	03230206 			; <UNDEFINED> instruction: 0x03230206
 25c:	36324206 	ldrtcc	r4, [r2], -r6, lsl #4
 260:	04620400 	strbteq	r0, [r2], #-1024	; 0xfffffc00
 264:	00000030 	andeq	r0, r0, r0, lsr r0
 268:	02050101 	andeq	r0, r5, #1073741824	; 0x40000000
 26c:	42060323 	andmi	r0, r6, #-1946157056	; 0x8c000000
 270:	04003732 	streq	r3, [r0], #-1842	; 0xfffff8ce
 274:	00300463 	eorseq	r0, r0, r3, ror #8
 278:	01010000 	mrseq	r0, (UNDEF: 1)
 27c:	03230204 			; <UNDEFINED> instruction: 0x03230204
 280:	38324206 	ldmdacc	r2!, {r1, r2, r9, lr}
 284:	04640400 	strbteq	r0, [r4], #-1024	; 0xfffffc00
 288:	00000030 	andeq	r0, r0, r0, lsr r0
 28c:	02030101 	andeq	r0, r3, #1073741824	; 0x40000000
 290:	42060323 	andmi	r0, r6, #-1946157056	; 0x8c000000
 294:	04003932 	streq	r3, [r0], #-2354	; 0xfffff6ce
 298:	00300465 	eorseq	r0, r0, r5, ror #8
 29c:	01010000 	mrseq	r0, (UNDEF: 1)
 2a0:	03230202 			; <UNDEFINED> instruction: 0x03230202
 2a4:	30334206 	eorscc	r4, r3, r6, lsl #4
 2a8:	04660400 	strbteq	r0, [r6], #-1024	; 0xfffffc00
 2ac:	00000030 	andeq	r0, r0, r0, lsr r0
 2b0:	02010101 	andeq	r0, r1, #1073741824	; 0x40000000
 2b4:	42060323 	andmi	r0, r6, #-1946157056	; 0x8c000000
 2b8:	04003133 	streq	r3, [r0], #-307	; 0xfffffecd
 2bc:	00300467 	eorseq	r0, r0, r7, ror #8
 2c0:	01010000 	mrseq	r0, (UNDEF: 1)
 2c4:	03230200 			; <UNDEFINED> instruction: 0x03230200
 2c8:	04080200 	streq	r0, [r8], #-512	; 0xfffffe00
 2cc:	000000e9 	andeq	r0, r0, r9, ror #1
 2d0:	c0070402 	andgt	r0, r7, r2, lsl #8
 2d4:	03000001 	movweq	r0, #1
 2d8:	0000015e 	andeq	r0, r0, lr, asr r1
 2dc:	00731305 	rsbseq	r1, r3, r5, lsl #6
 2e0:	42030000 	andmi	r0, r3, #0
 2e4:	05000001 	streq	r0, [r0, #-1]
 2e8:	00003016 	andeq	r3, r0, r6, lsl r0
 2ec:	01150300 	tsteq	r5, r0, lsl #6
 2f0:	1a050000 	bne	1402f8 <__mprec_tinytens+0x11ba88>
 2f4:	0000003e 	andeq	r0, r0, lr, lsr r0
 2f8:	00011403 	andeq	r1, r1, r3, lsl #8
 2fc:	571f0500 	ldrpl	r0, [pc, -r0, lsl #10]
 300:	07000000 	streq	r0, [r0, -r0]
 304:	2a130701 	bcs	4c1f10 <__mprec_tinytens+0x49d6a0>
 308:	08000003 	stmdaeq	r0, {r0, r1}
 30c:	000001e0 	andeq	r0, r0, r0, ror #3
 310:	01540800 	cmpeq	r4, r0, lsl #16
 314:	08010000 	stmdaeq	r1, {}	; <UNPREDICTABLE>
 318:	00000000 	andeq	r0, r0, r0
 31c:	00290802 	eoreq	r0, r9, r2, lsl #16
 320:	08030000 	stmdaeq	r3, {}	; <UNPREDICTABLE>
 324:	000000af 	andeq	r0, r0, pc, lsr #1
 328:	01020004 	tsteq	r2, r4
 32c:	00022a08 	andeq	r2, r2, r8, lsl #20
 330:	011a0300 	tsteq	sl, r0, lsl #6
 334:	4e060000 	cdpmi	0, 0, cr0, cr6, cr0, {0}
 338:	000002f8 	strdeq	r0, [r0], -r8
 33c:	06023409 	streq	r3, [r2], -r9, lsl #8
 340:	00044f55 	andeq	r4, r4, r5, asr pc
 344:	00210a00 	eoreq	r0, r1, r0, lsl #20
 348:	56060000 	strpl	r0, [r6], -r0
 34c:	000002e2 	andeq	r0, r0, r2, ror #5
 350:	0a002302 	beq	8f60 <disk_initialize+0xec>
 354:	00000133 	andeq	r0, r0, r3, lsr r1
 358:	02e25706 	rsceq	r5, r2, #1572864	; 0x180000
 35c:	23020000 	movwcs	r0, #8192	; 0x2000
 360:	00ba0a01 	adcseq	r0, sl, r1, lsl #20
 364:	58060000 	stmdapl	r6, {}	; <UNPREDICTABLE>
 368:	000002e2 	andeq	r0, r0, r2, ror #5
 36c:	0a022302 	beq	88f7c <__mprec_tinytens+0x6470c>
 370:	0000026e 	andeq	r0, r0, lr, ror #4
 374:	02e25906 	rsceq	r5, r2, #98304	; 0x18000
 378:	23020000 	movwcs	r0, #8192	; 0x2000
 37c:	030f0a03 	movweq	r0, #64003	; 0xfa03
 380:	5a060000 	bpl	180388 <__mprec_tinytens+0x15bb18>
 384:	000002e2 	andeq	r0, r0, r2, ror #5
 388:	0b042302 	bleq	108f98 <__mprec_tinytens+0xe4728>
 38c:	06006469 	streq	r6, [r0], -r9, ror #8
 390:	0002ed5b 	andeq	lr, r2, fp, asr sp
 394:	06230200 	strteq	r0, [r3], -r0, lsl #4
 398:	0000340a 	andeq	r3, r0, sl, lsl #8
 39c:	ed5c0600 	ldcl	6, cr0, [ip, #-0]
 3a0:	02000002 	andeq	r0, r0, #2
 3a4:	2d0a0823 	stccs	8, cr0, [sl, #-140]	; 0xffffff74
 3a8:	06000001 	streq	r0, [r0], -r1
 3ac:	0002ed5d 	andeq	lr, r2, sp, asr sp
 3b0:	0a230200 	beq	8c0bb8 <__mprec_tinytens+0x89c348>
 3b4:	0002010a 	andeq	r0, r2, sl, lsl #2
 3b8:	f86b0600 			; <UNDEFINED> instruction: 0xf86b0600
 3bc:	02000002 	andeq	r0, r0, #2
 3c0:	380a0c23 	stmdacc	sl, {r0, r1, r5, sl, fp}
 3c4:	06000001 	streq	r0, [r0], -r1
 3c8:	0002f86c 	andeq	pc, r2, ip, ror #16
 3cc:	10230200 	eorne	r0, r3, r0, lsl #4
 3d0:	0001d40a 	andeq	sp, r1, sl, lsl #8
 3d4:	f86f0600 			; <UNDEFINED> instruction: 0xf86f0600
 3d8:	02000002 	andeq	r0, r0, #2
 3dc:	940a1423 	strls	r1, [sl], #-1059	; 0xfffffbdd
 3e0:	06000000 	streq	r0, [r0], -r0
 3e4:	0002f876 	andeq	pc, r2, r6, ror r8	; <UNPREDICTABLE>
 3e8:	18230200 	stmdane	r3!, {r9}
 3ec:	00008e0a 	andeq	r8, r0, sl, lsl #28
 3f0:	f8770600 			; <UNDEFINED> instruction: 0xf8770600
 3f4:	02000002 	andeq	r0, r0, #2
 3f8:	f70a1c23 			; <UNDEFINED> instruction: 0xf70a1c23
 3fc:	06000002 	streq	r0, [r0], -r2
 400:	0002f878 	andeq	pc, r2, r8, ror r8	; <UNPREDICTABLE>
 404:	20230200 	eorcs	r0, r3, r0, lsl #4
 408:	00010c0a 	andeq	r0, r1, sl, lsl #24
 40c:	f8790600 			; <UNDEFINED> instruction: 0xf8790600
 410:	02000002 	andeq	r0, r0, #2
 414:	630a2423 	movwvs	r2, #42019	; 0xa423
 418:	06000000 	streq	r0, [r0], -r0
 41c:	0002f87a 	andeq	pc, r2, sl, ror r8	; <UNPREDICTABLE>
 420:	28230200 	stmdacs	r3!, {r9}
 424:	0002100a 	andeq	r1, r2, sl
 428:	f87b0600 			; <UNDEFINED> instruction: 0xf87b0600
 42c:	02000002 	andeq	r0, r0, #2
 430:	940a2c23 	strls	r2, [sl], #-3107	; 0xfffff3dd
 434:	06000001 	streq	r0, [r0], -r1
 438:	0002f87c 	andeq	pc, r2, ip, ror r8	; <UNPREDICTABLE>
 43c:	30230200 	eorcc	r0, r3, r0, lsl #4
 440:	6e69770b 	cdpvs	7, 6, cr7, cr9, cr11, {0}
 444:	4f7d0600 	svcmi	0x007d0600
 448:	02000004 	andeq	r0, r0, #4
 44c:	0c003423 	cfstrseq	mvf3, [r0], {35}	; 0x23
 450:	000002e2 	andeq	r0, r0, r2, ror #5
 454:	00000460 	andeq	r0, r0, r0, ror #8
 458:	0002d00d 	andeq	sp, r2, sp
 45c:	0001ff00 	andeq	pc, r1, r0, lsl #30
 460:	0001b503 	andeq	fp, r1, r3, lsl #10
 464:	3c7e0600 	ldclcc	6, cr0, [lr], #-0
 468:	0e000003 	cdpeq	0, 0, cr0, cr0, cr3, {0}
 46c:	c6840610 	pkhbtgt	r0, r4, r0, lsl #12
 470:	0b000004 	bleq	488 <current_sp+0x3d4>
 474:	06007366 	streq	r7, [r0], -r6, ror #6
 478:	0004c685 	andeq	ip, r4, r5, lsl #13
 47c:	00230200 	eoreq	r0, r3, r0, lsl #4
 480:	0064690b 	rsbeq	r6, r4, fp, lsl #18
 484:	02ed8606 	rsceq	r8, sp, #6291456	; 0x600000
 488:	23020000 	movwcs	r0, #8192	; 0x2000
 48c:	014f0a04 	cmpeq	pc, r4, lsl #20
 490:	87060000 	strhi	r0, [r6, -r0]
 494:	000002e2 	andeq	r0, r0, r2, ror #5
 498:	0a062302 	beq	1890a8 <__mprec_tinytens+0x164838>
 49c:	0000032d 	andeq	r0, r0, sp, lsr #6
 4a0:	02e28806 	rsceq	r8, r2, #393216	; 0x60000
 4a4:	23020000 	movwcs	r0, #8192	; 0x2000
 4a8:	01d90a07 	bicseq	r0, r9, r7, lsl #20
 4ac:	89060000 	stmdbhi	r6, {}	; <UNPREDICTABLE>
 4b0:	000002f8 	strdeq	r0, [r0], -r8
 4b4:	0a082302 	beq	2090c4 <__mprec_tinytens+0x1e4854>
 4b8:	00000219 	andeq	r0, r0, r9, lsl r2
 4bc:	03318a06 	teqeq	r1, #24576	; 0x6000
 4c0:	23020000 	movwcs	r0, #8192	; 0x2000
 4c4:	040f000c 	streq	r0, [pc], #-12	; 4cc <current_sp+0x418>
 4c8:	00000460 	andeq	r0, r0, r0, ror #8
 4cc:	0003a703 	andeq	sl, r3, r3, lsl #14
 4d0:	6b950600 	blvs	fe541cd8 <_sp_base+0xbe531ce0>
 4d4:	0e000004 	cdpeq	0, 0, cr0, cr0, cr4, {0}
 4d8:	5e9b062c 	cdppl	6, 9, cr0, cr11, cr12, {1}
 4dc:	0b000005 	bleq	4f8 <current_sp+0x444>
 4e0:	006a626f 	rsbeq	r6, sl, pc, ror #4
 4e4:	04cc9c06 	strbeq	r9, [ip], #3078	; 0xc06
 4e8:	23020000 	movwcs	r0, #8192	; 0x2000
 4ec:	03130a00 	tsteq	r3, #0, 20
 4f0:	9d060000 	stcls	0, cr0, [r6, #-0]
 4f4:	000002e2 	andeq	r0, r0, r2, ror #5
 4f8:	0b102302 	bleq	409108 <__mprec_tinytens+0x3e4898>
 4fc:	00727265 	rsbseq	r7, r2, r5, ror #4
 500:	02e29e06 	rsceq	r9, r2, #6, 28	; 0x60
 504:	23020000 	movwcs	r0, #8192	; 0x2000
 508:	01bb0a11 			; <UNDEFINED> instruction: 0x01bb0a11
 50c:	9f060000 	svcls	0x00060000
 510:	00000331 	andeq	r0, r0, r1, lsr r3
 514:	0a142302 	beq	509124 <__mprec_tinytens+0x4e48b4>
 518:	000001da 	ldrdeq	r0, [r0], -sl
 51c:	02f8a006 	rscseq	sl, r8, #6
 520:	23020000 	movwcs	r0, #8192	; 0x2000
 524:	005e0a18 	subseq	r0, lr, r8, lsl sl
 528:	a1060000 	mrsge	r0, (UNDEF: 6)
 52c:	000002f8 	strdeq	r0, [r0], -r8
 530:	0a1c2302 	beq	709140 <__mprec_tinytens+0x6e48d0>
 534:	0000005a 	andeq	r0, r0, sl, asr r0
 538:	02f8a306 	rscseq	sl, r8, #402653184	; 0x18000000
 53c:	23020000 	movwcs	r0, #8192	; 0x2000
 540:	01470a20 	cmpeq	r7, r0, lsr #20
 544:	a4060000 	strge	r0, [r6], #-0
 548:	0000055e 	andeq	r0, r0, lr, asr r5
 54c:	0a242302 	beq	90915c <__mprec_tinytens+0x8e48ec>
 550:	0000031d 	andeq	r0, r0, sp, lsl r3
 554:	0564a706 	strbeq	sl, [r4, #-1798]!	; 0xfffff8fa
 558:	23020000 	movwcs	r0, #8192	; 0x2000
 55c:	040f0028 	streq	r0, [pc], #-40	; 564 <current_sp+0x4b0>
 560:	000002e2 	andeq	r0, r0, r2, ror #5
 564:	02f8040f 	rscseq	r0, r8, #251658240	; 0xf000000
 568:	46100000 	ldrmi	r0, [r0], -r0
 56c:	06004c49 	streq	r4, [r0], -r9, asr #24
 570:	0004d7ac 	andeq	sp, r4, ip, lsr #15
 574:	06010700 	streq	r0, [r1], -r0, lsl #14
 578:	0005f6d6 	ldrdeq	pc, [r5], -r6
 57c:	019c0800 	orrseq	r0, ip, r0, lsl #16
 580:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 584:	00000188 	andeq	r0, r0, r8, lsl #3
 588:	01760801 	cmneq	r6, r1, lsl #16
 58c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 590:	00000395 	muleq	r0, r5, r3
 594:	01e70803 	mvneq	r0, r3, lsl #16
 598:	08040000 	stmdaeq	r4, {}	; <UNPREDICTABLE>
 59c:	0000038a 	andeq	r0, r0, sl, lsl #7
 5a0:	02ff0805 	rscseq	r0, pc, #327680	; 0x50000
 5a4:	08060000 	stmdaeq	r6, {}	; <UNPREDICTABLE>
 5a8:	0000024a 	andeq	r0, r0, sl, asr #4
 5ac:	01030807 	tsteq	r3, r7, lsl #16
 5b0:	08080000 	stmdaeq	r8, {}	; <UNPREDICTABLE>
 5b4:	0000009d 	muleq	r0, sp, r0
 5b8:	01a20809 			; <UNDEFINED> instruction: 0x01a20809
 5bc:	080a0000 	stmdaeq	sl, {}	; <UNPREDICTABLE>
 5c0:	00000239 	andeq	r0, r0, r9, lsr r2
 5c4:	01f2080b 	mvnseq	r0, fp, lsl #16
 5c8:	080c0000 	stmdaeq	ip, {}	; <UNPREDICTABLE>
 5cc:	000000ce 	andeq	r0, r0, lr, asr #1
 5d0:	0254080d 	subseq	r0, r4, #851968	; 0xd0000
 5d4:	080e0000 	stmdaeq	lr, {}	; <UNPREDICTABLE>
 5d8:	000001c9 	andeq	r0, r0, r9, asr #3
 5dc:	0264080f 	rsbeq	r0, r4, #983040	; 0xf0000
 5e0:	08100000 	ldmdaeq	r0, {}	; <UNPREDICTABLE>
 5e4:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 5e8:	000a0811 	andeq	r0, sl, r1, lsl r8
 5ec:	08120000 	ldmdaeq	r2, {}	; <UNPREDICTABLE>
 5f0:	00000079 	andeq	r0, r0, r9, ror r0
 5f4:	32030013 	andcc	r0, r3, #19
 5f8:	06000003 	streq	r0, [r0], -r3
 5fc:	000575eb 	andeq	r7, r5, fp, ror #11
 600:	0d011100 	stfeqs	f1, [r1, #-0]
 604:	12000006 	andne	r0, r0, #6
 608:	00000030 	andeq	r0, r0, r0, lsr r0
 60c:	00df1300 	sbcseq	r1, pc, r0, lsl #6
 610:	15080000 	strne	r0, [r8, #-0]
 614:	0000061a 	andeq	r0, r0, sl, lsl r6
 618:	040f0101 	streq	r0, [pc], #-257	; 620 <current_sp+0x56c>
 61c:	00000601 	andeq	r0, r0, r1, lsl #12
 620:	00300114 	eorseq	r0, r0, r4, lsl r1
 624:	74130000 	ldrvc	r0, [r3], #-0
 628:	08000002 	stmdaeq	r0, {r1}
 62c:	00063325 	andeq	r3, r6, r5, lsr #6
 630:	0f010100 	svceq	0x00010100
 634:	00062004 	andeq	r2, r6, r4
 638:	a2011500 	andge	r1, r1, #0, 10
 63c:	01000003 	tsteq	r0, r3
 640:	006c0123 	rsbeq	r0, ip, r3, lsr #2
 644:	211c0000 	tstcs	ip, r0
 648:	23784000 	cmncs	r8, #0
 64c:	00004000 	andeq	r4, r0, r0
 650:	069f0000 	ldreq	r0, [pc], r0
 654:	46160000 	ldrmi	r0, [r6], -r0
 658:	01006c69 	tsteq	r0, r9, ror #24
 65c:	00056a25 	andeq	r6, r5, r5, lsr #20
 660:	44910200 	ldrmi	r0, [r1], #512	; 0x200
 664:	0000c817 	andeq	ip, r0, r7, lsl r8
 668:	60260100 	eorvs	r0, r6, r0, lsl #2
 66c:	03000004 	movweq	r0, #4
 670:	167b9091 			; <UNDEFINED> instruction: 0x167b9091
 674:	01007762 	tsteq	r0, r2, ror #14
 678:	0002d727 	andeq	sp, r2, r7, lsr #14
 67c:	8c910300 	ldchi	3, cr0, [r1], {0}
 680:	6372187b 	cmnvs	r2, #8060928	; 0x7b0000
 684:	f6280100 			; <UNDEFINED> instruction: 0xf6280100
 688:	52000005 	andpl	r0, r0, #5
 68c:	17000000 	strne	r0, [r0, -r0]
 690:	00000055 	andeq	r0, r0, r5, asr r0
 694:	069f2901 	ldreq	r2, [pc], r1, lsl #18
 698:	91030000 	mrsls	r0, (UNDEF: 3)
 69c:	0c007b88 			; <UNDEFINED> instruction: 0x0c007b88
 6a0:	00000030 	andeq	r0, r0, r0, lsr r0
 6a4:	000006af 	andeq	r0, r0, pc, lsr #13
 6a8:	0002d019 	andeq	sp, r2, r9, lsl r0
 6ac:	1a000100 	bne	ab4 <current_sp+0xa00>
 6b0:	0000c101 	andeq	ip, r0, r1, lsl #2
 6b4:	01160100 	tsteq	r6, r0, lsl #2
 6b8:	40002088 	andmi	r2, r0, r8, lsl #1
 6bc:	4000211c 	andmi	r2, r0, ip, lsl r1
 6c0:	0000009c 	muleq	r0, ip, r0
 6c4:	000006e4 	andeq	r0, r0, r4, ror #13
 6c8:	0100661b 	tsteq	r0, fp, lsl r6
 6cc:	0006e416 	andeq	lr, r6, r6, lsl r4
 6d0:	0000d400 	andeq	sp, r0, r0, lsl #8
 6d4:	63721b00 	cmnvs	r2, #0, 22
 6d8:	f6160100 			; <UNDEFINED> instruction: 0xf6160100
 6dc:	e7000005 	str	r0, [r0, -r5]
 6e0:	00000000 	andeq	r0, r0, r0
 6e4:	032a040f 			; <UNDEFINED> instruction: 0x032a040f
 6e8:	011c0000 	tsteq	ip, r0
 6ec:	00000323 	andeq	r0, r0, r3, lsr #6
 6f0:	50010a01 	andpl	r0, r1, r1, lsl #20
 6f4:	88400020 	stmdahi	r0, {r5}^
 6f8:	02400020 	subeq	r0, r0, #32
 6fc:	281d007d 	ldmdacs	sp, {r0, r2, r3, r4, r5, r6}
 700:	01000003 	tsteq	r0, r3
 704:	0000730a 	andeq	r7, r0, sl, lsl #6
 708:	0000fa00 	andeq	pc, r0, r0, lsl #20
 70c:	020b1700 	andeq	r1, fp, #0, 14
 710:	0c010000 	stceq	0, cr0, [r1], {-0}
 714:	00000073 	andeq	r0, r0, r3, ror r0
 718:	00005001 	andeq	r5, r0, r1

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
  2c:	00240400 	eoreq	r0, r4, r0, lsl #8
  30:	0b3e0b0b 	bleq	f82c64 <__mprec_tinytens+0xf5e3f4>
  34:	00000803 	andeq	r0, r0, r3, lsl #16
  38:	03011305 	movweq	r1, #4869	; 0x1305
  3c:	3a0b0b0e 	bcc	2c2c7c <__mprec_tinytens+0x29e40c>
  40:	01053b0b 	tsteq	r5, fp, lsl #22
  44:	06000013 			; <UNDEFINED> instruction: 0x06000013
  48:	0803000d 	stmdaeq	r3, {r0, r2, r3}
  4c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
  50:	0b0b1349 	bleq	2c4d7c <__mprec_tinytens+0x2a050c>
  54:	0b0c0b0d 	bleq	302c90 <__mprec_tinytens+0x2de420>
  58:	00000a38 	andeq	r0, r0, r8, lsr sl
  5c:	0b010407 	bleq	41080 <__mprec_tinytens+0x1c810>
  60:	3b0b3a0b 	blcc	2ce894 <__mprec_tinytens+0x2aa024>
  64:	0013010b 	andseq	r0, r3, fp, lsl #2
  68:	00280800 	eoreq	r0, r8, r0, lsl #16
  6c:	0b1c0e03 	bleq	703880 <__mprec_tinytens+0x6df010>
  70:	13090000 	movwne	r0, #36864	; 0x9000
  74:	3a050b01 	bcc	142c80 <__mprec_tinytens+0x11e410>
  78:	010b3b0b 	tsteq	fp, fp, lsl #22
  7c:	0a000013 	beq	d0 <current_sp+0x1c>
  80:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  84:	0b3b0b3a 	bleq	ec2d74 <__mprec_tinytens+0xe9e504>
  88:	0a381349 	beq	e04db4 <__mprec_tinytens+0xde0544>
  8c:	0d0b0000 	stceq	0, cr0, [fp, #-0]
  90:	3a080300 	bcc	200c98 <__mprec_tinytens+0x1dc428>
  94:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  98:	000a3813 	andeq	r3, sl, r3, lsl r8
  9c:	01010c00 	tsteq	r1, r0, lsl #24
  a0:	13011349 	movwne	r1, #4937	; 0x1349
  a4:	210d0000 	mrscs	r0, (UNDEF: 13)
  a8:	2f134900 	svccs	0x00134900
  ac:	0e000005 	cdpeq	0, 0, cr0, cr0, cr5, {0}
  b0:	0b0b0113 	bleq	2c0504 <__mprec_tinytens+0x29bc94>
  b4:	0b3b0b3a 	bleq	ec2da4 <__mprec_tinytens+0xe9e534>
  b8:	00001301 	andeq	r1, r0, r1, lsl #6
  bc:	0b000f0f 	bleq	3d00 <LPC2388_Initialize+0x2a4>
  c0:	0013490b 	andseq	r4, r3, fp, lsl #18
  c4:	00161000 	andseq	r1, r6, r0
  c8:	0b3a0803 	bleq	e820dc <__mprec_tinytens+0xe5d86c>
  cc:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  d0:	15110000 	ldrne	r0, [r1, #-0]
  d4:	010c2701 	tsteq	ip, r1, lsl #14
  d8:	12000013 	andne	r0, r0, #19
  dc:	13490005 	movtne	r0, #36869	; 0x9005
  e0:	34130000 	ldrcc	r0, [r3], #-0
  e4:	3a0e0300 	bcc	380cec <__mprec_tinytens+0x35c47c>
  e8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  ec:	3c0c3f13 	stccc	15, cr3, [ip], {19}
  f0:	1400000c 	strne	r0, [r0], #-12
  f4:	0c270015 	stceq	0, cr0, [r7], #-84	; 0xffffffac
  f8:	00001349 	andeq	r1, r0, r9, asr #6
  fc:	3f012e15 	svccc	0x00012e15
 100:	3a0e030c 	bcc	380d38 <__mprec_tinytens+0x35c4c8>
 104:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 108:	1113490c 	tstne	r3, ip, lsl #18
 10c:	40011201 	andmi	r1, r1, r1, lsl #4
 110:	00130106 	andseq	r0, r3, r6, lsl #2
 114:	00341600 	eorseq	r1, r4, r0, lsl #12
 118:	0b3a0803 	bleq	e8212c <__mprec_tinytens+0xe5d8bc>
 11c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 120:	00000a02 	andeq	r0, r0, r2, lsl #20
 124:	03003417 	movweq	r3, #1047	; 0x417
 128:	3b0b3a0e 	blcc	2ce968 <__mprec_tinytens+0x2aa0f8>
 12c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 130:	1800000a 	stmdane	r0, {r1, r3}
 134:	08030034 	stmdaeq	r3, {r2, r4, r5}
 138:	0b3b0b3a 	bleq	ec2e28 <__mprec_tinytens+0xe9e5b8>
 13c:	06021349 	streq	r1, [r2], -r9, asr #6
 140:	21190000 	tstcs	r9, r0
 144:	2f134900 	svccs	0x00134900
 148:	1a00000b 	bne	17c <current_sp+0xc8>
 14c:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 9c <current_sp-0x18>
 150:	0b3a0e03 	bleq	e83964 <__mprec_tinytens+0xe5f0f4>
 154:	0c270b3b 			; <UNDEFINED> instruction: 0x0c270b3b
 158:	01120111 	tsteq	r2, r1, lsl r1
 15c:	13010640 	movwne	r0, #5696	; 0x1640
 160:	051b0000 	ldreq	r0, [fp, #-0]
 164:	3a080300 	bcc	200d6c <__mprec_tinytens+0x1dc4fc>
 168:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 16c:	00060213 	andeq	r0, r6, r3, lsl r2
 170:	012e1c00 			; <UNDEFINED> instruction: 0x012e1c00
 174:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 178:	0b3b0b3a 	bleq	ec2e68 <__mprec_tinytens+0xe9e5f8>
 17c:	01110c27 	tsteq	r1, r7, lsr #24
 180:	0a400112 	beq	10005d0 <__mprec_tinytens+0xfdbd60>
 184:	051d0000 	ldreq	r0, [sp, #-0]
 188:	3a0e0300 	bcc	380d90 <__mprec_tinytens+0x35c520>
 18c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 190:	00060213 	andeq	r0, r6, r3, lsl r2
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	000000cc 	andeq	r0, r0, ip, asr #1
   4:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	000000d4 	ldrdeq	r0, [r0], -r4
  14:	0c7d0002 	ldcleq	0, cr0, [sp], #-8
  18:	000000d4 	ldrdeq	r0, [r0], -r4
  1c:	00000214 	andeq	r0, r0, r4, lsl r2
  20:	f87d0003 			; <UNDEFINED> instruction: 0xf87d0003
  24:	00021404 	andeq	r1, r2, r4, lsl #8
  28:	00021800 	andeq	r1, r2, r0, lsl #16
  2c:	7d000200 	sfmvc	f0, 4, [r0, #-0]
  30:	0002180c 	andeq	r1, r2, ip, lsl #16
  34:	00021c00 	andeq	r1, r2, r0, lsl #24
  38:	7d000200 	sfmvc	f0, 4, [r0, #-0]
  3c:	00021c00 	andeq	r1, r2, r0, lsl #24
  40:	00032800 	andeq	r2, r3, r0, lsl #16
  44:	7d000300 	stcvc	3, cr0, [r0, #-0]
  48:	000004f8 	strdeq	r0, [r0], -r8
  4c:	00000000 	andeq	r0, r0, r0
  50:	01480000 	mrseq	r0, (UNDEF: 72)
  54:	01500000 	cmpeq	r0, r0
  58:	00010000 	andeq	r0, r1, r0
  5c:	00017050 	andeq	r7, r1, r0, asr r0
  60:	00017800 	andeq	r7, r1, r0, lsl #16
  64:	50000100 	andpl	r0, r0, r0, lsl #2
  68:	000001a0 	andeq	r0, r0, r0, lsr #3
  6c:	000001a8 	andeq	r0, r0, r8, lsr #3
  70:	30500001 	subscc	r0, r0, r1
  74:	38000002 	stmdacc	r0, {r1}
  78:	01000002 	tsteq	r0, r2
  7c:	02445000 	subeq	r5, r4, #0
  80:	024c0000 	subeq	r0, ip, #0
  84:	00010000 	andeq	r0, r1, r0
  88:	0002c850 	andeq	ip, r2, r0, asr r8
  8c:	0002d000 	andeq	sp, r2, r0
  90:	50000100 	andpl	r0, r0, r0, lsl #2
	...
  9c:	00000038 	andeq	r0, r0, r8, lsr r0
  a0:	0000003c 	andeq	r0, r0, ip, lsr r0
  a4:	007d0002 	rsbseq	r0, sp, r2
  a8:	0000003c 	andeq	r0, r0, ip, lsr r0
  ac:	00000070 	andeq	r0, r0, r0, ror r0
  b0:	087d0002 	ldmdaeq	sp!, {r1}^
  b4:	00000070 	andeq	r0, r0, r0, ror r0
  b8:	00000074 	andeq	r0, r0, r4, ror r0
  bc:	007d0002 	rsbseq	r0, sp, r2
  c0:	00000074 	andeq	r0, r0, r4, ror r0
  c4:	000000cc 	andeq	r0, r0, ip, asr #1
  c8:	087d0002 	ldmdaeq	sp!, {r1}^
	...
  d4:	00000038 	andeq	r0, r0, r8, lsr r0
  d8:	00000043 	andeq	r0, r0, r3, asr #32
  dc:	00500001 	subseq	r0, r0, r1
  e0:	00000000 	andeq	r0, r0, r0
  e4:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
  e8:	43000000 	movwmi	r0, #0
  ec:	01000000 	mrseq	r0, (UNDEF: 0)
  f0:	00005100 	andeq	r5, r0, r0, lsl #2
	...
  fc:	00080000 	andeq	r0, r8, r0
 100:	00010000 	andeq	r0, r1, r0
 104:	00000050 	andeq	r0, r0, r0, asr r0
 108:	00000000 	andeq	r0, r0, r0
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	40002050 	andmi	r2, r0, r0, asr r0
  14:	00000328 	andeq	r0, r0, r8, lsr #6
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
    2684:	08010402 	stmdaeq	r1, {r1, sl}
    2688:	504c5f5f 	subpl	r5, ip, pc, asr pc
    268c:	30333243 	eorscc	r3, r3, r3, asr #4
    2690:	03002030 	movweq	r2, #48	; 0x30
    2694:	09030909 	stmdbeq	r3, {r0, r3, r8, fp}
    2698:	5f0a010a 	svcpl	0x000a010a
    269c:	49445453 	stmdbmi	r4, {r0, r1, r4, r6, sl, ip, lr}^
    26a0:	485f544e 	ldmdami	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    26a4:	0c030020 	stceq	0, cr0, [r3], {32}
    26a8:	5f060102 	svcpl	0x00060102
    26ac:	4843414d 	stmdami	r3, {r0, r2, r3, r6, r8, lr}^
    26b0:	5f454e49 	svcpl	0x00454e49
    26b4:	4645445f 			; <UNDEFINED> instruction: 0x4645445f
    26b8:	544c5541 	strbpl	r5, [ip], #-1345	; 0xfffffabf
    26bc:	5059545f 	subspl	r5, r9, pc, asr r4
    26c0:	485f5345 	ldmdami	pc, {r0, r2, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
    26c4:	08030020 	stmdaeq	r3, {r5}
    26c8:	5f16010b 	svcpl	0x0016010b
    26cc:	5f535953 	svcpl	0x00535953
    26d0:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    26d4:	53455255 	movtpl	r5, #21077	; 0x5255
    26d8:	0020485f 	eoreq	r4, r0, pc, asr r8
    26dc:	010c1c03 	tsteq	ip, r3, lsl #24
    26e0:	454e5f04 	strbmi	r5, [lr, #-3844]	; 0xfffff0fc
    26e4:	42494c57 	submi	r4, r9, #22272	; 0x5700
    26e8:	5245565f 	subpl	r5, r5, #99614720	; 0x5f00000
    26ec:	4e4f4953 			; <UNDEFINED> instruction: 0x4e4f4953
    26f0:	5f5f485f 	svcpl	0x005f485f
    26f4:	01003120 	tsteq	r0, r0, lsr #2
    26f8:	454e5f06 	strbmi	r5, [lr, #-3846]	; 0xfffff0fa
    26fc:	42494c57 	submi	r4, r9, #22272	; 0x5700
    2700:	5245565f 	subpl	r5, r5, #99614720	; 0x5f00000
    2704:	4e4f4953 			; <UNDEFINED> instruction: 0x4e4f4953
    2708:	2e322220 	cdpcs	2, 3, cr2, cr2, cr0, {1}
    270c:	22302e35 	eorscs	r2, r0, #848	; 0x350
    2710:	5f070100 	svcpl	0x00070100
    2714:	57454e5f 	smlsldpl	r4, r5, pc, lr	; <UNPREDICTABLE>
    2718:	5f42494c 	svcpl	0x0042494c
    271c:	0032205f 	eorseq	r2, r2, pc, asr r0
    2720:	5f5f0801 	svcpl	0x005f0801
    2724:	4c57454e 	cfldr64mi	mvdx4, [r7], {78}	; 0x4e
    2728:	4d5f4249 	lfmmi	f4, 2, [pc, #-292]	; 260c <ntstdio_puts+0xfc>
    272c:	524f4e49 	subpl	r4, pc, #1168	; 0x490
    2730:	35205f5f 	strcc	r5, [r0, #-3935]!	; 0xfffff0a1
    2734:	5f090100 	svcpl	0x00090100
    2738:	57454e5f 	smlsldpl	r4, r5, pc, lr	; <UNPREDICTABLE>
    273c:	5f42494c 	svcpl	0x0042494c
    2740:	43544150 	cmpmi	r4, #80, 2
    2744:	56454c48 	strbpl	r4, [r5], -r8, asr #24
    2748:	5f5f4c45 	svcpl	0x005f4c45
    274c:	04003020 	streq	r3, [r0], #-32	; 0xffffffe0
    2750:	5f5f2101 	svcpl	0x005f2101
    2754:	43554e47 	cmpmi	r5, #1136	; 0x470
    2758:	4552505f 	ldrbmi	r5, [r2, #-95]	; 0xffffffa1
    275c:	28514552 	ldmdacs	r1, {r1, r4, r6, r8, sl, lr}^
    2760:	2c6a616d 	stfcse	f6, [sl], #-436	; 0xfffffe4c
    2764:	296e696d 	stmdbcs	lr!, {r0, r2, r3, r5, r6, r8, fp, sp, lr}^
    2768:	5f282820 	svcpl	0x00282820
    276c:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    2770:	205f5f43 	subscs	r5, pc, r3, asr #30
    2774:	31203c3c 			; <UNDEFINED> instruction: 0x31203c3c
    2778:	2b202936 	blcs	80cc58 <__mprec_tinytens+0x7e83e8>
    277c:	475f5f20 	ldrbmi	r5, [pc, -r0, lsr #30]
    2780:	5f43554e 	svcpl	0x0043554e
    2784:	4f4e494d 	svcmi	0x004e494d
    2788:	205f5f52 	subscs	r5, pc, r2, asr pc	; <UNPREDICTABLE>
    278c:	28203d3e 	stmdacs	r0!, {r1, r2, r3, r4, r5, r8, sl, fp, ip, sp}
    2790:	6a616d28 	bvs	185dc38 <__mprec_tinytens+0x18393c8>
    2794:	3c3c2029 	ldccc	0, cr2, [ip], #-164	; 0xffffff5c
    2798:	29363120 	ldmdbcs	r6!, {r5, r8, ip, sp}
    279c:	28202b20 	stmdacs	r0!, {r5, r8, r9, fp, sp}
    27a0:	296e696d 	stmdbcs	lr!, {r0, r2, r3, r5, r6, r8, fp, sp, lr}^
    27a4:	28010029 	stmdacs	r1, {r0, r3, r5}
    27a8:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    27ac:	505f4355 	subspl	r4, pc, r5, asr r3	; <UNPREDICTABLE>
    27b0:	45524552 	ldrbmi	r4, [r2, #-1362]	; 0xfffffaae
    27b4:	285f5f51 	ldmdacs	pc, {r0, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    27b8:	6d2c616d 	stfvss	f6, [ip, #-436]!	; 0xfffffe4c
    27bc:	5f202969 	svcpl	0x00202969
    27c0:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    27c4:	52505f43 	subspl	r5, r0, #268	; 0x10c
    27c8:	51455245 	cmppl	r5, r5, asr #4
    27cc:	2c616d28 	stclcs	13, cr6, [r1], #-160	; 0xffffff60
    27d0:	29696d20 	stmdbcs	r9!, {r5, r8, sl, fp, sp, lr}^
    27d4:	01800200 	orreq	r0, r0, r0, lsl #4
    27d8:	4645445f 			; <UNDEFINED> instruction: 0x4645445f
    27dc:	544c5541 	strbpl	r5, [ip], #-1345	; 0xfffffabf
    27e0:	554f535f 	strbpl	r5, [pc, #-863]	; 2489 <ntshell_version+0x15>
    27e4:	00454352 	subeq	r4, r5, r2, asr r3
    27e8:	5f018101 	svcpl	0x00018101
    27ec:	41464544 	cmpmi	r6, r4, asr #10
    27f0:	5f544c55 	svcpl	0x00544c55
    27f4:	52554f53 	subspl	r4, r5, #332	; 0x14c
    27f8:	31204543 			; <UNDEFINED> instruction: 0x31204543
    27fc:	01850200 	orreq	r0, r5, r0, lsl #4
    2800:	534f505f 	movtpl	r5, #61535	; 0xf05f
    2804:	535f5849 	cmppl	pc, #4784128	; 0x490000
    2808:	4352554f 	cmpmi	r2, #331350016	; 0x13c00000
    280c:	86010045 	strhi	r0, [r1], -r5, asr #32
    2810:	4f505f01 	svcmi	0x00505f01
    2814:	5f584953 	svcpl	0x00584953
    2818:	52554f53 	subspl	r4, r5, #332	; 0x14c
    281c:	31204543 			; <UNDEFINED> instruction: 0x31204543
    2820:	01870200 	orreq	r0, r7, r0, lsl #4
    2824:	534f505f 	movtpl	r5, #61535	; 0xf05f
    2828:	435f5849 	cmpmi	pc, #4784128	; 0x490000
    282c:	554f535f 	strbpl	r5, [pc, #-863]	; 24d5 <ntstdio_putc+0x31>
    2830:	00454352 	subeq	r4, r5, r2, asr r3
    2834:	5f018801 	svcpl	0x00018801
    2838:	49534f50 	ldmdbmi	r3, {r4, r6, r8, r9, sl, fp, lr}^
    283c:	5f435f58 	svcpl	0x00435f58
    2840:	52554f53 	subspl	r4, r5, #332	; 0x14c
    2844:	32204543 	eorcc	r4, r0, #281018368	; 0x10c00000
    2848:	30383030 	eorscc	r3, r8, r0, lsr r0
    284c:	02004c39 	andeq	r4, r0, #14592	; 0x3900
    2850:	415f019b 			; <UNDEFINED> instruction: 0x415f019b
    2854:	4c494654 	mcrrmi	6, 5, r4, r9, cr4
    2858:	4f535f45 	svcmi	0x00535f45
    285c:	45435255 	strbmi	r5, [r3, #-597]	; 0xfffffdab
    2860:	019c0100 	orrseq	r0, ip, r0, lsl #2
    2864:	4654415f 			; <UNDEFINED> instruction: 0x4654415f
    2868:	5f454c49 	svcpl	0x00454c49
    286c:	52554f53 	subspl	r4, r5, #332	; 0x14c
    2870:	31204543 			; <UNDEFINED> instruction: 0x31204543
    2874:	01f20100 	mvnseq	r0, r0, lsl #2
    2878:	54415f5f 	strbpl	r5, [r1], #-3935	; 0xfffff0a1
    287c:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
    2880:	5349565f 	movtpl	r5, #38495	; 0x965f
    2884:	454c4249 	strbmi	r4, [ip, #-585]	; 0xfffffdb7
    2888:	01003120 	tsteq	r0, r0, lsr #2
    288c:	5f5f01f8 	svcpl	0x005f01f8
    2890:	5f445342 	svcpl	0x00445342
    2894:	49534956 	ldmdbmi	r3, {r1, r2, r4, r6, r8, fp, lr}^
    2898:	20454c42 	subcs	r4, r5, r2, asr #24
    289c:	80010031 	andhi	r0, r1, r1, lsr r0
    28a0:	475f5f02 	ldrbmi	r5, [pc, -r2, lsl #30]
    28a4:	565f554e 	ldrbpl	r5, [pc], -lr, asr #10
    28a8:	42495349 	submi	r5, r9, #603979777	; 0x24000001
    28ac:	3020454c 	eorcc	r4, r0, ip, asr #10
    28b0:	02850100 	addeq	r0, r5, #0, 2
    28b4:	53495f5f 	movtpl	r5, #40799	; 0x9f5f
    28b8:	5f435f4f 	svcpl	0x00435f4f
    28bc:	49534956 	ldmdbmi	r3, {r1, r2, r4, r6, r8, fp, lr}^
    28c0:	20454c42 	subcs	r4, r5, r2, asr #24
    28c4:	31313032 	teqcc	r1, r2, lsr r0
    28c8:	02900100 	addseq	r0, r0, #0, 2
    28cc:	414c5f5f 	cmpmi	ip, pc, asr pc
    28d0:	46454752 			; <UNDEFINED> instruction: 0x46454752
    28d4:	5f454c49 	svcpl	0x00454c49
    28d8:	49534956 	ldmdbmi	r3, {r1, r2, r4, r6, r8, fp, lr}^
    28dc:	20454c42 	subcs	r4, r5, r2, asr #24
    28e0:	94010030 	strls	r0, [r1], #-48	; 0xffffffd0
    28e4:	4d5f5f02 	ldclmi	15, cr5, [pc, #-8]	; 28e4 <ntstdio_puts+0x3d4>
    28e8:	5f435349 	svcpl	0x00435349
    28ec:	49534956 	ldmdbmi	r3, {r1, r2, r4, r6, r8, fp, lr}^
    28f0:	20454c42 	subcs	r4, r5, r2, asr #24
    28f4:	9a010031 	bls	429c0 <__mprec_tinytens+0x1e150>
    28f8:	505f5f02 	subspl	r5, pc, r2, lsl #30
    28fc:	5849534f 	stmdapl	r9, {r0, r1, r2, r3, r6, r8, r9, ip, lr}^
    2900:	5349565f 	movtpl	r5, #38495	; 0x965f
    2904:	454c4249 	strbmi	r4, [ip, #-585]	; 0xfffffdb7
    2908:	30303220 	eorscc	r3, r0, r0, lsr #4
    290c:	00393038 	eorseq	r3, r9, r8, lsr r0
    2910:	5f02aa01 	svcpl	0x0002aa01
    2914:	4956535f 	ldmdbmi	r6, {r0, r1, r2, r3, r4, r6, r8, r9, ip, lr}^
    2918:	49565f44 	ldmdbmi	r6, {r2, r6, r8, r9, sl, fp, ip, lr}^
    291c:	4c424953 	mcrrmi	9, 5, r4, r2, cr3	; <UNPREDICTABLE>
    2920:	00312045 	eorseq	r2, r1, r5, asr #32
    2924:	5f02ba01 	svcpl	0x0002ba01
    2928:	4953585f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, fp, ip, lr}^
    292c:	5349565f 	movtpl	r5, #38495	; 0x965f
    2930:	454c4249 	strbmi	r4, [ip, #-585]	; 0xfffffdb7
    2934:	04003020 	streq	r3, [r0], #-32	; 0xffffffe0
    2938:	5f5f0f01 	svcpl	0x005f0f01
    293c:	28505845 	ldmdacs	r0, {r0, r2, r6, fp, ip, lr}^
    2940:	5f202978 	svcpl	0x00202978
    2944:	2323205f 			; <UNDEFINED> instruction: 0x2323205f
    2948:	23232078 			; <UNDEFINED> instruction: 0x23232078
    294c:	01005f5f 	tsteq	r0, pc, asr pc
    2950:	685f5f1a 	ldmdavs	pc, {r1, r3, r4, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2954:	5f657661 	svcpl	0x00657661
    2958:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    295c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    2960:	31203436 			; <UNDEFINED> instruction: 0x31203436
    2964:	5f210100 	svcpl	0x00210100
    2968:	7661685f 			; <UNDEFINED> instruction: 0x7661685f
    296c:	6f6c5f65 	svcvs	0x006c5f65
    2970:	3233676e 	eorscc	r6, r3, #28835840	; 0x1b80000
    2974:	01003120 	tsteq	r0, r0, lsr #2
    2978:	5f5f5f2f 	svcpl	0x005f5f2f
    297c:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    2980:	645f745f 	ldrbvs	r7, [pc], #-1119	; 2988 <ntstdio_fputs+0x18>
    2984:	6e696665 	cdpvs	6, 6, cr6, cr9, cr5, {3}
    2988:	31206465 			; <UNDEFINED> instruction: 0x31206465
    298c:	5f3d0100 	svcpl	0x003d0100
    2990:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    2994:	5f363174 	svcpl	0x00363174
    2998:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    299c:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    29a0:	00312064 	eorseq	r2, r1, r4, rrx
    29a4:	5f5f5301 	svcpl	0x005f5301
    29a8:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    29ac:	745f3233 	ldrbvc	r3, [pc], #-563	; 29b4 <ntstdio_printf+0x4>
    29b0:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    29b4:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    29b8:	01003120 	tsteq	r0, r0, lsr #2
    29bc:	5f5f5f6d 	svcpl	0x005f5f6d
    29c0:	36746e69 	ldrbtcc	r6, [r4], -r9, ror #28
    29c4:	5f745f34 	svcpl	0x00745f34
    29c8:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    29cc:	2064656e 	rsbcs	r6, r4, lr, ror #10
    29d0:	8c010031 	stchi	0, cr0, [r1], {49}	; 0x31
    29d4:	5f5f5f01 	svcpl	0x005f5f01
    29d8:	5f746e69 	svcpl	0x00746e69
    29dc:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    29e0:	745f3874 	ldrbvc	r3, [pc], #-2164	; 29e8 <ntstdio_sprintf+0xc>
    29e4:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    29e8:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    29ec:	01003120 	tsteq	r0, r0, lsr #2
    29f0:	5f5f01a6 	svcpl	0x005f01a6
    29f4:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    29f8:	61656c5f 	cmnvs	r5, pc, asr ip
    29fc:	36317473 			; <UNDEFINED> instruction: 0x36317473
    2a00:	645f745f 	ldrbvs	r7, [pc], #-1119	; 2a08 <ntstdio_sprintf+0x2c>
    2a04:	6e696665 	cdpvs	6, 6, cr6, cr9, cr5, {3}
    2a08:	31206465 			; <UNDEFINED> instruction: 0x31206465
    2a0c:	01bc0100 			; <UNDEFINED> instruction: 0x01bc0100
    2a10:	695f5f5f 	ldmdbvs	pc, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2a14:	6c5f746e 	cfldrdvs	mvd7, [pc], {110}	; 0x6e
    2a18:	74736165 	ldrbtvc	r6, [r3], #-357	; 0xfffffe9b
    2a1c:	745f3233 	ldrbvc	r3, [pc], #-563	; 2a24 <ntstdio_fprintf+0x4>
    2a20:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    2a24:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    2a28:	01003120 	tsteq	r0, r0, lsr #2
    2a2c:	5f5f01ce 	svcpl	0x005f01ce
    2a30:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    2a34:	61656c5f 	cmnvs	r5, pc, asr ip
    2a38:	34367473 	ldrtcc	r7, [r6], #-1139	; 0xfffffb8d
    2a3c:	645f745f 	ldrbvs	r7, [pc], #-1119	; 2a44 <ntstdio_fprintf+0x24>
    2a40:	6e696665 	cdpvs	6, 6, cr6, cr9, cr5, {3}
    2a44:	31206465 			; <UNDEFINED> instruction: 0x31206465
    2a48:	01f40200 	mvnseq	r0, r0, lsl #4
    2a4c:	58455f5f 	stmdapl	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2a50:	03040050 	movweq	r0, #16464	; 0x4050
    2a54:	0a010d0d 	beq	45e90 <__mprec_tinytens+0x21620>
    2a58:	5359535f 	cmppl	r9, #2080374785	; 0x7c000001
    2a5c:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    2a60:	50555354 	subspl	r5, r5, r4, asr r3
    2a64:	0020485f 	eoreq	r4, r0, pc, asr r8
    2a68:	5f5f1001 	svcpl	0x005f1001
    2a6c:	49445453 	stmdbmi	r4, {r0, r1, r4, r6, sl, ip, lr}^
    2a70:	455f544e 	ldrbmi	r5, [pc, #-1102]	; 262a <ntstdio_puts+0x11a>
    2a74:	78285058 	stmdavc	r8!, {r3, r4, r6, ip, lr}
    2a78:	5f5f2029 	svcpl	0x005f2029
    2a7c:	78232320 	stmdavc	r3!, {r5, r8, r9, sp}
    2a80:	5f232320 	svcpl	0x00232320
    2a84:	2a02005f 	bcs	82c08 <__mprec_tinytens+0x5e398>
    2a88:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    2a8c:	02006465 	andeq	r6, r0, #1694498816	; 0x65000000
    2a90:	736e752b 	cmnvc	lr, #180355072	; 0xac00000
    2a94:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    2a98:	2c020064 	stccs	0, cr0, [r2], {100}	; 0x64
    2a9c:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    2aa0:	732d0200 			; <UNDEFINED> instruction: 0x732d0200
    2aa4:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
    2aa8:	692e0200 	stmdbvs	lr!, {r9}
    2aac:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
    2ab0:	695f5f2f 	ldmdbvs	pc, {r0, r1, r2, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2ab4:	3032746e 	eorscc	r7, r2, lr, ror #8
    2ab8:	6c300200 	lfmvs	f0, 4, [r0], #-0
    2abc:	00676e6f 	rsbeq	r6, r7, pc, ror #28
    2ac0:	69733101 	ldmdbvs	r3!, {r0, r8, ip, sp}^
    2ac4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    2ac8:	00302b20 	eorseq	r2, r0, r0, lsr #22
    2acc:	6e753201 	cdpvs	2, 7, cr3, cr5, cr1, {0}
    2ad0:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    2ad4:	2b206465 	blcs	81bc70 <__mprec_tinytens+0x7f7400>
    2ad8:	33010030 	movwcc	r0, #4144	; 0x1030
    2adc:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    2ae0:	00302b20 	eorseq	r2, r0, r0, lsr #22
    2ae4:	68733401 	ldmdavs	r3!, {r0, sl, ip, sp}^
    2ae8:	2074726f 	rsbscs	r7, r4, pc, ror #4
    2aec:	0100312b 	tsteq	r0, fp, lsr #2
    2af0:	695f5f35 	ldmdbvs	pc, {r0, r2, r4, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2af4:	3032746e 	eorscc	r7, r2, lr, ror #8
    2af8:	00322b20 	eorseq	r2, r2, r0, lsr #22
    2afc:	6e693601 	cdpvs	6, 6, cr3, cr9, cr1, {0}
    2b00:	322b2074 	eorcc	r2, fp, #116	; 0x74
    2b04:	6c370100 	ldfvss	f0, [r7], #-0
    2b08:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    2b0c:	0100342b 	tsteq	r0, fp, lsr #8
    2b10:	4e495f40 	cdpmi	15, 4, cr5, cr9, cr0, {2}
    2b14:	52545054 	subspl	r5, r4, #84	; 0x54
    2b18:	5f51455f 	svcpl	0x0051455f
    2b1c:	20544e49 	subscs	r4, r4, r9, asr #28
    2b20:	5f470100 	svcpl	0x00470100
    2b24:	33544e49 	cmpcc	r4, #1168	; 0x490
    2b28:	51455f32 	cmppl	r5, r2, lsr pc
    2b2c:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    2b30:	01002047 	tsteq	r0, r7, asr #32
    2b34:	495f5f4f 	ldmdbmi	pc, {r0, r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2b38:	2038544e 	eorscs	r5, r8, lr, asr #8
    2b3c:	22686822 	rsbcs	r6, r8, #2228224	; 0x220000
    2b40:	5f5a0100 	svcpl	0x005a0100
    2b44:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2b48:	22203631 	eorcs	r3, r0, #51380224	; 0x3100000
    2b4c:	01002268 	tsteq	r0, r8, ror #4
    2b50:	495f5f65 	ldmdbmi	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2b54:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    2b58:	226c2220 	rsbcs	r2, ip, #32, 4
    2b5c:	5f6e0100 	svcpl	0x006e0100
    2b60:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2b64:	22203436 	eorcs	r3, r0, #905969664	; 0x36000000
    2b68:	00226c6c 	eoreq	r6, r2, ip, ror #24
    2b6c:	5f5f7501 	svcpl	0x005f7501
    2b70:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    2b74:	01002038 	tsteq	r0, r8, lsr r0
    2b78:	465f5f7e 	usub16mi	r5, pc, lr	; <UNPREDICTABLE>
    2b7c:	31545341 	cmpcc	r4, r1, asr #6
    2b80:	01002036 	tsteq	r0, r6, lsr r0
    2b84:	5f5f0185 	svcpl	0x005f0185
    2b88:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    2b8c:	00203233 	eoreq	r3, r0, r3, lsr r2
    2b90:	5f019001 	svcpl	0x00019001
    2b94:	5341465f 	movtpl	r4, #5727	; 0x165f
    2b98:	20343654 	eorscs	r3, r4, r4, asr r6
    2b9c:	226c6c22 	rsbcs	r6, ip, #8704	; 0x2200
    2ba0:	01940100 	orrseq	r0, r4, r0, lsl #2
    2ba4:	454c5f5f 	strbmi	r5, [ip, #-3935]	; 0xfffff0a1
    2ba8:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    2bac:	68682220 	stmdavs	r8!, {r5, r9, sp}^
    2bb0:	9f010022 	svcls	0x00010022
    2bb4:	4c5f5f01 	mrrcmi	15, 0, r5, pc, cr1	; <UNPREDICTABLE>
    2bb8:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    2bbc:	22203631 	eorcs	r3, r0, #51380224	; 0x3100000
    2bc0:	01002268 	tsteq	r0, r8, ror #4
    2bc4:	5f5f01aa 	svcpl	0x005f01aa
    2bc8:	5341454c 	movtpl	r4, #5452	; 0x154c
    2bcc:	20323354 	eorscs	r3, r2, r4, asr r3
    2bd0:	00226c22 	eoreq	r6, r2, r2, lsr #24
    2bd4:	5f01b301 	svcpl	0x0001b301
    2bd8:	41454c5f 	cmpmi	r5, pc, asr ip
    2bdc:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    2be0:	6c6c2220 	sfmvs	f2, 2, [ip], #-128	; 0xffffff80
    2be4:	b5020022 	strlt	r0, [r2, #-34]	; 0xffffffde
    2be8:	67697301 	strbvs	r7, [r9, -r1, lsl #6]!
    2bec:	0064656e 	rsbeq	r6, r4, lr, ror #10
    2bf0:	7501b602 	strvc	fp, [r1, #-1538]	; 0xfffff9fe
    2bf4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    2bf8:	0064656e 	rsbeq	r6, r4, lr, ror #10
    2bfc:	6301b702 	movwvs	fp, #5890	; 0x1702
    2c00:	00726168 	rsbseq	r6, r2, r8, ror #2
    2c04:	7301b802 	movwvc	fp, #6146	; 0x1802
    2c08:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
    2c0c:	01b90200 			; <UNDEFINED> instruction: 0x01b90200
    2c10:	00746e69 	rsbseq	r6, r4, r9, ror #28
    2c14:	6c01ba02 			; <UNDEFINED> instruction: 0x6c01ba02
    2c18:	00676e6f 	rsbeq	r6, r7, pc, ror #28
    2c1c:	5f01bf02 	svcpl	0x0001bf02
    2c20:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    2c24:	04003032 	streq	r3, [r0], #-50	; 0xffffffce
    2c28:	01030e03 	tsteq	r3, r3, lsl #28
    2c2c:	59535f0a 	ldmdbpl	r3, {r1, r3, r8, r9, sl, fp, ip, lr}^
    2c30:	535f5f53 	cmppl	pc, #332	; 0x14c
    2c34:	4e494454 	mcrmi	4, 2, r4, cr9, cr4, {2}
    2c38:	20485f54 	subcs	r5, r8, r4, asr pc
    2c3c:	5f150100 	svcpl	0x00150100
    2c40:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    2c44:	445f545f 	ldrbmi	r5, [pc], #-1119	; 2c4c <text_editor_backspace+0x34>
    2c48:	414c4345 	cmpmi	ip, r5, asr #6
    2c4c:	20444552 	subcs	r4, r4, r2, asr r5
    2c50:	5f190100 	svcpl	0x00190100
    2c54:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2c58:	5f545f38 	svcpl	0x00545f38
    2c5c:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    2c60:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    2c64:	1b010020 	blne	42cec <__mprec_tinytens+0x1e47c>
    2c68:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    2c6c:	745f3874 	ldrbvc	r3, [pc], #-2164	; 2c74 <text_editor_backspace+0x5c>
    2c70:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    2c74:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    2c78:	01003120 	tsteq	r0, r0, lsr #2
    2c7c:	4e495f21 	cdpmi	15, 4, cr5, cr9, cr1, {1}
    2c80:	5f363154 	svcpl	0x00363154
    2c84:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    2c88:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    2c8c:	00204445 	eoreq	r4, r0, r5, asr #8
    2c90:	555f2501 	ldrbpl	r2, [pc, #-1281]	; 2797 <ntstdio_puts+0x287>
    2c94:	31544e49 	cmpcc	r4, r9, asr #28
    2c98:	5f545f36 	svcpl	0x00545f36
    2c9c:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    2ca0:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    2ca4:	27010020 	strcs	r0, [r1, -r0, lsr #32]
    2ca8:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    2cac:	5f363174 	svcpl	0x00363174
    2cb0:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    2cb4:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    2cb8:	00312064 	eorseq	r2, r1, r4, rrx
    2cbc:	495f2d01 	ldmdbmi	pc, {r0, r8, sl, fp, sp}^	; <UNPREDICTABLE>
    2cc0:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    2cc4:	445f545f 	ldrbmi	r5, [pc], #-1119	; 2ccc <text_editor_delete+0x48>
    2cc8:	414c4345 	cmpmi	ip, r5, asr #6
    2ccc:	20444552 	subcs	r4, r4, r2, asr r5
    2cd0:	5f310100 	svcpl	0x00310100
    2cd4:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2cd8:	545f3233 	ldrbpl	r3, [pc], #-563	; 2ce0 <text_editor_delete+0x5c>
    2cdc:	4345445f 	movtmi	r4, #21599	; 0x545f
    2ce0:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    2ce4:	01002044 	tsteq	r0, r4, asr #32
    2ce8:	695f5f33 	ldmdbvs	pc, {r0, r1, r4, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2cec:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    2cf0:	645f745f 	ldrbvs	r7, [pc], #-1119	; 2cf8 <text_editor_cursor_head+0xc>
    2cf4:	6e696665 	cdpvs	6, 6, cr6, cr9, cr5, {3}
    2cf8:	31206465 			; <UNDEFINED> instruction: 0x31206465
    2cfc:	5f390100 	svcpl	0x00390100
    2d00:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    2d04:	5f545f34 	svcpl	0x00545f34
    2d08:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    2d0c:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    2d10:	3d010020 	stccc	0, cr0, [r1, #-128]	; 0xffffff80
    2d14:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    2d18:	5f343654 	svcpl	0x00343654
    2d1c:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    2d20:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    2d24:	00204445 	eoreq	r4, r0, r5, asr #8
    2d28:	5f5f3f01 	svcpl	0x005f3f01
    2d2c:	36746e69 	ldrbtcc	r6, [r4], -r9, ror #28
    2d30:	5f745f34 	svcpl	0x00745f34
    2d34:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    2d38:	2064656e 	rsbcs	r6, r4, lr, ror #10
    2d3c:	44010031 	strmi	r0, [r1], #-49	; 0xffffffcf
    2d40:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2d44:	5f58414d 	svcpl	0x0058414d
    2d48:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    2d4c:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    2d50:	00204445 	eoreq	r4, r0, r5, asr #8
    2d54:	555f4901 	ldrbpl	r4, [pc, #-2305]	; 245b <ntshell_set_prompt+0xf>
    2d58:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    2d5c:	545f5841 	ldrbpl	r5, [pc], #-2113	; 2d64 <text_editor_set_text+0x4>
    2d60:	4345445f 	movtmi	r4, #21599	; 0x545f
    2d64:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    2d68:	01002044 	tsteq	r0, r4, asr #32
    2d6c:	4e495f4e 	cdpmi	15, 4, cr5, cr9, cr14, {2}
    2d70:	52545054 	subspl	r5, r4, #84	; 0x54
    2d74:	445f545f 	ldrbmi	r5, [pc], #-1119	; 2d7c <text_editor_set_text+0x1c>
    2d78:	414c4345 	cmpmi	ip, r5, asr #6
    2d7c:	20444552 	subcs	r4, r4, r2, asr r5
    2d80:	5f530100 	svcpl	0x00530100
    2d84:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2d88:	5f525450 	svcpl	0x00525450
    2d8c:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    2d90:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    2d94:	00204445 	eoreq	r4, r0, r5, asr #8
    2d98:	5f170104 	svcpl	0x00170104
    2d9c:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    2da0:	61656c5f 	cmnvs	r5, pc, asr ip
    2da4:	5f387473 	svcpl	0x00387473
    2da8:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    2dac:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    2db0:	00312064 	eorseq	r2, r1, r4, rrx
    2db4:	5f5f1d01 	svcpl	0x005f1d01
    2db8:	5f746e69 	svcpl	0x00746e69
    2dbc:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    2dc0:	5f363174 	svcpl	0x00363174
    2dc4:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    2dc8:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    2dcc:	00312064 	eorseq	r2, r1, r4, rrx
    2dd0:	5f5f2301 	svcpl	0x005f2301
    2dd4:	5f746e69 	svcpl	0x00746e69
    2dd8:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    2ddc:	5f323374 	svcpl	0x00323374
    2de0:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    2de4:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    2de8:	00312064 	eorseq	r2, r1, r4, rrx
    2dec:	5f5f2901 	svcpl	0x005f2901
    2df0:	5f746e69 	svcpl	0x00746e69
    2df4:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    2df8:	5f343674 	svcpl	0x00343674
    2dfc:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    2e00:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    2e04:	00312064 	eorseq	r2, r1, r4, rrx
    2e08:	5f5f3501 	svcpl	0x005f3501
    2e0c:	5f746e69 	svcpl	0x00746e69
    2e10:	74736166 	ldrbtvc	r6, [r3], #-358	; 0xfffffe9a
    2e14:	5f745f38 	svcpl	0x00745f38
    2e18:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    2e1c:	2064656e 	rsbcs	r6, r4, lr, ror #10
    2e20:	3f010031 	svccc	0x00010031
    2e24:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    2e28:	61665f74 	smcvs	26100	; 0x65f4
    2e2c:	36317473 			; <UNDEFINED> instruction: 0x36317473
    2e30:	645f745f 	ldrbvs	r7, [pc], #-1119	; 2e38 <text_history_write+0x28>
    2e34:	6e696665 	cdpvs	6, 6, cr6, cr9, cr5, {3}
    2e38:	31206465 			; <UNDEFINED> instruction: 0x31206465
    2e3c:	5f490100 	svcpl	0x00490100
    2e40:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    2e44:	7361665f 	cmnvc	r1, #99614720	; 0x5f00000
    2e48:	5f323374 	svcpl	0x00323374
    2e4c:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    2e50:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    2e54:	00312064 	eorseq	r2, r1, r4, rrx
    2e58:	5f5f5301 	svcpl	0x005f5301
    2e5c:	5f746e69 	svcpl	0x00746e69
    2e60:	74736166 	ldrbtvc	r6, [r3], #-358	; 0xfffffe9a
    2e64:	745f3436 	ldrbvc	r3, [pc], #-1078	; 2e6c <text_history_read>
    2e68:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    2e6c:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    2e70:	01003120 	tsteq	r0, r0, lsr #2
    2e74:	4e490180 	dvfmi<illegal precision>	f0, f1, f0
    2e78:	52545054 	subspl	r5, r4, #84	; 0x54
    2e7c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    2e80:	5f2d2820 	svcpl	0x002d2820
    2e84:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2e88:	5f525450 	svcpl	0x00525450
    2e8c:	5f58414d 	svcpl	0x0058414d
    2e90:	202d205f 	eorcs	r2, sp, pc, asr r0
    2e94:	01002931 	tsteq	r0, r1, lsr r9
    2e98:	4e490181 	dvfmi<illegal precision>	f0, f1, f1
    2e9c:	52545054 	subspl	r5, r4, #84	; 0x54
    2ea0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2ea4:	5f5f2820 	svcpl	0x005f2820
    2ea8:	50544e49 	subspl	r4, r4, r9, asr #28
    2eac:	4d5f5254 	lfmmi	f5, 2, [pc, #-336]	; 2d64 <text_editor_set_text+0x4>
    2eb0:	5f5f5841 	svcpl	0x005f5841
    2eb4:	82010029 	andhi	r0, r1, #41	; 0x29
    2eb8:	4e495501 	cdpmi	5, 4, cr5, cr9, cr1, {0}
    2ebc:	52545054 	subspl	r5, r4, #84	; 0x54
    2ec0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2ec4:	5f5f2820 	svcpl	0x005f2820
    2ec8:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2ecc:	5f525450 	svcpl	0x00525450
    2ed0:	5f58414d 	svcpl	0x0058414d
    2ed4:	0100295f 	tsteq	r0, pc, asr r9
    2ed8:	4e490198 	mcrmi	1, 2, r0, cr9, cr8, {4}
    2edc:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 2d94 <text_editor_set_text+0x34>
    2ee0:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    2ee4:	495f5f2d 	ldmdbmi	pc, {r0, r2, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2ee8:	5f38544e 	svcpl	0x0038544e
    2eec:	5f58414d 	svcpl	0x0058414d
    2ef0:	202d205f 	eorcs	r2, sp, pc, asr r0
    2ef4:	01002931 	tsteq	r0, r1, lsr r9
    2ef8:	4e490199 	mcrmi	1, 2, r0, cr9, cr9, {4}
    2efc:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 2db4 <text_editor_get_text+0x14>
    2f00:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    2f04:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    2f08:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 2dc0 <text_editor_get_text+0x20>
    2f0c:	5f5f5841 	svcpl	0x005f5841
    2f10:	9a010029 	bls	42fbc <__mprec_tinytens+0x1e74c>
    2f14:	4e495501 	cdpmi	5, 4, cr5, cr9, cr1, {0}
    2f18:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 2dd0 <text_editor_clear>
    2f1c:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    2f20:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2f24:	5f38544e 	svcpl	0x0038544e
    2f28:	5f58414d 	svcpl	0x0058414d
    2f2c:	0100295f 	tsteq	r0, pc, asr r9
    2f30:	4e4901a2 	dvfmi<illegal precision>p	f0, f1, f2
    2f34:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    2f38:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    2f3c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    2f40:	5f2d2820 	svcpl	0x002d2820
    2f44:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2f48:	41454c5f 	cmpmi	r5, pc, asr ip
    2f4c:	5f385453 	svcpl	0x00385453
    2f50:	5f58414d 	svcpl	0x0058414d
    2f54:	202d205f 	eorcs	r2, sp, pc, asr r0
    2f58:	01002931 	tsteq	r0, r1, lsr r9
    2f5c:	4e4901a3 	dvfmi<illegal precision>p	f0, f1, f3
    2f60:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    2f64:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    2f68:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2f6c:	5f5f2820 	svcpl	0x005f2820
    2f70:	5f544e49 	svcpl	0x00544e49
    2f74:	5341454c 	movtpl	r4, #5452	; 0x154c
    2f78:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 2e30 <text_history_write+0x20>
    2f7c:	5f5f5841 	svcpl	0x005f5841
    2f80:	a4010029 	strge	r0, [r1], #-41	; 0xffffffd7
    2f84:	4e495501 	cdpmi	5, 4, cr5, cr9, cr1, {0}
    2f88:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    2f8c:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    2f90:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2f94:	5f5f2820 	svcpl	0x005f2820
    2f98:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2f9c:	41454c5f 	cmpmi	r5, pc, asr ip
    2fa0:	5f385453 	svcpl	0x00385453
    2fa4:	5f58414d 	svcpl	0x0058414d
    2fa8:	0100295f 	tsteq	r0, pc, asr r9
    2fac:	4e4901ae 	dvfmi<illegal precision>p	f0, f1, #0.5
    2fb0:	5f363154 	svcpl	0x00363154
    2fb4:	204e494d 	subcs	r4, lr, sp, asr #18
    2fb8:	5f5f2d28 	svcpl	0x005f2d28
    2fbc:	31544e49 	cmpcc	r4, r9, asr #28
    2fc0:	414d5f36 	cmpmi	sp, r6, lsr pc
    2fc4:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    2fc8:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    2fcc:	01af0100 			; <UNDEFINED> instruction: 0x01af0100
    2fd0:	31544e49 	cmpcc	r4, r9, asr #28
    2fd4:	414d5f36 	cmpmi	sp, r6, lsr pc
    2fd8:	5f282058 	svcpl	0x00282058
    2fdc:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2fe0:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 2f24 <text_history_find+0x4>
    2fe4:	5f5f5841 	svcpl	0x005f5841
    2fe8:	b0010029 	andlt	r0, r1, r9, lsr #32
    2fec:	4e495501 	cdpmi	5, 4, cr5, cr9, cr1, {0}
    2ff0:	5f363154 	svcpl	0x00363154
    2ff4:	2058414d 	subscs	r4, r8, sp, asr #2
    2ff8:	555f5f28 	ldrbpl	r5, [pc, #-3880]	; 20d8 <ntopt_parse+0x814>
    2ffc:	31544e49 	cmpcc	r4, r9, asr #28
    3000:	414d5f36 	cmpmi	sp, r6, lsr pc
    3004:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3008:	01b80100 			; <UNDEFINED> instruction: 0x01b80100
    300c:	5f544e49 	svcpl	0x00544e49
    3010:	5341454c 	movtpl	r4, #5452	; 0x154c
    3014:	5f363154 	svcpl	0x00363154
    3018:	204e494d 	subcs	r4, lr, sp, asr #18
    301c:	5f5f2d28 	svcpl	0x005f2d28
    3020:	5f544e49 	svcpl	0x00544e49
    3024:	5341454c 	movtpl	r4, #5452	; 0x154c
    3028:	5f363154 	svcpl	0x00363154
    302c:	5f58414d 	svcpl	0x0058414d
    3030:	202d205f 	eorcs	r2, sp, pc, asr r0
    3034:	01002931 	tsteq	r0, r1, lsr r9
    3038:	4e4901b9 	mcrmi	1, 2, r0, cr9, cr9, {5}
    303c:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    3040:	31545341 	cmpcc	r4, r1, asr #6
    3044:	414d5f36 	cmpmi	sp, r6, lsr pc
    3048:	5f282058 	svcpl	0x00282058
    304c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    3050:	41454c5f 	cmpmi	r5, pc, asr ip
    3054:	36315453 			; <UNDEFINED> instruction: 0x36315453
    3058:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    305c:	00295f5f 	eoreq	r5, r9, pc, asr pc
    3060:	5501ba01 	strpl	fp, [r1, #-2561]	; 0xfffff5ff
    3064:	5f544e49 	svcpl	0x00544e49
    3068:	5341454c 	movtpl	r4, #5452	; 0x154c
    306c:	5f363154 	svcpl	0x00363154
    3070:	2058414d 	subscs	r4, r8, sp, asr #2
    3074:	555f5f28 	ldrbpl	r5, [pc, #-3880]	; 2154 <ntopt_parse+0x890>
    3078:	5f544e49 	svcpl	0x00544e49
    307c:	5341454c 	movtpl	r4, #5452	; 0x154c
    3080:	5f363154 	svcpl	0x00363154
    3084:	5f58414d 	svcpl	0x0058414d
    3088:	0100295f 	tsteq	r0, pc, asr r9
    308c:	4e4901c4 	dvfmi<illegal precision>m	f0, f1, f4
    3090:	5f323354 	svcpl	0x00323354
    3094:	204e494d 	subcs	r4, lr, sp, asr #18
    3098:	5f5f2d28 	svcpl	0x005f2d28
    309c:	33544e49 	cmpcc	r4, #1168	; 0x490
    30a0:	414d5f32 	cmpmi	sp, r2, lsr pc
    30a4:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    30a8:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    30ac:	01c50100 	biceq	r0, r5, r0, lsl #2
    30b0:	33544e49 	cmpcc	r4, #1168	; 0x490
    30b4:	414d5f32 	cmpmi	sp, r2, lsr pc
    30b8:	5f282058 	svcpl	0x00282058
    30bc:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    30c0:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 2ffc <text_history_find+0xdc>
    30c4:	5f5f5841 	svcpl	0x005f5841
    30c8:	c6010029 	strgt	r0, [r1], -r9, lsr #32
    30cc:	4e495501 	cdpmi	5, 4, cr5, cr9, cr1, {0}
    30d0:	5f323354 	svcpl	0x00323354
    30d4:	2058414d 	subscs	r4, r8, sp, asr #2
    30d8:	555f5f28 	ldrbpl	r5, [pc, #-3880]	; 21b8 <ntopt_parse+0x8f4>
    30dc:	33544e49 	cmpcc	r4, #1168	; 0x490
    30e0:	414d5f32 	cmpmi	sp, r2, lsr pc
    30e4:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    30e8:	01d40100 	bicseq	r0, r4, r0, lsl #2
    30ec:	5f544e49 	svcpl	0x00544e49
    30f0:	5341454c 	movtpl	r4, #5452	; 0x154c
    30f4:	5f323354 	svcpl	0x00323354
    30f8:	204e494d 	subcs	r4, lr, sp, asr #18
    30fc:	5f5f2d28 	svcpl	0x005f2d28
    3100:	5f544e49 	svcpl	0x00544e49
    3104:	5341454c 	movtpl	r4, #5452	; 0x154c
    3108:	5f323354 	svcpl	0x00323354
    310c:	5f58414d 	svcpl	0x0058414d
    3110:	202d205f 	eorcs	r2, sp, pc, asr r0
    3114:	01002931 	tsteq	r0, r1, lsr r9
    3118:	4e4901d5 	mcrmi	1, 2, r0, cr9, cr5, {6}
    311c:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    3120:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    3124:	414d5f32 	cmpmi	sp, r2, lsr pc
    3128:	5f282058 	svcpl	0x00282058
    312c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    3130:	41454c5f 	cmpmi	r5, pc, asr ip
    3134:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    3138:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    313c:	00295f5f 	eoreq	r5, r9, pc, asr pc
    3140:	5501d601 	strpl	sp, [r1, #-1537]	; 0xfffff9ff
    3144:	5f544e49 	svcpl	0x00544e49
    3148:	5341454c 	movtpl	r4, #5452	; 0x154c
    314c:	5f323354 	svcpl	0x00323354
    3150:	2058414d 	subscs	r4, r8, sp, asr #2
    3154:	555f5f28 	ldrbpl	r5, [pc, #-3880]	; 2234 <vtrecv_callback>
    3158:	5f544e49 	svcpl	0x00544e49
    315c:	5341454c 	movtpl	r4, #5452	; 0x154c
    3160:	5f323354 	svcpl	0x00323354
    3164:	5f58414d 	svcpl	0x0058414d
    3168:	0100295f 	tsteq	r0, pc, asr r9
    316c:	4e4901e6 	dvfmi<illegal precision>z	f0, f1, f6
    3170:	5f343654 	svcpl	0x00343654
    3174:	204e494d 	subcs	r4, lr, sp, asr #18
    3178:	5f5f2d28 	svcpl	0x005f2d28
    317c:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    3180:	414d5f34 	cmpmi	sp, r4, lsr pc
    3184:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    3188:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    318c:	01e70100 	mvneq	r0, r0, lsl #2
    3190:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    3194:	414d5f34 	cmpmi	sp, r4, lsr pc
    3198:	5f282058 	svcpl	0x00282058
    319c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    31a0:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 30d0 <text_history_find+0x1b0>
    31a4:	5f5f5841 	svcpl	0x005f5841
    31a8:	e8010029 	stmda	r1, {r0, r3, r5}
    31ac:	4e495501 	cdpmi	5, 4, cr5, cr9, cr1, {0}
    31b0:	5f343654 	svcpl	0x00343654
    31b4:	2058414d 	subscs	r4, r8, sp, asr #2
    31b8:	555f5f28 	ldrbpl	r5, [pc, #-3880]	; 2298 <vtrecv_callback+0x64>
    31bc:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    31c0:	414d5f34 	cmpmi	sp, r4, lsr pc
    31c4:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    31c8:	01f60100 	mvnseq	r0, r0, lsl #2
    31cc:	5f544e49 	svcpl	0x00544e49
    31d0:	5341454c 	movtpl	r4, #5452	; 0x154c
    31d4:	5f343654 	svcpl	0x00343654
    31d8:	204e494d 	subcs	r4, lr, sp, asr #18
    31dc:	5f5f2d28 	svcpl	0x005f2d28
    31e0:	5f544e49 	svcpl	0x00544e49
    31e4:	5341454c 	movtpl	r4, #5452	; 0x154c
    31e8:	5f343654 	svcpl	0x00343654
    31ec:	5f58414d 	svcpl	0x0058414d
    31f0:	202d205f 	eorcs	r2, sp, pc, asr r0
    31f4:	01002931 	tsteq	r0, r1, lsr r9
    31f8:	4e4901f7 	mcrmi	1, 2, r0, cr9, cr7, {7}
    31fc:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    3200:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    3204:	414d5f34 	cmpmi	sp, r4, lsr pc
    3208:	5f282058 	svcpl	0x00282058
    320c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    3210:	41454c5f 	cmpmi	r5, pc, asr ip
    3214:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    3218:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    321c:	00295f5f 	eoreq	r5, r9, pc, asr pc
    3220:	5501f801 	strpl	pc, [r1, #-2049]	; 0xfffff7ff
    3224:	5f544e49 	svcpl	0x00544e49
    3228:	5341454c 	movtpl	r4, #5452	; 0x154c
    322c:	5f343654 	svcpl	0x00343654
    3230:	2058414d 	subscs	r4, r8, sp, asr #2
    3234:	555f5f28 	ldrbpl	r5, [pc, #-3880]	; 2314 <vtrecv_callback+0xe0>
    3238:	5f544e49 	svcpl	0x00544e49
    323c:	5341454c 	movtpl	r4, #5452	; 0x154c
    3240:	5f343654 	svcpl	0x00343654
    3244:	5f58414d 	svcpl	0x0058414d
    3248:	0100295f 	tsteq	r0, pc, asr r9
    324c:	4e490286 	cdpmi	2, 4, cr0, cr9, cr6, {4}
    3250:	41465f54 	cmpmi	r6, r4, asr pc
    3254:	5f385453 	svcpl	0x00385453
    3258:	204e494d 	subcs	r4, lr, sp, asr #18
    325c:	5f5f2d28 	svcpl	0x005f2d28
    3260:	5f544e49 	svcpl	0x00544e49
    3264:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    3268:	414d5f38 	cmpmi	sp, r8, lsr pc
    326c:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    3270:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    3274:	02870100 	addeq	r0, r7, #0, 2
    3278:	5f544e49 	svcpl	0x00544e49
    327c:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    3280:	414d5f38 	cmpmi	sp, r8, lsr pc
    3284:	5f282058 	svcpl	0x00282058
    3288:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    328c:	5341465f 	movtpl	r4, #5727	; 0x165f
    3290:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 3148 <vtrecv_execute+0xc>
    3294:	5f5f5841 	svcpl	0x005f5841
    3298:	88010029 	stmdahi	r1, {r0, r3, r5}
    329c:	4e495502 	cdpmi	5, 4, cr5, cr9, cr2, {0}
    32a0:	41465f54 	cmpmi	r6, r4, asr pc
    32a4:	5f385453 	svcpl	0x00385453
    32a8:	2058414d 	subscs	r4, r8, sp, asr #2
    32ac:	555f5f28 	ldrbpl	r5, [pc, #-3880]	; 238c <ntshell_init+0x3c>
    32b0:	5f544e49 	svcpl	0x00544e49
    32b4:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    32b8:	414d5f38 	cmpmi	sp, r8, lsr pc
    32bc:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    32c0:	02960100 	addseq	r0, r6, #0, 2
    32c4:	5f544e49 	svcpl	0x00544e49
    32c8:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    32cc:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 3210 <vtrecv_execute+0xd4>
    32d0:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    32d4:	495f5f2d 	ldmdbmi	pc, {r0, r2, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    32d8:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    32dc:	31545341 	cmpcc	r4, r1, asr #6
    32e0:	414d5f36 	cmpmi	sp, r6, lsr pc
    32e4:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    32e8:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    32ec:	02970100 	addseq	r0, r7, #0, 2
    32f0:	5f544e49 	svcpl	0x00544e49
    32f4:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    32f8:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 323c <vtrecv_execute+0x100>
    32fc:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    3300:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    3304:	41465f54 	cmpmi	r6, r4, asr pc
    3308:	36315453 			; <UNDEFINED> instruction: 0x36315453
    330c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3310:	00295f5f 	eoreq	r5, r9, pc, asr pc
    3314:	55029801 	strpl	r9, [r2, #-2049]	; 0xfffff7ff
    3318:	5f544e49 	svcpl	0x00544e49
    331c:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    3320:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 3264 <vtsend_init+0xc>
    3324:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    3328:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    332c:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    3330:	31545341 	cmpcc	r4, r1, asr #6
    3334:	414d5f36 	cmpmi	sp, r6, lsr pc
    3338:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    333c:	02a60100 	adceq	r0, r6, #0, 2
    3340:	5f544e49 	svcpl	0x00544e49
    3344:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    3348:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 3284 <vtsend_cursor_position+0x1c>
    334c:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    3350:	495f5f2d 	ldmdbmi	pc, {r0, r2, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3354:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    3358:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    335c:	414d5f32 	cmpmi	sp, r2, lsr pc
    3360:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    3364:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    3368:	02a70100 	adceq	r0, r7, #0, 2
    336c:	5f544e49 	svcpl	0x00544e49
    3370:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    3374:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 32b0 <vtsend_cursor_position+0x48>
    3378:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    337c:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    3380:	41465f54 	cmpmi	r6, r4, asr pc
    3384:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    3388:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    338c:	00295f5f 	eoreq	r5, r9, pc, asr pc
    3390:	5502a801 	strpl	sl, [r2, #-2049]	; 0xfffff7ff
    3394:	5f544e49 	svcpl	0x00544e49
    3398:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    339c:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 32d8 <vtsend_cursor_position+0x70>
    33a0:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    33a4:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    33a8:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    33ac:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    33b0:	414d5f32 	cmpmi	sp, r2, lsr pc
    33b4:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    33b8:	02b60100 	adcseq	r0, r6, #0, 2
    33bc:	5f544e49 	svcpl	0x00544e49
    33c0:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    33c4:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 32f4 <vtsend_cursor_position+0x8c>
    33c8:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    33cc:	495f5f2d 	ldmdbmi	pc, {r0, r2, r3, r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    33d0:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    33d4:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    33d8:	414d5f34 	cmpmi	sp, r4, lsr pc
    33dc:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    33e0:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    33e4:	02b70100 	adcseq	r0, r7, #0, 2
    33e8:	5f544e49 	svcpl	0x00544e49
    33ec:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    33f0:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 3320 <vtsend_cursor_up+0x18>
    33f4:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    33f8:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    33fc:	41465f54 	cmpmi	r6, r4, asr pc
    3400:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    3404:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3408:	00295f5f 	eoreq	r5, r9, pc, asr pc
    340c:	5502b801 	strpl	fp, [r2, #-2049]	; 0xfffff7ff
    3410:	5f544e49 	svcpl	0x00544e49
    3414:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    3418:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 3348 <vtsend_cursor_up+0x40>
    341c:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    3420:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    3424:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    3428:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    342c:	414d5f34 	cmpmi	sp, r4, lsr pc
    3430:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3434:	02c60100 	sbceq	r0, r6, #0, 2
    3438:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    343c:	4d5f5841 	ldclmi	8, cr5, [pc, #-260]	; 3340 <vtsend_cursor_up+0x38>
    3440:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    3444:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    3448:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    344c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3450:	00295f5f 	eoreq	r5, r9, pc, asr pc
    3454:	4902c701 	stmdbmi	r2, {r0, r8, r9, sl, lr, pc}
    3458:	414d544e 	cmpmi	sp, lr, asr #8
    345c:	494d5f58 	stmdbmi	sp, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    3460:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
    3464:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    3468:	4d5f5841 	ldclmi	8, cr5, [pc, #-260]	; 336c <vtsend_cursor_up+0x64>
    346c:	2d205841 	stccs	8, cr5, [r0, #-260]!	; 0xfffffefc
    3470:	00293120 	eoreq	r3, r9, r0, lsr #2
    3474:	5502cf01 	strpl	ip, [r2, #-3841]	; 0xfffff0ff
    3478:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    347c:	4d5f5841 	ldclmi	8, cr5, [pc, #-260]	; 3380 <vtsend_cursor_down+0x4>
    3480:	28205841 	stmdacs	r0!, {r0, r6, fp, ip, lr}
    3484:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    3488:	414d544e 	cmpmi	sp, lr, asr #8
    348c:	414d5f58 	cmpmi	sp, r8, asr pc
    3490:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3494:	02d70100 	sbcseq	r0, r7, #0, 2
    3498:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    349c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    34a0:	5f5f2820 	svcpl	0x005f2820
    34a4:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    34a8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    34ac:	00295f5f 	eoreq	r5, r9, pc, asr pc
    34b0:	5302dd01 	movwpl	sp, #11521	; 0x2d01
    34b4:	415f4749 	cmpmi	pc, r9, asr #14
    34b8:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    34bc:	494d5f43 	stmdbmi	sp, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    34c0:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
    34c4:	54535f5f 	ldrbpl	r5, [r3], #-3935	; 0xfffff0a1
    34c8:	544e4944 	strbpl	r4, [lr], #-2372	; 0xfffff6bc
    34cc:	5058455f 	subspl	r4, r8, pc, asr r5
    34d0:	544e4928 	strbpl	r4, [lr], #-2344	; 0xfffff6d8
    34d4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    34d8:	202d2029 	eorcs	r2, sp, r9, lsr #32
    34dc:	01002931 	tsteq	r0, r1, lsr r9
    34e0:	495302de 	ldmdbmi	r3, {r1, r2, r3, r4, r6, r7, r9}^
    34e4:	54415f47 	strbpl	r5, [r1], #-3911	; 0xfffff0b9
    34e8:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    34ec:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    34f0:	5f5f2820 	svcpl	0x005f2820
    34f4:	49445453 	stmdbmi	r4, {r0, r1, r4, r6, sl, ip, lr}^
    34f8:	455f544e 	ldrbmi	r5, [pc, #-1102]	; 30b2 <text_history_find+0x192>
    34fc:	49285058 	stmdbmi	r8!, {r3, r4, r6, ip, lr}
    3500:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 33d0 <vtsend_cursor_down+0x54>
    3504:	29295841 	stmdbcs	r9!, {r0, r6, fp, ip, lr}
    3508:	02e20100 	rsceq	r0, r2, #0, 2
    350c:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    3510:	5f464649 	svcpl	0x00464649
    3514:	2058414d 	subscs	r4, r8, sp, asr #2
    3518:	505f5f28 	subspl	r5, pc, r8, lsr #30
    351c:	49445254 	stmdbmi	r4, {r2, r4, r6, r9, ip, lr}^
    3520:	4d5f4646 	ldclmi	6, cr4, [pc, #-280]	; 3410 <vtsend_cursor_forward+0x20>
    3524:	5f5f5841 	svcpl	0x005f5841
    3528:	e6010029 	str	r0, [r1], -r9, lsr #32
    352c:	52545002 	subspl	r5, r4, #2
    3530:	46464944 	strbmi	r4, [r6], -r4, asr #18
    3534:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    3538:	502d2820 	eorpl	r2, sp, r0, lsr #16
    353c:	49445254 	stmdbmi	r4, {r2, r4, r6, r9, ip, lr}^
    3540:	4d5f4646 	ldclmi	6, cr4, [pc, #-280]	; 3430 <vtsend_cursor_forward+0x40>
    3544:	2d205841 	stccs	8, cr5, [r0, #-260]!	; 0xfffffefc
    3548:	00293120 	eoreq	r3, r9, r0, lsr #2
    354c:	5702eb01 	strpl	lr, [r2, -r1, lsl #22]
    3550:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    3554:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    3558:	5f5f2820 	svcpl	0x005f2820
    355c:	41484357 	cmpmi	r8, r7, asr r3
    3560:	494d5f52 	stmdbmi	sp, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    3564:	295f5f4e 	ldmdbcs	pc, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3568:	02f60100 	rscseq	r0, r6, #0, 2
    356c:	41484357 	cmpmi	r8, r7, asr r3
    3570:	414d5f52 	cmpmi	sp, r2, asr pc
    3574:	5f282058 	svcpl	0x00282058
    3578:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    357c:	4d5f5241 	lfmmi	f5, 2, [pc, #-260]	; 3480 <vtsend_cursor_backward+0x1c>
    3580:	5f5f5841 	svcpl	0x005f5841
    3584:	80010029 	andhi	r0, r1, r9, lsr #32
    3588:	4e495703 	cdpmi	7, 4, cr5, cr9, cr3, {0}
    358c:	414d5f54 	cmpmi	sp, r4, asr pc
    3590:	5f282058 	svcpl	0x00282058
    3594:	4e49575f 	mcrmi	7, 2, r5, cr9, cr15, {2}
    3598:	414d5f54 	cmpmi	sp, r4, asr pc
    359c:	295f5f58 	ldmdbcs	pc, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    35a0:	03850100 	orreq	r0, r5, #0, 2
    35a4:	544e4957 	strbpl	r4, [lr], #-2391	; 0xfffff6a9
    35a8:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    35ac:	5f5f2820 	svcpl	0x005f2820
    35b0:	544e4957 	strbpl	r4, [lr], #-2391	; 0xfffff6a9
    35b4:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    35b8:	00295f5f 	eoreq	r5, r9, pc, asr pc
    35bc:	49038c01 	stmdbmi	r3, {r0, sl, fp, pc}
    35c0:	5f38544e 	svcpl	0x0038544e
    35c4:	29782843 	ldmdbcs	r8!, {r0, r1, r6, fp, sp}^
    35c8:	495f5f20 	ldmdbmi	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    35cc:	5f38544e 	svcpl	0x0038544e
    35d0:	29782843 	ldmdbcs	r8!, {r0, r1, r6, fp, sp}^
    35d4:	038d0100 	orreq	r0, sp, #0, 2
    35d8:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    35dc:	28435f38 	stmdacs	r3, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    35e0:	5f202978 	svcpl	0x00202978
    35e4:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    35e8:	435f3854 	cmpmi	pc, #84, 16	; 0x540000
    35ec:	00297828 	eoreq	r7, r9, r8, lsr #16
    35f0:	49039801 	stmdbmi	r3, {r0, fp, ip, pc}
    35f4:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    35f8:	7828435f 	stmdavc	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, lr}
    35fc:	5f5f2029 	svcpl	0x005f2029
    3600:	31544e49 	cmpcc	r4, r9, asr #28
    3604:	28435f36 	stmdacs	r3, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    3608:	01002978 	tsteq	r0, r8, ror r9
    360c:	49550399 	ldmdbmi	r5, {r0, r3, r4, r7, r8, r9}^
    3610:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    3614:	7828435f 	stmdavc	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, lr}
    3618:	5f5f2029 	svcpl	0x005f2029
    361c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    3620:	435f3631 	cmpmi	pc, #51380224	; 0x3100000
    3624:	00297828 	eoreq	r7, r9, r8, lsr #16
    3628:	4903a401 	stmdbmi	r3, {r0, sl, sp, pc}
    362c:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    3630:	7828435f 	stmdavc	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, lr}
    3634:	5f5f2029 	svcpl	0x005f2029
    3638:	33544e49 	cmpcc	r4, #1168	; 0x490
    363c:	28435f32 	stmdacs	r3, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    3640:	01002978 	tsteq	r0, r8, ror r9
    3644:	495503a5 	ldmdbmi	r5, {r0, r2, r5, r7, r8, r9}^
    3648:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    364c:	7828435f 	stmdavc	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, lr}
    3650:	5f5f2029 	svcpl	0x005f2029
    3654:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    3658:	435f3233 	cmpmi	pc, #805306371	; 0x30000003
    365c:	00297828 	eoreq	r7, r9, r8, lsr #16
    3660:	4903b101 	stmdbmi	r3, {r0, r8, ip, sp, pc}
    3664:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    3668:	7828435f 	stmdavc	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, lr}
    366c:	5f5f2029 	svcpl	0x005f2029
    3670:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    3674:	28435f34 	stmdacs	r3, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    3678:	01002978 	tsteq	r0, r8, ror r9
    367c:	495503b2 	ldmdbmi	r5, {r1, r4, r5, r7, r8, r9}^
    3680:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    3684:	7828435f 	stmdavc	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, lr}
    3688:	5f5f2029 	svcpl	0x005f2029
    368c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    3690:	435f3436 	cmpmi	pc, #905969664	; 0x36000000
    3694:	00297828 	eoreq	r7, r9, r8, lsr #16
    3698:	4903c101 	stmdbmi	r3, {r0, r8, lr, pc}
    369c:	414d544e 	cmpmi	sp, lr, asr #8
    36a0:	28435f58 	stmdacs	r3, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    36a4:	5f202978 	svcpl	0x00202978
    36a8:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    36ac:	5f58414d 	svcpl	0x0058414d
    36b0:	29782843 	ldmdbcs	r8!, {r0, r1, r6, fp, sp}^
    36b4:	03c20100 	biceq	r0, r2, #0, 2
    36b8:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    36bc:	5f58414d 	svcpl	0x0058414d
    36c0:	29782843 	ldmdbcs	r8!, {r0, r1, r6, fp, sp}^
    36c4:	555f5f20 	ldrbpl	r5, [pc, #-3872]	; 27ac <ntstdio_puts+0x29c>
    36c8:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    36cc:	435f5841 	cmpmi	pc, #4259840	; 0x410000
    36d0:	00297828 	eoreq	r7, r9, r8, lsr #16
    36d4:	5f0d0104 	svcpl	0x000d0104
    36d8:	5f434347 	svcpl	0x00434347
    36dc:	50415257 	subpl	r5, r1, r7, asr r2
    36e0:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    36e4:	5f544e49 	svcpl	0x00544e49
    36e8:	04002048 	streq	r2, [r0], #-72	; 0xffffffb8
    36ec:	49560f01 	ldmdbmi	r6, {r0, r8, r9, sl, fp}^
    36f0:	51524943 	cmppl	r2, r3, asr #18
    36f4:	74617453 	strbtvc	r7, [r1], #-1107	; 0xfffffbad
    36f8:	28207375 	stmdacs	r0!, {r0, r2, r4, r5, r6, r8, r9, ip, sp, lr}
    36fc:	6f76282a 	svcvs	0x0076282a
    3700:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    3704:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    3708:	33746e69 	cmncc	r4, #1680	; 0x690
    370c:	2a745f32 	bcs	1d1b3dc <__mprec_tinytens+0x1cf6b6c>
    3710:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    3714:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3718:	30303046 	eorscc	r3, r0, r6, asr #32
    371c:	01002929 	tsteq	r0, r9, lsr #18
    3720:	43495610 	movtmi	r5, #38416	; 0x9610
    3724:	53514946 	cmppl	r1, #1146880	; 0x118000
    3728:	75746174 	ldrbvc	r6, [r4, #-372]!	; 0xfffffe8c
    372c:	2a282073 	bcs	a0b900 <__mprec_tinytens+0x9e7090>
    3730:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3698 <vtsend_set_color_background+0x18>
    3734:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3738:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    373c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3740:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3744:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3748:	46464646 	strbmi	r4, [r6], -r6, asr #12
    374c:	29343030 	ldmdbcs	r4!, {r4, r5, ip, sp}
    3750:	11010029 	tstne	r1, r9, lsr #32
    3754:	52434956 	subpl	r4, r3, #1409024	; 0x158000
    3758:	6e497761 	cdpvs	7, 4, cr7, cr9, cr1, {3}
    375c:	28207274 	stmdacs	r0!, {r2, r4, r5, r6, r9, ip, sp, lr}
    3760:	6f76282a 	svcvs	0x0076282a
    3764:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    3768:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    376c:	33746e69 	cmncc	r4, #1680	; 0x690
    3770:	2a745f32 	bcs	1d1b440 <__mprec_tinytens+0x1cf6bd0>
    3774:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    3778:	46464646 	strbmi	r4, [r6], -r6, asr #12
    377c:	38303046 	ldmdacc	r0!, {r1, r2, r6, ip, sp}
    3780:	01002929 	tsteq	r0, r9, lsr #18
    3784:	43495612 	movtmi	r5, #38418	; 0x9612
    3788:	53746e49 	cmnpl	r4, #1168	; 0x490
    378c:	63656c65 	cmnvs	r5, #25856	; 0x6500
    3790:	2a282074 	bcs	a0b968 <__mprec_tinytens+0x9e70f8>
    3794:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 36fc <vtsend_set_attribute+0x4>
    3798:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    379c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    37a0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    37a4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    37a8:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    37ac:	46464646 	strbmi	r4, [r6], -r6, asr #12
    37b0:	29433030 	stmdbcs	r3, {r4, r5, ip, sp}^
    37b4:	13010029 	movwne	r0, #4137	; 0x1029
    37b8:	49434956 	stmdbmi	r3, {r1, r2, r4, r6, r8, fp, lr}^
    37bc:	6e45746e 	cdpvs	4, 4, cr7, cr5, cr14, {3}
    37c0:	656c6261 	strbvs	r6, [ip, #-609]!	; 0xfffffd9f
    37c4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    37c8:	616c6f76 	smcvs	50934	; 0xc6f6
    37cc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    37d0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    37d4:	5f323374 	svcpl	0x00323374
    37d8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    37dc:	46467830 			; <UNDEFINED> instruction: 0x46467830
    37e0:	30464646 	subcc	r4, r6, r6, asr #12
    37e4:	29293031 	stmdbcs	r9!, {r0, r4, r5, ip, sp}
    37e8:	56140100 	ldrpl	r0, [r4], -r0, lsl #2
    37ec:	6e494349 	cdpvs	3, 4, cr4, cr9, cr9, {2}
    37f0:	436e4574 	cmnmi	lr, #116, 10	; 0x1d000000
    37f4:	2820726c 	stmdacs	r0!, {r2, r3, r5, r6, r9, ip, sp, lr}
    37f8:	6f76282a 	svcvs	0x0076282a
    37fc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    3800:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    3804:	33746e69 	cmncc	r4, #1680	; 0x690
    3808:	2a745f32 	bcs	1d1b4d8 <__mprec_tinytens+0x1cf6c68>
    380c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    3810:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3814:	34313046 	ldrtcc	r3, [r1], #-70	; 0xffffffba
    3818:	01002929 	tsteq	r0, r9, lsr #18
    381c:	43495615 	movtmi	r5, #38421	; 0x9615
    3820:	74666f53 	strbtvc	r6, [r6], #-3923	; 0xfffff0ad
    3824:	20746e49 	rsbscs	r6, r4, r9, asr #28
    3828:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    382c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    3830:	20656c69 	rsbcs	r6, r5, r9, ror #24
    3834:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    3838:	745f3233 	ldrbvc	r3, [pc], #-563	; 3840 <vtsend_set_cursor+0x34>
    383c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    3840:	46464678 			; <UNDEFINED> instruction: 0x46464678
    3844:	31304646 	teqcc	r0, r6, asr #12
    3848:	00292938 	eoreq	r2, r9, r8, lsr r9
    384c:	49561601 	ldmdbmi	r6, {r0, r9, sl, ip}^
    3850:	666f5343 	strbtvs	r5, [pc], -r3, asr #6
    3854:	746e4974 	strbtvc	r4, [lr], #-2420	; 0xfffff68c
    3858:	20726c43 	rsbscs	r6, r2, r3, asr #24
    385c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    3860:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    3864:	20656c69 	rsbcs	r6, r5, r9, ror #24
    3868:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    386c:	745f3233 	ldrbvc	r3, [pc], #-563	; 3874 <vtsend_reset>
    3870:	3028292a 	eorcc	r2, r8, sl, lsr #18
    3874:	46464678 			; <UNDEFINED> instruction: 0x46464678
    3878:	31304646 	teqcc	r0, r6, asr #12
    387c:	00292943 	eoreq	r2, r9, r3, asr #18
    3880:	49561701 	ldmdbmi	r6, {r0, r8, r9, sl, ip}^
    3884:	6f725043 	svcvs	0x00725043
    3888:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
    388c:	206e6f69 	rsbcs	r6, lr, r9, ror #30
    3890:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    3894:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    3898:	20656c69 	rsbcs	r6, r5, r9, ror #24
    389c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    38a0:	745f3233 	ldrbvc	r3, [pc], #-563	; 38a8 <vtsend_reset+0x34>
    38a4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    38a8:	46464678 			; <UNDEFINED> instruction: 0x46464678
    38ac:	32304646 	eorscc	r4, r0, #73400320	; 0x4600000
    38b0:	00292930 	eoreq	r2, r9, r0, lsr r9
    38b4:	49561801 	ldmdbmi	r6, {r0, fp, ip}^
    38b8:	50575343 	subspl	r5, r7, r3, asr #6
    38bc:	4d6f6972 			; <UNDEFINED> instruction: 0x4d6f6972
    38c0:	206b7361 	rsbcs	r7, fp, r1, ror #6
    38c4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    38c8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    38cc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    38d0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    38d4:	745f3233 	ldrbvc	r3, [pc], #-563	; 38dc <vtsend_draw_box+0x28>
    38d8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    38dc:	46464678 			; <UNDEFINED> instruction: 0x46464678
    38e0:	32304646 	eorscc	r4, r0, #73400320	; 0x4600000
    38e4:	00292934 	eoreq	r2, r9, r4, lsr r9
    38e8:	49561901 	ldmdbmi	r6, {r0, r8, fp, ip}^
    38ec:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    38f0:	64644174 	strbtvs	r4, [r4], #-372	; 0xfffffe8c
    38f4:	28203072 	stmdacs	r0!, {r1, r4, r5, r6, ip, sp}
    38f8:	6f76282a 	svcvs	0x0076282a
    38fc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    3900:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    3904:	33746e69 	cmncc	r4, #1680	; 0x690
    3908:	2a745f32 	bcs	1d1b5d8 <__mprec_tinytens+0x1cf6d68>
    390c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    3910:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3914:	30303146 	eorscc	r3, r0, r6, asr #2
    3918:	01002929 	tsteq	r0, r9, lsr #18
    391c:	4349561a 	movtmi	r5, #38426	; 0x961a
    3920:	74636556 	strbtvc	r6, [r3], #-1366	; 0xfffffaaa
    3924:	72646441 	rsbvc	r6, r4, #1090519040	; 0x41000000
    3928:	2a282031 	bcs	a0b9f4 <__mprec_tinytens+0x9e7184>
    392c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3894 <vtsend_reset+0x20>
    3930:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3934:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3938:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    393c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3940:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3944:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3948:	29343031 	ldmdbcs	r4!, {r0, r4, r5, ip, sp}
    394c:	1b010029 	blne	439f8 <__mprec_tinytens+0x1f188>
    3950:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3954:	41746365 	cmnmi	r4, r5, ror #6
    3958:	32726464 	rsbscc	r6, r2, #100, 8	; 0x64000000
    395c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    3960:	616c6f76 	smcvs	50934	; 0xc6f6
    3964:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    3968:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    396c:	5f323374 	svcpl	0x00323374
    3970:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    3974:	46467830 			; <UNDEFINED> instruction: 0x46467830
    3978:	31464646 	cmpcc	r6, r6, asr #12
    397c:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    3980:	561c0100 	ldrpl	r0, [ip], -r0, lsl #2
    3984:	65564349 	ldrbvs	r4, [r6, #-841]	; 0xfffffcb7
    3988:	64417463 	strbvs	r7, [r1], #-1123	; 0xfffffb9d
    398c:	20337264 	eorscs	r7, r3, r4, ror #4
    3990:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    3994:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    3998:	20656c69 	rsbcs	r6, r5, r9, ror #24
    399c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    39a0:	745f3233 	ldrbvc	r3, [pc], #-563	; 39a8 <vtsend_draw_box+0xf4>
    39a4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    39a8:	46464678 			; <UNDEFINED> instruction: 0x46464678
    39ac:	30314646 	eorscc	r4, r1, r6, asr #12
    39b0:	00292943 	eoreq	r2, r9, r3, asr #18
    39b4:	49561d01 	ldmdbmi	r6, {r0, r8, sl, fp, ip}^
    39b8:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    39bc:	64644174 	strbtvs	r4, [r4], #-372	; 0xfffffe8c
    39c0:	28203472 	stmdacs	r0!, {r1, r4, r5, r6, sl, ip, sp}
    39c4:	6f76282a 	svcvs	0x0076282a
    39c8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    39cc:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    39d0:	33746e69 	cmncc	r4, #1680	; 0x690
    39d4:	2a745f32 	bcs	1d1b6a4 <__mprec_tinytens+0x1cf6e34>
    39d8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    39dc:	46464646 	strbmi	r4, [r6], -r6, asr #12
    39e0:	30313146 	eorscc	r3, r1, r6, asr #2
    39e4:	01002929 	tsteq	r0, r9, lsr #18
    39e8:	4349561e 	movtmi	r5, #38430	; 0x961e
    39ec:	74636556 	strbtvc	r6, [r3], #-1366	; 0xfffffaaa
    39f0:	72646441 	rsbvc	r6, r4, #1090519040	; 0x41000000
    39f4:	2a282035 	bcs	a0bad0 <__mprec_tinytens+0x9e7260>
    39f8:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3960 <vtsend_draw_box+0xac>
    39fc:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3a00:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3a04:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3a08:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3a0c:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3a10:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3a14:	29343131 	ldmdbcs	r4!, {r0, r4, r5, r8, ip, sp}
    3a18:	1f010029 	svcne	0x00010029
    3a1c:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3a20:	41746365 	cmnmi	r4, r5, ror #6
    3a24:	36726464 	ldrbtcc	r6, [r2], -r4, ror #8
    3a28:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    3a2c:	616c6f76 	smcvs	50934	; 0xc6f6
    3a30:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    3a34:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    3a38:	5f323374 	svcpl	0x00323374
    3a3c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    3a40:	46467830 			; <UNDEFINED> instruction: 0x46467830
    3a44:	31464646 	cmpcc	r6, r6, asr #12
    3a48:	29293831 	stmdbcs	r9!, {r0, r4, r5, fp, ip, sp}
    3a4c:	56200100 	strtpl	r0, [r0], -r0, lsl #2
    3a50:	65564349 	ldrbvs	r4, [r6, #-841]	; 0xfffffcb7
    3a54:	64417463 	strbvs	r7, [r1], #-1123	; 0xfffffb9d
    3a58:	20377264 	eorscs	r7, r7, r4, ror #4
    3a5c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    3a60:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    3a64:	20656c69 	rsbcs	r6, r5, r9, ror #24
    3a68:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    3a6c:	745f3233 	ldrbvc	r3, [pc], #-563	; 3a74 <LPC2388_Initialize+0x18>
    3a70:	3028292a 	eorcc	r2, r8, sl, lsr #18
    3a74:	46464678 			; <UNDEFINED> instruction: 0x46464678
    3a78:	31314646 	teqcc	r1, r6, asr #12
    3a7c:	00292943 	eoreq	r2, r9, r3, asr #18
    3a80:	49562101 	ldmdbmi	r6, {r0, r8, sp}^
    3a84:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    3a88:	64644174 	strbtvs	r4, [r4], #-372	; 0xfffffe8c
    3a8c:	28203872 	stmdacs	r0!, {r1, r4, r5, r6, fp, ip, sp}
    3a90:	6f76282a 	svcvs	0x0076282a
    3a94:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    3a98:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    3a9c:	33746e69 	cmncc	r4, #1680	; 0x690
    3aa0:	2a745f32 	bcs	1d1b770 <__mprec_tinytens+0x1cf6f00>
    3aa4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    3aa8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3aac:	30323146 	eorscc	r3, r2, r6, asr #2
    3ab0:	01002929 	tsteq	r0, r9, lsr #18
    3ab4:	43495622 	movtmi	r5, #38434	; 0x9622
    3ab8:	74636556 	strbtvc	r6, [r3], #-1366	; 0xfffffaaa
    3abc:	72646441 	rsbvc	r6, r4, #1090519040	; 0x41000000
    3ac0:	2a282039 	bcs	a0bbac <__mprec_tinytens+0x9e733c>
    3ac4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3a2c <vtsend_fill_box+0x54>
    3ac8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3acc:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3ad0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3ad4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3ad8:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3adc:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3ae0:	29343231 	ldmdbcs	r4!, {r0, r4, r5, r9, ip, sp}
    3ae4:	23010029 	movwcs	r0, #4137	; 0x1029
    3ae8:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3aec:	41746365 	cmnmi	r4, r5, ror #6
    3af0:	31726464 	cmncc	r2, r4, ror #8
    3af4:	2a282030 	bcs	a0bbbc <__mprec_tinytens+0x9e734c>
    3af8:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3a60 <LPC2388_Initialize+0x4>
    3afc:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3b00:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3b04:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3b08:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3b0c:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3b10:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3b14:	29383231 	ldmdbcs	r8!, {r0, r4, r5, r9, ip, sp}
    3b18:	24010029 	strcs	r0, [r1], #-41	; 0xffffffd7
    3b1c:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3b20:	41746365 	cmnmi	r4, r5, ror #6
    3b24:	31726464 	cmncc	r2, r4, ror #8
    3b28:	2a282031 	bcs	a0bbf4 <__mprec_tinytens+0x9e7384>
    3b2c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3a94 <LPC2388_Initialize+0x38>
    3b30:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3b34:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3b38:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3b3c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3b40:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3b44:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3b48:	29433231 	stmdbcs	r3, {r0, r4, r5, r9, ip, sp}^
    3b4c:	25010029 	strcs	r0, [r1, #-41]	; 0xffffffd7
    3b50:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3b54:	41746365 	cmnmi	r4, r5, ror #6
    3b58:	31726464 	cmncc	r2, r4, ror #8
    3b5c:	2a282032 	bcs	a0bc2c <__mprec_tinytens+0x9e73bc>
    3b60:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3ac8 <LPC2388_Initialize+0x6c>
    3b64:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3b68:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3b6c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3b70:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3b74:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3b78:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3b7c:	29303331 	ldmdbcs	r0!, {r0, r4, r5, r8, r9, ip, sp}
    3b80:	26010029 	strcs	r0, [r1], -r9, lsr #32
    3b84:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3b88:	41746365 	cmnmi	r4, r5, ror #6
    3b8c:	31726464 	cmncc	r2, r4, ror #8
    3b90:	2a282033 	bcs	a0bc64 <__mprec_tinytens+0x9e73f4>
    3b94:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3afc <LPC2388_Initialize+0xa0>
    3b98:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3b9c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3ba0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3ba4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3ba8:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3bac:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3bb0:	29343331 	ldmdbcs	r4!, {r0, r4, r5, r8, r9, ip, sp}
    3bb4:	27010029 	strcs	r0, [r1, -r9, lsr #32]
    3bb8:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3bbc:	41746365 	cmnmi	r4, r5, ror #6
    3bc0:	31726464 	cmncc	r2, r4, ror #8
    3bc4:	2a282034 	bcs	a0bc9c <__mprec_tinytens+0x9e742c>
    3bc8:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3b30 <LPC2388_Initialize+0xd4>
    3bcc:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3bd0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3bd4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3bd8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3bdc:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3be0:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3be4:	29383331 	ldmdbcs	r8!, {r0, r4, r5, r8, r9, ip, sp}
    3be8:	28010029 	stmdacs	r1, {r0, r3, r5}
    3bec:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3bf0:	41746365 	cmnmi	r4, r5, ror #6
    3bf4:	31726464 	cmncc	r2, r4, ror #8
    3bf8:	2a282035 	bcs	a0bcd4 <__mprec_tinytens+0x9e7464>
    3bfc:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3b64 <LPC2388_Initialize+0x108>
    3c00:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3c04:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3c08:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3c0c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3c10:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3c14:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3c18:	29433331 	stmdbcs	r3, {r0, r4, r5, r8, r9, ip, sp}^
    3c1c:	29010029 	stmdbcs	r1, {r0, r3, r5}
    3c20:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3c24:	41746365 	cmnmi	r4, r5, ror #6
    3c28:	31726464 	cmncc	r2, r4, ror #8
    3c2c:	2a282036 	bcs	a0bd0c <__mprec_tinytens+0x9e749c>
    3c30:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3b98 <LPC2388_Initialize+0x13c>
    3c34:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3c38:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3c3c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3c40:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3c44:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3c48:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3c4c:	29303431 	ldmdbcs	r0!, {r0, r4, r5, sl, ip, sp}
    3c50:	2a010029 	bcs	43cfc <__mprec_tinytens+0x1f48c>
    3c54:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3c58:	41746365 	cmnmi	r4, r5, ror #6
    3c5c:	31726464 	cmncc	r2, r4, ror #8
    3c60:	2a282037 	bcs	a0bd44 <__mprec_tinytens+0x9e74d4>
    3c64:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3bcc <LPC2388_Initialize+0x170>
    3c68:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3c6c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3c70:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3c74:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3c78:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3c7c:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3c80:	29343431 	ldmdbcs	r4!, {r0, r4, r5, sl, ip, sp}
    3c84:	2b010029 	blcs	43d30 <__mprec_tinytens+0x1f4c0>
    3c88:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3c8c:	41746365 	cmnmi	r4, r5, ror #6
    3c90:	31726464 	cmncc	r2, r4, ror #8
    3c94:	2a282038 	bcs	a0bd7c <__mprec_tinytens+0x9e750c>
    3c98:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3c00 <LPC2388_Initialize+0x1a4>
    3c9c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3ca0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3ca4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3ca8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3cac:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3cb0:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3cb4:	29383431 	ldmdbcs	r8!, {r0, r4, r5, sl, ip, sp}
    3cb8:	2c010029 	stccs	0, cr0, [r1], {41}	; 0x29
    3cbc:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3cc0:	41746365 	cmnmi	r4, r5, ror #6
    3cc4:	31726464 	cmncc	r2, r4, ror #8
    3cc8:	2a282039 	bcs	a0bdb4 <__mprec_tinytens+0x9e7544>
    3ccc:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3c34 <LPC2388_Initialize+0x1d8>
    3cd0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3cd4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3cd8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3cdc:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3ce0:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3ce4:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3ce8:	29433431 	stmdbcs	r3, {r0, r4, r5, sl, ip, sp}^
    3cec:	2d010029 	stccs	0, cr0, [r1, #-164]	; 0xffffff5c
    3cf0:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3cf4:	41746365 	cmnmi	r4, r5, ror #6
    3cf8:	32726464 	rsbscc	r6, r2, #100, 8	; 0x64000000
    3cfc:	2a282030 	bcs	a0bdc4 <__mprec_tinytens+0x9e7554>
    3d00:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3c68 <LPC2388_Initialize+0x20c>
    3d04:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3d08:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3d0c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3d10:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3d14:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3d18:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3d1c:	29303531 	ldmdbcs	r0!, {r0, r4, r5, r8, sl, ip, sp}
    3d20:	2e010029 	cdpcs	0, 0, cr0, cr1, cr9, {1}
    3d24:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3d28:	41746365 	cmnmi	r4, r5, ror #6
    3d2c:	32726464 	rsbscc	r6, r2, #100, 8	; 0x64000000
    3d30:	2a282031 	bcs	a0bdfc <__mprec_tinytens+0x9e758c>
    3d34:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3c9c <LPC2388_Initialize+0x240>
    3d38:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3d3c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3d40:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3d44:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3d48:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3d4c:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3d50:	29343531 	ldmdbcs	r4!, {r0, r4, r5, r8, sl, ip, sp}
    3d54:	2f010029 	svccs	0x00010029
    3d58:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3d5c:	41746365 	cmnmi	r4, r5, ror #6
    3d60:	32726464 	rsbscc	r6, r2, #100, 8	; 0x64000000
    3d64:	2a282032 	bcs	a0be34 <__mprec_tinytens+0x9e75c4>
    3d68:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3cd0 <LPC2388_Initialize+0x274>
    3d6c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3d70:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3d74:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3d78:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3d7c:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3d80:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3d84:	29383531 	ldmdbcs	r8!, {r0, r4, r5, r8, sl, ip, sp}
    3d88:	30010029 	andcc	r0, r1, r9, lsr #32
    3d8c:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3d90:	41746365 	cmnmi	r4, r5, ror #6
    3d94:	32726464 	rsbscc	r6, r2, #100, 8	; 0x64000000
    3d98:	2a282033 	bcs	a0be6c <__mprec_tinytens+0x9e75fc>
    3d9c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3d04 <LPC2388_Initialize+0x2a8>
    3da0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3da4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3da8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3dac:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3db0:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3db4:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3db8:	29433531 	stmdbcs	r3, {r0, r4, r5, r8, sl, ip, sp}^
    3dbc:	31010029 	tstcc	r1, r9, lsr #32
    3dc0:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3dc4:	41746365 	cmnmi	r4, r5, ror #6
    3dc8:	32726464 	rsbscc	r6, r2, #100, 8	; 0x64000000
    3dcc:	2a282034 	bcs	a0bea4 <__mprec_tinytens+0x9e7634>
    3dd0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3d38 <LPC2388_Initialize+0x2dc>
    3dd4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3dd8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3ddc:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3de0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3de4:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3de8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3dec:	29303631 	ldmdbcs	r0!, {r0, r4, r5, r9, sl, ip, sp}
    3df0:	32010029 	andcc	r0, r1, #41	; 0x29
    3df4:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3df8:	41746365 	cmnmi	r4, r5, ror #6
    3dfc:	32726464 	rsbscc	r6, r2, #100, 8	; 0x64000000
    3e00:	2a282035 	bcs	a0bedc <__mprec_tinytens+0x9e766c>
    3e04:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3d6c <LPC2388_Initialize+0x310>
    3e08:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3e0c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3e10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3e14:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3e18:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3e1c:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3e20:	29343631 	ldmdbcs	r4!, {r0, r4, r5, r9, sl, ip, sp}
    3e24:	33010029 	movwcc	r0, #4137	; 0x1029
    3e28:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3e2c:	41746365 	cmnmi	r4, r5, ror #6
    3e30:	32726464 	rsbscc	r6, r2, #100, 8	; 0x64000000
    3e34:	2a282036 	bcs	a0bf14 <__mprec_tinytens+0x9e76a4>
    3e38:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3da0 <LPC2388_Initialize+0x344>
    3e3c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3e40:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3e44:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3e48:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3e4c:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3e50:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3e54:	29383631 	ldmdbcs	r8!, {r0, r4, r5, r9, sl, ip, sp}
    3e58:	34010029 	strcc	r0, [r1], #-41	; 0xffffffd7
    3e5c:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3e60:	41746365 	cmnmi	r4, r5, ror #6
    3e64:	32726464 	rsbscc	r6, r2, #100, 8	; 0x64000000
    3e68:	2a282037 	bcs	a0bf4c <__mprec_tinytens+0x9e76dc>
    3e6c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3dd4 <LPC2388_Initialize+0x378>
    3e70:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3e74:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3e78:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3e7c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3e80:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3e84:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3e88:	29433631 	stmdbcs	r3, {r0, r4, r5, r9, sl, ip, sp}^
    3e8c:	35010029 	strcc	r0, [r1, #-41]	; 0xffffffd7
    3e90:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3e94:	41746365 	cmnmi	r4, r5, ror #6
    3e98:	32726464 	rsbscc	r6, r2, #100, 8	; 0x64000000
    3e9c:	2a282038 	bcs	a0bf84 <__mprec_tinytens+0x9e7714>
    3ea0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3e08 <LPC2388_Initialize+0x3ac>
    3ea4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3ea8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3eac:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3eb0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3eb4:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3eb8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3ebc:	29303731 	ldmdbcs	r0!, {r0, r4, r5, r8, r9, sl, ip, sp}
    3ec0:	36010029 	strcc	r0, [r1], -r9, lsr #32
    3ec4:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3ec8:	41746365 	cmnmi	r4, r5, ror #6
    3ecc:	32726464 	rsbscc	r6, r2, #100, 8	; 0x64000000
    3ed0:	2a282039 	bcs	a0bfbc <__mprec_tinytens+0x9e774c>
    3ed4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3e3c <LPC2388_Initialize+0x3e0>
    3ed8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3edc:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3ee0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3ee4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3ee8:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3eec:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3ef0:	29343731 	ldmdbcs	r4!, {r0, r4, r5, r8, r9, sl, ip, sp}
    3ef4:	37010029 	strcc	r0, [r1, -r9, lsr #32]
    3ef8:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3efc:	41746365 	cmnmi	r4, r5, ror #6
    3f00:	33726464 	cmncc	r2, #100, 8	; 0x64000000
    3f04:	2a282030 	bcs	a0bfcc <__mprec_tinytens+0x9e775c>
    3f08:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3e70 <LPC2388_Initialize+0x414>
    3f0c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3f10:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3f14:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3f18:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3f1c:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3f20:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3f24:	29383731 	ldmdbcs	r8!, {r0, r4, r5, r8, r9, sl, ip, sp}
    3f28:	38010029 	stmdacc	r1, {r0, r3, r5}
    3f2c:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3f30:	41746365 	cmnmi	r4, r5, ror #6
    3f34:	33726464 	cmncc	r2, #100, 8	; 0x64000000
    3f38:	2a282031 	bcs	a0c004 <__mprec_tinytens+0x9e7794>
    3f3c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3ea4 <LPC2388_Initialize+0x448>
    3f40:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3f44:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    3f48:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    3f4c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    3f50:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    3f54:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3f58:	29433731 	stmdbcs	r3, {r0, r4, r5, r8, r9, sl, ip, sp}^
    3f5c:	39010029 	stmdbcc	r1, {r0, r3, r5}
    3f60:	56434956 			; <UNDEFINED> instruction: 0x56434956
    3f64:	43746365 	cmnmi	r4, #-1811939327	; 0x94000001
    3f68:	306c746e 	rsbcc	r7, ip, lr, ror #8
    3f6c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    3f70:	616c6f76 	smcvs	50934	; 0xc6f6
    3f74:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    3f78:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    3f7c:	5f323374 	svcpl	0x00323374
    3f80:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    3f84:	46467830 			; <UNDEFINED> instruction: 0x46467830
    3f88:	32464646 	subcc	r4, r6, #73400320	; 0x4600000
    3f8c:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    3f90:	563a0100 	ldrtpl	r0, [sl], -r0, lsl #2
    3f94:	65564349 	ldrbvs	r4, [r6, #-841]	; 0xfffffcb7
    3f98:	6e437463 	cdpvs	4, 4, cr7, cr3, cr3, {3}
    3f9c:	20316c74 	eorscs	r6, r1, r4, ror ip
    3fa0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    3fa4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    3fa8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    3fac:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    3fb0:	745f3233 	ldrbvc	r3, [pc], #-563	; 3fb8 <LPC2388_Initialize+0x55c>
    3fb4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    3fb8:	46464678 			; <UNDEFINED> instruction: 0x46464678
    3fbc:	30324646 	eorscc	r4, r2, r6, asr #12
    3fc0:	00292934 	eoreq	r2, r9, r4, lsr r9
    3fc4:	49563b01 	ldmdbmi	r6, {r0, r8, r9, fp, ip, sp}^
    3fc8:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    3fcc:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    3fd0:	2820326c 	stmdacs	r0!, {r2, r3, r5, r6, r9, ip, sp}
    3fd4:	6f76282a 	svcvs	0x0076282a
    3fd8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    3fdc:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    3fe0:	33746e69 	cmncc	r4, #1680	; 0x690
    3fe4:	2a745f32 	bcs	1d1bcb4 <__mprec_tinytens+0x1cf7444>
    3fe8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    3fec:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3ff0:	38303246 	ldmdacc	r0!, {r1, r2, r6, r9, ip, sp}
    3ff4:	01002929 	tsteq	r0, r9, lsr #18
    3ff8:	4349563c 	movtmi	r5, #38460	; 0x963c
    3ffc:	74636556 	strbtvc	r6, [r3], #-1366	; 0xfffffaaa
    4000:	6c746e43 	ldclvs	14, cr6, [r4], #-268	; 0xfffffef4
    4004:	2a282033 	bcs	a0c0d8 <__mprec_tinytens+0x9e7868>
    4008:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3f70 <LPC2388_Initialize+0x514>
    400c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4010:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4014:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    4018:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    401c:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    4020:	46464646 	strbmi	r4, [r6], -r6, asr #12
    4024:	29433032 	stmdbcs	r3, {r1, r4, r5, ip, sp}^
    4028:	3d010029 	stccc	0, cr0, [r1, #-164]	; 0xffffff5c
    402c:	56434956 			; <UNDEFINED> instruction: 0x56434956
    4030:	43746365 	cmnmi	r4, #-1811939327	; 0x94000001
    4034:	346c746e 	strbtcc	r7, [ip], #-1134	; 0xfffffb92
    4038:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    403c:	616c6f76 	smcvs	50934	; 0xc6f6
    4040:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    4044:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    4048:	5f323374 	svcpl	0x00323374
    404c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    4050:	46467830 			; <UNDEFINED> instruction: 0x46467830
    4054:	32464646 	subcc	r4, r6, #73400320	; 0x4600000
    4058:	29293031 	stmdbcs	r9!, {r0, r4, r5, ip, sp}
    405c:	563e0100 	ldrtpl	r0, [lr], -r0, lsl #2
    4060:	65564349 	ldrbvs	r4, [r6, #-841]	; 0xfffffcb7
    4064:	6e437463 	cdpvs	4, 4, cr7, cr3, cr3, {3}
    4068:	20356c74 	eorscs	r6, r5, r4, ror ip
    406c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4070:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4074:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4078:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    407c:	745f3233 	ldrbvc	r3, [pc], #-563	; 4084 <LPC2388_Initialize+0x628>
    4080:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4084:	46464678 			; <UNDEFINED> instruction: 0x46464678
    4088:	31324646 	teqcc	r2, r6, asr #12
    408c:	00292934 	eoreq	r2, r9, r4, lsr r9
    4090:	49563f01 	ldmdbmi	r6, {r0, r8, r9, sl, fp, ip, sp}^
    4094:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    4098:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    409c:	2820366c 	stmdacs	r0!, {r2, r3, r5, r6, r9, sl, ip, sp}
    40a0:	6f76282a 	svcvs	0x0076282a
    40a4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    40a8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    40ac:	33746e69 	cmncc	r4, #1680	; 0x690
    40b0:	2a745f32 	bcs	1d1bd80 <__mprec_tinytens+0x1cf7510>
    40b4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    40b8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    40bc:	38313246 	ldmdacc	r1!, {r1, r2, r6, r9, ip, sp}
    40c0:	01002929 	tsteq	r0, r9, lsr #18
    40c4:	43495640 	movtmi	r5, #38464	; 0x9640
    40c8:	74636556 	strbtvc	r6, [r3], #-1366	; 0xfffffaaa
    40cc:	6c746e43 	ldclvs	14, cr6, [r4], #-268	; 0xfffffef4
    40d0:	2a282037 	bcs	a0c1b4 <__mprec_tinytens+0x9e7944>
    40d4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 403c <LPC2388_Initialize+0x5e0>
    40d8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    40dc:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    40e0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    40e4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    40e8:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    40ec:	46464646 	strbmi	r4, [r6], -r6, asr #12
    40f0:	29433132 	stmdbcs	r3, {r1, r4, r5, r8, ip, sp}^
    40f4:	41010029 	tstmi	r1, r9, lsr #32
    40f8:	56434956 			; <UNDEFINED> instruction: 0x56434956
    40fc:	43746365 	cmnmi	r4, #-1811939327	; 0x94000001
    4100:	386c746e 	stmdacc	ip!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}^
    4104:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    4108:	616c6f76 	smcvs	50934	; 0xc6f6
    410c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    4110:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    4114:	5f323374 	svcpl	0x00323374
    4118:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    411c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    4120:	32464646 	subcc	r4, r6, #73400320	; 0x4600000
    4124:	29293032 	stmdbcs	r9!, {r1, r4, r5, ip, sp}
    4128:	56420100 	strbpl	r0, [r2], -r0, lsl #2
    412c:	65564349 	ldrbvs	r4, [r6, #-841]	; 0xfffffcb7
    4130:	6e437463 	cdpvs	4, 4, cr7, cr3, cr3, {3}
    4134:	20396c74 	eorscs	r6, r9, r4, ror ip
    4138:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    413c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4140:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4144:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4148:	745f3233 	ldrbvc	r3, [pc], #-563	; 4150 <LPC2388_Initialize+0x6f4>
    414c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4150:	46464678 			; <UNDEFINED> instruction: 0x46464678
    4154:	32324646 	eorscc	r4, r2, #73400320	; 0x4600000
    4158:	00292934 	eoreq	r2, r9, r4, lsr r9
    415c:	49564301 	ldmdbmi	r6, {r0, r8, r9, lr}^
    4160:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    4164:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    4168:	2030316c 	eorscs	r3, r0, ip, ror #2
    416c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4170:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4174:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4178:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    417c:	745f3233 	ldrbvc	r3, [pc], #-563	; 4184 <LPC2388_Initialize+0x728>
    4180:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4184:	46464678 			; <UNDEFINED> instruction: 0x46464678
    4188:	32324646 	eorscc	r4, r2, #73400320	; 0x4600000
    418c:	00292938 	eoreq	r2, r9, r8, lsr r9
    4190:	49564401 	ldmdbmi	r6, {r0, sl, lr}^
    4194:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    4198:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    419c:	2031316c 	eorscs	r3, r1, ip, ror #2
    41a0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    41a4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    41a8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    41ac:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    41b0:	745f3233 	ldrbvc	r3, [pc], #-563	; 41b8 <LPC2388_Initialize+0x75c>
    41b4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    41b8:	46464678 			; <UNDEFINED> instruction: 0x46464678
    41bc:	32324646 	eorscc	r4, r2, #73400320	; 0x4600000
    41c0:	00292943 	eoreq	r2, r9, r3, asr #18
    41c4:	49564501 	ldmdbmi	r6, {r0, r8, sl, lr}^
    41c8:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    41cc:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    41d0:	2032316c 	eorscs	r3, r2, ip, ror #2
    41d4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    41d8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    41dc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    41e0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    41e4:	745f3233 	ldrbvc	r3, [pc], #-563	; 41ec <LPC2388_Initialize+0x790>
    41e8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    41ec:	46464678 			; <UNDEFINED> instruction: 0x46464678
    41f0:	33324646 	teqcc	r2, #73400320	; 0x4600000
    41f4:	00292930 	eoreq	r2, r9, r0, lsr r9
    41f8:	49564601 	ldmdbmi	r6, {r0, r9, sl, lr}^
    41fc:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    4200:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    4204:	2033316c 	eorscs	r3, r3, ip, ror #2
    4208:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    420c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4210:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4214:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4218:	745f3233 	ldrbvc	r3, [pc], #-563	; 4220 <LPC2388_Initialize+0x7c4>
    421c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4220:	46464678 			; <UNDEFINED> instruction: 0x46464678
    4224:	33324646 	teqcc	r2, #73400320	; 0x4600000
    4228:	00292934 	eoreq	r2, r9, r4, lsr r9
    422c:	49564701 	ldmdbmi	r6, {r0, r8, r9, sl, lr}^
    4230:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    4234:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    4238:	2034316c 	eorscs	r3, r4, ip, ror #2
    423c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4240:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4244:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4248:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    424c:	745f3233 	ldrbvc	r3, [pc], #-563	; 4254 <LPC2388_Initialize+0x7f8>
    4250:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4254:	46464678 			; <UNDEFINED> instruction: 0x46464678
    4258:	33324646 	teqcc	r2, #73400320	; 0x4600000
    425c:	00292938 	eoreq	r2, r9, r8, lsr r9
    4260:	49564801 	ldmdbmi	r6, {r0, fp, lr}^
    4264:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    4268:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    426c:	2035316c 	eorscs	r3, r5, ip, ror #2
    4270:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4274:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4278:	20656c69 	rsbcs	r6, r5, r9, ror #24
    427c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4280:	745f3233 	ldrbvc	r3, [pc], #-563	; 4288 <LPC2388_Initialize+0x82c>
    4284:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4288:	46464678 			; <UNDEFINED> instruction: 0x46464678
    428c:	33324646 	teqcc	r2, #73400320	; 0x4600000
    4290:	00292943 	eoreq	r2, r9, r3, asr #18
    4294:	49564901 	ldmdbmi	r6, {r0, r8, fp, lr}^
    4298:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    429c:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    42a0:	2036316c 	eorscs	r3, r6, ip, ror #2
    42a4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    42a8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    42ac:	20656c69 	rsbcs	r6, r5, r9, ror #24
    42b0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    42b4:	745f3233 	ldrbvc	r3, [pc], #-563	; 42bc <LPC2388_Initialize+0x860>
    42b8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    42bc:	46464678 			; <UNDEFINED> instruction: 0x46464678
    42c0:	34324646 	ldrtcc	r4, [r2], #-1606	; 0xfffff9ba
    42c4:	00292930 	eoreq	r2, r9, r0, lsr r9
    42c8:	49564a01 	ldmdbmi	r6, {r0, r9, fp, lr}^
    42cc:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    42d0:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    42d4:	2037316c 	eorscs	r3, r7, ip, ror #2
    42d8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    42dc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    42e0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    42e4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    42e8:	745f3233 	ldrbvc	r3, [pc], #-563	; 42f0 <LPC2388_Initialize+0x894>
    42ec:	3028292a 	eorcc	r2, r8, sl, lsr #18
    42f0:	46464678 			; <UNDEFINED> instruction: 0x46464678
    42f4:	34324646 	ldrtcc	r4, [r2], #-1606	; 0xfffff9ba
    42f8:	00292934 	eoreq	r2, r9, r4, lsr r9
    42fc:	49564b01 	ldmdbmi	r6, {r0, r8, r9, fp, lr}^
    4300:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    4304:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    4308:	2038316c 	eorscs	r3, r8, ip, ror #2
    430c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4310:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4314:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4318:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    431c:	745f3233 	ldrbvc	r3, [pc], #-563	; 4324 <LPC2388_Initialize+0x8c8>
    4320:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4324:	46464678 			; <UNDEFINED> instruction: 0x46464678
    4328:	34324646 	ldrtcc	r4, [r2], #-1606	; 0xfffff9ba
    432c:	00292938 	eoreq	r2, r9, r8, lsr r9
    4330:	49564c01 	ldmdbmi	r6, {r0, sl, fp, lr}^
    4334:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    4338:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    433c:	2039316c 	eorscs	r3, r9, ip, ror #2
    4340:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4344:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4348:	20656c69 	rsbcs	r6, r5, r9, ror #24
    434c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4350:	745f3233 	ldrbvc	r3, [pc], #-563	; 4358 <LPC2388_Initialize+0x8fc>
    4354:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4358:	46464678 			; <UNDEFINED> instruction: 0x46464678
    435c:	34324646 	ldrtcc	r4, [r2], #-1606	; 0xfffff9ba
    4360:	00292943 	eoreq	r2, r9, r3, asr #18
    4364:	49564d01 	ldmdbmi	r6, {r0, r8, sl, fp, lr}^
    4368:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    436c:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    4370:	2030326c 	eorscs	r3, r0, ip, ror #4
    4374:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4378:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    437c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4380:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4384:	745f3233 	ldrbvc	r3, [pc], #-563	; 438c <LPC2388_Initialize+0x930>
    4388:	3028292a 	eorcc	r2, r8, sl, lsr #18
    438c:	46464678 			; <UNDEFINED> instruction: 0x46464678
    4390:	35324646 	ldrcc	r4, [r2, #-1606]!	; 0xfffff9ba
    4394:	00292930 	eoreq	r2, r9, r0, lsr r9
    4398:	49564e01 	ldmdbmi	r6, {r0, r9, sl, fp, lr}^
    439c:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    43a0:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    43a4:	2031326c 	eorscs	r3, r1, ip, ror #4
    43a8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    43ac:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    43b0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    43b4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    43b8:	745f3233 	ldrbvc	r3, [pc], #-563	; 43c0 <LPC2388_Initialize+0x964>
    43bc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    43c0:	46464678 			; <UNDEFINED> instruction: 0x46464678
    43c4:	35324646 	ldrcc	r4, [r2, #-1606]!	; 0xfffff9ba
    43c8:	00292934 	eoreq	r2, r9, r4, lsr r9
    43cc:	49564f01 	ldmdbmi	r6, {r0, r8, r9, sl, fp, lr}^
    43d0:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    43d4:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    43d8:	2032326c 	eorscs	r3, r2, ip, ror #4
    43dc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    43e0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    43e4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    43e8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    43ec:	745f3233 	ldrbvc	r3, [pc], #-563	; 43f4 <LPC2388_Initialize+0x998>
    43f0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    43f4:	46464678 			; <UNDEFINED> instruction: 0x46464678
    43f8:	35324646 	ldrcc	r4, [r2, #-1606]!	; 0xfffff9ba
    43fc:	00292938 	eoreq	r2, r9, r8, lsr r9
    4400:	49565001 	ldmdbmi	r6, {r0, ip, lr}^
    4404:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    4408:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    440c:	2033326c 	eorscs	r3, r3, ip, ror #4
    4410:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4414:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4418:	20656c69 	rsbcs	r6, r5, r9, ror #24
    441c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4420:	745f3233 	ldrbvc	r3, [pc], #-563	; 4428 <LPC2388_Initialize+0x9cc>
    4424:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4428:	46464678 			; <UNDEFINED> instruction: 0x46464678
    442c:	35324646 	ldrcc	r4, [r2, #-1606]!	; 0xfffff9ba
    4430:	00292943 	eoreq	r2, r9, r3, asr #18
    4434:	49565101 	ldmdbmi	r6, {r0, r8, ip, lr}^
    4438:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    443c:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    4440:	2034326c 	eorscs	r3, r4, ip, ror #4
    4444:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4448:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    444c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4450:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4454:	745f3233 	ldrbvc	r3, [pc], #-563	; 445c <LPC2388_Initialize+0xa00>
    4458:	3028292a 	eorcc	r2, r8, sl, lsr #18
    445c:	46464678 			; <UNDEFINED> instruction: 0x46464678
    4460:	36324646 	ldrtcc	r4, [r2], -r6, asr #12
    4464:	00292930 	eoreq	r2, r9, r0, lsr r9
    4468:	49565201 	ldmdbmi	r6, {r0, r9, ip, lr}^
    446c:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    4470:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    4474:	2035326c 	eorscs	r3, r5, ip, ror #4
    4478:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    447c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4480:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4484:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4488:	745f3233 	ldrbvc	r3, [pc], #-563	; 4490 <LPC2388_Initialize+0xa34>
    448c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4490:	46464678 			; <UNDEFINED> instruction: 0x46464678
    4494:	36324646 	ldrtcc	r4, [r2], -r6, asr #12
    4498:	00292934 	eoreq	r2, r9, r4, lsr r9
    449c:	49565301 	ldmdbmi	r6, {r0, r8, r9, ip, lr}^
    44a0:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    44a4:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    44a8:	2036326c 	eorscs	r3, r6, ip, ror #4
    44ac:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    44b0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    44b4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    44b8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    44bc:	745f3233 	ldrbvc	r3, [pc], #-563	; 44c4 <LPC2388_Initialize+0xa68>
    44c0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    44c4:	46464678 			; <UNDEFINED> instruction: 0x46464678
    44c8:	36324646 	ldrtcc	r4, [r2], -r6, asr #12
    44cc:	00292938 	eoreq	r2, r9, r8, lsr r9
    44d0:	49565401 	ldmdbmi	r6, {r0, sl, ip, lr}^
    44d4:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    44d8:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    44dc:	2037326c 	eorscs	r3, r7, ip, ror #4
    44e0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    44e4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    44e8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    44ec:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    44f0:	745f3233 	ldrbvc	r3, [pc], #-563	; 44f8 <LPC2388_Initialize+0xa9c>
    44f4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    44f8:	46464678 			; <UNDEFINED> instruction: 0x46464678
    44fc:	36324646 	ldrtcc	r4, [r2], -r6, asr #12
    4500:	00292943 	eoreq	r2, r9, r3, asr #18
    4504:	49565501 	ldmdbmi	r6, {r0, r8, sl, ip, lr}^
    4508:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    450c:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    4510:	2038326c 	eorscs	r3, r8, ip, ror #4
    4514:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4518:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    451c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4520:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4524:	745f3233 	ldrbvc	r3, [pc], #-563	; 452c <LPC2388_Initialize+0xad0>
    4528:	3028292a 	eorcc	r2, r8, sl, lsr #18
    452c:	46464678 			; <UNDEFINED> instruction: 0x46464678
    4530:	37324646 	ldrcc	r4, [r2, -r6, asr #12]!
    4534:	00292930 	eoreq	r2, r9, r0, lsr r9
    4538:	49565601 	ldmdbmi	r6, {r0, r9, sl, ip, lr}^
    453c:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    4540:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    4544:	2039326c 	eorscs	r3, r9, ip, ror #4
    4548:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    454c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4550:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4554:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4558:	745f3233 	ldrbvc	r3, [pc], #-563	; 4560 <LPC2388_Initialize+0xb04>
    455c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4560:	46464678 			; <UNDEFINED> instruction: 0x46464678
    4564:	37324646 	ldrcc	r4, [r2, -r6, asr #12]!
    4568:	00292934 	eoreq	r2, r9, r4, lsr r9
    456c:	49565701 	ldmdbmi	r6, {r0, r8, r9, sl, ip, lr}^
    4570:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    4574:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    4578:	2030336c 	eorscs	r3, r0, ip, ror #6
    457c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4580:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4584:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4588:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    458c:	745f3233 	ldrbvc	r3, [pc], #-563	; 4594 <LPC2388_Initialize+0xb38>
    4590:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4594:	46464678 			; <UNDEFINED> instruction: 0x46464678
    4598:	37324646 	ldrcc	r4, [r2, -r6, asr #12]!
    459c:	00292938 	eoreq	r2, r9, r8, lsr r9
    45a0:	49565801 	ldmdbmi	r6, {r0, fp, ip, lr}^
    45a4:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    45a8:	746e4374 	strbtvc	r4, [lr], #-884	; 0xfffffc8c
    45ac:	2031336c 	eorscs	r3, r1, ip, ror #6
    45b0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    45b4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    45b8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    45bc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    45c0:	745f3233 	ldrbvc	r3, [pc], #-563	; 45c8 <LPC2388_Initialize+0xb6c>
    45c4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    45c8:	46464678 			; <UNDEFINED> instruction: 0x46464678
    45cc:	37324646 	ldrcc	r4, [r2, -r6, asr #12]!
    45d0:	00292943 	eoreq	r2, r9, r3, asr #18
    45d4:	49565901 	ldmdbmi	r6, {r0, r8, fp, ip, lr}^
    45d8:	63655643 	cmnvs	r5, #70254592	; 0x4300000
    45dc:	64644174 	strbtvs	r4, [r4], #-372	; 0xfffffe8c
    45e0:	2a282072 	bcs	a0c7b0 <__mprec_tinytens+0x9e7f40>
    45e4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 454c <LPC2388_Initialize+0xaf0>
    45e8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    45ec:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    45f0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    45f4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    45f8:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    45fc:	46464646 	strbmi	r4, [r6], -r6, asr #12
    4600:	29303046 	ldmdbcs	r0!, {r1, r2, r6, ip, sp}
    4604:	5b010029 	blpl	446b0 <__mprec_tinytens+0x1fe40>
    4608:	534e4950 	movtpl	r4, #59728	; 0xe950
    460c:	28204c45 	stmdacs	r0!, {r0, r2, r6, sl, fp, lr}
    4610:	6f762820 	svcvs	0x00762820
    4614:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    4618:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    461c:	33746e69 	cmncc	r4, #1680	; 0x690
    4620:	2a745f32 	bcs	1d1c2f0 <__mprec_tinytens+0x1cf7a80>
    4624:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    4628:	32303045 	eorscc	r3, r0, #69	; 0x45
    462c:	30303043 	eorscc	r3, r0, r3, asr #32
    4630:	01002929 	tsteq	r0, r9, lsr #18
    4634:	4e49505c 	mcrmi	0, 2, r5, cr9, cr12, {2}
    4638:	304c4553 	subcc	r4, ip, r3, asr r5
    463c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    4640:	616c6f76 	smcvs	50934	; 0xc6f6
    4644:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    4648:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    464c:	5f323374 	svcpl	0x00323374
    4650:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    4654:	30457830 	subcc	r7, r5, r0, lsr r8
    4658:	30433230 	subcc	r3, r3, r0, lsr r2
    465c:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    4660:	505d0100 	subspl	r0, sp, r0, lsl #2
    4664:	45534e49 	ldrbmi	r4, [r3, #-3657]	; 0xfffff1b7
    4668:	2820314c 	stmdacs	r0!, {r2, r3, r6, r8, ip, sp}
    466c:	6f76282a 	svcvs	0x0076282a
    4670:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    4674:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    4678:	33746e69 	cmncc	r4, #1680	; 0x690
    467c:	2a745f32 	bcs	1d1c34c <__mprec_tinytens+0x1cf7adc>
    4680:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    4684:	32303045 	eorscc	r3, r0, #69	; 0x45
    4688:	34303043 	ldrtcc	r3, [r0], #-67	; 0xffffffbd
    468c:	01002929 	tsteq	r0, r9, lsr #18
    4690:	4e49505e 	mcrmi	0, 2, r5, cr9, cr14, {2}
    4694:	324c4553 	subcc	r4, ip, #348127232	; 0x14c00000
    4698:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    469c:	616c6f76 	smcvs	50934	; 0xc6f6
    46a0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    46a4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    46a8:	5f323374 	svcpl	0x00323374
    46ac:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    46b0:	30457830 	subcc	r7, r5, r0, lsr r8
    46b4:	30433230 	subcc	r3, r3, r0, lsr r2
    46b8:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    46bc:	505f0100 	subspl	r0, pc, r0, lsl #2
    46c0:	45534e49 	ldrbmi	r4, [r3, #-3657]	; 0xfffff1b7
    46c4:	2820334c 	stmdacs	r0!, {r2, r3, r6, r8, r9, ip, sp}
    46c8:	6f76282a 	svcvs	0x0076282a
    46cc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    46d0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    46d4:	33746e69 	cmncc	r4, #1680	; 0x690
    46d8:	2a745f32 	bcs	1d1c3a8 <__mprec_tinytens+0x1cf7b38>
    46dc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    46e0:	32303045 	eorscc	r3, r0, #69	; 0x45
    46e4:	43303043 	teqmi	r0, #67	; 0x43
    46e8:	01002929 	tsteq	r0, r9, lsr #18
    46ec:	4e495060 	cdpmi	0, 4, cr5, cr9, cr0, {3}
    46f0:	344c4553 	strbcc	r4, [ip], #-1363	; 0xfffffaad
    46f4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    46f8:	616c6f76 	smcvs	50934	; 0xc6f6
    46fc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    4700:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    4704:	5f323374 	svcpl	0x00323374
    4708:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    470c:	30457830 	subcc	r7, r5, r0, lsr r8
    4710:	30433230 	subcc	r3, r3, r0, lsr r2
    4714:	29293031 	stmdbcs	r9!, {r0, r4, r5, ip, sp}
    4718:	50610100 	rsbpl	r0, r1, r0, lsl #2
    471c:	45534e49 	ldrbmi	r4, [r3, #-3657]	; 0xfffff1b7
    4720:	2820354c 	stmdacs	r0!, {r2, r3, r6, r8, sl, ip, sp}
    4724:	6f76282a 	svcvs	0x0076282a
    4728:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    472c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    4730:	33746e69 	cmncc	r4, #1680	; 0x690
    4734:	2a745f32 	bcs	1d1c404 <__mprec_tinytens+0x1cf7b94>
    4738:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    473c:	32303045 	eorscc	r3, r0, #69	; 0x45
    4740:	34313043 	ldrtcc	r3, [r1], #-67	; 0xffffffbd
    4744:	01002929 	tsteq	r0, r9, lsr #18
    4748:	4e495062 	cdpmi	0, 4, cr5, cr9, cr2, {3}
    474c:	364c4553 			; <UNDEFINED> instruction: 0x364c4553
    4750:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    4754:	616c6f76 	smcvs	50934	; 0xc6f6
    4758:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    475c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    4760:	5f323374 	svcpl	0x00323374
    4764:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    4768:	30457830 	subcc	r7, r5, r0, lsr r8
    476c:	30433230 	subcc	r3, r3, r0, lsr r2
    4770:	29293831 	stmdbcs	r9!, {r0, r4, r5, fp, ip, sp}
    4774:	50630100 	rsbpl	r0, r3, r0, lsl #2
    4778:	45534e49 	ldrbmi	r4, [r3, #-3657]	; 0xfffff1b7
    477c:	2820374c 	stmdacs	r0!, {r2, r3, r6, r8, r9, sl, ip, sp}
    4780:	6f76282a 	svcvs	0x0076282a
    4784:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    4788:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    478c:	33746e69 	cmncc	r4, #1680	; 0x690
    4790:	2a745f32 	bcs	1d1c460 <__mprec_tinytens+0x1cf7bf0>
    4794:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    4798:	32303045 	eorscc	r3, r0, #69	; 0x45
    479c:	43313043 	teqmi	r1, #67	; 0x43
    47a0:	01002929 	tsteq	r0, r9, lsr #18
    47a4:	4e495064 	cdpmi	0, 4, cr5, cr9, cr4, {3}
    47a8:	384c4553 	stmdacc	ip, {r0, r1, r4, r6, r8, sl, lr}^
    47ac:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    47b0:	616c6f76 	smcvs	50934	; 0xc6f6
    47b4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    47b8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    47bc:	5f323374 	svcpl	0x00323374
    47c0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    47c4:	30457830 	subcc	r7, r5, r0, lsr r8
    47c8:	30433230 	subcc	r3, r3, r0, lsr r2
    47cc:	29293032 	stmdbcs	r9!, {r1, r4, r5, ip, sp}
    47d0:	50650100 	rsbpl	r0, r5, r0, lsl #2
    47d4:	45534e49 	ldrbmi	r4, [r3, #-3657]	; 0xfffff1b7
    47d8:	2820394c 	stmdacs	r0!, {r2, r3, r6, r8, fp, ip, sp}
    47dc:	6f76282a 	svcvs	0x0076282a
    47e0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    47e4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    47e8:	33746e69 	cmncc	r4, #1680	; 0x690
    47ec:	2a745f32 	bcs	1d1c4bc <__mprec_tinytens+0x1cf7c4c>
    47f0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    47f4:	32303045 	eorscc	r3, r0, #69	; 0x45
    47f8:	34323043 	ldrtcc	r3, [r2], #-67	; 0xffffffbd
    47fc:	01002929 	tsteq	r0, r9, lsr #18
    4800:	4e495066 	cdpmi	0, 4, cr5, cr9, cr6, {3}
    4804:	314c4553 	cmpcc	ip, r3, asr r5
    4808:	2a282030 	bcs	a0c8d0 <__mprec_tinytens+0x9e8060>
    480c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4774 <LPC2388_Initialize+0xd18>
    4810:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4814:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4818:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    481c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4820:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    4824:	43323030 	teqmi	r2, #48	; 0x30
    4828:	29383230 	ldmdbcs	r8!, {r4, r5, r9, ip, sp}
    482c:	68010029 	stmdavs	r1, {r0, r3, r5}
    4830:	4d4e4950 	vstrmi.16	s9, [lr, #-160]	; 0xffffff60	; <UNPREDICTABLE>
    4834:	2045444f 	subcs	r4, r5, pc, asr #8
    4838:	76282028 	strtvc	r2, [r8], -r8, lsr #32
    483c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4840:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4844:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4848:	745f3233 	ldrbvc	r3, [pc], #-563	; 4850 <LPC2388_Initialize+0xdf4>
    484c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4850:	30304578 	eorscc	r4, r0, r8, ror r5
    4854:	34304332 	ldrtcc	r4, [r0], #-818	; 0xfffffcce
    4858:	00292930 	eoreq	r2, r9, r0, lsr r9
    485c:	49506901 	ldmdbmi	r0, {r0, r8, fp, sp, lr}^
    4860:	444f4d4e 	strbmi	r4, [pc], #-3406	; 4868 <LPC2388_Initialize+0xe0c>
    4864:	28203045 	stmdacs	r0!, {r0, r2, r6, ip, sp}
    4868:	6f76282a 	svcvs	0x0076282a
    486c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    4870:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    4874:	33746e69 	cmncc	r4, #1680	; 0x690
    4878:	2a745f32 	bcs	1d1c548 <__mprec_tinytens+0x1cf7cd8>
    487c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    4880:	32303045 	eorscc	r3, r0, #69	; 0x45
    4884:	30343043 	eorscc	r3, r4, r3, asr #32
    4888:	01002929 	tsteq	r0, r9, lsr #18
    488c:	4e49506a 	cdpmi	0, 4, cr5, cr9, cr10, {3}
    4890:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    4894:	2a282031 	bcs	a0c960 <__mprec_tinytens+0x9e80f0>
    4898:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4800 <LPC2388_Initialize+0xda4>
    489c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    48a0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    48a4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    48a8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    48ac:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    48b0:	43323030 	teqmi	r2, #48	; 0x30
    48b4:	29343430 	ldmdbcs	r4!, {r4, r5, sl, ip, sp}
    48b8:	6b010029 	blvs	44964 <__mprec_tinytens+0x200f4>
    48bc:	4d4e4950 	vstrmi.16	s9, [lr, #-160]	; 0xffffff60	; <UNPREDICTABLE>
    48c0:	3245444f 	subcc	r4, r5, #1325400064	; 0x4f000000
    48c4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    48c8:	616c6f76 	smcvs	50934	; 0xc6f6
    48cc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    48d0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    48d4:	5f323374 	svcpl	0x00323374
    48d8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    48dc:	30457830 	subcc	r7, r5, r0, lsr r8
    48e0:	30433230 	subcc	r3, r3, r0, lsr r2
    48e4:	29293834 	stmdbcs	r9!, {r2, r4, r5, fp, ip, sp}
    48e8:	506c0100 	rsbpl	r0, ip, r0, lsl #2
    48ec:	4f4d4e49 	svcmi	0x004d4e49
    48f0:	20334544 	eorscs	r4, r3, r4, asr #10
    48f4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    48f8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    48fc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4900:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4904:	745f3233 	ldrbvc	r3, [pc], #-563	; 490c <LPC2388_Initialize+0xeb0>
    4908:	3028292a 	eorcc	r2, r8, sl, lsr #18
    490c:	30304578 	eorscc	r4, r0, r8, ror r5
    4910:	34304332 	ldrtcc	r4, [r0], #-818	; 0xfffffcce
    4914:	00292943 	eoreq	r2, r9, r3, asr #18
    4918:	49506d01 	ldmdbmi	r0, {r0, r8, sl, fp, sp, lr}^
    491c:	444f4d4e 	strbmi	r4, [pc], #-3406	; 4924 <LPC2388_Initialize+0xec8>
    4920:	28203445 	stmdacs	r0!, {r0, r2, r6, sl, ip, sp}
    4924:	6f76282a 	svcvs	0x0076282a
    4928:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    492c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    4930:	33746e69 	cmncc	r4, #1680	; 0x690
    4934:	2a745f32 	bcs	1d1c604 <__mprec_tinytens+0x1cf7d94>
    4938:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    493c:	32303045 	eorscc	r3, r0, #69	; 0x45
    4940:	30353043 	eorscc	r3, r5, r3, asr #32
    4944:	01002929 	tsteq	r0, r9, lsr #18
    4948:	4e49506e 	cdpmi	0, 4, cr5, cr9, cr14, {3}
    494c:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    4950:	2a282035 	bcs	a0ca2c <__mprec_tinytens+0x9e81bc>
    4954:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 48bc <LPC2388_Initialize+0xe60>
    4958:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    495c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4960:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    4964:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4968:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    496c:	43323030 	teqmi	r2, #48	; 0x30
    4970:	29343530 	ldmdbcs	r4!, {r4, r5, r8, sl, ip, sp}
    4974:	6f010029 	svcvs	0x00010029
    4978:	4d4e4950 	vstrmi.16	s9, [lr, #-160]	; 0xffffff60	; <UNPREDICTABLE>
    497c:	3645444f 	strbcc	r4, [r5], -pc, asr #8
    4980:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    4984:	616c6f76 	smcvs	50934	; 0xc6f6
    4988:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    498c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    4990:	5f323374 	svcpl	0x00323374
    4994:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    4998:	30457830 	subcc	r7, r5, r0, lsr r8
    499c:	30433230 	subcc	r3, r3, r0, lsr r2
    49a0:	29293835 	stmdbcs	r9!, {r0, r2, r4, r5, fp, ip, sp}
    49a4:	50700100 	rsbspl	r0, r0, r0, lsl #2
    49a8:	4f4d4e49 	svcmi	0x004d4e49
    49ac:	20374544 	eorscs	r4, r7, r4, asr #10
    49b0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    49b4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    49b8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    49bc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    49c0:	745f3233 	ldrbvc	r3, [pc], #-563	; 49c8 <LPC2388_Initialize+0xf6c>
    49c4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    49c8:	30304578 	eorscc	r4, r0, r8, ror r5
    49cc:	35304332 	ldrcc	r4, [r0, #-818]!	; 0xfffffcce
    49d0:	00292943 	eoreq	r2, r9, r3, asr #18
    49d4:	49507101 	ldmdbmi	r0, {r0, r8, ip, sp, lr}^
    49d8:	444f4d4e 	strbmi	r4, [pc], #-3406	; 49e0 <LPC2388_Initialize+0xf84>
    49dc:	28203845 	stmdacs	r0!, {r0, r2, r6, fp, ip, sp}
    49e0:	6f76282a 	svcvs	0x0076282a
    49e4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    49e8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    49ec:	33746e69 	cmncc	r4, #1680	; 0x690
    49f0:	2a745f32 	bcs	1d1c6c0 <__mprec_tinytens+0x1cf7e50>
    49f4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    49f8:	32303045 	eorscc	r3, r0, #69	; 0x45
    49fc:	30363043 	eorscc	r3, r6, r3, asr #32
    4a00:	01002929 	tsteq	r0, r9, lsr #18
    4a04:	4e495072 	mcrmi	0, 2, r5, cr9, cr2, {3}
    4a08:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    4a0c:	2a282039 	bcs	a0caf8 <__mprec_tinytens+0x9e8288>
    4a10:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4978 <LPC2388_Initialize+0xf1c>
    4a14:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4a18:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4a1c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    4a20:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4a24:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    4a28:	43323030 	teqmi	r2, #48	; 0x30
    4a2c:	29343630 	ldmdbcs	r4!, {r4, r5, r9, sl, ip, sp}
    4a30:	74010029 	strvc	r0, [r1], #-41	; 0xffffffd7
    4a34:	49504f49 	ldmdbmi	r0, {r0, r3, r6, r8, r9, sl, fp, lr}^
    4a38:	2820304e 	stmdacs	r0!, {r1, r2, r3, r6, ip, sp}
    4a3c:	6f76282a 	svcvs	0x0076282a
    4a40:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    4a44:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    4a48:	33746e69 	cmncc	r4, #1680	; 0x690
    4a4c:	2a745f32 	bcs	1d1c71c <__mprec_tinytens+0x1cf7eac>
    4a50:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    4a54:	32303045 	eorscc	r3, r0, #69	; 0x45
    4a58:	30303038 	eorscc	r3, r0, r8, lsr r0
    4a5c:	01002929 	tsteq	r0, r9, lsr #18
    4a60:	534f4975 	movtpl	r4, #63861	; 0xf975
    4a64:	20305445 	eorscs	r5, r0, r5, asr #8
    4a68:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4a6c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4a70:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4a74:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4a78:	745f3233 	ldrbvc	r3, [pc], #-563	; 4a80 <LPC2388_Initialize+0x1024>
    4a7c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4a80:	30304578 	eorscc	r4, r0, r8, ror r5
    4a84:	30303832 	eorscc	r3, r0, r2, lsr r8
    4a88:	00292934 	eoreq	r2, r9, r4, lsr r9
    4a8c:	4f497601 	svcmi	0x00497601
    4a90:	30524944 	subscc	r4, r2, r4, asr #18
    4a94:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    4a98:	616c6f76 	smcvs	50934	; 0xc6f6
    4a9c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    4aa0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    4aa4:	5f323374 	svcpl	0x00323374
    4aa8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    4aac:	30457830 	subcc	r7, r5, r0, lsr r8
    4ab0:	30383230 	eorscc	r3, r8, r0, lsr r2
    4ab4:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    4ab8:	49770100 	ldmdbmi	r7!, {r8}^
    4abc:	524c434f 	subpl	r4, ip, #1006632961	; 0x3c000001
    4ac0:	2a282030 	bcs	a0cb88 <__mprec_tinytens+0x9e8318>
    4ac4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4a2c <LPC2388_Initialize+0xfd0>
    4ac8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4acc:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4ad0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    4ad4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4ad8:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    4adc:	38323030 	ldmdacc	r2!, {r4, r5, ip, sp}
    4ae0:	29433030 	stmdbcs	r3, {r4, r5, ip, sp}^
    4ae4:	78010029 	stmdavc	r1, {r0, r3, r5}
    4ae8:	49504f49 	ldmdbmi	r0, {r0, r3, r6, r8, r9, sl, fp, lr}^
    4aec:	2820314e 	stmdacs	r0!, {r1, r2, r3, r6, r8, ip, sp}
    4af0:	6f76282a 	svcvs	0x0076282a
    4af4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    4af8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    4afc:	33746e69 	cmncc	r4, #1680	; 0x690
    4b00:	2a745f32 	bcs	1d1c7d0 <__mprec_tinytens+0x1cf7f60>
    4b04:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    4b08:	32303045 	eorscc	r3, r0, #69	; 0x45
    4b0c:	30313038 	eorscc	r3, r1, r8, lsr r0
    4b10:	01002929 	tsteq	r0, r9, lsr #18
    4b14:	534f4979 	movtpl	r4, #63865	; 0xf979
    4b18:	20315445 	eorscs	r5, r1, r5, asr #8
    4b1c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4b20:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4b24:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4b28:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4b2c:	745f3233 	ldrbvc	r3, [pc], #-563	; 4b34 <LPC2388_Initialize+0x10d8>
    4b30:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4b34:	30304578 	eorscc	r4, r0, r8, ror r5
    4b38:	31303832 	teqcc	r0, r2, lsr r8
    4b3c:	00292934 	eoreq	r2, r9, r4, lsr r9
    4b40:	4f497a01 	svcmi	0x00497a01
    4b44:	31524944 	cmpcc	r2, r4, asr #18
    4b48:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    4b4c:	616c6f76 	smcvs	50934	; 0xc6f6
    4b50:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    4b54:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    4b58:	5f323374 	svcpl	0x00323374
    4b5c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    4b60:	30457830 	subcc	r7, r5, r0, lsr r8
    4b64:	30383230 	eorscc	r3, r8, r0, lsr r2
    4b68:	29293831 	stmdbcs	r9!, {r0, r4, r5, fp, ip, sp}
    4b6c:	497b0100 	ldmdbmi	fp!, {r8}^
    4b70:	524c434f 	subpl	r4, ip, #1006632961	; 0x3c000001
    4b74:	2a282031 	bcs	a0cc40 <__mprec_tinytens+0x9e83d0>
    4b78:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4ae0 <LPC2388_Initialize+0x1084>
    4b7c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4b80:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4b84:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    4b88:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4b8c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    4b90:	38323030 	ldmdacc	r2!, {r4, r5, ip, sp}
    4b94:	29433130 	stmdbcs	r3, {r4, r5, r8, ip, sp}^
    4b98:	7d010029 	stcvc	0, cr0, [r1, #-164]	; 0xffffff5c
    4b9c:	5f304f49 	svcpl	0x00304f49
    4ba0:	5f544e49 	svcpl	0x00544e49
    4ba4:	525f4e45 	subspl	r4, pc, #1104	; 0x450
    4ba8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    4bac:	616c6f76 	smcvs	50934	; 0xc6f6
    4bb0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    4bb4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    4bb8:	5f323374 	svcpl	0x00323374
    4bbc:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    4bc0:	30457830 	subcc	r7, r5, r0, lsr r8
    4bc4:	30383230 	eorscc	r3, r8, r0, lsr r2
    4bc8:	29293039 	stmdbcs	r9!, {r0, r3, r4, r5, ip, sp}
    4bcc:	497e0100 	ldmdbmi	lr!, {r8}^
    4bd0:	495f304f 	ldmdbmi	pc, {r0, r1, r2, r3, r6, ip, sp}^	; <UNPREDICTABLE>
    4bd4:	455f544e 	ldrbmi	r5, [pc, #-1102]	; 478e <LPC2388_Initialize+0xd32>
    4bd8:	20465f4e 	subcs	r5, r6, lr, asr #30
    4bdc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4be0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4be4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4be8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4bec:	745f3233 	ldrbvc	r3, [pc], #-563	; 4bf4 <LPC2388_Initialize+0x1198>
    4bf0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4bf4:	30304578 	eorscc	r4, r0, r8, ror r5
    4bf8:	39303832 	ldmdbcc	r0!, {r1, r4, r5, fp, ip, sp}
    4bfc:	00292934 	eoreq	r2, r9, r4, lsr r9
    4c00:	4f497f01 	svcmi	0x00497f01
    4c04:	4e495f30 	mcrmi	15, 2, r5, cr9, cr0, {1}
    4c08:	54535f54 	ldrbpl	r5, [r3], #-3924	; 0xfffff0ac
    4c0c:	525f5441 	subspl	r5, pc, #1090519040	; 0x41000000
    4c10:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    4c14:	616c6f76 	smcvs	50934	; 0xc6f6
    4c18:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    4c1c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    4c20:	5f323374 	svcpl	0x00323374
    4c24:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    4c28:	30457830 	subcc	r7, r5, r0, lsr r8
    4c2c:	30383230 	eorscc	r3, r8, r0, lsr r2
    4c30:	29293438 	stmdbcs	r9!, {r3, r4, r5, sl, ip, sp}
    4c34:	01800100 	orreq	r0, r0, r0, lsl #2
    4c38:	5f304f49 	svcpl	0x00304f49
    4c3c:	5f544e49 	svcpl	0x00544e49
    4c40:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    4c44:	2820465f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r9, sl, lr}
    4c48:	6f76282a 	svcvs	0x0076282a
    4c4c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    4c50:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    4c54:	33746e69 	cmncc	r4, #1680	; 0x690
    4c58:	2a745f32 	bcs	1d1c928 <__mprec_tinytens+0x1cf80b8>
    4c5c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    4c60:	32303045 	eorscc	r3, r0, #69	; 0x45
    4c64:	38383038 	ldmdacc	r8!, {r3, r4, r5, ip, sp}
    4c68:	01002929 	tsteq	r0, r9, lsr #18
    4c6c:	4f490181 	svcmi	0x00490181
    4c70:	4e495f30 	mcrmi	15, 2, r5, cr9, cr0, {1}
    4c74:	4c435f54 	mcrrmi	15, 5, r5, r3, cr4
    4c78:	2a282052 	bcs	a0cdc8 <__mprec_tinytens+0x9e8558>
    4c7c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4be4 <LPC2388_Initialize+0x1188>
    4c80:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4c84:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4c88:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    4c8c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4c90:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    4c94:	38323030 	ldmdacc	r2!, {r4, r5, ip, sp}
    4c98:	29433830 	stmdbcs	r3, {r4, r5, fp, ip, sp}^
    4c9c:	82010029 	andhi	r0, r1, #41	; 0x29
    4ca0:	324f4901 	subcc	r4, pc, #16384	; 0x4000
    4ca4:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    4ca8:	5f4e455f 	svcpl	0x004e455f
    4cac:	2a282052 	bcs	a0cdfc <__mprec_tinytens+0x9e858c>
    4cb0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4c18 <LPC2388_Initialize+0x11bc>
    4cb4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4cb8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4cbc:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    4cc0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4cc4:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    4cc8:	38323030 	ldmdacc	r2!, {r4, r5, ip, sp}
    4ccc:	29304230 	ldmdbcs	r0!, {r4, r5, r9, lr}
    4cd0:	83010029 	movwhi	r0, #4137	; 0x1029
    4cd4:	324f4901 	subcc	r4, pc, #16384	; 0x4000
    4cd8:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    4cdc:	5f4e455f 	svcpl	0x004e455f
    4ce0:	2a282046 	bcs	a0ce00 <__mprec_tinytens+0x9e8590>
    4ce4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4c4c <LPC2388_Initialize+0x11f0>
    4ce8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4cec:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4cf0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    4cf4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4cf8:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    4cfc:	38323030 	ldmdacc	r2!, {r4, r5, ip, sp}
    4d00:	29344230 	ldmdbcs	r4!, {r4, r5, r9, lr}
    4d04:	84010029 	strhi	r0, [r1], #-41	; 0xffffffd7
    4d08:	324f4901 	subcc	r4, pc, #16384	; 0x4000
    4d0c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    4d10:	4154535f 	cmpmi	r4, pc, asr r3
    4d14:	20525f54 	subscs	r5, r2, r4, asr pc
    4d18:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4d1c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4d20:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4d24:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4d28:	745f3233 	ldrbvc	r3, [pc], #-563	; 4d30 <LPC2388_Initialize+0x12d4>
    4d2c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4d30:	30304578 	eorscc	r4, r0, r8, ror r5
    4d34:	41303832 	teqmi	r0, r2, lsr r8
    4d38:	00292934 	eoreq	r2, r9, r4, lsr r9
    4d3c:	49018501 	stmdbmi	r1, {r0, r8, sl, pc}
    4d40:	495f324f 	ldmdbmi	pc, {r0, r1, r2, r3, r6, r9, ip, sp}^	; <UNPREDICTABLE>
    4d44:	535f544e 	cmppl	pc, #1308622848	; 0x4e000000
    4d48:	5f544154 	svcpl	0x00544154
    4d4c:	2a282046 	bcs	a0ce6c <__mprec_tinytens+0x9e85fc>
    4d50:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4cb8 <LPC2388_Initialize+0x125c>
    4d54:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4d58:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4d5c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    4d60:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4d64:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    4d68:	38323030 	ldmdacc	r2!, {r4, r5, ip, sp}
    4d6c:	29384130 	ldmdbcs	r8!, {r4, r5, r8, lr}
    4d70:	86010029 	strhi	r0, [r1], -r9, lsr #32
    4d74:	324f4901 	subcc	r4, pc, #16384	; 0x4000
    4d78:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    4d7c:	524c435f 	subpl	r4, ip, #2080374785	; 0x7c000001
    4d80:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    4d84:	616c6f76 	smcvs	50934	; 0xc6f6
    4d88:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    4d8c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    4d90:	5f323374 	svcpl	0x00323374
    4d94:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    4d98:	30457830 	subcc	r7, r5, r0, lsr r8
    4d9c:	30383230 	eorscc	r3, r8, r0, lsr r2
    4da0:	29294341 	stmdbcs	r9!, {r0, r6, r8, r9, lr}
    4da4:	01870100 	orreq	r0, r7, r0, lsl #2
    4da8:	495f4f49 	ldmdbmi	pc, {r0, r3, r6, r8, r9, sl, fp, lr}^	; <UNPREDICTABLE>
    4dac:	535f544e 	cmppl	pc, #1308622848	; 0x4e000000
    4db0:	20544154 	subscs	r4, r4, r4, asr r1
    4db4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4db8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4dbc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4dc0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4dc4:	745f3233 	ldrbvc	r3, [pc], #-563	; 4dcc <LPC2388_Initialize+0x1370>
    4dc8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4dcc:	30304578 	eorscc	r4, r0, r8, ror r5
    4dd0:	38303832 	ldmdacc	r0!, {r1, r4, r5, fp, ip, sp}
    4dd4:	00292930 	eoreq	r2, r9, r0, lsr r9
    4dd8:	50018901 	andpl	r8, r1, r1, lsl #18
    4ddc:	43545241 	cmpmi	r4, #268435460	; 0x10000004
    4de0:	28204746 	stmdacs	r0!, {r1, r2, r6, r8, r9, sl, lr}
    4de4:	6f76282a 	svcvs	0x0076282a
    4de8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    4dec:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    4df0:	33746e69 	cmncc	r4, #1680	; 0x690
    4df4:	2a745f32 	bcs	1d1cac4 <__mprec_tinytens+0x1cf8254>
    4df8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    4dfc:	46464633 			; <UNDEFINED> instruction: 0x46464633
    4e00:	30303038 	eorscc	r3, r0, r8, lsr r0
    4e04:	01002929 	tsteq	r0, r9, lsr #18
    4e08:	4946018b 	stmdbmi	r6, {r0, r1, r3, r7, r8}^
    4e0c:	4944304f 	stmdbmi	r4, {r0, r1, r2, r3, r6, ip, sp}^
    4e10:	2a282052 	bcs	a0cf60 <__mprec_tinytens+0x9e86f0>
    4e14:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4d7c <LPC2388_Initialize+0x1320>
    4e18:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4e1c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4e20:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    4e24:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4e28:	33783028 	cmncc	r8, #40	; 0x28
    4e2c:	43464646 	movtmi	r4, #26182	; 0x6646
    4e30:	29303030 	ldmdbcs	r0!, {r4, r5, ip, sp}
    4e34:	8c010029 	stchi	0, cr0, [r1], {41}	; 0x29
    4e38:	4f494601 	svcmi	0x00494601
    4e3c:	52494430 	subpl	r4, r9, #48, 8	; 0x30000000
    4e40:	2a28204c 	bcs	a0cf78 <__mprec_tinytens+0x9e8708>
    4e44:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4dac <LPC2388_Initialize+0x1350>
    4e48:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4e4c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4e50:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    4e54:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4e58:	33783028 	cmncc	r8, #40	; 0x28
    4e5c:	43464646 	movtmi	r4, #26182	; 0x6646
    4e60:	29303030 	ldmdbcs	r0!, {r4, r5, ip, sp}
    4e64:	8d010029 	stchi	0, cr0, [r1, #-164]	; 0xffffff5c
    4e68:	4f494601 	svcmi	0x00494601
    4e6c:	52494430 	subpl	r4, r9, #48, 8	; 0x30000000
    4e70:	2a282055 	bcs	a0cfcc <__mprec_tinytens+0x9e875c>
    4e74:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4ddc <LPC2388_Initialize+0x1380>
    4e78:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4e7c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4e80:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    4e84:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4e88:	33783028 	cmncc	r8, #40	; 0x28
    4e8c:	43464646 	movtmi	r4, #26182	; 0x6646
    4e90:	29323030 	ldmdbcs	r2!, {r4, r5, ip, sp}
    4e94:	8e010029 	cdphi	0, 0, cr0, cr1, cr9, {1}
    4e98:	4f494601 	svcmi	0x00494601
    4e9c:	52494430 	subpl	r4, r9, #48, 8	; 0x30000000
    4ea0:	2a282030 	bcs	a0cf68 <__mprec_tinytens+0x9e86f8>
    4ea4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4e0c <LPC2388_Initialize+0x13b0>
    4ea8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4eac:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4eb0:	5f38746e 	svcpl	0x0038746e
    4eb4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    4eb8:	46337830 			; <UNDEFINED> instruction: 0x46337830
    4ebc:	30434646 	subcc	r4, r3, r6, asr #12
    4ec0:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    4ec4:	018f0100 	orreq	r0, pc, r0, lsl #2
    4ec8:	304f4946 	subcc	r4, pc, r6, asr #18
    4ecc:	31524944 	cmpcc	r2, r4, asr #18
    4ed0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    4ed4:	616c6f76 	smcvs	50934	; 0xc6f6
    4ed8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    4edc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    4ee0:	745f3874 	ldrbvc	r3, [pc], #-2164	; 4ee8 <LPC2388_Initialize+0x148c>
    4ee4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4ee8:	46463378 			; <UNDEFINED> instruction: 0x46463378
    4eec:	30304346 	eorscc	r4, r0, r6, asr #6
    4ef0:	00292931 	eoreq	r2, r9, r1, lsr r9
    4ef4:	46019001 	strmi	r9, [r1], -r1
    4ef8:	44304f49 	ldrtmi	r4, [r0], #-3913	; 0xfffff0b7
    4efc:	20325249 	eorscs	r5, r2, r9, asr #4
    4f00:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4f04:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4f08:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4f0c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4f10:	2a745f38 	bcs	1d1cbf8 <__mprec_tinytens+0x1cf8388>
    4f14:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    4f18:	46464633 			; <UNDEFINED> instruction: 0x46464633
    4f1c:	32303043 	eorscc	r3, r0, #67	; 0x43
    4f20:	01002929 	tsteq	r0, r9, lsr #18
    4f24:	49460191 	stmdbmi	r6, {r0, r4, r7, r8}^
    4f28:	4944304f 	stmdbmi	r4, {r0, r1, r2, r3, r6, ip, sp}^
    4f2c:	28203352 	stmdacs	r0!, {r1, r4, r6, r8, r9, ip, sp}
    4f30:	6f76282a 	svcvs	0x0076282a
    4f34:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    4f38:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    4f3c:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    4f40:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4f44:	33783028 	cmncc	r8, #40	; 0x28
    4f48:	43464646 	movtmi	r4, #26182	; 0x6646
    4f4c:	29333030 	ldmdbcs	r3!, {r4, r5, ip, sp}
    4f50:	93010029 	movwls	r0, #4137	; 0x1029
    4f54:	4f494601 	svcmi	0x00494601
    4f58:	53414d30 	movtpl	r4, #7472	; 0x1d30
    4f5c:	2a28204b 	bcs	a0d090 <__mprec_tinytens+0x9e8820>
    4f60:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 4ec8 <LPC2388_Initialize+0x146c>
    4f64:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4f68:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    4f6c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    4f70:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    4f74:	33783028 	cmncc	r8, #40	; 0x28
    4f78:	43464646 	movtmi	r4, #26182	; 0x6646
    4f7c:	29303130 	ldmdbcs	r0!, {r4, r5, r8, ip, sp}
    4f80:	94010029 	strls	r0, [r1], #-41	; 0xffffffd7
    4f84:	4f494601 	svcmi	0x00494601
    4f88:	53414d30 	movtpl	r4, #7472	; 0x1d30
    4f8c:	28204c4b 	stmdacs	r0!, {r0, r1, r3, r6, sl, fp, lr}
    4f90:	6f76282a 	svcvs	0x0076282a
    4f94:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    4f98:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    4f9c:	31746e69 	cmncc	r4, r9, ror #28
    4fa0:	2a745f36 	bcs	1d1cc80 <__mprec_tinytens+0x1cf8410>
    4fa4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    4fa8:	46464633 			; <UNDEFINED> instruction: 0x46464633
    4fac:	30313043 	eorscc	r3, r1, r3, asr #32
    4fb0:	01002929 	tsteq	r0, r9, lsr #18
    4fb4:	49460195 	stmdbmi	r6, {r0, r2, r4, r7, r8}^
    4fb8:	414d304f 	cmpmi	sp, pc, asr #32
    4fbc:	20554b53 	subscs	r4, r5, r3, asr fp
    4fc0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    4fc4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    4fc8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    4fcc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    4fd0:	745f3631 	ldrbvc	r3, [pc], #-1585	; 4fd8 <LPC2388_Initialize+0x157c>
    4fd4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    4fd8:	46463378 			; <UNDEFINED> instruction: 0x46463378
    4fdc:	31304346 	teqcc	r0, r6, asr #6
    4fe0:	00292932 	eoreq	r2, r9, r2, lsr r9
    4fe4:	46019601 	strmi	r9, [r1], -r1, lsl #12
    4fe8:	4d304f49 	ldcmi	15, cr4, [r0, #-292]!	; 0xfffffedc
    4fec:	304b5341 	subcc	r5, fp, r1, asr #6
    4ff0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    4ff4:	616c6f76 	smcvs	50934	; 0xc6f6
    4ff8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    4ffc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5000:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5008 <LPC2388_Initialize+0x15ac>
    5004:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5008:	46463378 			; <UNDEFINED> instruction: 0x46463378
    500c:	31304346 	teqcc	r0, r6, asr #6
    5010:	00292930 	eoreq	r2, r9, r0, lsr r9
    5014:	46019701 	strmi	r9, [r1], -r1, lsl #14
    5018:	4d304f49 	ldcmi	15, cr4, [r0, #-292]!	; 0xfffffedc
    501c:	314b5341 	cmpcc	fp, r1, asr #6
    5020:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5024:	616c6f76 	smcvs	50934	; 0xc6f6
    5028:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    502c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5030:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5038 <LPC2388_Initialize+0x15dc>
    5034:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5038:	46463378 			; <UNDEFINED> instruction: 0x46463378
    503c:	31304346 	teqcc	r0, r6, asr #6
    5040:	00292931 	eoreq	r2, r9, r1, lsr r9
    5044:	46019801 	strmi	r9, [r1], -r1, lsl #16
    5048:	4d304f49 	ldcmi	15, cr4, [r0, #-292]!	; 0xfffffedc
    504c:	324b5341 	subcc	r5, fp, #67108865	; 0x4000001
    5050:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5054:	616c6f76 	smcvs	50934	; 0xc6f6
    5058:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    505c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5060:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5068 <LPC2388_Initialize+0x160c>
    5064:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5068:	46463378 			; <UNDEFINED> instruction: 0x46463378
    506c:	31304346 	teqcc	r0, r6, asr #6
    5070:	00292932 	eoreq	r2, r9, r2, lsr r9
    5074:	46019901 	strmi	r9, [r1], -r1, lsl #18
    5078:	4d304f49 	ldcmi	15, cr4, [r0, #-292]!	; 0xfffffedc
    507c:	334b5341 	movtcc	r5, #45889	; 0xb341
    5080:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5084:	616c6f76 	smcvs	50934	; 0xc6f6
    5088:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    508c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5090:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5098 <LPC2388_Initialize+0x163c>
    5094:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5098:	46463378 			; <UNDEFINED> instruction: 0x46463378
    509c:	31304346 	teqcc	r0, r6, asr #6
    50a0:	00292933 	eoreq	r2, r9, r3, lsr r9
    50a4:	46019b01 	strmi	r9, [r1], -r1, lsl #22
    50a8:	50304f49 	eorspl	r4, r0, r9, asr #30
    50ac:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    50b0:	6f76282a 	svcvs	0x0076282a
    50b4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    50b8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    50bc:	33746e69 	cmncc	r4, #1680	; 0x690
    50c0:	2a745f32 	bcs	1d1cd90 <__mprec_tinytens+0x1cf8520>
    50c4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    50c8:	46464633 			; <UNDEFINED> instruction: 0x46464633
    50cc:	34313043 	ldrtcc	r3, [r1], #-67	; 0xffffffbd
    50d0:	01002929 	tsteq	r0, r9, lsr #18
    50d4:	4946019c 	stmdbmi	r6, {r2, r3, r4, r7, r8}^
    50d8:	4950304f 	ldmdbmi	r0, {r0, r1, r2, r3, r6, ip, sp}^
    50dc:	28204c4e 	stmdacs	r0!, {r1, r2, r3, r6, sl, fp, lr}
    50e0:	6f76282a 	svcvs	0x0076282a
    50e4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    50e8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    50ec:	31746e69 	cmncc	r4, r9, ror #28
    50f0:	2a745f36 	bcs	1d1cdd0 <__mprec_tinytens+0x1cf8560>
    50f4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    50f8:	46464633 			; <UNDEFINED> instruction: 0x46464633
    50fc:	34313043 	ldrtcc	r3, [r1], #-67	; 0xffffffbd
    5100:	01002929 	tsteq	r0, r9, lsr #18
    5104:	4946019d 	stmdbmi	r6, {r0, r2, r3, r4, r7, r8}^
    5108:	4950304f 	ldmdbmi	r0, {r0, r1, r2, r3, r6, ip, sp}^
    510c:	2820554e 	stmdacs	r0!, {r1, r2, r3, r6, r8, sl, ip, lr}
    5110:	6f76282a 	svcvs	0x0076282a
    5114:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5118:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    511c:	31746e69 	cmncc	r4, r9, ror #28
    5120:	2a745f36 	bcs	1d1ce00 <__mprec_tinytens+0x1cf8590>
    5124:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5128:	46464633 			; <UNDEFINED> instruction: 0x46464633
    512c:	36313043 	ldrtcc	r3, [r1], -r3, asr #32
    5130:	01002929 	tsteq	r0, r9, lsr #18
    5134:	4946019e 	stmdbmi	r6, {r1, r2, r3, r4, r7, r8}^
    5138:	4950304f 	ldmdbmi	r0, {r0, r1, r2, r3, r6, ip, sp}^
    513c:	2820304e 	stmdacs	r0!, {r1, r2, r3, r6, ip, sp}
    5140:	6f76282a 	svcvs	0x0076282a
    5144:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5148:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    514c:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    5150:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5154:	33783028 	cmncc	r8, #40	; 0x28
    5158:	43464646 	movtmi	r4, #26182	; 0x6646
    515c:	29343130 	ldmdbcs	r4!, {r4, r5, r8, ip, sp}
    5160:	9f010029 	svcls	0x00010029
    5164:	4f494601 	svcmi	0x00494601
    5168:	4e495030 	mcrmi	0, 2, r5, cr9, cr0, {1}
    516c:	2a282031 	bcs	a0d238 <__mprec_tinytens+0x9e89c8>
    5170:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 50d8 <LPC2388_Initialize+0x167c>
    5174:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5178:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    517c:	5f38746e 	svcpl	0x0038746e
    5180:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    5184:	46337830 			; <UNDEFINED> instruction: 0x46337830
    5188:	30434646 	subcc	r4, r3, r6, asr #12
    518c:	29293531 	stmdbcs	r9!, {r0, r4, r5, r8, sl, ip, sp}
    5190:	01a00100 	lsleq	r0, r0, #2
    5194:	304f4946 	subcc	r4, pc, r6, asr #18
    5198:	324e4950 	subcc	r4, lr, #80, 18	; 0x140000
    519c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    51a0:	616c6f76 	smcvs	50934	; 0xc6f6
    51a4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    51a8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    51ac:	745f3874 	ldrbvc	r3, [pc], #-2164	; 51b4 <LPC2388_Initialize+0x1758>
    51b0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    51b4:	46463378 			; <UNDEFINED> instruction: 0x46463378
    51b8:	31304346 	teqcc	r0, r6, asr #6
    51bc:	00292936 	eoreq	r2, r9, r6, lsr r9
    51c0:	4601a101 	strmi	sl, [r1], -r1, lsl #2
    51c4:	50304f49 	eorspl	r4, r0, r9, asr #30
    51c8:	20334e49 	eorscs	r4, r3, r9, asr #28
    51cc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    51d0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    51d4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    51d8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    51dc:	2a745f38 	bcs	1d1cec4 <__mprec_tinytens+0x1cf8654>
    51e0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    51e4:	46464633 			; <UNDEFINED> instruction: 0x46464633
    51e8:	37313043 	ldrcc	r3, [r1, -r3, asr #32]!
    51ec:	01002929 	tsteq	r0, r9, lsr #18
    51f0:	494601a3 	stmdbmi	r6, {r0, r1, r5, r7, r8}^
    51f4:	4553304f 	ldrbmi	r3, [r3, #-79]	; 0xffffffb1
    51f8:	2a282054 	bcs	a0d350 <__mprec_tinytens+0x9e8ae0>
    51fc:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 5164 <LPC2388_Initialize+0x1708>
    5200:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5204:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5208:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    520c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5210:	33783028 	cmncc	r8, #40	; 0x28
    5214:	43464646 	movtmi	r4, #26182	; 0x6646
    5218:	29383130 	ldmdbcs	r8!, {r4, r5, r8, ip, sp}
    521c:	a4010029 	strge	r0, [r1], #-41	; 0xffffffd7
    5220:	4f494601 	svcmi	0x00494601
    5224:	54455330 	strbpl	r5, [r5], #-816	; 0xfffffcd0
    5228:	2a28204c 	bcs	a0d360 <__mprec_tinytens+0x9e8af0>
    522c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 5194 <LPC2388_Initialize+0x1738>
    5230:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5234:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5238:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    523c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5240:	33783028 	cmncc	r8, #40	; 0x28
    5244:	43464646 	movtmi	r4, #26182	; 0x6646
    5248:	29383130 	ldmdbcs	r8!, {r4, r5, r8, ip, sp}
    524c:	a5010029 	strge	r0, [r1, #-41]	; 0xffffffd7
    5250:	4f494601 	svcmi	0x00494601
    5254:	54455330 	strbpl	r5, [r5], #-816	; 0xfffffcd0
    5258:	2a282055 	bcs	a0d3b4 <__mprec_tinytens+0x9e8b44>
    525c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 51c4 <LPC2388_Initialize+0x1768>
    5260:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5264:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5268:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    526c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5270:	33783028 	cmncc	r8, #40	; 0x28
    5274:	43464646 	movtmi	r4, #26182	; 0x6646
    5278:	29413130 	stmdbcs	r1, {r4, r5, r8, ip, sp}^
    527c:	a6010029 	strge	r0, [r1], -r9, lsr #32
    5280:	4f494601 	svcmi	0x00494601
    5284:	54455330 	strbpl	r5, [r5], #-816	; 0xfffffcd0
    5288:	2a282030 	bcs	a0d350 <__mprec_tinytens+0x9e8ae0>
    528c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 51f4 <LPC2388_Initialize+0x1798>
    5290:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5294:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5298:	5f38746e 	svcpl	0x0038746e
    529c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    52a0:	46337830 			; <UNDEFINED> instruction: 0x46337830
    52a4:	30434646 	subcc	r4, r3, r6, asr #12
    52a8:	29293831 	stmdbcs	r9!, {r0, r4, r5, fp, ip, sp}
    52ac:	01a70100 			; <UNDEFINED> instruction: 0x01a70100
    52b0:	304f4946 	subcc	r4, pc, r6, asr #18
    52b4:	31544553 	cmpcc	r4, r3, asr r5
    52b8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    52bc:	616c6f76 	smcvs	50934	; 0xc6f6
    52c0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    52c4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    52c8:	745f3874 	ldrbvc	r3, [pc], #-2164	; 52d0 <LPC2388_Initialize+0x1874>
    52cc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    52d0:	46463378 			; <UNDEFINED> instruction: 0x46463378
    52d4:	31304346 	teqcc	r0, r6, asr #6
    52d8:	00292939 	eoreq	r2, r9, r9, lsr r9
    52dc:	4601a801 	strmi	sl, [r1], -r1, lsl #16
    52e0:	53304f49 	teqpl	r0, #292	; 0x124
    52e4:	20325445 	eorscs	r5, r2, r5, asr #8
    52e8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    52ec:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    52f0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    52f4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    52f8:	2a745f38 	bcs	1d1cfe0 <__mprec_tinytens+0x1cf8770>
    52fc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5300:	46464633 			; <UNDEFINED> instruction: 0x46464633
    5304:	41313043 	teqmi	r1, r3, asr #32
    5308:	01002929 	tsteq	r0, r9, lsr #18
    530c:	494601a9 	stmdbmi	r6, {r0, r3, r5, r7, r8}^
    5310:	4553304f 	ldrbmi	r3, [r3, #-79]	; 0xffffffb1
    5314:	28203354 	stmdacs	r0!, {r2, r4, r6, r8, r9, ip, sp}
    5318:	6f76282a 	svcvs	0x0076282a
    531c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5320:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    5324:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    5328:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    532c:	33783028 	cmncc	r8, #40	; 0x28
    5330:	43464646 	movtmi	r4, #26182	; 0x6646
    5334:	29423130 	stmdbcs	r2, {r4, r5, r8, ip, sp}^
    5338:	ab010029 	blge	453e4 <__mprec_tinytens+0x20b74>
    533c:	4f494601 	svcmi	0x00494601
    5340:	524c4330 	subpl	r4, ip, #48, 6	; 0xc0000000
    5344:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5348:	616c6f76 	smcvs	50934	; 0xc6f6
    534c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5350:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5354:	5f323374 	svcpl	0x00323374
    5358:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    535c:	46337830 			; <UNDEFINED> instruction: 0x46337830
    5360:	30434646 	subcc	r4, r3, r6, asr #12
    5364:	29294331 	stmdbcs	r9!, {r0, r4, r5, r8, r9, lr}
    5368:	01ac0100 			; <UNDEFINED> instruction: 0x01ac0100
    536c:	304f4946 	subcc	r4, pc, r6, asr #18
    5370:	4c524c43 	mrrcmi	12, 4, r4, r2, cr3
    5374:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5378:	616c6f76 	smcvs	50934	; 0xc6f6
    537c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5380:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5384:	5f363174 	svcpl	0x00363174
    5388:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    538c:	46337830 			; <UNDEFINED> instruction: 0x46337830
    5390:	30434646 	subcc	r4, r3, r6, asr #12
    5394:	29294331 	stmdbcs	r9!, {r0, r4, r5, r8, r9, lr}
    5398:	01ad0100 			; <UNDEFINED> instruction: 0x01ad0100
    539c:	304f4946 	subcc	r4, pc, r6, asr #18
    53a0:	55524c43 	ldrbpl	r4, [r2, #-3139]	; 0xfffff3bd
    53a4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    53a8:	616c6f76 	smcvs	50934	; 0xc6f6
    53ac:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    53b0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    53b4:	5f363174 	svcpl	0x00363174
    53b8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    53bc:	46337830 			; <UNDEFINED> instruction: 0x46337830
    53c0:	30434646 	subcc	r4, r3, r6, asr #12
    53c4:	29294531 	stmdbcs	r9!, {r0, r4, r5, r8, sl, lr}
    53c8:	01ae0100 			; <UNDEFINED> instruction: 0x01ae0100
    53cc:	304f4946 	subcc	r4, pc, r6, asr #18
    53d0:	30524c43 	subscc	r4, r2, r3, asr #24
    53d4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    53d8:	616c6f76 	smcvs	50934	; 0xc6f6
    53dc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    53e0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    53e4:	745f3874 	ldrbvc	r3, [pc], #-2164	; 53ec <LPC2388_Initialize+0x1990>
    53e8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    53ec:	46463378 			; <UNDEFINED> instruction: 0x46463378
    53f0:	31304346 	teqcc	r0, r6, asr #6
    53f4:	00292943 	eoreq	r2, r9, r3, asr #18
    53f8:	4601af01 	strmi	sl, [r1], -r1, lsl #30
    53fc:	43304f49 	teqmi	r0, #292	; 0x124
    5400:	2031524c 	eorscs	r5, r1, ip, asr #4
    5404:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    5408:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    540c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    5410:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    5414:	2a745f38 	bcs	1d1d0fc <__mprec_tinytens+0x1cf888c>
    5418:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    541c:	46464633 			; <UNDEFINED> instruction: 0x46464633
    5420:	44313043 	ldrtmi	r3, [r1], #-67	; 0xffffffbd
    5424:	01002929 	tsteq	r0, r9, lsr #18
    5428:	494601b0 	stmdbmi	r6, {r4, r5, r7, r8}^
    542c:	4c43304f 	mcrrmi	0, 4, r3, r3, cr15
    5430:	28203252 	stmdacs	r0!, {r1, r4, r6, r9, ip, sp}
    5434:	6f76282a 	svcvs	0x0076282a
    5438:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    543c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    5440:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    5444:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5448:	33783028 	cmncc	r8, #40	; 0x28
    544c:	43464646 	movtmi	r4, #26182	; 0x6646
    5450:	29453130 	stmdbcs	r5, {r4, r5, r8, ip, sp}^
    5454:	b1010029 	tstlt	r1, r9, lsr #32
    5458:	4f494601 	svcmi	0x00494601
    545c:	524c4330 	subpl	r4, ip, #48, 6	; 0xc0000000
    5460:	2a282033 	bcs	a0d534 <__mprec_tinytens+0x9e8cc4>
    5464:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 53cc <LPC2388_Initialize+0x1970>
    5468:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    546c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5470:	5f38746e 	svcpl	0x0038746e
    5474:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    5478:	46337830 			; <UNDEFINED> instruction: 0x46337830
    547c:	30434646 	subcc	r4, r3, r6, asr #12
    5480:	29294631 	stmdbcs	r9!, {r0, r4, r5, r9, sl, lr}
    5484:	01b30100 			; <UNDEFINED> instruction: 0x01b30100
    5488:	314f4946 	cmpcc	pc, r6, asr #18
    548c:	20524944 	subscs	r4, r2, r4, asr #18
    5490:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    5494:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    5498:	20656c69 	rsbcs	r6, r5, r9, ror #24
    549c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    54a0:	745f3233 	ldrbvc	r3, [pc], #-563	; 54a8 <LPC2388_Initialize+0x1a4c>
    54a4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    54a8:	46463378 			; <UNDEFINED> instruction: 0x46463378
    54ac:	32304346 	eorscc	r4, r0, #402653185	; 0x18000001
    54b0:	00292930 	eoreq	r2, r9, r0, lsr r9
    54b4:	4601b401 	strmi	fp, [r1], -r1, lsl #8
    54b8:	44314f49 	ldrtmi	r4, [r1], #-3913	; 0xfffff0b7
    54bc:	204c5249 	subcs	r5, ip, r9, asr #4
    54c0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    54c4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    54c8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    54cc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    54d0:	745f3631 	ldrbvc	r3, [pc], #-1585	; 54d8 <LPC2388_Initialize+0x1a7c>
    54d4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    54d8:	46463378 			; <UNDEFINED> instruction: 0x46463378
    54dc:	32304346 	eorscc	r4, r0, #402653185	; 0x18000001
    54e0:	00292930 	eoreq	r2, r9, r0, lsr r9
    54e4:	4601b501 	strmi	fp, [r1], -r1, lsl #10
    54e8:	44314f49 	ldrtmi	r4, [r1], #-3913	; 0xfffff0b7
    54ec:	20555249 	subscs	r5, r5, r9, asr #4
    54f0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    54f4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    54f8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    54fc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    5500:	745f3631 	ldrbvc	r3, [pc], #-1585	; 5508 <LPC2388_Initialize+0x1aac>
    5504:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5508:	46463378 			; <UNDEFINED> instruction: 0x46463378
    550c:	32304346 	eorscc	r4, r0, #402653185	; 0x18000001
    5510:	00292932 	eoreq	r2, r9, r2, lsr r9
    5514:	4601b601 	strmi	fp, [r1], -r1, lsl #12
    5518:	44314f49 	ldrtmi	r4, [r1], #-3913	; 0xfffff0b7
    551c:	20305249 	eorscs	r5, r0, r9, asr #4
    5520:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    5524:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    5528:	20656c69 	rsbcs	r6, r5, r9, ror #24
    552c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    5530:	2a745f38 	bcs	1d1d218 <__mprec_tinytens+0x1cf89a8>
    5534:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5538:	46464633 			; <UNDEFINED> instruction: 0x46464633
    553c:	30323043 	eorscc	r3, r2, r3, asr #32
    5540:	01002929 	tsteq	r0, r9, lsr #18
    5544:	494601b7 	stmdbmi	r6, {r0, r1, r2, r4, r5, r7, r8}^
    5548:	4944314f 	stmdbmi	r4, {r0, r1, r2, r3, r6, r8, ip, sp}^
    554c:	28203152 	stmdacs	r0!, {r1, r4, r6, r8, ip, sp}
    5550:	6f76282a 	svcvs	0x0076282a
    5554:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5558:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    555c:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    5560:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5564:	33783028 	cmncc	r8, #40	; 0x28
    5568:	43464646 	movtmi	r4, #26182	; 0x6646
    556c:	29313230 	ldmdbcs	r1!, {r4, r5, r9, ip, sp}
    5570:	b8010029 	stmdalt	r1, {r0, r3, r5}
    5574:	4f494601 	svcmi	0x00494601
    5578:	52494431 	subpl	r4, r9, #822083584	; 0x31000000
    557c:	2a282032 	bcs	a0d64c <__mprec_tinytens+0x9e8ddc>
    5580:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 54e8 <LPC2388_Initialize+0x1a8c>
    5584:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5588:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    558c:	5f38746e 	svcpl	0x0038746e
    5590:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    5594:	46337830 			; <UNDEFINED> instruction: 0x46337830
    5598:	30434646 	subcc	r4, r3, r6, asr #12
    559c:	29293232 	stmdbcs	r9!, {r1, r4, r5, r9, ip, sp}
    55a0:	01b90100 			; <UNDEFINED> instruction: 0x01b90100
    55a4:	314f4946 	cmpcc	pc, r6, asr #18
    55a8:	33524944 	cmpcc	r2, #68, 18	; 0x110000
    55ac:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    55b0:	616c6f76 	smcvs	50934	; 0xc6f6
    55b4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    55b8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    55bc:	745f3874 	ldrbvc	r3, [pc], #-2164	; 55c4 <LPC2388_Initialize+0x1b68>
    55c0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    55c4:	46463378 			; <UNDEFINED> instruction: 0x46463378
    55c8:	32304346 	eorscc	r4, r0, #402653185	; 0x18000001
    55cc:	00292933 	eoreq	r2, r9, r3, lsr r9
    55d0:	4601bb01 	strmi	fp, [r1], -r1, lsl #22
    55d4:	4d314f49 	ldcmi	15, cr4, [r1, #-292]!	; 0xfffffedc
    55d8:	204b5341 	subcs	r5, fp, r1, asr #6
    55dc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    55e0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    55e4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    55e8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    55ec:	745f3233 	ldrbvc	r3, [pc], #-563	; 55f4 <LPC2388_Initialize+0x1b98>
    55f0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    55f4:	46463378 			; <UNDEFINED> instruction: 0x46463378
    55f8:	33304346 	teqcc	r0, #402653185	; 0x18000001
    55fc:	00292930 	eoreq	r2, r9, r0, lsr r9
    5600:	4601bc01 	strmi	fp, [r1], -r1, lsl #24
    5604:	4d314f49 	ldcmi	15, cr4, [r1, #-292]!	; 0xfffffedc
    5608:	4c4b5341 	mcrrmi	3, 4, r5, fp, cr1
    560c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5610:	616c6f76 	smcvs	50934	; 0xc6f6
    5614:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5618:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    561c:	5f363174 	svcpl	0x00363174
    5620:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    5624:	46337830 			; <UNDEFINED> instruction: 0x46337830
    5628:	30434646 	subcc	r4, r3, r6, asr #12
    562c:	29293033 	stmdbcs	r9!, {r0, r1, r4, r5, ip, sp}
    5630:	01bd0100 			; <UNDEFINED> instruction: 0x01bd0100
    5634:	314f4946 	cmpcc	pc, r6, asr #18
    5638:	4b53414d 	blmi	14d5b74 <__mprec_tinytens+0x14b1304>
    563c:	2a282055 	bcs	a0d798 <__mprec_tinytens+0x9e8f28>
    5640:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 55a8 <LPC2388_Initialize+0x1b4c>
    5644:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5648:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    564c:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    5650:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5654:	33783028 	cmncc	r8, #40	; 0x28
    5658:	43464646 	movtmi	r4, #26182	; 0x6646
    565c:	29323330 	ldmdbcs	r2!, {r4, r5, r8, r9, ip, sp}
    5660:	be010029 	cdplt	0, 0, cr0, cr1, cr9, {1}
    5664:	4f494601 	svcmi	0x00494601
    5668:	53414d31 	movtpl	r4, #7473	; 0x1d31
    566c:	2820304b 	stmdacs	r0!, {r0, r1, r3, r6, ip, sp}
    5670:	6f76282a 	svcvs	0x0076282a
    5674:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5678:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    567c:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    5680:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5684:	33783028 	cmncc	r8, #40	; 0x28
    5688:	43464646 	movtmi	r4, #26182	; 0x6646
    568c:	29303330 	ldmdbcs	r0!, {r4, r5, r8, r9, ip, sp}
    5690:	bf010029 	svclt	0x00010029
    5694:	4f494601 	svcmi	0x00494601
    5698:	53414d31 	movtpl	r4, #7473	; 0x1d31
    569c:	2820314b 	stmdacs	r0!, {r0, r1, r3, r6, r8, ip, sp}
    56a0:	6f76282a 	svcvs	0x0076282a
    56a4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    56a8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    56ac:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    56b0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    56b4:	33783028 	cmncc	r8, #40	; 0x28
    56b8:	43464646 	movtmi	r4, #26182	; 0x6646
    56bc:	29313230 	ldmdbcs	r1!, {r4, r5, r9, ip, sp}
    56c0:	c0010029 	andgt	r0, r1, r9, lsr #32
    56c4:	4f494601 	svcmi	0x00494601
    56c8:	53414d31 	movtpl	r4, #7473	; 0x1d31
    56cc:	2820324b 	stmdacs	r0!, {r0, r1, r3, r6, r9, ip, sp}
    56d0:	6f76282a 	svcvs	0x0076282a
    56d4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    56d8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    56dc:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    56e0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    56e4:	33783028 	cmncc	r8, #40	; 0x28
    56e8:	43464646 	movtmi	r4, #26182	; 0x6646
    56ec:	29323330 	ldmdbcs	r2!, {r4, r5, r8, r9, ip, sp}
    56f0:	c1010029 	tstgt	r1, r9, lsr #32
    56f4:	4f494601 	svcmi	0x00494601
    56f8:	53414d31 	movtpl	r4, #7473	; 0x1d31
    56fc:	2820334b 	stmdacs	r0!, {r0, r1, r3, r6, r8, r9, ip, sp}
    5700:	6f76282a 	svcvs	0x0076282a
    5704:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5708:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    570c:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    5710:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5714:	33783028 	cmncc	r8, #40	; 0x28
    5718:	43464646 	movtmi	r4, #26182	; 0x6646
    571c:	29333330 	ldmdbcs	r3!, {r4, r5, r8, r9, ip, sp}
    5720:	c3010029 	movwgt	r0, #4137	; 0x1029
    5724:	4f494601 	svcmi	0x00494601
    5728:	4e495031 	mcrmi	0, 2, r5, cr9, cr1, {1}
    572c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5730:	616c6f76 	smcvs	50934	; 0xc6f6
    5734:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5738:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    573c:	5f323374 	svcpl	0x00323374
    5740:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    5744:	46337830 			; <UNDEFINED> instruction: 0x46337830
    5748:	30434646 	subcc	r4, r3, r6, asr #12
    574c:	29293433 	stmdbcs	r9!, {r0, r1, r4, r5, sl, ip, sp}
    5750:	01c40100 	biceq	r0, r4, r0, lsl #2
    5754:	314f4946 	cmpcc	pc, r6, asr #18
    5758:	4c4e4950 	mcrrmi	9, 5, r4, lr, cr0	; <UNPREDICTABLE>
    575c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5760:	616c6f76 	smcvs	50934	; 0xc6f6
    5764:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5768:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    576c:	5f363174 	svcpl	0x00363174
    5770:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    5774:	46337830 			; <UNDEFINED> instruction: 0x46337830
    5778:	30434646 	subcc	r4, r3, r6, asr #12
    577c:	29293433 	stmdbcs	r9!, {r0, r1, r4, r5, sl, ip, sp}
    5780:	01c50100 	biceq	r0, r5, r0, lsl #2
    5784:	314f4946 	cmpcc	pc, r6, asr #18
    5788:	554e4950 	strbpl	r4, [lr, #-2384]	; 0xfffff6b0
    578c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5790:	616c6f76 	smcvs	50934	; 0xc6f6
    5794:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5798:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    579c:	5f363174 	svcpl	0x00363174
    57a0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    57a4:	46337830 			; <UNDEFINED> instruction: 0x46337830
    57a8:	30434646 	subcc	r4, r3, r6, asr #12
    57ac:	29293633 	stmdbcs	r9!, {r0, r1, r4, r5, r9, sl, ip, sp}
    57b0:	01c60100 	biceq	r0, r6, r0, lsl #2
    57b4:	314f4946 	cmpcc	pc, r6, asr #18
    57b8:	304e4950 	subcc	r4, lr, r0, asr r9
    57bc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    57c0:	616c6f76 	smcvs	50934	; 0xc6f6
    57c4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    57c8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    57cc:	745f3874 	ldrbvc	r3, [pc], #-2164	; 57d4 <f_open+0x128>
    57d0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    57d4:	46463378 			; <UNDEFINED> instruction: 0x46463378
    57d8:	33304346 	teqcc	r0, #402653185	; 0x18000001
    57dc:	00292934 	eoreq	r2, r9, r4, lsr r9
    57e0:	4601c701 	strmi	ip, [r1], -r1, lsl #14
    57e4:	50314f49 	eorspl	r4, r1, r9, asr #30
    57e8:	20314e49 	eorscs	r4, r1, r9, asr #28
    57ec:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    57f0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    57f4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    57f8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    57fc:	2a745f38 	bcs	1d1d4e4 <__mprec_tinytens+0x1cf8c74>
    5800:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5804:	46464633 			; <UNDEFINED> instruction: 0x46464633
    5808:	35323043 	ldrcc	r3, [r2, #-67]!	; 0xffffffbd
    580c:	01002929 	tsteq	r0, r9, lsr #18
    5810:	494601c8 	stmdbmi	r6, {r3, r6, r7, r8}^
    5814:	4950314f 	ldmdbmi	r0, {r0, r1, r2, r3, r6, r8, ip, sp}^
    5818:	2820324e 	stmdacs	r0!, {r1, r2, r3, r6, r9, ip, sp}
    581c:	6f76282a 	svcvs	0x0076282a
    5820:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5824:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    5828:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    582c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5830:	33783028 	cmncc	r8, #40	; 0x28
    5834:	43464646 	movtmi	r4, #26182	; 0x6646
    5838:	29363330 	ldmdbcs	r6!, {r4, r5, r8, r9, ip, sp}
    583c:	c9010029 	stmdbgt	r1, {r0, r3, r5}
    5840:	4f494601 	svcmi	0x00494601
    5844:	4e495031 	mcrmi	0, 2, r5, cr9, cr1, {1}
    5848:	2a282033 	bcs	a0d91c <__mprec_tinytens+0x9e90ac>
    584c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 57b4 <f_open+0x108>
    5850:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5854:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5858:	5f38746e 	svcpl	0x0038746e
    585c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    5860:	46337830 			; <UNDEFINED> instruction: 0x46337830
    5864:	30434646 	subcc	r4, r3, r6, asr #12
    5868:	29293733 	stmdbcs	r9!, {r0, r1, r4, r5, r8, r9, sl, ip, sp}
    586c:	01cb0100 	biceq	r0, fp, r0, lsl #2
    5870:	314f4946 	cmpcc	pc, r6, asr #18
    5874:	20544553 	subscs	r4, r4, r3, asr r5
    5878:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    587c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    5880:	20656c69 	rsbcs	r6, r5, r9, ror #24
    5884:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    5888:	745f3233 	ldrbvc	r3, [pc], #-563	; 5890 <f_open+0x1e4>
    588c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5890:	46463378 			; <UNDEFINED> instruction: 0x46463378
    5894:	33304346 	teqcc	r0, #402653185	; 0x18000001
    5898:	00292938 	eoreq	r2, r9, r8, lsr r9
    589c:	4601cc01 	strmi	ip, [r1], -r1, lsl #24
    58a0:	53314f49 	teqpl	r1, #292	; 0x124
    58a4:	204c5445 	subcs	r5, ip, r5, asr #8
    58a8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    58ac:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    58b0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    58b4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    58b8:	745f3631 	ldrbvc	r3, [pc], #-1585	; 58c0 <f_open+0x214>
    58bc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    58c0:	46463378 			; <UNDEFINED> instruction: 0x46463378
    58c4:	33304346 	teqcc	r0, #402653185	; 0x18000001
    58c8:	00292938 	eoreq	r2, r9, r8, lsr r9
    58cc:	4601cd01 	strmi	ip, [r1], -r1, lsl #26
    58d0:	53314f49 	teqpl	r1, #292	; 0x124
    58d4:	20555445 	subscs	r5, r5, r5, asr #8
    58d8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    58dc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    58e0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    58e4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    58e8:	745f3631 	ldrbvc	r3, [pc], #-1585	; 58f0 <f_open+0x244>
    58ec:	3028292a 	eorcc	r2, r8, sl, lsr #18
    58f0:	46463378 			; <UNDEFINED> instruction: 0x46463378
    58f4:	33304346 	teqcc	r0, #402653185	; 0x18000001
    58f8:	00292941 	eoreq	r2, r9, r1, asr #18
    58fc:	4601ce01 	strmi	ip, [r1], -r1, lsl #28
    5900:	53314f49 	teqpl	r1, #292	; 0x124
    5904:	20305445 	eorscs	r5, r0, r5, asr #8
    5908:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    590c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    5910:	20656c69 	rsbcs	r6, r5, r9, ror #24
    5914:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    5918:	2a745f38 	bcs	1d1d600 <__mprec_tinytens+0x1cf8d90>
    591c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5920:	46464633 			; <UNDEFINED> instruction: 0x46464633
    5924:	38333043 	ldmdacc	r3!, {r0, r1, r6, ip, sp}
    5928:	01002929 	tsteq	r0, r9, lsr #18
    592c:	494601cf 	stmdbmi	r6, {r0, r1, r2, r3, r6, r7, r8}^
    5930:	4553314f 	ldrbmi	r3, [r3, #-335]	; 0xfffffeb1
    5934:	28203154 	stmdacs	r0!, {r2, r4, r6, r8, ip, sp}
    5938:	6f76282a 	svcvs	0x0076282a
    593c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5940:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    5944:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    5948:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    594c:	33783028 	cmncc	r8, #40	; 0x28
    5950:	43464646 	movtmi	r4, #26182	; 0x6646
    5954:	29393230 	ldmdbcs	r9!, {r4, r5, r9, ip, sp}
    5958:	d0010029 	andle	r0, r1, r9, lsr #32
    595c:	4f494601 	svcmi	0x00494601
    5960:	54455331 	strbpl	r5, [r5], #-817	; 0xfffffccf
    5964:	2a282032 	bcs	a0da34 <__mprec_tinytens+0x9e91c4>
    5968:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 58d0 <f_open+0x224>
    596c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5970:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5974:	5f38746e 	svcpl	0x0038746e
    5978:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    597c:	46337830 			; <UNDEFINED> instruction: 0x46337830
    5980:	30434646 	subcc	r4, r3, r6, asr #12
    5984:	29294133 	stmdbcs	r9!, {r0, r1, r4, r5, r8, lr}
    5988:	01d10100 	bicseq	r0, r1, r0, lsl #2
    598c:	314f4946 	cmpcc	pc, r6, asr #18
    5990:	33544553 	cmpcc	r4, #348127232	; 0x14c00000
    5994:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5998:	616c6f76 	smcvs	50934	; 0xc6f6
    599c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    59a0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    59a4:	745f3874 	ldrbvc	r3, [pc], #-2164	; 59ac <f_open+0x300>
    59a8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    59ac:	46463378 			; <UNDEFINED> instruction: 0x46463378
    59b0:	33304346 	teqcc	r0, #402653185	; 0x18000001
    59b4:	00292942 	eoreq	r2, r9, r2, asr #18
    59b8:	4601d301 	strmi	sp, [r1], -r1, lsl #6
    59bc:	43314f49 	teqmi	r1, #292	; 0x124
    59c0:	2820524c 	stmdacs	r0!, {r2, r3, r6, r9, ip, lr}
    59c4:	6f76282a 	svcvs	0x0076282a
    59c8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    59cc:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    59d0:	33746e69 	cmncc	r4, #1680	; 0x690
    59d4:	2a745f32 	bcs	1d1d6a4 <__mprec_tinytens+0x1cf8e34>
    59d8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    59dc:	46464633 			; <UNDEFINED> instruction: 0x46464633
    59e0:	43333043 	teqmi	r3, #67	; 0x43
    59e4:	01002929 	tsteq	r0, r9, lsr #18
    59e8:	494601d4 	stmdbmi	r6, {r2, r4, r6, r7, r8}^
    59ec:	4c43314f 	stfmie	f3, [r3], {79}	; 0x4f
    59f0:	28204c52 	stmdacs	r0!, {r1, r4, r6, sl, fp, lr}
    59f4:	6f76282a 	svcvs	0x0076282a
    59f8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    59fc:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    5a00:	31746e69 	cmncc	r4, r9, ror #28
    5a04:	2a745f36 	bcs	1d1d6e4 <__mprec_tinytens+0x1cf8e74>
    5a08:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5a0c:	46464633 			; <UNDEFINED> instruction: 0x46464633
    5a10:	43333043 	teqmi	r3, #67	; 0x43
    5a14:	01002929 	tsteq	r0, r9, lsr #18
    5a18:	494601d5 	stmdbmi	r6, {r0, r2, r4, r6, r7, r8}^
    5a1c:	4c43314f 	stfmie	f3, [r3], {79}	; 0x4f
    5a20:	28205552 	stmdacs	r0!, {r1, r4, r6, r8, sl, ip, lr}
    5a24:	6f76282a 	svcvs	0x0076282a
    5a28:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5a2c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    5a30:	31746e69 	cmncc	r4, r9, ror #28
    5a34:	2a745f36 	bcs	1d1d714 <__mprec_tinytens+0x1cf8ea4>
    5a38:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5a3c:	46464633 			; <UNDEFINED> instruction: 0x46464633
    5a40:	45333043 	ldrmi	r3, [r3, #-67]!	; 0xffffffbd
    5a44:	01002929 	tsteq	r0, r9, lsr #18
    5a48:	494601d6 	stmdbmi	r6, {r1, r2, r4, r6, r7, r8}^
    5a4c:	4c43314f 	stfmie	f3, [r3], {79}	; 0x4f
    5a50:	28203052 	stmdacs	r0!, {r1, r4, r6, ip, sp}
    5a54:	6f76282a 	svcvs	0x0076282a
    5a58:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5a5c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    5a60:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    5a64:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5a68:	33783028 	cmncc	r8, #40	; 0x28
    5a6c:	43464646 	movtmi	r4, #26182	; 0x6646
    5a70:	29433330 	stmdbcs	r3, {r4, r5, r8, r9, ip, sp}^
    5a74:	d7010029 	strle	r0, [r1, -r9, lsr #32]
    5a78:	4f494601 	svcmi	0x00494601
    5a7c:	524c4331 	subpl	r4, ip, #-1006632960	; 0xc4000000
    5a80:	2a282031 	bcs	a0db4c <__mprec_tinytens+0x9e92dc>
    5a84:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 59ec <f_open+0x340>
    5a88:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5a8c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5a90:	5f38746e 	svcpl	0x0038746e
    5a94:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    5a98:	46337830 			; <UNDEFINED> instruction: 0x46337830
    5a9c:	30434646 	subcc	r4, r3, r6, asr #12
    5aa0:	29294432 	stmdbcs	r9!, {r1, r4, r5, sl, lr}
    5aa4:	01d80100 	bicseq	r0, r8, r0, lsl #2
    5aa8:	314f4946 	cmpcc	pc, r6, asr #18
    5aac:	32524c43 	subscc	r4, r2, #17152	; 0x4300
    5ab0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5ab4:	616c6f76 	smcvs	50934	; 0xc6f6
    5ab8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5abc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5ac0:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5ac8 <f_read+0xd8>
    5ac4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5ac8:	46463378 			; <UNDEFINED> instruction: 0x46463378
    5acc:	33304346 	teqcc	r0, #402653185	; 0x18000001
    5ad0:	00292945 	eoreq	r2, r9, r5, asr #18
    5ad4:	4601d901 	strmi	sp, [r1], -r1, lsl #18
    5ad8:	43314f49 	teqmi	r1, #292	; 0x124
    5adc:	2033524c 	eorscs	r5, r3, ip, asr #4
    5ae0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    5ae4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    5ae8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    5aec:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    5af0:	2a745f38 	bcs	1d1d7d8 <__mprec_tinytens+0x1cf8f68>
    5af4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5af8:	46464633 			; <UNDEFINED> instruction: 0x46464633
    5afc:	46333043 	ldrtmi	r3, [r3], -r3, asr #32
    5b00:	01002929 	tsteq	r0, r9, lsr #18
    5b04:	494601db 	stmdbmi	r6, {r0, r1, r3, r4, r6, r7, r8}^
    5b08:	4944324f 	stmdbmi	r4, {r0, r1, r2, r3, r6, r9, ip, sp}^
    5b0c:	2a282052 	bcs	a0dc5c <__mprec_tinytens+0x9e93ec>
    5b10:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 5a78 <f_read+0x88>
    5b14:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5b18:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5b1c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    5b20:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5b24:	33783028 	cmncc	r8, #40	; 0x28
    5b28:	43464646 	movtmi	r4, #26182	; 0x6646
    5b2c:	29303430 	ldmdbcs	r0!, {r4, r5, sl, ip, sp}
    5b30:	dc010029 	stcle	0, cr0, [r1], {41}	; 0x29
    5b34:	4f494601 	svcmi	0x00494601
    5b38:	52494432 	subpl	r4, r9, #838860800	; 0x32000000
    5b3c:	2a28204c 	bcs	a0dc74 <__mprec_tinytens+0x9e9404>
    5b40:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 5aa8 <f_read+0xb8>
    5b44:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5b48:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5b4c:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    5b50:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5b54:	33783028 	cmncc	r8, #40	; 0x28
    5b58:	43464646 	movtmi	r4, #26182	; 0x6646
    5b5c:	29303430 	ldmdbcs	r0!, {r4, r5, sl, ip, sp}
    5b60:	dd010029 	stcle	0, cr0, [r1, #-164]	; 0xffffff5c
    5b64:	4f494601 	svcmi	0x00494601
    5b68:	52494432 	subpl	r4, r9, #838860800	; 0x32000000
    5b6c:	2a282055 	bcs	a0dcc8 <__mprec_tinytens+0x9e9458>
    5b70:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 5ad8 <f_read+0xe8>
    5b74:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5b78:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5b7c:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    5b80:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5b84:	33783028 	cmncc	r8, #40	; 0x28
    5b88:	43464646 	movtmi	r4, #26182	; 0x6646
    5b8c:	29323430 	ldmdbcs	r2!, {r4, r5, sl, ip, sp}
    5b90:	de010029 	cdple	0, 0, cr0, cr1, cr9, {1}
    5b94:	4f494601 	svcmi	0x00494601
    5b98:	52494432 	subpl	r4, r9, #838860800	; 0x32000000
    5b9c:	2a282030 	bcs	a0dc64 <__mprec_tinytens+0x9e93f4>
    5ba0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 5b08 <f_read+0x118>
    5ba4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5ba8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5bac:	5f38746e 	svcpl	0x0038746e
    5bb0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    5bb4:	46337830 			; <UNDEFINED> instruction: 0x46337830
    5bb8:	30434646 	subcc	r4, r3, r6, asr #12
    5bbc:	29293034 	stmdbcs	r9!, {r2, r4, r5, ip, sp}
    5bc0:	01df0100 	bicseq	r0, pc, r0, lsl #2
    5bc4:	324f4946 	subcc	r4, pc, #1146880	; 0x118000
    5bc8:	31524944 	cmpcc	r2, r4, asr #18
    5bcc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5bd0:	616c6f76 	smcvs	50934	; 0xc6f6
    5bd4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5bd8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5bdc:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5be4 <f_read+0x1f4>
    5be0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5be4:	46463378 			; <UNDEFINED> instruction: 0x46463378
    5be8:	34304346 	ldrtcc	r4, [r0], #-838	; 0xfffffcba
    5bec:	00292931 	eoreq	r2, r9, r1, lsr r9
    5bf0:	4601e001 	strmi	lr, [r1], -r1
    5bf4:	44324f49 	ldrtmi	r4, [r2], #-3913	; 0xfffff0b7
    5bf8:	20325249 	eorscs	r5, r2, r9, asr #4
    5bfc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    5c00:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    5c04:	20656c69 	rsbcs	r6, r5, r9, ror #24
    5c08:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    5c0c:	2a745f38 	bcs	1d1d8f4 <__mprec_tinytens+0x1cf9084>
    5c10:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5c14:	46464633 			; <UNDEFINED> instruction: 0x46464633
    5c18:	32343043 	eorscc	r3, r4, #67	; 0x43
    5c1c:	01002929 	tsteq	r0, r9, lsr #18
    5c20:	494601e1 	stmdbmi	r6, {r0, r5, r6, r7, r8}^
    5c24:	4944324f 	stmdbmi	r4, {r0, r1, r2, r3, r6, r9, ip, sp}^
    5c28:	28203352 	stmdacs	r0!, {r1, r4, r6, r8, r9, ip, sp}
    5c2c:	6f76282a 	svcvs	0x0076282a
    5c30:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5c34:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    5c38:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    5c3c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5c40:	33783028 	cmncc	r8, #40	; 0x28
    5c44:	43464646 	movtmi	r4, #26182	; 0x6646
    5c48:	29333430 	ldmdbcs	r3!, {r4, r5, sl, ip, sp}
    5c4c:	e3010029 	movw	r0, #4137	; 0x1029
    5c50:	4f494601 	svcmi	0x00494601
    5c54:	53414d32 	movtpl	r4, #7474	; 0x1d32
    5c58:	2a28204b 	bcs	a0dd8c <__mprec_tinytens+0x9e951c>
    5c5c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 5bc4 <f_read+0x1d4>
    5c60:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5c64:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5c68:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    5c6c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5c70:	33783028 	cmncc	r8, #40	; 0x28
    5c74:	43464646 	movtmi	r4, #26182	; 0x6646
    5c78:	29303530 	ldmdbcs	r0!, {r4, r5, r8, sl, ip, sp}
    5c7c:	e4010029 	str	r0, [r1], #-41	; 0xffffffd7
    5c80:	4f494601 	svcmi	0x00494601
    5c84:	53414d32 	movtpl	r4, #7474	; 0x1d32
    5c88:	28204c4b 	stmdacs	r0!, {r0, r1, r3, r6, sl, fp, lr}
    5c8c:	6f76282a 	svcvs	0x0076282a
    5c90:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5c94:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    5c98:	31746e69 	cmncc	r4, r9, ror #28
    5c9c:	2a745f36 	bcs	1d1d97c <__mprec_tinytens+0x1cf910c>
    5ca0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5ca4:	46464633 			; <UNDEFINED> instruction: 0x46464633
    5ca8:	30353043 	eorscc	r3, r5, r3, asr #32
    5cac:	01002929 	tsteq	r0, r9, lsr #18
    5cb0:	494601e5 	stmdbmi	r6, {r0, r2, r5, r6, r7, r8}^
    5cb4:	414d324f 	cmpmi	sp, pc, asr #4
    5cb8:	20554b53 	subscs	r4, r5, r3, asr fp
    5cbc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    5cc0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    5cc4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    5cc8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    5ccc:	745f3631 	ldrbvc	r3, [pc], #-1585	; 5cd4 <f_write+0xb4>
    5cd0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5cd4:	46463378 			; <UNDEFINED> instruction: 0x46463378
    5cd8:	35304346 	ldrcc	r4, [r0, #-838]!	; 0xfffffcba
    5cdc:	00292932 	eoreq	r2, r9, r2, lsr r9
    5ce0:	4601e601 	strmi	lr, [r1], -r1, lsl #12
    5ce4:	4d324f49 	ldcmi	15, cr4, [r2, #-292]!	; 0xfffffedc
    5ce8:	304b5341 	subcc	r5, fp, r1, asr #6
    5cec:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5cf0:	616c6f76 	smcvs	50934	; 0xc6f6
    5cf4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5cf8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5cfc:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5d04 <f_write+0xe4>
    5d00:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5d04:	46463378 			; <UNDEFINED> instruction: 0x46463378
    5d08:	35304346 	ldrcc	r4, [r0, #-838]!	; 0xfffffcba
    5d0c:	00292930 	eoreq	r2, r9, r0, lsr r9
    5d10:	4601e701 	strmi	lr, [r1], -r1, lsl #14
    5d14:	4d324f49 	ldcmi	15, cr4, [r2, #-292]!	; 0xfffffedc
    5d18:	314b5341 	cmpcc	fp, r1, asr #6
    5d1c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5d20:	616c6f76 	smcvs	50934	; 0xc6f6
    5d24:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5d28:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5d2c:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5d34 <f_write+0x114>
    5d30:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5d34:	46463378 			; <UNDEFINED> instruction: 0x46463378
    5d38:	35304346 	ldrcc	r4, [r0, #-838]!	; 0xfffffcba
    5d3c:	00292931 	eoreq	r2, r9, r1, lsr r9
    5d40:	4601e801 	strmi	lr, [r1], -r1, lsl #16
    5d44:	4d324f49 	ldcmi	15, cr4, [r2, #-292]!	; 0xfffffedc
    5d48:	324b5341 	subcc	r5, fp, #67108865	; 0x4000001
    5d4c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5d50:	616c6f76 	smcvs	50934	; 0xc6f6
    5d54:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5d58:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5d5c:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5d64 <f_write+0x144>
    5d60:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5d64:	46463378 			; <UNDEFINED> instruction: 0x46463378
    5d68:	35304346 	ldrcc	r4, [r0, #-838]!	; 0xfffffcba
    5d6c:	00292932 	eoreq	r2, r9, r2, lsr r9
    5d70:	4601e901 	strmi	lr, [r1], -r1, lsl #18
    5d74:	4d324f49 	ldcmi	15, cr4, [r2, #-292]!	; 0xfffffedc
    5d78:	334b5341 	movtcc	r5, #45889	; 0xb341
    5d7c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5d80:	616c6f76 	smcvs	50934	; 0xc6f6
    5d84:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5d88:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5d8c:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5d94 <f_write+0x174>
    5d90:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5d94:	46463378 			; <UNDEFINED> instruction: 0x46463378
    5d98:	35304346 	ldrcc	r4, [r0, #-838]!	; 0xfffffcba
    5d9c:	00292933 	eoreq	r2, r9, r3, lsr r9
    5da0:	4601eb01 	strmi	lr, [r1], -r1, lsl #22
    5da4:	50324f49 	eorspl	r4, r2, r9, asr #30
    5da8:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    5dac:	6f76282a 	svcvs	0x0076282a
    5db0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5db4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    5db8:	33746e69 	cmncc	r4, #1680	; 0x690
    5dbc:	2a745f32 	bcs	1d1da8c <__mprec_tinytens+0x1cf921c>
    5dc0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5dc4:	46464633 			; <UNDEFINED> instruction: 0x46464633
    5dc8:	34353043 	ldrtcc	r3, [r5], #-67	; 0xffffffbd
    5dcc:	01002929 	tsteq	r0, r9, lsr #18
    5dd0:	494601ec 	stmdbmi	r6, {r2, r3, r5, r6, r7, r8}^
    5dd4:	4950324f 	ldmdbmi	r0, {r0, r1, r2, r3, r6, r9, ip, sp}^
    5dd8:	28204c4e 	stmdacs	r0!, {r1, r2, r3, r6, sl, fp, lr}
    5ddc:	6f76282a 	svcvs	0x0076282a
    5de0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5de4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    5de8:	31746e69 	cmncc	r4, r9, ror #28
    5dec:	2a745f36 	bcs	1d1dacc <__mprec_tinytens+0x1cf925c>
    5df0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5df4:	46464633 			; <UNDEFINED> instruction: 0x46464633
    5df8:	34353043 	ldrtcc	r3, [r5], #-67	; 0xffffffbd
    5dfc:	01002929 	tsteq	r0, r9, lsr #18
    5e00:	494601ed 	stmdbmi	r6, {r0, r2, r3, r5, r6, r7, r8}^
    5e04:	4950324f 	ldmdbmi	r0, {r0, r1, r2, r3, r6, r9, ip, sp}^
    5e08:	2820554e 	stmdacs	r0!, {r1, r2, r3, r6, r8, sl, ip, lr}
    5e0c:	6f76282a 	svcvs	0x0076282a
    5e10:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5e14:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    5e18:	31746e69 	cmncc	r4, r9, ror #28
    5e1c:	2a745f36 	bcs	1d1dafc <__mprec_tinytens+0x1cf928c>
    5e20:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5e24:	46464633 			; <UNDEFINED> instruction: 0x46464633
    5e28:	36353043 	ldrtcc	r3, [r5], -r3, asr #32
    5e2c:	01002929 	tsteq	r0, r9, lsr #18
    5e30:	494601ee 	stmdbmi	r6, {r1, r2, r3, r5, r6, r7, r8}^
    5e34:	4950324f 	ldmdbmi	r0, {r0, r1, r2, r3, r6, r9, ip, sp}^
    5e38:	2820304e 	stmdacs	r0!, {r1, r2, r3, r6, ip, sp}
    5e3c:	6f76282a 	svcvs	0x0076282a
    5e40:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    5e44:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    5e48:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    5e4c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5e50:	33783028 	cmncc	r8, #40	; 0x28
    5e54:	43464646 	movtmi	r4, #26182	; 0x6646
    5e58:	29343530 	ldmdbcs	r4!, {r4, r5, r8, sl, ip, sp}
    5e5c:	ef010029 	svc	0x00010029
    5e60:	4f494601 	svcmi	0x00494601
    5e64:	4e495032 	mcrmi	0, 2, r5, cr9, cr2, {1}
    5e68:	2a282031 	bcs	a0df34 <__mprec_tinytens+0x9e96c4>
    5e6c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 5dd4 <f_write+0x1b4>
    5e70:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5e74:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5e78:	5f38746e 	svcpl	0x0038746e
    5e7c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    5e80:	46337830 			; <UNDEFINED> instruction: 0x46337830
    5e84:	30434646 	subcc	r4, r3, r6, asr #12
    5e88:	29293535 	stmdbcs	r9!, {r0, r2, r4, r5, r8, sl, ip, sp}
    5e8c:	01f00100 	mvnseq	r0, r0, lsl #2
    5e90:	324f4946 	subcc	r4, pc, #1146880	; 0x118000
    5e94:	324e4950 	subcc	r4, lr, #80, 18	; 0x140000
    5e98:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5e9c:	616c6f76 	smcvs	50934	; 0xc6f6
    5ea0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5ea4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5ea8:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5eb0 <f_write+0x290>
    5eac:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5eb0:	46463378 			; <UNDEFINED> instruction: 0x46463378
    5eb4:	35304346 	ldrcc	r4, [r0, #-838]!	; 0xfffffcba
    5eb8:	00292936 	eoreq	r2, r9, r6, lsr r9
    5ebc:	4601f101 	strmi	pc, [r1], -r1, lsl #2
    5ec0:	50324f49 	eorspl	r4, r2, r9, asr #30
    5ec4:	20334e49 	eorscs	r4, r3, r9, asr #28
    5ec8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    5ecc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    5ed0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    5ed4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    5ed8:	2a745f38 	bcs	1d1dbc0 <__mprec_tinytens+0x1cf9350>
    5edc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5ee0:	46464633 			; <UNDEFINED> instruction: 0x46464633
    5ee4:	37353043 	ldrcc	r3, [r5, -r3, asr #32]!
    5ee8:	01002929 	tsteq	r0, r9, lsr #18
    5eec:	494601f3 	stmdbmi	r6, {r0, r1, r4, r5, r6, r7, r8}^
    5ef0:	4553324f 	ldrbmi	r3, [r3, #-591]	; 0xfffffdb1
    5ef4:	2a282054 	bcs	a0e04c <__mprec_tinytens+0x9e97dc>
    5ef8:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 5e60 <f_write+0x240>
    5efc:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5f00:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5f04:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    5f08:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5f0c:	33783028 	cmncc	r8, #40	; 0x28
    5f10:	43464646 	movtmi	r4, #26182	; 0x6646
    5f14:	29383530 	ldmdbcs	r8!, {r4, r5, r8, sl, ip, sp}
    5f18:	f4010029 	vst4.8	{d0-d3}, [r1 :128], r9
    5f1c:	4f494601 	svcmi	0x00494601
    5f20:	54455332 	strbpl	r5, [r5], #-818	; 0xfffffcce
    5f24:	2a28204c 	bcs	a0e05c <__mprec_tinytens+0x9e97ec>
    5f28:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 5e90 <f_write+0x270>
    5f2c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5f30:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5f34:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    5f38:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5f3c:	33783028 	cmncc	r8, #40	; 0x28
    5f40:	43464646 	movtmi	r4, #26182	; 0x6646
    5f44:	29383530 	ldmdbcs	r8!, {r4, r5, r8, sl, ip, sp}
    5f48:	f5010029 			; <UNDEFINED> instruction: 0xf5010029
    5f4c:	4f494601 	svcmi	0x00494601
    5f50:	54455332 	strbpl	r5, [r5], #-818	; 0xfffffcce
    5f54:	2a282055 	bcs	a0e0b0 <__mprec_tinytens+0x9e9840>
    5f58:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 5ec0 <f_write+0x2a0>
    5f5c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5f60:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5f64:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    5f68:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    5f6c:	33783028 	cmncc	r8, #40	; 0x28
    5f70:	43464646 	movtmi	r4, #26182	; 0x6646
    5f74:	29413530 	stmdbcs	r1, {r4, r5, r8, sl, ip, sp}^
    5f78:	f6010029 			; <UNDEFINED> instruction: 0xf6010029
    5f7c:	4f494601 	svcmi	0x00494601
    5f80:	54455332 	strbpl	r5, [r5], #-818	; 0xfffffcce
    5f84:	2a282030 	bcs	a0e04c <__mprec_tinytens+0x9e97dc>
    5f88:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 5ef0 <f_write+0x2d0>
    5f8c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    5f90:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    5f94:	5f38746e 	svcpl	0x0038746e
    5f98:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    5f9c:	46337830 			; <UNDEFINED> instruction: 0x46337830
    5fa0:	30434646 	subcc	r4, r3, r6, asr #12
    5fa4:	29293835 	stmdbcs	r9!, {r0, r2, r4, r5, fp, ip, sp}
    5fa8:	01f70100 	mvnseq	r0, r0, lsl #2
    5fac:	324f4946 	subcc	r4, pc, #1146880	; 0x118000
    5fb0:	31544553 	cmpcc	r4, r3, asr r5
    5fb4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    5fb8:	616c6f76 	smcvs	50934	; 0xc6f6
    5fbc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    5fc0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    5fc4:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5fcc <f_write+0x3ac>
    5fc8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    5fcc:	46463378 			; <UNDEFINED> instruction: 0x46463378
    5fd0:	35304346 	ldrcc	r4, [r0, #-838]!	; 0xfffffcba
    5fd4:	00292939 	eoreq	r2, r9, r9, lsr r9
    5fd8:	4601f801 	strmi	pc, [r1], -r1, lsl #16
    5fdc:	53324f49 	teqpl	r2, #292	; 0x124
    5fe0:	20325445 	eorscs	r5, r2, r5, asr #8
    5fe4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    5fe8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    5fec:	20656c69 	rsbcs	r6, r5, r9, ror #24
    5ff0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    5ff4:	2a745f38 	bcs	1d1dcdc <__mprec_tinytens+0x1cf946c>
    5ff8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    5ffc:	46464633 			; <UNDEFINED> instruction: 0x46464633
    6000:	41353043 	teqmi	r5, r3, asr #32
    6004:	01002929 	tsteq	r0, r9, lsr #18
    6008:	494601f9 	stmdbmi	r6, {r0, r3, r4, r5, r6, r7, r8}^
    600c:	4553324f 	ldrbmi	r3, [r3, #-591]	; 0xfffffdb1
    6010:	28203354 	stmdacs	r0!, {r2, r4, r6, r8, r9, ip, sp}
    6014:	6f76282a 	svcvs	0x0076282a
    6018:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    601c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6020:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    6024:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6028:	33783028 	cmncc	r8, #40	; 0x28
    602c:	43464646 	movtmi	r4, #26182	; 0x6646
    6030:	29423530 	stmdbcs	r2, {r4, r5, r8, sl, ip, sp}^
    6034:	fb010029 	blx	460e2 <__mprec_tinytens+0x21872>
    6038:	4f494601 	svcmi	0x00494601
    603c:	524c4332 	subpl	r4, ip, #-939524096	; 0xc8000000
    6040:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6044:	616c6f76 	smcvs	50934	; 0xc6f6
    6048:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    604c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6050:	5f323374 	svcpl	0x00323374
    6054:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6058:	46337830 			; <UNDEFINED> instruction: 0x46337830
    605c:	30434646 	subcc	r4, r3, r6, asr #12
    6060:	29294335 	stmdbcs	r9!, {r0, r2, r4, r5, r8, r9, lr}
    6064:	01fc0100 	mvnseq	r0, r0, lsl #2
    6068:	324f4946 	subcc	r4, pc, #1146880	; 0x118000
    606c:	4c524c43 	mrrcmi	12, 4, r4, r2, cr3
    6070:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6074:	616c6f76 	smcvs	50934	; 0xc6f6
    6078:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    607c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6080:	5f363174 	svcpl	0x00363174
    6084:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6088:	46337830 			; <UNDEFINED> instruction: 0x46337830
    608c:	30434646 	subcc	r4, r3, r6, asr #12
    6090:	29294335 	stmdbcs	r9!, {r0, r2, r4, r5, r8, r9, lr}
    6094:	01fd0100 	mvnseq	r0, r0, lsl #2
    6098:	324f4946 	subcc	r4, pc, #1146880	; 0x118000
    609c:	55524c43 	ldrbpl	r4, [r2, #-3139]	; 0xfffff3bd
    60a0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    60a4:	616c6f76 	smcvs	50934	; 0xc6f6
    60a8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    60ac:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    60b0:	5f363174 	svcpl	0x00363174
    60b4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    60b8:	46337830 			; <UNDEFINED> instruction: 0x46337830
    60bc:	30434646 	subcc	r4, r3, r6, asr #12
    60c0:	29294535 	stmdbcs	r9!, {r0, r2, r4, r5, r8, sl, lr}
    60c4:	01fe0100 	mvnseq	r0, r0, lsl #2
    60c8:	324f4946 	subcc	r4, pc, #1146880	; 0x118000
    60cc:	30524c43 	subscc	r4, r2, r3, asr #24
    60d0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    60d4:	616c6f76 	smcvs	50934	; 0xc6f6
    60d8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    60dc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    60e0:	745f3874 	ldrbvc	r3, [pc], #-2164	; 60e8 <f_close+0x30>
    60e4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    60e8:	46463378 			; <UNDEFINED> instruction: 0x46463378
    60ec:	35304346 	ldrcc	r4, [r0, #-838]!	; 0xfffffcba
    60f0:	00292943 	eoreq	r2, r9, r3, asr #18
    60f4:	4601ff01 	strmi	pc, [r1], -r1, lsl #30
    60f8:	43324f49 	teqmi	r2, #292	; 0x124
    60fc:	2031524c 	eorscs	r5, r1, ip, asr #4
    6100:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    6104:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    6108:	20656c69 	rsbcs	r6, r5, r9, ror #24
    610c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6110:	2a745f38 	bcs	1d1ddf8 <__mprec_tinytens+0x1cf9588>
    6114:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    6118:	46464633 			; <UNDEFINED> instruction: 0x46464633
    611c:	44353043 	ldrtmi	r3, [r5], #-67	; 0xffffffbd
    6120:	01002929 	tsteq	r0, r9, lsr #18
    6124:	49460280 	stmdbmi	r6, {r7, r9}^
    6128:	4c43324f 	sfmmi	f3, 2, [r3], {79}	; 0x4f
    612c:	28203252 	stmdacs	r0!, {r1, r4, r6, r9, ip, sp}
    6130:	6f76282a 	svcvs	0x0076282a
    6134:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6138:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    613c:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    6140:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6144:	33783028 	cmncc	r8, #40	; 0x28
    6148:	43464646 	movtmi	r4, #26182	; 0x6646
    614c:	29453530 	stmdbcs	r5, {r4, r5, r8, sl, ip, sp}^
    6150:	81010029 	tsthi	r1, r9, lsr #32
    6154:	4f494602 	svcmi	0x00494602
    6158:	524c4332 	subpl	r4, ip, #-939524096	; 0xc8000000
    615c:	2a282033 	bcs	a0e230 <__mprec_tinytens+0x9e99c0>
    6160:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 60c8 <f_close+0x10>
    6164:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6168:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    616c:	5f38746e 	svcpl	0x0038746e
    6170:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6174:	46337830 			; <UNDEFINED> instruction: 0x46337830
    6178:	30434646 	subcc	r4, r3, r6, asr #12
    617c:	29294635 	stmdbcs	r9!, {r0, r2, r4, r5, r9, sl, lr}
    6180:	02830100 	addeq	r0, r3, #0, 2
    6184:	334f4946 	movtcc	r4, #63814	; 0xf946
    6188:	20524944 	subscs	r4, r2, r4, asr #18
    618c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    6190:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    6194:	20656c69 	rsbcs	r6, r5, r9, ror #24
    6198:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    619c:	745f3233 	ldrbvc	r3, [pc], #-563	; 61a4 <f_getcwd+0xc>
    61a0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    61a4:	46463378 			; <UNDEFINED> instruction: 0x46463378
    61a8:	36304346 	ldrtcc	r4, [r0], -r6, asr #6
    61ac:	00292930 	eoreq	r2, r9, r0, lsr r9
    61b0:	46028401 	strmi	r8, [r2], -r1, lsl #8
    61b4:	44334f49 	ldrtmi	r4, [r3], #-3913	; 0xfffff0b7
    61b8:	204c5249 	subcs	r5, ip, r9, asr #4
    61bc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    61c0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    61c4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    61c8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    61cc:	745f3631 	ldrbvc	r3, [pc], #-1585	; 61d4 <f_getcwd+0x3c>
    61d0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    61d4:	46463378 			; <UNDEFINED> instruction: 0x46463378
    61d8:	36304346 	ldrtcc	r4, [r0], -r6, asr #6
    61dc:	00292930 	eoreq	r2, r9, r0, lsr r9
    61e0:	46028501 	strmi	r8, [r2], -r1, lsl #10
    61e4:	44334f49 	ldrtmi	r4, [r3], #-3913	; 0xfffff0b7
    61e8:	20555249 	subscs	r5, r5, r9, asr #4
    61ec:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    61f0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    61f4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    61f8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    61fc:	745f3631 	ldrbvc	r3, [pc], #-1585	; 6204 <f_getcwd+0x6c>
    6200:	3028292a 	eorcc	r2, r8, sl, lsr #18
    6204:	46463378 			; <UNDEFINED> instruction: 0x46463378
    6208:	36304346 	ldrtcc	r4, [r0], -r6, asr #6
    620c:	00292932 	eoreq	r2, r9, r2, lsr r9
    6210:	46028601 	strmi	r8, [r2], -r1, lsl #12
    6214:	44334f49 	ldrtmi	r4, [r3], #-3913	; 0xfffff0b7
    6218:	20305249 	eorscs	r5, r0, r9, asr #4
    621c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    6220:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    6224:	20656c69 	rsbcs	r6, r5, r9, ror #24
    6228:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    622c:	2a745f38 	bcs	1d1df14 <__mprec_tinytens+0x1cf96a4>
    6230:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    6234:	46464633 			; <UNDEFINED> instruction: 0x46464633
    6238:	30363043 	eorscc	r3, r6, r3, asr #32
    623c:	01002929 	tsteq	r0, r9, lsr #18
    6240:	49460287 	stmdbmi	r6, {r0, r1, r2, r7, r9}^
    6244:	4944334f 	stmdbmi	r4, {r0, r1, r2, r3, r6, r8, r9, ip, sp}^
    6248:	28203152 	stmdacs	r0!, {r1, r4, r6, r8, ip, sp}
    624c:	6f76282a 	svcvs	0x0076282a
    6250:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6254:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6258:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    625c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6260:	33783028 	cmncc	r8, #40	; 0x28
    6264:	43464646 	movtmi	r4, #26182	; 0x6646
    6268:	29313630 	ldmdbcs	r1!, {r4, r5, r9, sl, ip, sp}
    626c:	88010029 	stmdahi	r1, {r0, r3, r5}
    6270:	4f494602 	svcmi	0x00494602
    6274:	52494433 	subpl	r4, r9, #855638016	; 0x33000000
    6278:	2a282032 	bcs	a0e348 <__mprec_tinytens+0x9e9ad8>
    627c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 61e4 <f_getcwd+0x4c>
    6280:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6284:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6288:	5f38746e 	svcpl	0x0038746e
    628c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6290:	46337830 			; <UNDEFINED> instruction: 0x46337830
    6294:	30434646 	subcc	r4, r3, r6, asr #12
    6298:	29293236 	stmdbcs	r9!, {r1, r2, r4, r5, r9, ip, sp}
    629c:	02890100 	addeq	r0, r9, #0, 2
    62a0:	334f4946 	movtcc	r4, #63814	; 0xf946
    62a4:	33524944 	cmpcc	r2, #68, 18	; 0x110000
    62a8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    62ac:	616c6f76 	smcvs	50934	; 0xc6f6
    62b0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    62b4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    62b8:	745f3874 	ldrbvc	r3, [pc], #-2164	; 62c0 <f_getcwd+0x128>
    62bc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    62c0:	46463378 			; <UNDEFINED> instruction: 0x46463378
    62c4:	36304346 	ldrtcc	r4, [r0], -r6, asr #6
    62c8:	00292933 	eoreq	r2, r9, r3, lsr r9
    62cc:	46028b01 	strmi	r8, [r2], -r1, lsl #22
    62d0:	4d334f49 	ldcmi	15, cr4, [r3, #-292]!	; 0xfffffedc
    62d4:	204b5341 	subcs	r5, fp, r1, asr #6
    62d8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    62dc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    62e0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    62e4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    62e8:	745f3233 	ldrbvc	r3, [pc], #-563	; 62f0 <f_getcwd+0x158>
    62ec:	3028292a 	eorcc	r2, r8, sl, lsr #18
    62f0:	46463378 			; <UNDEFINED> instruction: 0x46463378
    62f4:	37304346 	ldrcc	r4, [r0, -r6, asr #6]!
    62f8:	00292930 	eoreq	r2, r9, r0, lsr r9
    62fc:	46028c01 	strmi	r8, [r2], -r1, lsl #24
    6300:	4d334f49 	ldcmi	15, cr4, [r3, #-292]!	; 0xfffffedc
    6304:	4c4b5341 	mcrrmi	3, 4, r5, fp, cr1
    6308:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    630c:	616c6f76 	smcvs	50934	; 0xc6f6
    6310:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6314:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6318:	5f363174 	svcpl	0x00363174
    631c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6320:	46337830 			; <UNDEFINED> instruction: 0x46337830
    6324:	30434646 	subcc	r4, r3, r6, asr #12
    6328:	29293037 	stmdbcs	r9!, {r0, r1, r2, r4, r5, ip, sp}
    632c:	028d0100 	addeq	r0, sp, #0, 2
    6330:	334f4946 	movtcc	r4, #63814	; 0xf946
    6334:	4b53414d 	blmi	14d6870 <__mprec_tinytens+0x14b2000>
    6338:	2a282055 	bcs	a0e494 <__mprec_tinytens+0x9e9c24>
    633c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 62a4 <f_getcwd+0x10c>
    6340:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6344:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6348:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    634c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6350:	33783028 	cmncc	r8, #40	; 0x28
    6354:	43464646 	movtmi	r4, #26182	; 0x6646
    6358:	29323730 	ldmdbcs	r2!, {r4, r5, r8, r9, sl, ip, sp}
    635c:	8e010029 	cdphi	0, 0, cr0, cr1, cr9, {1}
    6360:	4f494602 	svcmi	0x00494602
    6364:	53414d33 	movtpl	r4, #7475	; 0x1d33
    6368:	2820304b 	stmdacs	r0!, {r0, r1, r3, r6, ip, sp}
    636c:	6f76282a 	svcvs	0x0076282a
    6370:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6374:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6378:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    637c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6380:	33783028 	cmncc	r8, #40	; 0x28
    6384:	43464646 	movtmi	r4, #26182	; 0x6646
    6388:	29303730 	ldmdbcs	r0!, {r4, r5, r8, r9, sl, ip, sp}
    638c:	8f010029 	svchi	0x00010029
    6390:	4f494602 	svcmi	0x00494602
    6394:	53414d33 	movtpl	r4, #7475	; 0x1d33
    6398:	2820314b 	stmdacs	r0!, {r0, r1, r3, r6, r8, ip, sp}
    639c:	6f76282a 	svcvs	0x0076282a
    63a0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    63a4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    63a8:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    63ac:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    63b0:	33783028 	cmncc	r8, #40	; 0x28
    63b4:	43464646 	movtmi	r4, #26182	; 0x6646
    63b8:	29313730 	ldmdbcs	r1!, {r4, r5, r8, r9, sl, ip, sp}
    63bc:	90010029 	andls	r0, r1, r9, lsr #32
    63c0:	4f494602 	svcmi	0x00494602
    63c4:	53414d33 	movtpl	r4, #7475	; 0x1d33
    63c8:	2820324b 	stmdacs	r0!, {r0, r1, r3, r6, r9, ip, sp}
    63cc:	6f76282a 	svcvs	0x0076282a
    63d0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    63d4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    63d8:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    63dc:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    63e0:	33783028 	cmncc	r8, #40	; 0x28
    63e4:	43464646 	movtmi	r4, #26182	; 0x6646
    63e8:	29323730 	ldmdbcs	r2!, {r4, r5, r8, r9, sl, ip, sp}
    63ec:	91010029 	tstls	r1, r9, lsr #32
    63f0:	4f494602 	svcmi	0x00494602
    63f4:	53414d33 	movtpl	r4, #7475	; 0x1d33
    63f8:	2820334b 	stmdacs	r0!, {r0, r1, r3, r6, r8, r9, ip, sp}
    63fc:	6f76282a 	svcvs	0x0076282a
    6400:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6404:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6408:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    640c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6410:	33783028 	cmncc	r8, #40	; 0x28
    6414:	43464646 	movtmi	r4, #26182	; 0x6646
    6418:	29333730 	ldmdbcs	r3!, {r4, r5, r8, r9, sl, ip, sp}
    641c:	93010029 	movwls	r0, #4137	; 0x1029
    6420:	4f494602 	svcmi	0x00494602
    6424:	4e495033 	mcrmi	0, 2, r5, cr9, cr3, {1}
    6428:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    642c:	616c6f76 	smcvs	50934	; 0xc6f6
    6430:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6434:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6438:	5f323374 	svcpl	0x00323374
    643c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6440:	46337830 			; <UNDEFINED> instruction: 0x46337830
    6444:	30434646 	subcc	r4, r3, r6, asr #12
    6448:	29293437 	stmdbcs	r9!, {r0, r1, r2, r4, r5, sl, ip, sp}
    644c:	02940100 	addseq	r0, r4, #0, 2
    6450:	334f4946 	movtcc	r4, #63814	; 0xf946
    6454:	4c4e4950 	mcrrmi	9, 5, r4, lr, cr0	; <UNPREDICTABLE>
    6458:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    645c:	616c6f76 	smcvs	50934	; 0xc6f6
    6460:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6464:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6468:	5f363174 	svcpl	0x00363174
    646c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6470:	46337830 			; <UNDEFINED> instruction: 0x46337830
    6474:	30434646 	subcc	r4, r3, r6, asr #12
    6478:	29293437 	stmdbcs	r9!, {r0, r1, r2, r4, r5, sl, ip, sp}
    647c:	02950100 	addseq	r0, r5, #0, 2
    6480:	334f4946 	movtcc	r4, #63814	; 0xf946
    6484:	554e4950 	strbpl	r4, [lr, #-2384]	; 0xfffff6b0
    6488:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    648c:	616c6f76 	smcvs	50934	; 0xc6f6
    6490:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6494:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6498:	5f363174 	svcpl	0x00363174
    649c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    64a0:	46337830 			; <UNDEFINED> instruction: 0x46337830
    64a4:	30434646 	subcc	r4, r3, r6, asr #12
    64a8:	29293637 	stmdbcs	r9!, {r0, r1, r2, r4, r5, r9, sl, ip, sp}
    64ac:	02960100 	addseq	r0, r6, #0, 2
    64b0:	334f4946 	movtcc	r4, #63814	; 0xf946
    64b4:	304e4950 	subcc	r4, lr, r0, asr r9
    64b8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    64bc:	616c6f76 	smcvs	50934	; 0xc6f6
    64c0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    64c4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    64c8:	745f3874 	ldrbvc	r3, [pc], #-2164	; 64d0 <f_lseek+0x120>
    64cc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    64d0:	46463378 			; <UNDEFINED> instruction: 0x46463378
    64d4:	37304346 	ldrcc	r4, [r0, -r6, asr #6]!
    64d8:	00292934 	eoreq	r2, r9, r4, lsr r9
    64dc:	46029701 	strmi	r9, [r2], -r1, lsl #14
    64e0:	50334f49 	eorspl	r4, r3, r9, asr #30
    64e4:	20314e49 	eorscs	r4, r1, r9, asr #28
    64e8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    64ec:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    64f0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    64f4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    64f8:	2a745f38 	bcs	1d1e1e0 <__mprec_tinytens+0x1cf9970>
    64fc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    6500:	46464633 			; <UNDEFINED> instruction: 0x46464633
    6504:	35373043 	ldrcc	r3, [r7, #-67]!	; 0xffffffbd
    6508:	01002929 	tsteq	r0, r9, lsr #18
    650c:	49460298 	stmdbmi	r6, {r3, r4, r7, r9}^
    6510:	4950334f 	ldmdbmi	r0, {r0, r1, r2, r3, r6, r8, r9, ip, sp}^
    6514:	2820324e 	stmdacs	r0!, {r1, r2, r3, r6, r9, ip, sp}
    6518:	6f76282a 	svcvs	0x0076282a
    651c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6520:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6524:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    6528:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    652c:	33783028 	cmncc	r8, #40	; 0x28
    6530:	43464646 	movtmi	r4, #26182	; 0x6646
    6534:	29363730 	ldmdbcs	r6!, {r4, r5, r8, r9, sl, ip, sp}
    6538:	99010029 	stmdbls	r1, {r0, r3, r5}
    653c:	4f494602 	svcmi	0x00494602
    6540:	4e495033 	mcrmi	0, 2, r5, cr9, cr3, {1}
    6544:	2a282033 	bcs	a0e618 <__mprec_tinytens+0x9e9da8>
    6548:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 64b0 <f_lseek+0x100>
    654c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6550:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6554:	5f38746e 	svcpl	0x0038746e
    6558:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    655c:	46337830 			; <UNDEFINED> instruction: 0x46337830
    6560:	30434646 	subcc	r4, r3, r6, asr #12
    6564:	29293737 	stmdbcs	r9!, {r0, r1, r2, r4, r5, r8, r9, sl, ip, sp}
    6568:	029b0100 	addseq	r0, fp, #0, 2
    656c:	334f4946 	movtcc	r4, #63814	; 0xf946
    6570:	20544553 	subscs	r4, r4, r3, asr r5
    6574:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    6578:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    657c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    6580:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6584:	745f3233 	ldrbvc	r3, [pc], #-563	; 658c <f_lseek+0x1dc>
    6588:	3028292a 	eorcc	r2, r8, sl, lsr #18
    658c:	46463378 			; <UNDEFINED> instruction: 0x46463378
    6590:	37304346 	ldrcc	r4, [r0, -r6, asr #6]!
    6594:	00292938 	eoreq	r2, r9, r8, lsr r9
    6598:	46029c01 	strmi	r9, [r2], -r1, lsl #24
    659c:	53334f49 	teqpl	r3, #292	; 0x124
    65a0:	204c5445 	subcs	r5, ip, r5, asr #8
    65a4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    65a8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    65ac:	20656c69 	rsbcs	r6, r5, r9, ror #24
    65b0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    65b4:	745f3631 	ldrbvc	r3, [pc], #-1585	; 65bc <f_lseek+0x20c>
    65b8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    65bc:	46463378 			; <UNDEFINED> instruction: 0x46463378
    65c0:	37304346 	ldrcc	r4, [r0, -r6, asr #6]!
    65c4:	00292938 	eoreq	r2, r9, r8, lsr r9
    65c8:	46029d01 	strmi	r9, [r2], -r1, lsl #26
    65cc:	53334f49 	teqpl	r3, #292	; 0x124
    65d0:	20555445 	subscs	r5, r5, r5, asr #8
    65d4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    65d8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    65dc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    65e0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    65e4:	745f3631 	ldrbvc	r3, [pc], #-1585	; 65ec <f_lseek+0x23c>
    65e8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    65ec:	46463378 			; <UNDEFINED> instruction: 0x46463378
    65f0:	37304346 	ldrcc	r4, [r0, -r6, asr #6]!
    65f4:	00292941 	eoreq	r2, r9, r1, asr #18
    65f8:	46029e01 	strmi	r9, [r2], -r1, lsl #28
    65fc:	53334f49 	teqpl	r3, #292	; 0x124
    6600:	20305445 	eorscs	r5, r0, r5, asr #8
    6604:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    6608:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    660c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    6610:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6614:	2a745f38 	bcs	1d1e2fc <__mprec_tinytens+0x1cf9a8c>
    6618:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    661c:	46464633 			; <UNDEFINED> instruction: 0x46464633
    6620:	38373043 	ldmdacc	r7!, {r0, r1, r6, ip, sp}
    6624:	01002929 	tsteq	r0, r9, lsr #18
    6628:	4946029f 	stmdbmi	r6, {r0, r1, r2, r3, r4, r7, r9}^
    662c:	4553334f 	ldrbmi	r3, [r3, #-847]	; 0xfffffcb1
    6630:	28203154 	stmdacs	r0!, {r2, r4, r6, r8, ip, sp}
    6634:	6f76282a 	svcvs	0x0076282a
    6638:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    663c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6640:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    6644:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6648:	33783028 	cmncc	r8, #40	; 0x28
    664c:	43464646 	movtmi	r4, #26182	; 0x6646
    6650:	29393730 	ldmdbcs	r9!, {r4, r5, r8, r9, sl, ip, sp}
    6654:	a0010029 	andge	r0, r1, r9, lsr #32
    6658:	4f494602 	svcmi	0x00494602
    665c:	54455333 	strbpl	r5, [r5], #-819	; 0xfffffccd
    6660:	2a282032 	bcs	a0e730 <__mprec_tinytens+0x9e9ec0>
    6664:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 65cc <f_lseek+0x21c>
    6668:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    666c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6670:	5f38746e 	svcpl	0x0038746e
    6674:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6678:	46337830 			; <UNDEFINED> instruction: 0x46337830
    667c:	30434646 	subcc	r4, r3, r6, asr #12
    6680:	29294137 	stmdbcs	r9!, {r0, r1, r2, r4, r5, r8, lr}
    6684:	02a10100 	adceq	r0, r1, #0, 2
    6688:	334f4946 	movtcc	r4, #63814	; 0xf946
    668c:	33544553 	cmpcc	r4, #348127232	; 0x14c00000
    6690:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6694:	616c6f76 	smcvs	50934	; 0xc6f6
    6698:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    669c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    66a0:	745f3874 	ldrbvc	r3, [pc], #-2164	; 66a8 <f_lseek+0x2f8>
    66a4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    66a8:	46463378 			; <UNDEFINED> instruction: 0x46463378
    66ac:	37304346 	ldrcc	r4, [r0, -r6, asr #6]!
    66b0:	00292942 	eoreq	r2, r9, r2, asr #18
    66b4:	4602a301 	strmi	sl, [r2], -r1, lsl #6
    66b8:	43334f49 	teqmi	r3, #292	; 0x124
    66bc:	2820524c 	stmdacs	r0!, {r2, r3, r6, r9, ip, lr}
    66c0:	6f76282a 	svcvs	0x0076282a
    66c4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    66c8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    66cc:	33746e69 	cmncc	r4, #1680	; 0x690
    66d0:	2a745f32 	bcs	1d1e3a0 <__mprec_tinytens+0x1cf9b30>
    66d4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    66d8:	46464633 			; <UNDEFINED> instruction: 0x46464633
    66dc:	43373043 	teqmi	r7, #67	; 0x43
    66e0:	01002929 	tsteq	r0, r9, lsr #18
    66e4:	494602a4 	stmdbmi	r6, {r2, r5, r7, r9}^
    66e8:	4c43334f 	mcrrmi	3, 4, r3, r3, cr15
    66ec:	28204c52 	stmdacs	r0!, {r1, r4, r6, sl, fp, lr}
    66f0:	6f76282a 	svcvs	0x0076282a
    66f4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    66f8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    66fc:	31746e69 	cmncc	r4, r9, ror #28
    6700:	2a745f36 	bcs	1d1e3e0 <__mprec_tinytens+0x1cf9b70>
    6704:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    6708:	46464633 			; <UNDEFINED> instruction: 0x46464633
    670c:	43373043 	teqmi	r7, #67	; 0x43
    6710:	01002929 	tsteq	r0, r9, lsr #18
    6714:	494602a5 	stmdbmi	r6, {r0, r2, r5, r7, r9}^
    6718:	4c43334f 	mcrrmi	3, 4, r3, r3, cr15
    671c:	28205552 	stmdacs	r0!, {r1, r4, r6, r8, sl, ip, lr}
    6720:	6f76282a 	svcvs	0x0076282a
    6724:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6728:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    672c:	31746e69 	cmncc	r4, r9, ror #28
    6730:	2a745f36 	bcs	1d1e410 <__mprec_tinytens+0x1cf9ba0>
    6734:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    6738:	46464633 			; <UNDEFINED> instruction: 0x46464633
    673c:	45373043 	ldrmi	r3, [r7, #-67]!	; 0xffffffbd
    6740:	01002929 	tsteq	r0, r9, lsr #18
    6744:	494602a6 	stmdbmi	r6, {r1, r2, r5, r7, r9}^
    6748:	4c43334f 	mcrrmi	3, 4, r3, r3, cr15
    674c:	28203052 	stmdacs	r0!, {r1, r4, r6, ip, sp}
    6750:	6f76282a 	svcvs	0x0076282a
    6754:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6758:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    675c:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    6760:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6764:	33783028 	cmncc	r8, #40	; 0x28
    6768:	43464646 	movtmi	r4, #26182	; 0x6646
    676c:	29433730 	stmdbcs	r3, {r4, r5, r8, r9, sl, ip, sp}^
    6770:	a7010029 	strge	r0, [r1, -r9, lsr #32]
    6774:	4f494602 	svcmi	0x00494602
    6778:	524c4333 	subpl	r4, ip, #-872415232	; 0xcc000000
    677c:	2a282031 	bcs	a0e848 <__mprec_tinytens+0x9e9fd8>
    6780:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 66e8 <f_lseek+0x338>
    6784:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6788:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    678c:	5f38746e 	svcpl	0x0038746e
    6790:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6794:	46337830 			; <UNDEFINED> instruction: 0x46337830
    6798:	30434646 	subcc	r4, r3, r6, asr #12
    679c:	29294437 	stmdbcs	r9!, {r0, r1, r2, r4, r5, sl, lr}
    67a0:	02a80100 	adceq	r0, r8, #0, 2
    67a4:	334f4946 	movtcc	r4, #63814	; 0xf946
    67a8:	32524c43 	subscc	r4, r2, #17152	; 0x4300
    67ac:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    67b0:	616c6f76 	smcvs	50934	; 0xc6f6
    67b4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    67b8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    67bc:	745f3874 	ldrbvc	r3, [pc], #-2164	; 67c4 <f_opendir+0xc0>
    67c0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    67c4:	46463378 			; <UNDEFINED> instruction: 0x46463378
    67c8:	37304346 	ldrcc	r4, [r0, -r6, asr #6]!
    67cc:	00292945 	eoreq	r2, r9, r5, asr #18
    67d0:	4602a901 	strmi	sl, [r2], -r1, lsl #18
    67d4:	43334f49 	teqmi	r3, #292	; 0x124
    67d8:	2033524c 	eorscs	r5, r3, ip, asr #4
    67dc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    67e0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    67e4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    67e8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    67ec:	2a745f38 	bcs	1d1e4d4 <__mprec_tinytens+0x1cf9c64>
    67f0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    67f4:	46464633 			; <UNDEFINED> instruction: 0x46464633
    67f8:	46373043 	ldrtmi	r3, [r7], -r3, asr #32
    67fc:	01002929 	tsteq	r0, r9, lsr #18
    6800:	494602ab 	stmdbmi	r6, {r0, r1, r3, r5, r7, r9}^
    6804:	4944344f 	stmdbmi	r4, {r0, r1, r2, r3, r6, sl, ip, sp}^
    6808:	2a282052 	bcs	a0e958 <__mprec_tinytens+0x9ea0e8>
    680c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 6774 <f_opendir+0x70>
    6810:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6814:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6818:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    681c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6820:	33783028 	cmncc	r8, #40	; 0x28
    6824:	43464646 	movtmi	r4, #26182	; 0x6646
    6828:	29303830 	ldmdbcs	r0!, {r4, r5, fp, ip, sp}
    682c:	ac010029 	stcge	0, cr0, [r1], {41}	; 0x29
    6830:	4f494602 	svcmi	0x00494602
    6834:	52494434 	subpl	r4, r9, #52, 8	; 0x34000000
    6838:	2a28204c 	bcs	a0e970 <__mprec_tinytens+0x9ea100>
    683c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 67a4 <f_opendir+0xa0>
    6840:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6844:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6848:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    684c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6850:	33783028 	cmncc	r8, #40	; 0x28
    6854:	43464646 	movtmi	r4, #26182	; 0x6646
    6858:	29303830 	ldmdbcs	r0!, {r4, r5, fp, ip, sp}
    685c:	ad010029 	stcge	0, cr0, [r1, #-164]	; 0xffffff5c
    6860:	4f494602 	svcmi	0x00494602
    6864:	52494434 	subpl	r4, r9, #52, 8	; 0x34000000
    6868:	2a282055 	bcs	a0e9c4 <__mprec_tinytens+0x9ea154>
    686c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 67d4 <f_closedir+0x4>
    6870:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6874:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6878:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    687c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6880:	33783028 	cmncc	r8, #40	; 0x28
    6884:	43464646 	movtmi	r4, #26182	; 0x6646
    6888:	29323830 	ldmdbcs	r2!, {r4, r5, fp, ip, sp}
    688c:	ae010029 	cdpge	0, 0, cr0, cr1, cr9, {1}
    6890:	4f494602 	svcmi	0x00494602
    6894:	52494434 	subpl	r4, r9, #52, 8	; 0x34000000
    6898:	2a282030 	bcs	a0e960 <__mprec_tinytens+0x9ea0f0>
    689c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 6804 <f_readdir+0x8>
    68a0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    68a4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    68a8:	5f38746e 	svcpl	0x0038746e
    68ac:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    68b0:	46337830 			; <UNDEFINED> instruction: 0x46337830
    68b4:	30434646 	subcc	r4, r3, r6, asr #12
    68b8:	29293038 	stmdbcs	r9!, {r3, r4, r5, ip, sp}
    68bc:	02af0100 	adceq	r0, pc, #0, 2
    68c0:	344f4946 	strbcc	r4, [pc], #-2374	; 68c8 <f_findnext+0x50>
    68c4:	31524944 	cmpcc	r2, r4, asr #18
    68c8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    68cc:	616c6f76 	smcvs	50934	; 0xc6f6
    68d0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    68d4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    68d8:	745f3874 	ldrbvc	r3, [pc], #-2164	; 68e0 <f_findnext+0x68>
    68dc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    68e0:	46463378 			; <UNDEFINED> instruction: 0x46463378
    68e4:	38304346 	ldmdacc	r0!, {r1, r2, r6, r8, r9, lr}
    68e8:	00292931 	eoreq	r2, r9, r1, lsr r9
    68ec:	4602b001 	strmi	fp, [r2], -r1
    68f0:	44344f49 	ldrtmi	r4, [r4], #-3913	; 0xfffff0b7
    68f4:	20325249 	eorscs	r5, r2, r9, asr #4
    68f8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    68fc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    6900:	20656c69 	rsbcs	r6, r5, r9, ror #24
    6904:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6908:	2a745f38 	bcs	1d1e5f0 <__mprec_tinytens+0x1cf9d80>
    690c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    6910:	46464633 			; <UNDEFINED> instruction: 0x46464633
    6914:	32383043 	eorscc	r3, r8, #67	; 0x43
    6918:	01002929 	tsteq	r0, r9, lsr #18
    691c:	494602b1 	stmdbmi	r6, {r0, r4, r5, r7, r9}^
    6920:	4944344f 	stmdbmi	r4, {r0, r1, r2, r3, r6, sl, ip, sp}^
    6924:	28203352 	stmdacs	r0!, {r1, r4, r6, r8, r9, ip, sp}
    6928:	6f76282a 	svcvs	0x0076282a
    692c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6930:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6934:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    6938:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    693c:	33783028 	cmncc	r8, #40	; 0x28
    6940:	43464646 	movtmi	r4, #26182	; 0x6646
    6944:	29333830 	ldmdbcs	r3!, {r4, r5, fp, ip, sp}
    6948:	b3010029 	movwlt	r0, #4137	; 0x1029
    694c:	4f494602 	svcmi	0x00494602
    6950:	53414d34 	movtpl	r4, #7476	; 0x1d34
    6954:	2a28204b 	bcs	a0ea88 <__mprec_tinytens+0x9ea218>
    6958:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 68c0 <f_findnext+0x48>
    695c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6960:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6964:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    6968:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    696c:	33783028 	cmncc	r8, #40	; 0x28
    6970:	43464646 	movtmi	r4, #26182	; 0x6646
    6974:	29303930 	ldmdbcs	r0!, {r4, r5, r8, fp, ip, sp}
    6978:	b4010029 	strlt	r0, [r1], #-41	; 0xffffffd7
    697c:	4f494602 	svcmi	0x00494602
    6980:	53414d34 	movtpl	r4, #7476	; 0x1d34
    6984:	28204c4b 	stmdacs	r0!, {r0, r1, r3, r6, sl, fp, lr}
    6988:	6f76282a 	svcvs	0x0076282a
    698c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6990:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6994:	31746e69 	cmncc	r4, r9, ror #28
    6998:	2a745f36 	bcs	1d1e678 <__mprec_tinytens+0x1cf9e08>
    699c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    69a0:	46464633 			; <UNDEFINED> instruction: 0x46464633
    69a4:	30393043 	eorscc	r3, r9, r3, asr #32
    69a8:	01002929 	tsteq	r0, r9, lsr #18
    69ac:	494602b5 	stmdbmi	r6, {r0, r2, r4, r5, r7, r9}^
    69b0:	414d344f 	cmpmi	sp, pc, asr #8
    69b4:	20554b53 	subscs	r4, r5, r3, asr fp
    69b8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    69bc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    69c0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    69c4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    69c8:	745f3631 	ldrbvc	r3, [pc], #-1585	; 69d0 <f_getfree+0x38>
    69cc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    69d0:	46463378 			; <UNDEFINED> instruction: 0x46463378
    69d4:	39304346 	ldmdbcc	r0!, {r1, r2, r6, r8, r9, lr}
    69d8:	00292932 	eoreq	r2, r9, r2, lsr r9
    69dc:	4602b601 	strmi	fp, [r2], -r1, lsl #12
    69e0:	4d344f49 	ldcmi	15, cr4, [r4, #-292]!	; 0xfffffedc
    69e4:	304b5341 	subcc	r5, fp, r1, asr #6
    69e8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    69ec:	616c6f76 	smcvs	50934	; 0xc6f6
    69f0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    69f4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    69f8:	745f3874 	ldrbvc	r3, [pc], #-2164	; 6a00 <f_getfree+0x68>
    69fc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    6a00:	46463378 			; <UNDEFINED> instruction: 0x46463378
    6a04:	39304346 	ldmdbcc	r0!, {r1, r2, r6, r8, r9, lr}
    6a08:	00292930 	eoreq	r2, r9, r0, lsr r9
    6a0c:	4602b701 	strmi	fp, [r2], -r1, lsl #14
    6a10:	4d344f49 	ldcmi	15, cr4, [r4, #-292]!	; 0xfffffedc
    6a14:	314b5341 	cmpcc	fp, r1, asr #6
    6a18:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6a1c:	616c6f76 	smcvs	50934	; 0xc6f6
    6a20:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6a24:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6a28:	745f3874 	ldrbvc	r3, [pc], #-2164	; 6a30 <f_getfree+0x98>
    6a2c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    6a30:	46463378 			; <UNDEFINED> instruction: 0x46463378
    6a34:	39304346 	ldmdbcc	r0!, {r1, r2, r6, r8, r9, lr}
    6a38:	00292931 	eoreq	r2, r9, r1, lsr r9
    6a3c:	4602b801 	strmi	fp, [r2], -r1, lsl #16
    6a40:	4d344f49 	ldcmi	15, cr4, [r4, #-292]!	; 0xfffffedc
    6a44:	324b5341 	subcc	r5, fp, #67108865	; 0x4000001
    6a48:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6a4c:	616c6f76 	smcvs	50934	; 0xc6f6
    6a50:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6a54:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6a58:	745f3874 	ldrbvc	r3, [pc], #-2164	; 6a60 <f_getfree+0xc8>
    6a5c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    6a60:	46463378 			; <UNDEFINED> instruction: 0x46463378
    6a64:	39304346 	ldmdbcc	r0!, {r1, r2, r6, r8, r9, lr}
    6a68:	00292932 	eoreq	r2, r9, r2, lsr r9
    6a6c:	4602b901 	strmi	fp, [r2], -r1, lsl #18
    6a70:	4d344f49 	ldcmi	15, cr4, [r4, #-292]!	; 0xfffffedc
    6a74:	334b5341 	movtcc	r5, #45889	; 0xb341
    6a78:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6a7c:	616c6f76 	smcvs	50934	; 0xc6f6
    6a80:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6a84:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6a88:	745f3874 	ldrbvc	r3, [pc], #-2164	; 6a90 <f_getfree+0xf8>
    6a8c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    6a90:	46463378 			; <UNDEFINED> instruction: 0x46463378
    6a94:	39304346 	ldmdbcc	r0!, {r1, r2, r6, r8, r9, lr}
    6a98:	00292933 	eoreq	r2, r9, r3, lsr r9
    6a9c:	4602bb01 	strmi	fp, [r2], -r1, lsl #22
    6aa0:	50344f49 	eorspl	r4, r4, r9, asr #30
    6aa4:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    6aa8:	6f76282a 	svcvs	0x0076282a
    6aac:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6ab0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6ab4:	33746e69 	cmncc	r4, #1680	; 0x690
    6ab8:	2a745f32 	bcs	1d1e788 <__mprec_tinytens+0x1cf9f18>
    6abc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    6ac0:	46464633 			; <UNDEFINED> instruction: 0x46464633
    6ac4:	34393043 	ldrtcc	r3, [r9], #-67	; 0xffffffbd
    6ac8:	01002929 	tsteq	r0, r9, lsr #18
    6acc:	494602bc 	stmdbmi	r6, {r2, r3, r4, r5, r7, r9}^
    6ad0:	4950344f 	ldmdbmi	r0, {r0, r1, r2, r3, r6, sl, ip, sp}^
    6ad4:	28204c4e 	stmdacs	r0!, {r1, r2, r3, r6, sl, fp, lr}
    6ad8:	6f76282a 	svcvs	0x0076282a
    6adc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6ae0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6ae4:	31746e69 	cmncc	r4, r9, ror #28
    6ae8:	2a745f36 	bcs	1d1e7c8 <__mprec_tinytens+0x1cf9f58>
    6aec:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    6af0:	46464633 			; <UNDEFINED> instruction: 0x46464633
    6af4:	34393043 	ldrtcc	r3, [r9], #-67	; 0xffffffbd
    6af8:	01002929 	tsteq	r0, r9, lsr #18
    6afc:	494602bd 	stmdbmi	r6, {r0, r2, r3, r4, r5, r7, r9}^
    6b00:	4950344f 	ldmdbmi	r0, {r0, r1, r2, r3, r6, sl, ip, sp}^
    6b04:	2820554e 	stmdacs	r0!, {r1, r2, r3, r6, r8, sl, ip, lr}
    6b08:	6f76282a 	svcvs	0x0076282a
    6b0c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6b10:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6b14:	31746e69 	cmncc	r4, r9, ror #28
    6b18:	2a745f36 	bcs	1d1e7f8 <__mprec_tinytens+0x1cf9f88>
    6b1c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    6b20:	46464633 			; <UNDEFINED> instruction: 0x46464633
    6b24:	36393043 	ldrtcc	r3, [r9], -r3, asr #32
    6b28:	01002929 	tsteq	r0, r9, lsr #18
    6b2c:	494602be 	stmdbmi	r6, {r1, r2, r3, r4, r5, r7, r9}^
    6b30:	4950344f 	ldmdbmi	r0, {r0, r1, r2, r3, r6, sl, ip, sp}^
    6b34:	2820304e 	stmdacs	r0!, {r1, r2, r3, r6, ip, sp}
    6b38:	6f76282a 	svcvs	0x0076282a
    6b3c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6b40:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6b44:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    6b48:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6b4c:	33783028 	cmncc	r8, #40	; 0x28
    6b50:	43464646 	movtmi	r4, #26182	; 0x6646
    6b54:	29343930 	ldmdbcs	r4!, {r4, r5, r8, fp, ip, sp}
    6b58:	bf010029 	svclt	0x00010029
    6b5c:	4f494602 	svcmi	0x00494602
    6b60:	4e495034 	mcrmi	0, 2, r5, cr9, cr4, {1}
    6b64:	2a282031 	bcs	a0ec30 <__mprec_tinytens+0x9ea3c0>
    6b68:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 6ad0 <f_getfree+0x138>
    6b6c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6b70:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6b74:	5f38746e 	svcpl	0x0038746e
    6b78:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6b7c:	46337830 			; <UNDEFINED> instruction: 0x46337830
    6b80:	30434646 	subcc	r4, r3, r6, asr #12
    6b84:	29293539 	stmdbcs	r9!, {r0, r3, r4, r5, r8, sl, ip, sp}
    6b88:	02c00100 	sbceq	r0, r0, #0, 2
    6b8c:	344f4946 	strbcc	r4, [pc], #-2374	; 6b94 <f_truncate+0x90>
    6b90:	324e4950 	subcc	r4, lr, #80, 18	; 0x140000
    6b94:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6b98:	616c6f76 	smcvs	50934	; 0xc6f6
    6b9c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6ba0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6ba4:	745f3874 	ldrbvc	r3, [pc], #-2164	; 6bac <f_truncate+0xa8>
    6ba8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    6bac:	46463378 			; <UNDEFINED> instruction: 0x46463378
    6bb0:	39304346 	ldmdbcc	r0!, {r1, r2, r6, r8, r9, lr}
    6bb4:	00292936 	eoreq	r2, r9, r6, lsr r9
    6bb8:	4602c101 	strmi	ip, [r2], -r1, lsl #2
    6bbc:	50344f49 	eorspl	r4, r4, r9, asr #30
    6bc0:	20334e49 	eorscs	r4, r3, r9, asr #28
    6bc4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    6bc8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    6bcc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    6bd0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6bd4:	2a745f38 	bcs	1d1e8bc <__mprec_tinytens+0x1cfa04c>
    6bd8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    6bdc:	46464633 			; <UNDEFINED> instruction: 0x46464633
    6be0:	37393043 	ldrcc	r3, [r9, -r3, asr #32]!
    6be4:	01002929 	tsteq	r0, r9, lsr #18
    6be8:	494602c3 	stmdbmi	r6, {r0, r1, r6, r7, r9}^
    6bec:	4553344f 	ldrbmi	r3, [r3, #-1103]	; 0xfffffbb1
    6bf0:	2a282054 	bcs	a0ed48 <__mprec_tinytens+0x9ea4d8>
    6bf4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 6b5c <f_truncate+0x58>
    6bf8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6bfc:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6c00:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    6c04:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6c08:	33783028 	cmncc	r8, #40	; 0x28
    6c0c:	43464646 	movtmi	r4, #26182	; 0x6646
    6c10:	29383930 	ldmdbcs	r8!, {r4, r5, r8, fp, ip, sp}
    6c14:	c4010029 	strgt	r0, [r1], #-41	; 0xffffffd7
    6c18:	4f494602 	svcmi	0x00494602
    6c1c:	54455334 	strbpl	r5, [r5], #-820	; 0xfffffccc
    6c20:	2a28204c 	bcs	a0ed58 <__mprec_tinytens+0x9ea4e8>
    6c24:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 6b8c <f_truncate+0x88>
    6c28:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6c2c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6c30:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    6c34:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6c38:	33783028 	cmncc	r8, #40	; 0x28
    6c3c:	43464646 	movtmi	r4, #26182	; 0x6646
    6c40:	29383930 	ldmdbcs	r8!, {r4, r5, r8, fp, ip, sp}
    6c44:	c5010029 	strgt	r0, [r1, #-41]	; 0xffffffd7
    6c48:	4f494602 	svcmi	0x00494602
    6c4c:	54455334 	strbpl	r5, [r5], #-820	; 0xfffffccc
    6c50:	2a282055 	bcs	a0edac <__mprec_tinytens+0x9ea53c>
    6c54:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 6bbc <f_truncate+0xb8>
    6c58:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6c5c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6c60:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    6c64:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6c68:	33783028 	cmncc	r8, #40	; 0x28
    6c6c:	43464646 	movtmi	r4, #26182	; 0x6646
    6c70:	29413930 	stmdbcs	r1, {r4, r5, r8, fp, ip, sp}^
    6c74:	c6010029 	strgt	r0, [r1], -r9, lsr #32
    6c78:	4f494602 	svcmi	0x00494602
    6c7c:	54455334 	strbpl	r5, [r5], #-820	; 0xfffffccc
    6c80:	2a282030 	bcs	a0ed48 <__mprec_tinytens+0x9ea4d8>
    6c84:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 6bec <f_truncate+0xe8>
    6c88:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6c8c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6c90:	5f38746e 	svcpl	0x0038746e
    6c94:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6c98:	46337830 			; <UNDEFINED> instruction: 0x46337830
    6c9c:	30434646 	subcc	r4, r3, r6, asr #12
    6ca0:	29293839 	stmdbcs	r9!, {r0, r3, r4, r5, fp, ip, sp}
    6ca4:	02c70100 	sbceq	r0, r7, #0, 2
    6ca8:	344f4946 	strbcc	r4, [pc], #-2374	; 6cb0 <f_unlink+0x78>
    6cac:	31544553 	cmpcc	r4, r3, asr r5
    6cb0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6cb4:	616c6f76 	smcvs	50934	; 0xc6f6
    6cb8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6cbc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6cc0:	745f3874 	ldrbvc	r3, [pc], #-2164	; 6cc8 <f_unlink+0x90>
    6cc4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    6cc8:	46463378 			; <UNDEFINED> instruction: 0x46463378
    6ccc:	39304346 	ldmdbcc	r0!, {r1, r2, r6, r8, r9, lr}
    6cd0:	00292939 	eoreq	r2, r9, r9, lsr r9
    6cd4:	4602c801 	strmi	ip, [r2], -r1, lsl #16
    6cd8:	53344f49 	teqpl	r4, #292	; 0x124
    6cdc:	20325445 	eorscs	r5, r2, r5, asr #8
    6ce0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    6ce4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    6ce8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    6cec:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6cf0:	2a745f38 	bcs	1d1e9d8 <__mprec_tinytens+0x1cfa168>
    6cf4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    6cf8:	46464633 			; <UNDEFINED> instruction: 0x46464633
    6cfc:	41393043 	teqmi	r9, r3, asr #32
    6d00:	01002929 	tsteq	r0, r9, lsr #18
    6d04:	494602c9 	stmdbmi	r6, {r0, r3, r6, r7, r9}^
    6d08:	4553344f 	ldrbmi	r3, [r3, #-1103]	; 0xfffffbb1
    6d0c:	28203354 	stmdacs	r0!, {r2, r4, r6, r8, r9, ip, sp}
    6d10:	6f76282a 	svcvs	0x0076282a
    6d14:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6d18:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6d1c:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    6d20:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6d24:	33783028 	cmncc	r8, #40	; 0x28
    6d28:	43464646 	movtmi	r4, #26182	; 0x6646
    6d2c:	29423930 	stmdbcs	r2, {r4, r5, r8, fp, ip, sp}^
    6d30:	cb010029 	blgt	46ddc <__mprec_tinytens+0x2256c>
    6d34:	4f494602 	svcmi	0x00494602
    6d38:	524c4334 	subpl	r4, ip, #52, 6	; 0xd0000000
    6d3c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6d40:	616c6f76 	smcvs	50934	; 0xc6f6
    6d44:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6d48:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6d4c:	5f323374 	svcpl	0x00323374
    6d50:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6d54:	46337830 			; <UNDEFINED> instruction: 0x46337830
    6d58:	30434646 	subcc	r4, r3, r6, asr #12
    6d5c:	29294339 	stmdbcs	r9!, {r0, r3, r4, r5, r8, r9, lr}
    6d60:	02cc0100 	sbceq	r0, ip, #0, 2
    6d64:	344f4946 	strbcc	r4, [pc], #-2374	; 6d6c <f_unlink+0x134>
    6d68:	4c524c43 	mrrcmi	12, 4, r4, r2, cr3
    6d6c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6d70:	616c6f76 	smcvs	50934	; 0xc6f6
    6d74:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6d78:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6d7c:	5f363174 	svcpl	0x00363174
    6d80:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6d84:	46337830 			; <UNDEFINED> instruction: 0x46337830
    6d88:	30434646 	subcc	r4, r3, r6, asr #12
    6d8c:	29294339 	stmdbcs	r9!, {r0, r3, r4, r5, r8, r9, lr}
    6d90:	02cd0100 	sbceq	r0, sp, #0, 2
    6d94:	344f4946 	strbcc	r4, [pc], #-2374	; 6d9c <f_mkdir+0x20>
    6d98:	55524c43 	ldrbpl	r4, [r2, #-3139]	; 0xfffff3bd
    6d9c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6da0:	616c6f76 	smcvs	50934	; 0xc6f6
    6da4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6da8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6dac:	5f363174 	svcpl	0x00363174
    6db0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6db4:	46337830 			; <UNDEFINED> instruction: 0x46337830
    6db8:	30434646 	subcc	r4, r3, r6, asr #12
    6dbc:	29294539 	stmdbcs	r9!, {r0, r3, r4, r5, r8, sl, lr}
    6dc0:	02ce0100 	sbceq	r0, lr, #0, 2
    6dc4:	344f4946 	strbcc	r4, [pc], #-2374	; 6dcc <f_mkdir+0x50>
    6dc8:	30524c43 	subscc	r4, r2, r3, asr #24
    6dcc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6dd0:	616c6f76 	smcvs	50934	; 0xc6f6
    6dd4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6dd8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6ddc:	745f3874 	ldrbvc	r3, [pc], #-2164	; 6de4 <f_mkdir+0x68>
    6de0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    6de4:	46463378 			; <UNDEFINED> instruction: 0x46463378
    6de8:	39304346 	ldmdbcc	r0!, {r1, r2, r6, r8, r9, lr}
    6dec:	00292943 	eoreq	r2, r9, r3, asr #18
    6df0:	4602cf01 	strmi	ip, [r2], -r1, lsl #30
    6df4:	43344f49 	teqmi	r4, #292	; 0x124
    6df8:	2031524c 	eorscs	r5, r1, ip, asr #4
    6dfc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    6e00:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    6e04:	20656c69 	rsbcs	r6, r5, r9, ror #24
    6e08:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6e0c:	2a745f38 	bcs	1d1eaf4 <__mprec_tinytens+0x1cfa284>
    6e10:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    6e14:	46464633 			; <UNDEFINED> instruction: 0x46464633
    6e18:	44393043 	ldrtmi	r3, [r9], #-67	; 0xffffffbd
    6e1c:	01002929 	tsteq	r0, r9, lsr #18
    6e20:	494602d0 	stmdbmi	r6, {r4, r6, r7, r9}^
    6e24:	4c43344f 	cfstrdmi	mvd3, [r3], {79}	; 0x4f
    6e28:	28203252 	stmdacs	r0!, {r1, r4, r6, r9, ip, sp}
    6e2c:	6f76282a 	svcvs	0x0076282a
    6e30:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    6e34:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    6e38:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    6e3c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6e40:	33783028 	cmncc	r8, #40	; 0x28
    6e44:	43464646 	movtmi	r4, #26182	; 0x6646
    6e48:	29453930 	stmdbcs	r5, {r4, r5, r8, fp, ip, sp}^
    6e4c:	d1010029 	tstle	r1, r9, lsr #32
    6e50:	4f494602 	svcmi	0x00494602
    6e54:	524c4334 	subpl	r4, ip, #52, 6	; 0xd0000000
    6e58:	2a282033 	bcs	a0ef2c <__mprec_tinytens+0x9ea6bc>
    6e5c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 6dc4 <f_mkdir+0x48>
    6e60:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6e64:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6e68:	5f38746e 	svcpl	0x0038746e
    6e6c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6e70:	46337830 			; <UNDEFINED> instruction: 0x46337830
    6e74:	30434646 	subcc	r4, r3, r6, asr #12
    6e78:	29294639 	stmdbcs	r9!, {r0, r3, r4, r5, r9, sl, lr}
    6e7c:	02d30100 	sbcseq	r0, r3, #0, 2
    6e80:	434d414d 	movtmi	r4, #53581	; 0xd14d
    6e84:	2a282052 	bcs	a0efd4 <__mprec_tinytens+0x9ea764>
    6e88:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 6df0 <f_mkdir+0x74>
    6e8c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6e90:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6e94:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    6e98:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6e9c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    6ea0:	43463130 	movtmi	r3, #24880	; 0x6130
    6ea4:	29303030 	ldmdbcs	r0!, {r4, r5, ip, sp}
    6ea8:	d4010029 	strle	r0, [r1], #-41	; 0xffffffd7
    6eac:	4d414d02 	stclmi	13, cr4, [r1, #-8]
    6eb0:	204d4954 	subcs	r4, sp, r4, asr r9
    6eb4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    6eb8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    6ebc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    6ec0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6ec4:	745f3233 	ldrbvc	r3, [pc], #-563	; 6ecc <f_mkdir+0x150>
    6ec8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    6ecc:	31304578 	teqcc	r0, r8, ror r5
    6ed0:	30304346 	eorscc	r4, r0, r6, asr #6
    6ed4:	00292934 	eoreq	r2, r9, r4, lsr r9
    6ed8:	4d02d501 	cfstr32mi	mvfx13, [r2, #-4]
    6edc:	414d4d45 	cmpmi	sp, r5, asr #26
    6ee0:	2a282050 	bcs	a0f028 <__mprec_tinytens+0x9ea7b8>
    6ee4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 6e4c <f_mkdir+0xd0>
    6ee8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6eec:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6ef0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    6ef4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6ef8:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    6efc:	43463130 	movtmi	r3, #24880	; 0x6130
    6f00:	29303430 	ldmdbcs	r0!, {r4, r5, sl, ip, sp}
    6f04:	d7010029 	strle	r0, [r1, -r9, lsr #32]
    6f08:	4c4c5002 	mcrrmi	0, 0, r5, ip, cr2
    6f0c:	204e4f43 	subcs	r4, lr, r3, asr #30
    6f10:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    6f14:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    6f18:	20656c69 	rsbcs	r6, r5, r9, ror #24
    6f1c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6f20:	745f3233 	ldrbvc	r3, [pc], #-563	; 6f28 <f_mkdir+0x1ac>
    6f24:	3028292a 	eorcc	r2, r8, sl, lsr #18
    6f28:	31304578 	teqcc	r0, r8, ror r5
    6f2c:	38304346 	ldmdacc	r0!, {r1, r2, r6, r8, r9, lr}
    6f30:	00292930 	eoreq	r2, r9, r0, lsr r9
    6f34:	5002d801 	andpl	sp, r2, r1, lsl #16
    6f38:	46434c4c 	strbmi	r4, [r3], -ip, asr #24
    6f3c:	2a282047 	bcs	a0f060 <__mprec_tinytens+0x9ea7f0>
    6f40:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 6ea8 <f_mkdir+0x12c>
    6f44:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    6f48:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    6f4c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    6f50:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    6f54:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    6f58:	43463130 	movtmi	r3, #24880	; 0x6130
    6f5c:	29343830 	ldmdbcs	r4!, {r4, r5, fp, ip, sp}
    6f60:	d9010029 	stmdble	r1, {r0, r3, r5}
    6f64:	4c4c5002 	mcrrmi	0, 0, r5, ip, cr2
    6f68:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    6f6c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6f70:	616c6f76 	smcvs	50934	; 0xc6f6
    6f74:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6f78:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    6f7c:	5f323374 	svcpl	0x00323374
    6f80:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    6f84:	30457830 	subcc	r7, r5, r0, lsr r8
    6f88:	30434631 	subcc	r4, r3, r1, lsr r6
    6f8c:	29293838 	stmdbcs	r9!, {r3, r4, r5, fp, ip, sp}
    6f90:	02da0100 	sbcseq	r0, sl, #0, 2
    6f94:	464c4c50 			; <UNDEFINED> instruction: 0x464c4c50
    6f98:	20444545 	subcs	r4, r4, r5, asr #10
    6f9c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    6fa0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    6fa4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    6fa8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6fac:	745f3233 	ldrbvc	r3, [pc], #-563	; 6fb4 <f_rename+0x50>
    6fb0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    6fb4:	31304578 	teqcc	r0, r8, ror r5
    6fb8:	38304346 	ldmdacc	r0!, {r1, r2, r6, r8, r9, lr}
    6fbc:	00292943 	eoreq	r2, r9, r3, asr #18
    6fc0:	5002dc01 	andpl	sp, r2, r1, lsl #24
    6fc4:	204e4f43 	subcs	r4, lr, r3, asr #30
    6fc8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    6fcc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    6fd0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    6fd4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    6fd8:	745f3233 	ldrbvc	r3, [pc], #-563	; 6fe0 <f_rename+0x7c>
    6fdc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    6fe0:	31304578 	teqcc	r0, r8, ror r5
    6fe4:	43304346 	teqmi	r0, #402653185	; 0x18000001
    6fe8:	00292930 	eoreq	r2, r9, r0, lsr r9
    6fec:	5002dd01 	andpl	sp, r2, r1, lsl #26
    6ff0:	504e4f43 	subpl	r4, lr, r3, asr #30
    6ff4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    6ff8:	616c6f76 	smcvs	50934	; 0xc6f6
    6ffc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7000:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7004:	5f323374 	svcpl	0x00323374
    7008:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    700c:	30457830 	subcc	r7, r5, r0, lsr r8
    7010:	30434631 	subcc	r4, r3, r1, lsr r6
    7014:	29293443 	stmdbcs	r9!, {r0, r1, r6, sl, ip, sp}
    7018:	02df0100 	sbcseq	r0, pc, #0, 2
    701c:	4b4c4343 	blmi	1317d30 <__mprec_tinytens+0x12f34c0>
    7020:	20474643 	subcs	r4, r7, r3, asr #12
    7024:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    7028:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    702c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7030:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7034:	745f3233 	ldrbvc	r3, [pc], #-563	; 703c <f_rename+0xd8>
    7038:	3028292a 	eorcc	r2, r8, sl, lsr #18
    703c:	31304578 	teqcc	r0, r8, ror r5
    7040:	30314346 	eorscc	r4, r1, r6, asr #6
    7044:	00292934 	eoreq	r2, r9, r4, lsr r9
    7048:	5502e001 	strpl	lr, [r2, #-1]
    704c:	4c434253 	sfmmi	f4, 2, [r3], {83}	; 0x53
    7050:	4746434b 	strbmi	r4, [r6, -fp, asr #6]
    7054:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7058:	616c6f76 	smcvs	50934	; 0xc6f6
    705c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7060:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7064:	5f323374 	svcpl	0x00323374
    7068:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    706c:	30457830 	subcc	r7, r5, r0, lsr r8
    7070:	31434631 	cmpcc	r3, r1, lsr r6
    7074:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    7078:	02e10100 	rsceq	r0, r1, #0, 2
    707c:	534b4c43 	movtpl	r4, #48195	; 0xbc43
    7080:	45534352 	ldrbmi	r4, [r3, #-850]	; 0xfffffcae
    7084:	2a28204c 	bcs	a0f1bc <__mprec_tinytens+0x9ea94c>
    7088:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 6ff0 <f_rename+0x8c>
    708c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    7090:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    7094:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    7098:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    709c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    70a0:	43463130 	movtmi	r3, #24880	; 0x6130
    70a4:	29433031 	stmdbcs	r3, {r0, r4, r5, ip, sp}^
    70a8:	e2010029 	and	r0, r1, #41	; 0x29
    70ac:	4c435002 	mcrrmi	0, 0, r5, r3, cr2
    70b0:	4c45534b 	mcrrmi	3, 4, r5, r5, cr11
    70b4:	28202820 	stmdacs	r0!, {r5, fp, sp}
    70b8:	616c6f76 	smcvs	50934	; 0xc6f6
    70bc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    70c0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    70c4:	5f323374 	svcpl	0x00323374
    70c8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    70cc:	30457830 	subcc	r7, r5, r0, lsr r8
    70d0:	31434631 	cmpcc	r3, r1, lsr r6
    70d4:	29293841 	stmdbcs	r9!, {r0, r6, fp, ip, sp}
    70d8:	02e30100 	rsceq	r0, r3, #0, 2
    70dc:	4b4c4350 	blmi	1317e24 <__mprec_tinytens+0x12f35b4>
    70e0:	304c4553 	subcc	r4, ip, r3, asr r5
    70e4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    70e8:	616c6f76 	smcvs	50934	; 0xc6f6
    70ec:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    70f0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    70f4:	5f323374 	svcpl	0x00323374
    70f8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    70fc:	30457830 	subcc	r7, r5, r0, lsr r8
    7100:	31434631 	cmpcc	r3, r1, lsr r6
    7104:	29293841 	stmdbcs	r9!, {r0, r6, fp, ip, sp}
    7108:	02e40100 	rsceq	r0, r4, #0, 2
    710c:	4b4c4350 	blmi	1317e54 <__mprec_tinytens+0x12f35e4>
    7110:	314c4553 	cmpcc	ip, r3, asr r5
    7114:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7118:	616c6f76 	smcvs	50934	; 0xc6f6
    711c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7120:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7124:	5f323374 	svcpl	0x00323374
    7128:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    712c:	30457830 	subcc	r7, r5, r0, lsr r8
    7130:	31434631 	cmpcc	r3, r1, lsr r6
    7134:	29294341 	stmdbcs	r9!, {r0, r6, r8, r9, lr}
    7138:	02e60100 	rsceq	r0, r6, #0, 2
    713c:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    7140:	2820544e 	stmdacs	r0!, {r1, r2, r3, r6, sl, ip, lr}
    7144:	6f76282a 	svcvs	0x0076282a
    7148:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    714c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    7150:	33746e69 	cmncc	r4, #1680	; 0x690
    7154:	2a745f32 	bcs	1d1ee24 <__mprec_tinytens+0x1cfa5b4>
    7158:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    715c:	46313045 	ldrtmi	r3, [r1], -r5, asr #32
    7160:	30343143 	eorscc	r3, r4, r3, asr #2
    7164:	01002929 	tsteq	r0, r9, lsr #18
    7168:	4e4902e7 	cdpmi	2, 4, cr0, cr9, cr7, {7}
    716c:	4b415754 	blmi	105cec4 <__mprec_tinytens+0x1038654>
    7170:	2a282045 	bcs	a0f28c <__mprec_tinytens+0x9eaa1c>
    7174:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 70dc <f_rename+0x178>
    7178:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    717c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    7180:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    7184:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    7188:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    718c:	43463130 	movtmi	r3, #24880	; 0x6130
    7190:	29343431 	ldmdbcs	r4!, {r0, r4, r5, sl, ip, sp}
    7194:	e8010029 	stmda	r1, {r0, r3, r5}
    7198:	54584502 	ldrbpl	r4, [r8], #-1282	; 0xfffffafe
    719c:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    71a0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    71a4:	616c6f76 	smcvs	50934	; 0xc6f6
    71a8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    71ac:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    71b0:	5f323374 	svcpl	0x00323374
    71b4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    71b8:	30457830 	subcc	r7, r5, r0, lsr r8
    71bc:	31434631 	cmpcc	r3, r1, lsr r6
    71c0:	29293834 	stmdbcs	r9!, {r2, r4, r5, fp, ip, sp}
    71c4:	02e90100 	rsceq	r0, r9, #0, 2
    71c8:	50545845 	subspl	r5, r4, r5, asr #16
    71cc:	52414c4f 	subpl	r4, r1, #20224	; 0x4f00
    71d0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    71d4:	616c6f76 	smcvs	50934	; 0xc6f6
    71d8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    71dc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    71e0:	5f323374 	svcpl	0x00323374
    71e4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    71e8:	30457830 	subcc	r7, r5, r0, lsr r8
    71ec:	31434631 	cmpcc	r3, r1, lsr r6
    71f0:	29294334 	stmdbcs	r9!, {r2, r4, r5, r8, r9, lr}
    71f4:	02eb0100 	rsceq	r0, fp, #0, 2
    71f8:	52495352 	subpl	r5, r9, #1207959553	; 0x48000001
    71fc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7200:	616c6f76 	smcvs	50934	; 0xc6f6
    7204:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7208:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    720c:	5f323374 	svcpl	0x00323374
    7210:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7214:	30457830 	subcc	r7, r5, r0, lsr r8
    7218:	31434631 	cmpcc	r3, r1, lsr r6
    721c:	29293038 	stmdbcs	r9!, {r3, r4, r5, ip, sp}
    7220:	02ed0100 	rsceq	r0, sp, #0, 2
    7224:	52505343 	subspl	r5, r0, #201326593	; 0xc000001
    7228:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    722c:	616c6f76 	smcvs	50934	; 0xc6f6
    7230:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7234:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7238:	5f323374 	svcpl	0x00323374
    723c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7240:	30457830 	subcc	r7, r5, r0, lsr r8
    7244:	31434631 	cmpcc	r3, r1, lsr r6
    7248:	29293438 	stmdbcs	r9!, {r3, r4, r5, sl, ip, sp}
    724c:	02ef0100 	rsceq	r0, pc, #0, 2
    7250:	43424841 	movtmi	r4, #10305	; 0x2841
    7254:	20314746 	eorscs	r4, r1, r6, asr #14
    7258:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    725c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    7260:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7264:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7268:	745f3233 	ldrbvc	r3, [pc], #-563	; 7270 <f_getlabel+0x8>
    726c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    7270:	31304578 	teqcc	r0, r8, ror r5
    7274:	38314346 	ldmdacc	r1!, {r1, r2, r6, r8, r9, lr}
    7278:	00292938 	eoreq	r2, r9, r8, lsr r9
    727c:	4102f001 	tstmi	r2, r1	; <UNPREDICTABLE>
    7280:	46434248 	strbmi	r4, [r3], -r8, asr #4
    7284:	28203247 	stmdacs	r0!, {r0, r1, r2, r6, r9, ip, sp}
    7288:	6f76282a 	svcvs	0x0076282a
    728c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    7290:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    7294:	33746e69 	cmncc	r4, #1680	; 0x690
    7298:	2a745f32 	bcs	1d1ef68 <__mprec_tinytens+0x1cfa6f8>
    729c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    72a0:	46313045 	ldrtmi	r3, [r1], -r5, asr #32
    72a4:	43383143 	teqmi	r8, #-1073741808	; 0xc0000010
    72a8:	01002929 	tsteq	r0, r9, lsr #18
    72ac:	435302f2 	cmpmi	r3, #536870927	; 0x2000000f
    72b0:	2a282053 	bcs	a0f404 <__mprec_tinytens+0x9eab94>
    72b4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 721c <f_utime+0x58>
    72b8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    72bc:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    72c0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    72c4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    72c8:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    72cc:	43463130 	movtmi	r3, #24880	; 0x6130
    72d0:	29304131 	ldmdbcs	r0!, {r0, r4, r5, r8, lr}
    72d4:	f4010029 	vst4.8	{d0-d3}, [r1 :128], r9
    72d8:	434d4502 	movtmi	r4, #54530	; 0xd502
    72dc:	5254435f 	subspl	r4, r4, #2080374785	; 0x7c000001
    72e0:	2a28204c 	bcs	a0f418 <__mprec_tinytens+0x9eaba8>
    72e4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 724c <f_utime+0x88>
    72e8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    72ec:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    72f0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    72f4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    72f8:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    72fc:	38304546 	ldmdacc	r0!, {r1, r2, r6, r8, sl, lr}
    7300:	29303030 	ldmdbcs	r0!, {r4, r5, ip, sp}
    7304:	f5010029 			; <UNDEFINED> instruction: 0xf5010029
    7308:	434d4502 	movtmi	r4, #54530	; 0xd502
    730c:	4154535f 	cmpmi	r4, pc, asr r3
    7310:	2a282054 	bcs	a0f468 <__mprec_tinytens+0x9eabf8>
    7314:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 727c <f_getlabel+0x14>
    7318:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    731c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    7320:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    7324:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    7328:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    732c:	38304546 	ldmdacc	r0!, {r1, r2, r6, r8, sl, lr}
    7330:	29343030 	ldmdbcs	r4!, {r4, r5, ip, sp}
    7334:	f6010029 			; <UNDEFINED> instruction: 0xf6010029
    7338:	434d4502 	movtmi	r4, #54530	; 0xd502
    733c:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
    7340:	20474946 	subcs	r4, r7, r6, asr #18
    7344:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    7348:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    734c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7350:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7354:	745f3233 	ldrbvc	r3, [pc], #-563	; 735c <f_getlabel+0xf4>
    7358:	3028292a 	eorcc	r2, r8, sl, lsr #18
    735c:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    7360:	30303830 	eorscc	r3, r0, r0, lsr r8
    7364:	00292938 	eoreq	r2, r9, r8, lsr r9
    7368:	4502f801 	strmi	pc, [r2, #-2049]	; 0xfffff7ff
    736c:	445f434d 	ldrbmi	r4, [pc], #-845	; 7374 <f_getlabel+0x10c>
    7370:	435f4e59 	cmpmi	pc, #1424	; 0x590
    7374:	204c5254 	subcs	r5, ip, r4, asr r2
    7378:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    737c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    7380:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7384:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7388:	745f3233 	ldrbvc	r3, [pc], #-563	; 7390 <f_getlabel+0x128>
    738c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    7390:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    7394:	32303830 	eorscc	r3, r0, #48, 16	; 0x300000
    7398:	00292930 	eoreq	r2, r9, r0, lsr r9
    739c:	4502f901 	strmi	pc, [r2, #-2305]	; 0xfffff6ff
    73a0:	445f434d 	ldrbmi	r4, [pc], #-845	; 73a8 <f_setlabel+0x4>
    73a4:	525f4e59 	subspl	r4, pc, #1424	; 0x590
    73a8:	20485346 	subcs	r5, r8, r6, asr #6
    73ac:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    73b0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    73b4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    73b8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    73bc:	745f3233 	ldrbvc	r3, [pc], #-563	; 73c4 <f_setlabel+0x20>
    73c0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    73c4:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    73c8:	32303830 	eorscc	r3, r0, #48, 16	; 0x300000
    73cc:	00292934 	eoreq	r2, r9, r4, lsr r9
    73d0:	4502fa01 	strmi	pc, [r2, #-2561]	; 0xfffff5ff
    73d4:	445f434d 	ldrbmi	r4, [pc], #-845	; 73dc <f_setlabel+0x38>
    73d8:	525f4e59 	subspl	r4, pc, #1424	; 0x590
    73dc:	46435f44 	strbmi	r5, [r3], -r4, asr #30
    73e0:	2a282047 	bcs	a0f504 <__mprec_tinytens+0x9eac94>
    73e4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 734c <f_getlabel+0xe4>
    73e8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    73ec:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    73f0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    73f4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    73f8:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    73fc:	38304546 	ldmdacc	r0!, {r1, r2, r6, r8, sl, lr}
    7400:	29383230 	ldmdbcs	r8!, {r4, r5, r9, ip, sp}
    7404:	fb010029 	blx	474b2 <__mprec_tinytens+0x22c42>
    7408:	434d4502 	movtmi	r4, #54530	; 0xd502
    740c:	4e59445f 	mrcmi	4, 2, r4, cr9, cr15, {2}
    7410:	2050525f 	subscs	r5, r0, pc, asr r2
    7414:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    7418:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    741c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7420:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7424:	745f3233 	ldrbvc	r3, [pc], #-563	; 742c <f_setlabel+0x88>
    7428:	3028292a 	eorcc	r2, r8, sl, lsr #18
    742c:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    7430:	33303830 	teqcc	r0, #48, 16	; 0x300000
    7434:	00292930 	eoreq	r2, r9, r0, lsr r9
    7438:	4502fc01 	strmi	pc, [r2, #-3073]	; 0xfffff3ff
    743c:	445f434d 	ldrbmi	r4, [pc], #-845	; 7444 <f_setlabel+0xa0>
    7440:	525f4e59 	subspl	r4, pc, #1424	; 0x590
    7444:	28205341 	stmdacs	r0!, {r0, r6, r8, r9, ip, lr}
    7448:	6f76282a 	svcvs	0x0076282a
    744c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    7450:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    7454:	33746e69 	cmncc	r4, #1680	; 0x690
    7458:	2a745f32 	bcs	1d1f128 <__mprec_tinytens+0x1cfa8b8>
    745c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    7460:	30454646 	subcc	r4, r5, r6, asr #12
    7464:	34333038 	ldrtcc	r3, [r3], #-56	; 0xffffffc8
    7468:	01002929 	tsteq	r0, r9, lsr #18
    746c:	4d4502fd 	sfmmi	f0, 2, [r5, #-1012]	; 0xfffffc0c
    7470:	59445f43 	stmdbpl	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    7474:	52535f4e 	subspl	r5, r3, #312	; 0x138
    7478:	28205845 	stmdacs	r0!, {r0, r2, r6, fp, ip, lr}
    747c:	6f76282a 	svcvs	0x0076282a
    7480:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    7484:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    7488:	33746e69 	cmncc	r4, #1680	; 0x690
    748c:	2a745f32 	bcs	1d1f15c <__mprec_tinytens+0x1cfa8ec>
    7490:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    7494:	30454646 	subcc	r4, r5, r6, asr #12
    7498:	38333038 	ldmdacc	r3!, {r3, r4, r5, ip, sp}
    749c:	01002929 	tsteq	r0, r9, lsr #18
    74a0:	4d4502fe 	sfmmi	f0, 2, [r5, #-1016]	; 0xfffffc08
    74a4:	59445f43 	stmdbpl	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    74a8:	50415f4e 	subpl	r5, r1, lr, asr #30
    74ac:	2a282052 	bcs	a0f5fc <__mprec_tinytens+0x9ead8c>
    74b0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 7418 <f_setlabel+0x74>
    74b4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    74b8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    74bc:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    74c0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    74c4:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    74c8:	38304546 	ldmdacc	r0!, {r1, r2, r6, r8, sl, lr}
    74cc:	29433330 	stmdbcs	r3, {r4, r5, r8, r9, ip, sp}^
    74d0:	ff010029 			; <UNDEFINED> instruction: 0xff010029
    74d4:	434d4502 	movtmi	r4, #54530	; 0xd502
    74d8:	4e59445f 	mrcmi	4, 2, r4, cr9, cr15, {2}
    74dc:	4c41445f 	cfstrdmi	mvd4, [r1], {95}	; 0x5f
    74e0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    74e4:	616c6f76 	smcvs	50934	; 0xc6f6
    74e8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    74ec:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    74f0:	5f323374 	svcpl	0x00323374
    74f4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    74f8:	46467830 			; <UNDEFINED> instruction: 0x46467830
    74fc:	30383045 	eorscc	r3, r8, r5, asr #32
    7500:	29293034 	stmdbcs	r9!, {r2, r4, r5, ip, sp}
    7504:	03800100 	orreq	r0, r0, #0, 2
    7508:	5f434d45 	svcpl	0x00434d45
    750c:	5f4e5944 	svcpl	0x004e5944
    7510:	28205257 	stmdacs	r0!, {r0, r1, r2, r4, r6, r9, ip, lr}
    7514:	6f76282a 	svcvs	0x0076282a
    7518:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    751c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    7520:	33746e69 	cmncc	r4, #1680	; 0x690
    7524:	2a745f32 	bcs	1d1f1f4 <__mprec_tinytens+0x1cfa984>
    7528:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    752c:	30454646 	subcc	r4, r5, r6, asr #12
    7530:	34343038 	ldrtcc	r3, [r4], #-56	; 0xffffffc8
    7534:	01002929 	tsteq	r0, r9, lsr #18
    7538:	4d450381 	stclmi	3, cr0, [r5, #-516]	; 0xfffffdfc
    753c:	59445f43 	stmdbpl	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    7540:	43525f4e 	cmpmi	r2, #312	; 0x138
    7544:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7548:	616c6f76 	smcvs	50934	; 0xc6f6
    754c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7550:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7554:	5f323374 	svcpl	0x00323374
    7558:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    755c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7560:	30383045 	eorscc	r3, r8, r5, asr #32
    7564:	29293834 	stmdbcs	r9!, {r2, r4, r5, fp, ip, sp}
    7568:	03820100 	orreq	r0, r2, #0, 2
    756c:	5f434d45 	svcpl	0x00434d45
    7570:	5f4e5944 	svcpl	0x004e5944
    7574:	20434652 	subcs	r4, r3, r2, asr r6
    7578:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    757c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    7580:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7584:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7588:	745f3233 	ldrbvc	r3, [pc], #-563	; 7590 <f_setlabel+0x1ec>
    758c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    7590:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    7594:	34303830 	ldrtcc	r3, [r0], #-2096	; 0xfffff7d0
    7598:	00292943 	eoreq	r2, r9, r3, asr #18
    759c:	45038301 	strmi	r8, [r3, #-769]	; 0xfffffcff
    75a0:	445f434d 	ldrbmi	r4, [pc], #-845	; 75a8 <f_setlabel+0x204>
    75a4:	585f4e59 	ldmdapl	pc, {r0, r3, r4, r6, r9, sl, fp, lr}^	; <UNPREDICTABLE>
    75a8:	28205253 	stmdacs	r0!, {r0, r1, r4, r6, r9, ip, lr}
    75ac:	6f76282a 	svcvs	0x0076282a
    75b0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    75b4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    75b8:	33746e69 	cmncc	r4, #1680	; 0x690
    75bc:	2a745f32 	bcs	1d1f28c <__mprec_tinytens+0x1cfaa1c>
    75c0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    75c4:	30454646 	subcc	r4, r5, r6, asr #12
    75c8:	30353038 	eorscc	r3, r5, r8, lsr r0
    75cc:	01002929 	tsteq	r0, r9, lsr #18
    75d0:	4d450384 	stclmi	3, cr0, [r5, #-528]	; 0xfffffdf0
    75d4:	59445f43 	stmdbpl	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    75d8:	52525f4e 	subspl	r5, r2, #312	; 0x138
    75dc:	2a282044 	bcs	a0f6f4 <__mprec_tinytens+0x9eae84>
    75e0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 7548 <f_setlabel+0x1a4>
    75e4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    75e8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    75ec:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    75f0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    75f4:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    75f8:	38304546 	ldmdacc	r0!, {r1, r2, r6, r8, sl, lr}
    75fc:	29343530 	ldmdbcs	r4!, {r4, r5, r8, sl, ip, sp}
    7600:	85010029 	strhi	r0, [r1, #-41]	; 0xffffffd7
    7604:	434d4503 	movtmi	r4, #54531	; 0xd503
    7608:	4e59445f 	mrcmi	4, 2, r4, cr9, cr15, {2}
    760c:	44524d5f 	ldrbmi	r4, [r2], #-3423	; 0xfffff2a1
    7610:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7614:	616c6f76 	smcvs	50934	; 0xc6f6
    7618:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    761c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7620:	5f323374 	svcpl	0x00323374
    7624:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7628:	46467830 			; <UNDEFINED> instruction: 0x46467830
    762c:	30383045 	eorscc	r3, r8, r5, asr #32
    7630:	29293835 	stmdbcs	r9!, {r0, r2, r4, r5, fp, ip, sp}
    7634:	03870100 	orreq	r0, r7, #0, 2
    7638:	5f434d45 	svcpl	0x00434d45
    763c:	5f4e5944 	svcpl	0x004e5944
    7640:	30474643 	subcc	r4, r7, r3, asr #12
    7644:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7648:	616c6f76 	smcvs	50934	; 0xc6f6
    764c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7650:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7654:	5f323374 	svcpl	0x00323374
    7658:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    765c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7660:	31383045 	teqcc	r8, r5, asr #32
    7664:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    7668:	03880100 	orreq	r0, r8, #0, 2
    766c:	5f434d45 	svcpl	0x00434d45
    7670:	5f4e5944 	svcpl	0x004e5944
    7674:	43534152 	cmpmi	r3, #-2147483628	; 0x80000014
    7678:	20305341 	eorscs	r5, r0, r1, asr #6
    767c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    7680:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    7684:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7688:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    768c:	745f3233 	ldrbvc	r3, [pc], #-563	; 7694 <f_setlabel+0x2f0>
    7690:	3028292a 	eorcc	r2, r8, sl, lsr #18
    7694:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    7698:	30313830 	eorscc	r3, r1, r0, lsr r8
    769c:	00292934 	eoreq	r2, r9, r4, lsr r9
    76a0:	45038901 	strmi	r8, [r3, #-2305]	; 0xfffff6ff
    76a4:	445f434d 	ldrbmi	r4, [pc], #-845	; 76ac <f_forward+0x8>
    76a8:	435f4e59 	cmpmi	pc, #1424	; 0x590
    76ac:	20314746 	eorscs	r4, r1, r6, asr #14
    76b0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    76b4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    76b8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    76bc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    76c0:	745f3233 	ldrbvc	r3, [pc], #-563	; 76c8 <f_forward+0x24>
    76c4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    76c8:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    76cc:	34313830 	ldrtcc	r3, [r1], #-2096	; 0xfffff7d0
    76d0:	00292930 	eoreq	r2, r9, r0, lsr r9
    76d4:	45038a01 	strmi	r8, [r3, #-2561]	; 0xfffff5ff
    76d8:	445f434d 	ldrbmi	r4, [pc], #-845	; 76e0 <f_forward+0x3c>
    76dc:	525f4e59 	subspl	r4, pc, #1424	; 0x590
    76e0:	41435341 	cmpmi	r3, r1, asr #6
    76e4:	28203153 	stmdacs	r0!, {r0, r1, r4, r6, r8, ip, sp}
    76e8:	6f76282a 	svcvs	0x0076282a
    76ec:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    76f0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    76f4:	33746e69 	cmncc	r4, #1680	; 0x690
    76f8:	2a745f32 	bcs	1d1f3c8 <__mprec_tinytens+0x1cfab58>
    76fc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    7700:	30454646 	subcc	r4, r5, r6, asr #12
    7704:	34343138 	ldrtcc	r3, [r4], #-312	; 0xfffffec8
    7708:	01002929 	tsteq	r0, r9, lsr #18
    770c:	4d45038b 	stclmi	3, cr0, [r5, #-556]	; 0xfffffdd4
    7710:	59445f43 	stmdbpl	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    7714:	46435f4e 	strbmi	r5, [r3], -lr, asr #30
    7718:	28203247 	stmdacs	r0!, {r0, r1, r2, r6, r9, ip, sp}
    771c:	6f76282a 	svcvs	0x0076282a
    7720:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    7724:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    7728:	33746e69 	cmncc	r4, #1680	; 0x690
    772c:	2a745f32 	bcs	1d1f3fc <__mprec_tinytens+0x1cfab8c>
    7730:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    7734:	30454646 	subcc	r4, r5, r6, asr #12
    7738:	30363138 	eorscc	r3, r6, r8, lsr r1
    773c:	01002929 	tsteq	r0, r9, lsr #18
    7740:	4d45038c 	stclmi	3, cr0, [r5, #-560]	; 0xfffffdd0
    7744:	59445f43 	stmdbpl	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    7748:	41525f4e 	cmpmi	r2, lr, asr #30
    774c:	53414353 	movtpl	r4, #4947	; 0x1353
    7750:	2a282032 	bcs	a0f820 <__mprec_tinytens+0x9eafb0>
    7754:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 76bc <f_forward+0x18>
    7758:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    775c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    7760:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    7764:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    7768:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    776c:	38304546 	ldmdacc	r0!, {r1, r2, r6, r8, sl, lr}
    7770:	29343631 	ldmdbcs	r4!, {r0, r4, r5, r9, sl, ip, sp}
    7774:	8d010029 	stchi	0, cr0, [r1, #-164]	; 0xffffff5c
    7778:	434d4503 	movtmi	r4, #54531	; 0xd503
    777c:	4e59445f 	mrcmi	4, 2, r4, cr9, cr15, {2}
    7780:	4746435f 	smlsldmi	r4, r6, pc, r3	; <UNPREDICTABLE>
    7784:	2a282033 	bcs	a0f858 <__mprec_tinytens+0x9eafe8>
    7788:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 76f0 <f_forward+0x4c>
    778c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    7790:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    7794:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    7798:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    779c:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    77a0:	38304546 	ldmdacc	r0!, {r1, r2, r6, r8, sl, lr}
    77a4:	29303831 	ldmdbcs	r0!, {r0, r4, r5, fp, ip, sp}
    77a8:	8e010029 	cdphi	0, 0, cr0, cr1, cr9, {1}
    77ac:	434d4503 	movtmi	r4, #54531	; 0xd503
    77b0:	4e59445f 	mrcmi	4, 2, r4, cr9, cr15, {2}
    77b4:	5341525f 	movtpl	r5, #4703	; 0x125f
    77b8:	33534143 	cmpcc	r3, #-1073741808	; 0xc0000010
    77bc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    77c0:	616c6f76 	smcvs	50934	; 0xc6f6
    77c4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    77c8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    77cc:	5f323374 	svcpl	0x00323374
    77d0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    77d4:	46467830 			; <UNDEFINED> instruction: 0x46467830
    77d8:	31383045 	teqcc	r8, r5, asr #32
    77dc:	29293438 	stmdbcs	r9!, {r3, r4, r5, sl, ip, sp}
    77e0:	03900100 	orrseq	r0, r0, #0, 2
    77e4:	5f434d45 	svcpl	0x00434d45
    77e8:	5f415453 	svcpl	0x00415453
    77ec:	30474643 	subcc	r4, r7, r3, asr #12
    77f0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    77f4:	616c6f76 	smcvs	50934	; 0xc6f6
    77f8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    77fc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7800:	5f323374 	svcpl	0x00323374
    7804:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7808:	46467830 			; <UNDEFINED> instruction: 0x46467830
    780c:	32383045 	eorscc	r3, r8, #69	; 0x45
    7810:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    7814:	03910100 	orrseq	r0, r1, #0, 2
    7818:	5f434d45 	svcpl	0x00434d45
    781c:	5f415453 	svcpl	0x00415453
    7820:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7824:	304e4557 	subcc	r4, lr, r7, asr r5
    7828:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    782c:	616c6f76 	smcvs	50934	; 0xc6f6
    7830:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7834:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7838:	5f323374 	svcpl	0x00323374
    783c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7840:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7844:	32383045 	eorscc	r3, r8, #69	; 0x45
    7848:	29293430 	stmdbcs	r9!, {r4, r5, sl, ip, sp}
    784c:	03920100 	orrseq	r0, r2, #0, 2
    7850:	5f434d45 	svcpl	0x00434d45
    7854:	5f415453 	svcpl	0x00415453
    7858:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    785c:	304e454f 	subcc	r4, lr, pc, asr #10
    7860:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7864:	616c6f76 	smcvs	50934	; 0xc6f6
    7868:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    786c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7870:	5f323374 	svcpl	0x00323374
    7874:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7878:	46467830 			; <UNDEFINED> instruction: 0x46467830
    787c:	32383045 	eorscc	r3, r8, #69	; 0x45
    7880:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    7884:	03930100 	orrseq	r0, r3, #0, 2
    7888:	5f434d45 	svcpl	0x00434d45
    788c:	5f415453 	svcpl	0x00415453
    7890:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7894:	20304452 	eorscs	r4, r0, r2, asr r4
    7898:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    789c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    78a0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    78a4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    78a8:	745f3233 	ldrbvc	r3, [pc], #-563	; 78b0 <f_mkfs+0x50>
    78ac:	3028292a 	eorcc	r2, r8, sl, lsr #18
    78b0:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    78b4:	30323830 	eorscc	r3, r2, r0, lsr r8
    78b8:	00292943 	eoreq	r2, r9, r3, asr #18
    78bc:	45039401 	strmi	r9, [r3, #-1025]	; 0xfffffbff
    78c0:	535f434d 	cmppl	pc, #872415233	; 0x34000001
    78c4:	575f4154 			; <UNDEFINED> instruction: 0x575f4154
    78c8:	50544941 	subspl	r4, r4, r1, asr #18
    78cc:	30454741 	subcc	r4, r5, r1, asr #14
    78d0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    78d4:	616c6f76 	smcvs	50934	; 0xc6f6
    78d8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    78dc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    78e0:	5f323374 	svcpl	0x00323374
    78e4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    78e8:	46467830 			; <UNDEFINED> instruction: 0x46467830
    78ec:	32383045 	eorscc	r3, r8, #69	; 0x45
    78f0:	29293031 	stmdbcs	r9!, {r0, r4, r5, ip, sp}
    78f4:	03950100 	orrseq	r0, r5, #0, 2
    78f8:	5f434d45 	svcpl	0x00434d45
    78fc:	5f415453 	svcpl	0x00415453
    7900:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7904:	20305257 	eorscs	r5, r0, r7, asr r2
    7908:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    790c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    7910:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7914:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7918:	745f3233 	ldrbvc	r3, [pc], #-563	; 7920 <f_mkfs+0xc0>
    791c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    7920:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    7924:	31323830 	teqcc	r2, r0, lsr r8
    7928:	00292934 	eoreq	r2, r9, r4, lsr r9
    792c:	45039601 	strmi	r9, [r3, #-1537]	; 0xfffff9ff
    7930:	535f434d 	cmppl	pc, #872415233	; 0x34000001
    7934:	575f4154 			; <UNDEFINED> instruction: 0x575f4154
    7938:	54544941 	ldrbpl	r4, [r4], #-2369	; 0xfffff6bf
    793c:	304e5255 	subcc	r5, lr, r5, asr r2
    7940:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7944:	616c6f76 	smcvs	50934	; 0xc6f6
    7948:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    794c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7950:	5f323374 	svcpl	0x00323374
    7954:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7958:	46467830 			; <UNDEFINED> instruction: 0x46467830
    795c:	32383045 	eorscc	r3, r8, #69	; 0x45
    7960:	29293831 	stmdbcs	r9!, {r0, r4, r5, fp, ip, sp}
    7964:	03980100 	orrseq	r0, r8, #0, 2
    7968:	5f434d45 	svcpl	0x00434d45
    796c:	5f415453 	svcpl	0x00415453
    7970:	31474643 	cmpcc	r7, r3, asr #12
    7974:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7978:	616c6f76 	smcvs	50934	; 0xc6f6
    797c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7980:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7984:	5f323374 	svcpl	0x00323374
    7988:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    798c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7990:	32383045 	eorscc	r3, r8, #69	; 0x45
    7994:	29293032 	stmdbcs	r9!, {r1, r4, r5, ip, sp}
    7998:	03990100 	orrseq	r0, r9, #0, 2
    799c:	5f434d45 	svcpl	0x00434d45
    79a0:	5f415453 	svcpl	0x00415453
    79a4:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    79a8:	314e4557 	cmpcc	lr, r7, asr r5
    79ac:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    79b0:	616c6f76 	smcvs	50934	; 0xc6f6
    79b4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    79b8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    79bc:	5f323374 	svcpl	0x00323374
    79c0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    79c4:	46467830 			; <UNDEFINED> instruction: 0x46467830
    79c8:	32383045 	eorscc	r3, r8, #69	; 0x45
    79cc:	29293432 	stmdbcs	r9!, {r1, r4, r5, sl, ip, sp}
    79d0:	039a0100 	orrseq	r0, sl, #0, 2
    79d4:	5f434d45 	svcpl	0x00434d45
    79d8:	5f415453 	svcpl	0x00415453
    79dc:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    79e0:	314e454f 	cmpcc	lr, pc, asr #10
    79e4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    79e8:	616c6f76 	smcvs	50934	; 0xc6f6
    79ec:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    79f0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    79f4:	5f323374 	svcpl	0x00323374
    79f8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    79fc:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7a00:	32383045 	eorscc	r3, r8, #69	; 0x45
    7a04:	29293832 	stmdbcs	r9!, {r1, r4, r5, fp, ip, sp}
    7a08:	039b0100 	orrseq	r0, fp, #0, 2
    7a0c:	5f434d45 	svcpl	0x00434d45
    7a10:	5f415453 	svcpl	0x00415453
    7a14:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7a18:	20314452 	eorscs	r4, r1, r2, asr r4
    7a1c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    7a20:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    7a24:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7a28:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7a2c:	745f3233 	ldrbvc	r3, [pc], #-563	; 7a34 <f_mkfs+0x1d4>
    7a30:	3028292a 	eorcc	r2, r8, sl, lsr #18
    7a34:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    7a38:	32323830 	eorscc	r3, r2, #48, 16	; 0x300000
    7a3c:	00292943 	eoreq	r2, r9, r3, asr #18
    7a40:	45039c01 	strmi	r9, [r3, #-3073]	; 0xfffff3ff
    7a44:	535f434d 	cmppl	pc, #872415233	; 0x34000001
    7a48:	575f4154 			; <UNDEFINED> instruction: 0x575f4154
    7a4c:	50544941 	subspl	r4, r4, r1, asr #18
    7a50:	31454741 	cmpcc	r5, r1, asr #14
    7a54:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7a58:	616c6f76 	smcvs	50934	; 0xc6f6
    7a5c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7a60:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7a64:	5f323374 	svcpl	0x00323374
    7a68:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7a6c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7a70:	32383045 	eorscc	r3, r8, #69	; 0x45
    7a74:	29293033 	stmdbcs	r9!, {r0, r1, r4, r5, ip, sp}
    7a78:	039d0100 	orrseq	r0, sp, #0, 2
    7a7c:	5f434d45 	svcpl	0x00434d45
    7a80:	5f415453 	svcpl	0x00415453
    7a84:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7a88:	20315257 	eorscs	r5, r1, r7, asr r2
    7a8c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    7a90:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    7a94:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7a98:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7a9c:	745f3233 	ldrbvc	r3, [pc], #-563	; 7aa4 <f_mkfs+0x244>
    7aa0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    7aa4:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    7aa8:	33323830 	teqcc	r2, #48, 16	; 0x300000
    7aac:	00292934 	eoreq	r2, r9, r4, lsr r9
    7ab0:	45039e01 	strmi	r9, [r3, #-3585]	; 0xfffff1ff
    7ab4:	535f434d 	cmppl	pc, #872415233	; 0x34000001
    7ab8:	575f4154 			; <UNDEFINED> instruction: 0x575f4154
    7abc:	54544941 	ldrbpl	r4, [r4], #-2369	; 0xfffff6bf
    7ac0:	314e5255 	cmpcc	lr, r5, asr r2
    7ac4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7ac8:	616c6f76 	smcvs	50934	; 0xc6f6
    7acc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7ad0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7ad4:	5f323374 	svcpl	0x00323374
    7ad8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7adc:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7ae0:	32383045 	eorscc	r3, r8, #69	; 0x45
    7ae4:	29293833 	stmdbcs	r9!, {r0, r1, r4, r5, fp, ip, sp}
    7ae8:	03a00100 	moveq	r0, #0, 2
    7aec:	5f434d45 	svcpl	0x00434d45
    7af0:	5f415453 	svcpl	0x00415453
    7af4:	32474643 	subcc	r4, r7, #70254592	; 0x4300000
    7af8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7afc:	616c6f76 	smcvs	50934	; 0xc6f6
    7b00:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7b04:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7b08:	5f323374 	svcpl	0x00323374
    7b0c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7b10:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7b14:	32383045 	eorscc	r3, r8, #69	; 0x45
    7b18:	29293034 	stmdbcs	r9!, {r2, r4, r5, ip, sp}
    7b1c:	03a10100 			; <UNDEFINED> instruction: 0x03a10100
    7b20:	5f434d45 	svcpl	0x00434d45
    7b24:	5f415453 	svcpl	0x00415453
    7b28:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7b2c:	324e4557 	subcc	r4, lr, #364904448	; 0x15c00000
    7b30:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7b34:	616c6f76 	smcvs	50934	; 0xc6f6
    7b38:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7b3c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7b40:	5f323374 	svcpl	0x00323374
    7b44:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7b48:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7b4c:	32383045 	eorscc	r3, r8, #69	; 0x45
    7b50:	29293434 	stmdbcs	r9!, {r2, r4, r5, sl, ip, sp}
    7b54:	03a20100 			; <UNDEFINED> instruction: 0x03a20100
    7b58:	5f434d45 	svcpl	0x00434d45
    7b5c:	5f415453 	svcpl	0x00415453
    7b60:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7b64:	324e454f 	subcc	r4, lr, #331350016	; 0x13c00000
    7b68:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7b6c:	616c6f76 	smcvs	50934	; 0xc6f6
    7b70:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7b74:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7b78:	5f323374 	svcpl	0x00323374
    7b7c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7b80:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7b84:	32383045 	eorscc	r3, r8, #69	; 0x45
    7b88:	29293834 	stmdbcs	r9!, {r2, r4, r5, fp, ip, sp}
    7b8c:	03a30100 			; <UNDEFINED> instruction: 0x03a30100
    7b90:	5f434d45 	svcpl	0x00434d45
    7b94:	5f415453 	svcpl	0x00415453
    7b98:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7b9c:	20324452 	eorscs	r4, r2, r2, asr r4
    7ba0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    7ba4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    7ba8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7bac:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7bb0:	745f3233 	ldrbvc	r3, [pc], #-563	; 7bb8 <f_mkfs+0x358>
    7bb4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    7bb8:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    7bbc:	34323830 	ldrtcc	r3, [r2], #-2096	; 0xfffff7d0
    7bc0:	00292943 	eoreq	r2, r9, r3, asr #18
    7bc4:	4503a401 	strmi	sl, [r3, #-1025]	; 0xfffffbff
    7bc8:	535f434d 	cmppl	pc, #872415233	; 0x34000001
    7bcc:	575f4154 			; <UNDEFINED> instruction: 0x575f4154
    7bd0:	50544941 	subspl	r4, r4, r1, asr #18
    7bd4:	32454741 	subcc	r4, r5, #17039360	; 0x1040000
    7bd8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7bdc:	616c6f76 	smcvs	50934	; 0xc6f6
    7be0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7be4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7be8:	5f323374 	svcpl	0x00323374
    7bec:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7bf0:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7bf4:	32383045 	eorscc	r3, r8, #69	; 0x45
    7bf8:	29293035 	stmdbcs	r9!, {r0, r2, r4, r5, ip, sp}
    7bfc:	03a50100 			; <UNDEFINED> instruction: 0x03a50100
    7c00:	5f434d45 	svcpl	0x00434d45
    7c04:	5f415453 	svcpl	0x00415453
    7c08:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7c0c:	20325257 	eorscs	r5, r2, r7, asr r2
    7c10:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    7c14:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    7c18:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7c1c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7c20:	745f3233 	ldrbvc	r3, [pc], #-563	; 7c28 <f_mkfs+0x3c8>
    7c24:	3028292a 	eorcc	r2, r8, sl, lsr #18
    7c28:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    7c2c:	35323830 	ldrcc	r3, [r2, #-2096]!	; 0xfffff7d0
    7c30:	00292934 	eoreq	r2, r9, r4, lsr r9
    7c34:	4503a601 	strmi	sl, [r3, #-1537]	; 0xfffff9ff
    7c38:	535f434d 	cmppl	pc, #872415233	; 0x34000001
    7c3c:	575f4154 			; <UNDEFINED> instruction: 0x575f4154
    7c40:	54544941 	ldrbpl	r4, [r4], #-2369	; 0xfffff6bf
    7c44:	324e5255 	subcc	r5, lr, #1342177285	; 0x50000005
    7c48:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7c4c:	616c6f76 	smcvs	50934	; 0xc6f6
    7c50:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7c54:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7c58:	5f323374 	svcpl	0x00323374
    7c5c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7c60:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7c64:	32383045 	eorscc	r3, r8, #69	; 0x45
    7c68:	29293835 	stmdbcs	r9!, {r0, r2, r4, r5, fp, ip, sp}
    7c6c:	03a80100 			; <UNDEFINED> instruction: 0x03a80100
    7c70:	5f434d45 	svcpl	0x00434d45
    7c74:	5f415453 	svcpl	0x00415453
    7c78:	33474643 	movtcc	r4, #30275	; 0x7643
    7c7c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7c80:	616c6f76 	smcvs	50934	; 0xc6f6
    7c84:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7c88:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7c8c:	5f323374 	svcpl	0x00323374
    7c90:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7c94:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7c98:	32383045 	eorscc	r3, r8, #69	; 0x45
    7c9c:	29293036 	stmdbcs	r9!, {r1, r2, r4, r5, ip, sp}
    7ca0:	03a90100 			; <UNDEFINED> instruction: 0x03a90100
    7ca4:	5f434d45 	svcpl	0x00434d45
    7ca8:	5f415453 	svcpl	0x00415453
    7cac:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7cb0:	334e4557 	movtcc	r4, #58711	; 0xe557
    7cb4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7cb8:	616c6f76 	smcvs	50934	; 0xc6f6
    7cbc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7cc0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7cc4:	5f323374 	svcpl	0x00323374
    7cc8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7ccc:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7cd0:	32383045 	eorscc	r3, r8, #69	; 0x45
    7cd4:	29293436 	stmdbcs	r9!, {r1, r2, r4, r5, sl, ip, sp}
    7cd8:	03aa0100 			; <UNDEFINED> instruction: 0x03aa0100
    7cdc:	5f434d45 	svcpl	0x00434d45
    7ce0:	5f415453 	svcpl	0x00415453
    7ce4:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7ce8:	334e454f 	movtcc	r4, #58703	; 0xe54f
    7cec:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7cf0:	616c6f76 	smcvs	50934	; 0xc6f6
    7cf4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7cf8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7cfc:	5f323374 	svcpl	0x00323374
    7d00:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7d04:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7d08:	32383045 	eorscc	r3, r8, #69	; 0x45
    7d0c:	29293836 	stmdbcs	r9!, {r1, r2, r4, r5, fp, ip, sp}
    7d10:	03ab0100 			; <UNDEFINED> instruction: 0x03ab0100
    7d14:	5f434d45 	svcpl	0x00434d45
    7d18:	5f415453 	svcpl	0x00415453
    7d1c:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7d20:	20334452 	eorscs	r4, r3, r2, asr r4
    7d24:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    7d28:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    7d2c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7d30:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7d34:	745f3233 	ldrbvc	r3, [pc], #-563	; 7d3c <f_mkfs+0x4dc>
    7d38:	3028292a 	eorcc	r2, r8, sl, lsr #18
    7d3c:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    7d40:	36323830 			; <UNDEFINED> instruction: 0x36323830
    7d44:	00292943 	eoreq	r2, r9, r3, asr #18
    7d48:	4503ac01 	strmi	sl, [r3, #-3073]	; 0xfffff3ff
    7d4c:	535f434d 	cmppl	pc, #872415233	; 0x34000001
    7d50:	575f4154 			; <UNDEFINED> instruction: 0x575f4154
    7d54:	50544941 	subspl	r4, r4, r1, asr #18
    7d58:	33454741 	movtcc	r4, #22337	; 0x5741
    7d5c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7d60:	616c6f76 	smcvs	50934	; 0xc6f6
    7d64:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7d68:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7d6c:	5f323374 	svcpl	0x00323374
    7d70:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7d74:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7d78:	32383045 	eorscc	r3, r8, #69	; 0x45
    7d7c:	29293037 	stmdbcs	r9!, {r0, r1, r2, r4, r5, ip, sp}
    7d80:	03ad0100 			; <UNDEFINED> instruction: 0x03ad0100
    7d84:	5f434d45 	svcpl	0x00434d45
    7d88:	5f415453 	svcpl	0x00415453
    7d8c:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7d90:	20335257 	eorscs	r5, r3, r7, asr r2
    7d94:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    7d98:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    7d9c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7da0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7da4:	745f3233 	ldrbvc	r3, [pc], #-563	; 7dac <f_mkfs+0x54c>
    7da8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    7dac:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    7db0:	37323830 			; <UNDEFINED> instruction: 0x37323830
    7db4:	00292934 	eoreq	r2, r9, r4, lsr r9
    7db8:	4503ae01 	strmi	sl, [r3, #-3585]	; 0xfffff1ff
    7dbc:	535f434d 	cmppl	pc, #872415233	; 0x34000001
    7dc0:	575f4154 			; <UNDEFINED> instruction: 0x575f4154
    7dc4:	54544941 	ldrbpl	r4, [r4], #-2369	; 0xfffff6bf
    7dc8:	334e5255 	movtcc	r5, #57941	; 0xe255
    7dcc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7dd0:	616c6f76 	smcvs	50934	; 0xc6f6
    7dd4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7dd8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7ddc:	5f323374 	svcpl	0x00323374
    7de0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7de4:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7de8:	32383045 	eorscc	r3, r8, #69	; 0x45
    7dec:	29293837 	stmdbcs	r9!, {r0, r1, r2, r4, r5, fp, ip, sp}
    7df0:	03b00100 	movseq	r0, #0, 2
    7df4:	5f434d45 	svcpl	0x00434d45
    7df8:	5f415453 	svcpl	0x00415453
    7dfc:	5f545845 	svcpl	0x00545845
    7e00:	54494157 	strbpl	r4, [r9], #-343	; 0xfffffea9
    7e04:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7e08:	616c6f76 	smcvs	50934	; 0xc6f6
    7e0c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7e10:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7e14:	5f323374 	svcpl	0x00323374
    7e18:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7e1c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    7e20:	38383045 	ldmdacc	r8!, {r0, r2, r6, ip, sp}
    7e24:	29293038 	stmdbcs	r9!, {r3, r4, r5, ip, sp}
    7e28:	03b20100 			; <UNDEFINED> instruction: 0x03b20100
    7e2c:	52493054 	subpl	r3, r9, #84	; 0x54
    7e30:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7e34:	616c6f76 	smcvs	50934	; 0xc6f6
    7e38:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7e3c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7e40:	5f323374 	svcpl	0x00323374
    7e44:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7e48:	30457830 	subcc	r7, r5, r0, lsr r8
    7e4c:	30343030 	eorscc	r3, r4, r0, lsr r0
    7e50:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    7e54:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
    7e58:	43543054 	cmpmi	r4, #84	; 0x54
    7e5c:	2a282052 	bcs	a0ffac <__mprec_tinytens+0x9eb73c>
    7e60:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 7dc8 <f_mkfs+0x568>
    7e64:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    7e68:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    7e6c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    7e70:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    7e74:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    7e78:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    7e7c:	29343030 	ldmdbcs	r4!, {r4, r5, ip, sp}
    7e80:	b4010029 	strlt	r0, [r1], #-41	; 0xffffffd7
    7e84:	54305403 	ldrtpl	r5, [r0], #-1027	; 0xfffffbfd
    7e88:	2a282043 	bcs	a0ff9c <__mprec_tinytens+0x9eb72c>
    7e8c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 7df4 <f_mkfs+0x594>
    7e90:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    7e94:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    7e98:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    7e9c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    7ea0:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    7ea4:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    7ea8:	29383030 	ldmdbcs	r8!, {r4, r5, ip, sp}
    7eac:	b5010029 	strlt	r0, [r1, #-41]	; 0xffffffd7
    7eb0:	50305403 	eorspl	r5, r0, r3, lsl #8
    7eb4:	2a282052 	bcs	a10004 <__mprec_tinytens+0x9eb794>
    7eb8:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 7e20 <f_mkfs+0x5c0>
    7ebc:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    7ec0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    7ec4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    7ec8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    7ecc:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    7ed0:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    7ed4:	29433030 	stmdbcs	r3, {r4, r5, ip, sp}^
    7ed8:	b6010029 	strlt	r0, [r1], -r9, lsr #32
    7edc:	50305403 	eorspl	r5, r0, r3, lsl #8
    7ee0:	2a282043 	bcs	a0fff4 <__mprec_tinytens+0x9eb784>
    7ee4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 7e4c <f_mkfs+0x5ec>
    7ee8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    7eec:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    7ef0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    7ef4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    7ef8:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    7efc:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    7f00:	29303130 	ldmdbcs	r0!, {r4, r5, r8, ip, sp}
    7f04:	b7010029 	strlt	r0, [r1, -r9, lsr #32]
    7f08:	4d305403 	cfldrsmi	mvf5, [r0, #-12]!
    7f0c:	28205243 	stmdacs	r0!, {r0, r1, r6, r9, ip, lr}
    7f10:	6f76282a 	svcvs	0x0076282a
    7f14:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    7f18:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    7f1c:	33746e69 	cmncc	r4, #1680	; 0x690
    7f20:	2a745f32 	bcs	1d1fbf0 <__mprec_tinytens+0x1cfb380>
    7f24:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    7f28:	30303045 	eorscc	r3, r0, r5, asr #32
    7f2c:	34313034 	ldrtcc	r3, [r1], #-52	; 0xffffffcc
    7f30:	01002929 	tsteq	r0, r9, lsr #18
    7f34:	305403b8 	ldrhcc	r0, [r4], #-56	; 0xffffffc8
    7f38:	2030524d 	eorscs	r5, r0, sp, asr #4
    7f3c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    7f40:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    7f44:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7f48:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    7f4c:	745f3233 	ldrbvc	r3, [pc], #-563	; 7f54 <f_mkfs+0x6f4>
    7f50:	3028292a 	eorcc	r2, r8, sl, lsr #18
    7f54:	30304578 	eorscc	r4, r0, r8, ror r5
    7f58:	31303430 	teqcc	r0, r0, lsr r4
    7f5c:	00292938 	eoreq	r2, r9, r8, lsr r9
    7f60:	5403b901 	strpl	fp, [r3], #-2305	; 0xfffff6ff
    7f64:	31524d30 	cmpcc	r2, r0, lsr sp
    7f68:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    7f6c:	616c6f76 	smcvs	50934	; 0xc6f6
    7f70:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    7f74:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    7f78:	5f323374 	svcpl	0x00323374
    7f7c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    7f80:	30457830 	subcc	r7, r5, r0, lsr r8
    7f84:	30343030 	eorscc	r3, r4, r0, lsr r0
    7f88:	29294331 	stmdbcs	r9!, {r0, r4, r5, r8, r9, lr}
    7f8c:	03ba0100 			; <UNDEFINED> instruction: 0x03ba0100
    7f90:	524d3054 	subpl	r3, sp, #84	; 0x54
    7f94:	2a282032 	bcs	a10064 <__mprec_tinytens+0x9eb7f4>
    7f98:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 7f00 <f_mkfs+0x6a0>
    7f9c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    7fa0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    7fa4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    7fa8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    7fac:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    7fb0:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    7fb4:	29303230 	ldmdbcs	r0!, {r4, r5, r9, ip, sp}
    7fb8:	bb010029 	bllt	48064 <__mprec_tinytens+0x237f4>
    7fbc:	4d305403 	cfldrsmi	mvf5, [r0, #-12]!
    7fc0:	28203352 	stmdacs	r0!, {r1, r4, r6, r8, r9, ip, sp}
    7fc4:	6f76282a 	svcvs	0x0076282a
    7fc8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    7fcc:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    7fd0:	33746e69 	cmncc	r4, #1680	; 0x690
    7fd4:	2a745f32 	bcs	1d1fca4 <__mprec_tinytens+0x1cfb434>
    7fd8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    7fdc:	30303045 	eorscc	r3, r0, r5, asr #32
    7fe0:	34323034 	ldrtcc	r3, [r2], #-52	; 0xffffffcc
    7fe4:	01002929 	tsteq	r0, r9, lsr #18
    7fe8:	305403bc 	ldrhcc	r0, [r4], #-60	; 0xffffffc4
    7fec:	20524343 	subscs	r4, r2, r3, asr #6
    7ff0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    7ff4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    7ff8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    7ffc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8000:	745f3233 	ldrbvc	r3, [pc], #-563	; 8008 <f_mkfs+0x7a8>
    8004:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8008:	30304578 	eorscc	r4, r0, r8, ror r5
    800c:	32303430 	eorscc	r3, r0, #48, 8	; 0x30000000
    8010:	00292938 	eoreq	r2, r9, r8, lsr r9
    8014:	5403bd01 	strpl	fp, [r3], #-3329	; 0xfffff2ff
    8018:	30524330 	subscc	r4, r2, r0, lsr r3
    801c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8020:	616c6f76 	smcvs	50934	; 0xc6f6
    8024:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8028:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    802c:	5f323374 	svcpl	0x00323374
    8030:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8034:	30457830 	subcc	r7, r5, r0, lsr r8
    8038:	30343030 	eorscc	r3, r4, r0, lsr r0
    803c:	29294332 	stmdbcs	r9!, {r1, r4, r5, r8, r9, lr}
    8040:	03be0100 			; <UNDEFINED> instruction: 0x03be0100
    8044:	52433054 	subpl	r3, r3, #84	; 0x54
    8048:	2a282031 	bcs	a10114 <__mprec_tinytens+0x9eb8a4>
    804c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 7fb4 <f_mkfs+0x754>
    8050:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8054:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8058:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    805c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8060:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8064:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    8068:	29303330 	ldmdbcs	r0!, {r4, r5, r8, r9, ip, sp}
    806c:	bf010029 	svclt	0x00010029
    8070:	43305403 	teqmi	r0, #50331648	; 0x3000000
    8074:	28203252 	stmdacs	r0!, {r1, r4, r6, r9, ip, sp}
    8078:	6f76282a 	svcvs	0x0076282a
    807c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8080:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8084:	33746e69 	cmncc	r4, #1680	; 0x690
    8088:	2a745f32 	bcs	1d1fd58 <__mprec_tinytens+0x1cfb4e8>
    808c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8090:	30303045 	eorscc	r3, r0, r5, asr #32
    8094:	34333034 	ldrtcc	r3, [r3], #-52	; 0xffffffcc
    8098:	01002929 	tsteq	r0, r9, lsr #18
    809c:	305403c0 	subscc	r0, r4, r0, asr #7
    80a0:	20335243 	eorscs	r5, r3, r3, asr #4
    80a4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    80a8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    80ac:	20656c69 	rsbcs	r6, r5, r9, ror #24
    80b0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    80b4:	745f3233 	ldrbvc	r3, [pc], #-563	; 80bc <f_mkfs+0x85c>
    80b8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    80bc:	30304578 	eorscc	r4, r0, r8, ror r5
    80c0:	33303430 	teqcc	r0, #48, 8	; 0x30000000
    80c4:	00292938 	eoreq	r2, r9, r8, lsr r9
    80c8:	5403c101 	strpl	ip, [r3], #-257	; 0xfffffeff
    80cc:	524d4530 	subpl	r4, sp, #48, 10	; 0xc000000
    80d0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    80d4:	616c6f76 	smcvs	50934	; 0xc6f6
    80d8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    80dc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    80e0:	5f323374 	svcpl	0x00323374
    80e4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    80e8:	30457830 	subcc	r7, r5, r0, lsr r8
    80ec:	30343030 	eorscc	r3, r4, r0, lsr r0
    80f0:	29294333 	stmdbcs	r9!, {r0, r1, r4, r5, r8, r9, lr}
    80f4:	03c20100 	biceq	r0, r2, #0, 2
    80f8:	54433054 	strbpl	r3, [r3], #-84	; 0xffffffac
    80fc:	28205243 	stmdacs	r0!, {r0, r1, r6, r9, ip, lr}
    8100:	6f76282a 	svcvs	0x0076282a
    8104:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8108:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    810c:	33746e69 	cmncc	r4, #1680	; 0x690
    8110:	2a745f32 	bcs	1d1fde0 <__mprec_tinytens+0x1cfb570>
    8114:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8118:	30303045 	eorscc	r3, r0, r5, asr #32
    811c:	30373034 	eorscc	r3, r7, r4, lsr r0
    8120:	01002929 	tsteq	r0, r9, lsr #18
    8124:	315403c4 	cmpcc	r4, r4, asr #7
    8128:	28205249 	stmdacs	r0!, {r0, r3, r6, r9, ip, lr}
    812c:	6f76282a 	svcvs	0x0076282a
    8130:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8134:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8138:	33746e69 	cmncc	r4, #1680	; 0x690
    813c:	2a745f32 	bcs	1d1fe0c <__mprec_tinytens+0x1cfb59c>
    8140:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8144:	30303045 	eorscc	r3, r0, r5, asr #32
    8148:	30303038 	eorscc	r3, r0, r8, lsr r0
    814c:	01002929 	tsteq	r0, r9, lsr #18
    8150:	315403c5 	cmpcc	r4, r5, asr #7
    8154:	20524354 	subscs	r4, r2, r4, asr r3
    8158:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    815c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8160:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8164:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8168:	745f3233 	ldrbvc	r3, [pc], #-563	; 8170 <f_mkfs+0x910>
    816c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8170:	30304578 	eorscc	r4, r0, r8, ror r5
    8174:	30303830 	eorscc	r3, r0, r0, lsr r8
    8178:	00292934 	eoreq	r2, r9, r4, lsr r9
    817c:	5403c601 	strpl	ip, [r3], #-1537	; 0xfffff9ff
    8180:	20435431 	subcs	r5, r3, r1, lsr r4
    8184:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8188:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    818c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8190:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8194:	745f3233 	ldrbvc	r3, [pc], #-563	; 819c <f_mkfs+0x93c>
    8198:	3028292a 	eorcc	r2, r8, sl, lsr #18
    819c:	30304578 	eorscc	r4, r0, r8, ror r5
    81a0:	30303830 	eorscc	r3, r0, r0, lsr r8
    81a4:	00292938 	eoreq	r2, r9, r8, lsr r9
    81a8:	5403c701 	strpl	ip, [r3], #-1793	; 0xfffff8ff
    81ac:	20525031 	subscs	r5, r2, r1, lsr r0
    81b0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    81b4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    81b8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    81bc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    81c0:	745f3233 	ldrbvc	r3, [pc], #-563	; 81c8 <f_mkfs+0x968>
    81c4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    81c8:	30304578 	eorscc	r4, r0, r8, ror r5
    81cc:	30303830 	eorscc	r3, r0, r0, lsr r8
    81d0:	00292943 	eoreq	r2, r9, r3, asr #18
    81d4:	5403c801 	strpl	ip, [r3], #-2049	; 0xfffff7ff
    81d8:	20435031 	subcs	r5, r3, r1, lsr r0
    81dc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    81e0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    81e4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    81e8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    81ec:	745f3233 	ldrbvc	r3, [pc], #-563	; 81f4 <f_mkfs+0x994>
    81f0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    81f4:	30304578 	eorscc	r4, r0, r8, ror r5
    81f8:	31303830 	teqcc	r0, r0, lsr r8
    81fc:	00292930 	eoreq	r2, r9, r0, lsr r9
    8200:	5403c901 	strpl	ip, [r3], #-2305	; 0xfffff6ff
    8204:	52434d31 	subpl	r4, r3, #3136	; 0xc40
    8208:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    820c:	616c6f76 	smcvs	50934	; 0xc6f6
    8210:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8214:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    8218:	5f323374 	svcpl	0x00323374
    821c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8220:	30457830 	subcc	r7, r5, r0, lsr r8
    8224:	30383030 	eorscc	r3, r8, r0, lsr r0
    8228:	29293431 	stmdbcs	r9!, {r0, r4, r5, sl, ip, sp}
    822c:	03ca0100 	biceq	r0, sl, #0, 2
    8230:	524d3154 	subpl	r3, sp, #84, 2
    8234:	2a282030 	bcs	a102fc <__mprec_tinytens+0x9eba8c>
    8238:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 81a0 <f_mkfs+0x940>
    823c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8240:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8244:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    8248:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    824c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8250:	38303030 	ldmdacc	r0!, {r4, r5, ip, sp}
    8254:	29383130 	ldmdbcs	r8!, {r4, r5, r8, ip, sp}
    8258:	cb010029 	blgt	48304 <__mprec_tinytens+0x23a94>
    825c:	4d315403 	cfldrsmi	mvf5, [r1, #-12]!
    8260:	28203152 	stmdacs	r0!, {r1, r4, r6, r8, ip, sp}
    8264:	6f76282a 	svcvs	0x0076282a
    8268:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    826c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8270:	33746e69 	cmncc	r4, #1680	; 0x690
    8274:	2a745f32 	bcs	1d1ff44 <__mprec_tinytens+0x1cfb6d4>
    8278:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    827c:	30303045 	eorscc	r3, r0, r5, asr #32
    8280:	43313038 	teqmi	r1, #56	; 0x38
    8284:	01002929 	tsteq	r0, r9, lsr #18
    8288:	315403cc 	cmpcc	r4, ip, asr #7
    828c:	2032524d 	eorscs	r5, r2, sp, asr #4
    8290:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8294:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8298:	20656c69 	rsbcs	r6, r5, r9, ror #24
    829c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    82a0:	745f3233 	ldrbvc	r3, [pc], #-563	; 82a8 <f_putc+0x14>
    82a4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    82a8:	30304578 	eorscc	r4, r0, r8, ror r5
    82ac:	32303830 	eorscc	r3, r0, #48, 16	; 0x300000
    82b0:	00292930 	eoreq	r2, r9, r0, lsr r9
    82b4:	5403cd01 	strpl	ip, [r3], #-3329	; 0xfffff2ff
    82b8:	33524d31 	cmpcc	r2, #3136	; 0xc40
    82bc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    82c0:	616c6f76 	smcvs	50934	; 0xc6f6
    82c4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    82c8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    82cc:	5f323374 	svcpl	0x00323374
    82d0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    82d4:	30457830 	subcc	r7, r5, r0, lsr r8
    82d8:	30383030 	eorscc	r3, r8, r0, lsr r0
    82dc:	29293432 	stmdbcs	r9!, {r1, r4, r5, sl, ip, sp}
    82e0:	03ce0100 	biceq	r0, lr, #0, 2
    82e4:	43433154 	movtmi	r3, #12628	; 0x3154
    82e8:	2a282052 	bcs	a10438 <__mprec_tinytens+0x9ebbc8>
    82ec:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8254 <f_gets+0x50>
    82f0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    82f4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    82f8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    82fc:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8300:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8304:	38303030 	ldmdacc	r0!, {r4, r5, ip, sp}
    8308:	29383230 	ldmdbcs	r8!, {r4, r5, r9, ip, sp}
    830c:	cf010029 	svcgt	0x00010029
    8310:	43315403 	teqmi	r1, #50331648	; 0x3000000
    8314:	28203052 	stmdacs	r0!, {r1, r4, r6, ip, sp}
    8318:	6f76282a 	svcvs	0x0076282a
    831c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8320:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8324:	33746e69 	cmncc	r4, #1680	; 0x690
    8328:	2a745f32 	bcs	1d1fff8 <__mprec_tinytens+0x1cfb788>
    832c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8330:	30303045 	eorscc	r3, r0, r5, asr #32
    8334:	43323038 	teqmi	r2, #56	; 0x38
    8338:	01002929 	tsteq	r0, r9, lsr #18
    833c:	315403d0 	ldrsbcc	r0, [r4, #-48]	; 0xffffffd0
    8340:	20315243 	eorscs	r5, r1, r3, asr #4
    8344:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8348:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    834c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8350:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8354:	745f3233 	ldrbvc	r3, [pc], #-563	; 835c <f_printf+0x40>
    8358:	3028292a 	eorcc	r2, r8, sl, lsr #18
    835c:	30304578 	eorscc	r4, r0, r8, ror r5
    8360:	33303830 	teqcc	r0, #48, 16	; 0x300000
    8364:	00292930 	eoreq	r2, r9, r0, lsr r9
    8368:	5403d101 	strpl	sp, [r3], #-257	; 0xfffffeff
    836c:	32524331 	subscc	r4, r2, #-1006632960	; 0xc4000000
    8370:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8374:	616c6f76 	smcvs	50934	; 0xc6f6
    8378:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    837c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    8380:	5f323374 	svcpl	0x00323374
    8384:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8388:	30457830 	subcc	r7, r5, r0, lsr r8
    838c:	30383030 	eorscc	r3, r8, r0, lsr r0
    8390:	29293433 	stmdbcs	r9!, {r0, r1, r4, r5, sl, ip, sp}
    8394:	03d20100 	bicseq	r0, r2, #0, 2
    8398:	52433154 	subpl	r3, r3, #84, 2
    839c:	2a282033 	bcs	a10470 <__mprec_tinytens+0x9ebc00>
    83a0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8308 <f_puts+0x3c>
    83a4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    83a8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    83ac:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    83b0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    83b4:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    83b8:	38303030 	ldmdacc	r0!, {r4, r5, ip, sp}
    83bc:	29383330 	ldmdbcs	r8!, {r4, r5, r8, r9, ip, sp}
    83c0:	d3010029 	movwle	r0, #4137	; 0x1029
    83c4:	45315403 	ldrmi	r5, [r1, #-1027]!	; 0xfffffbfd
    83c8:	2820524d 	stmdacs	r0!, {r0, r2, r3, r6, r9, ip, lr}
    83cc:	6f76282a 	svcvs	0x0076282a
    83d0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    83d4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    83d8:	33746e69 	cmncc	r4, #1680	; 0x690
    83dc:	2a745f32 	bcs	1d200ac <__mprec_tinytens+0x1cfb83c>
    83e0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    83e4:	30303045 	eorscc	r3, r0, r5, asr #32
    83e8:	43333038 	teqmi	r3, #56	; 0x38
    83ec:	01002929 	tsteq	r0, r9, lsr #18
    83f0:	315403d4 	ldrsbcc	r0, [r4, #-52]	; 0xffffffcc
    83f4:	52435443 	subpl	r5, r3, #1124073472	; 0x43000000
    83f8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    83fc:	616c6f76 	smcvs	50934	; 0xc6f6
    8400:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8404:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    8408:	5f323374 	svcpl	0x00323374
    840c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8410:	30457830 	subcc	r7, r5, r0, lsr r8
    8414:	30383030 	eorscc	r3, r8, r0, lsr r0
    8418:	29293037 	stmdbcs	r9!, {r0, r1, r2, r4, r5, ip, sp}
    841c:	03d60100 	bicseq	r0, r6, #0, 2
    8420:	52493254 	subpl	r3, r9, #84, 4	; 0x40000005
    8424:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8428:	616c6f76 	smcvs	50934	; 0xc6f6
    842c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8430:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    8434:	5f323374 	svcpl	0x00323374
    8438:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    843c:	30457830 	subcc	r7, r5, r0, lsr r8
    8440:	30303730 	eorscc	r3, r0, r0, lsr r7
    8444:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    8448:	03d70100 	bicseq	r0, r7, #0, 2
    844c:	43543254 	cmpmi	r4, #84, 4	; 0x40000005
    8450:	2a282052 	bcs	a105a0 <__mprec_tinytens+0x9ebd30>
    8454:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 83bc <f_printf+0xa0>
    8458:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    845c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8460:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    8464:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8468:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    846c:	30373030 	eorscc	r3, r7, r0, lsr r0
    8470:	29343030 	ldmdbcs	r4!, {r4, r5, ip, sp}
    8474:	d8010029 	stmdale	r1, {r0, r3, r5}
    8478:	54325403 	ldrtpl	r5, [r2], #-1027	; 0xfffffbfd
    847c:	2a282043 	bcs	a10590 <__mprec_tinytens+0x9ebd20>
    8480:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 83e8 <f_printf+0xcc>
    8484:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8488:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    848c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    8490:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8494:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8498:	30373030 	eorscc	r3, r7, r0, lsr r0
    849c:	29383030 	ldmdbcs	r8!, {r4, r5, ip, sp}
    84a0:	d9010029 	stmdble	r1, {r0, r3, r5}
    84a4:	50325403 	eorspl	r5, r2, r3, lsl #8
    84a8:	2a282052 	bcs	a105f8 <__mprec_tinytens+0x9ebd88>
    84ac:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8414 <f_printf+0xf8>
    84b0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    84b4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    84b8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    84bc:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    84c0:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    84c4:	30373030 	eorscc	r3, r7, r0, lsr r0
    84c8:	29433030 	stmdbcs	r3, {r4, r5, ip, sp}^
    84cc:	da010029 	ble	48578 <__mprec_tinytens+0x23d08>
    84d0:	50325403 	eorspl	r5, r2, r3, lsl #8
    84d4:	2a282043 	bcs	a105e8 <__mprec_tinytens+0x9ebd78>
    84d8:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8440 <f_printf+0x124>
    84dc:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    84e0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    84e4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    84e8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    84ec:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    84f0:	30373030 	eorscc	r3, r7, r0, lsr r0
    84f4:	29303130 	ldmdbcs	r0!, {r4, r5, r8, ip, sp}
    84f8:	db010029 	blle	485a4 <__mprec_tinytens+0x23d34>
    84fc:	4d325403 	cfldrsmi	mvf5, [r2, #-12]!
    8500:	28205243 	stmdacs	r0!, {r0, r1, r6, r9, ip, lr}
    8504:	6f76282a 	svcvs	0x0076282a
    8508:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    850c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8510:	33746e69 	cmncc	r4, #1680	; 0x690
    8514:	2a745f32 	bcs	1d201e4 <__mprec_tinytens+0x1cfb974>
    8518:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    851c:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    8520:	34313030 	ldrtcc	r3, [r1], #-48	; 0xffffffd0
    8524:	01002929 	tsteq	r0, r9, lsr #18
    8528:	325403dc 	subscc	r0, r4, #220, 6	; 0x70000003
    852c:	2030524d 	eorscs	r5, r0, sp, asr #4
    8530:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8534:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8538:	20656c69 	rsbcs	r6, r5, r9, ror #24
    853c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8540:	745f3233 	ldrbvc	r3, [pc], #-563	; 8548 <f_printf+0x22c>
    8544:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8548:	30304578 	eorscc	r4, r0, r8, ror r5
    854c:	31303037 	teqcc	r0, r7, lsr r0
    8550:	00292938 	eoreq	r2, r9, r8, lsr r9
    8554:	5403dd01 	strpl	sp, [r3], #-3329	; 0xfffff2ff
    8558:	31524d32 	cmpcc	r2, r2, lsr sp
    855c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8560:	616c6f76 	smcvs	50934	; 0xc6f6
    8564:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8568:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    856c:	5f323374 	svcpl	0x00323374
    8570:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8574:	30457830 	subcc	r7, r5, r0, lsr r8
    8578:	30303730 	eorscc	r3, r0, r0, lsr r7
    857c:	29294331 	stmdbcs	r9!, {r0, r4, r5, r8, r9, lr}
    8580:	03de0100 	bicseq	r0, lr, #0, 2
    8584:	524d3254 	subpl	r3, sp, #84, 4	; 0x40000005
    8588:	2a282032 	bcs	a10658 <__mprec_tinytens+0x9ebde8>
    858c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 84f4 <f_printf+0x1d8>
    8590:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8594:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8598:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    859c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    85a0:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    85a4:	30373030 	eorscc	r3, r7, r0, lsr r0
    85a8:	29303230 	ldmdbcs	r0!, {r4, r5, r9, ip, sp}
    85ac:	df010029 	svcle	0x00010029
    85b0:	4d325403 	cfldrsmi	mvf5, [r2, #-12]!
    85b4:	28203352 	stmdacs	r0!, {r1, r4, r6, r8, r9, ip, sp}
    85b8:	6f76282a 	svcvs	0x0076282a
    85bc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    85c0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    85c4:	33746e69 	cmncc	r4, #1680	; 0x690
    85c8:	2a745f32 	bcs	1d20298 <__mprec_tinytens+0x1cfba28>
    85cc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    85d0:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    85d4:	34323030 	ldrtcc	r3, [r2], #-48	; 0xffffffd0
    85d8:	01002929 	tsteq	r0, r9, lsr #18
    85dc:	325403e0 	subscc	r0, r4, #224, 6	; 0x80000003
    85e0:	20524343 	subscs	r4, r2, r3, asr #6
    85e4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    85e8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    85ec:	20656c69 	rsbcs	r6, r5, r9, ror #24
    85f0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    85f4:	745f3233 	ldrbvc	r3, [pc], #-563	; 85fc <f_printf+0x2e0>
    85f8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    85fc:	30304578 	eorscc	r4, r0, r8, ror r5
    8600:	32303037 	eorscc	r3, r0, #55	; 0x37
    8604:	00292938 	eoreq	r2, r9, r8, lsr r9
    8608:	5403e101 	strpl	lr, [r3], #-257	; 0xfffffeff
    860c:	30524332 	subscc	r4, r2, r2, lsr r3
    8610:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8614:	616c6f76 	smcvs	50934	; 0xc6f6
    8618:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    861c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    8620:	5f323374 	svcpl	0x00323374
    8624:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8628:	30457830 	subcc	r7, r5, r0, lsr r8
    862c:	30303730 	eorscc	r3, r0, r0, lsr r7
    8630:	29294332 	stmdbcs	r9!, {r1, r4, r5, r8, r9, lr}
    8634:	03e20100 	mvneq	r0, #0, 2
    8638:	52433254 	subpl	r3, r3, #84, 4	; 0x40000005
    863c:	2a282031 	bcs	a10708 <__mprec_tinytens+0x9ebe98>
    8640:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 85a8 <f_printf+0x28c>
    8644:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8648:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    864c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    8650:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8654:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8658:	30373030 	eorscc	r3, r7, r0, lsr r0
    865c:	29303330 	ldmdbcs	r0!, {r4, r5, r8, r9, ip, sp}
    8660:	e3010029 	movw	r0, #4137	; 0x1029
    8664:	43325403 	teqmi	r2, #50331648	; 0x3000000
    8668:	28203252 	stmdacs	r0!, {r1, r4, r6, r9, ip, sp}
    866c:	6f76282a 	svcvs	0x0076282a
    8670:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8674:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8678:	33746e69 	cmncc	r4, #1680	; 0x690
    867c:	2a745f32 	bcs	1d2034c <__mprec_tinytens+0x1cfbadc>
    8680:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8684:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    8688:	34333030 	ldrtcc	r3, [r3], #-48	; 0xffffffd0
    868c:	01002929 	tsteq	r0, r9, lsr #18
    8690:	325403e4 	subscc	r0, r4, #228, 6	; 0x90000003
    8694:	20335243 	eorscs	r5, r3, r3, asr #4
    8698:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    869c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    86a0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    86a4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    86a8:	745f3233 	ldrbvc	r3, [pc], #-563	; 86b0 <f_printf+0x394>
    86ac:	3028292a 	eorcc	r2, r8, sl, lsr #18
    86b0:	30304578 	eorscc	r4, r0, r8, ror r5
    86b4:	33303037 	teqcc	r0, #55	; 0x37
    86b8:	00292938 	eoreq	r2, r9, r8, lsr r9
    86bc:	5403e501 	strpl	lr, [r3], #-1281	; 0xfffffaff
    86c0:	524d4532 	subpl	r4, sp, #209715200	; 0xc800000
    86c4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    86c8:	616c6f76 	smcvs	50934	; 0xc6f6
    86cc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    86d0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    86d4:	5f323374 	svcpl	0x00323374
    86d8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    86dc:	30457830 	subcc	r7, r5, r0, lsr r8
    86e0:	30303730 	eorscc	r3, r0, r0, lsr r7
    86e4:	29294333 	stmdbcs	r9!, {r0, r1, r4, r5, r8, r9, lr}
    86e8:	03e60100 	mvneq	r0, #0, 2
    86ec:	54433254 	strbpl	r3, [r3], #-596	; 0xfffffdac
    86f0:	28205243 	stmdacs	r0!, {r0, r1, r6, r9, ip, lr}
    86f4:	6f76282a 	svcvs	0x0076282a
    86f8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    86fc:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8700:	33746e69 	cmncc	r4, #1680	; 0x690
    8704:	2a745f32 	bcs	1d203d4 <__mprec_tinytens+0x1cfbb64>
    8708:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    870c:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    8710:	30373030 	eorscc	r3, r7, r0, lsr r0
    8714:	01002929 	tsteq	r0, r9, lsr #18
    8718:	335403e8 	cmpcc	r4, #232, 6	; 0xa0000003
    871c:	28205249 	stmdacs	r0!, {r0, r3, r6, r9, ip, lr}
    8720:	6f76282a 	svcvs	0x0076282a
    8724:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8728:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    872c:	33746e69 	cmncc	r4, #1680	; 0x690
    8730:	2a745f32 	bcs	1d20400 <__mprec_tinytens+0x1cfbb90>
    8734:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8738:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    873c:	30303034 	eorscc	r3, r0, r4, lsr r0
    8740:	01002929 	tsteq	r0, r9, lsr #18
    8744:	335403e9 	cmpcc	r4, #-1543503869	; 0xa4000003
    8748:	20524354 	subscs	r4, r2, r4, asr r3
    874c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8750:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8754:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8758:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    875c:	745f3233 	ldrbvc	r3, [pc], #-563	; 8764 <f_printf+0x448>
    8760:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8764:	30304578 	eorscc	r4, r0, r8, ror r5
    8768:	30303437 	eorscc	r3, r0, r7, lsr r4
    876c:	00292934 	eoreq	r2, r9, r4, lsr r9
    8770:	5403ea01 	strpl	lr, [r3], #-2561	; 0xfffff5ff
    8774:	20435433 	subcs	r5, r3, r3, lsr r4
    8778:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    877c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8780:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8784:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8788:	745f3233 	ldrbvc	r3, [pc], #-563	; 8790 <f_printf+0x474>
    878c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8790:	30304578 	eorscc	r4, r0, r8, ror r5
    8794:	30303437 	eorscc	r3, r0, r7, lsr r4
    8798:	00292938 	eoreq	r2, r9, r8, lsr r9
    879c:	5403eb01 	strpl	lr, [r3], #-2817	; 0xfffff4ff
    87a0:	20525033 	subscs	r5, r2, r3, lsr r0
    87a4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    87a8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    87ac:	20656c69 	rsbcs	r6, r5, r9, ror #24
    87b0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    87b4:	745f3233 	ldrbvc	r3, [pc], #-563	; 87bc <f_printf+0x4a0>
    87b8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    87bc:	30304578 	eorscc	r4, r0, r8, ror r5
    87c0:	30303437 	eorscc	r3, r0, r7, lsr r4
    87c4:	00292943 	eoreq	r2, r9, r3, asr #18
    87c8:	5403ec01 	strpl	lr, [r3], #-3073	; 0xfffff3ff
    87cc:	20435033 	subcs	r5, r3, r3, lsr r0
    87d0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    87d4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    87d8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    87dc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    87e0:	745f3233 	ldrbvc	r3, [pc], #-563	; 87e8 <f_printf+0x4cc>
    87e4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    87e8:	30304578 	eorscc	r4, r0, r8, ror r5
    87ec:	31303437 	teqcc	r0, r7, lsr r4
    87f0:	00292930 	eoreq	r2, r9, r0, lsr r9
    87f4:	5403ed01 	strpl	lr, [r3], #-3329	; 0xfffff2ff
    87f8:	52434d33 	subpl	r4, r3, #3264	; 0xcc0
    87fc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8800:	616c6f76 	smcvs	50934	; 0xc6f6
    8804:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8808:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    880c:	5f323374 	svcpl	0x00323374
    8810:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8814:	30457830 	subcc	r7, r5, r0, lsr r8
    8818:	30343730 	eorscc	r3, r4, r0, lsr r7
    881c:	29293431 	stmdbcs	r9!, {r0, r4, r5, sl, ip, sp}
    8820:	03ee0100 	mvneq	r0, #0, 2
    8824:	524d3354 	subpl	r3, sp, #84, 6	; 0x50000001
    8828:	2a282030 	bcs	a108f0 <__mprec_tinytens+0x9ec080>
    882c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8794 <f_printf+0x478>
    8830:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8834:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8838:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    883c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8840:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8844:	34373030 	ldrtcc	r3, [r7], #-48	; 0xffffffd0
    8848:	29383130 	ldmdbcs	r8!, {r4, r5, r8, ip, sp}
    884c:	ef010029 	svc	0x00010029
    8850:	4d335403 	cfldrsmi	mvf5, [r3, #-12]!
    8854:	28203152 	stmdacs	r0!, {r1, r4, r6, r8, ip, sp}
    8858:	6f76282a 	svcvs	0x0076282a
    885c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8860:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8864:	33746e69 	cmncc	r4, #1680	; 0x690
    8868:	2a745f32 	bcs	1d20538 <__mprec_tinytens+0x1cfbcc8>
    886c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8870:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    8874:	43313034 	teqmi	r1, #52	; 0x34
    8878:	01002929 	tsteq	r0, r9, lsr #18
    887c:	335403f0 	cmpcc	r4, #240, 6	; 0xc0000003
    8880:	2032524d 	eorscs	r5, r2, sp, asr #4
    8884:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8888:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    888c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8890:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8894:	745f3233 	ldrbvc	r3, [pc], #-563	; 889c <f_printf+0x580>
    8898:	3028292a 	eorcc	r2, r8, sl, lsr #18
    889c:	30304578 	eorscc	r4, r0, r8, ror r5
    88a0:	32303437 	eorscc	r3, r0, #922746880	; 0x37000000
    88a4:	00292930 	eoreq	r2, r9, r0, lsr r9
    88a8:	5403f101 	strpl	pc, [r3], #-257	; 0xfffffeff
    88ac:	33524d33 	cmpcc	r2, #3264	; 0xcc0
    88b0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    88b4:	616c6f76 	smcvs	50934	; 0xc6f6
    88b8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    88bc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    88c0:	5f323374 	svcpl	0x00323374
    88c4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    88c8:	30457830 	subcc	r7, r5, r0, lsr r8
    88cc:	30343730 	eorscc	r3, r4, r0, lsr r7
    88d0:	29293432 	stmdbcs	r9!, {r1, r4, r5, sl, ip, sp}
    88d4:	03f20100 	mvnseq	r0, #0, 2
    88d8:	43433354 	movtmi	r3, #13140	; 0x3354
    88dc:	2a282052 	bcs	a10a2c <__mprec_tinytens+0x9ec1bc>
    88e0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8848 <f_printf+0x52c>
    88e4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    88e8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    88ec:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    88f0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    88f4:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    88f8:	34373030 	ldrtcc	r3, [r7], #-48	; 0xffffffd0
    88fc:	29383230 	ldmdbcs	r8!, {r4, r5, r9, ip, sp}
    8900:	f3010029 	vhadd.u8	d0, d1, d25
    8904:	43335403 	teqmi	r3, #50331648	; 0x3000000
    8908:	28203052 	stmdacs	r0!, {r1, r4, r6, ip, sp}
    890c:	6f76282a 	svcvs	0x0076282a
    8910:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8914:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8918:	33746e69 	cmncc	r4, #1680	; 0x690
    891c:	2a745f32 	bcs	1d205ec <__mprec_tinytens+0x1cfbd7c>
    8920:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8924:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    8928:	43323034 	teqmi	r2, #52	; 0x34
    892c:	01002929 	tsteq	r0, r9, lsr #18
    8930:	335403f4 	cmpcc	r4, #244, 6	; 0xd0000003
    8934:	20315243 	eorscs	r5, r1, r3, asr #4
    8938:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    893c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8940:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8944:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8948:	745f3233 	ldrbvc	r3, [pc], #-563	; 8950 <f_printf+0x634>
    894c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8950:	30304578 	eorscc	r4, r0, r8, ror r5
    8954:	33303437 	teqcc	r0, #922746880	; 0x37000000
    8958:	00292930 	eoreq	r2, r9, r0, lsr r9
    895c:	5403f501 	strpl	pc, [r3], #-1281	; 0xfffffaff
    8960:	32524333 	subscc	r4, r2, #-872415232	; 0xcc000000
    8964:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8968:	616c6f76 	smcvs	50934	; 0xc6f6
    896c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8970:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    8974:	5f323374 	svcpl	0x00323374
    8978:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    897c:	30457830 	subcc	r7, r5, r0, lsr r8
    8980:	30343730 	eorscc	r3, r4, r0, lsr r7
    8984:	29293433 	stmdbcs	r9!, {r0, r1, r4, r5, sl, ip, sp}
    8988:	03f60100 	mvnseq	r0, #0, 2
    898c:	52433354 	subpl	r3, r3, #84, 6	; 0x50000001
    8990:	2a282033 	bcs	a10a64 <__mprec_tinytens+0x9ec1f4>
    8994:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 88fc <f_printf+0x5e0>
    8998:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    899c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    89a0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    89a4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    89a8:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    89ac:	34373030 	ldrtcc	r3, [r7], #-48	; 0xffffffd0
    89b0:	29383330 	ldmdbcs	r8!, {r4, r5, r8, r9, ip, sp}
    89b4:	f7010029 			; <UNDEFINED> instruction: 0xf7010029
    89b8:	45335403 	ldrmi	r5, [r3, #-1027]!	; 0xfffffbfd
    89bc:	2820524d 	stmdacs	r0!, {r0, r2, r3, r6, r9, ip, lr}
    89c0:	6f76282a 	svcvs	0x0076282a
    89c4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    89c8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    89cc:	33746e69 	cmncc	r4, #1680	; 0x690
    89d0:	2a745f32 	bcs	1d206a0 <__mprec_tinytens+0x1cfbe30>
    89d4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    89d8:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    89dc:	43333034 	teqmi	r3, #52	; 0x34
    89e0:	01002929 	tsteq	r0, r9, lsr #18
    89e4:	335403f8 	cmpcc	r4, #248, 6	; 0xe0000003
    89e8:	52435443 	subpl	r5, r3, #1124073472	; 0x43000000
    89ec:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    89f0:	616c6f76 	smcvs	50934	; 0xc6f6
    89f4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    89f8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    89fc:	5f323374 	svcpl	0x00323374
    8a00:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8a04:	30457830 	subcc	r7, r5, r0, lsr r8
    8a08:	30343730 	eorscc	r3, r4, r0, lsr r7
    8a0c:	29293037 	stmdbcs	r9!, {r0, r1, r2, r4, r5, ip, sp}
    8a10:	03fa0100 	mvnseq	r0, #0, 2
    8a14:	304d5750 	subcc	r5, sp, r0, asr r7
    8a18:	28205249 	stmdacs	r0!, {r0, r3, r6, r9, ip, lr}
    8a1c:	6f76282a 	svcvs	0x0076282a
    8a20:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8a24:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8a28:	33746e69 	cmncc	r4, #1680	; 0x690
    8a2c:	2a745f32 	bcs	1d206fc <__mprec_tinytens+0x1cfbe8c>
    8a30:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8a34:	31303045 	teqcc	r0, r5, asr #32
    8a38:	30303034 	eorscc	r3, r0, r4, lsr r0
    8a3c:	01002929 	tsteq	r0, r9, lsr #18
    8a40:	575003fb 	smmlsrpl	r0, fp, r3, r0
    8a44:	4354304d 	cmpmi	r4, #77	; 0x4d
    8a48:	2a282052 	bcs	a10b98 <__mprec_tinytens+0x9ec328>
    8a4c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 89b4 <f_printf+0x698>
    8a50:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8a54:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8a58:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    8a5c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8a60:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8a64:	34313030 	ldrtcc	r3, [r1], #-48	; 0xffffffd0
    8a68:	29343030 	ldmdbcs	r4!, {r4, r5, ip, sp}
    8a6c:	fc010029 	stc2	0, cr0, [r1], {41}	; 0x29
    8a70:	4d575003 	ldclmi	0, cr5, [r7, #-12]
    8a74:	20435430 	subcs	r5, r3, r0, lsr r4
    8a78:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8a7c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8a80:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8a84:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8a88:	745f3233 	ldrbvc	r3, [pc], #-563	; 8a90 <f_printf+0x774>
    8a8c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8a90:	30304578 	eorscc	r4, r0, r8, ror r5
    8a94:	30303431 	eorscc	r3, r0, r1, lsr r4
    8a98:	00292938 	eoreq	r2, r9, r8, lsr r9
    8a9c:	5003fd01 	andpl	pc, r3, r1, lsl #26
    8aa0:	50304d57 	eorspl	r4, r0, r7, asr sp
    8aa4:	2a282052 	bcs	a10bf4 <__mprec_tinytens+0x9ec384>
    8aa8:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8a10 <f_printf+0x6f4>
    8aac:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8ab0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8ab4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    8ab8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8abc:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8ac0:	34313030 	ldrtcc	r3, [r1], #-48	; 0xffffffd0
    8ac4:	29433030 	stmdbcs	r3, {r4, r5, ip, sp}^
    8ac8:	fe010029 	cdp2	0, 0, cr0, cr1, cr9, {1}
    8acc:	4d575003 	ldclmi	0, cr5, [r7, #-12]
    8ad0:	20435030 	subcs	r5, r3, r0, lsr r0
    8ad4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8ad8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8adc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8ae0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8ae4:	745f3233 	ldrbvc	r3, [pc], #-563	; 8aec <f_printf+0x7d0>
    8ae8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8aec:	30304578 	eorscc	r4, r0, r8, ror r5
    8af0:	31303431 	teqcc	r0, r1, lsr r4
    8af4:	00292930 	eoreq	r2, r9, r0, lsr r9
    8af8:	5003ff01 	andpl	pc, r3, r1, lsl #30
    8afc:	4d304d57 	ldcmi	13, cr4, [r0, #-348]!	; 0xfffffea4
    8b00:	28205243 	stmdacs	r0!, {r0, r1, r6, r9, ip, lr}
    8b04:	6f76282a 	svcvs	0x0076282a
    8b08:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8b0c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8b10:	33746e69 	cmncc	r4, #1680	; 0x690
    8b14:	2a745f32 	bcs	1d207e4 <__mprec_tinytens+0x1cfbf74>
    8b18:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8b1c:	31303045 	teqcc	r0, r5, asr #32
    8b20:	34313034 	ldrtcc	r3, [r1], #-52	; 0xffffffcc
    8b24:	01002929 	tsteq	r0, r9, lsr #18
    8b28:	57500480 	ldrbpl	r0, [r0, -r0, lsl #9]
    8b2c:	524d304d 	subpl	r3, sp, #77	; 0x4d
    8b30:	2a282030 	bcs	a10bf8 <__mprec_tinytens+0x9ec388>
    8b34:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8a9c <f_printf+0x780>
    8b38:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8b3c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8b40:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    8b44:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8b48:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8b4c:	34313030 	ldrtcc	r3, [r1], #-48	; 0xffffffd0
    8b50:	29383130 	ldmdbcs	r8!, {r4, r5, r8, ip, sp}
    8b54:	81010029 	tsthi	r1, r9, lsr #32
    8b58:	4d575004 	ldclmi	0, cr5, [r7, #-16]
    8b5c:	31524d30 	cmpcc	r2, r0, lsr sp
    8b60:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8b64:	616c6f76 	smcvs	50934	; 0xc6f6
    8b68:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8b6c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    8b70:	5f323374 	svcpl	0x00323374
    8b74:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8b78:	30457830 	subcc	r7, r5, r0, lsr r8
    8b7c:	30343130 	eorscc	r3, r4, r0, lsr r1
    8b80:	29294331 	stmdbcs	r9!, {r0, r4, r5, r8, r9, lr}
    8b84:	04820100 	streq	r0, [r2], #256	; 0x100
    8b88:	304d5750 	subcc	r5, sp, r0, asr r7
    8b8c:	2032524d 	eorscs	r5, r2, sp, asr #4
    8b90:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8b94:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8b98:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8b9c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8ba0:	745f3233 	ldrbvc	r3, [pc], #-563	; 8ba8 <f_printf+0x88c>
    8ba4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8ba8:	30304578 	eorscc	r4, r0, r8, ror r5
    8bac:	32303431 	eorscc	r3, r0, #822083584	; 0x31000000
    8bb0:	00292930 	eoreq	r2, r9, r0, lsr r9
    8bb4:	50048301 	andpl	r8, r4, r1, lsl #6
    8bb8:	4d304d57 	ldcmi	13, cr4, [r0, #-348]!	; 0xfffffea4
    8bbc:	28203352 	stmdacs	r0!, {r1, r4, r6, r8, r9, ip, sp}
    8bc0:	6f76282a 	svcvs	0x0076282a
    8bc4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8bc8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8bcc:	33746e69 	cmncc	r4, #1680	; 0x690
    8bd0:	2a745f32 	bcs	1d208a0 <__mprec_tinytens+0x1cfc030>
    8bd4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8bd8:	31303045 	teqcc	r0, r5, asr #32
    8bdc:	34323034 	ldrtcc	r3, [r2], #-52	; 0xffffffcc
    8be0:	01002929 	tsteq	r0, r9, lsr #18
    8be4:	57500484 	ldrbpl	r0, [r0, -r4, lsl #9]
    8be8:	4343304d 	movtmi	r3, #12365	; 0x304d
    8bec:	2a282052 	bcs	a10d3c <__mprec_tinytens+0x9ec4cc>
    8bf0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8b58 <f_printf+0x83c>
    8bf4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8bf8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8bfc:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    8c00:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8c04:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8c08:	34313030 	ldrtcc	r3, [r1], #-48	; 0xffffffd0
    8c0c:	29383230 	ldmdbcs	r8!, {r4, r5, r9, ip, sp}
    8c10:	85010029 	strhi	r0, [r1, #-41]	; 0xffffffd7
    8c14:	4d575004 	ldclmi	0, cr5, [r7, #-16]
    8c18:	30524330 	subscc	r4, r2, r0, lsr r3
    8c1c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8c20:	616c6f76 	smcvs	50934	; 0xc6f6
    8c24:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8c28:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    8c2c:	5f323374 	svcpl	0x00323374
    8c30:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8c34:	30457830 	subcc	r7, r5, r0, lsr r8
    8c38:	30343130 	eorscc	r3, r4, r0, lsr r1
    8c3c:	29294332 	stmdbcs	r9!, {r1, r4, r5, r8, r9, lr}
    8c40:	04860100 	streq	r0, [r6], #256	; 0x100
    8c44:	304d5750 	subcc	r5, sp, r0, asr r7
    8c48:	20315243 	eorscs	r5, r1, r3, asr #4
    8c4c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8c50:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8c54:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8c58:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8c5c:	745f3233 	ldrbvc	r3, [pc], #-563	; 8c64 <f_printf+0x948>
    8c60:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8c64:	30304578 	eorscc	r4, r0, r8, ror r5
    8c68:	33303431 	teqcc	r0, #822083584	; 0x31000000
    8c6c:	00292930 	eoreq	r2, r9, r0, lsr r9
    8c70:	50048701 	andpl	r8, r4, r1, lsl #14
    8c74:	43304d57 	teqmi	r0, #5568	; 0x15c0
    8c78:	28203252 	stmdacs	r0!, {r1, r4, r6, r9, ip, sp}
    8c7c:	6f76282a 	svcvs	0x0076282a
    8c80:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8c84:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8c88:	33746e69 	cmncc	r4, #1680	; 0x690
    8c8c:	2a745f32 	bcs	1d2095c <__mprec_tinytens+0x1cfc0ec>
    8c90:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8c94:	31303045 	teqcc	r0, r5, asr #32
    8c98:	34333034 	ldrtcc	r3, [r3], #-52	; 0xffffffcc
    8c9c:	01002929 	tsteq	r0, r9, lsr #18
    8ca0:	57500488 	ldrbpl	r0, [r0, -r8, lsl #9]
    8ca4:	5243304d 	subpl	r3, r3, #77	; 0x4d
    8ca8:	2a282033 	bcs	a10d7c <__mprec_tinytens+0x9ec50c>
    8cac:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8c14 <f_printf+0x8f8>
    8cb0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8cb4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8cb8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    8cbc:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8cc0:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8cc4:	34313030 	ldrtcc	r3, [r1], #-48	; 0xffffffd0
    8cc8:	29383330 	ldmdbcs	r8!, {r4, r5, r8, r9, ip, sp}
    8ccc:	89010029 	stmdbhi	r1, {r0, r3, r5}
    8cd0:	4d575004 	ldclmi	0, cr5, [r7, #-16]
    8cd4:	524d4530 	subpl	r4, sp, #48, 10	; 0xc000000
    8cd8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8cdc:	616c6f76 	smcvs	50934	; 0xc6f6
    8ce0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8ce4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    8ce8:	5f323374 	svcpl	0x00323374
    8cec:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8cf0:	30457830 	subcc	r7, r5, r0, lsr r8
    8cf4:	30343130 	eorscc	r3, r4, r0, lsr r1
    8cf8:	29294333 	stmdbcs	r9!, {r0, r1, r4, r5, r8, r9, lr}
    8cfc:	048a0100 	streq	r0, [sl], #256	; 0x100
    8d00:	304d5750 	subcc	r5, sp, r0, asr r7
    8d04:	2034524d 	eorscs	r5, r4, sp, asr #4
    8d08:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8d0c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8d10:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8d14:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8d18:	745f3233 	ldrbvc	r3, [pc], #-563	; 8d20 <f_printf+0xa04>
    8d1c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8d20:	30304578 	eorscc	r4, r0, r8, ror r5
    8d24:	34303431 	ldrtcc	r3, [r0], #-1073	; 0xfffffbcf
    8d28:	00292930 	eoreq	r2, r9, r0, lsr r9
    8d2c:	50048b01 	andpl	r8, r4, r1, lsl #22
    8d30:	4d304d57 	ldcmi	13, cr4, [r0, #-348]!	; 0xfffffea4
    8d34:	28203552 	stmdacs	r0!, {r1, r4, r6, r8, sl, ip, sp}
    8d38:	6f76282a 	svcvs	0x0076282a
    8d3c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8d40:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8d44:	33746e69 	cmncc	r4, #1680	; 0x690
    8d48:	2a745f32 	bcs	1d20a18 <__mprec_tinytens+0x1cfc1a8>
    8d4c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8d50:	31303045 	teqcc	r0, r5, asr #32
    8d54:	34343034 	ldrtcc	r3, [r4], #-52	; 0xffffffcc
    8d58:	01002929 	tsteq	r0, r9, lsr #18
    8d5c:	5750048c 	ldrbpl	r0, [r0, -ip, lsl #9]
    8d60:	524d304d 	subpl	r3, sp, #77	; 0x4d
    8d64:	2a282036 	bcs	a10e44 <__mprec_tinytens+0x9ec5d4>
    8d68:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8cd0 <f_printf+0x9b4>
    8d6c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8d70:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8d74:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    8d78:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8d7c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8d80:	34313030 	ldrtcc	r3, [r1], #-48	; 0xffffffd0
    8d84:	29383430 	ldmdbcs	r8!, {r4, r5, sl, ip, sp}
    8d88:	8d010029 	stchi	0, cr0, [r1, #-164]	; 0xffffff5c
    8d8c:	4d575004 	ldclmi	0, cr5, [r7, #-16]
    8d90:	52435030 	subpl	r5, r3, #48	; 0x30
    8d94:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8d98:	616c6f76 	smcvs	50934	; 0xc6f6
    8d9c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8da0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    8da4:	5f323374 	svcpl	0x00323374
    8da8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8dac:	30457830 	subcc	r7, r5, r0, lsr r8
    8db0:	30343130 	eorscc	r3, r4, r0, lsr r1
    8db4:	29294334 	stmdbcs	r9!, {r2, r4, r5, r8, r9, lr}
    8db8:	048e0100 	streq	r0, [lr], #256	; 0x100
    8dbc:	304d5750 	subcc	r5, sp, r0, asr r7
    8dc0:	2052454c 	subscs	r4, r2, ip, asr #10
    8dc4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8dc8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8dcc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8dd0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8dd4:	745f3233 	ldrbvc	r3, [pc], #-563	; 8ddc <f_printf+0xac0>
    8dd8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8ddc:	30304578 	eorscc	r4, r0, r8, ror r5
    8de0:	35303431 	ldrcc	r3, [r0, #-1073]!	; 0xfffffbcf
    8de4:	00292930 	eoreq	r2, r9, r0, lsr r9
    8de8:	50048f01 	andpl	r8, r4, r1, lsl #30
    8dec:	43304d57 	teqmi	r0, #5568	; 0x15c0
    8df0:	20524354 	subscs	r4, r2, r4, asr r3
    8df4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8df8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8dfc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8e00:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8e04:	745f3233 	ldrbvc	r3, [pc], #-563	; 8e0c <f_printf+0xaf0>
    8e08:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8e0c:	30304578 	eorscc	r4, r0, r8, ror r5
    8e10:	37303431 			; <UNDEFINED> instruction: 0x37303431
    8e14:	00292930 	eoreq	r2, r9, r0, lsr r9
    8e18:	50049101 	andpl	r9, r4, r1, lsl #2
    8e1c:	49314d57 	ldmdbmi	r1!, {r0, r1, r2, r4, r6, r8, sl, fp, lr}
    8e20:	2a282052 	bcs	a10f70 <__mprec_tinytens+0x9ec700>
    8e24:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8d8c <f_printf+0xa70>
    8e28:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8e2c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8e30:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    8e34:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8e38:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8e3c:	38313030 	ldmdacc	r1!, {r4, r5, ip, sp}
    8e40:	29303030 	ldmdbcs	r0!, {r4, r5, ip, sp}
    8e44:	92010029 	andls	r0, r1, #41	; 0x29
    8e48:	4d575004 	ldclmi	0, cr5, [r7, #-16]
    8e4c:	52435431 	subpl	r5, r3, #822083584	; 0x31000000
    8e50:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8e54:	616c6f76 	smcvs	50934	; 0xc6f6
    8e58:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8e5c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    8e60:	5f323374 	svcpl	0x00323374
    8e64:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8e68:	30457830 	subcc	r7, r5, r0, lsr r8
    8e6c:	30383130 	eorscc	r3, r8, r0, lsr r1
    8e70:	29293430 	stmdbcs	r9!, {r4, r5, sl, ip, sp}
    8e74:	04930100 	ldreq	r0, [r3], #256	; 0x100
    8e78:	314d5750 	cmpcc	sp, r0, asr r7
    8e7c:	28204354 	stmdacs	r0!, {r2, r4, r6, r8, r9, lr}
    8e80:	6f76282a 	svcvs	0x0076282a
    8e84:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8e88:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8e8c:	33746e69 	cmncc	r4, #1680	; 0x690
    8e90:	2a745f32 	bcs	1d20b60 <__mprec_tinytens+0x1cfc2f0>
    8e94:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8e98:	31303045 	teqcc	r0, r5, asr #32
    8e9c:	38303038 	ldmdacc	r0!, {r3, r4, r5, ip, sp}
    8ea0:	01002929 	tsteq	r0, r9, lsr #18
    8ea4:	57500494 			; <UNDEFINED> instruction: 0x57500494
    8ea8:	5250314d 	subspl	r3, r0, #1073741843	; 0x40000013
    8eac:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8eb0:	616c6f76 	smcvs	50934	; 0xc6f6
    8eb4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8eb8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    8ebc:	5f323374 	svcpl	0x00323374
    8ec0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8ec4:	30457830 	subcc	r7, r5, r0, lsr r8
    8ec8:	30383130 	eorscc	r3, r8, r0, lsr r1
    8ecc:	29294330 	stmdbcs	r9!, {r4, r5, r8, r9, lr}
    8ed0:	04950100 	ldreq	r0, [r5], #256	; 0x100
    8ed4:	314d5750 	cmpcc	sp, r0, asr r7
    8ed8:	28204350 	stmdacs	r0!, {r4, r6, r8, r9, lr}
    8edc:	6f76282a 	svcvs	0x0076282a
    8ee0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8ee4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8ee8:	33746e69 	cmncc	r4, #1680	; 0x690
    8eec:	2a745f32 	bcs	1d20bbc <__mprec_tinytens+0x1cfc34c>
    8ef0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8ef4:	31303045 	teqcc	r0, r5, asr #32
    8ef8:	30313038 	eorscc	r3, r1, r8, lsr r0
    8efc:	01002929 	tsteq	r0, r9, lsr #18
    8f00:	57500496 			; <UNDEFINED> instruction: 0x57500496
    8f04:	434d314d 	movtmi	r3, #53581	; 0xd14d
    8f08:	2a282052 	bcs	a11058 <__mprec_tinytens+0x9ec7e8>
    8f0c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8e74 <disk_initialize>
    8f10:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8f14:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8f18:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    8f1c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8f20:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8f24:	38313030 	ldmdacc	r1!, {r4, r5, ip, sp}
    8f28:	29343130 	ldmdbcs	r4!, {r4, r5, r8, ip, sp}
    8f2c:	97010029 	strls	r0, [r1, -r9, lsr #32]
    8f30:	4d575004 	ldclmi	0, cr5, [r7, #-16]
    8f34:	30524d31 	subscc	r4, r2, r1, lsr sp
    8f38:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8f3c:	616c6f76 	smcvs	50934	; 0xc6f6
    8f40:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8f44:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    8f48:	5f323374 	svcpl	0x00323374
    8f4c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    8f50:	30457830 	subcc	r7, r5, r0, lsr r8
    8f54:	30383130 	eorscc	r3, r8, r0, lsr r1
    8f58:	29293831 	stmdbcs	r9!, {r0, r4, r5, fp, ip, sp}
    8f5c:	04980100 	ldreq	r0, [r8], #256	; 0x100
    8f60:	314d5750 	cmpcc	sp, r0, asr r7
    8f64:	2031524d 	eorscs	r5, r1, sp, asr #4
    8f68:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    8f6c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    8f70:	20656c69 	rsbcs	r6, r5, r9, ror #24
    8f74:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    8f78:	745f3233 	ldrbvc	r3, [pc], #-563	; 8f80 <disk_initialize+0x10c>
    8f7c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    8f80:	30304578 	eorscc	r4, r0, r8, ror r5
    8f84:	31303831 	teqcc	r0, r1, lsr r8
    8f88:	00292943 	eoreq	r2, r9, r3, asr #18
    8f8c:	50049901 	andpl	r9, r4, r1, lsl #18
    8f90:	4d314d57 	ldcmi	13, cr4, [r1, #-348]!	; 0xfffffea4
    8f94:	28203252 	stmdacs	r0!, {r1, r4, r6, r9, ip, sp}
    8f98:	6f76282a 	svcvs	0x0076282a
    8f9c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    8fa0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    8fa4:	33746e69 	cmncc	r4, #1680	; 0x690
    8fa8:	2a745f32 	bcs	1d20c78 <__mprec_tinytens+0x1cfc408>
    8fac:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    8fb0:	31303045 	teqcc	r0, r5, asr #32
    8fb4:	30323038 	eorscc	r3, r2, r8, lsr r0
    8fb8:	01002929 	tsteq	r0, r9, lsr #18
    8fbc:	5750049a 			; <UNDEFINED> instruction: 0x5750049a
    8fc0:	524d314d 	subpl	r3, sp, #1073741843	; 0x40000013
    8fc4:	2a282033 	bcs	a11098 <__mprec_tinytens+0x9ec828>
    8fc8:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8f30 <disk_initialize+0xbc>
    8fcc:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8fd0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    8fd4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    8fd8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    8fdc:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    8fe0:	38313030 	ldmdacc	r1!, {r4, r5, ip, sp}
    8fe4:	29343230 	ldmdbcs	r4!, {r4, r5, r9, ip, sp}
    8fe8:	9b010029 	blls	49094 <__mprec_tinytens+0x24824>
    8fec:	4d575004 	ldclmi	0, cr5, [r7, #-16]
    8ff0:	52434331 	subpl	r4, r3, #-1006632960	; 0xc4000000
    8ff4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    8ff8:	616c6f76 	smcvs	50934	; 0xc6f6
    8ffc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9000:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9004:	5f323374 	svcpl	0x00323374
    9008:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    900c:	30457830 	subcc	r7, r5, r0, lsr r8
    9010:	30383130 	eorscc	r3, r8, r0, lsr r1
    9014:	29293832 	stmdbcs	r9!, {r1, r4, r5, fp, ip, sp}
    9018:	049c0100 	ldreq	r0, [ip], #256	; 0x100
    901c:	314d5750 	cmpcc	sp, r0, asr r7
    9020:	20305243 	eorscs	r5, r0, r3, asr #4
    9024:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9028:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    902c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9030:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9034:	745f3233 	ldrbvc	r3, [pc], #-563	; 903c <disk_initialize+0x1c8>
    9038:	3028292a 	eorcc	r2, r8, sl, lsr #18
    903c:	30304578 	eorscc	r4, r0, r8, ror r5
    9040:	32303831 	eorscc	r3, r0, #3211264	; 0x310000
    9044:	00292943 	eoreq	r2, r9, r3, asr #18
    9048:	50049d01 	andpl	r9, r4, r1, lsl #26
    904c:	43314d57 	teqmi	r1, #5568	; 0x15c0
    9050:	28203152 	stmdacs	r0!, {r1, r4, r6, r8, ip, sp}
    9054:	6f76282a 	svcvs	0x0076282a
    9058:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    905c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9060:	33746e69 	cmncc	r4, #1680	; 0x690
    9064:	2a745f32 	bcs	1d20d34 <__mprec_tinytens+0x1cfc4c4>
    9068:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    906c:	31303045 	teqcc	r0, r5, asr #32
    9070:	30333038 	eorscc	r3, r3, r8, lsr r0
    9074:	01002929 	tsteq	r0, r9, lsr #18
    9078:	5750049e 			; <UNDEFINED> instruction: 0x5750049e
    907c:	5243314d 	subpl	r3, r3, #1073741843	; 0x40000013
    9080:	2a282032 	bcs	a11150 <__mprec_tinytens+0x9ec8e0>
    9084:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 8fec <disk_initialize+0x178>
    9088:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    908c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9090:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9094:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9098:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    909c:	38313030 	ldmdacc	r1!, {r4, r5, ip, sp}
    90a0:	29343330 	ldmdbcs	r4!, {r4, r5, r8, r9, ip, sp}
    90a4:	9f010029 	svcls	0x00010029
    90a8:	4d575004 	ldclmi	0, cr5, [r7, #-16]
    90ac:	33524331 	cmpcc	r2, #-1006632960	; 0xc4000000
    90b0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    90b4:	616c6f76 	smcvs	50934	; 0xc6f6
    90b8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    90bc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    90c0:	5f323374 	svcpl	0x00323374
    90c4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    90c8:	30457830 	subcc	r7, r5, r0, lsr r8
    90cc:	30383130 	eorscc	r3, r8, r0, lsr r1
    90d0:	29293833 	stmdbcs	r9!, {r0, r1, r4, r5, fp, ip, sp}
    90d4:	04a00100 	strteq	r0, [r0], #256	; 0x100
    90d8:	314d5750 	cmpcc	sp, r0, asr r7
    90dc:	20524d45 	subscs	r4, r2, r5, asr #26
    90e0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    90e4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    90e8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    90ec:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    90f0:	745f3233 	ldrbvc	r3, [pc], #-563	; 90f8 <disk_read+0x3c>
    90f4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    90f8:	30304578 	eorscc	r4, r0, r8, ror r5
    90fc:	33303831 	teqcc	r0, #3211264	; 0x310000
    9100:	00292943 	eoreq	r2, r9, r3, asr #18
    9104:	5004a101 	andpl	sl, r4, r1, lsl #2
    9108:	4d314d57 	ldcmi	13, cr4, [r1, #-348]!	; 0xfffffea4
    910c:	28203452 	stmdacs	r0!, {r1, r4, r6, sl, ip, sp}
    9110:	6f76282a 	svcvs	0x0076282a
    9114:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    9118:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    911c:	33746e69 	cmncc	r4, #1680	; 0x690
    9120:	2a745f32 	bcs	1d20df0 <__mprec_tinytens+0x1cfc580>
    9124:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9128:	31303045 	teqcc	r0, r5, asr #32
    912c:	30343038 	eorscc	r3, r4, r8, lsr r0
    9130:	01002929 	tsteq	r0, r9, lsr #18
    9134:	575004a2 	ldrbpl	r0, [r0, -r2, lsr #9]
    9138:	524d314d 	subpl	r3, sp, #1073741843	; 0x40000013
    913c:	2a282035 	bcs	a11218 <__mprec_tinytens+0x9ec9a8>
    9140:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 90a8 <disk_initialize+0x234>
    9144:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9148:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    914c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9150:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9154:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9158:	38313030 	ldmdacc	r1!, {r4, r5, ip, sp}
    915c:	29343430 	ldmdbcs	r4!, {r4, r5, sl, ip, sp}
    9160:	a3010029 	movwge	r0, #4137	; 0x1029
    9164:	4d575004 	ldclmi	0, cr5, [r7, #-16]
    9168:	36524d31 			; <UNDEFINED> instruction: 0x36524d31
    916c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9170:	616c6f76 	smcvs	50934	; 0xc6f6
    9174:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9178:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    917c:	5f323374 	svcpl	0x00323374
    9180:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    9184:	30457830 	subcc	r7, r5, r0, lsr r8
    9188:	30383130 	eorscc	r3, r8, r0, lsr r1
    918c:	29293834 	stmdbcs	r9!, {r2, r4, r5, fp, ip, sp}
    9190:	04a40100 	strteq	r0, [r4], #256	; 0x100
    9194:	314d5750 	cmpcc	sp, r0, asr r7
    9198:	20524350 	subscs	r4, r2, r0, asr r3
    919c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    91a0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    91a4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    91a8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    91ac:	745f3233 	ldrbvc	r3, [pc], #-563	; 91b4 <disk_write+0x40>
    91b0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    91b4:	30304578 	eorscc	r4, r0, r8, ror r5
    91b8:	34303831 	ldrtcc	r3, [r0], #-2097	; 0xfffff7cf
    91bc:	00292943 	eoreq	r2, r9, r3, asr #18
    91c0:	5004a501 	andpl	sl, r4, r1, lsl #10
    91c4:	4c314d57 	ldcmi	13, cr4, [r1], #-348	; 0xfffffea4
    91c8:	28205245 	stmdacs	r0!, {r0, r2, r6, r9, ip, lr}
    91cc:	6f76282a 	svcvs	0x0076282a
    91d0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    91d4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    91d8:	33746e69 	cmncc	r4, #1680	; 0x690
    91dc:	2a745f32 	bcs	1d20eac <__mprec_tinytens+0x1cfc63c>
    91e0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    91e4:	31303045 	teqcc	r0, r5, asr #32
    91e8:	30353038 	eorscc	r3, r5, r8, lsr r0
    91ec:	01002929 	tsteq	r0, r9, lsr #18
    91f0:	575004a6 	ldrbpl	r0, [r0, -r6, lsr #9]
    91f4:	5443314d 	strbpl	r3, [r3], #-333	; 0xfffffeb3
    91f8:	28205243 	stmdacs	r0!, {r0, r1, r6, r9, ip, lr}
    91fc:	6f76282a 	svcvs	0x0076282a
    9200:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    9204:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9208:	33746e69 	cmncc	r4, #1680	; 0x690
    920c:	2a745f32 	bcs	1d20edc <__mprec_tinytens+0x1cfc66c>
    9210:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9214:	31303045 	teqcc	r0, r5, asr #32
    9218:	30373038 	eorscc	r3, r7, r8, lsr r0
    921c:	01002929 	tsteq	r0, r9, lsr #18
    9220:	305504a8 	subscc	r0, r5, r8, lsr #9
    9224:	20524252 	subscs	r4, r2, r2, asr r2
    9228:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    922c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9230:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9234:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9238:	745f3233 	ldrbvc	r3, [pc], #-563	; 9240 <disk_write+0xcc>
    923c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    9240:	30304578 	eorscc	r4, r0, r8, ror r5
    9244:	30304330 	eorscc	r4, r0, r0, lsr r3
    9248:	00292930 	eoreq	r2, r9, r0, lsr r9
    924c:	5504a901 	strpl	sl, [r4, #-2305]	; 0xfffff6ff
    9250:	52485430 	subpl	r5, r8, #48, 8	; 0x30000000
    9254:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9258:	616c6f76 	smcvs	50934	; 0xc6f6
    925c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9260:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9264:	5f323374 	svcpl	0x00323374
    9268:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    926c:	30457830 	subcc	r7, r5, r0, lsr r8
    9270:	30433030 	subcc	r3, r3, r0, lsr r0
    9274:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    9278:	04aa0100 	strteq	r0, [sl], #256	; 0x100
    927c:	4c443055 	mcrrmi	0, 5, r3, r4, cr5
    9280:	2a28204c 	bcs	a113b8 <__mprec_tinytens+0x9ecb48>
    9284:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 91ec <disk_write+0x78>
    9288:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    928c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9290:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9294:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9298:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    929c:	43303030 	teqmi	r0, #48	; 0x30
    92a0:	29303030 	ldmdbcs	r0!, {r4, r5, ip, sp}
    92a4:	ab010029 	blge	49350 <__mprec_tinytens+0x24ae0>
    92a8:	44305504 	ldrtmi	r5, [r0], #-1284	; 0xfffffafc
    92ac:	28204d4c 	stmdacs	r0!, {r2, r3, r6, r8, sl, fp, lr}
    92b0:	6f76282a 	svcvs	0x0076282a
    92b4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    92b8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    92bc:	33746e69 	cmncc	r4, #1680	; 0x690
    92c0:	2a745f32 	bcs	1d20f90 <__mprec_tinytens+0x1cfc720>
    92c4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    92c8:	30303045 	eorscc	r3, r0, r5, asr #32
    92cc:	34303043 	ldrtcc	r3, [r0], #-67	; 0xffffffbd
    92d0:	01002929 	tsteq	r0, r9, lsr #18
    92d4:	305504ac 	subscc	r0, r5, ip, lsr #9
    92d8:	20524549 	subscs	r4, r2, r9, asr #10
    92dc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    92e0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    92e4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    92e8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    92ec:	745f3233 	ldrbvc	r3, [pc], #-563	; 92f4 <disk_ioctl+0x88>
    92f0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    92f4:	30304578 	eorscc	r4, r0, r8, ror r5
    92f8:	30304330 	eorscc	r4, r0, r0, lsr r3
    92fc:	00292934 	eoreq	r2, r9, r4, lsr r9
    9300:	5504ad01 	strpl	sl, [r4, #-3329]	; 0xfffff2ff
    9304:	52494930 	subpl	r4, r9, #48, 18	; 0xc0000
    9308:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    930c:	616c6f76 	smcvs	50934	; 0xc6f6
    9310:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9314:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9318:	5f323374 	svcpl	0x00323374
    931c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    9320:	30457830 	subcc	r7, r5, r0, lsr r8
    9324:	30433030 	subcc	r3, r3, r0, lsr r0
    9328:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    932c:	04ae0100 	strteq	r0, [lr], #256	; 0x100
    9330:	43463055 	movtmi	r3, #24661	; 0x6055
    9334:	2a282052 	bcs	a11484 <__mprec_tinytens+0x9ecc14>
    9338:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 92a0 <disk_ioctl+0x34>
    933c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9340:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9344:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9348:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    934c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9350:	43303030 	teqmi	r0, #48	; 0x30
    9354:	29383030 	ldmdbcs	r8!, {r4, r5, ip, sp}
    9358:	af010029 	svcge	0x00010029
    935c:	4c305504 	cfldr32mi	mvfx5, [r0], #-16
    9360:	28205243 	stmdacs	r0!, {r0, r1, r6, r9, ip, lr}
    9364:	6f76282a 	svcvs	0x0076282a
    9368:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    936c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9370:	33746e69 	cmncc	r4, #1680	; 0x690
    9374:	2a745f32 	bcs	1d21044 <__mprec_tinytens+0x1cfc7d4>
    9378:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    937c:	30303045 	eorscc	r3, r0, r5, asr #32
    9380:	43303043 	teqmi	r0, #67	; 0x43
    9384:	01002929 	tsteq	r0, r9, lsr #18
    9388:	305504b0 	ldrhcc	r0, [r5], #-64	; 0xffffffc0
    938c:	2052534c 	subscs	r5, r2, ip, asr #6
    9390:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9394:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9398:	20656c69 	rsbcs	r6, r5, r9, ror #24
    939c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    93a0:	745f3233 	ldrbvc	r3, [pc], #-563	; 93a8 <disk_ioctl+0x13c>
    93a4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    93a8:	30304578 	eorscc	r4, r0, r8, ror r5
    93ac:	31304330 	teqcc	r0, r0, lsr r3
    93b0:	00292934 	eoreq	r2, r9, r4, lsr r9
    93b4:	5504b101 	strpl	fp, [r4, #-257]	; 0xfffffeff
    93b8:	52435330 	subpl	r5, r3, #48, 6	; 0xc0000000
    93bc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    93c0:	616c6f76 	smcvs	50934	; 0xc6f6
    93c4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    93c8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    93cc:	5f323374 	svcpl	0x00323374
    93d0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    93d4:	30457830 	subcc	r7, r5, r0, lsr r8
    93d8:	30433030 	subcc	r3, r3, r0, lsr r0
    93dc:	29294331 	stmdbcs	r9!, {r0, r4, r5, r8, r9, lr}
    93e0:	04b20100 	ldrteq	r0, [r2], #256	; 0x100
    93e4:	43413055 	movtmi	r3, #4181	; 0x1055
    93e8:	2a282052 	bcs	a11538 <__mprec_tinytens+0x9eccc8>
    93ec:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 9354 <disk_ioctl+0xe8>
    93f0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    93f4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    93f8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    93fc:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9400:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9404:	43303030 	teqmi	r0, #48	; 0x30
    9408:	29303230 	ldmdbcs	r0!, {r4, r5, r9, ip, sp}
    940c:	b3010029 	movwlt	r0, #4137	; 0x1029
    9410:	49305504 	ldmdbmi	r0!, {r2, r8, sl, ip, lr}
    9414:	28205243 	stmdacs	r0!, {r0, r1, r6, r9, ip, lr}
    9418:	6f76282a 	svcvs	0x0076282a
    941c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    9420:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9424:	33746e69 	cmncc	r4, #1680	; 0x690
    9428:	2a745f32 	bcs	1d210f8 <__mprec_tinytens+0x1cfc888>
    942c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9430:	30303045 	eorscc	r3, r0, r5, asr #32
    9434:	34323043 	ldrtcc	r3, [r2], #-67	; 0xffffffbd
    9438:	01002929 	tsteq	r0, r9, lsr #18
    943c:	305504b4 	ldrhcc	r0, [r5], #-68	; 0xffffffbc
    9440:	20524446 	subscs	r4, r2, r6, asr #8
    9444:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9448:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    944c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9450:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9454:	745f3233 	ldrbvc	r3, [pc], #-563	; 945c <disk_ioctl+0x1f0>
    9458:	3028292a 	eorcc	r2, r8, sl, lsr #18
    945c:	30304578 	eorscc	r4, r0, r8, ror r5
    9460:	32304330 	eorscc	r4, r0, #48, 6	; 0xc0000000
    9464:	00292938 	eoreq	r2, r9, r8, lsr r9
    9468:	5504b501 	strpl	fp, [r4, #-1281]	; 0xfffffaff
    946c:	52455430 	subpl	r5, r5, #48, 8	; 0x30000000
    9470:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9474:	616c6f76 	smcvs	50934	; 0xc6f6
    9478:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    947c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9480:	5f323374 	svcpl	0x00323374
    9484:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    9488:	30457830 	subcc	r7, r5, r0, lsr r8
    948c:	30433030 	subcc	r3, r3, r0, lsr r0
    9490:	29293033 	stmdbcs	r9!, {r0, r1, r4, r5, ip, sp}
    9494:	04b70100 	ldrteq	r0, [r7], #256	; 0x100
    9498:	42523155 	subsmi	r3, r2, #1073741845	; 0x40000015
    949c:	2a282052 	bcs	a115ec <__mprec_tinytens+0x9ecd7c>
    94a0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 9408 <disk_ioctl+0x19c>
    94a4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    94a8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    94ac:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    94b0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    94b4:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    94b8:	30313030 	eorscc	r3, r1, r0, lsr r0
    94bc:	29303030 	ldmdbcs	r0!, {r4, r5, ip, sp}
    94c0:	b8010029 	stmdalt	r1, {r0, r3, r5}
    94c4:	54315504 	ldrtpl	r5, [r1], #-1284	; 0xfffffafc
    94c8:	28205248 	stmdacs	r0!, {r3, r6, r9, ip, lr}
    94cc:	6f76282a 	svcvs	0x0076282a
    94d0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    94d4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    94d8:	33746e69 	cmncc	r4, #1680	; 0x690
    94dc:	2a745f32 	bcs	1d211ac <__mprec_tinytens+0x1cfc93c>
    94e0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    94e4:	31303045 	teqcc	r0, r5, asr #32
    94e8:	30303030 	eorscc	r3, r0, r0, lsr r0
    94ec:	01002929 	tsteq	r0, r9, lsr #18
    94f0:	315504b9 	ldrhcc	r0, [r5, #-73]	; 0xffffffb7
    94f4:	204c4c44 	subcs	r4, ip, r4, asr #24
    94f8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    94fc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9500:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9504:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9508:	745f3233 	ldrbvc	r3, [pc], #-563	; 9510 <disk_ioctl+0x2a4>
    950c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    9510:	30304578 	eorscc	r4, r0, r8, ror r5
    9514:	30303031 	eorscc	r3, r0, r1, lsr r0
    9518:	00292930 	eoreq	r2, r9, r0, lsr r9
    951c:	5504ba01 	strpl	fp, [r4, #-2561]	; 0xfffff5ff
    9520:	4d4c4431 	cfstrdmi	mvd4, [ip, #-196]	; 0xffffff3c
    9524:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9528:	616c6f76 	smcvs	50934	; 0xc6f6
    952c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9530:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9534:	5f323374 	svcpl	0x00323374
    9538:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    953c:	30457830 	subcc	r7, r5, r0, lsr r8
    9540:	30303130 	eorscc	r3, r0, r0, lsr r1
    9544:	29293430 	stmdbcs	r9!, {r4, r5, sl, ip, sp}
    9548:	04bb0100 	ldrteq	r0, [fp], #256	; 0x100
    954c:	45493155 	strbmi	r3, [r9, #-341]	; 0xfffffeab
    9550:	2a282052 	bcs	a116a0 <__mprec_tinytens+0x9ece30>
    9554:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 94bc <disk_ioctl+0x250>
    9558:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    955c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9560:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9564:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9568:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    956c:	30313030 	eorscc	r3, r1, r0, lsr r0
    9570:	29343030 	ldmdbcs	r4!, {r4, r5, ip, sp}
    9574:	bc010029 	stclt	0, cr0, [r1], {41}	; 0x29
    9578:	49315504 	ldmdbmi	r1!, {r2, r8, sl, ip, lr}
    957c:	28205249 	stmdacs	r0!, {r0, r3, r6, r9, ip, lr}
    9580:	6f76282a 	svcvs	0x0076282a
    9584:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    9588:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    958c:	33746e69 	cmncc	r4, #1680	; 0x690
    9590:	2a745f32 	bcs	1d21260 <__mprec_tinytens+0x1cfc9f0>
    9594:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9598:	31303045 	teqcc	r0, r5, asr #32
    959c:	38303030 	ldmdacc	r0!, {r4, r5, ip, sp}
    95a0:	01002929 	tsteq	r0, r9, lsr #18
    95a4:	315504bd 	ldrhcc	r0, [r5, #-77]	; 0xffffffb3
    95a8:	20524346 	subscs	r4, r2, r6, asr #6
    95ac:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    95b0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    95b4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    95b8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    95bc:	745f3233 	ldrbvc	r3, [pc], #-563	; 95c4 <LCD_Write>
    95c0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    95c4:	30304578 	eorscc	r4, r0, r8, ror r5
    95c8:	30303031 	eorscc	r3, r0, r1, lsr r0
    95cc:	00292938 	eoreq	r2, r9, r8, lsr r9
    95d0:	5504be01 	strpl	fp, [r4, #-3585]	; 0xfffff1ff
    95d4:	52434c31 	subpl	r4, r3, #12544	; 0x3100
    95d8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    95dc:	616c6f76 	smcvs	50934	; 0xc6f6
    95e0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    95e4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    95e8:	5f323374 	svcpl	0x00323374
    95ec:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    95f0:	30457830 	subcc	r7, r5, r0, lsr r8
    95f4:	30303130 	eorscc	r3, r0, r0, lsr r1
    95f8:	29294330 	stmdbcs	r9!, {r4, r5, r8, r9, lr}
    95fc:	04bf0100 	ldrteq	r0, [pc], #256	; 9604 <LCD_Write+0x40>
    9600:	434d3155 	movtmi	r3, #53589	; 0xd155
    9604:	2a282052 	bcs	a11754 <__mprec_tinytens+0x9ecee4>
    9608:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 9570 <disk_ioctl+0x304>
    960c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9610:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9614:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9618:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    961c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9620:	30313030 	eorscc	r3, r1, r0, lsr r0
    9624:	29303130 	ldmdbcs	r0!, {r4, r5, r8, ip, sp}
    9628:	c0010029 	andgt	r0, r1, r9, lsr #32
    962c:	4c315504 	cfldr32mi	mvfx5, [r1], #-16
    9630:	28205253 	stmdacs	r0!, {r0, r1, r4, r6, r9, ip, lr}
    9634:	6f76282a 	svcvs	0x0076282a
    9638:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    963c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9640:	33746e69 	cmncc	r4, #1680	; 0x690
    9644:	2a745f32 	bcs	1d21314 <__mprec_tinytens+0x1cfcaa4>
    9648:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    964c:	31303045 	teqcc	r0, r5, asr #32
    9650:	34313030 	ldrtcc	r3, [r1], #-48	; 0xffffffd0
    9654:	01002929 	tsteq	r0, r9, lsr #18
    9658:	315504c1 	cmpcc	r5, r1, asr #9
    965c:	2052534d 	subscs	r5, r2, sp, asr #6
    9660:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9664:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9668:	20656c69 	rsbcs	r6, r5, r9, ror #24
    966c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9670:	745f3233 	ldrbvc	r3, [pc], #-563	; 9678 <LCD_Init+0x14>
    9674:	3028292a 	eorcc	r2, r8, sl, lsr #18
    9678:	30304578 	eorscc	r4, r0, r8, ror r5
    967c:	31303031 	teqcc	r0, r1, lsr r0
    9680:	00292938 	eoreq	r2, r9, r8, lsr r9
    9684:	5504c201 	strpl	ip, [r4, #-513]	; 0xfffffdff
    9688:	52435331 	subpl	r5, r3, #-1006632960	; 0xc4000000
    968c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9690:	616c6f76 	smcvs	50934	; 0xc6f6
    9694:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9698:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    969c:	5f323374 	svcpl	0x00323374
    96a0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    96a4:	30457830 	subcc	r7, r5, r0, lsr r8
    96a8:	30303130 	eorscc	r3, r0, r0, lsr r1
    96ac:	29294331 	stmdbcs	r9!, {r0, r4, r5, r8, r9, lr}
    96b0:	04c30100 	strbeq	r0, [r3], #256	; 0x100
    96b4:	43413155 	movtmi	r3, #4437	; 0x1155
    96b8:	2a282052 	bcs	a11808 <__mprec_tinytens+0x9ecf98>
    96bc:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 9624 <LCD_Write+0x60>
    96c0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    96c4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    96c8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    96cc:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    96d0:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    96d4:	30313030 	eorscc	r3, r1, r0, lsr r0
    96d8:	29303230 	ldmdbcs	r0!, {r4, r5, r9, ip, sp}
    96dc:	c4010029 	strgt	r0, [r1], #-41	; 0xffffffd7
    96e0:	46315504 	ldrtmi	r5, [r1], -r4, lsl #10
    96e4:	28205244 	stmdacs	r0!, {r2, r6, r9, ip, lr}
    96e8:	6f76282a 	svcvs	0x0076282a
    96ec:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    96f0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    96f4:	33746e69 	cmncc	r4, #1680	; 0x690
    96f8:	2a745f32 	bcs	1d213c8 <__mprec_tinytens+0x1cfcb58>
    96fc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9700:	31303045 	teqcc	r0, r5, asr #32
    9704:	38323030 	ldmdacc	r2!, {r4, r5, ip, sp}
    9708:	01002929 	tsteq	r0, r9, lsr #18
    970c:	315504c5 	cmpcc	r5, r5, asr #9
    9710:	20524554 	subscs	r4, r2, r4, asr r5
    9714:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9718:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    971c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9720:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9724:	745f3233 	ldrbvc	r3, [pc], #-563	; 972c <LCD_Init+0xc8>
    9728:	3028292a 	eorcc	r2, r8, sl, lsr #18
    972c:	30304578 	eorscc	r4, r0, r8, ror r5
    9730:	33303031 	teqcc	r0, #49	; 0x31
    9734:	00292930 	eoreq	r2, r9, r0, lsr r9
    9738:	5504c701 	strpl	ip, [r4, #-1793]	; 0xfffff8ff
    973c:	52425232 	subpl	r5, r2, #536870915	; 0x20000003
    9740:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9744:	616c6f76 	smcvs	50934	; 0xc6f6
    9748:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    974c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9750:	5f323374 	svcpl	0x00323374
    9754:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    9758:	30457830 	subcc	r7, r5, r0, lsr r8
    975c:	30383730 	eorscc	r3, r8, r0, lsr r7
    9760:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    9764:	04c80100 	strbeq	r0, [r8], #256	; 0x100
    9768:	48543255 	ldmdami	r4, {r0, r2, r4, r6, r9, ip, sp}^
    976c:	2a282052 	bcs	a118bc <__mprec_tinytens+0x9ed04c>
    9770:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 96d8 <LCD_Init+0x74>
    9774:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9778:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    977c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9780:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9784:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9788:	38373030 	ldmdacc	r7!, {r4, r5, ip, sp}
    978c:	29303030 	ldmdbcs	r0!, {r4, r5, ip, sp}
    9790:	c9010029 	stmdbgt	r1, {r0, r3, r5}
    9794:	44325504 	ldrtmi	r5, [r2], #-1284	; 0xfffffafc
    9798:	28204c4c 	stmdacs	r0!, {r2, r3, r6, sl, fp, lr}
    979c:	6f76282a 	svcvs	0x0076282a
    97a0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    97a4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    97a8:	33746e69 	cmncc	r4, #1680	; 0x690
    97ac:	2a745f32 	bcs	1d2147c <__mprec_tinytens+0x1cfcc0c>
    97b0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    97b4:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    97b8:	30303038 	eorscc	r3, r0, r8, lsr r0
    97bc:	01002929 	tsteq	r0, r9, lsr #18
    97c0:	325504ca 	subscc	r0, r5, #-905969664	; 0xca000000
    97c4:	204d4c44 	subcs	r4, sp, r4, asr #24
    97c8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    97cc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    97d0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    97d4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    97d8:	745f3233 	ldrbvc	r3, [pc], #-563	; 97e0 <LCD_Puts+0x68>
    97dc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    97e0:	30304578 	eorscc	r4, r0, r8, ror r5
    97e4:	30303837 	eorscc	r3, r0, r7, lsr r8
    97e8:	00292934 	eoreq	r2, r9, r4, lsr r9
    97ec:	5504cb01 	strpl	ip, [r4, #-2817]	; 0xfffff4ff
    97f0:	52454932 	subpl	r4, r5, #819200	; 0xc8000
    97f4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    97f8:	616c6f76 	smcvs	50934	; 0xc6f6
    97fc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9800:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9804:	5f323374 	svcpl	0x00323374
    9808:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    980c:	30457830 	subcc	r7, r5, r0, lsr r8
    9810:	30383730 	eorscc	r3, r8, r0, lsr r7
    9814:	29293430 	stmdbcs	r9!, {r4, r5, sl, ip, sp}
    9818:	04cc0100 	strbeq	r0, [ip], #256	; 0x100
    981c:	49493255 	stmdbmi	r9, {r0, r2, r4, r6, r9, ip, sp}^
    9820:	2a282052 	bcs	a11970 <__mprec_tinytens+0x9ed100>
    9824:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 978c <LCD_Puts+0x14>
    9828:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    982c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9830:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9834:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9838:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    983c:	38373030 	ldmdacc	r7!, {r4, r5, ip, sp}
    9840:	29383030 	ldmdbcs	r8!, {r4, r5, ip, sp}
    9844:	cd010029 	stcgt	0, cr0, [r1, #-164]	; 0xffffff5c
    9848:	46325504 	ldrtmi	r5, [r2], -r4, lsl #10
    984c:	28205243 	stmdacs	r0!, {r0, r1, r6, r9, ip, lr}
    9850:	6f76282a 	svcvs	0x0076282a
    9854:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    9858:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    985c:	33746e69 	cmncc	r4, #1680	; 0x690
    9860:	2a745f32 	bcs	1d21530 <__mprec_tinytens+0x1cfccc0>
    9864:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9868:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    986c:	38303038 	ldmdacc	r0!, {r3, r4, r5, ip, sp}
    9870:	01002929 	tsteq	r0, r9, lsr #18
    9874:	325504ce 	subscc	r0, r5, #-838860800	; 0xce000000
    9878:	2052434c 	subscs	r4, r2, ip, asr #6
    987c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9880:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9884:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9888:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    988c:	745f3233 	ldrbvc	r3, [pc], #-563	; 9894 <LCD_wait_msec+0x34>
    9890:	3028292a 	eorcc	r2, r8, sl, lsr #18
    9894:	30304578 	eorscc	r4, r0, r8, ror r5
    9898:	30303837 	eorscc	r3, r0, r7, lsr r8
    989c:	00292943 	eoreq	r2, r9, r3, asr #18
    98a0:	5504cf01 	strpl	ip, [r4, #-3841]	; 0xfffff0ff
    98a4:	52534c32 	subspl	r4, r3, #12800	; 0x3200
    98a8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    98ac:	616c6f76 	smcvs	50934	; 0xc6f6
    98b0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    98b4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    98b8:	5f323374 	svcpl	0x00323374
    98bc:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    98c0:	30457830 	subcc	r7, r5, r0, lsr r8
    98c4:	30383730 	eorscc	r3, r8, r0, lsr r7
    98c8:	29293431 	stmdbcs	r9!, {r0, r4, r5, sl, ip, sp}
    98cc:	04d00100 	ldrbeq	r0, [r0], #256	; 0x100
    98d0:	43533255 	cmpmi	r3, #1342177285	; 0x50000005
    98d4:	2a282052 	bcs	a11a24 <__mprec_tinytens+0x9ed1b4>
    98d8:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 9840 <LCD_PutHex+0x3c>
    98dc:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    98e0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    98e4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    98e8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    98ec:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    98f0:	38373030 	ldmdacc	r7!, {r4, r5, ip, sp}
    98f4:	29433130 	stmdbcs	r3, {r4, r5, r8, ip, sp}^
    98f8:	d1010029 	tstle	r1, r9, lsr #32
    98fc:	41325504 	teqmi	r2, r4, lsl #10
    9900:	28205243 	stmdacs	r0!, {r0, r1, r6, r9, ip, lr}
    9904:	6f76282a 	svcvs	0x0076282a
    9908:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    990c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9910:	33746e69 	cmncc	r4, #1680	; 0x690
    9914:	2a745f32 	bcs	1d215e4 <__mprec_tinytens+0x1cfcd74>
    9918:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    991c:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    9920:	30323038 	eorscc	r3, r2, r8, lsr r0
    9924:	01002929 	tsteq	r0, r9, lsr #18
    9928:	325504d2 	subscc	r0, r5, #-771751936	; 0xd2000000
    992c:	20524349 	subscs	r4, r2, r9, asr #6
    9930:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9934:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9938:	20656c69 	rsbcs	r6, r5, r9, ror #24
    993c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9940:	745f3233 	ldrbvc	r3, [pc], #-563	; 9948 <LCD_ShiftCursor+0x48>
    9944:	3028292a 	eorcc	r2, r8, sl, lsr #18
    9948:	30304578 	eorscc	r4, r0, r8, ror r5
    994c:	32303837 	eorscc	r3, r0, #3604480	; 0x370000
    9950:	00292934 	eoreq	r2, r9, r4, lsr r9
    9954:	5504d301 	strpl	sp, [r4, #-769]	; 0xfffffcff
    9958:	52444632 	subpl	r4, r4, #52428800	; 0x3200000
    995c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9960:	616c6f76 	smcvs	50934	; 0xc6f6
    9964:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9968:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    996c:	5f323374 	svcpl	0x00323374
    9970:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    9974:	30457830 	subcc	r7, r5, r0, lsr r8
    9978:	30383730 	eorscc	r3, r8, r0, lsr r7
    997c:	29293832 	stmdbcs	r9!, {r1, r4, r5, fp, ip, sp}
    9980:	04d40100 	ldrbeq	r0, [r4], #256	; 0x100
    9984:	45543255 	ldrbmi	r3, [r4, #-597]	; 0xfffffdab
    9988:	2a282052 	bcs	a11ad8 <__mprec_tinytens+0x9ed268>
    998c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 98f4 <LCD_ShiftDisp+0x4c>
    9990:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9994:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9998:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    999c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    99a0:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    99a4:	38373030 	ldmdacc	r7!, {r4, r5, ip, sp}
    99a8:	29303330 	ldmdbcs	r0!, {r4, r5, r8, r9, ip, sp}
    99ac:	d6010029 	strle	r0, [r1], -r9, lsr #32
    99b0:	52335504 	eorspl	r5, r3, #4, 10	; 0x1000000
    99b4:	28205242 	stmdacs	r0!, {r1, r6, r9, ip, lr}
    99b8:	6f76282a 	svcvs	0x0076282a
    99bc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    99c0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    99c4:	33746e69 	cmncc	r4, #1680	; 0x690
    99c8:	2a745f32 	bcs	1d21698 <__mprec_tinytens+0x1cfce28>
    99cc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    99d0:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    99d4:	30303043 	eorscc	r3, r0, r3, asr #32
    99d8:	01002929 	tsteq	r0, r9, lsr #18
    99dc:	335504d7 	cmpcc	r5, #-687865856	; 0xd7000000
    99e0:	20524854 	subscs	r4, r2, r4, asr r8
    99e4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    99e8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    99ec:	20656c69 	rsbcs	r6, r5, r9, ror #24
    99f0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    99f4:	745f3233 	ldrbvc	r3, [pc], #-563	; 99fc <__malloc2388_init+0xa4>
    99f8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    99fc:	30304578 	eorscc	r4, r0, r8, ror r5
    9a00:	30304337 	eorscc	r4, r0, r7, lsr r3
    9a04:	00292930 	eoreq	r2, r9, r0, lsr r9
    9a08:	5504d801 	strpl	sp, [r4, #-2049]	; 0xfffff7ff
    9a0c:	4c4c4433 	cfstrdmi	mvd4, [ip], {51}	; 0x33
    9a10:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9a14:	616c6f76 	smcvs	50934	; 0xc6f6
    9a18:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9a1c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9a20:	5f323374 	svcpl	0x00323374
    9a24:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    9a28:	30457830 	subcc	r7, r5, r0, lsr r8
    9a2c:	30433730 	subcc	r3, r3, r0, lsr r7
    9a30:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    9a34:	04d90100 	ldrbeq	r0, [r9], #256	; 0x100
    9a38:	4c443355 	mcrrmi	3, 5, r3, r4, cr5
    9a3c:	2a28204d 	bcs	a11b78 <__mprec_tinytens+0x9ed308>
    9a40:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 99a8 <__malloc2388_init+0x50>
    9a44:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9a48:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9a4c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9a50:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9a54:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9a58:	43373030 	teqmi	r7, #48	; 0x30
    9a5c:	29343030 	ldmdbcs	r4!, {r4, r5, ip, sp}
    9a60:	da010029 	ble	49b0c <__mprec_tinytens+0x2529c>
    9a64:	49335504 	ldmdbmi	r3!, {r2, r8, sl, ip, lr}
    9a68:	28205245 	stmdacs	r0!, {r0, r2, r6, r9, ip, lr}
    9a6c:	6f76282a 	svcvs	0x0076282a
    9a70:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    9a74:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9a78:	33746e69 	cmncc	r4, #1680	; 0x690
    9a7c:	2a745f32 	bcs	1d2174c <__mprec_tinytens+0x1cfcedc>
    9a80:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9a84:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    9a88:	34303043 	ldrtcc	r3, [r0], #-67	; 0xffffffbd
    9a8c:	01002929 	tsteq	r0, r9, lsr #18
    9a90:	335504db 	cmpcc	r5, #-620756992	; 0xdb000000
    9a94:	20524949 	subscs	r4, r2, r9, asr #18
    9a98:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9a9c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9aa0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9aa4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9aa8:	745f3233 	ldrbvc	r3, [pc], #-563	; 9ab0 <malloc2388+0x60>
    9aac:	3028292a 	eorcc	r2, r8, sl, lsr #18
    9ab0:	30304578 	eorscc	r4, r0, r8, ror r5
    9ab4:	30304337 	eorscc	r4, r0, r7, lsr r3
    9ab8:	00292938 	eoreq	r2, r9, r8, lsr r9
    9abc:	5504dc01 	strpl	sp, [r4, #-3073]	; 0xfffff3ff
    9ac0:	52434633 	subpl	r4, r3, #53477376	; 0x3300000
    9ac4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9ac8:	616c6f76 	smcvs	50934	; 0xc6f6
    9acc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9ad0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9ad4:	5f323374 	svcpl	0x00323374
    9ad8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    9adc:	30457830 	subcc	r7, r5, r0, lsr r8
    9ae0:	30433730 	subcc	r3, r3, r0, lsr r7
    9ae4:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    9ae8:	04dd0100 	ldrbeq	r0, [sp], #256	; 0x100
    9aec:	434c3355 	movtmi	r3, #50005	; 0xc355
    9af0:	2a282052 	bcs	a11c40 <__mprec_tinytens+0x9ed3d0>
    9af4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 9a5c <malloc2388+0xc>
    9af8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9afc:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9b00:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9b04:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9b08:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9b0c:	43373030 	teqmi	r7, #48	; 0x30
    9b10:	29433030 	stmdbcs	r3, {r4, r5, ip, sp}^
    9b14:	de010029 	cdple	0, 0, cr0, cr1, cr9, {1}
    9b18:	4c335504 	cfldr32mi	mvfx5, [r3], #-16
    9b1c:	28205253 	stmdacs	r0!, {r0, r1, r4, r6, r9, ip, lr}
    9b20:	6f76282a 	svcvs	0x0076282a
    9b24:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    9b28:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9b2c:	33746e69 	cmncc	r4, #1680	; 0x690
    9b30:	2a745f32 	bcs	1d21800 <__mprec_tinytens+0x1cfcf90>
    9b34:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9b38:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    9b3c:	34313043 	ldrtcc	r3, [r1], #-67	; 0xffffffbd
    9b40:	01002929 	tsteq	r0, r9, lsr #18
    9b44:	335504df 	cmpcc	r5, #-553648128	; 0xdf000000
    9b48:	20524353 	subscs	r4, r2, r3, asr r3
    9b4c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9b50:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9b54:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9b58:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9b5c:	745f3233 	ldrbvc	r3, [pc], #-563	; 9b64 <free2388+0x88>
    9b60:	3028292a 	eorcc	r2, r8, sl, lsr #18
    9b64:	30304578 	eorscc	r4, r0, r8, ror r5
    9b68:	31304337 	teqcc	r0, r7, lsr r3
    9b6c:	00292943 	eoreq	r2, r9, r3, asr #18
    9b70:	5504e001 	strpl	lr, [r4, #-1]
    9b74:	52434133 	subpl	r4, r3, #-1073741812	; 0xc000000c
    9b78:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9b7c:	616c6f76 	smcvs	50934	; 0xc6f6
    9b80:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9b84:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9b88:	5f323374 	svcpl	0x00323374
    9b8c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    9b90:	30457830 	subcc	r7, r5, r0, lsr r8
    9b94:	30433730 	subcc	r3, r3, r0, lsr r7
    9b98:	29293032 	stmdbcs	r9!, {r1, r4, r5, ip, sp}
    9b9c:	04e10100 	strbteq	r0, [r1], #256	; 0x100
    9ba0:	43493355 	movtmi	r3, #37717	; 0x9355
    9ba4:	2a282052 	bcs	a11cf4 <__mprec_tinytens+0x9ed484>
    9ba8:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 9b10 <free2388+0x34>
    9bac:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9bb0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9bb4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9bb8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9bbc:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9bc0:	43373030 	teqmi	r7, #48	; 0x30
    9bc4:	29343230 	ldmdbcs	r4!, {r4, r5, r9, ip, sp}
    9bc8:	e2010029 	and	r0, r1, #41	; 0x29
    9bcc:	46335504 	ldrtmi	r5, [r3], -r4, lsl #10
    9bd0:	28205244 	stmdacs	r0!, {r2, r6, r9, ip, lr}
    9bd4:	6f76282a 	svcvs	0x0076282a
    9bd8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    9bdc:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9be0:	33746e69 	cmncc	r4, #1680	; 0x690
    9be4:	2a745f32 	bcs	1d218b4 <__mprec_tinytens+0x1cfd044>
    9be8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9bec:	37303045 	ldrcc	r3, [r0, -r5, asr #32]!
    9bf0:	38323043 	ldmdacc	r2!, {r0, r1, r6, ip, sp}
    9bf4:	01002929 	tsteq	r0, r9, lsr #18
    9bf8:	335504e3 	cmpcc	r5, #-486539264	; 0xe3000000
    9bfc:	20524554 	subscs	r4, r2, r4, asr r5
    9c00:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9c04:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9c08:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9c0c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9c10:	745f3233 	ldrbvc	r3, [pc], #-563	; 9c18 <free2388+0x13c>
    9c14:	3028292a 	eorcc	r2, r8, sl, lsr #18
    9c18:	30304578 	eorscc	r4, r0, r8, ror r5
    9c1c:	33304337 	teqcc	r0, #-603979776	; 0xdc000000
    9c20:	00292930 	eoreq	r2, r9, r0, lsr r9
    9c24:	4904e501 	stmdbmi	r4, {r0, r8, sl, sp, lr, pc}
    9c28:	4f433032 	svcmi	0x00433032
    9c2c:	5445534e 	strbpl	r5, [r5], #-846	; 0xfffffcb2
    9c30:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9c34:	616c6f76 	smcvs	50934	; 0xc6f6
    9c38:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9c3c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9c40:	5f323374 	svcpl	0x00323374
    9c44:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    9c48:	30457830 	subcc	r7, r5, r0, lsr r8
    9c4c:	30433130 	subcc	r3, r3, r0, lsr r1
    9c50:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    9c54:	04e60100 	strbteq	r0, [r6], #256	; 0x100
    9c58:	53303249 	teqpl	r0, #-1879048188	; 0x90000004
    9c5c:	20544154 	subscs	r4, r4, r4, asr r1
    9c60:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9c64:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9c68:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9c6c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9c70:	745f3233 	ldrbvc	r3, [pc], #-563	; 9c78 <free2388+0x19c>
    9c74:	3028292a 	eorcc	r2, r8, sl, lsr #18
    9c78:	30304578 	eorscc	r4, r0, r8, ror r5
    9c7c:	30304331 	eorscc	r4, r0, r1, lsr r3
    9c80:	00292934 	eoreq	r2, r9, r4, lsr r9
    9c84:	4904e701 	stmdbmi	r4, {r0, r8, r9, sl, sp, lr, pc}
    9c88:	41443032 	cmpmi	r4, r2, lsr r0
    9c8c:	2a282054 	bcs	a11de4 <__mprec_tinytens+0x9ed574>
    9c90:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 9bf8 <free2388+0x11c>
    9c94:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9c98:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9c9c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9ca0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9ca4:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9ca8:	43313030 	teqmi	r1, #48	; 0x30
    9cac:	29383030 	ldmdbcs	r8!, {r4, r5, ip, sp}
    9cb0:	e8010029 	stmda	r1, {r0, r3, r5}
    9cb4:	30324904 	eorscc	r4, r2, r4, lsl #18
    9cb8:	20524441 	subscs	r4, r2, r1, asr #8
    9cbc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9cc0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9cc4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9cc8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9ccc:	745f3233 	ldrbvc	r3, [pc], #-563	; 9cd4 <free2388+0x1f8>
    9cd0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    9cd4:	30304578 	eorscc	r4, r0, r8, ror r5
    9cd8:	30304331 	eorscc	r4, r0, r1, lsr r3
    9cdc:	00292943 	eoreq	r2, r9, r3, asr #18
    9ce0:	4904e901 	stmdbmi	r4, {r0, r8, fp, sp, lr, pc}
    9ce4:	43533032 	cmpmi	r3, #50	; 0x32
    9ce8:	2820484c 	stmdacs	r0!, {r2, r3, r6, fp, lr}
    9cec:	6f76282a 	svcvs	0x0076282a
    9cf0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    9cf4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9cf8:	33746e69 	cmncc	r4, #1680	; 0x690
    9cfc:	2a745f32 	bcs	1d219cc <__mprec_tinytens+0x1cfd15c>
    9d00:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9d04:	31303045 	teqcc	r0, r5, asr #32
    9d08:	30313043 	eorscc	r3, r1, r3, asr #32
    9d0c:	01002929 	tsteq	r0, r9, lsr #18
    9d10:	324904ea 	subcc	r0, r9, #-369098752	; 0xea000000
    9d14:	4c435330 	mcrrmi	3, 3, r5, r3, cr0
    9d18:	2a28204c 	bcs	a11e50 <__mprec_tinytens+0x9ed5e0>
    9d1c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 9c84 <free2388+0x1a8>
    9d20:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9d24:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9d28:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9d2c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9d30:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9d34:	43313030 	teqmi	r1, #48	; 0x30
    9d38:	29343130 	ldmdbcs	r4!, {r4, r5, r8, ip, sp}
    9d3c:	eb010029 	bl	49de8 <__mprec_tinytens+0x25578>
    9d40:	30324904 	eorscc	r4, r2, r4, lsl #18
    9d44:	434e4f43 	movtmi	r4, #61251	; 0xef43
    9d48:	2820524c 	stmdacs	r0!, {r2, r3, r6, r9, ip, lr}
    9d4c:	6f76282a 	svcvs	0x0076282a
    9d50:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    9d54:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9d58:	33746e69 	cmncc	r4, #1680	; 0x690
    9d5c:	2a745f32 	bcs	1d21a2c <__mprec_tinytens+0x1cfd1bc>
    9d60:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9d64:	31303045 	teqcc	r0, r5, asr #32
    9d68:	38313043 	ldmdacc	r1!, {r0, r1, r6, ip, sp}
    9d6c:	01002929 	tsteq	r0, r9, lsr #18
    9d70:	324904ed 	subcc	r0, r9, #-318767104	; 0xed000000
    9d74:	4e4f4331 	mcrmi	3, 2, r4, cr15, cr1, {1}
    9d78:	20544553 	subscs	r4, r4, r3, asr r5
    9d7c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9d80:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9d84:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9d88:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9d8c:	745f3233 	ldrbvc	r3, [pc], #-563	; 9d94 <free2388+0x2b8>
    9d90:	3028292a 	eorcc	r2, r8, sl, lsr #18
    9d94:	30304578 	eorscc	r4, r0, r8, ror r5
    9d98:	30304335 	eorscc	r4, r0, r5, lsr r3
    9d9c:	00292930 	eoreq	r2, r9, r0, lsr r9
    9da0:	4904ee01 	stmdbmi	r4, {r0, r9, sl, fp, sp, lr, pc}
    9da4:	54533132 	ldrbpl	r3, [r3], #-306	; 0xfffffece
    9da8:	28205441 	stmdacs	r0!, {r0, r6, sl, ip, lr}
    9dac:	6f76282a 	svcvs	0x0076282a
    9db0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    9db4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9db8:	33746e69 	cmncc	r4, #1680	; 0x690
    9dbc:	2a745f32 	bcs	1d21a8c <__mprec_tinytens+0x1cfd21c>
    9dc0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9dc4:	35303045 	ldrcc	r3, [r0, #-69]!	; 0xffffffbb
    9dc8:	34303043 	ldrtcc	r3, [r0], #-67	; 0xffffffbd
    9dcc:	01002929 	tsteq	r0, r9, lsr #18
    9dd0:	324904ef 	subcc	r0, r9, #-285212672	; 0xef000000
    9dd4:	54414431 	strbpl	r4, [r1], #-1073	; 0xfffffbcf
    9dd8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9ddc:	616c6f76 	smcvs	50934	; 0xc6f6
    9de0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9de4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9de8:	5f323374 	svcpl	0x00323374
    9dec:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    9df0:	30457830 	subcc	r7, r5, r0, lsr r8
    9df4:	30433530 	subcc	r3, r3, r0, lsr r5
    9df8:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    9dfc:	04f00100 	ldrbteq	r0, [r0], #256	; 0x100
    9e00:	41313249 	teqmi	r1, r9, asr #4
    9e04:	28205244 	stmdacs	r0!, {r2, r6, r9, ip, lr}
    9e08:	6f76282a 	svcvs	0x0076282a
    9e0c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    9e10:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9e14:	33746e69 	cmncc	r4, #1680	; 0x690
    9e18:	2a745f32 	bcs	1d21ae8 <__mprec_tinytens+0x1cfd278>
    9e1c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9e20:	35303045 	ldrcc	r3, [r0, #-69]!	; 0xffffffbb
    9e24:	43303043 	teqmi	r0, #67	; 0x43
    9e28:	01002929 	tsteq	r0, r9, lsr #18
    9e2c:	324904f1 	subcc	r0, r9, #-251658240	; 0xf1000000
    9e30:	4c435331 	mcrrmi	3, 3, r5, r3, cr1
    9e34:	2a282048 	bcs	a11f5c <__mprec_tinytens+0x9ed6ec>
    9e38:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 9da0 <free2388+0x2c4>
    9e3c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9e40:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9e44:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9e48:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9e4c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9e50:	43353030 	teqmi	r5, #48	; 0x30
    9e54:	29303130 	ldmdbcs	r0!, {r4, r5, r8, ip, sp}
    9e58:	f2010029 	vhadd.s8	d0, d1, d25
    9e5c:	31324904 	teqcc	r2, r4, lsl #18
    9e60:	4c4c4353 	mcrrmi	3, 5, r4, ip, cr3
    9e64:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9e68:	616c6f76 	smcvs	50934	; 0xc6f6
    9e6c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9e70:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9e74:	5f323374 	svcpl	0x00323374
    9e78:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    9e7c:	30457830 	subcc	r7, r5, r0, lsr r8
    9e80:	30433530 	subcc	r3, r3, r0, lsr r5
    9e84:	29293431 	stmdbcs	r9!, {r0, r4, r5, sl, ip, sp}
    9e88:	04f30100 	ldrbteq	r0, [r3], #256	; 0x100
    9e8c:	43313249 	teqmi	r1, #-1879048188	; 0x90000004
    9e90:	4c434e4f 	mcrrmi	14, 4, r4, r3, cr15
    9e94:	2a282052 	bcs	a11fe4 <__mprec_tinytens+0x9ed774>
    9e98:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 9e00 <free2388+0x324>
    9e9c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9ea0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9ea4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9ea8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9eac:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9eb0:	43353030 	teqmi	r5, #48	; 0x30
    9eb4:	29383130 	ldmdbcs	r8!, {r4, r5, r8, ip, sp}
    9eb8:	f5010029 			; <UNDEFINED> instruction: 0xf5010029
    9ebc:	32324904 	eorscc	r4, r2, #4, 18	; 0x10000
    9ec0:	534e4f43 	movtpl	r4, #61251	; 0xef43
    9ec4:	28205445 	stmdacs	r0!, {r0, r2, r6, sl, ip, lr}
    9ec8:	6f76282a 	svcvs	0x0076282a
    9ecc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    9ed0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    9ed4:	33746e69 	cmncc	r4, #1680	; 0x690
    9ed8:	2a745f32 	bcs	1d21ba8 <__mprec_tinytens+0x1cfd338>
    9edc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    9ee0:	38303045 	ldmdacc	r0!, {r0, r2, r6, ip, sp}
    9ee4:	30303030 	eorscc	r3, r0, r0, lsr r0
    9ee8:	01002929 	tsteq	r0, r9, lsr #18
    9eec:	324904f6 	subcc	r0, r9, #-167772160	; 0xf6000000
    9ef0:	41545332 	cmpmi	r4, r2, lsr r3
    9ef4:	2a282054 	bcs	a1204c <__mprec_tinytens+0x9ed7dc>
    9ef8:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 9e60 <free2388+0x384>
    9efc:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9f00:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9f04:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9f08:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9f0c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9f10:	30383030 	eorscc	r3, r8, r0, lsr r0
    9f14:	29343030 	ldmdbcs	r4!, {r4, r5, ip, sp}
    9f18:	f7010029 			; <UNDEFINED> instruction: 0xf7010029
    9f1c:	32324904 	eorscc	r4, r2, #4, 18	; 0x10000
    9f20:	20544144 	subscs	r4, r4, r4, asr #2
    9f24:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9f28:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9f2c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9f30:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9f34:	745f3233 	ldrbvc	r3, [pc], #-563	; 9f3c <free2388+0x460>
    9f38:	3028292a 	eorcc	r2, r8, sl, lsr #18
    9f3c:	30304578 	eorscc	r4, r0, r8, ror r5
    9f40:	30303038 	eorscc	r3, r0, r8, lsr r0
    9f44:	00292938 	eoreq	r2, r9, r8, lsr r9
    9f48:	4904f801 	stmdbmi	r4, {r0, fp, ip, sp, lr, pc}
    9f4c:	44413232 	strbmi	r3, [r1], #-562	; 0xfffffdce
    9f50:	2a282052 	bcs	a120a0 <__mprec_tinytens+0x9ed830>
    9f54:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 9ebc <free2388+0x3e0>
    9f58:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    9f5c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    9f60:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    9f64:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    9f68:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    9f6c:	30383030 	eorscc	r3, r8, r0, lsr r0
    9f70:	29433030 	stmdbcs	r3, {r4, r5, ip, sp}^
    9f74:	f9010029 			; <UNDEFINED> instruction: 0xf9010029
    9f78:	32324904 	eorscc	r4, r2, #4, 18	; 0x10000
    9f7c:	484c4353 	stmdami	ip, {r0, r1, r4, r6, r8, r9, lr}^
    9f80:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9f84:	616c6f76 	smcvs	50934	; 0xc6f6
    9f88:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9f8c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9f90:	5f323374 	svcpl	0x00323374
    9f94:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    9f98:	30457830 	subcc	r7, r5, r0, lsr r8
    9f9c:	30303830 	eorscc	r3, r0, r0, lsr r8
    9fa0:	29293031 	stmdbcs	r9!, {r0, r4, r5, ip, sp}
    9fa4:	04fa0100 	ldrbteq	r0, [sl], #256	; 0x100
    9fa8:	53323249 	teqpl	r2, #-1879048188	; 0x90000004
    9fac:	204c4c43 	subcs	r4, ip, r3, asr #24
    9fb0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    9fb4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    9fb8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    9fbc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    9fc0:	745f3233 	ldrbvc	r3, [pc], #-563	; 9fc8 <free2388+0x4ec>
    9fc4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    9fc8:	30304578 	eorscc	r4, r0, r8, ror r5
    9fcc:	31303038 	teqcc	r0, r8, lsr r0
    9fd0:	00292934 	eoreq	r2, r9, r4, lsr r9
    9fd4:	4904fb01 	stmdbmi	r4, {r0, r8, r9, fp, ip, sp, lr, pc}
    9fd8:	4f433232 	svcmi	0x00433232
    9fdc:	524c434e 	subpl	r4, ip, #939524097	; 0x38000001
    9fe0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    9fe4:	616c6f76 	smcvs	50934	; 0xc6f6
    9fe8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9fec:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    9ff0:	5f323374 	svcpl	0x00323374
    9ff4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    9ff8:	30457830 	subcc	r7, r5, r0, lsr r8
    9ffc:	30303830 	eorscc	r3, r0, r0, lsr r8
    a000:	29293831 	stmdbcs	r9!, {r0, r4, r5, fp, ip, sp}
    a004:	04fd0100 	ldrbteq	r0, [sp], #256	; 0x100
    a008:	50533053 	subspl	r3, r3, r3, asr r0
    a00c:	28205243 	stmdacs	r0!, {r0, r1, r6, r9, ip, lr}
    a010:	6f76282a 	svcvs	0x0076282a
    a014:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a018:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a01c:	33746e69 	cmncc	r4, #1680	; 0x690
    a020:	2a745f32 	bcs	1d21cf0 <__mprec_tinytens+0x1cfd480>
    a024:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a028:	32303045 	eorscc	r3, r0, #69	; 0x45
    a02c:	30303030 	eorscc	r3, r0, r0, lsr r0
    a030:	01002929 	tsteq	r0, r9, lsr #18
    a034:	305304fe 	ldrshcc	r0, [r3], #-78	; 0xffffffb2
    a038:	52535053 	subspl	r5, r3, #83	; 0x53
    a03c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a040:	616c6f76 	smcvs	50934	; 0xc6f6
    a044:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a048:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a04c:	5f323374 	svcpl	0x00323374
    a050:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a054:	30457830 	subcc	r7, r5, r0, lsr r8
    a058:	30303230 	eorscc	r3, r0, r0, lsr r2
    a05c:	29293430 	stmdbcs	r9!, {r4, r5, sl, ip, sp}
    a060:	04ff0100 	ldrbteq	r0, [pc], #256	; a068 <free2388+0x58c>
    a064:	50533053 	subspl	r3, r3, r3, asr r0
    a068:	28205244 	stmdacs	r0!, {r2, r6, r9, ip, lr}
    a06c:	6f76282a 	svcvs	0x0076282a
    a070:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a074:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a078:	33746e69 	cmncc	r4, #1680	; 0x690
    a07c:	2a745f32 	bcs	1d21d4c <__mprec_tinytens+0x1cfd4dc>
    a080:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a084:	32303045 	eorscc	r3, r0, #69	; 0x45
    a088:	38303030 	ldmdacc	r0!, {r4, r5, ip, sp}
    a08c:	01002929 	tsteq	r0, r9, lsr #18
    a090:	30530580 	subscc	r0, r3, r0, lsl #11
    a094:	43435053 	movtmi	r5, #12371	; 0x3053
    a098:	2a282052 	bcs	a121e8 <__mprec_tinytens+0x9ed978>
    a09c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; a004 <free2388+0x528>
    a0a0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    a0a4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    a0a8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    a0ac:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    a0b0:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    a0b4:	30323030 	eorscc	r3, r2, r0, lsr r0
    a0b8:	29433030 	stmdbcs	r3, {r4, r5, ip, sp}^
    a0bc:	81010029 	tsthi	r1, r9, lsr #32
    a0c0:	53305305 	teqpl	r0, #335544320	; 0x14000000
    a0c4:	544e4950 	strbpl	r4, [lr], #-2384	; 0xfffff6b0
    a0c8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a0cc:	616c6f76 	smcvs	50934	; 0xc6f6
    a0d0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a0d4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a0d8:	5f323374 	svcpl	0x00323374
    a0dc:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a0e0:	30457830 	subcc	r7, r5, r0, lsr r8
    a0e4:	30303230 	eorscc	r3, r0, r0, lsr r2
    a0e8:	29294331 	stmdbcs	r9!, {r0, r4, r5, r8, r9, lr}
    a0ec:	05830100 	streq	r0, [r3, #256]	; 0x100
    a0f0:	30505353 	subscc	r5, r0, r3, asr r3
    a0f4:	20305243 	eorscs	r5, r0, r3, asr #4
    a0f8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    a0fc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    a100:	20656c69 	rsbcs	r6, r5, r9, ror #24
    a104:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    a108:	745f3233 	ldrbvc	r3, [pc], #-563	; a110 <free2388+0x634>
    a10c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    a110:	30304578 	eorscc	r4, r0, r8, ror r5
    a114:	30303836 	eorscc	r3, r0, r6, lsr r8
    a118:	00292930 	eoreq	r2, r9, r0, lsr r9
    a11c:	53058401 	movwpl	r8, #21505	; 0x5401
    a120:	43305053 	teqmi	r0, #83	; 0x53
    a124:	28203152 	stmdacs	r0!, {r1, r4, r6, r8, ip, sp}
    a128:	6f76282a 	svcvs	0x0076282a
    a12c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a130:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a134:	33746e69 	cmncc	r4, #1680	; 0x690
    a138:	2a745f32 	bcs	1d21e08 <__mprec_tinytens+0x1cfd598>
    a13c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a140:	36303045 	ldrtcc	r3, [r0], -r5, asr #32
    a144:	34303038 	ldrtcc	r3, [r0], #-56	; 0xffffffc8
    a148:	01002929 	tsteq	r0, r9, lsr #18
    a14c:	53530585 	cmppl	r3, #557842432	; 0x21400000
    a150:	52443050 	subpl	r3, r4, #80	; 0x50
    a154:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a158:	616c6f76 	smcvs	50934	; 0xc6f6
    a15c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a160:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a164:	5f323374 	svcpl	0x00323374
    a168:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a16c:	30457830 	subcc	r7, r5, r0, lsr r8
    a170:	30383630 	eorscc	r3, r8, r0, lsr r6
    a174:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    a178:	05860100 	streq	r0, [r6, #256]	; 0x100
    a17c:	30505353 	subscc	r5, r0, r3, asr r3
    a180:	28205253 	stmdacs	r0!, {r0, r1, r4, r6, r9, ip, lr}
    a184:	6f76282a 	svcvs	0x0076282a
    a188:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a18c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a190:	33746e69 	cmncc	r4, #1680	; 0x690
    a194:	2a745f32 	bcs	1d21e64 <__mprec_tinytens+0x1cfd5f4>
    a198:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a19c:	36303045 	ldrtcc	r3, [r0], -r5, asr #32
    a1a0:	43303038 	teqmi	r0, #56	; 0x38
    a1a4:	01002929 	tsteq	r0, r9, lsr #18
    a1a8:	53530587 	cmppl	r3, #566231040	; 0x21c00000
    a1ac:	50433050 	subpl	r3, r3, r0, asr r0
    a1b0:	28205253 	stmdacs	r0!, {r0, r1, r4, r6, r9, ip, lr}
    a1b4:	6f76282a 	svcvs	0x0076282a
    a1b8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a1bc:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a1c0:	33746e69 	cmncc	r4, #1680	; 0x690
    a1c4:	2a745f32 	bcs	1d21e94 <__mprec_tinytens+0x1cfd624>
    a1c8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a1cc:	36303045 	ldrtcc	r3, [r0], -r5, asr #32
    a1d0:	30313038 	eorscc	r3, r1, r8, lsr r0
    a1d4:	01002929 	tsteq	r0, r9, lsr #18
    a1d8:	53530588 	cmppl	r3, #136, 10	; 0x22000000
    a1dc:	4d493050 	stclmi	0, cr3, [r9, #-320]	; 0xfffffec0
    a1e0:	28204353 	stmdacs	r0!, {r0, r1, r4, r6, r8, r9, lr}
    a1e4:	6f76282a 	svcvs	0x0076282a
    a1e8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a1ec:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a1f0:	33746e69 	cmncc	r4, #1680	; 0x690
    a1f4:	2a745f32 	bcs	1d21ec4 <__mprec_tinytens+0x1cfd654>
    a1f8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a1fc:	36303045 	ldrtcc	r3, [r0], -r5, asr #32
    a200:	34313038 	ldrtcc	r3, [r1], #-56	; 0xffffffc8
    a204:	01002929 	tsteq	r0, r9, lsr #18
    a208:	53530589 	cmppl	r3, #574619648	; 0x22400000
    a20c:	49523050 	ldmdbmi	r2, {r4, r6, ip, sp}^
    a210:	2a282053 	bcs	a12364 <__mprec_tinytens+0x9edaf4>
    a214:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; a17c <free2388+0x6a0>
    a218:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    a21c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    a220:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    a224:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    a228:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    a22c:	38363030 	ldmdacc	r6!, {r4, r5, ip, sp}
    a230:	29383130 	ldmdbcs	r8!, {r4, r5, r8, ip, sp}
    a234:	8a010029 	bhi	4a2e0 <__mprec_tinytens+0x25a70>
    a238:	50535305 	subspl	r5, r3, r5, lsl #6
    a23c:	53494d30 	movtpl	r4, #40240	; 0x9d30
    a240:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a244:	616c6f76 	smcvs	50934	; 0xc6f6
    a248:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a24c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a250:	5f323374 	svcpl	0x00323374
    a254:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a258:	30457830 	subcc	r7, r5, r0, lsr r8
    a25c:	30383630 	eorscc	r3, r8, r0, lsr r6
    a260:	29294331 	stmdbcs	r9!, {r0, r4, r5, r8, r9, lr}
    a264:	058b0100 	streq	r0, [fp, #256]	; 0x100
    a268:	30505353 	subscc	r5, r0, r3, asr r3
    a26c:	20524349 	subscs	r4, r2, r9, asr #6
    a270:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    a274:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    a278:	20656c69 	rsbcs	r6, r5, r9, ror #24
    a27c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    a280:	745f3233 	ldrbvc	r3, [pc], #-563	; a288 <free2388+0x7ac>
    a284:	3028292a 	eorcc	r2, r8, sl, lsr #18
    a288:	30304578 	eorscc	r4, r0, r8, ror r5
    a28c:	32303836 	eorscc	r3, r0, #3538944	; 0x360000
    a290:	00292930 	eoreq	r2, r9, r0, lsr r9
    a294:	53058c01 	movwpl	r8, #23553	; 0x5c01
    a298:	44305053 	ldrtmi	r5, [r0], #-83	; 0xffffffad
    a29c:	5243414d 	subpl	r4, r3, #1073741843	; 0x40000013
    a2a0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a2a4:	616c6f76 	smcvs	50934	; 0xc6f6
    a2a8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a2ac:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a2b0:	5f323374 	svcpl	0x00323374
    a2b4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a2b8:	30457830 	subcc	r7, r5, r0, lsr r8
    a2bc:	30383630 	eorscc	r3, r8, r0, lsr r6
    a2c0:	29293432 	stmdbcs	r9!, {r1, r4, r5, sl, ip, sp}
    a2c4:	058e0100 	streq	r0, [lr, #256]	; 0x100
    a2c8:	31505353 	cmpcc	r0, r3, asr r3
    a2cc:	20305243 	eorscs	r5, r0, r3, asr #4
    a2d0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    a2d4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    a2d8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    a2dc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    a2e0:	745f3233 	ldrbvc	r3, [pc], #-563	; a2e8 <free2388+0x80c>
    a2e4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    a2e8:	30304578 	eorscc	r4, r0, r8, ror r5
    a2ec:	30303033 	eorscc	r3, r0, r3, lsr r0
    a2f0:	00292930 	eoreq	r2, r9, r0, lsr r9
    a2f4:	53058f01 	movwpl	r8, #24321	; 0x5f01
    a2f8:	43315053 	teqmi	r1, #83	; 0x53
    a2fc:	28203152 	stmdacs	r0!, {r1, r4, r6, r8, ip, sp}
    a300:	6f76282a 	svcvs	0x0076282a
    a304:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a308:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a30c:	33746e69 	cmncc	r4, #1680	; 0x690
    a310:	2a745f32 	bcs	1d21fe0 <__mprec_tinytens+0x1cfd770>
    a314:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a318:	33303045 	teqcc	r0, #69	; 0x45
    a31c:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    a320:	01002929 	tsteq	r0, r9, lsr #18
    a324:	53530590 	cmppl	r3, #144, 10	; 0x24000000
    a328:	52443150 	subpl	r3, r4, #80, 2
    a32c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a330:	616c6f76 	smcvs	50934	; 0xc6f6
    a334:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a338:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a33c:	5f323374 	svcpl	0x00323374
    a340:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a344:	30457830 	subcc	r7, r5, r0, lsr r8
    a348:	30303330 	eorscc	r3, r0, r0, lsr r3
    a34c:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    a350:	05910100 	ldreq	r0, [r1, #256]	; 0x100
    a354:	31505353 	cmpcc	r0, r3, asr r3
    a358:	28205253 	stmdacs	r0!, {r0, r1, r4, r6, r9, ip, lr}
    a35c:	6f76282a 	svcvs	0x0076282a
    a360:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a364:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a368:	33746e69 	cmncc	r4, #1680	; 0x690
    a36c:	2a745f32 	bcs	1d2203c <__mprec_tinytens+0x1cfd7cc>
    a370:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a374:	33303045 	teqcc	r0, #69	; 0x45
    a378:	43303030 	teqmi	r0, #48	; 0x30
    a37c:	01002929 	tsteq	r0, r9, lsr #18
    a380:	53530592 	cmppl	r3, #612368384	; 0x24800000
    a384:	50433150 	subpl	r3, r3, r0, asr r1
    a388:	28205253 	stmdacs	r0!, {r0, r1, r4, r6, r9, ip, lr}
    a38c:	6f76282a 	svcvs	0x0076282a
    a390:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a394:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a398:	33746e69 	cmncc	r4, #1680	; 0x690
    a39c:	2a745f32 	bcs	1d2206c <__mprec_tinytens+0x1cfd7fc>
    a3a0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a3a4:	33303045 	teqcc	r0, #69	; 0x45
    a3a8:	30313030 	eorscc	r3, r1, r0, lsr r0
    a3ac:	01002929 	tsteq	r0, r9, lsr #18
    a3b0:	53530593 	cmppl	r3, #616562688	; 0x24c00000
    a3b4:	4d493150 	stfmie	f3, [r9, #-320]	; 0xfffffec0
    a3b8:	28204353 	stmdacs	r0!, {r0, r1, r4, r6, r8, r9, lr}
    a3bc:	6f76282a 	svcvs	0x0076282a
    a3c0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a3c4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a3c8:	33746e69 	cmncc	r4, #1680	; 0x690
    a3cc:	2a745f32 	bcs	1d2209c <__mprec_tinytens+0x1cfd82c>
    a3d0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a3d4:	33303045 	teqcc	r0, #69	; 0x45
    a3d8:	34313030 	ldrtcc	r3, [r1], #-48	; 0xffffffd0
    a3dc:	01002929 	tsteq	r0, r9, lsr #18
    a3e0:	53530594 	cmppl	r3, #148, 10	; 0x25000000
    a3e4:	49523150 	ldmdbmi	r2, {r4, r6, r8, ip, sp}^
    a3e8:	2a282053 	bcs	a1253c <__mprec_tinytens+0x9edccc>
    a3ec:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; a354 <free2388+0x878>
    a3f0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    a3f4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    a3f8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    a3fc:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    a400:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    a404:	30333030 	eorscc	r3, r3, r0, lsr r0
    a408:	29383130 	ldmdbcs	r8!, {r4, r5, r8, ip, sp}
    a40c:	95010029 	strls	r0, [r1, #-41]	; 0xffffffd7
    a410:	50535305 	subspl	r5, r3, r5, lsl #6
    a414:	53494d31 	movtpl	r4, #40241	; 0x9d31
    a418:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a41c:	616c6f76 	smcvs	50934	; 0xc6f6
    a420:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a424:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a428:	5f323374 	svcpl	0x00323374
    a42c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a430:	30457830 	subcc	r7, r5, r0, lsr r8
    a434:	30303330 	eorscc	r3, r0, r0, lsr r3
    a438:	29294331 	stmdbcs	r9!, {r0, r4, r5, r8, r9, lr}
    a43c:	05960100 	ldreq	r0, [r6, #256]	; 0x100
    a440:	31505353 	cmpcc	r0, r3, asr r3
    a444:	20524349 	subscs	r4, r2, r9, asr #6
    a448:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    a44c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    a450:	20656c69 	rsbcs	r6, r5, r9, ror #24
    a454:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    a458:	745f3233 	ldrbvc	r3, [pc], #-563	; a460 <free2388+0x984>
    a45c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    a460:	30304578 	eorscc	r4, r0, r8, ror r5
    a464:	32303033 	eorscc	r3, r0, #51	; 0x33
    a468:	00292930 	eoreq	r2, r9, r0, lsr r9
    a46c:	53059701 	movwpl	r9, #22273	; 0x5701
    a470:	44315053 	ldrtmi	r5, [r1], #-83	; 0xffffffad
    a474:	5243414d 	subpl	r4, r3, #1073741843	; 0x40000013
    a478:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a47c:	616c6f76 	smcvs	50934	; 0xc6f6
    a480:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a484:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a488:	5f323374 	svcpl	0x00323374
    a48c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a490:	30457830 	subcc	r7, r5, r0, lsr r8
    a494:	30303330 	eorscc	r3, r0, r0, lsr r3
    a498:	29293432 	stmdbcs	r9!, {r1, r4, r5, sl, ip, sp}
    a49c:	05990100 	ldreq	r0, [r9, #256]	; 0x100
    a4a0:	5f435452 	svcpl	0x00435452
    a4a4:	20524c49 	subscs	r4, r2, r9, asr #24
    a4a8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    a4ac:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    a4b0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    a4b4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    a4b8:	745f3233 	ldrbvc	r3, [pc], #-563	; a4c0 <free2388+0x9e4>
    a4bc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    a4c0:	30304578 	eorscc	r4, r0, r8, ror r5
    a4c4:	30303432 	eorscc	r3, r0, r2, lsr r4
    a4c8:	00292930 	eoreq	r2, r9, r0, lsr r9
    a4cc:	52059a01 	andpl	r9, r5, #4096	; 0x1000
    a4d0:	435f4354 	cmpmi	pc, #84, 6	; 0x50000001
    a4d4:	28204354 	stmdacs	r0!, {r2, r4, r6, r8, r9, lr}
    a4d8:	6f76282a 	svcvs	0x0076282a
    a4dc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a4e0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a4e4:	33746e69 	cmncc	r4, #1680	; 0x690
    a4e8:	2a745f32 	bcs	1d221b8 <__mprec_tinytens+0x1cfd948>
    a4ec:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a4f0:	32303045 	eorscc	r3, r0, #69	; 0x45
    a4f4:	34303034 	ldrtcc	r3, [r0], #-52	; 0xffffffcc
    a4f8:	01002929 	tsteq	r0, r9, lsr #18
    a4fc:	5452059b 	ldrbpl	r0, [r2], #-1435	; 0xfffffa65
    a500:	43435f43 	movtmi	r5, #16195	; 0x3f43
    a504:	2a282052 	bcs	a12654 <__mprec_tinytens+0x9edde4>
    a508:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; a470 <free2388+0x994>
    a50c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    a510:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    a514:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    a518:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    a51c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    a520:	34323030 	ldrtcc	r3, [r2], #-48	; 0xffffffd0
    a524:	29383030 	ldmdbcs	r8!, {r4, r5, ip, sp}
    a528:	9c010029 	stcls	0, cr0, [r1], {41}	; 0x29
    a52c:	43545205 	cmpmi	r4, #1342177280	; 0x50000000
    a530:	4949435f 	stmdbmi	r9, {r0, r1, r2, r3, r4, r6, r8, r9, lr}^
    a534:	2a282052 	bcs	a12684 <__mprec_tinytens+0x9ede14>
    a538:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; a4a0 <free2388+0x9c4>
    a53c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    a540:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    a544:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    a548:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    a54c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    a550:	34323030 	ldrtcc	r3, [r2], #-48	; 0xffffffd0
    a554:	29433030 	stmdbcs	r3, {r4, r5, ip, sp}^
    a558:	9d010029 	stcls	0, cr0, [r1, #-164]	; 0xffffff5c
    a55c:	43545205 	cmpmi	r4, #1342177280	; 0x50000000
    a560:	524d415f 	subpl	r4, sp, #-1073741801	; 0xc0000017
    a564:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a568:	616c6f76 	smcvs	50934	; 0xc6f6
    a56c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a570:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a574:	5f323374 	svcpl	0x00323374
    a578:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a57c:	30457830 	subcc	r7, r5, r0, lsr r8
    a580:	30343230 	eorscc	r3, r4, r0, lsr r2
    a584:	29293031 	stmdbcs	r9!, {r0, r4, r5, ip, sp}
    a588:	059e0100 	ldreq	r0, [lr, #256]	; 0x100
    a58c:	5f435452 	svcpl	0x00435452
    a590:	4d495443 	cfstrdmi	mvd5, [r9, #-268]	; 0xfffffef4
    a594:	28203045 	stmdacs	r0!, {r0, r2, r6, ip, sp}
    a598:	6f76282a 	svcvs	0x0076282a
    a59c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a5a0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a5a4:	33746e69 	cmncc	r4, #1680	; 0x690
    a5a8:	2a745f32 	bcs	1d22278 <__mprec_tinytens+0x1cfda08>
    a5ac:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a5b0:	32303045 	eorscc	r3, r0, #69	; 0x45
    a5b4:	34313034 	ldrtcc	r3, [r1], #-52	; 0xffffffcc
    a5b8:	01002929 	tsteq	r0, r9, lsr #18
    a5bc:	5452059f 	ldrbpl	r0, [r2], #-1439	; 0xfffffa61
    a5c0:	54435f43 	strbpl	r5, [r3], #-3907	; 0xfffff0bd
    a5c4:	31454d49 	cmpcc	r5, r9, asr #26
    a5c8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a5cc:	616c6f76 	smcvs	50934	; 0xc6f6
    a5d0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a5d4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a5d8:	5f323374 	svcpl	0x00323374
    a5dc:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a5e0:	30457830 	subcc	r7, r5, r0, lsr r8
    a5e4:	30343230 	eorscc	r3, r4, r0, lsr r2
    a5e8:	29293831 	stmdbcs	r9!, {r0, r4, r5, fp, ip, sp}
    a5ec:	05a00100 	streq	r0, [r0, #256]!	; 0x100
    a5f0:	5f435452 	svcpl	0x00435452
    a5f4:	4d495443 	cfstrdmi	mvd5, [r9, #-268]	; 0xfffffef4
    a5f8:	28203245 	stmdacs	r0!, {r0, r2, r6, r9, ip, sp}
    a5fc:	6f76282a 	svcvs	0x0076282a
    a600:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a604:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a608:	33746e69 	cmncc	r4, #1680	; 0x690
    a60c:	2a745f32 	bcs	1d222dc <__mprec_tinytens+0x1cfda6c>
    a610:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a614:	32303045 	eorscc	r3, r0, #69	; 0x45
    a618:	43313034 	teqmi	r1, #52	; 0x34
    a61c:	01002929 	tsteq	r0, r9, lsr #18
    a620:	545205a1 	ldrbpl	r0, [r2], #-1441	; 0xfffffa5f
    a624:	45535f43 	ldrbmi	r5, [r3, #-3907]	; 0xfffff0bd
    a628:	2a282043 	bcs	a1273c <__mprec_tinytens+0x9edecc>
    a62c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; a594 <free2388+0xab8>
    a630:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    a634:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    a638:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    a63c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    a640:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    a644:	34323030 	ldrtcc	r3, [r2], #-48	; 0xffffffd0
    a648:	29303230 	ldmdbcs	r0!, {r4, r5, r9, ip, sp}
    a64c:	a2010029 	andge	r0, r1, #41	; 0x29
    a650:	43545205 	cmpmi	r4, #1342177280	; 0x50000000
    a654:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    a658:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a65c:	616c6f76 	smcvs	50934	; 0xc6f6
    a660:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a664:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a668:	5f323374 	svcpl	0x00323374
    a66c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a670:	30457830 	subcc	r7, r5, r0, lsr r8
    a674:	30343230 	eorscc	r3, r4, r0, lsr r2
    a678:	29293432 	stmdbcs	r9!, {r1, r4, r5, sl, ip, sp}
    a67c:	05a30100 	streq	r0, [r3, #256]!	; 0x100
    a680:	5f435452 	svcpl	0x00435452
    a684:	52554f48 	subspl	r4, r5, #72, 30	; 0x120
    a688:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a68c:	616c6f76 	smcvs	50934	; 0xc6f6
    a690:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a694:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a698:	5f323374 	svcpl	0x00323374
    a69c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a6a0:	30457830 	subcc	r7, r5, r0, lsr r8
    a6a4:	30343230 	eorscc	r3, r4, r0, lsr r2
    a6a8:	29293832 	stmdbcs	r9!, {r1, r4, r5, fp, ip, sp}
    a6ac:	05a40100 	streq	r0, [r4, #256]!	; 0x100
    a6b0:	5f435452 	svcpl	0x00435452
    a6b4:	204d4f44 	subcs	r4, sp, r4, asr #30
    a6b8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    a6bc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    a6c0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    a6c4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    a6c8:	745f3233 	ldrbvc	r3, [pc], #-563	; a6d0 <free2388+0xbf4>
    a6cc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    a6d0:	30304578 	eorscc	r4, r0, r8, ror r5
    a6d4:	32303432 	eorscc	r3, r0, #838860800	; 0x32000000
    a6d8:	00292943 	eoreq	r2, r9, r3, asr #18
    a6dc:	5205a501 	andpl	sl, r5, #4194304	; 0x400000
    a6e0:	445f4354 	ldrbmi	r4, [pc], #-852	; a6e8 <free2388+0xc0c>
    a6e4:	2820574f 	stmdacs	r0!, {r0, r1, r2, r3, r6, r8, r9, sl, ip, lr}
    a6e8:	6f76282a 	svcvs	0x0076282a
    a6ec:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a6f0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a6f4:	33746e69 	cmncc	r4, #1680	; 0x690
    a6f8:	2a745f32 	bcs	1d223c8 <__mprec_tinytens+0x1cfdb58>
    a6fc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a700:	32303045 	eorscc	r3, r0, #69	; 0x45
    a704:	30333034 	eorscc	r3, r3, r4, lsr r0
    a708:	01002929 	tsteq	r0, r9, lsr #18
    a70c:	545205a6 	ldrbpl	r0, [r2], #-1446	; 0xfffffa5a
    a710:	4f445f43 	svcmi	0x00445f43
    a714:	2a282059 	bcs	a12880 <__mprec_tinytens+0x9ee010>
    a718:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; a680 <free2388+0xba4>
    a71c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    a720:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    a724:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    a728:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    a72c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    a730:	34323030 	ldrtcc	r3, [r2], #-48	; 0xffffffd0
    a734:	29343330 	ldmdbcs	r4!, {r4, r5, r8, r9, ip, sp}
    a738:	a7010029 	strge	r0, [r1, -r9, lsr #32]
    a73c:	43545205 	cmpmi	r4, #1342177280	; 0x50000000
    a740:	4e4f4d5f 	mcrmi	13, 2, r4, cr15, cr15, {2}
    a744:	28204854 	stmdacs	r0!, {r2, r4, r6, fp, lr}
    a748:	6f76282a 	svcvs	0x0076282a
    a74c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a750:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a754:	33746e69 	cmncc	r4, #1680	; 0x690
    a758:	2a745f32 	bcs	1d22428 <__mprec_tinytens+0x1cfdbb8>
    a75c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a760:	32303045 	eorscc	r3, r0, #69	; 0x45
    a764:	38333034 	ldmdacc	r3!, {r2, r4, r5, ip, sp}
    a768:	01002929 	tsteq	r0, r9, lsr #18
    a76c:	545205a8 	ldrbpl	r0, [r2], #-1448	; 0xfffffa58
    a770:	45595f43 	ldrbmi	r5, [r9, #-3907]	; 0xfffff0bd
    a774:	28205241 	stmdacs	r0!, {r0, r6, r9, ip, lr}
    a778:	6f76282a 	svcvs	0x0076282a
    a77c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a780:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a784:	33746e69 	cmncc	r4, #1680	; 0x690
    a788:	2a745f32 	bcs	1d22458 <__mprec_tinytens+0x1cfdbe8>
    a78c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a790:	32303045 	eorscc	r3, r0, #69	; 0x45
    a794:	43333034 	teqmi	r3, #52	; 0x34
    a798:	01002929 	tsteq	r0, r9, lsr #18
    a79c:	545205a9 	ldrbpl	r0, [r2], #-1449	; 0xfffffa57
    a7a0:	49435f43 	stmdbmi	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    a7a4:	28205353 	stmdacs	r0!, {r0, r1, r4, r6, r8, r9, ip, lr}
    a7a8:	6f76282a 	svcvs	0x0076282a
    a7ac:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a7b0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a7b4:	33746e69 	cmncc	r4, #1680	; 0x690
    a7b8:	2a745f32 	bcs	1d22488 <__mprec_tinytens+0x1cfdc18>
    a7bc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a7c0:	32303045 	eorscc	r3, r0, #69	; 0x45
    a7c4:	30343034 	eorscc	r3, r4, r4, lsr r0
    a7c8:	01002929 	tsteq	r0, r9, lsr #18
    a7cc:	545205aa 	ldrbpl	r0, [r2], #-1450	; 0xfffffa56
    a7d0:	4c415f43 	mcrrmi	15, 4, r5, r1, cr3
    a7d4:	20434553 	subcs	r4, r3, r3, asr r5
    a7d8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    a7dc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    a7e0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    a7e4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    a7e8:	745f3233 	ldrbvc	r3, [pc], #-563	; a7f0 <free2388+0xd14>
    a7ec:	3028292a 	eorcc	r2, r8, sl, lsr #18
    a7f0:	30304578 	eorscc	r4, r0, r8, ror r5
    a7f4:	36303432 			; <UNDEFINED> instruction: 0x36303432
    a7f8:	00292930 	eoreq	r2, r9, r0, lsr r9
    a7fc:	5205ab01 	andpl	sl, r5, #1024	; 0x400
    a800:	415f4354 	cmpmi	pc, r4, asr r3	; <UNPREDICTABLE>
    a804:	4e494d4c 	cdpmi	13, 4, cr4, cr9, cr12, {2}
    a808:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a80c:	616c6f76 	smcvs	50934	; 0xc6f6
    a810:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a814:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a818:	5f323374 	svcpl	0x00323374
    a81c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a820:	30457830 	subcc	r7, r5, r0, lsr r8
    a824:	30343230 	eorscc	r3, r4, r0, lsr r2
    a828:	29293436 	stmdbcs	r9!, {r1, r2, r4, r5, sl, ip, sp}
    a82c:	05ac0100 	streq	r0, [ip, #256]!	; 0x100
    a830:	5f435452 	svcpl	0x00435452
    a834:	4f484c41 	svcmi	0x00484c41
    a838:	28205255 	stmdacs	r0!, {r0, r2, r4, r6, r9, ip, lr}
    a83c:	6f76282a 	svcvs	0x0076282a
    a840:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a844:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a848:	33746e69 	cmncc	r4, #1680	; 0x690
    a84c:	2a745f32 	bcs	1d2251c <__mprec_tinytens+0x1cfdcac>
    a850:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a854:	32303045 	eorscc	r3, r0, #69	; 0x45
    a858:	38363034 	ldmdacc	r6!, {r2, r4, r5, ip, sp}
    a85c:	01002929 	tsteq	r0, r9, lsr #18
    a860:	545205ad 	ldrbpl	r0, [r2], #-1453	; 0xfffffa53
    a864:	4c415f43 	mcrrmi	15, 4, r5, r1, cr3
    a868:	204d4f44 	subcs	r4, sp, r4, asr #30
    a86c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    a870:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    a874:	20656c69 	rsbcs	r6, r5, r9, ror #24
    a878:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    a87c:	745f3233 	ldrbvc	r3, [pc], #-563	; a884 <free2388+0xda8>
    a880:	3028292a 	eorcc	r2, r8, sl, lsr #18
    a884:	30304578 	eorscc	r4, r0, r8, ror r5
    a888:	36303432 			; <UNDEFINED> instruction: 0x36303432
    a88c:	00292943 	eoreq	r2, r9, r3, asr #18
    a890:	5205ae01 	andpl	sl, r5, #1, 28
    a894:	415f4354 	cmpmi	pc, r4, asr r3	; <UNPREDICTABLE>
    a898:	574f444c 	strbpl	r4, [pc, -ip, asr #8]
    a89c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a8a0:	616c6f76 	smcvs	50934	; 0xc6f6
    a8a4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a8a8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a8ac:	5f323374 	svcpl	0x00323374
    a8b0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a8b4:	30457830 	subcc	r7, r5, r0, lsr r8
    a8b8:	30343230 	eorscc	r3, r4, r0, lsr r2
    a8bc:	29293037 	stmdbcs	r9!, {r0, r1, r2, r4, r5, ip, sp}
    a8c0:	05af0100 	streq	r0, [pc, #256]!	; a9c8 <free2388+0xeec>
    a8c4:	5f435452 	svcpl	0x00435452
    a8c8:	4f444c41 	svcmi	0x00444c41
    a8cc:	2a282059 	bcs	a12a38 <__mprec_tinytens+0x9ee1c8>
    a8d0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; a838 <free2388+0xd5c>
    a8d4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    a8d8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    a8dc:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    a8e0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    a8e4:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    a8e8:	34323030 	ldrtcc	r3, [r2], #-48	; 0xffffffd0
    a8ec:	29343730 	ldmdbcs	r4!, {r4, r5, r8, r9, sl, ip, sp}
    a8f0:	b0010029 	andlt	r0, r1, r9, lsr #32
    a8f4:	43545205 	cmpmi	r4, #1342177280	; 0x50000000
    a8f8:	4d4c415f 	stfmie	f4, [ip, #-380]	; 0xfffffe84
    a8fc:	28204e4f 	stmdacs	r0!, {r0, r1, r2, r3, r6, r9, sl, fp, lr}
    a900:	6f76282a 	svcvs	0x0076282a
    a904:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a908:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a90c:	33746e69 	cmncc	r4, #1680	; 0x690
    a910:	2a745f32 	bcs	1d225e0 <__mprec_tinytens+0x1cfdd70>
    a914:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a918:	32303045 	eorscc	r3, r0, #69	; 0x45
    a91c:	38373034 	ldmdacc	r7!, {r2, r4, r5, ip, sp}
    a920:	01002929 	tsteq	r0, r9, lsr #18
    a924:	545205b1 	ldrbpl	r0, [r2], #-1457	; 0xfffffa4f
    a928:	4c415f43 	mcrrmi	15, 4, r5, r1, cr3
    a92c:	52414559 	subpl	r4, r1, #373293056	; 0x16400000
    a930:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a934:	616c6f76 	smcvs	50934	; 0xc6f6
    a938:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a93c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    a940:	5f323374 	svcpl	0x00323374
    a944:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    a948:	30457830 	subcc	r7, r5, r0, lsr r8
    a94c:	30343230 	eorscc	r3, r4, r0, lsr r2
    a950:	29294337 	stmdbcs	r9!, {r0, r1, r2, r4, r5, r8, r9, lr}
    a954:	05b20100 	ldreq	r0, [r2, #256]!	; 0x100
    a958:	5f435452 	svcpl	0x00435452
    a95c:	49455250 	stmdbmi	r5, {r4, r6, r9, ip, lr}^
    a960:	2820544e 	stmdacs	r0!, {r1, r2, r3, r6, sl, ip, lr}
    a964:	6f76282a 	svcvs	0x0076282a
    a968:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a96c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a970:	33746e69 	cmncc	r4, #1680	; 0x690
    a974:	2a745f32 	bcs	1d22644 <__mprec_tinytens+0x1cfddd4>
    a978:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a97c:	32303045 	eorscc	r3, r0, #69	; 0x45
    a980:	30383034 	eorscc	r3, r8, r4, lsr r0
    a984:	01002929 	tsteq	r0, r9, lsr #18
    a988:	545205b3 	ldrbpl	r0, [r2], #-1459	; 0xfffffa4d
    a98c:	52505f43 	subspl	r5, r0, #268	; 0x10c
    a990:	41524645 	cmpmi	r2, r5, asr #12
    a994:	2a282043 	bcs	a12aa8 <__mprec_tinytens+0x9ee238>
    a998:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; a900 <free2388+0xe24>
    a99c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    a9a0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    a9a4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    a9a8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    a9ac:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    a9b0:	34323030 	ldrtcc	r3, [r2], #-48	; 0xffffffd0
    a9b4:	29343830 	ldmdbcs	r4!, {r4, r5, fp, ip, sp}
    a9b8:	b5010029 	strlt	r0, [r1, #-41]	; 0xffffffd7
    a9bc:	30444105 	subcc	r4, r4, r5, lsl #2
    a9c0:	28205243 	stmdacs	r0!, {r0, r1, r6, r9, ip, lr}
    a9c4:	6f76282a 	svcvs	0x0076282a
    a9c8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    a9cc:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    a9d0:	33746e69 	cmncc	r4, #1680	; 0x690
    a9d4:	2a745f32 	bcs	1d226a4 <__mprec_tinytens+0x1cfde34>
    a9d8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    a9dc:	33303045 	teqcc	r0, #69	; 0x45
    a9e0:	30303034 	eorscc	r3, r0, r4, lsr r0
    a9e4:	01002929 	tsteq	r0, r9, lsr #18
    a9e8:	444105b6 	strbmi	r0, [r1], #-1462	; 0xfffffa4a
    a9ec:	52444730 	subpl	r4, r4, #48, 14	; 0xc00000
    a9f0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    a9f4:	616c6f76 	smcvs	50934	; 0xc6f6
    a9f8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    a9fc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    aa00:	5f323374 	svcpl	0x00323374
    aa04:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    aa08:	30457830 	subcc	r7, r5, r0, lsr r8
    aa0c:	30343330 	eorscc	r3, r4, r0, lsr r3
    aa10:	29293430 	stmdbcs	r9!, {r4, r5, sl, ip, sp}
    aa14:	05b70100 	ldreq	r0, [r7, #256]!	; 0x100
    aa18:	49304441 	ldmdbmi	r0!, {r0, r6, sl, lr}
    aa1c:	4e45544e 	cdpmi	4, 4, cr5, cr5, cr14, {2}
    aa20:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    aa24:	616c6f76 	smcvs	50934	; 0xc6f6
    aa28:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    aa2c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    aa30:	5f323374 	svcpl	0x00323374
    aa34:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    aa38:	30457830 	subcc	r7, r5, r0, lsr r8
    aa3c:	30343330 	eorscc	r3, r4, r0, lsr r3
    aa40:	29294330 	stmdbcs	r9!, {r4, r5, r8, r9, lr}
    aa44:	05b80100 	ldreq	r0, [r8, #256]!	; 0x100
    aa48:	44304441 	ldrtmi	r4, [r0], #-1089	; 0xfffffbbf
    aa4c:	28203052 	stmdacs	r0!, {r1, r4, r6, ip, sp}
    aa50:	6f76282a 	svcvs	0x0076282a
    aa54:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    aa58:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    aa5c:	33746e69 	cmncc	r4, #1680	; 0x690
    aa60:	2a745f32 	bcs	1d22730 <__mprec_tinytens+0x1cfdec0>
    aa64:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    aa68:	33303045 	teqcc	r0, #69	; 0x45
    aa6c:	30313034 	eorscc	r3, r1, r4, lsr r0
    aa70:	01002929 	tsteq	r0, r9, lsr #18
    aa74:	444105b9 	strbmi	r0, [r1], #-1465	; 0xfffffa47
    aa78:	31524430 	cmpcc	r2, r0, lsr r4
    aa7c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    aa80:	616c6f76 	smcvs	50934	; 0xc6f6
    aa84:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    aa88:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    aa8c:	5f323374 	svcpl	0x00323374
    aa90:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    aa94:	30457830 	subcc	r7, r5, r0, lsr r8
    aa98:	30343330 	eorscc	r3, r4, r0, lsr r3
    aa9c:	29293431 	stmdbcs	r9!, {r0, r4, r5, sl, ip, sp}
    aaa0:	05ba0100 	ldreq	r0, [sl, #256]!	; 0x100
    aaa4:	44304441 	ldrtmi	r4, [r0], #-1089	; 0xfffffbbf
    aaa8:	28203252 	stmdacs	r0!, {r1, r4, r6, r9, ip, sp}
    aaac:	6f76282a 	svcvs	0x0076282a
    aab0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    aab4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    aab8:	33746e69 	cmncc	r4, #1680	; 0x690
    aabc:	2a745f32 	bcs	1d2278c <__mprec_tinytens+0x1cfdf1c>
    aac0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    aac4:	33303045 	teqcc	r0, #69	; 0x45
    aac8:	38313034 	ldmdacc	r1!, {r2, r4, r5, ip, sp}
    aacc:	01002929 	tsteq	r0, r9, lsr #18
    aad0:	444105bb 	strbmi	r0, [r1], #-1467	; 0xfffffa45
    aad4:	33524430 	cmpcc	r2, #48, 8	; 0x30000000
    aad8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    aadc:	616c6f76 	smcvs	50934	; 0xc6f6
    aae0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    aae4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    aae8:	5f323374 	svcpl	0x00323374
    aaec:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    aaf0:	30457830 	subcc	r7, r5, r0, lsr r8
    aaf4:	30343330 	eorscc	r3, r4, r0, lsr r3
    aaf8:	29294331 	stmdbcs	r9!, {r0, r4, r5, r8, r9, lr}
    aafc:	05bc0100 	ldreq	r0, [ip, #256]!	; 0x100
    ab00:	44304441 	ldrtmi	r4, [r0], #-1089	; 0xfffffbbf
    ab04:	28203452 	stmdacs	r0!, {r1, r4, r6, sl, ip, sp}
    ab08:	6f76282a 	svcvs	0x0076282a
    ab0c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    ab10:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    ab14:	33746e69 	cmncc	r4, #1680	; 0x690
    ab18:	2a745f32 	bcs	1d227e8 <__mprec_tinytens+0x1cfdf78>
    ab1c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    ab20:	33303045 	teqcc	r0, #69	; 0x45
    ab24:	30323034 	eorscc	r3, r2, r4, lsr r0
    ab28:	01002929 	tsteq	r0, r9, lsr #18
    ab2c:	444105bd 	strbmi	r0, [r1], #-1469	; 0xfffffa43
    ab30:	35524430 	ldrbcc	r4, [r2, #-1072]	; 0xfffffbd0
    ab34:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    ab38:	616c6f76 	smcvs	50934	; 0xc6f6
    ab3c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    ab40:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    ab44:	5f323374 	svcpl	0x00323374
    ab48:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    ab4c:	30457830 	subcc	r7, r5, r0, lsr r8
    ab50:	30343330 	eorscc	r3, r4, r0, lsr r3
    ab54:	29293432 	stmdbcs	r9!, {r1, r4, r5, sl, ip, sp}
    ab58:	05be0100 	ldreq	r0, [lr, #256]!	; 0x100
    ab5c:	44304441 	ldrtmi	r4, [r0], #-1089	; 0xfffffbbf
    ab60:	28203652 	stmdacs	r0!, {r1, r4, r6, r9, sl, ip, sp}
    ab64:	6f76282a 	svcvs	0x0076282a
    ab68:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    ab6c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    ab70:	33746e69 	cmncc	r4, #1680	; 0x690
    ab74:	2a745f32 	bcs	1d22844 <__mprec_tinytens+0x1cfdfd4>
    ab78:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    ab7c:	33303045 	teqcc	r0, #69	; 0x45
    ab80:	38323034 	ldmdacc	r2!, {r2, r4, r5, ip, sp}
    ab84:	01002929 	tsteq	r0, r9, lsr #18
    ab88:	444105bf 	strbmi	r0, [r1], #-1471	; 0xfffffa41
    ab8c:	37524430 	smmlarcc	r2, r0, r4, r4
    ab90:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    ab94:	616c6f76 	smcvs	50934	; 0xc6f6
    ab98:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    ab9c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    aba0:	5f323374 	svcpl	0x00323374
    aba4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    aba8:	30457830 	subcc	r7, r5, r0, lsr r8
    abac:	30343330 	eorscc	r3, r4, r0, lsr r3
    abb0:	29294332 	stmdbcs	r9!, {r1, r4, r5, r8, r9, lr}
    abb4:	05c00100 	strbeq	r0, [r0, #256]	; 0x100
    abb8:	53304441 	teqpl	r0, #1090519040	; 0x41000000
    abbc:	20544154 	subscs	r4, r4, r4, asr r1
    abc0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    abc4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    abc8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    abcc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    abd0:	745f3233 	ldrbvc	r3, [pc], #-563	; abd8 <free2388+0x10fc>
    abd4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    abd8:	30304578 	eorscc	r4, r0, r8, ror r5
    abdc:	33303433 	teqcc	r0, #855638016	; 0x33000000
    abe0:	00292930 	eoreq	r2, r9, r0, lsr r9
    abe4:	4405c201 	strmi	ip, [r5], #-513	; 0xfffffdff
    abe8:	20524341 	subscs	r4, r2, r1, asr #6
    abec:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    abf0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    abf4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    abf8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    abfc:	745f3233 	ldrbvc	r3, [pc], #-563	; ac04 <free2388+0x1128>
    ac00:	3028292a 	eorcc	r2, r8, sl, lsr #18
    ac04:	30304578 	eorscc	r4, r0, r8, ror r5
    ac08:	30304336 	eorscc	r4, r0, r6, lsr r3
    ac0c:	00292930 	eoreq	r2, r9, r0, lsr r9
    ac10:	5705c401 	strpl	ip, [r5, -r1, lsl #8]
    ac14:	444f4d44 	strbmi	r4, [pc], #-3396	; ac1c <free2388+0x1140>
    ac18:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    ac1c:	616c6f76 	smcvs	50934	; 0xc6f6
    ac20:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    ac24:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    ac28:	5f323374 	svcpl	0x00323374
    ac2c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    ac30:	30457830 	subcc	r7, r5, r0, lsr r8
    ac34:	30303030 	eorscc	r3, r0, r0, lsr r0
    ac38:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    ac3c:	05c50100 	strbeq	r0, [r5, #256]	; 0x100
    ac40:	43544457 	cmpmi	r4, #1459617792	; 0x57000000
    ac44:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    ac48:	616c6f76 	smcvs	50934	; 0xc6f6
    ac4c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    ac50:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    ac54:	5f323374 	svcpl	0x00323374
    ac58:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    ac5c:	30457830 	subcc	r7, r5, r0, lsr r8
    ac60:	30303030 	eorscc	r3, r0, r0, lsr r0
    ac64:	29293430 	stmdbcs	r9!, {r4, r5, sl, ip, sp}
    ac68:	05c60100 	strbeq	r0, [r6, #256]	; 0x100
    ac6c:	45464457 	strbmi	r4, [r6, #-1111]	; 0xfffffba9
    ac70:	28204445 	stmdacs	r0!, {r0, r2, r6, sl, lr}
    ac74:	6f76282a 	svcvs	0x0076282a
    ac78:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    ac7c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    ac80:	33746e69 	cmncc	r4, #1680	; 0x690
    ac84:	2a745f32 	bcs	1d22954 <__mprec_tinytens+0x1cfe0e4>
    ac88:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    ac8c:	30303045 	eorscc	r3, r0, r5, asr #32
    ac90:	38303030 	ldmdacc	r0!, {r4, r5, ip, sp}
    ac94:	01002929 	tsteq	r0, r9, lsr #18
    ac98:	445705c7 	ldrbmi	r0, [r7], #-1479	; 0xfffffa39
    ac9c:	28205654 	stmdacs	r0!, {r2, r4, r6, r9, sl, ip, lr}
    aca0:	6f76282a 	svcvs	0x0076282a
    aca4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    aca8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    acac:	33746e69 	cmncc	r4, #1680	; 0x690
    acb0:	2a745f32 	bcs	1d22980 <__mprec_tinytens+0x1cfe110>
    acb4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    acb8:	30303045 	eorscc	r3, r0, r5, asr #32
    acbc:	43303030 	teqmi	r0, #48	; 0x30
    acc0:	01002929 	tsteq	r0, r9, lsr #18
    acc4:	445705c8 	ldrbmi	r0, [r7], #-1480	; 0xfffffa38
    acc8:	534b4c43 	movtpl	r4, #48195	; 0xbc43
    accc:	28204c45 	stmdacs	r0!, {r0, r2, r6, sl, fp, lr}
    acd0:	6f76282a 	svcvs	0x0076282a
    acd4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    acd8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    acdc:	33746e69 	cmncc	r4, #1680	; 0x690
    ace0:	2a745f32 	bcs	1d229b0 <__mprec_tinytens+0x1cfe140>
    ace4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    ace8:	30303045 	eorscc	r3, r0, r5, asr #32
    acec:	30313030 	eorscc	r3, r1, r0, lsr r0
    acf0:	01002929 	tsteq	r0, r9, lsr #18
    acf4:	414305ca 	smlalbtmi	r0, r3, sl, r5
    acf8:	46415f4e 	strbmi	r5, [r1], -lr, asr #30
    acfc:	2820524d 	stmdacs	r0!, {r0, r2, r3, r6, r9, ip, lr}
    ad00:	6f76282a 	svcvs	0x0076282a
    ad04:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    ad08:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    ad0c:	33746e69 	cmncc	r4, #1680	; 0x690
    ad10:	2a745f32 	bcs	1d229e0 <__mprec_tinytens+0x1cfe170>
    ad14:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    ad18:	33303045 	teqcc	r0, #69	; 0x45
    ad1c:	30303043 	eorscc	r3, r0, r3, asr #32
    ad20:	01002929 	tsteq	r0, r9, lsr #18
    ad24:	414305cb 	smlalbtmi	r0, r3, fp, r5
    ad28:	46535f4e 	ldrbmi	r5, [r3], -lr, asr #30
    ad2c:	41535f46 	cmpmi	r3, r6, asr #30
    ad30:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    ad34:	616c6f76 	smcvs	50934	; 0xc6f6
    ad38:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    ad3c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    ad40:	5f323374 	svcpl	0x00323374
    ad44:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    ad48:	30457830 	subcc	r7, r5, r0, lsr r8
    ad4c:	30433330 	subcc	r3, r3, r0, lsr r3
    ad50:	29293430 	stmdbcs	r9!, {r4, r5, sl, ip, sp}
    ad54:	05cc0100 	strbeq	r0, [ip, #256]	; 0x100
    ad58:	5f4e4143 	svcpl	0x004e4143
    ad5c:	5f464653 	svcpl	0x00464653
    ad60:	5f505247 	svcpl	0x00505247
    ad64:	28204153 	stmdacs	r0!, {r0, r1, r4, r6, r8, lr}
    ad68:	6f76282a 	svcvs	0x0076282a
    ad6c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    ad70:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    ad74:	33746e69 	cmncc	r4, #1680	; 0x690
    ad78:	2a745f32 	bcs	1d22a48 <__mprec_tinytens+0x1cfe1d8>
    ad7c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    ad80:	33303045 	teqcc	r0, #69	; 0x45
    ad84:	38303043 	ldmdacc	r0!, {r0, r1, r6, ip, sp}
    ad88:	01002929 	tsteq	r0, r9, lsr #18
    ad8c:	414305cd 	smlalbtmi	r0, r3, sp, r5
    ad90:	46455f4e 	strbmi	r5, [r5], -lr, asr #30
    ad94:	41535f46 	cmpmi	r3, r6, asr #30
    ad98:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    ad9c:	616c6f76 	smcvs	50934	; 0xc6f6
    ada0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    ada4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    ada8:	5f323374 	svcpl	0x00323374
    adac:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    adb0:	30457830 	subcc	r7, r5, r0, lsr r8
    adb4:	30433330 	subcc	r3, r3, r0, lsr r3
    adb8:	29294330 	stmdbcs	r9!, {r4, r5, r8, r9, lr}
    adbc:	05ce0100 	strbeq	r0, [lr, #256]	; 0x100
    adc0:	5f4e4143 	svcpl	0x004e4143
    adc4:	5f464645 	svcpl	0x00464645
    adc8:	5f505247 	svcpl	0x00505247
    adcc:	28204153 	stmdacs	r0!, {r0, r1, r4, r6, r8, lr}
    add0:	6f76282a 	svcvs	0x0076282a
    add4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    add8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    addc:	33746e69 	cmncc	r4, #1680	; 0x690
    ade0:	2a745f32 	bcs	1d22ab0 <__mprec_tinytens+0x1cfe240>
    ade4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    ade8:	33303045 	teqcc	r0, #69	; 0x45
    adec:	30313043 	eorscc	r3, r1, r3, asr #32
    adf0:	01002929 	tsteq	r0, r9, lsr #18
    adf4:	414305cf 	smlalbtmi	r0, r3, pc, r5	; <UNPREDICTABLE>
    adf8:	4f455f4e 	svcmi	0x00455f4e
    adfc:	2a282054 	bcs	a12f54 <__mprec_tinytens+0x9ee6e4>
    ae00:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; ad68 <free2388+0x128c>
    ae04:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    ae08:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    ae0c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    ae10:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    ae14:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    ae18:	43333030 	teqmi	r3, #48	; 0x30
    ae1c:	29343130 	ldmdbcs	r4!, {r4, r5, r8, ip, sp}
    ae20:	d0010029 	andle	r0, r1, r9, lsr #32
    ae24:	4e414305 	cdpmi	3, 4, cr4, cr1, cr5, {0}
    ae28:	54554c5f 	ldrbpl	r4, [r5], #-3167	; 0xfffff3a1
    ae2c:	5252455f 	subspl	r4, r2, #398458880	; 0x17c00000
    ae30:	5244415f 	subpl	r4, r4, #-1073741801	; 0xc0000017
    ae34:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    ae38:	616c6f76 	smcvs	50934	; 0xc6f6
    ae3c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    ae40:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    ae44:	5f323374 	svcpl	0x00323374
    ae48:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    ae4c:	30457830 	subcc	r7, r5, r0, lsr r8
    ae50:	30433330 	subcc	r3, r3, r0, lsr r3
    ae54:	29293831 	stmdbcs	r9!, {r0, r4, r5, fp, ip, sp}
    ae58:	05d10100 	ldrbeq	r0, [r1, #256]	; 0x100
    ae5c:	5f4e4143 	svcpl	0x004e4143
    ae60:	5f54554c 	svcpl	0x0054554c
    ae64:	20525245 	subscs	r5, r2, r5, asr #4
    ae68:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    ae6c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    ae70:	20656c69 	rsbcs	r6, r5, r9, ror #24
    ae74:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    ae78:	745f3233 	ldrbvc	r3, [pc], #-563	; ae80 <free2388+0x13a4>
    ae7c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    ae80:	30304578 	eorscc	r4, r0, r8, ror r5
    ae84:	31304333 	teqcc	r0, r3, lsr r3
    ae88:	00292943 	eoreq	r2, r9, r3, asr #18
    ae8c:	4305d301 	movwmi	sp, #21249	; 0x5301
    ae90:	545f4e41 	ldrbpl	r4, [pc], #-3649	; ae98 <free2388+0x13bc>
    ae94:	52535f58 	subspl	r5, r3, #88, 30	; 0x160
    ae98:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    ae9c:	616c6f76 	smcvs	50934	; 0xc6f6
    aea0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    aea4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    aea8:	5f323374 	svcpl	0x00323374
    aeac:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    aeb0:	30457830 	subcc	r7, r5, r0, lsr r8
    aeb4:	30303430 	eorscc	r3, r0, r0, lsr r4
    aeb8:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    aebc:	05d40100 	ldrbeq	r0, [r4, #256]	; 0x100
    aec0:	5f4e4143 	svcpl	0x004e4143
    aec4:	535f5852 	cmppl	pc, #5373952	; 0x520000
    aec8:	2a282052 	bcs	a13018 <__mprec_tinytens+0x9ee7a8>
    aecc:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; ae34 <free2388+0x1358>
    aed0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    aed4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    aed8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    aedc:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    aee0:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    aee4:	30343030 	eorscc	r3, r4, r0, lsr r0
    aee8:	29343030 	ldmdbcs	r4!, {r4, r5, ip, sp}
    aeec:	d5010029 	strle	r0, [r1, #-41]	; 0xffffffd7
    aef0:	4e414305 	cdpmi	3, 4, cr4, cr1, cr5, {0}
    aef4:	52534d5f 	subspl	r4, r3, #6080	; 0x17c0
    aef8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    aefc:	616c6f76 	smcvs	50934	; 0xc6f6
    af00:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    af04:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    af08:	5f323374 	svcpl	0x00323374
    af0c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    af10:	30457830 	subcc	r7, r5, r0, lsr r8
    af14:	30303430 	eorscc	r3, r0, r0, lsr r4
    af18:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    af1c:	05d70100 	ldrbeq	r0, [r7, #256]	; 0x100
    af20:	314e4143 	cmpcc	lr, r3, asr #2
    af24:	20444f4d 	subcs	r4, r4, sp, asr #30
    af28:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    af2c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    af30:	20656c69 	rsbcs	r6, r5, r9, ror #24
    af34:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    af38:	745f3233 	ldrbvc	r3, [pc], #-563	; af40 <free2388+0x1464>
    af3c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    af40:	30304578 	eorscc	r4, r0, r8, ror r5
    af44:	30303434 	eorscc	r3, r0, r4, lsr r4
    af48:	00292930 	eoreq	r2, r9, r0, lsr r9
    af4c:	4305d801 	movwmi	sp, #22529	; 0x5801
    af50:	43314e41 	teqmi	r1, #1040	; 0x410
    af54:	2820524d 	stmdacs	r0!, {r0, r2, r3, r6, r9, ip, lr}
    af58:	6f76282a 	svcvs	0x0076282a
    af5c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    af60:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    af64:	33746e69 	cmncc	r4, #1680	; 0x690
    af68:	2a745f32 	bcs	1d22c38 <__mprec_tinytens+0x1cfe3c8>
    af6c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    af70:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    af74:	34303034 	ldrtcc	r3, [r0], #-52	; 0xffffffcc
    af78:	01002929 	tsteq	r0, r9, lsr #18
    af7c:	414305d9 	ldrdmi	r0, [r3, #-89]	; 0xffffffa7
    af80:	5347314e 	movtpl	r3, #29006	; 0x714e
    af84:	2a282052 	bcs	a130d4 <__mprec_tinytens+0x9ee864>
    af88:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; aef0 <free2388+0x1414>
    af8c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    af90:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    af94:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    af98:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    af9c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    afa0:	34343030 	ldrtcc	r3, [r4], #-48	; 0xffffffd0
    afa4:	29383030 	ldmdbcs	r8!, {r4, r5, ip, sp}
    afa8:	da010029 	ble	4b054 <__mprec_tinytens+0x267e4>
    afac:	4e414305 	cdpmi	3, 4, cr4, cr1, cr5, {0}
    afb0:	52434931 	subpl	r4, r3, #802816	; 0xc4000
    afb4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    afb8:	616c6f76 	smcvs	50934	; 0xc6f6
    afbc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    afc0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    afc4:	5f323374 	svcpl	0x00323374
    afc8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    afcc:	30457830 	subcc	r7, r5, r0, lsr r8
    afd0:	30343430 	eorscc	r3, r4, r0, lsr r4
    afd4:	29294330 	stmdbcs	r9!, {r4, r5, r8, r9, lr}
    afd8:	05db0100 	ldrbeq	r0, [fp, #256]	; 0x100
    afdc:	314e4143 	cmpcc	lr, r3, asr #2
    afe0:	20524549 	subscs	r4, r2, r9, asr #10
    afe4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    afe8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    afec:	20656c69 	rsbcs	r6, r5, r9, ror #24
    aff0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    aff4:	745f3233 	ldrbvc	r3, [pc], #-563	; affc <free2388+0x1520>
    aff8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    affc:	30304578 	eorscc	r4, r0, r8, ror r5
    b000:	31303434 	teqcc	r0, r4, lsr r4
    b004:	00292930 	eoreq	r2, r9, r0, lsr r9
    b008:	4305dc01 	movwmi	sp, #23553	; 0x5c01
    b00c:	42314e41 	eorsmi	r4, r1, #1040	; 0x410
    b010:	28205254 	stmdacs	r0!, {r2, r4, r6, r9, ip, lr}
    b014:	6f76282a 	svcvs	0x0076282a
    b018:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b01c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b020:	33746e69 	cmncc	r4, #1680	; 0x690
    b024:	2a745f32 	bcs	1d22cf4 <__mprec_tinytens+0x1cfe484>
    b028:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b02c:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b030:	34313034 	ldrtcc	r3, [r1], #-52	; 0xffffffcc
    b034:	01002929 	tsteq	r0, r9, lsr #18
    b038:	414305dd 	ldrdmi	r0, [r3, #-93]	; 0xffffffa3
    b03c:	5745314e 	strbpl	r3, [r5, -lr, asr #2]
    b040:	2a28204c 	bcs	a13178 <__mprec_tinytens+0x9ee908>
    b044:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; afac <free2388+0x14d0>
    b048:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    b04c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    b050:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    b054:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    b058:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    b05c:	34343030 	ldrtcc	r3, [r4], #-48	; 0xffffffd0
    b060:	29383130 	ldmdbcs	r8!, {r4, r5, r8, ip, sp}
    b064:	de010029 	cdple	0, 0, cr0, cr1, cr9, {1}
    b068:	4e414305 	cdpmi	3, 4, cr4, cr1, cr5, {0}
    b06c:	20525331 	subscs	r5, r2, r1, lsr r3
    b070:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b074:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b078:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b07c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b080:	745f3233 	ldrbvc	r3, [pc], #-563	; b088 <free2388+0x15ac>
    b084:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b088:	30304578 	eorscc	r4, r0, r8, ror r5
    b08c:	31303434 	teqcc	r0, r4, lsr r4
    b090:	00292943 	eoreq	r2, r9, r3, asr #18
    b094:	4305df01 	movwmi	sp, #24321	; 0x5f01
    b098:	52314e41 	eorspl	r4, r1, #1040	; 0x410
    b09c:	28205346 	stmdacs	r0!, {r1, r2, r6, r8, r9, ip, lr}
    b0a0:	6f76282a 	svcvs	0x0076282a
    b0a4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b0a8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b0ac:	33746e69 	cmncc	r4, #1680	; 0x690
    b0b0:	2a745f32 	bcs	1d22d80 <__mprec_tinytens+0x1cfe510>
    b0b4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b0b8:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b0bc:	30323034 	eorscc	r3, r2, r4, lsr r0
    b0c0:	01002929 	tsteq	r0, r9, lsr #18
    b0c4:	414305e0 	smlalttmi	r0, r3, r0, r5
    b0c8:	4952314e 	ldmdbmi	r2, {r1, r2, r3, r6, r8, ip, sp}^
    b0cc:	2a282044 	bcs	a131e4 <__mprec_tinytens+0x9ee974>
    b0d0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; b038 <free2388+0x155c>
    b0d4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    b0d8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    b0dc:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    b0e0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    b0e4:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    b0e8:	34343030 	ldrtcc	r3, [r4], #-48	; 0xffffffd0
    b0ec:	29343230 	ldmdbcs	r4!, {r4, r5, r9, ip, sp}
    b0f0:	e1010029 	tst	r1, r9, lsr #32
    b0f4:	4e414305 	cdpmi	3, 4, cr4, cr1, cr5, {0}
    b0f8:	41445231 	cmpmi	r4, r1, lsr r2
    b0fc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    b100:	616c6f76 	smcvs	50934	; 0xc6f6
    b104:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    b108:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    b10c:	5f323374 	svcpl	0x00323374
    b110:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    b114:	30457830 	subcc	r7, r5, r0, lsr r8
    b118:	30343430 	eorscc	r3, r4, r0, lsr r4
    b11c:	29293832 	stmdbcs	r9!, {r1, r4, r5, fp, ip, sp}
    b120:	05e20100 	strbeq	r0, [r2, #256]!	; 0x100
    b124:	314e4143 	cmpcc	lr, r3, asr #2
    b128:	20424452 	subcs	r4, r2, r2, asr r4
    b12c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b130:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b134:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b138:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b13c:	745f3233 	ldrbvc	r3, [pc], #-563	; b144 <free2388+0x1668>
    b140:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b144:	30304578 	eorscc	r4, r0, r8, ror r5
    b148:	32303434 	eorscc	r3, r0, #52, 8	; 0x34000000
    b14c:	00292943 	eoreq	r2, r9, r3, asr #18
    b150:	4305e401 	movwmi	lr, #21505	; 0x5401
    b154:	54314e41 	ldrtpl	r4, [r1], #-3649	; 0xfffff1bf
    b158:	20314946 	eorscs	r4, r1, r6, asr #18
    b15c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b160:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b164:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b168:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b16c:	745f3233 	ldrbvc	r3, [pc], #-563	; b174 <free2388+0x1698>
    b170:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b174:	30304578 	eorscc	r4, r0, r8, ror r5
    b178:	33303434 	teqcc	r0, #52, 8	; 0x34000000
    b17c:	00292930 	eoreq	r2, r9, r0, lsr r9
    b180:	4305e501 	movwmi	lr, #21761	; 0x5501
    b184:	54314e41 	ldrtpl	r4, [r1], #-3649	; 0xfffff1bf
    b188:	20314449 	eorscs	r4, r1, r9, asr #8
    b18c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b190:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b194:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b198:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b19c:	745f3233 	ldrbvc	r3, [pc], #-563	; b1a4 <free2388+0x16c8>
    b1a0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b1a4:	30304578 	eorscc	r4, r0, r8, ror r5
    b1a8:	33303434 	teqcc	r0, #52, 8	; 0x34000000
    b1ac:	00292934 	eoreq	r2, r9, r4, lsr r9
    b1b0:	4305e601 	movwmi	lr, #22017	; 0x5601
    b1b4:	54314e41 	ldrtpl	r4, [r1], #-3649	; 0xfffff1bf
    b1b8:	20314144 	eorscs	r4, r1, r4, asr #2
    b1bc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b1c0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b1c4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b1c8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b1cc:	745f3233 	ldrbvc	r3, [pc], #-563	; b1d4 <free2388+0x16f8>
    b1d0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b1d4:	30304578 	eorscc	r4, r0, r8, ror r5
    b1d8:	33303434 	teqcc	r0, #52, 8	; 0x34000000
    b1dc:	00292938 	eoreq	r2, r9, r8, lsr r9
    b1e0:	4305e701 	movwmi	lr, #22273	; 0x5701
    b1e4:	54314e41 	ldrtpl	r4, [r1], #-3649	; 0xfffff1bf
    b1e8:	20314244 	eorscs	r4, r1, r4, asr #4
    b1ec:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b1f0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b1f4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b1f8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b1fc:	745f3233 	ldrbvc	r3, [pc], #-563	; b204 <free2388+0x1728>
    b200:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b204:	30304578 	eorscc	r4, r0, r8, ror r5
    b208:	33303434 	teqcc	r0, #52, 8	; 0x34000000
    b20c:	00292943 	eoreq	r2, r9, r3, asr #18
    b210:	4305e801 	movwmi	lr, #22529	; 0x5801
    b214:	54314e41 	ldrtpl	r4, [r1], #-3649	; 0xfffff1bf
    b218:	20324946 	eorscs	r4, r2, r6, asr #18
    b21c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b220:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b224:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b228:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b22c:	745f3233 	ldrbvc	r3, [pc], #-563	; b234 <free2388+0x1758>
    b230:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b234:	30304578 	eorscc	r4, r0, r8, ror r5
    b238:	34303434 	ldrtcc	r3, [r0], #-1076	; 0xfffffbcc
    b23c:	00292930 	eoreq	r2, r9, r0, lsr r9
    b240:	4305e901 	movwmi	lr, #22785	; 0x5901
    b244:	54314e41 	ldrtpl	r4, [r1], #-3649	; 0xfffff1bf
    b248:	20324449 	eorscs	r4, r2, r9, asr #8
    b24c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b250:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b254:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b258:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b25c:	745f3233 	ldrbvc	r3, [pc], #-563	; b264 <free2388+0x1788>
    b260:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b264:	30304578 	eorscc	r4, r0, r8, ror r5
    b268:	34303434 	ldrtcc	r3, [r0], #-1076	; 0xfffffbcc
    b26c:	00292934 	eoreq	r2, r9, r4, lsr r9
    b270:	4305ea01 	movwmi	lr, #23041	; 0x5a01
    b274:	54314e41 	ldrtpl	r4, [r1], #-3649	; 0xfffff1bf
    b278:	20324144 	eorscs	r4, r2, r4, asr #2
    b27c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b280:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b284:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b288:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b28c:	745f3233 	ldrbvc	r3, [pc], #-563	; b294 <free2388+0x17b8>
    b290:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b294:	30304578 	eorscc	r4, r0, r8, ror r5
    b298:	34303434 	ldrtcc	r3, [r0], #-1076	; 0xfffffbcc
    b29c:	00292938 	eoreq	r2, r9, r8, lsr r9
    b2a0:	4305eb01 	movwmi	lr, #23297	; 0x5b01
    b2a4:	54314e41 	ldrtpl	r4, [r1], #-3649	; 0xfffff1bf
    b2a8:	20324244 	eorscs	r4, r2, r4, asr #4
    b2ac:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b2b0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b2b4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b2b8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b2bc:	745f3233 	ldrbvc	r3, [pc], #-563	; b2c4 <free2388+0x17e8>
    b2c0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b2c4:	30304578 	eorscc	r4, r0, r8, ror r5
    b2c8:	34303434 	ldrtcc	r3, [r0], #-1076	; 0xfffffbcc
    b2cc:	00292943 	eoreq	r2, r9, r3, asr #18
    b2d0:	4305ec01 	movwmi	lr, #23553	; 0x5c01
    b2d4:	54314e41 	ldrtpl	r4, [r1], #-3649	; 0xfffff1bf
    b2d8:	20334946 	eorscs	r4, r3, r6, asr #18
    b2dc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b2e0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b2e4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b2e8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b2ec:	745f3233 	ldrbvc	r3, [pc], #-563	; b2f4 <free2388+0x1818>
    b2f0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b2f4:	30304578 	eorscc	r4, r0, r8, ror r5
    b2f8:	35303434 	ldrcc	r3, [r0, #-1076]!	; 0xfffffbcc
    b2fc:	00292930 	eoreq	r2, r9, r0, lsr r9
    b300:	4305ed01 	movwmi	lr, #23809	; 0x5d01
    b304:	54314e41 	ldrtpl	r4, [r1], #-3649	; 0xfffff1bf
    b308:	20334449 	eorscs	r4, r3, r9, asr #8
    b30c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b310:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b314:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b318:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b31c:	745f3233 	ldrbvc	r3, [pc], #-563	; b324 <free2388+0x1848>
    b320:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b324:	30304578 	eorscc	r4, r0, r8, ror r5
    b328:	35303434 	ldrcc	r3, [r0, #-1076]!	; 0xfffffbcc
    b32c:	00292934 	eoreq	r2, r9, r4, lsr r9
    b330:	4305ee01 	movwmi	lr, #24065	; 0x5e01
    b334:	54314e41 	ldrtpl	r4, [r1], #-3649	; 0xfffff1bf
    b338:	20334144 	eorscs	r4, r3, r4, asr #2
    b33c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b340:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b344:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b348:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b34c:	745f3233 	ldrbvc	r3, [pc], #-563	; b354 <free2388+0x1878>
    b350:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b354:	30304578 	eorscc	r4, r0, r8, ror r5
    b358:	35303434 	ldrcc	r3, [r0, #-1076]!	; 0xfffffbcc
    b35c:	00292938 	eoreq	r2, r9, r8, lsr r9
    b360:	4305ef01 	movwmi	lr, #24321	; 0x5f01
    b364:	54314e41 	ldrtpl	r4, [r1], #-3649	; 0xfffff1bf
    b368:	20334244 	eorscs	r4, r3, r4, asr #4
    b36c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b370:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b374:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b378:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b37c:	745f3233 	ldrbvc	r3, [pc], #-563	; b384 <free2388+0x18a8>
    b380:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b384:	30304578 	eorscc	r4, r0, r8, ror r5
    b388:	35303434 	ldrcc	r3, [r0, #-1076]!	; 0xfffffbcc
    b38c:	00292943 	eoreq	r2, r9, r3, asr #18
    b390:	4305f101 	movwmi	pc, #20737	; 0x5101	; <UNPREDICTABLE>
    b394:	4d324e41 	ldcmi	14, cr4, [r2, #-260]!	; 0xfffffefc
    b398:	2820444f 	stmdacs	r0!, {r0, r1, r2, r3, r6, sl, lr}
    b39c:	6f76282a 	svcvs	0x0076282a
    b3a0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b3a4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b3a8:	33746e69 	cmncc	r4, #1680	; 0x690
    b3ac:	2a745f32 	bcs	1d2307c <__mprec_tinytens+0x1cfe80c>
    b3b0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b3b4:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b3b8:	30303038 	eorscc	r3, r0, r8, lsr r0
    b3bc:	01002929 	tsteq	r0, r9, lsr #18
    b3c0:	414305f2 	strdmi	r0, [r3, #-82]	; 0xffffffae
    b3c4:	4d43324e 	sfmmi	f3, 2, [r3, #-312]	; 0xfffffec8
    b3c8:	2a282052 	bcs	a13518 <__mprec_tinytens+0x9eeca8>
    b3cc:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; b334 <free2388+0x1858>
    b3d0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    b3d4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    b3d8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    b3dc:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    b3e0:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    b3e4:	38343030 	ldmdacc	r4!, {r4, r5, ip, sp}
    b3e8:	29343030 	ldmdbcs	r4!, {r4, r5, ip, sp}
    b3ec:	f3010029 	vhadd.u8	d0, d1, d25
    b3f0:	4e414305 	cdpmi	3, 4, cr4, cr1, cr5, {0}
    b3f4:	52534732 	subspl	r4, r3, #13107200	; 0xc80000
    b3f8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    b3fc:	616c6f76 	smcvs	50934	; 0xc6f6
    b400:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    b404:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    b408:	5f323374 	svcpl	0x00323374
    b40c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    b410:	30457830 	subcc	r7, r5, r0, lsr r8
    b414:	30383430 	eorscc	r3, r8, r0, lsr r4
    b418:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    b41c:	05f40100 	ldrbeq	r0, [r4, #256]!	; 0x100
    b420:	324e4143 	subcc	r4, lr, #-1073741808	; 0xc0000010
    b424:	20524349 	subscs	r4, r2, r9, asr #6
    b428:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b42c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b430:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b434:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b438:	745f3233 	ldrbvc	r3, [pc], #-563	; b440 <free2388+0x1964>
    b43c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b440:	30304578 	eorscc	r4, r0, r8, ror r5
    b444:	30303834 	eorscc	r3, r0, r4, lsr r8
    b448:	00292943 	eoreq	r2, r9, r3, asr #18
    b44c:	4305f501 	movwmi	pc, #21761	; 0x5501	; <UNPREDICTABLE>
    b450:	49324e41 	ldmdbmi	r2!, {r0, r6, r9, sl, fp, lr}
    b454:	28205245 	stmdacs	r0!, {r0, r2, r6, r9, ip, lr}
    b458:	6f76282a 	svcvs	0x0076282a
    b45c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b460:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b464:	33746e69 	cmncc	r4, #1680	; 0x690
    b468:	2a745f32 	bcs	1d23138 <__mprec_tinytens+0x1cfe8c8>
    b46c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b470:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b474:	30313038 	eorscc	r3, r1, r8, lsr r0
    b478:	01002929 	tsteq	r0, r9, lsr #18
    b47c:	414305f6 	strdmi	r0, [r3, #-86]	; 0xffffffaa
    b480:	5442324e 	strbpl	r3, [r2], #-590	; 0xfffffdb2
    b484:	2a282052 	bcs	a135d4 <__mprec_tinytens+0x9eed64>
    b488:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; b3f0 <free2388+0x1914>
    b48c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    b490:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    b494:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    b498:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    b49c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    b4a0:	38343030 	ldmdacc	r4!, {r4, r5, ip, sp}
    b4a4:	29343130 	ldmdbcs	r4!, {r4, r5, r8, ip, sp}
    b4a8:	f7010029 			; <UNDEFINED> instruction: 0xf7010029
    b4ac:	4e414305 	cdpmi	3, 4, cr4, cr1, cr5, {0}
    b4b0:	4c574532 	cfldr64mi	mvdx4, [r7], {50}	; 0x32
    b4b4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    b4b8:	616c6f76 	smcvs	50934	; 0xc6f6
    b4bc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    b4c0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    b4c4:	5f323374 	svcpl	0x00323374
    b4c8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    b4cc:	30457830 	subcc	r7, r5, r0, lsr r8
    b4d0:	30383430 	eorscc	r3, r8, r0, lsr r4
    b4d4:	29293831 	stmdbcs	r9!, {r0, r4, r5, fp, ip, sp}
    b4d8:	05f80100 	ldrbeq	r0, [r8, #256]!	; 0x100
    b4dc:	324e4143 	subcc	r4, lr, #-1073741808	; 0xc0000010
    b4e0:	28205253 	stmdacs	r0!, {r0, r1, r4, r6, r9, ip, lr}
    b4e4:	6f76282a 	svcvs	0x0076282a
    b4e8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b4ec:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b4f0:	33746e69 	cmncc	r4, #1680	; 0x690
    b4f4:	2a745f32 	bcs	1d231c4 <__mprec_tinytens+0x1cfe954>
    b4f8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b4fc:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b500:	43313038 	teqmi	r1, #56	; 0x38
    b504:	01002929 	tsteq	r0, r9, lsr #18
    b508:	414305f9 	strdmi	r0, [r3, #-89]	; 0xffffffa7
    b50c:	4652324e 	ldrbmi	r3, [r2], -lr, asr #4
    b510:	2a282053 	bcs	a13664 <__mprec_tinytens+0x9eedf4>
    b514:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; b47c <free2388+0x19a0>
    b518:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    b51c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    b520:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    b524:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    b528:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    b52c:	38343030 	ldmdacc	r4!, {r4, r5, ip, sp}
    b530:	29303230 	ldmdbcs	r0!, {r4, r5, r9, ip, sp}
    b534:	fa010029 	blx	4b5e0 <__mprec_tinytens+0x26d70>
    b538:	4e414305 	cdpmi	3, 4, cr4, cr1, cr5, {0}
    b53c:	44495232 	strbmi	r5, [r9], #-562	; 0xfffffdce
    b540:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    b544:	616c6f76 	smcvs	50934	; 0xc6f6
    b548:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    b54c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    b550:	5f323374 	svcpl	0x00323374
    b554:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    b558:	30457830 	subcc	r7, r5, r0, lsr r8
    b55c:	30383430 	eorscc	r3, r8, r0, lsr r4
    b560:	29293432 	stmdbcs	r9!, {r1, r4, r5, sl, ip, sp}
    b564:	05fb0100 	ldrbeq	r0, [fp, #256]!	; 0x100
    b568:	324e4143 	subcc	r4, lr, #-1073741808	; 0xc0000010
    b56c:	20414452 	subcs	r4, r1, r2, asr r4
    b570:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b574:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b578:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b57c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b580:	745f3233 	ldrbvc	r3, [pc], #-563	; b588 <free2388+0x1aac>
    b584:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b588:	30304578 	eorscc	r4, r0, r8, ror r5
    b58c:	32303834 	eorscc	r3, r0, #52, 16	; 0x340000
    b590:	00292938 	eoreq	r2, r9, r8, lsr r9
    b594:	4305fc01 	movwmi	pc, #23553	; 0x5c01	; <UNPREDICTABLE>
    b598:	52324e41 	eorspl	r4, r2, #1040	; 0x410
    b59c:	28204244 	stmdacs	r0!, {r2, r6, r9, lr}
    b5a0:	6f76282a 	svcvs	0x0076282a
    b5a4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b5a8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b5ac:	33746e69 	cmncc	r4, #1680	; 0x690
    b5b0:	2a745f32 	bcs	1d23280 <__mprec_tinytens+0x1cfea10>
    b5b4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b5b8:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b5bc:	43323038 	teqmi	r2, #56	; 0x38
    b5c0:	01002929 	tsteq	r0, r9, lsr #18
    b5c4:	414305fe 	strdmi	r0, [r3, #-94]	; 0xffffffa2
    b5c8:	4654324e 	ldrbmi	r3, [r4], -lr, asr #4
    b5cc:	28203149 	stmdacs	r0!, {r0, r3, r6, r8, ip, sp}
    b5d0:	6f76282a 	svcvs	0x0076282a
    b5d4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b5d8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b5dc:	33746e69 	cmncc	r4, #1680	; 0x690
    b5e0:	2a745f32 	bcs	1d232b0 <__mprec_tinytens+0x1cfea40>
    b5e4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b5e8:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b5ec:	30333038 	eorscc	r3, r3, r8, lsr r0
    b5f0:	01002929 	tsteq	r0, r9, lsr #18
    b5f4:	414305ff 	strdmi	r0, [r3, #-95]	; 0xffffffa1
    b5f8:	4954324e 	ldmdbmi	r4, {r1, r2, r3, r6, r9, ip, sp}^
    b5fc:	28203144 	stmdacs	r0!, {r2, r6, r8, ip, sp}
    b600:	6f76282a 	svcvs	0x0076282a
    b604:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b608:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b60c:	33746e69 	cmncc	r4, #1680	; 0x690
    b610:	2a745f32 	bcs	1d232e0 <__mprec_tinytens+0x1cfea70>
    b614:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b618:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b61c:	34333038 	ldrtcc	r3, [r3], #-56	; 0xffffffc8
    b620:	01002929 	tsteq	r0, r9, lsr #18
    b624:	41430680 	smlalbbmi	r0, r3, r0, r6
    b628:	4454324e 	ldrbmi	r3, [r4], #-590	; 0xfffffdb2
    b62c:	28203141 	stmdacs	r0!, {r0, r6, r8, ip, sp}
    b630:	6f76282a 	svcvs	0x0076282a
    b634:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b638:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b63c:	33746e69 	cmncc	r4, #1680	; 0x690
    b640:	2a745f32 	bcs	1d23310 <__mprec_tinytens+0x1cfeaa0>
    b644:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b648:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b64c:	38333038 	ldmdacc	r3!, {r3, r4, r5, ip, sp}
    b650:	01002929 	tsteq	r0, r9, lsr #18
    b654:	41430681 	smlalbbmi	r0, r3, r1, r6
    b658:	4454324e 	ldrbmi	r3, [r4], #-590	; 0xfffffdb2
    b65c:	28203142 	stmdacs	r0!, {r1, r6, r8, ip, sp}
    b660:	6f76282a 	svcvs	0x0076282a
    b664:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b668:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b66c:	33746e69 	cmncc	r4, #1680	; 0x690
    b670:	2a745f32 	bcs	1d23340 <__mprec_tinytens+0x1cfead0>
    b674:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b678:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b67c:	43333038 	teqmi	r3, #56	; 0x38
    b680:	01002929 	tsteq	r0, r9, lsr #18
    b684:	41430682 	smlalbbmi	r0, r3, r2, r6
    b688:	4654324e 	ldrbmi	r3, [r4], -lr, asr #4
    b68c:	28203249 	stmdacs	r0!, {r0, r3, r6, r9, ip, sp}
    b690:	6f76282a 	svcvs	0x0076282a
    b694:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b698:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b69c:	33746e69 	cmncc	r4, #1680	; 0x690
    b6a0:	2a745f32 	bcs	1d23370 <__mprec_tinytens+0x1cfeb00>
    b6a4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b6a8:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b6ac:	30343038 	eorscc	r3, r4, r8, lsr r0
    b6b0:	01002929 	tsteq	r0, r9, lsr #18
    b6b4:	41430683 	smlalbbmi	r0, r3, r3, r6
    b6b8:	4954324e 	ldmdbmi	r4, {r1, r2, r3, r6, r9, ip, sp}^
    b6bc:	28203244 	stmdacs	r0!, {r2, r6, r9, ip, sp}
    b6c0:	6f76282a 	svcvs	0x0076282a
    b6c4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b6c8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b6cc:	33746e69 	cmncc	r4, #1680	; 0x690
    b6d0:	2a745f32 	bcs	1d233a0 <__mprec_tinytens+0x1cfeb30>
    b6d4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b6d8:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b6dc:	34343038 	ldrtcc	r3, [r4], #-56	; 0xffffffc8
    b6e0:	01002929 	tsteq	r0, r9, lsr #18
    b6e4:	41430684 	smlalbbmi	r0, r3, r4, r6
    b6e8:	4454324e 	ldrbmi	r3, [r4], #-590	; 0xfffffdb2
    b6ec:	28203241 	stmdacs	r0!, {r0, r6, r9, ip, sp}
    b6f0:	6f76282a 	svcvs	0x0076282a
    b6f4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b6f8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b6fc:	33746e69 	cmncc	r4, #1680	; 0x690
    b700:	2a745f32 	bcs	1d233d0 <__mprec_tinytens+0x1cfeb60>
    b704:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b708:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b70c:	38343038 	ldmdacc	r4!, {r3, r4, r5, ip, sp}
    b710:	01002929 	tsteq	r0, r9, lsr #18
    b714:	41430685 	smlalbbmi	r0, r3, r5, r6
    b718:	4454324e 	ldrbmi	r3, [r4], #-590	; 0xfffffdb2
    b71c:	28203242 	stmdacs	r0!, {r1, r6, r9, ip, sp}
    b720:	6f76282a 	svcvs	0x0076282a
    b724:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b728:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b72c:	33746e69 	cmncc	r4, #1680	; 0x690
    b730:	2a745f32 	bcs	1d23400 <__mprec_tinytens+0x1cfeb90>
    b734:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b738:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b73c:	43343038 	teqmi	r4, #56	; 0x38
    b740:	01002929 	tsteq	r0, r9, lsr #18
    b744:	41430686 	smlalbbmi	r0, r3, r6, r6
    b748:	4654324e 	ldrbmi	r3, [r4], -lr, asr #4
    b74c:	28203349 	stmdacs	r0!, {r0, r3, r6, r8, r9, ip, sp}
    b750:	6f76282a 	svcvs	0x0076282a
    b754:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b758:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b75c:	33746e69 	cmncc	r4, #1680	; 0x690
    b760:	2a745f32 	bcs	1d23430 <__mprec_tinytens+0x1cfebc0>
    b764:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b768:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b76c:	30353038 	eorscc	r3, r5, r8, lsr r0
    b770:	01002929 	tsteq	r0, r9, lsr #18
    b774:	41430687 	smlalbbmi	r0, r3, r7, r6
    b778:	4954324e 	ldmdbmi	r4, {r1, r2, r3, r6, r9, ip, sp}^
    b77c:	28203344 	stmdacs	r0!, {r2, r6, r8, r9, ip, sp}
    b780:	6f76282a 	svcvs	0x0076282a
    b784:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b788:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b78c:	33746e69 	cmncc	r4, #1680	; 0x690
    b790:	2a745f32 	bcs	1d23460 <__mprec_tinytens+0x1cfebf0>
    b794:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b798:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b79c:	34353038 	ldrtcc	r3, [r5], #-56	; 0xffffffc8
    b7a0:	01002929 	tsteq	r0, r9, lsr #18
    b7a4:	41430688 	smlalbbmi	r0, r3, r8, r6
    b7a8:	4454324e 	ldrbmi	r3, [r4], #-590	; 0xfffffdb2
    b7ac:	28203341 	stmdacs	r0!, {r0, r6, r8, r9, ip, sp}
    b7b0:	6f76282a 	svcvs	0x0076282a
    b7b4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b7b8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b7bc:	33746e69 	cmncc	r4, #1680	; 0x690
    b7c0:	2a745f32 	bcs	1d23490 <__mprec_tinytens+0x1cfec20>
    b7c4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b7c8:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b7cc:	38353038 	ldmdacc	r5!, {r3, r4, r5, ip, sp}
    b7d0:	01002929 	tsteq	r0, r9, lsr #18
    b7d4:	41430689 	smlalbbmi	r0, r3, r9, r6
    b7d8:	4454324e 	ldrbmi	r3, [r4], #-590	; 0xfffffdb2
    b7dc:	28203342 	stmdacs	r0!, {r1, r6, r8, r9, ip, sp}
    b7e0:	6f76282a 	svcvs	0x0076282a
    b7e4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b7e8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b7ec:	33746e69 	cmncc	r4, #1680	; 0x690
    b7f0:	2a745f32 	bcs	1d234c0 <__mprec_tinytens+0x1cfec50>
    b7f4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b7f8:	34303045 	ldrtcc	r3, [r0], #-69	; 0xffffffbb
    b7fc:	43353038 	teqmi	r5, #56	; 0x38
    b800:	01002929 	tsteq	r0, r9, lsr #18
    b804:	434d068b 	movtmi	r0, #54923	; 0xd68b
    b808:	4f505f49 	svcmi	0x00505f49
    b80c:	20524557 	subscs	r4, r2, r7, asr r5
    b810:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b814:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b818:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b81c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b820:	745f3233 	ldrbvc	r3, [pc], #-563	; b828 <_s_tiny_malloc_+0x110>
    b824:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b828:	30304578 	eorscc	r4, r0, r8, ror r5
    b82c:	30304338 	eorscc	r4, r0, r8, lsr r3
    b830:	00292930 	eoreq	r2, r9, r0, lsr r9
    b834:	4d068c01 	stcmi	12, cr8, [r6, #-4]
    b838:	435f4943 	cmpmi	pc, #1097728	; 0x10c000
    b83c:	4b434f4c 	blmi	10df574 <__mprec_tinytens+0x10bad04>
    b840:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    b844:	616c6f76 	smcvs	50934	; 0xc6f6
    b848:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    b84c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    b850:	5f323374 	svcpl	0x00323374
    b854:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    b858:	30457830 	subcc	r7, r5, r0, lsr r8
    b85c:	30433830 	subcc	r3, r3, r0, lsr r8
    b860:	29293430 	stmdbcs	r9!, {r4, r5, sl, ip, sp}
    b864:	068d0100 	streq	r0, [sp], r0, lsl #2
    b868:	5f49434d 	svcpl	0x0049434d
    b86c:	55475241 	strbpl	r5, [r7, #-577]	; 0xfffffdbf
    b870:	544e454d 	strbpl	r4, [lr], #-1357	; 0xfffffab3
    b874:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    b878:	616c6f76 	smcvs	50934	; 0xc6f6
    b87c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    b880:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    b884:	5f323374 	svcpl	0x00323374
    b888:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    b88c:	30457830 	subcc	r7, r5, r0, lsr r8
    b890:	30433830 	subcc	r3, r3, r0, lsr r8
    b894:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    b898:	068e0100 	streq	r0, [lr], r0, lsl #2
    b89c:	5f49434d 	svcpl	0x0049434d
    b8a0:	4d4d4f43 	stclmi	15, cr4, [sp, #-268]	; 0xfffffef4
    b8a4:	20444e41 	subcs	r4, r4, r1, asr #28
    b8a8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b8ac:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b8b0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b8b4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b8b8:	745f3233 	ldrbvc	r3, [pc], #-563	; b8c0 <_s_tiny_malloc_+0x1a8>
    b8bc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b8c0:	30304578 	eorscc	r4, r0, r8, ror r5
    b8c4:	30304338 	eorscc	r4, r0, r8, lsr r3
    b8c8:	00292943 	eoreq	r2, r9, r3, asr #18
    b8cc:	4d068f01 	stcmi	15, cr8, [r6, #-4]
    b8d0:	525f4943 	subspl	r4, pc, #1097728	; 0x10c000
    b8d4:	5f505345 	svcpl	0x00505345
    b8d8:	20444d43 	subcs	r4, r4, r3, asr #26
    b8dc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b8e0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b8e4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b8e8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b8ec:	745f3233 	ldrbvc	r3, [pc], #-563	; b8f4 <_s_tiny_malloc_+0x1dc>
    b8f0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b8f4:	30304578 	eorscc	r4, r0, r8, ror r5
    b8f8:	31304338 	teqcc	r0, r8, lsr r3
    b8fc:	00292930 	eoreq	r2, r9, r0, lsr r9
    b900:	4d069001 	stcmi	0, cr9, [r6, #-4]
    b904:	525f4943 	subspl	r4, pc, #1097728	; 0x10c000
    b908:	30505345 	subscc	r5, r0, r5, asr #6
    b90c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    b910:	616c6f76 	smcvs	50934	; 0xc6f6
    b914:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    b918:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    b91c:	5f323374 	svcpl	0x00323374
    b920:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    b924:	30457830 	subcc	r7, r5, r0, lsr r8
    b928:	30433830 	subcc	r3, r3, r0, lsr r8
    b92c:	29293431 	stmdbcs	r9!, {r0, r4, r5, sl, ip, sp}
    b930:	06910100 	ldreq	r0, [r1], r0, lsl #2
    b934:	5f49434d 	svcpl	0x0049434d
    b938:	50534552 	subspl	r4, r3, r2, asr r5
    b93c:	2a282031 	bcs	a13a08 <__mprec_tinytens+0x9ef198>
    b940:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; b8a8 <_s_tiny_malloc_+0x190>
    b944:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    b948:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    b94c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    b950:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    b954:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    b958:	43383030 	teqmi	r8, #48	; 0x30
    b95c:	29383130 	ldmdbcs	r8!, {r4, r5, r8, ip, sp}
    b960:	92010029 	andls	r0, r1, #41	; 0x29
    b964:	49434d06 	stmdbmi	r3, {r1, r2, r8, sl, fp, lr}^
    b968:	5345525f 	movtpl	r5, #21087	; 0x525f
    b96c:	28203250 	stmdacs	r0!, {r4, r6, r9, ip, sp}
    b970:	6f76282a 	svcvs	0x0076282a
    b974:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    b978:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    b97c:	33746e69 	cmncc	r4, #1680	; 0x690
    b980:	2a745f32 	bcs	1d23650 <__mprec_tinytens+0x1cfede0>
    b984:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    b988:	38303045 	ldmdacc	r0!, {r0, r2, r6, ip, sp}
    b98c:	43313043 	teqmi	r1, #67	; 0x43
    b990:	01002929 	tsteq	r0, r9, lsr #18
    b994:	434d0693 	movtmi	r0, #54931	; 0xd693
    b998:	45525f49 	ldrbmi	r5, [r2, #-3913]	; 0xfffff0b7
    b99c:	20335053 	eorscs	r5, r3, r3, asr r0
    b9a0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b9a4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b9a8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b9ac:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b9b0:	745f3233 	ldrbvc	r3, [pc], #-563	; b9b8 <_s_tiny_free_+0xb8>
    b9b4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b9b8:	30304578 	eorscc	r4, r0, r8, ror r5
    b9bc:	32304338 	eorscc	r4, r0, #56, 6	; 0xe0000000
    b9c0:	00292930 	eoreq	r2, r9, r0, lsr r9
    b9c4:	4d069401 	cfstrsmi	mvf9, [r6, #-4]
    b9c8:	445f4943 	ldrbmi	r4, [pc], #-2371	; b9d0 <uart0_init>
    b9cc:	5f415441 	svcpl	0x00415441
    b9d0:	20524d54 	subscs	r4, r2, r4, asr sp
    b9d4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    b9d8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    b9dc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    b9e0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    b9e4:	745f3233 	ldrbvc	r3, [pc], #-563	; b9ec <uart0_getc+0x18>
    b9e8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    b9ec:	30304578 	eorscc	r4, r0, r8, ror r5
    b9f0:	32304338 	eorscc	r4, r0, #56, 6	; 0xe0000000
    b9f4:	00292934 	eoreq	r2, r9, r4, lsr r9
    b9f8:	4d069501 	cfstr32mi	mvfx9, [r6, #-4]
    b9fc:	445f4943 	ldrbmi	r4, [pc], #-2371	; ba04 <uart0_putc+0xc>
    ba00:	5f415441 	svcpl	0x00415441
    ba04:	204e454c 	subcs	r4, lr, ip, asr #10
    ba08:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    ba0c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    ba10:	20656c69 	rsbcs	r6, r5, r9, ror #24
    ba14:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    ba18:	745f3233 	ldrbvc	r3, [pc], #-563	; ba20 <uart0_puts+0x8>
    ba1c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    ba20:	30304578 	eorscc	r4, r0, r8, ror r5
    ba24:	32304338 	eorscc	r4, r0, #56, 6	; 0xe0000000
    ba28:	00292938 	eoreq	r2, r9, r8, lsr r9
    ba2c:	4d069601 	stcmi	6, cr9, [r6, #-4]
    ba30:	445f4943 	ldrbmi	r4, [pc], #-2371	; ba38 <uart0_puts+0x20>
    ba34:	5f415441 	svcpl	0x00415441
    ba38:	4c525443 	cfldrdmi	mvd5, [r2], {67}	; 0x43
    ba3c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    ba40:	616c6f76 	smcvs	50934	; 0xc6f6
    ba44:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    ba48:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    ba4c:	5f323374 	svcpl	0x00323374
    ba50:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    ba54:	30457830 	subcc	r7, r5, r0, lsr r8
    ba58:	30433830 	subcc	r3, r3, r0, lsr r8
    ba5c:	29294332 	stmdbcs	r9!, {r1, r4, r5, r8, r9, lr}
    ba60:	06970100 	ldreq	r0, [r7], r0, lsl #2
    ba64:	5f49434d 	svcpl	0x0049434d
    ba68:	41544144 	cmpmi	r4, r4, asr #2
    ba6c:	544e435f 	strbpl	r4, [lr], #-863	; 0xfffffca1
    ba70:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    ba74:	616c6f76 	smcvs	50934	; 0xc6f6
    ba78:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    ba7c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    ba80:	5f323374 	svcpl	0x00323374
    ba84:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    ba88:	30457830 	subcc	r7, r5, r0, lsr r8
    ba8c:	30433830 	subcc	r3, r3, r0, lsr r8
    ba90:	29293033 	stmdbcs	r9!, {r0, r1, r4, r5, ip, sp}
    ba94:	06980100 	ldreq	r0, [r8], r0, lsl #2
    ba98:	5f49434d 	svcpl	0x0049434d
    ba9c:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    baa0:	28205355 	stmdacs	r0!, {r0, r2, r4, r6, r8, r9, ip, lr}
    baa4:	6f76282a 	svcvs	0x0076282a
    baa8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    baac:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    bab0:	33746e69 	cmncc	r4, #1680	; 0x690
    bab4:	2a745f32 	bcs	1d23784 <__mprec_tinytens+0x1cfef14>
    bab8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    babc:	38303045 	ldmdacc	r0!, {r0, r2, r6, ip, sp}
    bac0:	34333043 	ldrtcc	r3, [r3], #-67	; 0xffffffbd
    bac4:	01002929 	tsteq	r0, r9, lsr #18
    bac8:	434d0699 	movtmi	r0, #54937	; 0xd699
    bacc:	4c435f49 	mcrrmi	15, 4, r5, r3, cr9
    bad0:	20524145 	subscs	r4, r2, r5, asr #2
    bad4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    bad8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    badc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    bae0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    bae4:	745f3233 	ldrbvc	r3, [pc], #-563	; baec <Reg_IRQ+0x1c>
    bae8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    baec:	30304578 	eorscc	r4, r0, r8, ror r5
    baf0:	33304338 	teqcc	r0, #56, 6	; 0xe0000000
    baf4:	00292938 	eoreq	r2, r9, r8, lsr r9
    baf8:	4d069a01 	vstrmi	s18, [r6, #-4]
    bafc:	4d5f4943 	vldrmi.16	s9, [pc, #-134]	; ba7e <VIC_Init+0x26>	; <UNPREDICTABLE>
    bb00:	304b5341 	subcc	r5, fp, r1, asr #6
    bb04:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    bb08:	616c6f76 	smcvs	50934	; 0xc6f6
    bb0c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    bb10:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    bb14:	5f323374 	svcpl	0x00323374
    bb18:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    bb1c:	30457830 	subcc	r7, r5, r0, lsr r8
    bb20:	30433830 	subcc	r3, r3, r0, lsr r8
    bb24:	29294333 	stmdbcs	r9!, {r0, r1, r4, r5, r8, r9, lr}
    bb28:	069b0100 	ldreq	r0, [fp], r0, lsl #2
    bb2c:	5f49434d 	svcpl	0x0049434d
    bb30:	4b53414d 	blmi	14dc06c <__mprec_tinytens+0x14b77fc>
    bb34:	2a282031 	bcs	a13c00 <__mprec_tinytens+0x9ef390>
    bb38:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; baa0 <Enable_IRQ>
    bb3c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    bb40:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    bb44:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    bb48:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    bb4c:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    bb50:	43383030 	teqmi	r8, #48	; 0x30
    bb54:	29303430 	ldmdbcs	r0!, {r4, r5, sl, ip, sp}
    bb58:	9c010029 	stcls	0, cr0, [r1], {41}	; 0x29
    bb5c:	49434d06 	stmdbmi	r3, {r1, r2, r8, sl, fp, lr}^
    bb60:	4649465f 			; <UNDEFINED> instruction: 0x4649465f
    bb64:	4e435f4f 	cdpmi	15, 4, cr5, cr3, cr15, {2}
    bb68:	2a282054 	bcs	a13cc0 <__mprec_tinytens+0x9ef450>
    bb6c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; bad4 <Reg_IRQ+0x4>
    bb70:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    bb74:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    bb78:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    bb7c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    bb80:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    bb84:	43383030 	teqmi	r8, #48	; 0x30
    bb88:	29383430 	ldmdbcs	r8!, {r4, r5, sl, ip, sp}
    bb8c:	9d010029 	stcls	0, cr0, [r1, #-164]	; 0xffffff5c
    bb90:	49434d06 	stmdbmi	r3, {r1, r2, r8, sl, fp, lr}^
    bb94:	4649465f 			; <UNDEFINED> instruction: 0x4649465f
    bb98:	2a28204f 	bcs	a13cdc <__mprec_tinytens+0x9ef46c>
    bb9c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; bb04 <Reg_IRQ+0x34>
    bba0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    bba4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    bba8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    bbac:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    bbb0:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    bbb4:	43383030 	teqmi	r8, #48	; 0x30
    bbb8:	29303830 	ldmdbcs	r0!, {r4, r5, fp, ip, sp}
    bbbc:	9f010029 	svcls	0x00010029
    bbc0:	53324906 	teqpl	r2, #98304	; 0x18000
    bbc4:	4f41445f 	svcmi	0x0041445f
    bbc8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    bbcc:	616c6f76 	smcvs	50934	; 0xc6f6
    bbd0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    bbd4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    bbd8:	5f323374 	svcpl	0x00323374
    bbdc:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    bbe0:	30457830 	subcc	r7, r5, r0, lsr r8
    bbe4:	30383830 	eorscc	r3, r8, r0, lsr r8
    bbe8:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    bbec:	06a00100 	strteq	r0, [r0], r0, lsl #2
    bbf0:	5f533249 	svcpl	0x00533249
    bbf4:	20494144 	subcs	r4, r9, r4, asr #2
    bbf8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    bbfc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    bc00:	20656c69 	rsbcs	r6, r5, r9, ror #24
    bc04:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    bc08:	745f3233 	ldrbvc	r3, [pc], #-563	; bc10 <xputc+0x60>
    bc0c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    bc10:	30304578 	eorscc	r4, r0, r8, ror r5
    bc14:	30303838 	eorscc	r3, r0, r8, lsr r8
    bc18:	00292934 	eoreq	r2, r9, r4, lsr r9
    bc1c:	4906a101 	stmdbmi	r6, {r0, r8, sp, pc}
    bc20:	545f5332 	ldrbpl	r5, [pc], #-818	; bc28 <xputs+0xc>
    bc24:	49465f58 	stmdbmi	r6, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    bc28:	28204f46 	stmdacs	r0!, {r1, r2, r6, r8, r9, sl, fp, lr}
    bc2c:	6f76282a 	svcvs	0x0076282a
    bc30:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    bc34:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    bc38:	33746e69 	cmncc	r4, #1680	; 0x690
    bc3c:	2a745f32 	bcs	1d2390c <__mprec_tinytens+0x1cff09c>
    bc40:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    bc44:	38303045 	ldmdacc	r0!, {r0, r2, r6, ip, sp}
    bc48:	38303038 	ldmdacc	r0!, {r3, r4, r5, ip, sp}
    bc4c:	01002929 	tsteq	r0, r9, lsr #18
    bc50:	324906a2 	subcc	r0, r9, #169869312	; 0xa200000
    bc54:	58525f53 	ldmdapl	r2, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    bc58:	4649465f 			; <UNDEFINED> instruction: 0x4649465f
    bc5c:	2a28204f 	bcs	a13da0 <__mprec_tinytens+0x9ef530>
    bc60:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; bbc8 <xputc+0x18>
    bc64:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    bc68:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    bc6c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    bc70:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    bc74:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    bc78:	38383030 	ldmdacc	r8!, {r4, r5, ip, sp}
    bc7c:	29433030 	stmdbcs	r3, {r4, r5, ip, sp}^
    bc80:	a3010029 	movwge	r0, #4137	; 0x1029
    bc84:	53324906 	teqpl	r2, #98304	; 0x18000
    bc88:	4154535f 	cmpmi	r4, pc, asr r3
    bc8c:	28204554 	stmdacs	r0!, {r2, r4, r6, r8, sl, lr}
    bc90:	6f76282a 	svcvs	0x0076282a
    bc94:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    bc98:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    bc9c:	33746e69 	cmncc	r4, #1680	; 0x690
    bca0:	2a745f32 	bcs	1d23970 <__mprec_tinytens+0x1cff100>
    bca4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    bca8:	38303045 	ldmdacc	r0!, {r0, r2, r6, ip, sp}
    bcac:	30313038 	eorscc	r3, r1, r8, lsr r0
    bcb0:	01002929 	tsteq	r0, r9, lsr #18
    bcb4:	324906a4 	subcc	r0, r9, #164, 12	; 0xa400000
    bcb8:	4d445f53 	stclmi	15, cr5, [r4, #-332]	; 0xfffffeb4
    bcbc:	28203141 	stmdacs	r0!, {r0, r6, r8, ip, sp}
    bcc0:	6f76282a 	svcvs	0x0076282a
    bcc4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    bcc8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    bccc:	33746e69 	cmncc	r4, #1680	; 0x690
    bcd0:	2a745f32 	bcs	1d239a0 <__mprec_tinytens+0x1cff130>
    bcd4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    bcd8:	38303045 	ldmdacc	r0!, {r0, r2, r6, ip, sp}
    bcdc:	34313038 	ldrtcc	r3, [r1], #-56	; 0xffffffc8
    bce0:	01002929 	tsteq	r0, r9, lsr #18
    bce4:	324906a5 	subcc	r0, r9, #173015040	; 0xa500000
    bce8:	4d445f53 	stclmi	15, cr5, [r4, #-332]	; 0xfffffeb4
    bcec:	28203241 	stmdacs	r0!, {r0, r6, r9, ip, sp}
    bcf0:	6f76282a 	svcvs	0x0076282a
    bcf4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    bcf8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    bcfc:	33746e69 	cmncc	r4, #1680	; 0x690
    bd00:	2a745f32 	bcs	1d239d0 <__mprec_tinytens+0x1cff160>
    bd04:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    bd08:	38303045 	ldmdacc	r0!, {r0, r2, r6, ip, sp}
    bd0c:	38313038 	ldmdacc	r1!, {r3, r4, r5, ip, sp}
    bd10:	01002929 	tsteq	r0, r9, lsr #18
    bd14:	324906a6 	subcc	r0, r9, #174063616	; 0xa600000
    bd18:	52495f53 	subpl	r5, r9, #332	; 0x14c
    bd1c:	2a282051 	bcs	a13e68 <__mprec_tinytens+0x9ef5f8>
    bd20:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; bc88 <xputs+0x6c>
    bd24:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    bd28:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    bd2c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    bd30:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    bd34:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    bd38:	38383030 	ldmdacc	r8!, {r4, r5, ip, sp}
    bd3c:	29433130 	stmdbcs	r3, {r4, r5, r8, ip, sp}^
    bd40:	a7010029 	strge	r0, [r1, -r9, lsr #32]
    bd44:	53324906 	teqpl	r2, #98304	; 0x18000
    bd48:	5258545f 	subspl	r5, r8, #1593835520	; 0x5f000000
    bd4c:	20455441 	subcs	r5, r5, r1, asr #8
    bd50:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    bd54:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    bd58:	20656c69 	rsbcs	r6, r5, r9, ror #24
    bd5c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    bd60:	745f3233 	ldrbvc	r3, [pc], #-563	; bd68 <xputs+0x14c>
    bd64:	3028292a 	eorcc	r2, r8, sl, lsr #18
    bd68:	30304578 	eorscc	r4, r0, r8, ror r5
    bd6c:	32303838 	eorscc	r3, r0, #56, 16	; 0x380000
    bd70:	00292930 	eoreq	r2, r9, r0, lsr r9
    bd74:	4906a801 	stmdbmi	r6, {r0, fp, sp, pc}
    bd78:	525f5332 	subspl	r5, pc, #-939524096	; 0xc8000000
    bd7c:	54415258 	strbpl	r5, [r1], #-600	; 0xfffffda8
    bd80:	2a282045 	bcs	a13e9c <__mprec_tinytens+0x9ef62c>
    bd84:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; bcec <xputs+0xd0>
    bd88:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    bd8c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    bd90:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    bd94:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    bd98:	45783028 	ldrbmi	r3, [r8, #-40]!	; 0xffffffd8
    bd9c:	38383030 	ldmdacc	r8!, {r4, r5, ip, sp}
    bda0:	29343230 	ldmdbcs	r4!, {r4, r5, r9, ip, sp}
    bda4:	aa010029 	bge	4be50 <__mprec_tinytens+0x275e0>
    bda8:	44504706 	ldrbmi	r4, [r0], #-1798	; 0xfffff8fa
    bdac:	495f414d 	ldmdbmi	pc, {r0, r2, r3, r6, r8, lr}^	; <UNPREDICTABLE>
    bdb0:	535f544e 	cmppl	pc, #1308622848	; 0x4e000000
    bdb4:	20544154 	subscs	r4, r4, r4, asr r1
    bdb8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    bdbc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    bdc0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    bdc4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    bdc8:	745f3233 	ldrbvc	r3, [pc], #-563	; bdd0 <xputs+0x1b4>
    bdcc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    bdd0:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    bdd4:	30303430 	eorscc	r3, r0, r0, lsr r4
    bdd8:	00292930 	eoreq	r2, r9, r0, lsr r9
    bddc:	4706ab01 	strmi	sl, [r6, -r1, lsl #22]
    bde0:	414d4450 	cmpmi	sp, r0, asr r4
    bde4:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    bde8:	5343545f 	movtpl	r5, #13407	; 0x345f
    bdec:	20544154 	subscs	r4, r4, r4, asr r1
    bdf0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    bdf4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    bdf8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    bdfc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    be00:	745f3233 	ldrbvc	r3, [pc], #-563	; be08 <xputs+0x1ec>
    be04:	3028292a 	eorcc	r2, r8, sl, lsr #18
    be08:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    be0c:	30303430 	eorscc	r3, r0, r0, lsr r4
    be10:	00292934 	eoreq	r2, r9, r4, lsr r9
    be14:	4706ac01 	strmi	sl, [r6, -r1, lsl #24]
    be18:	414d4450 	cmpmi	sp, r0, asr r4
    be1c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    be20:	4343545f 	movtmi	r5, #13407	; 0x345f
    be24:	2820524c 	stmdacs	r0!, {r2, r3, r6, r9, ip, lr}
    be28:	6f76282a 	svcvs	0x0076282a
    be2c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    be30:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    be34:	33746e69 	cmncc	r4, #1680	; 0x690
    be38:	2a745f32 	bcs	1d23b08 <__mprec_tinytens+0x1cff298>
    be3c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    be40:	30454646 	subcc	r4, r5, r6, asr #12
    be44:	38303034 	ldmdacc	r0!, {r2, r4, r5, ip, sp}
    be48:	01002929 	tsteq	r0, r9, lsr #18
    be4c:	504706ad 	subpl	r0, r7, sp, lsr #13
    be50:	5f414d44 	svcpl	0x00414d44
    be54:	5f544e49 	svcpl	0x00544e49
    be58:	5f525245 	svcpl	0x00525245
    be5c:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    be60:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    be64:	616c6f76 	smcvs	50934	; 0xc6f6
    be68:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    be6c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    be70:	5f323374 	svcpl	0x00323374
    be74:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    be78:	46467830 			; <UNDEFINED> instruction: 0x46467830
    be7c:	30343045 	eorscc	r3, r4, r5, asr #32
    be80:	29294330 	stmdbcs	r9!, {r4, r5, r8, r9, lr}
    be84:	06ae0100 	strteq	r0, [lr], r0, lsl #2
    be88:	4d445047 	stclmi	0, cr5, [r4, #-284]	; 0xfffffee4
    be8c:	4e495f41 	cdpmi	15, 4, cr5, cr9, cr1, {2}
    be90:	52455f54 	subpl	r5, r5, #84, 30	; 0x150
    be94:	4c435f52 	mcrrmi	15, 5, r5, r3, cr2
    be98:	2a282052 	bcs	a13fe8 <__mprec_tinytens+0x9ef778>
    be9c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; be04 <xputs+0x1e8>
    bea0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    bea4:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    bea8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    beac:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    beb0:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    beb4:	34304546 	ldrtcc	r4, [r0], #-1350	; 0xfffffaba
    beb8:	29303130 	ldmdbcs	r0!, {r4, r5, r8, ip, sp}
    bebc:	af010029 	svcge	0x00010029
    bec0:	44504706 	ldrbmi	r4, [r0], #-1798	; 0xfffff8fa
    bec4:	525f414d 	subspl	r4, pc, #1073741843	; 0x40000013
    bec8:	495f5741 	ldmdbmi	pc, {r0, r6, r8, r9, sl, ip, lr}^	; <UNPREDICTABLE>
    becc:	545f544e 	ldrbpl	r5, [pc], #-1102	; bed4 <xputs+0x2b8>
    bed0:	41545343 	cmpmi	r4, r3, asr #6
    bed4:	2a282054 	bcs	a1402c <__mprec_tinytens+0x9ef7bc>
    bed8:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; be40 <xputs+0x224>
    bedc:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    bee0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    bee4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    bee8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    beec:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    bef0:	34304546 	ldrtcc	r4, [r0], #-1350	; 0xfffffaba
    bef4:	29343130 	ldmdbcs	r4!, {r4, r5, r8, ip, sp}
    bef8:	b0010029 	andlt	r0, r1, r9, lsr #32
    befc:	44504706 	ldrbmi	r4, [r0], #-1798	; 0xfffff8fa
    bf00:	525f414d 	subspl	r4, pc, #1073741843	; 0x40000013
    bf04:	495f5741 	ldmdbmi	pc, {r0, r6, r8, r9, sl, ip, lr}^	; <UNPREDICTABLE>
    bf08:	455f544e 	ldrbmi	r5, [pc, #-1102]	; bac2 <Disable_IRQ+0xa>
    bf0c:	535f5252 	cmppl	pc, #536870917	; 0x20000005
    bf10:	20544154 	subscs	r4, r4, r4, asr r1
    bf14:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    bf18:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    bf1c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    bf20:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    bf24:	745f3233 	ldrbvc	r3, [pc], #-563	; bf2c <xputs+0x310>
    bf28:	3028292a 	eorcc	r2, r8, sl, lsr #18
    bf2c:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    bf30:	31303430 	teqcc	r0, r0, lsr r4
    bf34:	00292938 	eoreq	r2, r9, r8, lsr r9
    bf38:	4706b101 	strmi	fp, [r6, -r1, lsl #2]
    bf3c:	414d4450 	cmpmi	sp, r0, asr r4
    bf40:	414e455f 	cmpmi	lr, pc, asr r5
    bf44:	44454c42 	strbmi	r4, [r5], #-3138	; 0xfffff3be
    bf48:	4e48435f 	mcrmi	3, 2, r4, cr8, cr15, {2}
    bf4c:	2a282053 	bcs	a140a0 <__mprec_tinytens+0x9ef830>
    bf50:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; beb8 <xputs+0x29c>
    bf54:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    bf58:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    bf5c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    bf60:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    bf64:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    bf68:	34304546 	ldrtcc	r4, [r0], #-1350	; 0xfffffaba
    bf6c:	29433130 	stmdbcs	r3, {r4, r5, r8, ip, sp}^
    bf70:	b2010029 	andlt	r0, r1, #41	; 0x29
    bf74:	44504706 	ldrbmi	r4, [r0], #-1798	; 0xfffff8fa
    bf78:	535f414d 	cmppl	pc, #1073741843	; 0x40000013
    bf7c:	5f54464f 	svcpl	0x0054464f
    bf80:	51455242 	cmppl	r5, r2, asr #4
    bf84:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    bf88:	616c6f76 	smcvs	50934	; 0xc6f6
    bf8c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    bf90:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    bf94:	5f323374 	svcpl	0x00323374
    bf98:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    bf9c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    bfa0:	30343045 	eorscc	r3, r4, r5, asr #32
    bfa4:	29293032 	stmdbcs	r9!, {r1, r4, r5, ip, sp}
    bfa8:	06b30100 	ldrteq	r0, [r3], r0, lsl #2
    bfac:	4d445047 	stclmi	0, cr5, [r4, #-284]	; 0xfffffee4
    bfb0:	4f535f41 	svcmi	0x00535f41
    bfb4:	535f5446 	cmppl	pc, #1174405120	; 0x46000000
    bfb8:	20514552 	subscs	r4, r1, r2, asr r5
    bfbc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    bfc0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    bfc4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    bfc8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    bfcc:	745f3233 	ldrbvc	r3, [pc], #-563	; bfd4 <xputs+0x3b8>
    bfd0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    bfd4:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    bfd8:	32303430 	eorscc	r3, r0, #48, 8	; 0x30000000
    bfdc:	00292934 	eoreq	r2, r9, r4, lsr r9
    bfe0:	4706b401 	strmi	fp, [r6, -r1, lsl #8]
    bfe4:	414d4450 	cmpmi	sp, r0, asr r4
    bfe8:	464f535f 			; <UNDEFINED> instruction: 0x464f535f
    bfec:	424c5f54 	submi	r5, ip, #84, 30	; 0x150
    bff0:	20514552 	subscs	r4, r1, r2, asr r5
    bff4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    bff8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    bffc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c000:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c004:	745f3233 	ldrbvc	r3, [pc], #-563	; c00c <xputs+0x3f0>
    c008:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c00c:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c010:	32303430 	eorscc	r3, r0, #48, 8	; 0x30000000
    c014:	00292938 	eoreq	r2, r9, r8, lsr r9
    c018:	4706b501 	strmi	fp, [r6, -r1, lsl #10]
    c01c:	414d4450 	cmpmi	sp, r0, asr r4
    c020:	464f535f 			; <UNDEFINED> instruction: 0x464f535f
    c024:	534c5f54 	movtpl	r5, #53076	; 0xcf54
    c028:	20514552 	subscs	r4, r1, r2, asr r5
    c02c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c030:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c034:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c038:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c03c:	745f3233 	ldrbvc	r3, [pc], #-563	; c044 <xputs+0x428>
    c040:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c044:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c048:	32303430 	eorscc	r3, r0, #48, 8	; 0x30000000
    c04c:	00292943 	eoreq	r2, r9, r3, asr #18
    c050:	4706b601 	strmi	fp, [r6, -r1, lsl #12]
    c054:	414d4450 	cmpmi	sp, r0, asr r4
    c058:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
    c05c:	20474946 	subcs	r4, r7, r6, asr #18
    c060:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c064:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c068:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c06c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c070:	745f3233 	ldrbvc	r3, [pc], #-563	; c078 <xfputs+0x28>
    c074:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c078:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c07c:	33303430 	teqcc	r0, #48, 8	; 0x30000000
    c080:	00292930 	eoreq	r2, r9, r0, lsr r9
    c084:	4706b701 	strmi	fp, [r6, -r1, lsl #14]
    c088:	414d4450 	cmpmi	sp, r0, asr r4
    c08c:	4e59535f 	mrcmi	3, 2, r5, cr9, cr15, {2}
    c090:	2a282043 	bcs	a141a4 <__mprec_tinytens+0x9ef934>
    c094:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; bffc <xputs+0x3e0>
    c098:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    c09c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    c0a0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    c0a4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    c0a8:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    c0ac:	34304546 	ldrtcc	r4, [r0], #-1350	; 0xfffffaba
    c0b0:	29343330 	ldmdbcs	r4!, {r4, r5, r8, r9, ip, sp}
    c0b4:	b9010029 	stmdblt	r1, {r0, r3, r5}
    c0b8:	44504706 	ldrbmi	r4, [r0], #-1798	; 0xfffff8fa
    c0bc:	435f414d 	cmpmi	pc, #1073741843	; 0x40000013
    c0c0:	535f3048 	cmppl	pc, #72	; 0x48
    c0c4:	28204352 	stmdacs	r0!, {r1, r4, r6, r8, r9, lr}
    c0c8:	6f76282a 	svcvs	0x0076282a
    c0cc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    c0d0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    c0d4:	33746e69 	cmncc	r4, #1680	; 0x690
    c0d8:	2a745f32 	bcs	1d23da8 <__mprec_tinytens+0x1cff538>
    c0dc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    c0e0:	30454646 	subcc	r4, r5, r6, asr #12
    c0e4:	30303134 	eorscc	r3, r0, r4, lsr r1
    c0e8:	01002929 	tsteq	r0, r9, lsr #18
    c0ec:	504706ba 	strhpl	r0, [r7], #-106	; 0xffffff96
    c0f0:	5f414d44 	svcpl	0x00414d44
    c0f4:	5f304843 	svcpl	0x00304843
    c0f8:	54534544 	ldrbpl	r4, [r3], #-1348	; 0xfffffabc
    c0fc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    c100:	616c6f76 	smcvs	50934	; 0xc6f6
    c104:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    c108:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    c10c:	5f323374 	svcpl	0x00323374
    c110:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    c114:	46467830 			; <UNDEFINED> instruction: 0x46467830
    c118:	31343045 	teqcc	r4, r5, asr #32
    c11c:	29293430 	stmdbcs	r9!, {r4, r5, sl, ip, sp}
    c120:	06bb0100 	ldrteq	r0, [fp], r0, lsl #2
    c124:	4d445047 	stclmi	0, cr5, [r4, #-284]	; 0xfffffee4
    c128:	48435f41 	stmdami	r3, {r0, r6, r8, r9, sl, fp, ip, lr}^
    c12c:	4c4c5f30 	mcrrmi	15, 3, r5, ip, cr0
    c130:	2a282049 	bcs	a1425c <__mprec_tinytens+0x9ef9ec>
    c134:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; c09c <xprintf+0x8>
    c138:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    c13c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    c140:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    c144:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    c148:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    c14c:	34304546 	ldrtcc	r4, [r0], #-1350	; 0xfffffaba
    c150:	29383031 	ldmdbcs	r8!, {r0, r4, r5, ip, sp}
    c154:	bc010029 	stclt	0, cr0, [r1], {41}	; 0x29
    c158:	44504706 	ldrbmi	r4, [r0], #-1798	; 0xfffff8fa
    c15c:	435f414d 	cmpmi	pc, #1073741843	; 0x40000013
    c160:	435f3048 	cmpmi	pc, #72	; 0x48
    c164:	204c5254 	subcs	r5, ip, r4, asr r2
    c168:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c16c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c170:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c174:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c178:	745f3233 	ldrbvc	r3, [pc], #-563	; c180 <put_dump+0x38>
    c17c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c180:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c184:	30313430 	eorscc	r3, r1, r0, lsr r4
    c188:	00292943 	eoreq	r2, r9, r3, asr #18
    c18c:	4706bd01 	strmi	fp, [r6, -r1, lsl #26]
    c190:	414d4450 	cmpmi	sp, r0, asr r4
    c194:	3048435f 	subcc	r4, r8, pc, asr r3
    c198:	4746435f 	smlsldmi	r4, r6, pc, r3	; <UNPREDICTABLE>
    c19c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    c1a0:	616c6f76 	smcvs	50934	; 0xc6f6
    c1a4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    c1a8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    c1ac:	5f323374 	svcpl	0x00323374
    c1b0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    c1b4:	46467830 			; <UNDEFINED> instruction: 0x46467830
    c1b8:	31343045 	teqcc	r4, r5, asr #32
    c1bc:	29293031 	stmdbcs	r9!, {r0, r4, r5, ip, sp}
    c1c0:	06bf0100 	ldrteq	r0, [pc], r0, lsl #2
    c1c4:	4d445047 	stclmi	0, cr5, [r4, #-284]	; 0xfffffee4
    c1c8:	48435f41 	stmdami	r3, {r0, r6, r8, r9, sl, fp, ip, lr}^
    c1cc:	52535f31 	subspl	r5, r3, #49, 30	; 0xc4
    c1d0:	2a282043 	bcs	a142e4 <__mprec_tinytens+0x9efa74>
    c1d4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; c13c <xfprintf+0x34>
    c1d8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    c1dc:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    c1e0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    c1e4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    c1e8:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    c1ec:	34304546 	ldrtcc	r4, [r0], #-1350	; 0xfffffaba
    c1f0:	29303231 	ldmdbcs	r0!, {r0, r4, r5, r9, ip, sp}
    c1f4:	c0010029 	andgt	r0, r1, r9, lsr #32
    c1f8:	44504706 	ldrbmi	r4, [r0], #-1798	; 0xfffff8fa
    c1fc:	435f414d 	cmpmi	pc, #1073741843	; 0x40000013
    c200:	445f3148 	ldrbmi	r3, [pc], #-328	; c208 <put_dump+0xc0>
    c204:	20545345 	subscs	r5, r4, r5, asr #6
    c208:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c20c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c210:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c214:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c218:	745f3233 	ldrbvc	r3, [pc], #-563	; c220 <put_dump+0xd8>
    c21c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c220:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c224:	32313430 	eorscc	r3, r1, #48, 8	; 0x30000000
    c228:	00292934 	eoreq	r2, r9, r4, lsr r9
    c22c:	4706c101 	strmi	ip, [r6, -r1, lsl #2]
    c230:	414d4450 	cmpmi	sp, r0, asr r4
    c234:	3148435f 	cmpcc	r8, pc, asr r3
    c238:	494c4c5f 	stmdbmi	ip, {r0, r1, r2, r3, r4, r6, sl, fp, lr}^
    c23c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    c240:	616c6f76 	smcvs	50934	; 0xc6f6
    c244:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    c248:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    c24c:	5f323374 	svcpl	0x00323374
    c250:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    c254:	46467830 			; <UNDEFINED> instruction: 0x46467830
    c258:	31343045 	teqcc	r4, r5, asr #32
    c25c:	29293832 	stmdbcs	r9!, {r1, r4, r5, fp, ip, sp}
    c260:	06c20100 	strbeq	r0, [r2], r0, lsl #2
    c264:	4d445047 	stclmi	0, cr5, [r4, #-284]	; 0xfffffee4
    c268:	48435f41 	stmdami	r3, {r0, r6, r8, r9, sl, fp, ip, lr}^
    c26c:	54435f31 	strbpl	r5, [r3], #-3889	; 0xfffff0cf
    c270:	28204c52 	stmdacs	r0!, {r1, r4, r6, sl, fp, lr}
    c274:	6f76282a 	svcvs	0x0076282a
    c278:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    c27c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    c280:	33746e69 	cmncc	r4, #1680	; 0x690
    c284:	2a745f32 	bcs	1d23f54 <__mprec_tinytens+0x1cff6e4>
    c288:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    c28c:	30454646 	subcc	r4, r5, r6, asr #12
    c290:	43323134 	teqmi	r2, #52, 2
    c294:	01002929 	tsteq	r0, r9, lsr #18
    c298:	504706c3 	subpl	r0, r7, r3, asr #13
    c29c:	5f414d44 	svcpl	0x00414d44
    c2a0:	5f314843 	svcpl	0x00314843
    c2a4:	20474643 	subcs	r4, r7, r3, asr #12
    c2a8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c2ac:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c2b0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c2b4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c2b8:	745f3233 	ldrbvc	r3, [pc], #-563	; c2c0 <xgets+0x88>
    c2bc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c2c0:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c2c4:	33313430 	teqcc	r1, #48, 8	; 0x30000000
    c2c8:	00292930 	eoreq	r2, r9, r0, lsr r9
    c2cc:	5506c501 	strpl	ip, [r6, #-1281]	; 0xfffffaff
    c2d0:	495f4253 	ldmdbmi	pc, {r0, r1, r4, r6, r9, lr}^	; <UNPREDICTABLE>
    c2d4:	535f544e 	cmppl	pc, #1308622848	; 0x4e000000
    c2d8:	20544154 	subscs	r4, r4, r4, asr r1
    c2dc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c2e0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c2e4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c2e8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c2ec:	745f3233 	ldrbvc	r3, [pc], #-563	; c2f4 <xgets+0xbc>
    c2f0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c2f4:	31304578 	teqcc	r0, r8, ror r5
    c2f8:	43314346 	teqmi	r1, #402653185	; 0x18000001
    c2fc:	00292930 	eoreq	r2, r9, r0, lsr r9
    c300:	4406c701 	strmi	ip, [r6], #-1793	; 0xfffff8ff
    c304:	495f5645 	ldmdbmi	pc, {r0, r2, r6, r9, sl, ip, lr}^	; <UNPREDICTABLE>
    c308:	535f544e 	cmppl	pc, #1308622848	; 0x4e000000
    c30c:	20544154 	subscs	r4, r4, r4, asr r1
    c310:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c314:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c318:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c31c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c320:	745f3233 	ldrbvc	r3, [pc], #-563	; c328 <xfgets+0x28>
    c324:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c328:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c32c:	30324330 	eorscc	r4, r2, r0, lsr r3
    c330:	00292930 	eoreq	r2, r9, r0, lsr r9
    c334:	4406c801 	strmi	ip, [r6], #-2049	; 0xfffff7ff
    c338:	495f5645 	ldmdbmi	pc, {r0, r2, r6, r9, sl, ip, lr}^	; <UNPREDICTABLE>
    c33c:	455f544e 	ldrbmi	r5, [pc, #-1102]	; bef6 <xputs+0x2da>
    c340:	2a28204e 	bcs	a14480 <__mprec_tinytens+0x9efc10>
    c344:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; c2ac <xgets+0x74>
    c348:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    c34c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    c350:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    c354:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    c358:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    c35c:	43304546 	teqmi	r0, #293601280	; 0x11800000
    c360:	29343032 	ldmdbcs	r4!, {r1, r4, r5, ip, sp}
    c364:	c9010029 	stmdbgt	r1, {r0, r3, r5}
    c368:	56454406 	strbpl	r4, [r5], -r6, lsl #8
    c36c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    c370:	524c435f 	subpl	r4, ip, #2080374785	; 0x7c000001
    c374:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    c378:	616c6f76 	smcvs	50934	; 0xc6f6
    c37c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    c380:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    c384:	5f323374 	svcpl	0x00323374
    c388:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    c38c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    c390:	32433045 	subcc	r3, r3, #69	; 0x45
    c394:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    c398:	06ca0100 	strbeq	r0, [sl], r0, lsl #2
    c39c:	5f564544 	svcpl	0x00564544
    c3a0:	5f544e49 	svcpl	0x00544e49
    c3a4:	20544553 	subscs	r4, r4, r3, asr r5
    c3a8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c3ac:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c3b0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c3b4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c3b8:	745f3233 	ldrbvc	r3, [pc], #-563	; c3c0 <xatoi+0x90>
    c3bc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c3c0:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c3c4:	30324330 	eorscc	r4, r2, r0, lsr r3
    c3c8:	00292943 	eoreq	r2, r9, r3, asr #18
    c3cc:	4406cb01 	strmi	ip, [r6], #-2817	; 0xfffff4ff
    c3d0:	495f5645 	ldmdbmi	pc, {r0, r2, r6, r9, sl, ip, lr}^	; <UNPREDICTABLE>
    c3d4:	505f544e 	subspl	r5, pc, lr, asr #8
    c3d8:	204f4952 	subcs	r4, pc, r2, asr r9	; <UNPREDICTABLE>
    c3dc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c3e0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c3e4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c3e8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c3ec:	745f3233 	ldrbvc	r3, [pc], #-563	; c3f4 <xatoi+0xc4>
    c3f0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c3f4:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c3f8:	32324330 	eorscc	r4, r2, #48, 6	; 0xc0000000
    c3fc:	00292943 	eoreq	r2, r9, r3, asr #18
    c400:	4506cd01 	strmi	ip, [r6, #-3329]	; 0xfffff2ff
    c404:	4e495f50 	mcrmi	15, 2, r5, cr9, cr0, {2}
    c408:	54535f54 	ldrbpl	r5, [r3], #-3924	; 0xfffff0ac
    c40c:	28205441 	stmdacs	r0!, {r0, r6, sl, ip, lr}
    c410:	6f76282a 	svcvs	0x0076282a
    c414:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    c418:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    c41c:	33746e69 	cmncc	r4, #1680	; 0x690
    c420:	2a745f32 	bcs	1d240f0 <__mprec_tinytens+0x1cff880>
    c424:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    c428:	30454646 	subcc	r4, r5, r6, asr #12
    c42c:	30333243 	eorscc	r3, r3, r3, asr #4
    c430:	01002929 	tsteq	r0, r9, lsr #18
    c434:	504506ce 	subpl	r0, r5, lr, asr #13
    c438:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    c43c:	204e455f 	subcs	r4, lr, pc, asr r5
    c440:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c444:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c448:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c44c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c450:	745f3233 	ldrbvc	r3, [pc], #-563	; c458 <xatoi+0x128>
    c454:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c458:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c45c:	33324330 	teqcc	r2, #48, 6	; 0xc0000000
    c460:	00292934 	eoreq	r2, r9, r4, lsr r9
    c464:	4506cf01 	strmi	ip, [r6, #-3841]	; 0xfffff0ff
    c468:	4e495f50 	mcrmi	15, 2, r5, cr9, cr0, {2}
    c46c:	4c435f54 	mcrrmi	15, 5, r5, r3, cr4
    c470:	2a282052 	bcs	a145c0 <__mprec_tinytens+0x9efd50>
    c474:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; c3dc <xatoi+0xac>
    c478:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    c47c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    c480:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    c484:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    c488:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    c48c:	43304546 	teqmi	r0, #293601280	; 0x11800000
    c490:	29383332 	ldmdbcs	r8!, {r1, r4, r5, r8, r9, ip, sp}
    c494:	d0010029 	andle	r0, r1, r9, lsr #32
    c498:	5f504506 	svcpl	0x00504506
    c49c:	5f544e49 	svcpl	0x00544e49
    c4a0:	20544553 	subscs	r4, r4, r3, asr r5
    c4a4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c4a8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c4ac:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c4b0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c4b4:	745f3233 	ldrbvc	r3, [pc], #-563	; c4bc <atan+0x2c>
    c4b8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c4bc:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c4c0:	33324330 	teqcc	r2, #48, 6	; 0xc0000000
    c4c4:	00292943 	eoreq	r2, r9, r3, asr #18
    c4c8:	4506d101 	strmi	sp, [r6, #-257]	; 0xfffffeff
    c4cc:	4e495f50 	mcrmi	15, 2, r5, cr9, cr0, {2}
    c4d0:	52505f54 	subspl	r5, r0, #84, 30	; 0x150
    c4d4:	28204f49 	stmdacs	r0!, {r0, r3, r6, r8, r9, sl, fp, lr}
    c4d8:	6f76282a 	svcvs	0x0076282a
    c4dc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    c4e0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    c4e4:	33746e69 	cmncc	r4, #1680	; 0x690
    c4e8:	2a745f32 	bcs	1d241b8 <__mprec_tinytens+0x1cff948>
    c4ec:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    c4f0:	30454646 	subcc	r4, r5, r6, asr #12
    c4f4:	30343243 	eorscc	r3, r4, r3, asr #4
    c4f8:	01002929 	tsteq	r0, r9, lsr #18
    c4fc:	455206d3 	ldrbmi	r0, [r2, #-1747]	; 0xfffff92d
    c500:	5a494c41 	bpl	125f60c <__mprec_tinytens+0x123ad9c>
    c504:	50455f45 	subpl	r5, r5, r5, asr #30
    c508:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    c50c:	616c6f76 	smcvs	50934	; 0xc6f6
    c510:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    c514:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    c518:	5f323374 	svcpl	0x00323374
    c51c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    c520:	46467830 			; <UNDEFINED> instruction: 0x46467830
    c524:	32433045 	subcc	r3, r3, #69	; 0x45
    c528:	29293434 	stmdbcs	r9!, {r2, r4, r5, sl, ip, sp}
    c52c:	06d40100 	ldrbeq	r0, [r4], r0, lsl #2
    c530:	495f5045 	ldmdbmi	pc, {r0, r2, r6, ip, lr}^	; <UNPREDICTABLE>
    c534:	5845444e 	stmdapl	r5, {r1, r2, r3, r6, sl, lr}^
    c538:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    c53c:	616c6f76 	smcvs	50934	; 0xc6f6
    c540:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    c544:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    c548:	5f323374 	svcpl	0x00323374
    c54c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    c550:	46467830 			; <UNDEFINED> instruction: 0x46467830
    c554:	32433045 	subcc	r3, r3, #69	; 0x45
    c558:	29293834 	stmdbcs	r9!, {r2, r4, r5, fp, ip, sp}
    c55c:	06d50100 	ldrbeq	r0, [r5], r0, lsl #2
    c560:	5058414d 	subspl	r4, r8, sp, asr #2
    c564:	454b4341 	strbmi	r4, [fp, #-833]	; 0xfffffcbf
    c568:	49535f54 	ldmdbmi	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    c56c:	2820455a 	stmdacs	r0!, {r1, r3, r4, r6, r8, sl, lr}
    c570:	6f76282a 	svcvs	0x0076282a
    c574:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    c578:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    c57c:	33746e69 	cmncc	r4, #1680	; 0x690
    c580:	2a745f32 	bcs	1d24250 <__mprec_tinytens+0x1cff9e0>
    c584:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    c588:	30454646 	subcc	r4, r5, r6, asr #12
    c58c:	43343243 	teqmi	r4, #805306372	; 0x30000004
    c590:	01002929 	tsteq	r0, r9, lsr #18
    c594:	4d4306d7 	stclmi	6, cr0, [r3, #-860]	; 0xfffffca4
    c598:	4f435f44 	svcmi	0x00435f44
    c59c:	28204544 	stmdacs	r0!, {r2, r6, r8, sl, lr}
    c5a0:	6f76282a 	svcvs	0x0076282a
    c5a4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    c5a8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    c5ac:	33746e69 	cmncc	r4, #1680	; 0x690
    c5b0:	2a745f32 	bcs	1d24280 <__mprec_tinytens+0x1cffa10>
    c5b4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    c5b8:	30454646 	subcc	r4, r5, r6, asr #12
    c5bc:	30313243 	eorscc	r3, r1, r3, asr #4
    c5c0:	01002929 	tsteq	r0, r9, lsr #18
    c5c4:	4d4306d8 	stclmi	6, cr0, [r3, #-864]	; 0xfffffca0
    c5c8:	41445f44 	cmpmi	r4, r4, asr #30
    c5cc:	28204154 	stmdacs	r0!, {r2, r4, r6, r8, lr}
    c5d0:	6f76282a 	svcvs	0x0076282a
    c5d4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    c5d8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    c5dc:	33746e69 	cmncc	r4, #1680	; 0x690
    c5e0:	2a745f32 	bcs	1d242b0 <__mprec_tinytens+0x1cffa40>
    c5e4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    c5e8:	30454646 	subcc	r4, r5, r6, asr #12
    c5ec:	34313243 	ldrtcc	r3, [r1], #-579	; 0xfffffdbd
    c5f0:	01002929 	tsteq	r0, r9, lsr #18
    c5f4:	585206da 	ldmdapl	r2, {r1, r3, r4, r6, r7, r9, sl}^
    c5f8:	5441445f 	strbpl	r4, [r1], #-1119	; 0xfffffba1
    c5fc:	2a282041 	bcs	a14708 <__mprec_tinytens+0x9efe98>
    c600:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; c568 <atan+0xd8>
    c604:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    c608:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    c60c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    c610:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    c614:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    c618:	43304546 	teqmi	r0, #293601280	; 0x11800000
    c61c:	29383132 	ldmdbcs	r8!, {r1, r4, r5, r8, ip, sp}
    c620:	db010029 	blle	4c6cc <__mprec_tinytens+0x27e5c>
    c624:	5f585406 	svcpl	0x00585406
    c628:	41544144 	cmpmi	r4, r4, asr #2
    c62c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    c630:	616c6f76 	smcvs	50934	; 0xc6f6
    c634:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    c638:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    c63c:	5f323374 	svcpl	0x00323374
    c640:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    c644:	46467830 			; <UNDEFINED> instruction: 0x46467830
    c648:	32433045 	subcc	r3, r3, #69	; 0x45
    c64c:	29294331 	stmdbcs	r9!, {r0, r4, r5, r8, r9, lr}
    c650:	06dc0100 	ldrbeq	r0, [ip], r0, lsl #2
    c654:	505f5852 	subspl	r5, pc, r2, asr r8	; <UNPREDICTABLE>
    c658:	474e454c 	strbmi	r4, [lr, -ip, asr #10]
    c65c:	28204854 	stmdacs	r0!, {r2, r4, r6, fp, lr}
    c660:	6f76282a 	svcvs	0x0076282a
    c664:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    c668:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    c66c:	33746e69 	cmncc	r4, #1680	; 0x690
    c670:	2a745f32 	bcs	1d24340 <__mprec_tinytens+0x1cffad0>
    c674:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    c678:	30454646 	subcc	r4, r5, r6, asr #12
    c67c:	30323243 	eorscc	r3, r2, r3, asr #4
    c680:	01002929 	tsteq	r0, r9, lsr #18
    c684:	585406dd 	ldmdapl	r4, {r0, r2, r3, r4, r6, r7, r9, sl}^
    c688:	454c505f 	strbmi	r5, [ip, #-95]	; 0xffffffa1
    c68c:	4854474e 	ldmdami	r4, {r1, r2, r3, r6, r8, r9, sl, lr}^
    c690:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    c694:	616c6f76 	smcvs	50934	; 0xc6f6
    c698:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    c69c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    c6a0:	5f323374 	svcpl	0x00323374
    c6a4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    c6a8:	46467830 			; <UNDEFINED> instruction: 0x46467830
    c6ac:	32433045 	subcc	r3, r3, #69	; 0x45
    c6b0:	29293432 	stmdbcs	r9!, {r1, r4, r5, sl, ip, sp}
    c6b4:	06de0100 	ldrbeq	r0, [lr], r0, lsl #2
    c6b8:	5f425355 	svcpl	0x00425355
    c6bc:	4c525443 	cfldrdmi	mvd5, [r2], {67}	; 0x43
    c6c0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    c6c4:	616c6f76 	smcvs	50934	; 0xc6f6
    c6c8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    c6cc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    c6d0:	5f323374 	svcpl	0x00323374
    c6d4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    c6d8:	46467830 			; <UNDEFINED> instruction: 0x46467830
    c6dc:	32433045 	subcc	r3, r3, #69	; 0x45
    c6e0:	29293832 	stmdbcs	r9!, {r1, r4, r5, fp, ip, sp}
    c6e4:	06e00100 	strbteq	r0, [r0], r0, lsl #2
    c6e8:	5f414d44 	svcpl	0x00414d44
    c6ec:	5f514552 	svcpl	0x00514552
    c6f0:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    c6f4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    c6f8:	616c6f76 	smcvs	50934	; 0xc6f6
    c6fc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    c700:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    c704:	5f323374 	svcpl	0x00323374
    c708:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    c70c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    c710:	32433045 	subcc	r3, r3, #69	; 0x45
    c714:	29293035 	stmdbcs	r9!, {r0, r2, r4, r5, ip, sp}
    c718:	06e10100 	strbteq	r0, [r1], r0, lsl #2
    c71c:	5f414d44 	svcpl	0x00414d44
    c720:	5f514552 	svcpl	0x00514552
    c724:	20524c43 	subscs	r4, r2, r3, asr #24
    c728:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c72c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c730:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c734:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c738:	745f3233 	ldrbvc	r3, [pc], #-563	; c740 <atan+0x2b0>
    c73c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c740:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c744:	35324330 	ldrcc	r4, [r2, #-816]!	; 0xfffffcd0
    c748:	00292934 	eoreq	r2, r9, r4, lsr r9
    c74c:	4406e201 	strmi	lr, [r6], #-513	; 0xfffffdff
    c750:	525f414d 	subspl	r4, pc, #1073741843	; 0x40000013
    c754:	535f5145 	cmppl	pc, #1073741841	; 0x40000011
    c758:	28205445 	stmdacs	r0!, {r0, r2, r6, sl, ip, lr}
    c75c:	6f76282a 	svcvs	0x0076282a
    c760:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    c764:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    c768:	33746e69 	cmncc	r4, #1680	; 0x690
    c76c:	2a745f32 	bcs	1d2443c <__mprec_tinytens+0x1cffbcc>
    c770:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    c774:	30454646 	subcc	r4, r5, r6, asr #12
    c778:	38353243 	ldmdacc	r5!, {r0, r1, r6, r9, ip, sp}
    c77c:	01002929 	tsteq	r0, r9, lsr #18
    c780:	445506e3 	ldrbmi	r0, [r5], #-1763	; 0xfffff91d
    c784:	485f4143 	ldmdami	pc, {r0, r1, r6, r8, lr}^	; <UNPREDICTABLE>
    c788:	20444145 	subcs	r4, r4, r5, asr #2
    c78c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c790:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c794:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c798:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c79c:	745f3233 	ldrbvc	r3, [pc], #-563	; c7a4 <atan+0x314>
    c7a0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c7a4:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c7a8:	38324330 	ldmdacc	r2!, {r4, r5, r8, r9, lr}
    c7ac:	00292930 	eoreq	r2, r9, r0, lsr r9
    c7b0:	4506e401 	strmi	lr, [r6, #-1025]	; 0xfffffbff
    c7b4:	4d445f50 	stclmi	15, cr5, [r4, #-320]	; 0xfffffec0
    c7b8:	54535f41 	ldrbpl	r5, [r3], #-3905	; 0xfffff0bf
    c7bc:	28205441 	stmdacs	r0!, {r0, r6, sl, ip, lr}
    c7c0:	6f76282a 	svcvs	0x0076282a
    c7c4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    c7c8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    c7cc:	33746e69 	cmncc	r4, #1680	; 0x690
    c7d0:	2a745f32 	bcs	1d244a0 <__mprec_tinytens+0x1cffc30>
    c7d4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    c7d8:	30454646 	subcc	r4, r5, r6, asr #12
    c7dc:	34383243 	ldrtcc	r3, [r8], #-579	; 0xfffffdbd
    c7e0:	01002929 	tsteq	r0, r9, lsr #18
    c7e4:	504506e5 	subpl	r0, r5, r5, ror #13
    c7e8:	414d445f 	cmpmi	sp, pc, asr r4
    c7ec:	204e455f 	subcs	r4, lr, pc, asr r5
    c7f0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c7f4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c7f8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c7fc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c800:	745f3233 	ldrbvc	r3, [pc], #-563	; c808 <atan+0x378>
    c804:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c808:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c80c:	38324330 	ldmdacc	r2!, {r4, r5, r8, r9, lr}
    c810:	00292938 	eoreq	r2, r9, r8, lsr r9
    c814:	4506e601 	strmi	lr, [r6, #-1537]	; 0xfffff9ff
    c818:	4d445f50 	stclmi	15, cr5, [r4, #-320]	; 0xfffffec0
    c81c:	49445f41 	stmdbmi	r4, {r0, r6, r8, r9, sl, fp, ip, lr}^
    c820:	2a282053 	bcs	a14974 <__mprec_tinytens+0x9f0104>
    c824:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; c78c <atan+0x2fc>
    c828:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    c82c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    c830:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    c834:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    c838:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    c83c:	43304546 	teqmi	r0, #293601280	; 0x11800000
    c840:	29433832 	stmdbcs	r3, {r1, r4, r5, fp, ip, sp}^
    c844:	e7010029 	str	r0, [r1, -r9, lsr #32]
    c848:	414d4406 	cmpmi	sp, r6, lsl #8
    c84c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    c850:	4154535f 	cmpmi	r4, pc, asr r3
    c854:	2a282054 	bcs	a149ac <__mprec_tinytens+0x9f013c>
    c858:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; c7c0 <atan+0x330>
    c85c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    c860:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    c864:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    c868:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    c86c:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    c870:	43304546 	teqmi	r0, #293601280	; 0x11800000
    c874:	29303932 	ldmdbcs	r0!, {r1, r4, r5, r8, fp, ip, sp}
    c878:	e8010029 	stmda	r1, {r0, r3, r5}
    c87c:	414d4406 	cmpmi	sp, r6, lsl #8
    c880:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    c884:	204e455f 	subcs	r4, lr, pc, asr r5
    c888:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c88c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c890:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c894:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c898:	745f3233 	ldrbvc	r3, [pc], #-563	; c8a0 <atan+0x410>
    c89c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c8a0:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c8a4:	39324330 	ldmdbcc	r2!, {r4, r5, r8, r9, lr}
    c8a8:	00292934 	eoreq	r2, r9, r4, lsr r9
    c8ac:	4506e901 	strmi	lr, [r6, #-2305]	; 0xfffff6ff
    c8b0:	495f544f 	ldmdbmi	pc, {r0, r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    c8b4:	535f544e 	cmppl	pc, #1308622848	; 0x4e000000
    c8b8:	20544154 	subscs	r4, r4, r4, asr r1
    c8bc:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c8c0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c8c4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c8c8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c8cc:	745f3233 	ldrbvc	r3, [pc], #-563	; c8d4 <atan+0x444>
    c8d0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c8d4:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c8d8:	41324330 	teqmi	r2, r0, lsr r3
    c8dc:	00292930 	eoreq	r2, r9, r0, lsr r9
    c8e0:	4506ea01 	strmi	lr, [r6, #-2561]	; 0xfffff5ff
    c8e4:	495f544f 	ldmdbmi	pc, {r0, r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    c8e8:	435f544e 	cmpmi	pc, #1308622848	; 0x4e000000
    c8ec:	2820524c 	stmdacs	r0!, {r2, r3, r6, r9, ip, lr}
    c8f0:	6f76282a 	svcvs	0x0076282a
    c8f4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    c8f8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    c8fc:	33746e69 	cmncc	r4, #1680	; 0x690
    c900:	2a745f32 	bcs	1d245d0 <__mprec_tinytens+0x1cffd60>
    c904:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    c908:	30454646 	subcc	r4, r5, r6, asr #12
    c90c:	34413243 	strbcc	r3, [r1], #-579	; 0xfffffdbd
    c910:	01002929 	tsteq	r0, r9, lsr #18
    c914:	4f4506eb 	svcmi	0x004506eb
    c918:	4e495f54 	mcrmi	15, 2, r5, cr9, cr4, {2}
    c91c:	45535f54 	ldrbmi	r5, [r3, #-3924]	; 0xfffff0ac
    c920:	2a282054 	bcs	a14a78 <__mprec_tinytens+0x9f0208>
    c924:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; c88c <atan+0x3fc>
    c928:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    c92c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    c930:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    c934:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    c938:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    c93c:	43304546 	teqmi	r0, #293601280	; 0x11800000
    c940:	29384132 	ldmdbcs	r8!, {r1, r4, r5, r8, lr}
    c944:	ec010029 	stc	0, cr0, [r1], {41}	; 0x29
    c948:	44444e06 	strbmi	r4, [r4], #-3590	; 0xfffff1fa
    c94c:	5145525f 	cmppl	r5, pc, asr r2
    c950:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    c954:	4154535f 	cmpmi	r4, pc, asr r3
    c958:	2a282054 	bcs	a14ab0 <__mprec_tinytens+0x9f0240>
    c95c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; c8c4 <atan+0x434>
    c960:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    c964:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    c968:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    c96c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    c970:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    c974:	43304546 	teqmi	r0, #293601280	; 0x11800000
    c978:	29434132 	stmdbcs	r3, {r1, r4, r5, r8, lr}^
    c97c:	ed010029 	stc	0, cr0, [r1, #-164]	; 0xffffff5c
    c980:	44444e06 	strbmi	r4, [r4], #-3590	; 0xfffff1fa
    c984:	5145525f 	cmppl	r5, pc, asr r2
    c988:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    c98c:	524c435f 	subpl	r4, ip, #2080374785	; 0x7c000001
    c990:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    c994:	616c6f76 	smcvs	50934	; 0xc6f6
    c998:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    c99c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    c9a0:	5f323374 	svcpl	0x00323374
    c9a4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    c9a8:	46467830 			; <UNDEFINED> instruction: 0x46467830
    c9ac:	32433045 	subcc	r3, r3, #69	; 0x45
    c9b0:	29293042 	stmdbcs	r9!, {r1, r6, ip, sp}
    c9b4:	06ee0100 	strbteq	r0, [lr], r0, lsl #2
    c9b8:	5f44444e 	svcpl	0x0044444e
    c9bc:	5f514552 	svcpl	0x00514552
    c9c0:	5f544e49 	svcpl	0x00544e49
    c9c4:	20544553 	subscs	r4, r4, r3, asr r5
    c9c8:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    c9cc:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    c9d0:	20656c69 	rsbcs	r6, r5, r9, ror #24
    c9d4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    c9d8:	745f3233 	ldrbvc	r3, [pc], #-563	; c9e0 <cbrt+0x98>
    c9dc:	3028292a 	eorcc	r2, r8, sl, lsr #18
    c9e0:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    c9e4:	42324330 	eorsmi	r4, r2, #48, 6	; 0xc0000000
    c9e8:	00292934 	eoreq	r2, r9, r4, lsr r9
    c9ec:	5306ef01 	movwpl	lr, #28417	; 0x6f01
    c9f0:	455f5359 	ldrbmi	r5, [pc, #-857]	; c69f <atan+0x20f>
    c9f4:	495f5252 	ldmdbmi	pc, {r1, r4, r6, r9, ip, lr}^	; <UNPREDICTABLE>
    c9f8:	535f544e 	cmppl	pc, #1308622848	; 0x4e000000
    c9fc:	20544154 	subscs	r4, r4, r4, asr r1
    ca00:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    ca04:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    ca08:	20656c69 	rsbcs	r6, r5, r9, ror #24
    ca0c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    ca10:	745f3233 	ldrbvc	r3, [pc], #-563	; ca18 <cbrt+0xd0>
    ca14:	3028292a 	eorcc	r2, r8, sl, lsr #18
    ca18:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    ca1c:	42324330 	eorsmi	r4, r2, #48, 6	; 0xc0000000
    ca20:	00292938 	eoreq	r2, r9, r8, lsr r9
    ca24:	5306f001 	movwpl	pc, #24577	; 0x6001	; <UNPREDICTABLE>
    ca28:	455f5359 	ldrbmi	r5, [pc, #-857]	; c6d7 <atan+0x247>
    ca2c:	495f5252 	ldmdbmi	pc, {r1, r4, r6, r9, ip, lr}^	; <UNPREDICTABLE>
    ca30:	435f544e 	cmpmi	pc, #1308622848	; 0x4e000000
    ca34:	2820524c 	stmdacs	r0!, {r2, r3, r6, r9, ip, lr}
    ca38:	6f76282a 	svcvs	0x0076282a
    ca3c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    ca40:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    ca44:	33746e69 	cmncc	r4, #1680	; 0x690
    ca48:	2a745f32 	bcs	1d24718 <__mprec_tinytens+0x1cffea8>
    ca4c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    ca50:	30454646 	subcc	r4, r5, r6, asr #12
    ca54:	43423243 	movtmi	r3, #8771	; 0x2243
    ca58:	01002929 	tsteq	r0, r9, lsr #18
    ca5c:	595306f1 	ldmdbpl	r3, {r0, r4, r5, r6, r7, r9, sl}^
    ca60:	52455f53 	subpl	r5, r5, #332	; 0x14c
    ca64:	4e495f52 	mcrmi	15, 2, r5, cr9, cr2, {2}
    ca68:	45535f54 	ldrbmi	r5, [r3, #-3924]	; 0xfffff0ac
    ca6c:	2a282054 	bcs	a14bc4 <__mprec_tinytens+0x9f0354>
    ca70:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; c9d8 <cbrt+0x90>
    ca74:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    ca78:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    ca7c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    ca80:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    ca84:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    ca88:	43304546 	teqmi	r0, #293601280	; 0x11800000
    ca8c:	29304332 	ldmdbcs	r0!, {r1, r4, r5, r8, r9, lr}
    ca90:	f3010029 	vhadd.u8	d0, d1, d25
    ca94:	5f434806 	svcpl	0x00434806
    ca98:	49564552 	ldmdbmi	r6, {r1, r4, r6, r8, sl, lr}^
    ca9c:	4e4f4953 			; <UNDEFINED> instruction: 0x4e4f4953
    caa0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    caa4:	616c6f76 	smcvs	50934	; 0xc6f6
    caa8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    caac:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    cab0:	5f323374 	svcpl	0x00323374
    cab4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    cab8:	46467830 			; <UNDEFINED> instruction: 0x46467830
    cabc:	30433045 	subcc	r3, r3, r5, asr #32
    cac0:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    cac4:	06f40100 	ldrbteq	r0, [r4], r0, lsl #2
    cac8:	435f4348 	cmpmi	pc, #72, 6	; 0x20000001
    cacc:	52544e4f 	subspl	r4, r4, #1264	; 0x4f0
    cad0:	28204c4f 	stmdacs	r0!, {r0, r1, r2, r3, r6, sl, fp, lr}
    cad4:	6f76282a 	svcvs	0x0076282a
    cad8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    cadc:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    cae0:	33746e69 	cmncc	r4, #1680	; 0x690
    cae4:	2a745f32 	bcs	1d247b4 <__mprec_tinytens+0x1cfff44>
    cae8:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    caec:	30454646 	subcc	r4, r5, r6, asr #12
    caf0:	34303043 	ldrtcc	r3, [r0], #-67	; 0xffffffbd
    caf4:	01002929 	tsteq	r0, r9, lsr #18
    caf8:	434806f5 	movtmi	r0, #34549	; 0x86f5
    cafc:	444d435f 	strbmi	r4, [sp], #-863	; 0xfffffca1
    cb00:	4154535f 	cmpmi	r4, pc, asr r3
    cb04:	2a282054 	bcs	a14c5c <__mprec_tinytens+0x9f03ec>
    cb08:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; ca70 <cbrt+0x128>
    cb0c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    cb10:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    cb14:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    cb18:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    cb1c:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    cb20:	43304546 	teqmi	r0, #293601280	; 0x11800000
    cb24:	29383030 	ldmdbcs	r8!, {r4, r5, ip, sp}
    cb28:	f6010029 			; <UNDEFINED> instruction: 0xf6010029
    cb2c:	5f434806 	svcpl	0x00434806
    cb30:	5f544e49 	svcpl	0x00544e49
    cb34:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    cb38:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    cb3c:	616c6f76 	smcvs	50934	; 0xc6f6
    cb40:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    cb44:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    cb48:	5f323374 	svcpl	0x00323374
    cb4c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    cb50:	46467830 			; <UNDEFINED> instruction: 0x46467830
    cb54:	30433045 	subcc	r3, r3, r5, asr #32
    cb58:	29294330 	stmdbcs	r9!, {r4, r5, r8, r9, lr}
    cb5c:	06f70100 	ldrbteq	r0, [r7], r0, lsl #2
    cb60:	495f4348 	ldmdbmi	pc, {r3, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    cb64:	455f544e 	ldrbmi	r5, [pc, #-1102]	; c71e <atan+0x28e>
    cb68:	2a28204e 	bcs	a14ca8 <__mprec_tinytens+0x9f0438>
    cb6c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; cad4 <cbrt+0x18c>
    cb70:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    cb74:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    cb78:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    cb7c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    cb80:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    cb84:	43304546 	teqmi	r0, #293601280	; 0x11800000
    cb88:	29303130 	ldmdbcs	r0!, {r4, r5, r8, ip, sp}
    cb8c:	f8010029 			; <UNDEFINED> instruction: 0xf8010029
    cb90:	5f434806 	svcpl	0x00434806
    cb94:	5f544e49 	svcpl	0x00544e49
    cb98:	20534944 	subscs	r4, r3, r4, asr #18
    cb9c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    cba0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    cba4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    cba8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    cbac:	745f3233 	ldrbvc	r3, [pc], #-563	; cbb4 <ceil+0x34>
    cbb0:	3028292a 	eorcc	r2, r8, sl, lsr #18
    cbb4:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    cbb8:	31304330 	teqcc	r0, r0, lsr r3
    cbbc:	00292934 	eoreq	r2, r9, r4, lsr r9
    cbc0:	4806f901 	stmdami	r6, {r0, r8, fp, ip, sp, lr, pc}
    cbc4:	43485f43 	movtmi	r5, #36675	; 0x8f43
    cbc8:	28204143 	stmdacs	r0!, {r0, r1, r6, r8, lr}
    cbcc:	6f76282a 	svcvs	0x0076282a
    cbd0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    cbd4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    cbd8:	33746e69 	cmncc	r4, #1680	; 0x690
    cbdc:	2a745f32 	bcs	1d248ac <__mprec_tinytens+0x1d0003c>
    cbe0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    cbe4:	30454646 	subcc	r4, r5, r6, asr #12
    cbe8:	38313043 	ldmdacc	r1!, {r0, r1, r6, ip, sp}
    cbec:	01002929 	tsteq	r0, r9, lsr #18
    cbf0:	434806fa 	movtmi	r0, #34554	; 0x86fa
    cbf4:	5245505f 	subpl	r5, r5, #95	; 0x5f
    cbf8:	5f444f49 	svcpl	0x00444f49
    cbfc:	5f525543 	svcpl	0x00525543
    cc00:	28204445 	stmdacs	r0!, {r0, r2, r6, sl, lr}
    cc04:	6f76282a 	svcvs	0x0076282a
    cc08:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    cc0c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    cc10:	33746e69 	cmncc	r4, #1680	; 0x690
    cc14:	2a745f32 	bcs	1d248e4 <__mprec_tinytens+0x1d00074>
    cc18:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    cc1c:	30454646 	subcc	r4, r5, r6, asr #12
    cc20:	43313043 	teqmi	r1, #67	; 0x43
    cc24:	01002929 	tsteq	r0, r9, lsr #18
    cc28:	434806fb 	movtmi	r0, #34555	; 0x86fb
    cc2c:	5254435f 	subspl	r4, r4, #2080374785	; 0x7c000001
    cc30:	45485f4c 	strbmi	r5, [r8, #-3916]	; 0xfffff0b4
    cc34:	455f4441 	ldrbmi	r4, [pc, #-1089]	; c7fb <atan+0x36b>
    cc38:	2a282044 	bcs	a14d50 <__mprec_tinytens+0x9f04e0>
    cc3c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; cba4 <ceil+0x24>
    cc40:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    cc44:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    cc48:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    cc4c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    cc50:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    cc54:	43304546 	teqmi	r0, #293601280	; 0x11800000
    cc58:	29303230 	ldmdbcs	r0!, {r4, r5, r9, ip, sp}
    cc5c:	fc010029 	stc2	0, cr0, [r1], {41}	; 0x29
    cc60:	5f434806 	svcpl	0x00434806
    cc64:	4c525443 	cfldrdmi	mvd5, [r2], {67}	; 0x43
    cc68:	5255435f 	subspl	r4, r5, #2080374785	; 0x7c000001
    cc6c:	2044455f 	subcs	r4, r4, pc, asr r5
    cc70:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    cc74:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    cc78:	20656c69 	rsbcs	r6, r5, r9, ror #24
    cc7c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    cc80:	745f3233 	ldrbvc	r3, [pc], #-563	; cc88 <ceil+0x108>
    cc84:	3028292a 	eorcc	r2, r8, sl, lsr #18
    cc88:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    cc8c:	32304330 	eorscc	r4, r0, #48, 6	; 0xc0000000
    cc90:	00292934 	eoreq	r2, r9, r4, lsr r9
    cc94:	4806fd01 	stmdami	r6, {r0, r8, sl, fp, ip, sp, lr, pc}
    cc98:	55425f43 	strbpl	r5, [r2, #-3907]	; 0xfffff0bd
    cc9c:	485f4b4c 	ldmdami	pc, {r2, r3, r6, r8, r9, fp, lr}^	; <UNPREDICTABLE>
    cca0:	5f444145 	svcpl	0x00444145
    cca4:	28204445 	stmdacs	r0!, {r0, r2, r6, sl, lr}
    cca8:	6f76282a 	svcvs	0x0076282a
    ccac:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    ccb0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    ccb4:	33746e69 	cmncc	r4, #1680	; 0x690
    ccb8:	2a745f32 	bcs	1d24988 <__mprec_tinytens+0x1d00118>
    ccbc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    ccc0:	30454646 	subcc	r4, r5, r6, asr #12
    ccc4:	38323043 	ldmdacc	r2!, {r0, r1, r6, ip, sp}
    ccc8:	01002929 	tsteq	r0, r9, lsr #18
    cccc:	434806fe 	movtmi	r0, #34558	; 0x86fe
    ccd0:	4c55425f 	lfmmi	f4, 2, [r5], {95}	; 0x5f
    ccd4:	55435f4b 	strbpl	r5, [r3, #-3915]	; 0xfffff0b5
    ccd8:	44455f52 	strbmi	r5, [r5], #-3922	; 0xfffff0ae
    ccdc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    cce0:	616c6f76 	smcvs	50934	; 0xc6f6
    cce4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    cce8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    ccec:	5f323374 	svcpl	0x00323374
    ccf0:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    ccf4:	46467830 			; <UNDEFINED> instruction: 0x46467830
    ccf8:	30433045 	subcc	r3, r3, r5, asr #32
    ccfc:	29294332 	stmdbcs	r9!, {r1, r4, r5, r8, r9, lr}
    cd00:	06ff0100 	ldrbteq	r0, [pc], r0, lsl #2
    cd04:	445f4348 	ldrbmi	r4, [pc], #-840	; cd0c <ceil+0x18c>
    cd08:	5f454e4f 	svcpl	0x00454e4f
    cd0c:	44414548 	strbmi	r4, [r1], #-1352	; 0xfffffab8
    cd10:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    cd14:	616c6f76 	smcvs	50934	; 0xc6f6
    cd18:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    cd1c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    cd20:	5f323374 	svcpl	0x00323374
    cd24:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    cd28:	46467830 			; <UNDEFINED> instruction: 0x46467830
    cd2c:	30433045 	subcc	r3, r3, r5, asr #32
    cd30:	29293033 	stmdbcs	r9!, {r0, r1, r4, r5, ip, sp}
    cd34:	07800100 	streq	r0, [r0, r0, lsl #2]
    cd38:	465f4348 	ldrbmi	r4, [pc], -r8, asr #6
    cd3c:	4e495f4d 	cdpmi	15, 4, cr5, cr9, cr13, {2}
    cd40:	56524554 			; <UNDEFINED> instruction: 0x56524554
    cd44:	28204c41 	stmdacs	r0!, {r0, r6, sl, fp, lr}
    cd48:	6f76282a 	svcvs	0x0076282a
    cd4c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    cd50:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    cd54:	33746e69 	cmncc	r4, #1680	; 0x690
    cd58:	2a745f32 	bcs	1d24a28 <__mprec_tinytens+0x1d001b8>
    cd5c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    cd60:	30454646 	subcc	r4, r5, r6, asr #12
    cd64:	34333043 	ldrtcc	r3, [r3], #-67	; 0xffffffbd
    cd68:	01002929 	tsteq	r0, r9, lsr #18
    cd6c:	43480781 	movtmi	r0, #34689	; 0x8781
    cd70:	5f4d465f 	svcpl	0x004d465f
    cd74:	414d4552 	cmpmi	sp, r2, asr r5
    cd78:	4e494e49 	cdpmi	14, 4, cr4, cr9, cr9, {2}
    cd7c:	2a282047 	bcs	a14ea0 <__mprec_tinytens+0x9f0630>
    cd80:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; cce8 <ceil+0x168>
    cd84:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    cd88:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    cd8c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    cd90:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    cd94:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    cd98:	43304546 	teqmi	r0, #293601280	; 0x11800000
    cd9c:	29383330 	ldmdbcs	r8!, {r4, r5, r8, r9, ip, sp}
    cda0:	82010029 	andhi	r0, r1, #41	; 0x29
    cda4:	5f434807 	svcpl	0x00434807
    cda8:	4e5f4d46 	cdpmi	13, 5, cr4, cr15, cr6, {2}
    cdac:	45424d55 	strbmi	r4, [r2, #-3413]	; 0xfffff2ab
    cdb0:	2a282052 	bcs	a14f00 <__mprec_tinytens+0x9f0690>
    cdb4:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; cd1c <cos>
    cdb8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    cdbc:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    cdc0:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    cdc4:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    cdc8:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    cdcc:	43304546 	teqmi	r0, #293601280	; 0x11800000
    cdd0:	29433330 	stmdbcs	r3, {r4, r5, r8, r9, ip, sp}^
    cdd4:	83010029 	movwhi	r0, #4137	; 0x1029
    cdd8:	5f434807 	svcpl	0x00434807
    cddc:	49524550 	ldmdbmi	r2, {r4, r6, r8, sl, lr}^
    cde0:	535f444f 	cmppl	pc, #1325400064	; 0x4f000000
    cde4:	54524154 	ldrbpl	r4, [r2], #-340	; 0xfffffeac
    cde8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    cdec:	616c6f76 	smcvs	50934	; 0xc6f6
    cdf0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    cdf4:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    cdf8:	5f323374 	svcpl	0x00323374
    cdfc:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    ce00:	46467830 			; <UNDEFINED> instruction: 0x46467830
    ce04:	30433045 	subcc	r3, r3, r5, asr #32
    ce08:	29293034 	stmdbcs	r9!, {r2, r4, r5, ip, sp}
    ce0c:	07840100 	streq	r0, [r4, r0, lsl #2]
    ce10:	4c5f4348 	mrrcmi	3, 4, r4, pc, cr8	; <UNPREDICTABLE>
    ce14:	48545f53 	ldmdami	r4, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    ce18:	444c4852 	strbmi	r4, [ip], #-2130	; 0xfffff7ae
    ce1c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    ce20:	616c6f76 	smcvs	50934	; 0xc6f6
    ce24:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    ce28:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    ce2c:	5f323374 	svcpl	0x00323374
    ce30:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    ce34:	46467830 			; <UNDEFINED> instruction: 0x46467830
    ce38:	30433045 	subcc	r3, r3, r5, asr #32
    ce3c:	29293434 	stmdbcs	r9!, {r2, r4, r5, sl, ip, sp}
    ce40:	07850100 	streq	r0, [r5, r0, lsl #2]
    ce44:	525f4348 	subspl	r4, pc, #72, 6	; 0x20000001
    ce48:	45445f48 	strbmi	r5, [r4, #-3912]	; 0xfffff0b8
    ce4c:	20414353 	subcs	r4, r1, r3, asr r3
    ce50:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    ce54:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    ce58:	20656c69 	rsbcs	r6, r5, r9, ror #24
    ce5c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    ce60:	745f3233 	ldrbvc	r3, [pc], #-563	; ce68 <erf+0x50>
    ce64:	3028292a 	eorcc	r2, r8, sl, lsr #18
    ce68:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    ce6c:	34304330 	ldrtcc	r4, [r0], #-816	; 0xfffffcd0
    ce70:	00292938 	eoreq	r2, r9, r8, lsr r9
    ce74:	48078601 	stmdami	r7, {r0, r9, sl, pc}
    ce78:	48525f43 	ldmdami	r2, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    ce7c:	5345445f 	movtpl	r4, #21599	; 0x545f
    ce80:	28204243 	stmdacs	r0!, {r0, r1, r6, r9, lr}
    ce84:	6f76282a 	svcvs	0x0076282a
    ce88:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    ce8c:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    ce90:	33746e69 	cmncc	r4, #1680	; 0x690
    ce94:	2a745f32 	bcs	1d24b64 <__mprec_tinytens+0x1d002f4>
    ce98:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    ce9c:	30454646 	subcc	r4, r5, r6, asr #12
    cea0:	43343043 	teqmi	r4, #67	; 0x43
    cea4:	01002929 	tsteq	r0, r9, lsr #18
    cea8:	43480787 	movtmi	r0, #34695	; 0x8787
    ceac:	5f48525f 	svcpl	0x0048525f
    ceb0:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    ceb4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    ceb8:	616c6f76 	smcvs	50934	; 0xc6f6
    cebc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    cec0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    cec4:	5f323374 	svcpl	0x00323374
    cec8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    cecc:	46467830 			; <UNDEFINED> instruction: 0x46467830
    ced0:	30433045 	subcc	r3, r3, r5, asr #32
    ced4:	29293035 	stmdbcs	r9!, {r0, r2, r4, r5, ip, sp}
    ced8:	07880100 	streq	r0, [r8, r0, lsl #2]
    cedc:	525f4348 	subspl	r4, pc, #72, 6	; 0x20000001
    cee0:	4f505f48 	svcmi	0x00505f48
    cee4:	535f5452 	cmppl	pc, #1375731712	; 0x52000000
    cee8:	31544154 	cmpcc	r4, r4, asr r1
    ceec:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    cef0:	616c6f76 	smcvs	50934	; 0xc6f6
    cef4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    cef8:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    cefc:	5f323374 	svcpl	0x00323374
    cf00:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    cf04:	46467830 			; <UNDEFINED> instruction: 0x46467830
    cf08:	30433045 	subcc	r3, r3, r5, asr #32
    cf0c:	29293435 	stmdbcs	r9!, {r0, r2, r4, r5, sl, ip, sp}
    cf10:	07890100 	streq	r0, [r9, r0, lsl #2]
    cf14:	525f4348 	subspl	r4, pc, #72, 6	; 0x20000001
    cf18:	4f505f48 	svcmi	0x00505f48
    cf1c:	535f5452 	cmppl	pc, #1375731712	; 0x52000000
    cf20:	32544154 	subscc	r4, r4, #84, 2
    cf24:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    cf28:	616c6f76 	smcvs	50934	; 0xc6f6
    cf2c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    cf30:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    cf34:	5f323374 	svcpl	0x00323374
    cf38:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    cf3c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    cf40:	30433045 	subcc	r3, r3, r5, asr #32
    cf44:	29293835 	stmdbcs	r9!, {r0, r2, r4, r5, fp, ip, sp}
    cf48:	078b0100 	streq	r0, [fp, r0, lsl #2]
    cf4c:	5f47544f 	svcpl	0x0047544f
    cf50:	5f544e49 	svcpl	0x00544e49
    cf54:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    cf58:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    cf5c:	616c6f76 	smcvs	50934	; 0xc6f6
    cf60:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    cf64:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    cf68:	5f323374 	svcpl	0x00323374
    cf6c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    cf70:	46467830 			; <UNDEFINED> instruction: 0x46467830
    cf74:	31433045 	cmpcc	r3, r5, asr #32
    cf78:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    cf7c:	078c0100 	streq	r0, [ip, r0, lsl #2]
    cf80:	5f47544f 	svcpl	0x0047544f
    cf84:	5f544e49 	svcpl	0x00544e49
    cf88:	28204e45 	stmdacs	r0!, {r0, r2, r6, r9, sl, fp, lr}
    cf8c:	6f76282a 	svcvs	0x0076282a
    cf90:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    cf94:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    cf98:	33746e69 	cmncc	r4, #1680	; 0x690
    cf9c:	2a745f32 	bcs	1d24c6c <__mprec_tinytens+0x1d003fc>
    cfa0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    cfa4:	30454646 	subcc	r4, r5, r6, asr #12
    cfa8:	34303143 	ldrtcc	r3, [r0], #-323	; 0xfffffebd
    cfac:	01002929 	tsteq	r0, r9, lsr #18
    cfb0:	544f078d 	strbpl	r0, [pc], #-1933	; cfb8 <erf+0x1a0>
    cfb4:	4e495f47 	cdpmi	15, 4, cr5, cr9, cr7, {2}
    cfb8:	45535f54 	ldrbmi	r5, [r3, #-3924]	; 0xfffff0ac
    cfbc:	2a282054 	bcs	a15114 <__mprec_tinytens+0x9f08a4>
    cfc0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; cf28 <erf+0x110>
    cfc4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    cfc8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    cfcc:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    cfd0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    cfd4:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    cfd8:	43304546 	teqmi	r0, #293601280	; 0x11800000
    cfdc:	29383031 	ldmdbcs	r8!, {r0, r4, r5, ip, sp}
    cfe0:	8e010029 	cdphi	0, 0, cr0, cr1, cr9, {1}
    cfe4:	47544f07 	ldrbmi	r4, [r4, -r7, lsl #30]
    cfe8:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    cfec:	524c435f 	subpl	r4, ip, #2080374785	; 0x7c000001
    cff0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    cff4:	616c6f76 	smcvs	50934	; 0xc6f6
    cff8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    cffc:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    d000:	5f323374 	svcpl	0x00323374
    d004:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    d008:	46467830 			; <UNDEFINED> instruction: 0x46467830
    d00c:	31433045 	cmpcc	r3, r5, asr #32
    d010:	29294330 	stmdbcs	r9!, {r4, r5, r8, r9, lr}
    d014:	078f0100 	streq	r0, [pc, r0, lsl #2]
    d018:	5f47544f 	svcpl	0x0047544f
    d01c:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    d020:	5254435f 	subspl	r4, r4, #2080374785	; 0x7c000001
    d024:	2a28204c 	bcs	a1515c <__mprec_tinytens+0x9f08ec>
    d028:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; cf90 <erf+0x178>
    d02c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    d030:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    d034:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    d038:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    d03c:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    d040:	43304546 	teqmi	r0, #293601280	; 0x11800000
    d044:	29303131 	ldmdbcs	r0!, {r0, r4, r5, r8, ip, sp}
    d048:	90010029 	andls	r0, r1, r9, lsr #32
    d04c:	47544f07 	ldrbmi	r4, [r4, -r7, lsl #30]
    d050:	4d49545f 	cfstrdmi	mvd5, [r9, #-380]	; 0xfffffe84
    d054:	28205245 	stmdacs	r0!, {r0, r2, r6, r9, ip, lr}
    d058:	6f76282a 	svcvs	0x0076282a
    d05c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d060:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d064:	33746e69 	cmncc	r4, #1680	; 0x690
    d068:	2a745f32 	bcs	1d24d38 <__mprec_tinytens+0x1d004c8>
    d06c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d070:	30454646 	subcc	r4, r5, r6, asr #12
    d074:	34313143 	ldrtcc	r3, [r1], #-323	; 0xfffffebd
    d078:	01002929 	tsteq	r0, r9, lsr #18
    d07c:	544f0792 	strbpl	r0, [pc], #-1938	; d084 <erf+0x26c>
    d080:	32495f47 	subcc	r5, r9, #284	; 0x11c
    d084:	58525f43 	ldmdapl	r2, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    d088:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    d08c:	616c6f76 	smcvs	50934	; 0xc6f6
    d090:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    d094:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    d098:	5f323374 	svcpl	0x00323374
    d09c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    d0a0:	46467830 			; <UNDEFINED> instruction: 0x46467830
    d0a4:	33433045 	movtcc	r3, #12357	; 0x3045
    d0a8:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    d0ac:	07930100 	ldreq	r0, [r3, r0, lsl #2]
    d0b0:	5f47544f 	svcpl	0x0047544f
    d0b4:	5f433249 	svcpl	0x00433249
    d0b8:	28205854 	stmdacs	r0!, {r2, r4, r6, fp, ip, lr}
    d0bc:	6f76282a 	svcvs	0x0076282a
    d0c0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d0c4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d0c8:	33746e69 	cmncc	r4, #1680	; 0x690
    d0cc:	2a745f32 	bcs	1d24d9c <__mprec_tinytens+0x1d0052c>
    d0d0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d0d4:	30454646 	subcc	r4, r5, r6, asr #12
    d0d8:	30303343 	eorscc	r3, r0, r3, asr #6
    d0dc:	01002929 	tsteq	r0, r9, lsr #18
    d0e0:	544f0794 	strbpl	r0, [pc], #-1940	; d0e8 <erf+0x2d0>
    d0e4:	32495f47 	subcc	r5, r9, #284	; 0x11c
    d0e8:	54535f43 	ldrbpl	r5, [r3], #-3907	; 0xfffff0bd
    d0ec:	2a282053 	bcs	a15240 <__mprec_tinytens+0x9f09d0>
    d0f0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; d058 <erf+0x240>
    d0f4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    d0f8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    d0fc:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    d100:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    d104:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    d108:	43304546 	teqmi	r0, #293601280	; 0x11800000
    d10c:	29343033 	ldmdbcs	r4!, {r0, r1, r4, r5, ip, sp}
    d110:	95010029 	strls	r0, [r1, #-41]	; 0xffffffd7
    d114:	47544f07 	ldrbmi	r4, [r4, -r7, lsl #30]
    d118:	4332495f 	teqmi	r2, #1556480	; 0x17c000
    d11c:	4c54435f 	mrrcmi	3, 5, r4, r4, cr15	; <UNPREDICTABLE>
    d120:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    d124:	616c6f76 	smcvs	50934	; 0xc6f6
    d128:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    d12c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    d130:	5f323374 	svcpl	0x00323374
    d134:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    d138:	46467830 			; <UNDEFINED> instruction: 0x46467830
    d13c:	33433045 	movtcc	r3, #12357	; 0x3045
    d140:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    d144:	07960100 	ldreq	r0, [r6, r0, lsl #2]
    d148:	5f47544f 	svcpl	0x0047544f
    d14c:	5f433249 	svcpl	0x00433249
    d150:	484b4c43 	stmdami	fp, {r0, r1, r6, sl, fp, lr}^
    d154:	2a282049 	bcs	a15280 <__mprec_tinytens+0x9f0a10>
    d158:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; d0c0 <erf+0x2a8>
    d15c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    d160:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    d164:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    d168:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    d16c:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    d170:	43304546 	teqmi	r0, #293601280	; 0x11800000
    d174:	29433033 	stmdbcs	r3, {r0, r1, r4, r5, ip, sp}^
    d178:	97010029 	strls	r0, [r1, -r9, lsr #32]
    d17c:	47544f07 	ldrbmi	r4, [r4, -r7, lsl #30]
    d180:	4332495f 	teqmi	r2, #1556480	; 0x17c000
    d184:	4b4c435f 	blmi	131df08 <__mprec_tinytens+0x12f9698>
    d188:	28204f4c 	stmdacs	r0!, {r2, r3, r6, r8, r9, sl, fp, lr}
    d18c:	6f76282a 	svcvs	0x0076282a
    d190:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d194:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d198:	33746e69 	cmncc	r4, #1680	; 0x690
    d19c:	2a745f32 	bcs	1d24e6c <__mprec_tinytens+0x1d005fc>
    d1a0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d1a4:	30454646 	subcc	r4, r5, r6, asr #12
    d1a8:	30313343 	eorscc	r3, r1, r3, asr #6
    d1ac:	01002929 	tsteq	r0, r9, lsr #18
    d1b0:	544f0799 	strbpl	r0, [pc], #-1945	; d1b8 <erf+0x3a0>
    d1b4:	4c435f47 	mcrrmi	15, 4, r5, r3, cr7
    d1b8:	54435f4b 	strbpl	r5, [r3], #-3915	; 0xfffff0b5
    d1bc:	28204c52 	stmdacs	r0!, {r1, r4, r6, sl, fp, lr}
    d1c0:	6f76282a 	svcvs	0x0076282a
    d1c4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d1c8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d1cc:	33746e69 	cmncc	r4, #1680	; 0x690
    d1d0:	2a745f32 	bcs	1d24ea0 <__mprec_tinytens+0x1d00630>
    d1d4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d1d8:	30454646 	subcc	r4, r5, r6, asr #12
    d1dc:	34464643 	strbcc	r4, [r6], #-1603	; 0xfffff9bd
    d1e0:	01002929 	tsteq	r0, r9, lsr #18
    d1e4:	544f079a 	strbpl	r0, [pc], #-1946	; d1ec <erf+0x3d4>
    d1e8:	4c435f47 	mcrrmi	15, 4, r5, r3, cr7
    d1ec:	54535f4b 	ldrbpl	r5, [r3], #-3915	; 0xfffff0b5
    d1f0:	28205441 	stmdacs	r0!, {r0, r6, sl, ip, lr}
    d1f4:	6f76282a 	svcvs	0x0076282a
    d1f8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d1fc:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d200:	33746e69 	cmncc	r4, #1680	; 0x690
    d204:	2a745f32 	bcs	1d24ed4 <__mprec_tinytens+0x1d00664>
    d208:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d20c:	30454646 	subcc	r4, r5, r6, asr #12
    d210:	38464643 	stmdacc	r6, {r0, r1, r6, r9, sl, lr}^
    d214:	01002929 	tsteq	r0, r9, lsr #18
    d218:	5355079c 	cmppl	r5, #156, 14	; 0x2700000
    d21c:	726f5042 	rsbvc	r5, pc, #66	; 0x42
    d220:	6c655374 	stclvs	3, cr5, [r5], #-464	; 0xfffffe30
    d224:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    d228:	616c6f76 	smcvs	50934	; 0xc6f6
    d22c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    d230:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    d234:	5f323374 	svcpl	0x00323374
    d238:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    d23c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    d240:	31433045 	cmpcc	r3, r5, asr #32
    d244:	29293031 	stmdbcs	r9!, {r0, r4, r5, ip, sp}
    d248:	079d0100 	ldreq	r0, [sp, r0, lsl #2]
    d24c:	43425355 	movtmi	r5, #9045	; 0x2355
    d250:	74436b6c 	strbvc	r6, [r3], #-2924	; 0xfffff494
    d254:	28206c72 	stmdacs	r0!, {r1, r4, r5, r6, sl, fp, sp, lr}
    d258:	6f76282a 	svcvs	0x0076282a
    d25c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d260:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d264:	33746e69 	cmncc	r4, #1680	; 0x690
    d268:	2a745f32 	bcs	1d24f38 <__mprec_tinytens+0x1d006c8>
    d26c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d270:	30454646 	subcc	r4, r5, r6, asr #12
    d274:	34464643 	strbcc	r4, [r6], #-1603	; 0xfffff9bd
    d278:	01002929 	tsteq	r0, r9, lsr #18
    d27c:	5355079e 	cmppl	r5, #41418752	; 0x2780000
    d280:	6b6c4342 	blvs	1b1df90 <__mprec_tinytens+0x1af9720>
    d284:	28207453 	stmdacs	r0!, {r0, r1, r4, r6, sl, ip, sp, lr}
    d288:	6f76282a 	svcvs	0x0076282a
    d28c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d290:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d294:	33746e69 	cmncc	r4, #1680	; 0x690
    d298:	2a745f32 	bcs	1d24f68 <__mprec_tinytens+0x1d006f8>
    d29c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d2a0:	30454646 	subcc	r4, r5, r6, asr #12
    d2a4:	38464643 	stmdacc	r6, {r0, r1, r6, r9, sl, lr}^
    d2a8:	01002929 	tsteq	r0, r9, lsr #18
    d2ac:	414d07a0 	smlaltbmi	r0, sp, r0, r7
    d2b0:	414d5f43 	cmpmi	sp, r3, asr #30
    d2b4:	28203143 	stmdacs	r0!, {r0, r1, r6, r8, ip, sp}
    d2b8:	6f76282a 	svcvs	0x0076282a
    d2bc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d2c0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d2c4:	33746e69 	cmncc	r4, #1680	; 0x690
    d2c8:	2a745f32 	bcs	1d24f98 <__mprec_tinytens+0x1d00728>
    d2cc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d2d0:	30454646 	subcc	r4, r5, r6, asr #12
    d2d4:	30303030 	eorscc	r3, r0, r0, lsr r0
    d2d8:	01002929 	tsteq	r0, r9, lsr #18
    d2dc:	414d07a1 	smlaltbmi	r0, sp, r1, r7
    d2e0:	414d5f43 	cmpmi	sp, r3, asr #30
    d2e4:	28203243 	stmdacs	r0!, {r0, r1, r6, r9, ip, sp}
    d2e8:	6f76282a 	svcvs	0x0076282a
    d2ec:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d2f0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d2f4:	33746e69 	cmncc	r4, #1680	; 0x690
    d2f8:	2a745f32 	bcs	1d24fc8 <__mprec_tinytens+0x1d00758>
    d2fc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d300:	30454646 	subcc	r4, r5, r6, asr #12
    d304:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    d308:	01002929 	tsteq	r0, r9, lsr #18
    d30c:	414d07a2 	smlaltbmi	r0, sp, r2, r7
    d310:	50495f43 	subpl	r5, r9, r3, asr #30
    d314:	28205447 	stmdacs	r0!, {r0, r1, r2, r6, sl, ip, lr}
    d318:	6f76282a 	svcvs	0x0076282a
    d31c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d320:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d324:	33746e69 	cmncc	r4, #1680	; 0x690
    d328:	2a745f32 	bcs	1d24ff8 <__mprec_tinytens+0x1d00788>
    d32c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d330:	30454646 	subcc	r4, r5, r6, asr #12
    d334:	38303030 	ldmdacc	r0!, {r4, r5, ip, sp}
    d338:	01002929 	tsteq	r0, r9, lsr #18
    d33c:	414d07a3 	smlaltbmi	r0, sp, r3, r7
    d340:	50495f43 	subpl	r5, r9, r3, asr #30
    d344:	28205247 	stmdacs	r0!, {r0, r1, r2, r6, r9, ip, lr}
    d348:	6f76282a 	svcvs	0x0076282a
    d34c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d350:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d354:	33746e69 	cmncc	r4, #1680	; 0x690
    d358:	2a745f32 	bcs	1d25028 <__mprec_tinytens+0x1d007b8>
    d35c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d360:	30454646 	subcc	r4, r5, r6, asr #12
    d364:	43303030 	teqmi	r0, #48	; 0x30
    d368:	01002929 	tsteq	r0, r9, lsr #18
    d36c:	414d07a4 	smlaltbmi	r0, sp, r4, r7
    d370:	4c435f43 	mcrrmi	15, 4, r5, r3, cr3
    d374:	28205452 	stmdacs	r0!, {r1, r4, r6, sl, ip, lr}
    d378:	6f76282a 	svcvs	0x0076282a
    d37c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d380:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d384:	33746e69 	cmncc	r4, #1680	; 0x690
    d388:	2a745f32 	bcs	1d25058 <__mprec_tinytens+0x1d007e8>
    d38c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d390:	30454646 	subcc	r4, r5, r6, asr #12
    d394:	30313030 	eorscc	r3, r1, r0, lsr r0
    d398:	01002929 	tsteq	r0, r9, lsr #18
    d39c:	414d07a5 	smlaltbmi	r0, sp, r5, r7
    d3a0:	414d5f43 	cmpmi	sp, r3, asr #30
    d3a4:	28204658 	stmdacs	r0!, {r3, r4, r6, r9, sl, lr}
    d3a8:	6f76282a 	svcvs	0x0076282a
    d3ac:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d3b0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d3b4:	33746e69 	cmncc	r4, #1680	; 0x690
    d3b8:	2a745f32 	bcs	1d25088 <__mprec_tinytens+0x1d00818>
    d3bc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d3c0:	30454646 	subcc	r4, r5, r6, asr #12
    d3c4:	34313030 	ldrtcc	r3, [r1], #-48	; 0xffffffd0
    d3c8:	01002929 	tsteq	r0, r9, lsr #18
    d3cc:	414d07a6 	smlaltbmi	r0, sp, r6, r7
    d3d0:	55535f43 	ldrbpl	r5, [r3, #-3907]	; 0xfffff0bd
    d3d4:	28205050 	stmdacs	r0!, {r4, r6, ip, lr}
    d3d8:	6f76282a 	svcvs	0x0076282a
    d3dc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d3e0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d3e4:	33746e69 	cmncc	r4, #1680	; 0x690
    d3e8:	2a745f32 	bcs	1d250b8 <__mprec_tinytens+0x1d00848>
    d3ec:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d3f0:	30454646 	subcc	r4, r5, r6, asr #12
    d3f4:	38313030 	ldmdacc	r1!, {r4, r5, ip, sp}
    d3f8:	01002929 	tsteq	r0, r9, lsr #18
    d3fc:	414d07a7 	smlaltbmi	r0, sp, r7, r7
    d400:	45545f43 	ldrbmi	r5, [r4, #-3907]	; 0xfffff0bd
    d404:	28205453 	stmdacs	r0!, {r0, r1, r4, r6, sl, ip, lr}
    d408:	6f76282a 	svcvs	0x0076282a
    d40c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d410:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d414:	33746e69 	cmncc	r4, #1680	; 0x690
    d418:	2a745f32 	bcs	1d250e8 <__mprec_tinytens+0x1d00878>
    d41c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d420:	30454646 	subcc	r4, r5, r6, asr #12
    d424:	43313030 	teqmi	r1, #48	; 0x30
    d428:	01002929 	tsteq	r0, r9, lsr #18
    d42c:	414d07a8 	smlaltbmi	r0, sp, r8, r7
    d430:	434d5f43 	movtmi	r5, #57155	; 0xdf43
    d434:	28204746 	stmdacs	r0!, {r1, r2, r6, r8, r9, sl, lr}
    d438:	6f76282a 	svcvs	0x0076282a
    d43c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d440:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d444:	33746e69 	cmncc	r4, #1680	; 0x690
    d448:	2a745f32 	bcs	1d25118 <__mprec_tinytens+0x1d008a8>
    d44c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d450:	30454646 	subcc	r4, r5, r6, asr #12
    d454:	30323030 	eorscc	r3, r2, r0, lsr r0
    d458:	01002929 	tsteq	r0, r9, lsr #18
    d45c:	414d07a9 	smlaltbmi	r0, sp, r9, r7
    d460:	434d5f43 	movtmi	r5, #57155	; 0xdf43
    d464:	2820444d 	stmdacs	r0!, {r0, r2, r3, r6, sl, lr}
    d468:	6f76282a 	svcvs	0x0076282a
    d46c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d470:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d474:	33746e69 	cmncc	r4, #1680	; 0x690
    d478:	2a745f32 	bcs	1d25148 <__mprec_tinytens+0x1d008d8>
    d47c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d480:	30454646 	subcc	r4, r5, r6, asr #12
    d484:	34323030 	ldrtcc	r3, [r2], #-48	; 0xffffffd0
    d488:	01002929 	tsteq	r0, r9, lsr #18
    d48c:	414d07aa 	smlaltbmi	r0, sp, sl, r7
    d490:	414d5f43 	cmpmi	sp, r3, asr #30
    d494:	28205244 	stmdacs	r0!, {r2, r6, r9, ip, lr}
    d498:	6f76282a 	svcvs	0x0076282a
    d49c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d4a0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d4a4:	33746e69 	cmncc	r4, #1680	; 0x690
    d4a8:	2a745f32 	bcs	1d25178 <__mprec_tinytens+0x1d00908>
    d4ac:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d4b0:	30454646 	subcc	r4, r5, r6, asr #12
    d4b4:	38323030 	ldmdacc	r2!, {r4, r5, ip, sp}
    d4b8:	01002929 	tsteq	r0, r9, lsr #18
    d4bc:	414d07ab 	smlaltbmi	r0, sp, fp, r7
    d4c0:	574d5f43 	strbpl	r5, [sp, -r3, asr #30]
    d4c4:	28204454 	stmdacs	r0!, {r2, r4, r6, sl, lr}
    d4c8:	6f76282a 	svcvs	0x0076282a
    d4cc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d4d0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d4d4:	33746e69 	cmncc	r4, #1680	; 0x690
    d4d8:	2a745f32 	bcs	1d251a8 <__mprec_tinytens+0x1d00938>
    d4dc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d4e0:	30454646 	subcc	r4, r5, r6, asr #12
    d4e4:	43323030 	teqmi	r2, #48	; 0x30
    d4e8:	01002929 	tsteq	r0, r9, lsr #18
    d4ec:	414d07ac 	smlaltbmi	r0, sp, ip, r7
    d4f0:	524d5f43 	subpl	r5, sp, #268	; 0x10c
    d4f4:	28204444 	stmdacs	r0!, {r2, r6, sl, lr}
    d4f8:	6f76282a 	svcvs	0x0076282a
    d4fc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d500:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d504:	33746e69 	cmncc	r4, #1680	; 0x690
    d508:	2a745f32 	bcs	1d251d8 <__mprec_tinytens+0x1d00968>
    d50c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d510:	30454646 	subcc	r4, r5, r6, asr #12
    d514:	30333030 	eorscc	r3, r3, r0, lsr r0
    d518:	01002929 	tsteq	r0, r9, lsr #18
    d51c:	414d07ad 	smlaltbmi	r0, sp, sp, r7
    d520:	494d5f43 	stmdbmi	sp, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    d524:	2820444e 	stmdacs	r0!, {r1, r2, r3, r6, sl, lr}
    d528:	6f76282a 	svcvs	0x0076282a
    d52c:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d530:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d534:	33746e69 	cmncc	r4, #1680	; 0x690
    d538:	2a745f32 	bcs	1d25208 <__mprec_tinytens+0x1d00998>
    d53c:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d540:	30454646 	subcc	r4, r5, r6, asr #12
    d544:	34333030 	ldrtcc	r3, [r3], #-48	; 0xffffffd0
    d548:	01002929 	tsteq	r0, r9, lsr #18
    d54c:	414d07af 	smlaltbmi	r0, sp, pc, r7	; <UNPREDICTABLE>
    d550:	41535f43 	cmpmi	r3, r3, asr #30
    d554:	2a282030 	bcs	a1561c <__mprec_tinytens+0x9f0dac>
    d558:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; d4c0 <erf+0x6a8>
    d55c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    d560:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    d564:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    d568:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    d56c:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    d570:	30304546 	eorscc	r4, r0, r6, asr #10
    d574:	29303430 	ldmdbcs	r0!, {r4, r5, sl, ip, sp}
    d578:	b0010029 	andlt	r0, r1, r9, lsr #32
    d57c:	43414d07 	movtmi	r4, #7431	; 0x1d07
    d580:	3141535f 	cmpcc	r1, pc, asr r3
    d584:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    d588:	616c6f76 	smcvs	50934	; 0xc6f6
    d58c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    d590:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    d594:	5f323374 	svcpl	0x00323374
    d598:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    d59c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    d5a0:	30303045 	eorscc	r3, r0, r5, asr #32
    d5a4:	29293434 	stmdbcs	r9!, {r2, r4, r5, sl, ip, sp}
    d5a8:	07b10100 	ldreq	r0, [r1, r0, lsl #2]!
    d5ac:	5f43414d 	svcpl	0x0043414d
    d5b0:	20324153 	eorscs	r4, r2, r3, asr r1
    d5b4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    d5b8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    d5bc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    d5c0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    d5c4:	745f3233 	ldrbvc	r3, [pc], #-563	; d5cc <erf+0x7b4>
    d5c8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    d5cc:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    d5d0:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    d5d4:	00292938 	eoreq	r2, r9, r8, lsr r9
    d5d8:	4d07b301 	stcmi	3, cr11, [r7, #-4]
    d5dc:	435f4341 	cmpmi	pc, #67108865	; 0x4000001
    d5e0:	414d4d4f 	cmpmi	sp, pc, asr #26
    d5e4:	2820444e 	stmdacs	r0!, {r1, r2, r3, r6, sl, lr}
    d5e8:	6f76282a 	svcvs	0x0076282a
    d5ec:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d5f0:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d5f4:	33746e69 	cmncc	r4, #1680	; 0x690
    d5f8:	2a745f32 	bcs	1d252c8 <__mprec_tinytens+0x1d00a58>
    d5fc:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d600:	30454646 	subcc	r4, r5, r6, asr #12
    d604:	30303130 	eorscc	r3, r0, r0, lsr r1
    d608:	01002929 	tsteq	r0, r9, lsr #18
    d60c:	414d07b4 	strhmi	r0, [sp, #-116]	; 0xffffff8c
    d610:	54535f43 	ldrbpl	r5, [r3], #-3907	; 0xfffff0bd
    d614:	53555441 	cmppl	r5, #1090519040	; 0x41000000
    d618:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    d61c:	616c6f76 	smcvs	50934	; 0xc6f6
    d620:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    d624:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    d628:	5f323374 	svcpl	0x00323374
    d62c:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    d630:	46467830 			; <UNDEFINED> instruction: 0x46467830
    d634:	31303045 	teqcc	r0, r5, asr #32
    d638:	29293430 	stmdbcs	r9!, {r4, r5, sl, ip, sp}
    d63c:	07b50100 	ldreq	r0, [r5, r0, lsl #2]!
    d640:	5f43414d 	svcpl	0x0043414d
    d644:	45445852 	strbmi	r5, [r4, #-2130]	; 0xfffff7ae
    d648:	49524353 	ldmdbmi	r2, {r0, r1, r4, r6, r8, r9, lr}^
    d64c:	524f5450 	subpl	r5, pc, #80, 8	; 0x50000000
    d650:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    d654:	616c6f76 	smcvs	50934	; 0xc6f6
    d658:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    d65c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    d660:	5f323374 	svcpl	0x00323374
    d664:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    d668:	46467830 			; <UNDEFINED> instruction: 0x46467830
    d66c:	31303045 	teqcc	r0, r5, asr #32
    d670:	29293830 	stmdbcs	r9!, {r4, r5, fp, ip, sp}
    d674:	07b60100 	ldreq	r0, [r6, r0, lsl #2]!
    d678:	5f43414d 	svcpl	0x0043414d
    d67c:	54535852 	ldrbpl	r5, [r3], #-2130	; 0xfffff7ae
    d680:	53555441 	cmppl	r5, #1090519040	; 0x41000000
    d684:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    d688:	616c6f76 	smcvs	50934	; 0xc6f6
    d68c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    d690:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    d694:	5f323374 	svcpl	0x00323374
    d698:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    d69c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    d6a0:	31303045 	teqcc	r0, r5, asr #32
    d6a4:	29294330 	stmdbcs	r9!, {r4, r5, r8, r9, lr}
    d6a8:	07b70100 	ldreq	r0, [r7, r0, lsl #2]!
    d6ac:	5f43414d 	svcpl	0x0043414d
    d6b0:	45445852 	strbmi	r5, [r4, #-2130]	; 0xfffff7ae
    d6b4:	49524353 	ldmdbmi	r2, {r0, r1, r4, r6, r8, r9, lr}^
    d6b8:	524f5450 	subpl	r5, pc, #80, 8	; 0x50000000
    d6bc:	204d554e 	subcs	r5, sp, lr, asr #10
    d6c0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    d6c4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    d6c8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    d6cc:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    d6d0:	745f3233 	ldrbvc	r3, [pc], #-563	; d6d8 <erf+0x8c0>
    d6d4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    d6d8:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    d6dc:	31313030 	teqcc	r1, r0, lsr r0
    d6e0:	00292930 	eoreq	r2, r9, r0, lsr r9
    d6e4:	4d07b801 	stcmi	8, cr11, [r7, #-4]
    d6e8:	525f4341 	subspl	r4, pc, #67108865	; 0x4000001
    d6ec:	4f525058 	svcmi	0x00525058
    d6f0:	45435544 	strbmi	r5, [r3, #-1348]	; 0xfffffabc
    d6f4:	45444e49 	strbmi	r4, [r4, #-3657]	; 0xfffff1b7
    d6f8:	2a282058 	bcs	a15860 <__mprec_tinytens+0x9f0ff0>
    d6fc:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; d664 <erf+0x84c>
    d700:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    d704:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    d708:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    d70c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    d710:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    d714:	30304546 	eorscc	r4, r0, r6, asr #10
    d718:	29343131 	ldmdbcs	r4!, {r0, r4, r5, r8, ip, sp}
    d71c:	b9010029 	stmdblt	r1, {r0, r3, r5}
    d720:	43414d07 	movtmi	r4, #7431	; 0x1d07
    d724:	4358525f 	cmpmi	r8, #-268435451	; 0xf0000005
    d728:	55534e4f 	ldrbpl	r4, [r3, #-3663]	; 0xfffff1b1
    d72c:	4e49454d 	cdpmi	5, 4, cr4, cr9, cr13, {2}
    d730:	20584544 	subscs	r4, r8, r4, asr #10
    d734:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    d738:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    d73c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    d740:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    d744:	745f3233 	ldrbvc	r3, [pc], #-563	; d74c <erf+0x934>
    d748:	3028292a 	eorcc	r2, r8, sl, lsr #18
    d74c:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    d750:	31313030 	teqcc	r1, r0, lsr r0
    d754:	00292938 	eoreq	r2, r9, r8, lsr r9
    d758:	4d07ba01 	vstrmi	s22, [r7, #-4]
    d75c:	545f4341 	ldrbpl	r4, [pc], #-833	; d764 <erf+0x94c>
    d760:	53454458 	movtpl	r4, #21592	; 0x5458
    d764:	50495243 	subpl	r5, r9, r3, asr #4
    d768:	20524f54 	subscs	r4, r2, r4, asr pc
    d76c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    d770:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    d774:	20656c69 	rsbcs	r6, r5, r9, ror #24
    d778:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    d77c:	745f3233 	ldrbvc	r3, [pc], #-563	; d784 <erf+0x96c>
    d780:	3028292a 	eorcc	r2, r8, sl, lsr #18
    d784:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    d788:	31313030 	teqcc	r1, r0, lsr r0
    d78c:	00292943 	eoreq	r2, r9, r3, asr #18
    d790:	4d07bb01 	vstrmi	d11, [r7, #-4]
    d794:	545f4341 	ldrbpl	r4, [pc], #-833	; d79c <erf+0x984>
    d798:	41545358 	cmpmi	r4, r8, asr r3
    d79c:	20535554 	subscs	r5, r3, r4, asr r5
    d7a0:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    d7a4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    d7a8:	20656c69 	rsbcs	r6, r5, r9, ror #24
    d7ac:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    d7b0:	745f3233 	ldrbvc	r3, [pc], #-563	; d7b8 <erf+0x9a0>
    d7b4:	3028292a 	eorcc	r2, r8, sl, lsr #18
    d7b8:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    d7bc:	32313030 	eorscc	r3, r1, #48	; 0x30
    d7c0:	00292930 	eoreq	r2, r9, r0, lsr r9
    d7c4:	4d07bc01 	stcmi	12, cr11, [r7, #-4]
    d7c8:	545f4341 	ldrbpl	r4, [pc], #-833	; d7d0 <erf+0x9b8>
    d7cc:	53454458 	movtpl	r4, #21592	; 0x5458
    d7d0:	50495243 	subpl	r5, r9, r3, asr #4
    d7d4:	4e524f54 	mrcmi	15, 2, r4, cr2, cr4, {2}
    d7d8:	28204d55 	stmdacs	r0!, {r0, r2, r4, r6, r8, sl, fp, lr}
    d7dc:	6f76282a 	svcvs	0x0076282a
    d7e0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d7e4:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d7e8:	33746e69 	cmncc	r4, #1680	; 0x690
    d7ec:	2a745f32 	bcs	1d254bc <__mprec_tinytens+0x1d00c4c>
    d7f0:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d7f4:	30454646 	subcc	r4, r5, r6, asr #12
    d7f8:	34323130 	ldrtcc	r3, [r2], #-304	; 0xfffffed0
    d7fc:	01002929 	tsteq	r0, r9, lsr #18
    d800:	414d07bd 	strhmi	r0, [sp, #-125]	; 0xffffff83
    d804:	58545f43 	ldmdapl	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    d808:	444f5250 	strbmi	r5, [pc], #-592	; d810 <erfc+0x30>
    d80c:	49454355 	stmdbmi	r5, {r0, r2, r4, r6, r8, r9, lr}^
    d810:	5845444e 	stmdapl	r5, {r1, r2, r3, r6, sl, lr}^
    d814:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    d818:	616c6f76 	smcvs	50934	; 0xc6f6
    d81c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    d820:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    d824:	5f323374 	svcpl	0x00323374
    d828:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    d82c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    d830:	31303045 	teqcc	r0, r5, asr #32
    d834:	29293832 	stmdbcs	r9!, {r1, r4, r5, fp, ip, sp}
    d838:	07be0100 	ldreq	r0, [lr, r0, lsl #2]!
    d83c:	5f43414d 	svcpl	0x0043414d
    d840:	4f435854 	svcmi	0x00435854
    d844:	4d55534e 	ldclmi	3, cr5, [r5, #-312]	; 0xfffffec8
    d848:	444e4945 	strbmi	r4, [lr], #-2373	; 0xfffff6bb
    d84c:	28205845 	stmdacs	r0!, {r0, r2, r6, fp, ip, lr}
    d850:	6f76282a 	svcvs	0x0076282a
    d854:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d858:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d85c:	33746e69 	cmncc	r4, #1680	; 0x690
    d860:	2a745f32 	bcs	1d25530 <__mprec_tinytens+0x1d00cc0>
    d864:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d868:	30454646 	subcc	r4, r5, r6, asr #12
    d86c:	43323130 	teqmi	r2, #48, 2
    d870:	01002929 	tsteq	r0, r9, lsr #18
    d874:	414d07c0 	smlalbtmi	r0, sp, r0, r7
    d878:	53545f43 	cmppl	r4, #268	; 0x10c
    d87c:	28203056 	stmdacs	r0!, {r1, r2, r4, r6, ip, sp}
    d880:	6f76282a 	svcvs	0x0076282a
    d884:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d888:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d88c:	33746e69 	cmncc	r4, #1680	; 0x690
    d890:	2a745f32 	bcs	1d25560 <__mprec_tinytens+0x1d00cf0>
    d894:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d898:	30454646 	subcc	r4, r5, r6, asr #12
    d89c:	38353130 	ldmdacc	r5!, {r4, r5, r8, ip, sp}
    d8a0:	01002929 	tsteq	r0, r9, lsr #18
    d8a4:	414d07c1 	smlalbtmi	r0, sp, r1, r7
    d8a8:	53545f43 	cmppl	r4, #268	; 0x10c
    d8ac:	28203156 	stmdacs	r0!, {r1, r2, r4, r6, r8, ip, sp}
    d8b0:	6f76282a 	svcvs	0x0076282a
    d8b4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    d8b8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    d8bc:	33746e69 	cmncc	r4, #1680	; 0x690
    d8c0:	2a745f32 	bcs	1d25590 <__mprec_tinytens+0x1d00d20>
    d8c4:	78302829 	ldmdavc	r0!, {r0, r3, r5, fp, sp}
    d8c8:	30454646 	subcc	r4, r5, r6, asr #12
    d8cc:	43353130 	teqmi	r5, #48, 2
    d8d0:	01002929 	tsteq	r0, r9, lsr #18
    d8d4:	414d07c2 	smlalbtmi	r0, sp, r2, r7
    d8d8:	53525f43 	cmppl	r2, #268	; 0x10c
    d8dc:	2a282056 	bcs	a15a3c <__mprec_tinytens+0x9f11cc>
    d8e0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; d848 <erfc+0x68>
    d8e4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    d8e8:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    d8ec:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    d8f0:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    d8f4:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    d8f8:	30304546 	eorscc	r4, r0, r6, asr #10
    d8fc:	29303631 	ldmdbcs	r0!, {r0, r4, r5, r9, sl, ip, sp}
    d900:	c4010029 	strgt	r0, [r1], #-41	; 0xffffffd7
    d904:	43414d07 	movtmi	r4, #7431	; 0x1d07
    d908:	4f4c465f 	svcmi	0x004c465f
    d90c:	4e4f4357 	mcrmi	3, 2, r4, cr15, cr7, {2}
    d910:	4c4f5254 	sfmmi	f5, 2, [pc], {84}	; 0x54
    d914:	20544e43 	subscs	r4, r4, r3, asr #28
    d918:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    d91c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    d920:	20656c69 	rsbcs	r6, r5, r9, ror #24
    d924:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    d928:	745f3233 	ldrbvc	r3, [pc], #-563	; d930 <erfc+0x150>
    d92c:	3028292a 	eorcc	r2, r8, sl, lsr #18
    d930:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    d934:	37313030 			; <UNDEFINED> instruction: 0x37313030
    d938:	00292930 	eoreq	r2, r9, r0, lsr r9
    d93c:	4d07c501 	cfstr32mi	mvfx12, [r7, #-4]
    d940:	465f4341 	ldrbmi	r4, [pc], -r1, asr #6
    d944:	43574f4c 	cmpmi	r7, #76, 30	; 0x130
    d948:	52544e4f 	subspl	r4, r4, #1264	; 0x4f0
    d94c:	54534c4f 	ldrbpl	r4, [r3], #-3151	; 0xfffff3b1
    d950:	2a282053 	bcs	a15aa4 <__mprec_tinytens+0x9f1234>
    d954:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; d8bc <erfc+0xdc>
    d958:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    d95c:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    d960:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    d964:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    d968:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    d96c:	30304546 	eorscc	r4, r0, r6, asr #10
    d970:	29343731 	ldmdbcs	r4!, {r0, r4, r5, r8, r9, sl, ip, sp}
    d974:	c7010029 	strgt	r0, [r1, -r9, lsr #32]
    d978:	43414d07 	movtmi	r4, #7431	; 0x1d07
    d97c:	4658525f 			; <UNDEFINED> instruction: 0x4658525f
    d980:	45544c49 	ldrbmi	r4, [r4, #-3145]	; 0xfffff3b7
    d984:	52544352 	subspl	r4, r4, #1207959553	; 0x48000001
    d988:	2a28204c 	bcs	a15ac0 <__mprec_tinytens+0x9f1250>
    d98c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; d8f4 <erfc+0x114>
    d990:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    d994:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    d998:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    d99c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    d9a0:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    d9a4:	30304546 	eorscc	r4, r0, r6, asr #10
    d9a8:	29303032 	ldmdbcs	r0!, {r1, r4, r5, ip, sp}
    d9ac:	c8010029 	stmdagt	r1, {r0, r3, r5}
    d9b0:	43414d07 	movtmi	r4, #7431	; 0x1d07
    d9b4:	4658525f 			; <UNDEFINED> instruction: 0x4658525f
    d9b8:	45544c49 	ldrbmi	r4, [r4, #-3145]	; 0xfffff3b7
    d9bc:	4c4f5752 	mcrrmi	7, 5, r5, pc, cr2
    d9c0:	20535453 	subscs	r5, r3, r3, asr r4
    d9c4:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    d9c8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    d9cc:	20656c69 	rsbcs	r6, r5, r9, ror #24
    d9d0:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    d9d4:	745f3233 	ldrbvc	r3, [pc], #-563	; d9dc <erfc+0x1fc>
    d9d8:	3028292a 	eorcc	r2, r8, sl, lsr #18
    d9dc:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    d9e0:	30323030 	eorscc	r3, r2, r0, lsr r0
    d9e4:	00292934 	eoreq	r2, r9, r4, lsr r9
    d9e8:	4d07c901 	vstrmi.16	s24, [r7, #-2]	; <UNPREDICTABLE>
    d9ec:	525f4341 	subspl	r4, pc, #67108865	; 0x4000001
    d9f0:	4c494658 	mcrrmi	6, 5, r4, r9, cr8
    d9f4:	57524554 			; <UNDEFINED> instruction: 0x57524554
    d9f8:	4c434c4f 	mcrrmi	12, 4, r4, r3, cr15
    d9fc:	2a282052 	bcs	a15b4c <__mprec_tinytens+0x9f12dc>
    da00:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; d968 <erfc+0x188>
    da04:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    da08:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    da0c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    da10:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    da14:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    da18:	30304546 	eorscc	r4, r0, r6, asr #10
    da1c:	29383032 	ldmdbcs	r8!, {r1, r4, r5, ip, sp}
    da20:	cb010029 	blgt	4dacc <__mprec_tinytens+0x2925c>
    da24:	43414d07 	movtmi	r4, #7431	; 0x1d07
    da28:	5341485f 	movtpl	r4, #6239	; 0x185f
    da2c:	4c494648 	mcrrmi	6, 4, r4, r9, cr8
    da30:	4c524554 	cfldr64mi	mvdx4, [r2], {84}	; 0x54
    da34:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    da38:	616c6f76 	smcvs	50934	; 0xc6f6
    da3c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    da40:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    da44:	5f323374 	svcpl	0x00323374
    da48:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    da4c:	46467830 			; <UNDEFINED> instruction: 0x46467830
    da50:	32303045 	eorscc	r3, r0, #69	; 0x45
    da54:	29293031 	stmdbcs	r9!, {r0, r4, r5, ip, sp}
    da58:	07cc0100 	strbeq	r0, [ip, r0, lsl #2]
    da5c:	5f43414d 	svcpl	0x0043414d
    da60:	48534148 	ldmdami	r3, {r3, r6, r8, lr}^
    da64:	544c4946 	strbpl	r4, [ip], #-2374	; 0xfffff6ba
    da68:	20485245 	subcs	r5, r8, r5, asr #4
    da6c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    da70:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    da74:	20656c69 	rsbcs	r6, r5, r9, ror #24
    da78:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    da7c:	745f3233 	ldrbvc	r3, [pc], #-563	; da84 <erfc+0x2a4>
    da80:	3028292a 	eorcc	r2, r8, sl, lsr #18
    da84:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    da88:	31323030 	teqcc	r2, r0, lsr r0
    da8c:	00292934 	eoreq	r2, r9, r4, lsr r9
    da90:	4d07ce01 	stcmi	14, cr12, [r7, #-4]
    da94:	495f4341 	ldmdbmi	pc, {r0, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    da98:	5453544e 	ldrbpl	r5, [r3], #-1102	; 0xfffffbb2
    da9c:	53555441 	cmppl	r5, #1090519040	; 0x41000000
    daa0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    daa4:	616c6f76 	smcvs	50934	; 0xc6f6
    daa8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    daac:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    dab0:	5f323374 	svcpl	0x00323374
    dab4:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    dab8:	46467830 			; <UNDEFINED> instruction: 0x46467830
    dabc:	46303045 	ldrtmi	r3, [r0], -r5, asr #32
    dac0:	29293045 	stmdbcs	r9!, {r0, r2, r6, ip, sp}
    dac4:	07cf0100 	strbeq	r0, [pc, r0, lsl #2]
    dac8:	5f43414d 	svcpl	0x0043414d
    dacc:	45544e49 	ldrbmi	r4, [r4, #-3657]	; 0xfffff1b7
    dad0:	4c42414e 	stfmie	f4, [r2], {78}	; 0x4e
    dad4:	2a282045 	bcs	a15bf0 <__mprec_tinytens+0x9f1380>
    dad8:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; da40 <erfc+0x260>
    dadc:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    dae0:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    dae4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    dae8:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    daec:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    daf0:	30304546 	eorscc	r4, r0, r6, asr #10
    daf4:	29344546 	ldmdbcs	r4!, {r1, r2, r6, r8, sl, lr}
    daf8:	d0010029 	andle	r0, r1, r9, lsr #32
    dafc:	43414d07 	movtmi	r4, #7431	; 0x1d07
    db00:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    db04:	41454c43 	cmpmi	r5, r3, asr #24
    db08:	2a282052 	bcs	a15c58 <__mprec_tinytens+0x9f13e8>
    db0c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; da74 <erfc+0x294>
    db10:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    db14:	69752065 	ldmdbvs	r5!, {r0, r2, r5, r6, sp}^
    db18:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
    db1c:	292a745f 	stmdbcs	sl!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    db20:	46783028 	ldrbtmi	r3, [r8], -r8, lsr #32
    db24:	30304546 	eorscc	r4, r0, r6, asr #10
    db28:	29384546 	ldmdbcs	r8!, {r1, r2, r6, r8, sl, lr}
    db2c:	d1010029 	tstle	r1, r9, lsr #32
    db30:	43414d07 	movtmi	r4, #7431	; 0x1d07
    db34:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    db38:	20544553 	subscs	r4, r4, r3, asr r5
    db3c:	76282a28 	strtvc	r2, [r8], -r8, lsr #20
    db40:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    db44:	20656c69 	rsbcs	r6, r5, r9, ror #24
    db48:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    db4c:	745f3233 	ldrbvc	r3, [pc], #-563	; db54 <erfc+0x374>
    db50:	3028292a 	eorcc	r2, r8, sl, lsr #18
    db54:	45464678 	strbmi	r4, [r6, #-1656]	; 0xfffff988
    db58:	45463030 	strbmi	r3, [r6, #-48]	; 0xffffffd0
    db5c:	00292943 	eoreq	r2, r9, r3, asr #18
    db60:	4d07d301 	stcmi	3, cr13, [r7, #-4]
    db64:	505f4341 	subspl	r4, pc, r1, asr #6
    db68:	5245574f 	subpl	r5, r5, #20709376	; 0x13c0000
    db6c:	4e574f44 	cdpmi	15, 5, cr4, cr7, cr4, {2}
    db70:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    db74:	616c6f76 	smcvs	50934	; 0xc6f6
    db78:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    db7c:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    db80:	5f323374 	svcpl	0x00323374
    db84:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    db88:	46467830 			; <UNDEFINED> instruction: 0x46467830
    db8c:	46303045 	ldrtmi	r3, [r0], -r5, asr #32
    db90:	29293446 	stmdbcs	r9!, {r1, r2, r6, sl, ip, sp}
    db94:	07d40100 	ldrbeq	r0, [r4, r0, lsl #2]
    db98:	5f43414d 	svcpl	0x0043414d
    db9c:	55444f4d 	strbpl	r4, [r4, #-3917]	; 0xfffff0b3
    dba0:	4449454c 	strbmi	r4, [r9], #-1356	; 0xfffffab4
    dba4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    dba8:	616c6f76 	smcvs	50934	; 0xc6f6
    dbac:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    dbb0:	6e697520 	cdpvs	5, 6, cr7, cr9, cr0, {1}
    dbb4:	5f323374 	svcpl	0x00323374
    dbb8:	28292a74 	stmdacs	r9!, {r2, r4, r5, r6, r9, fp, sp}
    dbbc:	46467830 			; <UNDEFINED> instruction: 0x46467830
    dbc0:	46303045 	ldrtmi	r3, [r0], -r5, asr #32
    dbc4:	29294346 	stmdbcs	r9!, {r1, r2, r6, r8, r9, lr}
    dbc8:	07dd0100 	ldrbeq	r0, [sp, r0, lsl #2]
    dbcc:	65735f5f 	ldrbvs	r5, [r3, #-3935]!	; 0xfffff0a1
    dbd0:	43505f74 	cmpmi	r0, #116, 30	; 0x1d0
    dbd4:	45534b4c 	ldrbmi	r4, [r3, #-2892]	; 0xfffff4b4
    dbd8:	2c70284c 	ldclcs	8, cr2, [r0], #-304	; 0xfffffed0
    dbdc:	50202976 	eorpl	r2, r0, r6, ror r9
    dbe0:	534b4c43 	movtpl	r4, #48195	; 0xbc43
    dbe4:	285b4c45 	ldmdacs	fp, {r0, r2, r6, sl, fp, lr}^
    dbe8:	2f202970 	svccs	0x00202970
    dbec:	5d363120 	ldfpls	f3, [r6, #-128]!	; 0xffffff80
    dbf0:	28203d20 	stmdacs	r0!, {r5, r8, sl, fp, ip, sp}
    dbf4:	4b4c4350 	blmi	131e93c <__mprec_tinytens+0x12fa0cc>
    dbf8:	5b4c4553 	blpl	131f14c <__mprec_tinytens+0x12fa8dc>
    dbfc:	20297028 	eorcs	r7, r9, r8, lsr #32
    dc00:	3631202f 	ldrtcc	r2, [r1], -pc, lsr #32
    dc04:	2026205d 	eorcs	r2, r6, sp, asr r0
    dc08:	2033287e 	eorscs	r2, r3, lr, ror r8
    dc0c:	28203c3c 	stmdacs	r0!, {r2, r3, r4, r5, sl, fp, ip, sp}
    dc10:	20297028 	eorcs	r7, r9, r8, lsr #32
    dc14:	2032202a 	eorscs	r2, r2, sl, lsr #32
    dc18:	32332025 	eorscc	r2, r3, #37	; 0x25
    dc1c:	20292929 	eorcs	r2, r9, r9, lsr #18
    dc20:	7628207c 			; <UNDEFINED> instruction: 0x7628207c
    dc24:	203c3c20 	eorscs	r3, ip, r0, lsr #24
    dc28:	29702828 	ldmdbcs	r0!, {r3, r5, fp, sp}^
    dc2c:	32202a20 	eorcc	r2, r0, #32, 20	; 0x20000
    dc30:	33202520 			; <UNDEFINED> instruction: 0x33202520
    dc34:	00292932 	eoreq	r2, r9, r2, lsr r9
    dc38:	5007de01 	andpl	sp, r7, r1, lsl #28
    dc3c:	444b4c43 	strbmi	r4, [fp], #-3139	; 0xfffff3bd
    dc40:	345f5649 	ldrbcc	r5, [pc], #-1609	; dc48 <erfc+0x468>
    dc44:	01003020 	tsteq	r0, r0, lsr #32
    dc48:	435007df 	cmpmi	r0, #58458112	; 0x37c0000
    dc4c:	49444b4c 	stmdbmi	r4, {r2, r3, r6, r8, r9, fp, lr}^
    dc50:	20315f56 	eorscs	r5, r1, r6, asr pc
    dc54:	e0010031 	and	r0, r1, r1, lsr r0
    dc58:	4c435007 	mcrrmi	0, 0, r5, r3, cr7
    dc5c:	5649444b 	strbpl	r4, [r9], -fp, asr #8
    dc60:	3220325f 	eorcc	r3, r0, #-268435451	; 0xf0000005
    dc64:	07e10100 	strbeq	r0, [r1, r0, lsl #2]!
    dc68:	4b4c4350 	blmi	131e9b0 <__mprec_tinytens+0x12fa140>
    dc6c:	5f564944 	svcpl	0x00564944
    dc70:	00332038 	eorseq	r2, r3, r8, lsr r0
    dc74:	5007e201 	andpl	lr, r7, r1, lsl #4
    dc78:	5f4b4c43 	svcpl	0x004b4c43
    dc7c:	20544457 	subscs	r4, r4, r7, asr r4
    dc80:	e3010030 	movw	r0, #4144	; 0x1030
    dc84:	4c435007 	mcrrmi	0, 0, r5, r3, cr7
    dc88:	49545f4b 	ldmdbmi	r4, {r0, r1, r3, r6, r8, r9, sl, fp, ip, lr}^
    dc8c:	3052454d 	subscc	r4, r2, sp, asr #10
    dc90:	01003120 	tsteq	r0, r0, lsr #2
    dc94:	435007e4 	cmpmi	r0, #228, 14	; 0x3900000
    dc98:	545f4b4c 	ldrbpl	r4, [pc], #-2892	; dca0 <erfc+0x4c0>
    dc9c:	52454d49 	subpl	r4, r5, #4672	; 0x1240
    dca0:	00322031 	eorseq	r2, r2, r1, lsr r0
    dca4:	5007e501 	andpl	lr, r7, r1, lsl #10
    dca8:	5f4b4c43 	svcpl	0x004b4c43
    dcac:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    dcb0:	00332030 	eorseq	r2, r3, r0, lsr r0
    dcb4:	5007e601 	andpl	lr, r7, r1, lsl #12
    dcb8:	5f4b4c43 	svcpl	0x004b4c43
    dcbc:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    dcc0:	00342031 	eorseq	r2, r4, r1, lsr r0
    dcc4:	5007e701 	andpl	lr, r7, r1, lsl #14
    dcc8:	5f4b4c43 	svcpl	0x004b4c43
    dccc:	314d5750 	cmpcc	sp, r0, asr r7
    dcd0:	01003620 	tsteq	r0, r0, lsr #12
    dcd4:	435007e8 	cmpmi	r0, #232, 14	; 0x3a00000
    dcd8:	495f4b4c 	ldmdbmi	pc, {r2, r3, r6, r8, r9, fp, lr}^	; <UNPREDICTABLE>
    dcdc:	20304332 	eorscs	r4, r0, r2, lsr r3
    dce0:	e9010037 	stmdb	r1, {r0, r1, r2, r4, r5}
    dce4:	4c435007 	mcrrmi	0, 0, r5, r3, cr7
    dce8:	50535f4b 	subspl	r5, r3, fp, asr #30
    dcec:	00382049 	eorseq	r2, r8, r9, asr #32
    dcf0:	5007ea01 	andpl	lr, r7, r1, lsl #20
    dcf4:	5f4b4c43 	svcpl	0x004b4c43
    dcf8:	20435452 	subcs	r5, r3, r2, asr r4
    dcfc:	eb010039 	bl	4dde8 <__mprec_tinytens+0x29578>
    dd00:	4c435007 	mcrrmi	0, 0, r5, r3, cr7
    dd04:	53535f4b 	cmppl	r3, #300	; 0x12c
    dd08:	31203150 			; <UNDEFINED> instruction: 0x31203150
    dd0c:	ec010030 	stc	0, cr0, [r1], {48}	; 0x30
    dd10:	4c435007 	mcrrmi	0, 0, r5, r3, cr7
    dd14:	41445f4b 	cmpmi	r4, fp, asr #30
    dd18:	31312043 	teqcc	r1, r3, asr #32
    dd1c:	07ed0100 	strbeq	r0, [sp, r0, lsl #2]!
    dd20:	4b4c4350 	blmi	131ea68 <__mprec_tinytens+0x12fa1f8>
    dd24:	4344415f 	movtmi	r4, #16735	; 0x415f
    dd28:	00323120 	eorseq	r3, r2, r0, lsr #2
    dd2c:	5007ee01 	andpl	lr, r7, r1, lsl #28
    dd30:	5f4b4c43 	svcpl	0x004b4c43
    dd34:	314e4143 	cmpcc	lr, r3, asr #2
    dd38:	00333120 	eorseq	r3, r3, r0, lsr #2
    dd3c:	5007ef01 	andpl	lr, r7, r1, lsl #30
    dd40:	5f4b4c43 	svcpl	0x004b4c43
    dd44:	324e4143 	subcc	r4, lr, #-1073741808	; 0xc0000010
    dd48:	00343120 	eorseq	r3, r4, r0, lsr #2
    dd4c:	5007f001 	andpl	pc, r7, r1
    dd50:	5f4b4c43 	svcpl	0x004b4c43
    dd54:	20464341 	subcs	r4, r6, r1, asr #6
    dd58:	01003531 	tsteq	r0, r1, lsr r5
    dd5c:	435007f1 	cmpmi	r0, #63176704	; 0x3c40000
    dd60:	425f4b4c 	subsmi	r4, pc, #76, 22	; 0x13000
    dd64:	525f5441 	subspl	r5, pc, #1090519040	; 0x41000000
    dd68:	31204d41 			; <UNDEFINED> instruction: 0x31204d41
    dd6c:	f2010036 	vqadd.s8	d0, d1, d22
    dd70:	4c435007 	mcrrmi	0, 0, r5, r3, cr7
    dd74:	50475f4b 	subpl	r5, r7, fp, asr #30
    dd78:	31204f49 			; <UNDEFINED> instruction: 0x31204f49
    dd7c:	f3010037 	vqadd.u8	d0, d1, d23
    dd80:	4c435007 	mcrrmi	0, 0, r5, r3, cr7
    dd84:	43505f4b 	cmpmi	r0, #300	; 0x12c
    dd88:	38312042 	ldmdacc	r1!, {r1, r6, sp}
    dd8c:	07f40100 	ldrbeq	r0, [r4, r0, lsl #2]!
    dd90:	4b4c4350 	blmi	131ead8 <__mprec_tinytens+0x12fa268>
    dd94:	4332495f 	teqmi	r2, #1556480	; 0x17c000
    dd98:	39312031 	ldmdbcc	r1!, {r0, r4, r5, sp}
    dd9c:	07f50100 	ldrbeq	r0, [r5, r0, lsl #2]!
    dda0:	4b4c4350 	blmi	131eae8 <__mprec_tinytens+0x12fa278>
    dda4:	5053535f 	subspl	r5, r3, pc, asr r3
    dda8:	31322030 	teqcc	r2, r0, lsr r0
    ddac:	07f60100 	ldrbeq	r0, [r6, r0, lsl #2]!
    ddb0:	4b4c4350 	blmi	131eaf8 <__mprec_tinytens+0x12fa288>
    ddb4:	4d49545f 	cfstrdmi	mvd5, [r9, #-380]	; 0xfffffe84
    ddb8:	20325245 	eorscs	r5, r2, r5, asr #4
    ddbc:	01003232 	tsteq	r0, r2, lsr r2
    ddc0:	435007f7 	cmpmi	r0, #64749568	; 0x3dc0000
    ddc4:	545f4b4c 	ldrbpl	r4, [pc], #-2892	; ddcc <erfc+0x5ec>
    ddc8:	52454d49 	subpl	r4, r5, #4672	; 0x1240
    ddcc:	33322033 	teqcc	r2, #51	; 0x33
    ddd0:	07f80100 	ldrbeq	r0, [r8, r0, lsl #2]!
    ddd4:	4b4c4350 	blmi	131eb1c <__mprec_tinytens+0x12fa2ac>
    ddd8:	5241555f 	subpl	r5, r1, #398458880	; 0x17c00000
    dddc:	32203254 	eorcc	r3, r0, #84, 4	; 0x40000005
    dde0:	f9010034 			; <UNDEFINED> instruction: 0xf9010034
    dde4:	4c435007 	mcrrmi	0, 0, r5, r3, cr7
    dde8:	41555f4b 	cmpmi	r5, fp, asr #30
    ddec:	20335452 	eorscs	r5, r3, r2, asr r4
    ddf0:	01003532 	tsteq	r0, r2, lsr r5
    ddf4:	435007fa 	cmpmi	r0, #65536000	; 0x3e80000
    ddf8:	495f4b4c 	ldmdbmi	pc, {r2, r3, r6, r8, r9, fp, lr}^	; <UNPREDICTABLE>
    ddfc:	20324332 	eorscs	r4, r2, r2, lsr r3
    de00:	01003632 	tsteq	r0, r2, lsr r6
    de04:	435007fb 	cmpmi	r0, #65798144	; 0x3ec0000
    de08:	495f4b4c 	ldmdbmi	pc, {r2, r3, r6, r8, r9, fp, lr}^	; <UNPREDICTABLE>
    de0c:	32205332 	eorcc	r5, r0, #-939524096	; 0xc8000000
    de10:	fc010037 	stc2	0, cr0, [r1], {55}	; 0x37
    de14:	4c435007 	mcrrmi	0, 0, r5, r3, cr7
    de18:	434d5f4b 	movtmi	r5, #57163	; 0xdf4b
    de1c:	38322049 	ldmdacc	r2!, {r0, r3, r6, sp}
    de20:	07fd0100 	ldrbeq	r0, [sp, r0, lsl #2]!
    de24:	4b4c4350 	blmi	131eb6c <__mprec_tinytens+0x12fa2fc>
    de28:	5359535f 	cmppl	r9, #2080374785	; 0x7c000001
    de2c:	204e4f43 	subcs	r4, lr, r3, asr #30
    de30:	01003033 	tsteq	r0, r3, lsr r0
    de34:	5f5f0881 	svcpl	0x005f0881
    de38:	5f746573 	svcpl	0x00746573
    de3c:	534e4950 	movtpl	r4, #59728	; 0xe950
    de40:	70284c45 	eorvc	r4, r8, r5, asr #24
    de44:	762c622c 	strtvc	r6, [ip], -ip, lsr #4
    de48:	49502029 	ldmdbmi	r0, {r0, r3, r5, sp}^
    de4c:	4c45534e 	mcrrmi	3, 4, r5, r5, cr14
    de50:	2970285b 	ldmdbcs	r0!, {r0, r1, r3, r4, r6, fp, sp}^
    de54:	32202a20 	eorcc	r2, r0, #32, 20	; 0x20000
    de58:	28202b20 	stmdacs	r0!, {r5, r8, r9, fp, sp}
    de5c:	2f202962 	svccs	0x00202962
    de60:	5d363120 	ldfpls	f3, [r6, #-128]!	; 0xffffff80
    de64:	28203d20 	stmdacs	r0!, {r5, r8, sl, fp, ip, sp}
    de68:	534e4950 	movtpl	r4, #59728	; 0xe950
    de6c:	285b4c45 	ldmdacs	fp, {r0, r2, r6, sl, fp, lr}^
    de70:	2a202970 	bcs	818438 <__mprec_tinytens+0x7f3bc8>
    de74:	2b203220 	blcs	81a6fc <__mprec_tinytens+0x7f5e8c>
    de78:	29622820 	stmdbcs	r2!, {r5, fp, sp}^
    de7c:	31202f20 			; <UNDEFINED> instruction: 0x31202f20
    de80:	26205d36 			; <UNDEFINED> instruction: 0x26205d36
    de84:	33287e20 			; <UNDEFINED> instruction: 0x33287e20
    de88:	203c3c20 	eorscs	r3, ip, r0, lsr #24
    de8c:	29622828 	stmdbcs	r2!, {r3, r5, fp, sp}^
    de90:	32202a20 	eorcc	r2, r0, #32, 20	; 0x20000
    de94:	33202520 			; <UNDEFINED> instruction: 0x33202520
    de98:	29292932 	stmdbcs	r9!, {r1, r4, r5, r8, fp, sp}
    de9c:	28207c20 	stmdacs	r0!, {r5, sl, fp, ip, sp, lr}
    dea0:	3c3c2076 	ldccc	0, cr2, [ip], #-472	; 0xfffffe28
    dea4:	62282820 	eorvs	r2, r8, #32, 16	; 0x200000
    dea8:	202a2029 	eorcs	r2, sl, r9, lsr #32
    deac:	20252032 	eorcs	r2, r5, r2, lsr r0
    deb0:	29293233 	stmdbcs	r9!, {r0, r1, r4, r5, r9, ip, sp}
    deb4:	08820100 	stmeq	r2, {r8}
    deb8:	65735f5f 	ldrbvs	r5, [r3, #-3935]!	; 0xfffff0a1
    debc:	49505f74 	ldmdbmi	r0, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    dec0:	444f4d4e 	strbmi	r4, [pc], #-3406	; dec8 <erfc+0x6e8>
    dec4:	2c702845 	ldclcs	8, cr2, [r0], #-276	; 0xfffffeec
    dec8:	29762c62 	ldmdbcs	r6!, {r1, r5, r6, sl, fp, sp}^
    decc:	4e495020 	cdpmi	0, 4, cr5, cr9, cr0, {1}
    ded0:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    ded4:	2970285b 	ldmdbcs	r0!, {r0, r1, r3, r4, r6, fp, sp}^
    ded8:	32202a20 	eorcc	r2, r0, #32, 20	; 0x20000
    dedc:	28202b20 	stmdacs	r0!, {r5, r8, r9, fp, sp}
    dee0:	2f202962 	svccs	0x00202962
    dee4:	5d363120 	ldfpls	f3, [r6, #-128]!	; 0xffffff80
    dee8:	28203d20 	stmdacs	r0!, {r5, r8, sl, fp, ip, sp}
    deec:	4d4e4950 	vstrmi.16	s9, [lr, #-160]	; 0xffffff60	; <UNPREDICTABLE>
    def0:	5b45444f 	blpl	115f034 <__mprec_tinytens+0x113a7c4>
    def4:	20297028 	eorcs	r7, r9, r8, lsr #32
    def8:	2032202a 	eorscs	r2, r2, sl, lsr #32
    defc:	6228202b 	eorvs	r2, r8, #43	; 0x2b
    df00:	202f2029 	eorcs	r2, pc, r9, lsr #32
    df04:	205d3631 	subscs	r3, sp, r1, lsr r6
    df08:	287e2026 	ldmdacs	lr!, {r1, r2, r5, sp}^
    df0c:	3c3c2033 	ldccc	0, cr2, [ip], #-204	; 0xffffff34
    df10:	62282820 	eorvs	r2, r8, #32, 16	; 0x200000
    df14:	202a2029 	eorcs	r2, sl, r9, lsr #32
    df18:	20252032 	eorcs	r2, r5, r2, lsr r0
    df1c:	29293233 	stmdbcs	r9!, {r0, r1, r4, r5, r9, ip, sp}
    df20:	207c2029 	rsbscs	r2, ip, r9, lsr #32
    df24:	3c207628 	stccc	6, cr7, [r0], #-160	; 0xffffff60
    df28:	2828203c 	stmdacs	r8!, {r2, r3, r4, r5, sp}
    df2c:	2a202962 	bcs	8184bc <__mprec_tinytens+0x7f3c4c>
    df30:	25203220 	strcs	r3, [r0, #-544]!	; 0xfffffde0
    df34:	29323320 	ldmdbcs	r2!, {r5, r8, r9, ip, sp}
    df38:	83010029 	movwhi	r0, #4137	; 0x1029
    df3c:	4e495008 	cdpmi	0, 4, cr5, cr9, cr8, {0}
    df40:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    df44:	2055505f 	subscs	r5, r5, pc, asr r0
    df48:	84010030 	strhi	r0, [r1], #-48	; 0xffffffd0
    df4c:	4e495008 	cdpmi	0, 4, cr5, cr9, cr8, {0}
    df50:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    df54:	5a49485f 	bpl	12600d8 <__mprec_tinytens+0x123b868>
    df58:	01003220 	tsteq	r0, r0, lsr #4
    df5c:	49500885 	ldmdbmi	r0, {r0, r2, r7, fp}^
    df60:	444f4d4e 	strbmi	r4, [pc], #-3406	; df68 <erfc+0x788>
    df64:	44505f45 	ldrbmi	r5, [r0], #-3909	; 0xfffff0bb
    df68:	01003320 	tsteq	r0, r0, lsr #6
    df6c:	5f5f0889 	svcpl	0x005f0889
    df70:	5f746573 	svcpl	0x00746573
    df74:	4e4f4350 	mcrmi	3, 2, r4, cr15, cr0, {2}
    df78:	29622850 	stmdbcs	r2!, {r4, r6, fp, sp}^
    df7c:	4f435020 	svcmi	0x00435020
    df80:	7c20504e 	stcvc	0, cr5, [r0], #-312	; 0xfffffec8
    df84:	6228203d 	eorvs	r2, r8, #61	; 0x3d
    df88:	8a010029 	bhi	4e034 <__mprec_tinytens+0x297c4>
    df8c:	635f5f08 	cmpvs	pc, #8, 30
    df90:	505f726c 	subspl	r7, pc, ip, ror #4
    df94:	504e4f43 	subpl	r4, lr, r3, asr #30
    df98:	20296228 	eorcs	r6, r9, r8, lsr #4
    df9c:	4e4f4350 	mcrmi	3, 2, r4, cr15, cr0, {2}
    dfa0:	3d262050 	stccc	0, cr2, [r6, #-320]!	; 0xfffffec0
    dfa4:	62287e20 	eorvs	r7, r8, #32, 28	; 0x200
    dfa8:	8b010029 	blhi	4e054 <__mprec_tinytens+0x297e4>
    dfac:	54435008 	strbpl	r5, [r3], #-8
    dfb0:	20304d49 	eorscs	r4, r0, r9, asr #26
    dfb4:	30307830 	eorscc	r7, r0, r0, lsr r8
    dfb8:	30303030 	eorscc	r3, r0, r0, lsr r0
    dfbc:	01003230 	tsteq	r0, r0, lsr r2
    dfc0:	4350088c 	cmpmi	r0, #140, 16	; 0x8c0000
    dfc4:	314d4954 	cmpcc	sp, r4, asr r9
    dfc8:	30783020 	rsbscc	r3, r8, r0, lsr #32
    dfcc:	30303030 	eorscc	r3, r0, r0, lsr r0
    dfd0:	00343030 	eorseq	r3, r4, r0, lsr r0
    dfd4:	50088d01 	andpl	r8, r8, r1, lsl #26
    dfd8:	52415543 	subpl	r5, r1, #281018368	; 0x10c00000
    dfdc:	30203054 	eorcc	r3, r0, r4, asr r0
    dfe0:	30303078 	eorscc	r3, r0, r8, ror r0
    dfe4:	30303030 	eorscc	r3, r0, r0, lsr r0
    dfe8:	8e010038 	mcrhi	0, 0, r0, cr1, cr8, {1}
    dfec:	55435008 	strbpl	r5, [r3, #-8]
    dff0:	31545241 	cmpcc	r4, r1, asr #4
    dff4:	30783020 	rsbscc	r3, r8, r0, lsr #32
    dff8:	30303030 	eorscc	r3, r0, r0, lsr r0
    dffc:	00303130 	eorseq	r3, r0, r0, lsr r1
    e000:	50088f01 	andpl	r8, r8, r1, lsl #30
    e004:	4d575043 	ldclmi	0, cr5, [r7, #-268]	; 0xfffffef4
    e008:	78302031 	ldmdavc	r0!, {r0, r4, r5, sp}
    e00c:	30303030 	eorscc	r3, r0, r0, lsr r0
    e010:	30343030 	eorscc	r3, r4, r0, lsr r0
    e014:	08900100 	ldmeq	r0, {r8}
    e018:	32494350 	subcc	r4, r9, #80, 6	; 0x40000001
    e01c:	30203043 	eorcc	r3, r0, r3, asr #32
    e020:	30303078 	eorscc	r3, r0, r8, ror r0
    e024:	38303030 	ldmdacc	r0!, {r4, r5, ip, sp}
    e028:	91010030 	tstls	r1, r0, lsr r0
    e02c:	53435008 	movtpl	r5, #12296	; 0x3008
    e030:	30204950 	eorcc	r4, r0, r0, asr r9
    e034:	30303078 	eorscc	r3, r0, r8, ror r0
    e038:	30313030 	eorscc	r3, r1, r0, lsr r0
    e03c:	92010030 	andls	r0, r1, #48	; 0x30
    e040:	52435008 	subpl	r5, r3, #8
    e044:	30204354 	eorcc	r4, r0, r4, asr r3
    e048:	30303078 	eorscc	r3, r0, r8, ror r0
    e04c:	30323030 	eorscc	r3, r2, r0, lsr r0
    e050:	93010030 	movwls	r0, #4144	; 0x1030
    e054:	53435008 	movtpl	r5, #12296	; 0x3008
    e058:	20315053 	eorscs	r5, r1, r3, asr r0
    e05c:	30307830 	eorscc	r7, r0, r0, lsr r8
    e060:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    e064:	01003030 	tsteq	r0, r0, lsr r0
    e068:	43500894 	cmpmi	r0, #148, 16	; 0x940000
    e06c:	20434d45 	subcs	r4, r3, r5, asr #26
    e070:	30307830 	eorscc	r7, r0, r0, lsr r8
    e074:	38303030 	ldmdacc	r0!, {r4, r5, ip, sp}
    e078:	01003030 	tsteq	r0, r0, lsr r0
    e07c:	43500895 	cmpmi	r0, #9764864	; 0x950000
    e080:	30204441 	eorcc	r4, r0, r1, asr #8
    e084:	30303078 	eorscc	r3, r0, r8, ror r0
    e088:	30303130 	eorscc	r3, r0, r0, lsr r1
    e08c:	96010030 			; <UNDEFINED> instruction: 0x96010030
    e090:	41435008 	cmpmi	r3, r8
    e094:	3020314e 	eorcc	r3, r0, lr, asr #2
    e098:	30303078 	eorscc	r3, r0, r8, ror r0
    e09c:	30303230 	eorscc	r3, r0, r0, lsr r2
    e0a0:	97010030 	smladxls	r1, r0, r0, r0
    e0a4:	41435008 	cmpmi	r3, r8
    e0a8:	3020324e 	eorcc	r3, r0, lr, asr #4
    e0ac:	30303078 	eorscc	r3, r0, r8, ror r0
    e0b0:	30303430 	eorscc	r3, r0, r0, lsr r4
    e0b4:	98010030 	stmdals	r1, {r4, r5}
    e0b8:	49435008 	stmdbmi	r3, {r3, ip, lr}^
    e0bc:	20314332 	eorscs	r4, r1, r2, lsr r3
    e0c0:	30307830 	eorscc	r7, r0, r0, lsr r8
    e0c4:	30303830 	eorscc	r3, r0, r0, lsr r8
    e0c8:	01003030 	tsteq	r0, r0, lsr r0
    e0cc:	43500899 	cmpmi	r0, #10027008	; 0x990000
    e0d0:	30505353 	subscc	r5, r0, r3, asr r3
    e0d4:	30783020 	rsbscc	r3, r8, r0, lsr #32
    e0d8:	30303230 	eorscc	r3, r0, r0, lsr r2
    e0dc:	00303030 	eorseq	r3, r0, r0, lsr r0
    e0e0:	50089a01 	andpl	r9, r8, r1, lsl #20
    e0e4:	4d495443 	cfstrdmi	mvd5, [r9, #-268]	; 0xfffffef4
    e0e8:	78302032 	ldmdavc	r0!, {r1, r4, r5, sp}
    e0ec:	30343030 	eorscc	r3, r4, r0, lsr r0
    e0f0:	30303030 	eorscc	r3, r0, r0, lsr r0
    e0f4:	089b0100 	ldmeq	fp, {r8}
    e0f8:	49544350 	ldmdbmi	r4, {r4, r6, r8, r9, lr}^
    e0fc:	3020334d 	eorcc	r3, r0, sp, asr #6
    e100:	38303078 	ldmdacc	r0!, {r3, r4, r5, r6, ip, sp}
    e104:	30303030 	eorscc	r3, r0, r0, lsr r0
    e108:	9c010030 	stcls	0, cr0, [r1], {48}	; 0x30
    e10c:	55435008 	strbpl	r5, [r3, #-8]
    e110:	32545241 	subscc	r5, r4, #268435460	; 0x10000004
    e114:	30783020 	rsbscc	r3, r8, r0, lsr #32
    e118:	30303031 	eorscc	r3, r0, r1, lsr r0
    e11c:	00303030 	eorseq	r3, r0, r0, lsr r0
    e120:	50089d01 	andpl	r9, r8, r1, lsl #26
    e124:	52415543 	subpl	r5, r1, #281018368	; 0x10c00000
    e128:	30203354 	eorcc	r3, r0, r4, asr r3
    e12c:	30323078 	eorscc	r3, r2, r8, ror r0
    e130:	30303030 	eorscc	r3, r0, r0, lsr r0
    e134:	9e010030 	mcrls	0, 0, r0, cr1, cr0, {1}
    e138:	49435008 	stmdbmi	r3, {r3, ip, lr}^
    e13c:	20324332 	eorscs	r4, r2, r2, lsr r3
    e140:	34307830 	ldrtcc	r7, [r0], #-2096	; 0xfffff7d0
    e144:	30303030 	eorscc	r3, r0, r0, lsr r0
    e148:	01003030 	tsteq	r0, r0, lsr r0
    e14c:	4350089f 	cmpmi	r0, #10420224	; 0x9f0000
    e150:	20533249 	subscs	r3, r3, r9, asr #4
    e154:	38307830 	ldmdacc	r0!, {r4, r5, fp, ip, sp, lr}
    e158:	30303030 	eorscc	r3, r0, r0, lsr r0
    e15c:	01003030 	tsteq	r0, r0, lsr r0
    e160:	435008a0 	cmpmi	r0, #160, 16	; 0xa00000
    e164:	20434453 	subcs	r4, r3, r3, asr r4
    e168:	30317830 	eorscc	r7, r1, r0, lsr r8
    e16c:	30303030 	eorscc	r3, r0, r0, lsr r0
    e170:	01003030 	tsteq	r0, r0, lsr r0
    e174:	435008a1 	cmpmi	r0, #10551296	; 0xa10000
    e178:	4d445047 	stclmi	0, cr5, [r4, #-284]	; 0xfffffee4
    e17c:	78302041 	ldmdavc	r0!, {r0, r6, sp}
    e180:	30303032 	eorscc	r3, r0, r2, lsr r0
    e184:	30303030 	eorscc	r3, r0, r0, lsr r0
    e188:	08a20100 	stmiaeq	r2!, {r8}
    e18c:	4e454350 	mcrmi	3, 2, r4, cr5, cr0, {2}
    e190:	30205445 	eorcc	r5, r0, r5, asr #8
    e194:	30303478 	eorscc	r3, r0, r8, ror r4
    e198:	30303030 	eorscc	r3, r0, r0, lsr r0
    e19c:	a3010030 	movwge	r0, #4144	; 0x1030
    e1a0:	55435008 	strbpl	r5, [r3, #-8]
    e1a4:	30204253 	eorcc	r4, r0, r3, asr r2
    e1a8:	30303878 	eorscc	r3, r0, r8, ror r8
    e1ac:	30303030 	eorscc	r3, r0, r0, lsr r0
    e1b0:	ac010030 	stcge	0, cr0, [r1], {48}	; 0x30
    e1b4:	56425f08 	strbpl	r5, [r2], -r8, lsl #30
    e1b8:	74696228 	strbtvc	r6, [r9], #-552	; 0xfffffdd8
    e1bc:	31282029 			; <UNDEFINED> instruction: 0x31282029
    e1c0:	69623c3c 	stmdbvs	r2!, {r2, r3, r4, r5, sl, fp, ip, sp}^
    e1c4:	01002974 	tsteq	r0, r4, ror r9
    e1c8:	4d4908ae 	stclmi	8, cr0, [r9, #-696]	; 0xfffffd48
    e1cc:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
    e1d0:	4e49425f 	mcrmi	2, 2, r4, cr9, cr15, {2}
    e1d4:	6c696628 	stclvs	6, cr6, [r9], #-160	; 0xffffff60
    e1d8:	79732c65 	ldmdbvc	r3!, {r0, r2, r5, r6, sl, fp, sp}^
    e1dc:	5f20296d 	svcpl	0x0020296d
    e1e0:	6d73615f 	ldfvse	f6, [r3, #-380]!	; 0xfffffe84
    e1e4:	22202820 	eorcs	r2, r0, #32, 16	; 0x200000
    e1e8:	6365732e 	cmnvs	r5, #-1207959552	; 0xb8000000
    e1ec:	6e6f6974 			; <UNDEFINED> instruction: 0x6e6f6974
    e1f0:	2e225c20 	cdpcs	12, 2, cr5, cr2, cr0, {1}
    e1f4:	61646f72 	smcvs	18162	; 0x46f2
    e1f8:	225c6174 	subscs	r6, ip, #116, 2
    e1fc:	20226e5c 	eorcs	r6, r2, ip, asr lr
    e200:	61622e22 	cmnvs	r2, r2, lsr #28
    e204:	6e67696c 	vnmulvs.f16	s13, s14, s25	; <UNPREDICTABLE>
    e208:	6e5c3420 	cdpvs	4, 5, cr3, cr12, cr0, {1}
    e20c:	2e222022 	cdpcs	0, 2, cr2, cr2, cr2, {1}
    e210:	626f6c67 	rsbvs	r6, pc, #26368	; 0x6700
    e214:	22206c61 	eorcs	r6, r0, #24832	; 0x6100
    e218:	79732320 	ldmdbvc	r3!, {r5, r8, r9, sp}^
    e21c:	5c22206d 	stcpl	0, cr2, [r2], #-436	; 0xfffffe4c
    e220:	2320226e 			; <UNDEFINED> instruction: 0x2320226e
    e224:	206d7973 	rsbcs	r7, sp, r3, ror r9
    e228:	6e5c3a22 	vnmlsvs.f32	s7, s24, s5
    e22c:	2e222022 	cdpcs	0, 2, cr2, cr2, cr2, {1}
    e230:	62636e69 	rsbvs	r6, r3, #1680	; 0x690
    e234:	5c206e69 	stcpl	14, cr6, [r0], #-420	; 0xfffffe5c
    e238:	66202222 	strtvs	r2, [r0], -r2, lsr #4
    e23c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    e240:	5c225c22 	stcpl	12, cr5, [r2], #-136	; 0xffffff78
    e244:	2220226e 	eorcs	r2, r0, #-536870906	; 0xe0000006
    e248:	7465732e 	strbtvc	r7, [r5], #-814	; 0xfffffcd2
    e24c:	6e655f20 	cdpvs	15, 6, cr5, cr5, cr0, {1}
    e250:	5f666f64 	svcpl	0x00666f64
    e254:	73232022 			; <UNDEFINED> instruction: 0x73232022
    e258:	22206d79 	eorcs	r6, r0, #7744	; 0x1e40
    e25c:	2022202c 	eorcs	r2, r2, ip, lsr #32
    e260:	6d797323 	ldclvs	3, cr7, [r9, #-140]!	; 0xffffff74
    e264:	6e5c2220 	cdpvs	2, 5, cr2, cr12, cr0, {1}
    e268:	2e222022 	cdpcs	0, 2, cr2, cr2, cr2, {1}
    e26c:	626f6c67 	rsbvs	r6, pc, #26368	; 0x6700
    e270:	5f206c61 	svcpl	0x00206c61
    e274:	6f646e65 	svcvs	0x00646e65
    e278:	20225f66 	eorcs	r5, r2, r6, ror #30
    e27c:	6d797323 	ldclvs	3, cr7, [r9, #-140]!	; 0xffffff74
    e280:	6e5c2220 	cdpvs	2, 5, cr2, cr12, cr0, {1}
    e284:	2e222022 	cdpcs	0, 2, cr2, cr2, cr2, {1}
    e288:	696c6162 	stmdbvs	ip!, {r1, r5, r6, r8, sp, lr}^
    e28c:	34206e67 	strtcc	r6, [r0], #-3687	; 0xfffff199
    e290:	20226e5c 	eorcs	r6, r2, ip, asr lr
    e294:	65732e22 	ldrbvs	r2, [r3, #-3618]!	; 0xfffff1de
    e298:	6f697463 	svcvs	0x00697463
    e29c:	225c206e 	subscs	r2, ip, #110	; 0x6e
    e2a0:	7865742e 	stmdavc	r5!, {r1, r2, r3, r5, sl, ip, sp, lr}^
    e2a4:	5c225c74 	stcpl	12, cr5, [r2], #-464	; 0xfffffe30
    e2a8:	0029226e 	eoreq	r2, r9, lr, ror #4
    e2ac:	4908b901 	stmdbmi	r8, {r0, r8, fp, ip, sp, pc}
    e2b0:	524f504d 	subpl	r5, pc, #77	; 0x4d
    e2b4:	49425f54 	stmdbmi	r2, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    e2b8:	41505f4e 	cmpmi	r0, lr, asr #30
    e2bc:	66285452 			; <UNDEFINED> instruction: 0x66285452
    e2c0:	2c656c69 	stclcs	12, cr6, [r5], #-420	; 0xfffffe5c
    e2c4:	2c73666f 	ldclcs	6, cr6, [r3], #-444	; 0xfffffe44
    e2c8:	2c7a6973 			; <UNDEFINED> instruction: 0x2c7a6973
    e2cc:	296d7973 	stmdbcs	sp!, {r0, r1, r4, r5, r6, r8, fp, ip, sp, lr}^
    e2d0:	615f5f20 	cmpvs	pc, r0, lsr #30
    e2d4:	28206d73 	stmdacs	r0!, {r0, r1, r4, r5, r6, r8, sl, fp, sp, lr}
    e2d8:	732e2220 			; <UNDEFINED> instruction: 0x732e2220
    e2dc:	69746365 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, r9, sp, lr}^
    e2e0:	5c206e6f 	stcpl	14, cr6, [r0], #-444	; 0xfffffe44
    e2e4:	6f722e22 	svcvs	0x00722e22
    e2e8:	61746164 	cmnvs	r4, r4, ror #2
    e2ec:	6e5c225c 	mrcvs	2, 2, r2, cr12, cr12, {2}
    e2f0:	2e222022 	cdpcs	0, 2, cr2, cr2, cr2, {1}
    e2f4:	696c6162 	stmdbvs	ip!, {r1, r5, r6, r8, sp, lr}^
    e2f8:	34206e67 	strtcc	r6, [r0], #-3687	; 0xfffff199
    e2fc:	20226e5c 	eorcs	r6, r2, ip, asr lr
    e300:	6c672e22 	stclvs	14, cr2, [r7], #-136	; 0xffffff78
    e304:	6c61626f 	sfmvs	f6, 2, [r1], #-444	; 0xfffffe44
    e308:	23202220 			; <UNDEFINED> instruction: 0x23202220
    e30c:	206d7973 	rsbcs	r7, sp, r3, ror r9
    e310:	226e5c22 	rsbcs	r5, lr, #8704	; 0x2200
    e314:	79732320 	ldmdbvc	r3!, {r5, r8, r9, sp}^
    e318:	3a22206d 	bcc	8964d4 <__mprec_tinytens+0x871c64>
    e31c:	20226e5c 	eorcs	r6, r2, ip, asr lr
    e320:	6e692e22 	cdpvs	14, 6, cr2, cr9, cr2, {1}
    e324:	6e696263 	cdpvs	2, 6, cr6, cr9, cr3, {3}
    e328:	22225c20 	eorcs	r5, r2, #32, 24	; 0x2000
    e32c:	6c696620 	stclvs	6, cr6, [r9], #-128	; 0xffffff80
    e330:	5c222065 	stcpl	0, cr2, [r2], #-404	; 0xfffffe6c
    e334:	20222c22 	eorcs	r2, r2, r2, lsr #24
    e338:	73666f23 	cmnvc	r6, #35, 30	; 0x8c
    e33c:	222c2220 	eorcs	r2, ip, #32, 4
    e340:	69732320 	ldmdbvs	r3!, {r5, r8, r9, sp}^
    e344:	5c22207a 	stcpl	0, cr2, [r2], #-488	; 0xfffffe18
    e348:	2220226e 	eorcs	r2, r0, #-536870906	; 0xe0000006
    e34c:	7465732e 	strbtvc	r7, [r5], #-814	; 0xfffffcd2
    e350:	6e655f20 	cdpvs	15, 6, cr5, cr5, cr0, {1}
    e354:	5f666f64 	svcpl	0x00666f64
    e358:	73232022 			; <UNDEFINED> instruction: 0x73232022
    e35c:	22206d79 	eorcs	r6, r0, #7744	; 0x1e40
    e360:	2022202c 	eorcs	r2, r2, ip, lsr #32
    e364:	6d797323 	ldclvs	3, cr7, [r9, #-140]!	; 0xffffff74
    e368:	6e5c2220 	cdpvs	2, 5, cr2, cr12, cr0, {1}
    e36c:	2e222022 	cdpcs	0, 2, cr2, cr2, cr2, {1}
    e370:	626f6c67 	rsbvs	r6, pc, #26368	; 0x6700
    e374:	5f206c61 	svcpl	0x00206c61
    e378:	6f646e65 	svcvs	0x00646e65
    e37c:	20225f66 	eorcs	r5, r2, r6, ror #30
    e380:	6d797323 	ldclvs	3, cr7, [r9, #-140]!	; 0xffffff74
    e384:	6e5c2220 	cdpvs	2, 5, cr2, cr12, cr0, {1}
    e388:	2e222022 	cdpcs	0, 2, cr2, cr2, cr2, {1}
    e38c:	696c6162 	stmdbvs	ip!, {r1, r5, r6, r8, sp, lr}^
    e390:	34206e67 	strtcc	r6, [r0], #-3687	; 0xfffff199
    e394:	20226e5c 	eorcs	r6, r2, ip, asr lr
    e398:	65732e22 	ldrbvs	r2, [r3, #-3618]!	; 0xfffff1de
    e39c:	6f697463 	svcvs	0x00697463
    e3a0:	225c206e 	subscs	r2, ip, #110	; 0x6e
    e3a4:	7865742e 	stmdavc	r5!, {r1, r2, r3, r5, sl, ip, sp, lr}^
    e3a8:	5c225c74 	stcpl	12, cr5, [r2], #-464	; 0xfffffe30
    e3ac:	0029226e 	eoreq	r2, r9, lr, ror #4
    e3b0:	46098b01 	strmi	r8, [r9], -r1, lsl #22
    e3b4:	44304f49 	ldrtmi	r4, [r0], #-3913	; 0xfffff0b7
    e3b8:	415f5249 	cmpmi	pc, r9, asr #4
    e3bc:	30205244 	eorcc	r5, r0, r4, asr #4
    e3c0:	46463378 			; <UNDEFINED> instruction: 0x46463378
    e3c4:	30304346 	eorscc	r4, r0, r6, asr #6
    e3c8:	8c010030 	stchi	0, cr0, [r1], {48}	; 0x30
    e3cc:	4f494609 	svcmi	0x00494609
    e3d0:	52494431 	subpl	r4, r9, #822083584	; 0x31000000
    e3d4:	5244415f 	subpl	r4, r4, #-1073741801	; 0xc0000017
    e3d8:	33783020 	cmncc	r8, #32
    e3dc:	43464646 	movtmi	r4, #26182	; 0x6646
    e3e0:	00303230 	eorseq	r3, r0, r0, lsr r2
    e3e4:	46098d01 	strmi	r8, [r9], -r1, lsl #26
    e3e8:	44324f49 	ldrtmi	r4, [r2], #-3913	; 0xfffff0b7
    e3ec:	415f5249 	cmpmi	pc, r9, asr #4
    e3f0:	30205244 	eorcc	r5, r0, r4, asr #4
    e3f4:	46463378 			; <UNDEFINED> instruction: 0x46463378
    e3f8:	34304346 	ldrtcc	r4, [r0], #-838	; 0xfffffcba
    e3fc:	8e010030 	mcrhi	0, 0, r0, cr1, cr0, {1}
    e400:	4f494609 	svcmi	0x00494609
    e404:	52494433 	subpl	r4, r9, #855638016	; 0x33000000
    e408:	5244415f 	subpl	r4, r4, #-1073741801	; 0xc0000017
    e40c:	33783020 	cmncc	r8, #32
    e410:	43464646 	movtmi	r4, #26182	; 0x6646
    e414:	00303630 	eorseq	r3, r0, r0, lsr r6
    e418:	46098f01 	strmi	r8, [r9], -r1, lsl #30
    e41c:	44344f49 	ldrtmi	r4, [r4], #-3913	; 0xfffff0b7
    e420:	415f5249 	cmpmi	pc, r9, asr #4
    e424:	30205244 	eorcc	r5, r0, r4, asr #4
    e428:	46463378 			; <UNDEFINED> instruction: 0x46463378
    e42c:	38304346 	ldmdacc	r0!, {r1, r2, r6, r8, r9, lr}
    e430:	91010030 	tstls	r1, r0, lsr r0
    e434:	4f494609 	svcmi	0x00494609
    e438:	4e495030 	mcrmi	0, 2, r5, cr9, cr0, {1}
    e43c:	5244415f 	subpl	r4, r4, #-1073741801	; 0xc0000017
    e440:	33783020 	cmncc	r8, #32
    e444:	43464646 	movtmi	r4, #26182	; 0x6646
    e448:	00343130 	eorseq	r3, r4, r0, lsr r1
    e44c:	46099201 	strmi	r9, [r9], -r1, lsl #4
    e450:	50314f49 	eorspl	r4, r1, r9, asr #30
    e454:	415f4e49 	cmpmi	pc, r9, asr #28
    e458:	30205244 	eorcc	r5, r0, r4, asr #4
    e45c:	46463378 			; <UNDEFINED> instruction: 0x46463378
    e460:	33304346 	teqcc	r0, #402653185	; 0x18000001
    e464:	93010034 	movwls	r0, #4148	; 0x1034
    e468:	4f494609 	svcmi	0x00494609
    e46c:	4e495032 	mcrmi	0, 2, r5, cr9, cr2, {1}
    e470:	5244415f 	subpl	r4, r4, #-1073741801	; 0xc0000017
    e474:	33783020 	cmncc	r8, #32
    e478:	43464646 	movtmi	r4, #26182	; 0x6646
    e47c:	00343530 	eorseq	r3, r4, r0, lsr r5
    e480:	46099401 	strmi	r9, [r9], -r1, lsl #8
    e484:	50334f49 	eorspl	r4, r3, r9, asr #30
    e488:	415f4e49 	cmpmi	pc, r9, asr #28
    e48c:	30205244 	eorcc	r5, r0, r4, asr #4
    e490:	46463378 			; <UNDEFINED> instruction: 0x46463378
    e494:	37304346 	ldrcc	r4, [r0, -r6, asr #6]!
    e498:	95010034 	strls	r0, [r1, #-52]	; 0xffffffcc
    e49c:	4f494609 	svcmi	0x00494609
    e4a0:	4e495034 	mcrmi	0, 2, r5, cr9, cr4, {1}
    e4a4:	5244415f 	subpl	r4, r4, #-1073741801	; 0xc0000017
    e4a8:	33783020 	cmncc	r8, #32
    e4ac:	43464646 	movtmi	r4, #26182	; 0x6646
    e4b0:	00343930 	eorseq	r3, r4, r0, lsr r9
    e4b4:	46099701 	strmi	r9, [r9], -r1, lsl #14
    e4b8:	53304f49 	teqpl	r0, #292	; 0x124
    e4bc:	415f5445 	cmpmi	pc, r5, asr #8
    e4c0:	30205244 	eorcc	r5, r0, r4, asr #4
    e4c4:	46463378 			; <UNDEFINED> instruction: 0x46463378
    e4c8:	31304346 	teqcc	r0, r6, asr #6
    e4cc:	98010038 	stmdals	r1, {r3, r4, r5}
    e4d0:	4f494609 	svcmi	0x00494609
    e4d4:	54455331 	strbpl	r5, [r5], #-817	; 0xfffffccf
    e4d8:	5244415f 	subpl	r4, r4, #-1073741801	; 0xc0000017
    e4dc:	33783020 	cmncc	r8, #32
    e4e0:	43464646 	movtmi	r4, #26182	; 0x6646
    e4e4:	00383330 	eorseq	r3, r8, r0, lsr r3
    e4e8:	46099901 	strmi	r9, [r9], -r1, lsl #18
    e4ec:	53324f49 	teqpl	r2, #292	; 0x124
    e4f0:	415f5445 	cmpmi	pc, r5, asr #8
    e4f4:	30205244 	eorcc	r5, r0, r4, asr #4
    e4f8:	46463378 			; <UNDEFINED> instruction: 0x46463378
    e4fc:	35304346 	ldrcc	r4, [r0, #-838]!	; 0xfffffcba
    e500:	9a010038 	bls	4e5e8 <__mprec_tinytens+0x29d78>
    e504:	4f494609 	svcmi	0x00494609
    e508:	54455333 	strbpl	r5, [r5], #-819	; 0xfffffccd
    e50c:	5244415f 	subpl	r4, r4, #-1073741801	; 0xc0000017
    e510:	33783020 	cmncc	r8, #32
    e514:	43464646 	movtmi	r4, #26182	; 0x6646
    e518:	00383730 	eorseq	r3, r8, r0, lsr r7
    e51c:	46099b01 	strmi	r9, [r9], -r1, lsl #22
    e520:	53344f49 	teqpl	r4, #292	; 0x124
    e524:	415f5445 	cmpmi	pc, r5, asr #8
    e528:	30205244 	eorcc	r5, r0, r4, asr #4
    e52c:	46463378 			; <UNDEFINED> instruction: 0x46463378
    e530:	39304346 	ldmdbcc	r0!, {r1, r2, r6, r8, r9, lr}
    e534:	9d010038 	stcls	0, cr0, [r1, #-224]	; 0xffffff20
    e538:	4f494609 	svcmi	0x00494609
    e53c:	524c4330 	subpl	r4, ip, #48, 6	; 0xc0000000
    e540:	5244415f 	subpl	r4, r4, #-1073741801	; 0xc0000017
    e544:	33783020 	cmncc	r8, #32
    e548:	43464646 	movtmi	r4, #26182	; 0x6646
    e54c:	00433130 	subeq	r3, r3, r0, lsr r1
    e550:	46099e01 	strmi	r9, [r9], -r1, lsl #28
    e554:	43314f49 	teqmi	r1, #292	; 0x124
    e558:	415f524c 	cmpmi	pc, ip, asr #4
    e55c:	30205244 	eorcc	r5, r0, r4, asr #4
    e560:	46463378 			; <UNDEFINED> instruction: 0x46463378
    e564:	33304346 	teqcc	r0, #402653185	; 0x18000001
    e568:	9f010043 	svcls	0x00010043
    e56c:	4f494609 	svcmi	0x00494609
    e570:	524c4332 	subpl	r4, ip, #-939524096	; 0xc8000000
    e574:	5244415f 	subpl	r4, r4, #-1073741801	; 0xc0000017
    e578:	33783020 	cmncc	r8, #32
    e57c:	43464646 	movtmi	r4, #26182	; 0x6646
    e580:	00433530 	subeq	r3, r3, r0, lsr r5
    e584:	4609a001 	strmi	sl, [r9], -r1
    e588:	43334f49 	teqmi	r3, #292	; 0x124
    e58c:	415f524c 	cmpmi	pc, ip, asr #4
    e590:	30205244 	eorcc	r5, r0, r4, asr #4
    e594:	46463378 			; <UNDEFINED> instruction: 0x46463378
    e598:	37304346 	ldrcc	r4, [r0, -r6, asr #6]!
    e59c:	a1010043 	tstge	r1, r3, asr #32
    e5a0:	4f494609 	svcmi	0x00494609
    e5a4:	524c4334 	subpl	r4, ip, #52, 6	; 0xd0000000
    e5a8:	5244415f 	subpl	r4, r4, #-1073741801	; 0xc0000017
    e5ac:	33783020 	cmncc	r8, #32
    e5b0:	43464646 	movtmi	r4, #26182	; 0x6646
    e5b4:	00433930 	subeq	r3, r3, r0, lsr r9
    e5b8:	4609a301 	strmi	sl, [r9], -r1, lsl #6
    e5bc:	44304f49 	ldrtmi	r4, [r0], #-3913	; 0xfffff0b7
    e5c0:	425f5249 	subsmi	r5, pc, #-1879048188	; 0x90000004
    e5c4:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e5c8:	616c6f76 	smcvs	50934	; 0xc6f6
    e5cc:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e5d0:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e5d4:	20746375 	rsbscs	r6, r4, r5, ror r3
    e5d8:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e5dc:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e5e0:	44304f49 	ldrtmi	r4, [r0], #-3913	; 0xfffff0b7
    e5e4:	415f5249 	cmpmi	pc, r9, asr #4
    e5e8:	00295244 	eoreq	r5, r9, r4, asr #4
    e5ec:	4609a401 	strmi	sl, [r9], -r1, lsl #8
    e5f0:	44314f49 	ldrtmi	r4, [r1], #-3913	; 0xfffff0b7
    e5f4:	425f5249 	subsmi	r5, pc, #-1879048188	; 0x90000004
    e5f8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e5fc:	616c6f76 	smcvs	50934	; 0xc6f6
    e600:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e604:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e608:	20746375 	rsbscs	r6, r4, r5, ror r3
    e60c:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e610:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e614:	44314f49 	ldrtmi	r4, [r1], #-3913	; 0xfffff0b7
    e618:	415f5249 	cmpmi	pc, r9, asr #4
    e61c:	00295244 	eoreq	r5, r9, r4, asr #4
    e620:	4609a501 	strmi	sl, [r9], -r1, lsl #10
    e624:	44324f49 	ldrtmi	r4, [r2], #-3913	; 0xfffff0b7
    e628:	425f5249 	subsmi	r5, pc, #-1879048188	; 0x90000004
    e62c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e630:	616c6f76 	smcvs	50934	; 0xc6f6
    e634:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e638:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e63c:	20746375 	rsbscs	r6, r4, r5, ror r3
    e640:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e644:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e648:	44324f49 	ldrtmi	r4, [r2], #-3913	; 0xfffff0b7
    e64c:	415f5249 	cmpmi	pc, r9, asr #4
    e650:	00295244 	eoreq	r5, r9, r4, asr #4
    e654:	4609a601 	strmi	sl, [r9], -r1, lsl #12
    e658:	44334f49 	ldrtmi	r4, [r3], #-3913	; 0xfffff0b7
    e65c:	425f5249 	subsmi	r5, pc, #-1879048188	; 0x90000004
    e660:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e664:	616c6f76 	smcvs	50934	; 0xc6f6
    e668:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e66c:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e670:	20746375 	rsbscs	r6, r4, r5, ror r3
    e674:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e678:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e67c:	44334f49 	ldrtmi	r4, [r3], #-3913	; 0xfffff0b7
    e680:	415f5249 	cmpmi	pc, r9, asr #4
    e684:	00295244 	eoreq	r5, r9, r4, asr #4
    e688:	4609a701 	strmi	sl, [r9], -r1, lsl #14
    e68c:	44344f49 	ldrtmi	r4, [r4], #-3913	; 0xfffff0b7
    e690:	425f5249 	subsmi	r5, pc, #-1879048188	; 0x90000004
    e694:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e698:	616c6f76 	smcvs	50934	; 0xc6f6
    e69c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e6a0:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e6a4:	20746375 	rsbscs	r6, r4, r5, ror r3
    e6a8:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e6ac:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e6b0:	44344f49 	ldrtmi	r4, [r4], #-3913	; 0xfffff0b7
    e6b4:	415f5249 	cmpmi	pc, r9, asr #4
    e6b8:	00295244 	eoreq	r5, r9, r4, asr #4
    e6bc:	4609a901 	strmi	sl, [r9], -r1, lsl #18
    e6c0:	50304f49 	eorspl	r4, r0, r9, asr #30
    e6c4:	425f4e49 	subsmi	r4, pc, #1168	; 0x490
    e6c8:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e6cc:	616c6f76 	smcvs	50934	; 0xc6f6
    e6d0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e6d4:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e6d8:	20746375 	rsbscs	r6, r4, r5, ror r3
    e6dc:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e6e0:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e6e4:	50304f49 	eorspl	r4, r0, r9, asr #30
    e6e8:	415f4e49 	cmpmi	pc, r9, asr #28
    e6ec:	00295244 	eoreq	r5, r9, r4, asr #4
    e6f0:	4609aa01 	strmi	sl, [r9], -r1, lsl #20
    e6f4:	50314f49 	eorspl	r4, r1, r9, asr #30
    e6f8:	425f4e49 	subsmi	r4, pc, #1168	; 0x490
    e6fc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e700:	616c6f76 	smcvs	50934	; 0xc6f6
    e704:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e708:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e70c:	20746375 	rsbscs	r6, r4, r5, ror r3
    e710:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e714:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e718:	50314f49 	eorspl	r4, r1, r9, asr #30
    e71c:	415f4e49 	cmpmi	pc, r9, asr #28
    e720:	00295244 	eoreq	r5, r9, r4, asr #4
    e724:	4609ab01 	strmi	sl, [r9], -r1, lsl #22
    e728:	50324f49 	eorspl	r4, r2, r9, asr #30
    e72c:	425f4e49 	subsmi	r4, pc, #1168	; 0x490
    e730:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e734:	616c6f76 	smcvs	50934	; 0xc6f6
    e738:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e73c:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e740:	20746375 	rsbscs	r6, r4, r5, ror r3
    e744:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e748:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e74c:	50324f49 	eorspl	r4, r2, r9, asr #30
    e750:	415f4e49 	cmpmi	pc, r9, asr #28
    e754:	00295244 	eoreq	r5, r9, r4, asr #4
    e758:	4609ac01 	strmi	sl, [r9], -r1, lsl #24
    e75c:	50334f49 	eorspl	r4, r3, r9, asr #30
    e760:	425f4e49 	subsmi	r4, pc, #1168	; 0x490
    e764:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e768:	616c6f76 	smcvs	50934	; 0xc6f6
    e76c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e770:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e774:	20746375 	rsbscs	r6, r4, r5, ror r3
    e778:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e77c:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e780:	50334f49 	eorspl	r4, r3, r9, asr #30
    e784:	415f4e49 	cmpmi	pc, r9, asr #28
    e788:	00295244 	eoreq	r5, r9, r4, asr #4
    e78c:	4609ad01 	strmi	sl, [r9], -r1, lsl #26
    e790:	50344f49 	eorspl	r4, r4, r9, asr #30
    e794:	425f4e49 	subsmi	r4, pc, #1168	; 0x490
    e798:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e79c:	616c6f76 	smcvs	50934	; 0xc6f6
    e7a0:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e7a4:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e7a8:	20746375 	rsbscs	r6, r4, r5, ror r3
    e7ac:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e7b0:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e7b4:	50344f49 	eorspl	r4, r4, r9, asr #30
    e7b8:	415f4e49 	cmpmi	pc, r9, asr #28
    e7bc:	00295244 	eoreq	r5, r9, r4, asr #4
    e7c0:	4609af01 	strmi	sl, [r9], -r1, lsl #30
    e7c4:	53304f49 	teqpl	r0, #292	; 0x124
    e7c8:	425f5445 	subsmi	r5, pc, #1157627904	; 0x45000000
    e7cc:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e7d0:	616c6f76 	smcvs	50934	; 0xc6f6
    e7d4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e7d8:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e7dc:	20746375 	rsbscs	r6, r4, r5, ror r3
    e7e0:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e7e4:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e7e8:	53304f49 	teqpl	r0, #292	; 0x124
    e7ec:	415f5445 	cmpmi	pc, r5, asr #8
    e7f0:	00295244 	eoreq	r5, r9, r4, asr #4
    e7f4:	4609b001 	strmi	fp, [r9], -r1
    e7f8:	53314f49 	teqpl	r1, #292	; 0x124
    e7fc:	425f5445 	subsmi	r5, pc, #1157627904	; 0x45000000
    e800:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e804:	616c6f76 	smcvs	50934	; 0xc6f6
    e808:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e80c:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e810:	20746375 	rsbscs	r6, r4, r5, ror r3
    e814:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e818:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e81c:	53314f49 	teqpl	r1, #292	; 0x124
    e820:	415f5445 	cmpmi	pc, r5, asr #8
    e824:	00295244 	eoreq	r5, r9, r4, asr #4
    e828:	4609b101 	strmi	fp, [r9], -r1, lsl #2
    e82c:	53324f49 	teqpl	r2, #292	; 0x124
    e830:	425f5445 	subsmi	r5, pc, #1157627904	; 0x45000000
    e834:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e838:	616c6f76 	smcvs	50934	; 0xc6f6
    e83c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e840:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e844:	20746375 	rsbscs	r6, r4, r5, ror r3
    e848:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e84c:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e850:	53324f49 	teqpl	r2, #292	; 0x124
    e854:	415f5445 	cmpmi	pc, r5, asr #8
    e858:	00295244 	eoreq	r5, r9, r4, asr #4
    e85c:	4609b201 	strmi	fp, [r9], -r1, lsl #4
    e860:	53334f49 	teqpl	r3, #292	; 0x124
    e864:	425f5445 	subsmi	r5, pc, #1157627904	; 0x45000000
    e868:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e86c:	616c6f76 	smcvs	50934	; 0xc6f6
    e870:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e874:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e878:	20746375 	rsbscs	r6, r4, r5, ror r3
    e87c:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e880:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e884:	53334f49 	teqpl	r3, #292	; 0x124
    e888:	415f5445 	cmpmi	pc, r5, asr #8
    e88c:	00295244 	eoreq	r5, r9, r4, asr #4
    e890:	4609b301 	strmi	fp, [r9], -r1, lsl #6
    e894:	53344f49 	teqpl	r4, #292	; 0x124
    e898:	425f5445 	subsmi	r5, pc, #1157627904	; 0x45000000
    e89c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e8a0:	616c6f76 	smcvs	50934	; 0xc6f6
    e8a4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e8a8:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e8ac:	20746375 	rsbscs	r6, r4, r5, ror r3
    e8b0:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e8b4:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e8b8:	53344f49 	teqpl	r4, #292	; 0x124
    e8bc:	415f5445 	cmpmi	pc, r5, asr #8
    e8c0:	00295244 	eoreq	r5, r9, r4, asr #4
    e8c4:	4609b501 	strmi	fp, [r9], -r1, lsl #10
    e8c8:	43304f49 	teqmi	r0, #292	; 0x124
    e8cc:	425f524c 	subsmi	r5, pc, #76, 4	; 0xc0000004
    e8d0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e8d4:	616c6f76 	smcvs	50934	; 0xc6f6
    e8d8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e8dc:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e8e0:	20746375 	rsbscs	r6, r4, r5, ror r3
    e8e4:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e8e8:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e8ec:	43304f49 	teqmi	r0, #292	; 0x124
    e8f0:	415f524c 	cmpmi	pc, ip, asr #4
    e8f4:	00295244 	eoreq	r5, r9, r4, asr #4
    e8f8:	4609b601 	strmi	fp, [r9], -r1, lsl #12
    e8fc:	43314f49 	teqmi	r1, #292	; 0x124
    e900:	425f524c 	subsmi	r5, pc, #76, 4	; 0xc0000004
    e904:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e908:	616c6f76 	smcvs	50934	; 0xc6f6
    e90c:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e910:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e914:	20746375 	rsbscs	r6, r4, r5, ror r3
    e918:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e91c:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e920:	43314f49 	teqmi	r1, #292	; 0x124
    e924:	415f524c 	cmpmi	pc, ip, asr #4
    e928:	00295244 	eoreq	r5, r9, r4, asr #4
    e92c:	4609b701 	strmi	fp, [r9], -r1, lsl #14
    e930:	43324f49 	teqmi	r2, #292	; 0x124
    e934:	425f524c 	subsmi	r5, pc, #76, 4	; 0xc0000004
    e938:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e93c:	616c6f76 	smcvs	50934	; 0xc6f6
    e940:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e944:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e948:	20746375 	rsbscs	r6, r4, r5, ror r3
    e94c:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e950:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e954:	43324f49 	teqmi	r2, #292	; 0x124
    e958:	415f524c 	cmpmi	pc, ip, asr #4
    e95c:	00295244 	eoreq	r5, r9, r4, asr #4
    e960:	4609b801 	strmi	fp, [r9], -r1, lsl #16
    e964:	43334f49 	teqmi	r3, #292	; 0x124
    e968:	425f524c 	subsmi	r5, pc, #76, 4	; 0xc0000004
    e96c:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e970:	616c6f76 	smcvs	50934	; 0xc6f6
    e974:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e978:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e97c:	20746375 	rsbscs	r6, r4, r5, ror r3
    e980:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e984:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e988:	43334f49 	teqmi	r3, #292	; 0x124
    e98c:	415f524c 	cmpmi	pc, ip, asr #4
    e990:	00295244 	eoreq	r5, r9, r4, asr #4
    e994:	4609b901 	strmi	fp, [r9], -r1, lsl #18
    e998:	43344f49 	teqmi	r4, #292	; 0x124
    e99c:	425f524c 	subsmi	r5, pc, #76, 4	; 0xc0000004
    e9a0:	282a2820 	stmdacs	sl!, {r5, fp, sp}
    e9a4:	616c6f76 	smcvs	50934	; 0xc6f6
    e9a8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    e9ac:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    e9b0:	20746375 	rsbscs	r6, r4, r5, ror r3
    e9b4:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
    e9b8:	46292a20 	strtmi	r2, [r9], -r0, lsr #20
    e9bc:	43344f49 	teqmi	r4, #292	; 0x124
    e9c0:	415f524c 	cmpmi	pc, ip, asr #4
    e9c4:	00295244 	eoreq	r5, r9, r4, asr #4
    e9c8:	0e030304 	cdpeq	3, 0, cr0, cr3, cr4, {0}
    e9cc:	425f0201 	subsmi	r0, pc, #268435456	; 0x10000000
    e9d0:	32534f49 	subscc	r4, r3, #292	; 0x124
    e9d4:	5f383833 	svcpl	0x00383833
    e9d8:	00205f48 	eoreq	r5, r0, r8, asr #30
    e9dc:	78651201 	stmdavc	r5!, {r0, r9, ip}^
    e9e0:	78287469 	stmdavc	r8!, {r0, r3, r5, r6, sl, ip, sp, lr}
    e9e4:	79732029 	ldmdbvc	r3!, {r0, r3, r5, sp}^
    e9e8:	78655f73 	stmdavc	r5!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    e9ec:	78287469 	stmdavc	r8!, {r0, r3, r5, r6, sl, ip, sp, lr}
    e9f0:	15010029 	strne	r0, [r1, #-41]	; 0xffffffd7
    e9f4:	66733264 	ldrbtvs	r3, [r3], -r4, ror #4
    e9f8:	642c6228 	strtvs	r6, [ip], #-552	; 0xfffffdd8
    e9fc:	702c772c 	eorvc	r7, ip, ip, lsr #14
    ea00:	645f2029 	ldrbvs	r2, [pc], #-41	; ea08 <acos+0xd0>
    ea04:	73326c62 	teqvc	r2, #25088	; 0x6200
    ea08:	62287274 	eorvs	r7, r8, #116, 4	; 0x40000007
    ea0c:	2c64202c 	stclcs	0, cr2, [r4], #-176	; 0xffffff50
    ea10:	202c7720 	eorcs	r7, ip, r0, lsr #14
    ea14:	27202c70 			; <UNDEFINED> instruction: 0x27202c70
    ea18:	00292766 	eoreq	r2, r9, r6, ror #14
    ea1c:	32641601 	rsbcc	r1, r4, #1048576	; 0x100000
    ea20:	62286573 	eorvs	r6, r8, #482344960	; 0x1cc00000
    ea24:	772c642c 	strvc	r6, [ip, -ip, lsr #8]!
    ea28:	2029702c 	eorcs	r7, r9, ip, lsr #32
    ea2c:	6c62645f 	cfstrdvs	mvd6, [r2], #-380	; 0xfffffe84
    ea30:	72747332 	rsbsvc	r7, r4, #-939524096	; 0xc8000000
    ea34:	202c6228 	eorcs	r6, ip, r8, lsr #4
    ea38:	77202c64 	strvc	r2, [r0, -r4, ror #24]!
    ea3c:	2c70202c 	ldclcs	0, cr2, [r0], #-176	; 0xffffff50
    ea40:	27652720 	strbcs	r2, [r5, -r0, lsr #14]!
    ea44:	17010029 	strne	r0, [r1, -r9, lsr #32]
    ea48:	67733264 	ldrbvs	r3, [r3, -r4, ror #4]!
    ea4c:	642c6228 	strtvs	r6, [ip], #-552	; 0xfffffdd8
    ea50:	702c772c 	eorvc	r7, ip, ip, lsr #14
    ea54:	645f2029 	ldrbvs	r2, [pc], #-41	; ea5c <acos+0x124>
    ea58:	73326c62 	teqvc	r2, #25088	; 0x6200
    ea5c:	62287274 	eorvs	r7, r8, #116, 4	; 0x40000007
    ea60:	2c64202c 	stclcs	0, cr2, [r4], #-176	; 0xffffff50
    ea64:	202c7720 	eorcs	r7, ip, r0, lsr #14
    ea68:	27202c70 			; <UNDEFINED> instruction: 0x27202c70
    ea6c:	00292767 	eoreq	r2, r9, r7, ror #14
    ea70:	07040304 	streq	r0, [r4, -r4, lsl #6]
    ea74:	445f0601 	ldrbmi	r0, [pc], #-1537	; ea7c <asin+0x1c>
    ea78:	494b5349 	stmdbmi	fp, {r0, r3, r6, r8, r9, ip, lr}^
    ea7c:	45445f4f 	strbmi	r5, [r4, #-3919]	; 0xfffff0b1
    ea80:	454e4946 	strbmi	r4, [lr, #-2374]	; 0xfffff6ba
    ea84:	03002044 	movweq	r2, #68	; 0x44
    ea88:	0601050c 	streq	r0, [r1], -ip, lsl #10
    ea8c:	5f46465f 	svcpl	0x0046465f
    ea90:	45544e49 	ldrbmi	r4, [r4, #-3657]	; 0xfffff1b7
    ea94:	20524547 	subscs	r4, r2, r7, asr #10
    ea98:	28010400 	stmdacs	r1, {sl}
    ea9c:	5f415453 	svcpl	0x00415453
    eaa0:	4e494f4e 	cdpmi	15, 4, cr4, cr9, cr14, {2}
    eaa4:	30205449 	eorcc	r5, r0, r9, asr #8
    eaa8:	00313078 	eorseq	r3, r1, r8, ror r0
    eaac:	54532901 	ldrbpl	r2, [r3], #-2305	; 0xfffff6ff
    eab0:	4f4e5f41 	svcmi	0x004e5f41
    eab4:	4b534944 	blmi	14e0fcc <__mprec_tinytens+0x14bc75c>
    eab8:	30783020 	rsbscc	r3, r8, r0, lsr #32
    eabc:	2a010032 	bcs	4eb8c <__mprec_tinytens+0x2a31c>
    eac0:	5f415453 	svcpl	0x00415453
    eac4:	544f5250 	strbpl	r5, [pc], #-592	; eacc <asin+0x6c>
    eac8:	20544345 	subscs	r4, r4, r5, asr #6
    eacc:	34307830 	ldrtcc	r7, [r0], #-2096	; 0xfffff7d0
    ead0:	43300100 	teqmi	r0, #0, 2
    ead4:	5f4c5254 	svcpl	0x004c5254
    ead8:	434e5953 	movtmi	r5, #59731	; 0xe953
    eadc:	01003020 	tsteq	r0, r0, lsr #32
    eae0:	54454731 	strbpl	r4, [r5], #-1841	; 0xfffff8cf
    eae4:	4345535f 	movtmi	r5, #21343	; 0x535f
    eae8:	5f524f54 	svcpl	0x00524f54
    eaec:	4e554f43 	cdpmi	15, 5, cr4, cr5, cr3, {2}
    eaf0:	00312054 	eorseq	r2, r1, r4, asr r0
    eaf4:	45473201 	strbmi	r3, [r7, #-513]	; 0xfffffdff
    eaf8:	45535f54 	ldrbmi	r5, [r3, #-3924]	; 0xfffff0ac
    eafc:	524f5443 	subpl	r5, pc, #1124073472	; 0x43000000
    eb00:	5a49535f 	bpl	1263884 <__mprec_tinytens+0x123f014>
    eb04:	00322045 	eorseq	r2, r2, r5, asr #32
    eb08:	45473301 	strbmi	r3, [r7, #-769]	; 0xfffffcff
    eb0c:	4c425f54 	mcrrmi	15, 5, r5, r2, cr4
    eb10:	5f4b434f 	svcpl	0x004b434f
    eb14:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    eb18:	01003320 	tsteq	r0, r0, lsr #6
    eb1c:	52544334 	subspl	r4, r4, #52, 6	; 0xd0000000
    eb20:	52545f4c 	subspl	r5, r4, #76, 30	; 0x130
    eb24:	34204d49 	strtcc	r4, [r0], #-3401	; 0xfffff2b7
    eb28:	43370100 	teqmi	r7, #0, 2
    eb2c:	5f4c5254 	svcpl	0x004c5254
    eb30:	45574f50 	ldrbmi	r4, [r7, #-3920]	; 0xfffff0b0
    eb34:	00352052 	eorseq	r2, r5, r2, asr r0
    eb38:	54433801 	strbpl	r3, [r3], #-2049	; 0xfffff7ff
    eb3c:	4c5f4c52 	mrrcmi	12, 5, r4, pc, cr2	; <UNPREDICTABLE>
    eb40:	204b434f 	subcs	r4, fp, pc, asr #6
    eb44:	39010036 	stmdbcc	r1, {r1, r2, r4, r5}
    eb48:	4c525443 	cfldrdmi	mvd5, [r2], {67}	; 0x43
    eb4c:	454a455f 	strbmi	r4, [sl, #-1375]	; 0xfffffaa1
    eb50:	37205443 	strcc	r5, [r0, -r3, asr #8]!
    eb54:	433a0100 	teqmi	sl, #0, 2
    eb58:	5f4c5254 	svcpl	0x004c5254
    eb5c:	4d524f46 	ldclmi	15, cr4, [r2, #-280]	; 0xfffffee8
    eb60:	38205441 	stmdacc	r0!, {r0, r6, sl, ip, lr}
    eb64:	4d3d0100 	ldfmis	f0, [sp, #-0]
    eb68:	475f434d 	ldrbmi	r4, [pc, -sp, asr #6]
    eb6c:	545f5445 	ldrbpl	r5, [pc], #-1093	; eb74 <asin+0x114>
    eb70:	20455059 	subcs	r5, r5, r9, asr r0
    eb74:	01003031 	tsteq	r0, r1, lsr r0
    eb78:	434d4d3e 	movtmi	r4, #56638	; 0xdd3e
    eb7c:	5445475f 	strbpl	r4, [r5], #-1887	; 0xfffff8a1
    eb80:	4453435f 	ldrbmi	r4, [r3], #-863	; 0xfffffca1
    eb84:	00313120 	eorseq	r3, r1, r0, lsr #2
    eb88:	4d4d3f01 	stclmi	15, cr3, [sp, #-4]
    eb8c:	45475f43 	strbmi	r5, [r7, #-3907]	; 0xfffff0bd
    eb90:	49435f54 	stmdbmi	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    eb94:	32312044 	eorscc	r2, r1, #68	; 0x44
    eb98:	4d400100 	stfmie	f0, [r0, #-0]
    eb9c:	475f434d 	ldrbmi	r4, [pc, -sp, asr #6]
    eba0:	4f5f5445 	svcmi	0x005f5445
    eba4:	31205243 			; <UNDEFINED> instruction: 0x31205243
    eba8:	41010033 	tstmi	r1, r3, lsr r0
    ebac:	5f434d4d 	svcpl	0x00434d4d
    ebb0:	5f544547 	svcpl	0x00544547
    ebb4:	54534453 	ldrbpl	r4, [r3], #-1107	; 0xfffffbad
    ebb8:	31205441 			; <UNDEFINED> instruction: 0x31205441
    ebbc:	44010034 	strmi	r0, [r1], #-52	; 0xffffffcc
    ebc0:	5f415441 	svcpl	0x00415441
    ebc4:	5f544547 	svcpl	0x00544547
    ebc8:	20564552 	subscs	r4, r6, r2, asr r5
    ebcc:	01003032 	tsteq	r0, r2, lsr r0
    ebd0:	41544145 	cmpmi	r4, r5, asr #2
    ebd4:	5445475f 	strbpl	r4, [r5], #-1887	; 0xfffff8a1
    ebd8:	444f4d5f 	strbmi	r4, [pc], #-3423	; ebe0 <cosh+0x48>
    ebdc:	32204c45 	eorcc	r4, r0, #17664	; 0x4500
    ebe0:	46010031 			; <UNDEFINED> instruction: 0x46010031
    ebe4:	5f415441 	svcpl	0x00415441
    ebe8:	5f544547 	svcpl	0x00544547
    ebec:	32204e53 	eorcc	r4, r0, #1328	; 0x530
    ebf0:	4a010032 	bmi	4ecc0 <__mprec_tinytens+0x2a450>
    ebf4:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; eaf0 <asin+0x90>
    ebf8:	3020434d 	eorcc	r4, r0, sp, asr #6
    ebfc:	00313078 	eorseq	r3, r1, r8, ror r0
    ec00:	54434b01 	strbpl	r4, [r3], #-2817	; 0xfffff4ff
    ec04:	3144535f 	cmpcc	r4, pc, asr r3
    ec08:	30783020 	rsbscc	r3, r8, r0, lsr #32
    ec0c:	4c010032 	stcmi	0, cr0, [r1], {50}	; 0x32
    ec10:	535f5443 	cmppl	pc, #1124073472	; 0x43000000
    ec14:	30203244 	eorcc	r3, r0, r4, asr #4
    ec18:	00343078 	eorseq	r3, r4, r8, ror r0
    ec1c:	54434d01 	strbpl	r4, [r3], #-3329	; 0xfffff2ff
    ec20:	4344535f 	movtmi	r5, #17247	; 0x435f
    ec24:	54432820 	strbpl	r2, [r3], #-2080	; 0xfffff7e0
    ec28:	3144535f 	cmpcc	r4, pc, asr r3
    ec2c:	5f54437c 	svcpl	0x0054437c
    ec30:	29324453 	ldmdbcs	r2!, {r0, r1, r4, r6, sl, lr}
    ec34:	434e0100 	movtmi	r0, #57600	; 0xe100
    ec38:	4c425f54 	mcrrmi	15, 5, r5, r2, cr4
    ec3c:	204b434f 	subcs	r4, fp, pc, asr #6
    ec40:	38307830 	ldmdacc	r0!, {r4, r5, fp, ip, sp, lr}
    ec44:	05030400 	streq	r0, [r3, #-1024]	; 0xfffffc00
    ec48:	46170106 	ldrmi	r0, [r7], -r6, lsl #2
    ec4c:	45445f46 	strbmi	r5, [r4, #-3910]	; 0xfffff0ba
    ec50:	454e4946 	strbmi	r4, [lr, #-2374]	; 0xfffff6ba
    ec54:	37382044 	ldrcc	r2, [r8, -r4, asr #32]!
    ec58:	00303330 	eorseq	r3, r0, r0, lsr r3
    ec5c:	010f1e03 	tsteq	pc, r3, lsl #28
    ec60:	43464605 	movtmi	r4, #26117	; 0x6605
    ec64:	5f464e4f 	svcpl	0x00464e4f
    ec68:	20464544 	subcs	r4, r6, r4, asr #10
    ec6c:	33303738 	teqcc	r0, #56, 14	; 0xe00000
    ec70:	0b010030 	bleq	4ed38 <__mprec_tinytens+0x2a4c8>
    ec74:	465f4646 	ldrbmi	r4, [pc], -r6, asr #12
    ec78:	45525f53 	ldrbmi	r5, [r2, #-3923]	; 0xfffff0ad
    ec7c:	4e4f4441 	cdpmi	4, 4, cr4, cr15, cr1, {2}
    ec80:	3020594c 	eorcc	r5, r0, ip, asr #18
    ec84:	46120100 	ldrmi	r0, [r2], -r0, lsl #2
    ec88:	53465f46 	movtpl	r5, #28486	; 0x6f46
    ec8c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    ec90:	5a494d49 	bpl	12621bc <__mprec_tinytens+0x123d94c>
    ec94:	00302045 	eorseq	r2, r0, r5, asr #32
    ec98:	46461c01 	strbmi	r1, [r6], -r1, lsl #24
    ec9c:	4553555f 	ldrbmi	r5, [r3, #-1375]	; 0xfffffaa1
    eca0:	5254535f 	subspl	r5, r4, #2080374785	; 0x7c000001
    eca4:	434e5546 	movtmi	r5, #58694	; 0xe546
    eca8:	01003220 	tsteq	r0, r0, lsr #4
    ecac:	5f464624 	svcpl	0x00464624
    ecb0:	5f455355 	svcpl	0x00455355
    ecb4:	444e4946 	strbmi	r4, [lr], #-2374	; 0xfffff6ba
    ecb8:	01003220 	tsteq	r0, r0, lsr #4
    ecbc:	5f464629 	svcpl	0x00464629
    ecc0:	5f455355 	svcpl	0x00455355
    ecc4:	53464b4d 	movtpl	r4, #27469	; 0x6b4d
    ecc8:	01003120 	tsteq	r0, r0, lsr #2
    eccc:	5f46462d 	svcpl	0x0046462d
    ecd0:	5f455355 	svcpl	0x00455355
    ecd4:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    ecd8:	4b454553 	blmi	116022c <__mprec_tinytens+0x113b9bc>
    ecdc:	01003120 	tsteq	r0, r0, lsr #2
    ece0:	5f464631 	svcpl	0x00464631
    ece4:	5f455355 	svcpl	0x00455355
    ece8:	41505845 	cmpmi	r0, r5, asr #16
    ecec:	3020444e 	eorcc	r4, r0, lr, asr #8
    ecf0:	46350100 	ldrtmi	r0, [r5], -r0, lsl #2
    ecf4:	53555f46 	cmppl	r5, #280	; 0x118
    ecf8:	48435f45 	stmdami	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    ecfc:	20444f4d 	subcs	r4, r4, sp, asr #30
    ed00:	3a010031 	bcc	4edcc <__mprec_tinytens+0x2a55c>
    ed04:	555f4646 	ldrbpl	r4, [pc, #-1606]	; e6c6 <tan+0x7e>
    ed08:	4c5f4553 	cfldr64mi	mvdx4, [pc], {83}	; 0x53
    ed0c:	4c454241 	sfmmi	f4, 2, [r5], {65}	; 0x41
    ed10:	01003120 	tsteq	r0, r0, lsr #2
    ed14:	5f46463f 	svcpl	0x0046463f
    ed18:	5f455355 	svcpl	0x00455355
    ed1c:	57524f46 	ldrbpl	r4, [r2, -r6, asr #30]
    ed20:	20445241 	subcs	r5, r4, r1, asr #4
    ed24:	47010031 	smladxmi	r1, r1, r0, r0
    ed28:	435f4646 	cmpmi	pc, #73400320	; 0x4600000
    ed2c:	5f45444f 	svcpl	0x0045444f
    ed30:	45474150 	strbmi	r4, [r7, #-336]	; 0xfffffeb0
    ed34:	32333920 	eorscc	r3, r3, #32, 18	; 0x80000
    ed38:	46640100 	strbtmi	r0, [r4], -r0, lsl #2
    ed3c:	53555f46 	cmppl	r5, #280	; 0x118
    ed40:	464c5f45 	strbmi	r5, [ip], -r5, asr #30
    ed44:	0030204e 	eorseq	r2, r0, lr, asr #32
    ed48:	46466501 	strbmi	r6, [r6], -r1, lsl #10
    ed4c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    ed50:	4e464c5f 	mcrmi	12, 2, r4, cr6, cr15, {2}
    ed54:	35353220 	ldrcc	r3, [r5, #-544]!	; 0xfffffde0
    ed58:	46760100 	ldrbtmi	r0, [r6], -r0, lsl #2
    ed5c:	464c5f46 	strbmi	r5, [ip], -r6, asr #30
    ed60:	4e555f4e 	cdpmi	15, 5, cr5, cr5, cr14, {2}
    ed64:	444f4349 	strbmi	r4, [pc], #-841	; ed6c <exp+0x8c>
    ed68:	00302045 	eorseq	r2, r0, r5, asr #32
    ed6c:	46467d01 	strbmi	r7, [r6], -r1, lsl #26
    ed70:	5254535f 	subspl	r5, r4, #2080374785	; 0x7c000001
    ed74:	4e455f46 	cdpmi	15, 4, cr5, cr5, cr6, {2}
    ed78:	45444f43 	strbmi	r4, [r4, #-3907]	; 0xfffff0bd
    ed7c:	01003320 	tsteq	r0, r0, lsr #6
    ed80:	4646018a 	strbmi	r0, [r6], -sl, lsl #3
    ed84:	5f53465f 	svcpl	0x0053465f
    ed88:	54415052 	strbpl	r5, [r1], #-82	; 0xffffffae
    ed8c:	00322048 	eorseq	r2, r2, r8, asr #32
    ed90:	46019701 	strmi	r9, [r1], -r1, lsl #14
    ed94:	4f565f46 	svcmi	0x00565f46
    ed98:	454d554c 	strbmi	r5, [sp, #-1356]	; 0xfffffab4
    ed9c:	00312053 	eorseq	r2, r1, r3, asr r0
    eda0:	46019b01 	strmi	r9, [r1], -r1, lsl #22
    eda4:	54535f46 	ldrbpl	r5, [r3], #-3910	; 0xfffff0ba
    eda8:	4f565f52 	svcmi	0x00565f52
    edac:	454d554c 	strbmi	r5, [sp, #-1356]	; 0xfffffab4
    edb0:	2044495f 	subcs	r4, r4, pc, asr r9
    edb4:	9c010030 	stcls	0, cr0, [r1], {48}	; 0x30
    edb8:	5f464601 	svcpl	0x00464601
    edbc:	554c4f56 	strbpl	r4, [ip, #-3926]	; 0xfffff0aa
    edc0:	535f454d 	cmppl	pc, #322961408	; 0x13400000
    edc4:	20535254 	subscs	r5, r3, r4, asr r2
    edc8:	4d415222 	sfmmi	f5, 2, [r1, #-136]	; 0xffffff78
    edcc:	4e222c22 	cdpmi	12, 2, cr2, cr2, cr2, {1}
    edd0:	22444e41 	subcs	r4, r4, #1040	; 0x410
    edd4:	4643222c 	strbmi	r2, [r3], -ip, lsr #4
    edd8:	53222c22 			; <UNDEFINED> instruction: 0x53222c22
    eddc:	222c2244 	eorcs	r2, ip, #68, 4	; 0x40000004
    ede0:	22324453 	eorscs	r4, r2, #1392508928	; 0x53000000
    ede4:	5355222c 	cmppl	r5, #44, 4	; 0xc0000002
    ede8:	222c2242 	eorcs	r2, ip, #536870916	; 0x20000004
    edec:	32425355 	subcc	r5, r2, #1409286145	; 0x54000001
    edf0:	55222c22 	strpl	r2, [r2, #-3106]!	; 0xfffff3de
    edf4:	22334253 	eorscs	r4, r3, #805306373	; 0x30000005
    edf8:	01a40100 			; <UNDEFINED> instruction: 0x01a40100
    edfc:	4d5f4646 	ldclmi	6, cr4, [pc, #-280]	; ecec <exp+0xc>
    ee00:	49544c55 	ldmdbmi	r4, {r0, r2, r4, r6, sl, fp, lr}^
    ee04:	5241505f 	subpl	r5, r1, #95	; 0x5f
    ee08:	49544954 	ldmdbmi	r4, {r2, r4, r6, r8, fp, lr}^
    ee0c:	30204e4f 	eorcc	r4, r0, pc, asr #28
    ee10:	01ad0100 			; <UNDEFINED> instruction: 0x01ad0100
    ee14:	4d5f4646 	ldclmi	6, cr4, [pc, #-280]	; ed04 <exp+0x24>
    ee18:	535f4e49 	cmppl	pc, #1168	; 0x490
    ee1c:	31352053 	teqcc	r5, r3, asr r0
    ee20:	ae010032 	mcrge	0, 0, r0, cr1, cr2, {1}
    ee24:	5f464601 	svcpl	0x00464601
    ee28:	5f58414d 	svcpl	0x0058414d
    ee2c:	35205353 	strcc	r5, [r0, #-851]!	; 0xfffffcad
    ee30:	01003231 	tsteq	r0, r1, lsr r2
    ee34:	464601b7 			; <UNDEFINED> instruction: 0x464601b7
    ee38:	4553555f 	ldrbmi	r5, [r3, #-1375]	; 0xfffffaa1
    ee3c:	4952545f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, sl, ip, lr}^
    ee40:	0030204d 	eorseq	r2, r0, sp, asr #32
    ee44:	4601bd01 	strmi	fp, [r1], -r1, lsl #26
    ee48:	53465f46 	movtpl	r5, #28486	; 0x6f46
    ee4c:	464f4e5f 			; <UNDEFINED> instruction: 0x464f4e5f
    ee50:	464e4953 			; <UNDEFINED> instruction: 0x464e4953
    ee54:	0030204f 	eorseq	r2, r0, pc, asr #32
    ee58:	4601ce01 	strmi	ip, [r1], -r1, lsl #28
    ee5c:	53465f46 	movtpl	r5, #28486	; 0x6f46
    ee60:	4e49545f 	mcrmi	4, 2, r5, cr9, cr15, {2}
    ee64:	00312059 	eorseq	r2, r1, r9, asr r0
    ee68:	4601d501 	strmi	sp, [r1], -r1, lsl #10
    ee6c:	53465f46 	movtpl	r5, #28486	; 0x6f46
    ee70:	4658455f 			; <UNDEFINED> instruction: 0x4658455f
    ee74:	30205441 	eorcc	r5, r0, r1, asr #8
    ee78:	01db0100 	bicseq	r0, fp, r0, lsl #2
    ee7c:	465f4646 	ldrbmi	r4, [pc], -r6, asr #12
    ee80:	4f4e5f53 	svcmi	0x004e5f53
    ee84:	20435452 	subcs	r5, r3, r2, asr r4
    ee88:	dc010031 	stcle	0, cr0, [r1], {49}	; 0x31
    ee8c:	5f464601 	svcpl	0x00464601
    ee90:	54524f4e 	ldrbpl	r4, [r2], #-3918	; 0xfffff0b2
    ee94:	4f4d5f43 	svcmi	0x004d5f43
    ee98:	0038204e 	eorseq	r2, r8, lr, asr #32
    ee9c:	4601dd01 	strmi	sp, [r1], -r1, lsl #26
    eea0:	4f4e5f46 	svcmi	0x004e5f46
    eea4:	5f435452 	svcpl	0x00435452
    eea8:	5941444d 	stmdbpl	r1, {r0, r2, r3, r6, sl, lr}^
    eeac:	00353120 	eorseq	r3, r5, r0, lsr #2
    eeb0:	4601de01 	strmi	sp, [r1], -r1, lsl #28
    eeb4:	4f4e5f46 	svcmi	0x004e5f46
    eeb8:	5f435452 	svcpl	0x00435452
    eebc:	52414559 	subpl	r4, r1, #373293056	; 0x16400000
    eec0:	31303220 	teqcc	r0, r0, lsr #4
    eec4:	e9010037 	stmdb	r1, {r0, r1, r2, r4, r5}
    eec8:	5f464601 	svcpl	0x00464601
    eecc:	4c5f5346 	mrrcmi	3, 4, r5, pc, cr6	; <UNPREDICTABLE>
    eed0:	204b434f 	subcs	r4, fp, pc, asr #6
    eed4:	f5010030 			; <UNDEFINED> instruction: 0xf5010030
    eed8:	5f464601 	svcpl	0x00464601
    eedc:	525f5346 	subspl	r5, pc, #402653185	; 0x18000001
    eee0:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    eee4:	544e4152 	strbpl	r4, [lr], #-338	; 0xfffffeae
    eee8:	01003020 	tsteq	r0, r0, lsr #32
    eeec:	464601f6 			; <UNDEFINED> instruction: 0x464601f6
    eef0:	5f53465f 	svcpl	0x0053465f
    eef4:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
    eef8:	2054554f 	subscs	r5, r4, pc, asr #10
    eefc:	30303031 	eorscc	r3, r0, r1, lsr r0
    ef00:	01f70100 	mvnseq	r0, r0, lsl #2
    ef04:	535f4646 	cmppl	pc, #73400320	; 0x4600000
    ef08:	5f434e59 	svcpl	0x00434e59
    ef0c:	41482074 	hvcmi	33284	; 0x8204
    ef10:	454c444e 	strbmi	r4, [ip, #-1102]	; 0xfffffbb2
    ef14:	3e010400 	cfcpyscc	mvf0, mvf1
    ef18:	7828545f 	stmdavc	r8!, {r0, r1, r2, r3, r4, r6, sl, ip, lr}
    ef1c:	00782029 	rsbseq	r2, r8, r9, lsr #32
    ef20:	545f3f01 	ldrbpl	r3, [pc], #-3841	; ef28 <fmod+0xc0>
    ef24:	28545845 	ldmdacs	r4, {r0, r2, r6, fp, ip, lr}^
    ef28:	78202978 	stmdavc	r0!, {r3, r4, r5, r6, r8, fp, sp}
    ef2c:	5f400100 	svcpl	0x00400100
    ef30:	5f434e49 	svcpl	0x00434e49
    ef34:	41484354 	cmpmi	r8, r4, asr r3
    ef38:	01002052 	qaddeq	r2, r2, r0
    ef3c:	5f660295 	svcpl	0x00660295
    ef40:	28666f65 	stmdacs	r6!, {r0, r2, r5, r6, r8, r9, sl, fp, sp, lr}^
    ef44:	20297066 	eorcs	r7, r9, r6, rrx
    ef48:	6e692828 	cdpvs	8, 6, cr2, cr9, cr8, {1}
    ef4c:	28282974 	stmdacs	r8!, {r2, r4, r5, r6, r8, fp, sp}
    ef50:	2d297066 	stccs	0, cr7, [r9, #-408]!	; 0xfffffe68
    ef54:	7470663e 	ldrbtvc	r6, [r0], #-1598	; 0xfffff9c2
    ef58:	3d3d2072 	ldccc	0, cr2, [sp, #-456]!	; 0xfffffe38
    ef5c:	70662820 	rsbvc	r2, r6, r0, lsr #16
    ef60:	6f3e2d29 	svcvs	0x003e2d29
    ef64:	6f2e6a62 	svcvs	0x002e6a62
    ef68:	69736a62 	ldmdbvs	r3!, {r1, r5, r6, r9, fp, sp, lr}^
    ef6c:	2929657a 	stmdbcs	r9!, {r1, r3, r4, r5, r6, r8, sl, sp, lr}
    ef70:	02960100 	addseq	r0, r6, #0, 2
    ef74:	72655f66 	rsbvc	r5, r5, #408	; 0x198
    ef78:	28726f72 	ldmdacs	r2!, {r1, r4, r5, r6, r8, r9, sl, fp, sp, lr}^
    ef7c:	20297066 	eorcs	r7, r9, r6, rrx
    ef80:	70662828 	rsbvc	r2, r6, r8, lsr #16
    ef84:	653e2d29 	ldrvs	r2, [lr, #-3369]!	; 0xfffff2d7
    ef88:	00297272 	eoreq	r7, r9, r2, ror r2
    ef8c:	66029701 	strvs	r9, [r2], -r1, lsl #14
    ef90:	6c65745f 	cfstrdvs	mvd7, [r5], #-380	; 0xfffffe84
    ef94:	7066286c 	rsbvc	r2, r6, ip, ror #16
    ef98:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    ef9c:	2d297066 	stccs	0, cr7, [r9, #-408]!	; 0xfffffe68
    efa0:	7470663e 	ldrbtvc	r6, [r0], #-1598	; 0xfffff9c2
    efa4:	01002972 	tsteq	r0, r2, ror r9
    efa8:	5f660298 	svcpl	0x00660298
    efac:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    efb0:	29706628 	ldmdbcs	r0!, {r3, r5, r9, sl, sp, lr}^
    efb4:	66282820 	strtvs	r2, [r8], -r0, lsr #16
    efb8:	3e2d2970 			; <UNDEFINED> instruction: 0x3e2d2970
    efbc:	2e6a626f 	cdpcs	2, 6, cr6, cr10, cr15, {3}
    efc0:	736a626f 	cmnvc	sl, #-268435450	; 0xf0000006
    efc4:	29657a69 	stmdbcs	r5!, {r0, r3, r5, r6, r9, fp, ip, sp, lr}^
    efc8:	02990100 	addseq	r0, r9, #0, 2
    efcc:	65725f66 	ldrbvs	r5, [r2, #-3942]!	; 0xfffff09a
    efd0:	646e6977 	strbtvs	r6, [lr], #-2423	; 0xfffff689
    efd4:	29706628 	ldmdbcs	r0!, {r3, r5, r9, sl, sp, lr}^
    efd8:	6c5f6620 	mrrcvs	6, 2, r6, pc, cr0	; <UNPREDICTABLE>
    efdc:	6b656573 	blvs	19685b0 <__mprec_tinytens+0x1943d40>
    efe0:	70662828 	rsbvc	r2, r6, r8, lsr #16
    efe4:	30202c29 	eorcc	r2, r0, r9, lsr #24
    efe8:	9a010029 	bls	4f094 <__mprec_tinytens+0x2a824>
    efec:	725f6602 	subsvc	r6, pc, #2097152	; 0x200000
    eff0:	6e697765 	cdpvs	7, 6, cr7, cr9, cr5, {3}
    eff4:	72696464 	rsbvc	r6, r9, #100, 8	; 0x64000000
    eff8:	29706428 	ldmdbcs	r0!, {r3, r5, sl, sp, lr}^
    effc:	725f6620 	subsvc	r6, pc, #32, 12	; 0x2000000
    f000:	64646165 	strbtvs	r6, [r4], #-357	; 0xfffffe9b
    f004:	28287269 	stmdacs	r8!, {r0, r3, r5, r6, r9, ip, sp, lr}
    f008:	2c297064 	stccs	0, cr7, [r9], #-400	; 0xfffffe70
    f00c:	00293020 	eoreq	r3, r9, r0, lsr #32
    f010:	66029b01 	strvs	r9, [r2], -r1, lsl #22
    f014:	646d725f 	strbtvs	r7, [sp], #-607	; 0xfffffda1
    f018:	70287269 	eorvc	r7, r8, r9, ror #4
    f01c:	29687461 	stmdbcs	r8!, {r0, r5, r6, sl, ip, sp, lr}^
    f020:	755f6620 	ldrbvc	r6, [pc, #-1568]	; ea08 <acos+0xd0>
    f024:	6e696c6e 	cdpvs	12, 6, cr6, cr9, cr14, {3}
    f028:	6170286b 	cmnvs	r0, fp, ror #16
    f02c:	00296874 	eoreq	r6, r9, r4, ror r8
    f030:	66029c01 	strvs	r9, [r2], -r1, lsl #24
    f034:	6d6e755f 	cfstr64vs	mvdx7, [lr, #-380]!	; 0xfffffe84
    f038:	746e756f 	strbtvc	r7, [lr], #-1391	; 0xfffffa91
    f03c:	74617028 	strbtvc	r7, [r1], #-40	; 0xffffffd8
    f040:	66202968 	strtvs	r2, [r0], -r8, ror #18
    f044:	756f6d5f 	strbvc	r6, [pc, #-3423]!	; e2ed <floor+0x13d>
    f048:	3028746e 	eorcc	r7, r8, lr, ror #8
    f04c:	6170202c 	cmnvs	r0, ip, lsr #32
    f050:	202c6874 	eorcs	r6, ip, r4, ror r8
    f054:	01002930 	tsteq	r0, r0, lsr r9
    f058:	4f45029f 	svcmi	0x0045029f
    f05c:	2d282046 	stccs	0, cr2, [r8, #-280]!	; 0xfffffee8
    f060:	01002931 	tsteq	r0, r1, lsr r9
    f064:	414602c8 	smlalbtmi	r0, r6, r8, r2
    f068:	4145525f 	cmpmi	r5, pc, asr r2
    f06c:	78302044 	ldmdavc	r0!, {r2, r6, sp}
    f070:	01003130 	tsteq	r0, r0, lsr r1
    f074:	414602c9 	smlalbtmi	r0, r6, r9, r2
    f078:	4952575f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    f07c:	30204554 	eorcc	r4, r0, r4, asr r5
    f080:	00323078 	eorseq	r3, r2, r8, ror r0
    f084:	4602ca01 	strmi	ip, [r2], -r1, lsl #20
    f088:	504f5f41 	subpl	r5, pc, r1, asr #30
    f08c:	455f4e45 	ldrbmi	r4, [pc, #-3653]	; e24f <floor+0x9f>
    f090:	54534958 	ldrbpl	r4, [r3], #-2392	; 0xfffff6a8
    f094:	20474e49 	subcs	r4, r7, r9, asr #28
    f098:	30307830 	eorscc	r7, r0, r0, lsr r8
    f09c:	02cb0100 	sbceq	r0, fp, #0, 2
    f0a0:	435f4146 	cmpmi	pc, #-2147483631	; 0x80000011
    f0a4:	54414552 	strbpl	r4, [r1], #-1362	; 0xfffffaae
    f0a8:	454e5f45 	strbmi	r5, [lr, #-3909]	; 0xfffff0bb
    f0ac:	78302057 	ldmdavc	r0!, {r0, r1, r2, r4, r6, sp}
    f0b0:	01003430 	tsteq	r0, r0, lsr r4
    f0b4:	414602cc 	smlalbtmi	r0, r6, ip, r2
    f0b8:	4552435f 	ldrbmi	r4, [r2, #-863]	; 0xfffffca1
    f0bc:	5f455441 	svcpl	0x00455441
    f0c0:	41574c41 	cmpmi	r7, r1, asr #24
    f0c4:	30205359 	eorcc	r5, r0, r9, asr r3
    f0c8:	00383078 	eorseq	r3, r8, r8, ror r0
    f0cc:	4602cd01 	strmi	ip, [r2], -r1, lsl #26
    f0d0:	504f5f41 	subpl	r5, pc, r1, asr #30
    f0d4:	415f4e45 	cmpmi	pc, r5, asr #28
    f0d8:	5941574c 	stmdbpl	r1, {r2, r3, r6, r8, r9, sl, ip, lr}^
    f0dc:	78302053 	ldmdavc	r0!, {r0, r1, r4, r6, sp}
    f0e0:	01003031 	tsteq	r0, r1, lsr r0
    f0e4:	414602ce 	smlalbtmi	r0, r6, lr, r2
    f0e8:	45504f5f 	ldrbmi	r4, [r0, #-3935]	; 0xfffff0a1
    f0ec:	50415f4e 	subpl	r5, r1, lr, asr #30
    f0f0:	444e4550 	strbmi	r4, [lr], #-1360	; 0xfffffab0
    f0f4:	33783020 	cmncc	r8, #32
    f0f8:	d1010030 	tstle	r1, r0, lsr r0
    f0fc:	45524302 	ldrbmi	r4, [r2, #-770]	; 0xfffffcfe
    f100:	5f455441 	svcpl	0x00455441
    f104:	4b4e494c 	blmi	13a163c <__mprec_tinytens+0x137cdcc>
    f108:	2050414d 	subscs	r4, r0, sp, asr #2
    f10c:	53462828 	movtpl	r2, #26664	; 0x6828
    f110:	5f455a49 	svcpl	0x00455a49
    f114:	20302974 	eorscs	r2, r0, r4, ror r9
    f118:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    f11c:	02d40100 	sbcseq	r0, r4, #0, 2
    f120:	465f4d46 	ldrbmi	r4, [pc], -r6, asr #26
    f124:	30205441 	eorcc	r5, r0, r1, asr #8
    f128:	00313078 	eorseq	r3, r1, r8, ror r0
    f12c:	4602d501 	strmi	sp, [r2], -r1, lsl #10
    f130:	41465f4d 	cmpmi	r6, sp, asr #30
    f134:	20323354 	eorscs	r3, r2, r4, asr r3
    f138:	32307830 	eorscc	r7, r0, #48, 16	; 0x300000
    f13c:	02d60100 	sbcseq	r0, r6, #0, 2
    f140:	455f4d46 	ldrbmi	r4, [pc, #-3398]	; e402 <modf+0xb6>
    f144:	54414658 	strbpl	r4, [r1], #-1624	; 0xfffff9a8
    f148:	30783020 	rsbscc	r3, r8, r0, lsr #32
    f14c:	d7010034 	smladxle	r1, r4, r0, r0
    f150:	5f4d4602 	svcpl	0x004d4602
    f154:	20594e41 	subscs	r4, r9, r1, asr #28
    f158:	37307830 			; <UNDEFINED> instruction: 0x37307830
    f15c:	02d80100 	sbcseq	r0, r8, #0, 2
    f160:	535f4d46 	cmppl	pc, #4480	; 0x1180
    f164:	30204446 	eorcc	r4, r0, r6, asr #8
    f168:	00383078 	eorseq	r3, r8, r8, ror r0
    f16c:	4602db01 	strmi	sp, [r2], -r1, lsl #22
    f170:	41465f53 	cmpmi	r6, r3, asr pc
    f174:	20323154 	eorscs	r3, r2, r4, asr r1
    f178:	dc010031 	stcle	0, cr0, [r1], {49}	; 0x31
    f17c:	5f534602 	svcpl	0x00534602
    f180:	31544146 	cmpcc	r4, r6, asr #2
    f184:	00322036 	eorseq	r2, r2, r6, lsr r0
    f188:	4602dd01 	strmi	sp, [r2], -r1, lsl #26
    f18c:	41465f53 	cmpmi	r6, r3, asr pc
    f190:	20323354 	eorscs	r3, r2, r4, asr r3
    f194:	de010033 	mcrle	0, 0, r0, cr1, cr3, {1}
    f198:	5f534602 	svcpl	0x00534602
    f19c:	41465845 	cmpmi	r6, r5, asr #16
    f1a0:	00342054 	eorseq	r2, r4, r4, asr r0
    f1a4:	4102e101 	tstmi	r2, r1, lsl #2
    f1a8:	44525f4d 	ldrbmi	r5, [r2], #-3917	; 0xfffff0b3
    f1ac:	7830204f 	ldmdavc	r0!, {r0, r1, r2, r3, r6, sp}
    f1b0:	01003130 	tsteq	r0, r0, lsr r1
    f1b4:	4d4102e2 	sfmmi	f0, 2, [r1, #-904]	; 0xfffffc78
    f1b8:	4449485f 	strbmi	r4, [r9], #-2143	; 0xfffff7a1
    f1bc:	30783020 	rsbscc	r3, r8, r0, lsr #32
    f1c0:	e3010032 	movw	r0, #4146	; 0x1032
    f1c4:	5f4d4102 	svcpl	0x004d4102
    f1c8:	20535953 	subscs	r5, r3, r3, asr r9
    f1cc:	34307830 	ldrtcc	r7, [r0], #-2096	; 0xfffff7d0
    f1d0:	02e40100 	rsceq	r0, r4, #0, 2
    f1d4:	445f4d41 	ldrbmi	r4, [pc], #-3393	; f1dc <log+0xfc>
    f1d8:	30205249 	eorcc	r5, r0, r9, asr #4
    f1dc:	00303178 	eorseq	r3, r0, r8, ror r1
    f1e0:	4102e501 	tstmi	r2, r1, lsl #10
    f1e4:	52415f4d 	subpl	r5, r1, #308	; 0x134
    f1e8:	78302043 	ldmdavc	r0!, {r0, r1, r6, sp}
    f1ec:	04003032 	streq	r3, [r0], #-50	; 0xffffffce
    f1f0:	01080603 	tsteq	r8, r3, lsl #12
    f1f4:	54535f06 	ldrbpl	r5, [r3], #-3846	; 0xfffff0fa
    f1f8:	4e554652 	mrcmi	6, 2, r4, cr5, cr2, {2}
    f1fc:	01002043 	tsteq	r0, r3, asr #32
    f200:	53555f0c 	cmppl	r5, #12, 30	; 0x30
    f204:	46585f45 	ldrbmi	r5, [r8], -r5, asr #30
    f208:	5f434e55 	svcpl	0x00434e55
    f20c:	2054554f 	subscs	r5, r4, pc, asr #10
    f210:	0d010031 	stceq	0, cr0, [r1, #-196]	; 0xffffff3c
    f214:	5f52435f 	svcpl	0x0052435f
    f218:	464c5243 	strbmi	r5, [ip], -r3, asr #4
    f21c:	01003120 	tsteq	r0, r0, lsr #2
    f220:	53555f0f 	cmppl	r5, #15, 30	; 0x3c
    f224:	46585f45 	ldrbmi	r5, [r8], -r5, asr #30
    f228:	5f434e55 	svcpl	0x00434e55
    f22c:	31204e49 			; <UNDEFINED> instruction: 0x31204e49
    f230:	5f100100 	svcpl	0x00100100
    f234:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    f238:	4843455f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, sl, lr}^
    f23c:	0031204f 	eorseq	r2, r1, pc, asr #32
    f240:	64781401 	ldrbtvs	r1, [r8], #-1025	; 0xfffffbff
    f244:	6f5f7665 	svcvs	0x005f7665
    f248:	66287475 			; <UNDEFINED> instruction: 0x66287475
    f24c:	29636e75 	stmdbcs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    f250:	75667820 	strbvc	r7, [r6, #-2080]!	; 0xfffff7e0
    f254:	6f5f636e 	svcvs	0x005f636e
    f258:	3d207475 	cfstrscc	mvf7, [r0, #-468]!	; 0xfffffe2c
    f25c:	6f762820 	svcvs	0x00762820
    f260:	2a286469 	bcs	a2840c <__mprec_tinytens+0xa03b9c>
    f264:	6e752829 	cdpvs	8, 7, cr2, cr5, cr9, {1}
    f268:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    f26c:	63206465 			; <UNDEFINED> instruction: 0x63206465
    f270:	29726168 	ldmdbcs	r2!, {r3, r5, r6, r8, sp, lr}^
    f274:	75662829 	strbvc	r2, [r6, #-2089]!	; 0xfffff7d7
    f278:	0029636e 	eoreq	r6, r9, lr, ror #6
    f27c:	57441d01 	strbpl	r1, [r4, -r1, lsl #26]
    f280:	4148435f 	cmpmi	r8, pc, asr r3
    f284:	69732052 	ldmdbvs	r3!, {r1, r4, r6, sp}^
    f288:	666f657a 			; <UNDEFINED> instruction: 0x666f657a
    f28c:	61686328 	cmnvs	r8, r8, lsr #6
    f290:	01002972 	tsteq	r0, r2, ror r9
    f294:	5f57441e 	svcpl	0x0057441e
    f298:	524f4853 	subpl	r4, pc, #5439488	; 0x530000
    f29c:	69732054 	ldmdbvs	r3!, {r2, r4, r6, sp}^
    f2a0:	666f657a 			; <UNDEFINED> instruction: 0x666f657a
    f2a4:	6f687328 	svcvs	0x00687328
    f2a8:	00297472 	eoreq	r7, r9, r2, ror r4
    f2ac:	57441f01 	strbpl	r1, [r4, -r1, lsl #30]
    f2b0:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    f2b4:	69732047 	ldmdbvs	r3!, {r0, r1, r2, r6, sp}^
    f2b8:	666f657a 			; <UNDEFINED> instruction: 0x666f657a
    f2bc:	6e6f6c28 	cdpvs	12, 6, cr6, cr15, cr8, {1}
    f2c0:	01002967 	tsteq	r0, r7, ror #18
    f2c4:	65647824 	strbvs	r7, [r4, #-2084]!	; 0xfffff7dc
    f2c8:	6e695f76 	mcrvs	15, 3, r5, cr9, cr6, {3}
    f2cc:	6e756628 	cdpvs	6, 7, cr6, cr5, cr8, {1}
    f2d0:	78202963 	stmdavc	r0!, {r0, r1, r5, r6, r8, fp, sp}
    f2d4:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
    f2d8:	206e695f 	rsbcs	r6, lr, pc, asr r9
    f2dc:	7528203d 	strvc	r2, [r8, #-61]!	; 0xffffffc3
    f2e0:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    f2e4:	2064656e 	rsbcs	r6, r4, lr, ror #10
    f2e8:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    f2ec:	28292a28 	stmdacs	r9!, {r3, r5, r9, fp, sp}
    f2f0:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    f2f4:	66282929 	strtvs	r2, [r8], -r9, lsr #18
    f2f8:	29636e75 	stmdbcs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    f2fc:	07030400 	streq	r0, [r3, -r0, lsl #8]
    f300:	5f020110 	svcpl	0x00020110
    f304:	44434c5f 	strbmi	r4, [r3], #-3167	; 0xfffff3a1
    f308:	32303631 	eorscc	r3, r0, #51380224	; 0x3100000
    f30c:	5f5f485f 	svcpl	0x005f485f
    f310:	32010020 	andcc	r0, r1, #32
    f314:	5f44434c 	svcpl	0x0044434c
    f318:	61656c43 	cmnvs	r5, r3, asr #24
    f31c:	20292872 	eorcs	r2, r9, r2, ror r8
    f320:	5f44434c 	svcpl	0x0044434c
    f324:	74697257 	strbtvc	r7, [r9], #-599	; 0xfffffda9
    f328:	2c302865 	ldccs	8, cr2, [r0], #-404	; 0xfffffe6c
    f32c:	30783020 	rsbscc	r3, r8, r0, lsr #32
    f330:	01002931 	tsteq	r0, r1, lsr r9
    f334:	44434c35 	strbmi	r4, [r3], #-3125	; 0xfffff3cb
    f338:	7465525f 	strbtvc	r5, [r5], #-607	; 0xfffffda1
    f33c:	486e7275 	stmdami	lr!, {r0, r2, r4, r5, r6, r9, ip, sp, lr}^
    f340:	28656d6f 	stmdacs	r5!, {r0, r1, r2, r3, r5, r6, r8, sl, fp, sp, lr}^
    f344:	434c2029 	movtmi	r2, #49193	; 0xc029
    f348:	72575f44 	subsvc	r5, r7, #68, 30	; 0x110
    f34c:	28657469 	stmdacs	r5!, {r0, r3, r5, r6, sl, ip, sp, lr}^
    f350:	30202c30 	eorcc	r2, r0, r0, lsr ip
    f354:	29323078 	ldmdbcs	r2!, {r3, r4, r5, r6, ip, sp}
    f358:	4c380100 	ldfmis	f0, [r8], #-0
    f35c:	505f4443 	subspl	r4, pc, r3, asr #8
    f360:	28637475 	stmdacs	r3!, {r0, r2, r4, r5, r6, sl, ip, sp, lr}^
    f364:	4c202963 			; <UNDEFINED> instruction: 0x4c202963
    f368:	575f4443 	ldrbpl	r4, [pc, -r3, asr #8]
    f36c:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
    f370:	202c3128 	eorcs	r3, ip, r8, lsr #2
    f374:	01002963 	tsteq	r0, r3, ror #18
    f378:	44434c3b 	strbmi	r4, [r3], #-3131	; 0xfffff3c5
    f37c:	7465535f 	strbtvc	r5, [r5], #-863	; 0xfffffca1
    f380:	73727543 	cmnvc	r2, #281018368	; 0x10c00000
    f384:	6f50726f 	svcvs	0x0050726f
    f388:	2c782873 	ldclcs	8, cr2, [r8], #-460	; 0xfffffe34
    f38c:	4c202979 			; <UNDEFINED> instruction: 0x4c202979
    f390:	575f4443 	ldrbpl	r4, [pc, -r3, asr #8]
    f394:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
    f398:	202c3028 	eorcs	r3, ip, r8, lsr #32
    f39c:	3c792828 	ldclcc	8, cr2, [r9], #-160	; 0xffffff60
    f3a0:	7c29363c 	stcvc	6, cr3, [r9], #-240	; 0xffffff10
    f3a4:	7c202978 			; <UNDEFINED> instruction: 0x7c202978
    f3a8:	38783020 	ldmdacc	r8!, {r5, ip, sp}^
    f3ac:	01002930 	tsteq	r0, r0, lsr r9
    f3b0:	44434c3e 	strbmi	r4, [r3], #-3134	; 0xfffff3c2
    f3b4:	7369445f 	cmnvc	r9, #1593835520	; 0x5f000000
    f3b8:	79616c70 	stmdbvc	r1!, {r4, r5, r6, sl, fp, sp, lr}^
    f3bc:	2866664f 	stmdacs	r6!, {r0, r1, r2, r3, r6, r9, sl, sp, lr}^
    f3c0:	434c2029 	movtmi	r2, #49193	; 0xc029
    f3c4:	72575f44 	subsvc	r5, r7, #68, 30	; 0x110
    f3c8:	28657469 	stmdacs	r5!, {r0, r3, r5, r6, sl, ip, sp, lr}^
    f3cc:	30202c30 	eorcc	r2, r0, r0, lsr ip
    f3d0:	29383078 	ldmdbcs	r8!, {r3, r4, r5, r6, ip, sp}
    f3d4:	4c410100 	stfmie	f0, [r1], {-0}
    f3d8:	445f4443 	ldrbmi	r4, [pc], #-1091	; f3e0 <log10+0x138>
    f3dc:	6c707369 	ldclvs	3, cr7, [r0], #-420	; 0xfffffe5c
    f3e0:	6e4f7961 	vmlsvs.f16	s15, s30, s3	; <UNPREDICTABLE>
    f3e4:	4c202928 			; <UNDEFINED> instruction: 0x4c202928
    f3e8:	575f4443 	ldrbpl	r4, [pc, -r3, asr #8]
    f3ec:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
    f3f0:	202c3028 	eorcs	r3, ip, r8, lsr #32
    f3f4:	43307830 	teqmi	r0, #48, 16	; 0x300000
    f3f8:	44010029 	strmi	r0, [r1], #-41	; 0xffffffd7
    f3fc:	5f44434c 	svcpl	0x0044434c
    f400:	73727543 	cmnvc	r2, #281018368	; 0x10c00000
    f404:	664f726f 	strbvs	r7, [pc], -pc, ror #4
    f408:	20292866 	eorcs	r2, r9, r6, ror #16
    f40c:	5f44434c 	svcpl	0x0044434c
    f410:	74697257 	strbtvc	r7, [r9], #-599	; 0xfffffda9
    f414:	2c302865 	ldccs	8, cr2, [r0], #-404	; 0xfffffe6c
    f418:	30783020 	rsbscc	r3, r8, r0, lsr #32
    f41c:	01002943 	tsteq	r0, r3, asr #18
    f420:	44434c47 	strbmi	r4, [r3], #-3143	; 0xfffff3b9
    f424:	7275435f 	rsbsvc	r4, r5, #2080374785	; 0x7c000001
    f428:	4f726f73 	svcmi	0x00726f73
    f42c:	2029286e 	eorcs	r2, r9, lr, ror #16
    f430:	5f44434c 	svcpl	0x0044434c
    f434:	74697257 	strbtvc	r7, [r9], #-599	; 0xfffffda9
    f438:	2c302865 	ldccs	8, cr2, [r0], #-404	; 0xfffffe6c
    f43c:	30783020 	rsbscc	r3, r8, r0, lsr #32
    f440:	01002945 	tsteq	r0, r5, asr #18
    f444:	44434c4a 	strbmi	r4, [r3], #-3146	; 0xfffff3b6
    f448:	696c425f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r9, lr}^
    f44c:	6e4f6b6e 	vmlsvs.f64	d22, d15, d30
    f450:	4c202928 			; <UNDEFINED> instruction: 0x4c202928
    f454:	575f4443 	ldrbpl	r4, [pc, -r3, asr #8]
    f458:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
    f45c:	202c3028 	eorcs	r3, ip, r8, lsr #32
    f460:	46307830 			; <UNDEFINED> instruction: 0x46307830
    f464:	4d010029 	stcmi	0, cr0, [r1, #-164]	; 0xffffff5c
    f468:	44434c5f 	strbmi	r4, [r3], #-3167	; 0xfffff3a1
    f46c:	28525453 	ldmdacs	r2, {r0, r1, r4, r6, sl, ip, lr}^
    f470:	28202973 	stmdacs	r0!, {r0, r1, r4, r5, r6, r8, fp, sp}
    f474:	736e7528 	cmnvc	lr, #40, 10	; 0xa000000
    f478:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    f47c:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
    f480:	292a7261 	stmdbcs	sl!, {r0, r5, r6, r9, ip, sp, lr}
    f484:	29297328 	stmdbcs	r9!, {r3, r5, r8, r9, ip, sp, lr}
    f488:	00040400 	andeq	r0, r4, r0, lsl #8

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000263 	andeq	r0, r0, r3, ror #4
   4:	02080002 	andeq	r0, r8, #2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	63010000 	movwvs	r0, #4096	; 0x1000
  1c:	73755c3a 	cmnvc	r5, #14848	; 0x3a00
  20:	5c737265 	lfmpl	f7, 2, [r3], #-404	; 0xfffffe6c
  24:	72657375 	rsbvc	r7, r5, #-738197503	; 0xd4000001
  28:	7365645c 	cmnvc	r5, #92, 8	; 0x5c000000
  2c:	706f746b 	rsbvc	r7, pc, fp, ror #8
  30:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
  34:	7665642d 	strbtvc	r6, [r5], -sp, lsr #8
  38:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
  3c:	6f6f742d 	svcvs	0x006f742d
  40:	615c736c 	cmpvs	ip, ip, ror #6
  44:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
  48:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
  4c:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
  50:	636e695c 	cmnvs	lr, #92, 18	; 0x170000
  54:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
  58:	63616d5c 	cmnvs	r1, #92, 26	; 0x1700
  5c:	656e6968 	strbvs	r6, [lr, #-2408]!	; 0xfffff698
  60:	5c3a6300 	ldcpl	3, cr6, [sl], #-0
  64:	72657375 	rsbvc	r7, r5, #-738197503	; 0xd4000001
  68:	73755c73 	cmnvc	r5, #29440	; 0x7300
  6c:	645c7265 	ldrbvs	r7, [ip], #-613	; 0xfffffd9b
  70:	746b7365 	strbtvc	r7, [fp], #-869	; 0xfffffc9b
  74:	615c706f 	cmpvs	ip, pc, rrx
  78:	642d6d72 	strtvs	r6, [sp], #-3442	; 0xfffff28e
  7c:	615c7665 	cmpvs	ip, r5, ror #12
  80:	742d6d72 	strtvc	r6, [sp], #-3442	; 0xfffff28e
  84:	736c6f6f 	cmnvc	ip, #444	; 0x1bc
  88:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
  8c:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
  90:	61652d65 	cmnvs	r5, r5, ror #26
  94:	695c6962 	ldmdbvs	ip, {r1, r5, r6, r8, fp, sp, lr}^
  98:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
  9c:	735c6564 	cmpvc	ip, #100, 10	; 0x19000000
  a0:	2e007379 	mcrcs	3, 0, r7, cr0, cr9, {3}
  a4:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
  a8:	636e692f 	cmnvs	lr, #770048	; 0xbc000
  ac:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
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
 13c:	6e69616d 	powvsez	f6, f1, #5.0
 140:	0000632e 	andeq	r6, r0, lr, lsr #6
 144:	645f0000 	ldrbvs	r0, [pc], #-0	; 14c <current_sp+0x98>
 148:	75616665 	strbvc	r6, [r1, #-1637]!	; 0xfffff99b
 14c:	745f746c 	ldrbvc	r7, [pc], #-1132	; 154 <current_sp+0xa0>
 150:	73657079 	cmnvc	r5, #121	; 0x79
 154:	0100682e 	tsteq	r0, lr, lsr #16
 158:	735f0000 	cmpvc	pc, #0
 15c:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 160:	00682e74 	rsbeq	r2, r8, r4, ror lr
 164:	6c000002 	stcvs	0, cr0, [r0], {2}
 168:	33326370 	teqcc	r2, #112, 6	; 0xc0000001
 16c:	682e3030 	stmdavs	lr!, {r4, r5, ip, sp}
 170:	00000300 	andeq	r0, r0, r0, lsl #6
 174:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
 178:	2e726567 	cdpcs	5, 7, cr6, cr2, cr7, {3}
 17c:	00030068 	andeq	r0, r3, r8, rrx
 180:	2e666600 	cdpcs	6, 6, cr6, cr6, cr0, {0}
 184:	00030068 	andeq	r0, r3, r8, rrx
 188:	73696400 	cmnvc	r9, #0, 8
 18c:	2e6f696b 	vnmulcs.f16	s13, s30, s23	; <UNPREDICTABLE>
 190:	00030068 	andeq	r0, r3, r8, rrx
 194:	72707800 	rsbsvc	r7, r0, #0, 16
 198:	66746e69 	ldrbtvs	r6, [r4], -r9, ror #28
 19c:	0300682e 	movweq	r6, #2094	; 0x82e
 1a0:	74730000 	ldrbtvc	r0, [r3], #-0
 1a4:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
 1a8:	0400682e 	streq	r6, [r0], #-2094	; 0xfffff7d2
 1ac:	74730000 	ldrbtvc	r0, [r3], #-0
 1b0:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
 1b4:	0500682e 	streq	r6, [r0, #-2094]	; 0xfffff7d2
 1b8:	65660000 	strbvs	r0, [r6, #-0]!
 1bc:	72757461 	rsbsvc	r7, r5, #1627389952	; 0x61000000
 1c0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 1c4:	00000200 	andeq	r0, r0, r0, lsl #4
 1c8:	77656e5f 			; <UNDEFINED> instruction: 0x77656e5f
 1cc:	5f62696c 	svcpl	0x0062696c
 1d0:	73726576 	cmnvc	r2, #494927872	; 0x1d800000
 1d4:	2e6e6f69 	cdpcs	15, 6, cr6, cr14, cr9, {3}
 1d8:	00050068 	andeq	r0, r5, r8, rrx
 1dc:	6e695f00 	cdpvs	15, 6, cr5, cr9, cr0, {0}
 1e0:	70757374 	rsbsvc	r7, r5, r4, ror r3
 1e4:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 1e8:	69620000 	stmdbvs	r2!, {}^	; <UNPREDICTABLE>
 1ec:	3332736f 	teqcc	r2, #-1140850687	; 0xbc000001
 1f0:	682e3838 	stmdavs	lr!, {r3, r4, r5, fp, ip, sp}
 1f4:	00000300 	andeq	r0, r0, r0, lsl #6
 1f8:	6f636666 	svcvs	0x00636666
 1fc:	682e666e 	stmdavs	lr!, {r1, r2, r3, r5, r6, r9, sl, sp, lr}
 200:	00000300 	andeq	r0, r0, r0, lsl #6
 204:	3164636c 	cmncc	r4, ip, ror #6
 208:	2e323036 	mrccs	0, 1, r3, cr2, cr6, {1}
 20c:	00030068 	andeq	r0, r3, r8, rrx
 210:	05000000 	streq	r0, [r0, #-0]
 214:	00205002 	eoreq	r5, r0, r2
 218:	010a0340 	tsteq	sl, r0, asr #6
 21c:	4b676814 	blmi	19da274 <__mprec_tinytens+0x19b5a04>
 220:	68062e06 	stmdavs	r6, {r1, r2, r9, sl, fp, sp}
 224:	f32f4b4e 	vqrdmulh.s32	q2, <illegal reg q7.5>, q7
 228:	4a7a0351 	bmi	1e80f74 <__mprec_tinytens+0x1e5c704>
 22c:	67676767 	strbvs	r6, [r7, -r7, ror #14]!
 230:	6751d968 	ldrbvs	sp, [r1, -r8, ror #18]
 234:	67672f68 	strbvs	r2, [r7, -r8, ror #30]!
 238:	834bd768 	movthi	sp, #46952	; 0xb768
 23c:	679f4b68 	ldrvs	r4, [pc, r8, ror #22]
 240:	4b4a0d03 	blmi	1283654 <__mprec_tinytens+0x125ede4>
 244:	0b03679f 	bleq	da0c8 <__mprec_tinytens+0xb5858>
 248:	4b834b4a 	blmi	fe0d2f78 <_sp_base+0xbe0c2f80>
 24c:	67674b67 	strbvs	r4, [r7, -r7, ror #22]!
 250:	825e0368 	subshi	r0, lr, #104, 6	; 0xa0000001
 254:	684b689f 	stmdavs	fp, {r0, r1, r2, r3, r4, r7, fp, sp, lr}^
 258:	2f4cfa67 	svccs	0x004cfa67
 25c:	67679f2d 	strbvs	r9, [r7, -sp, lsr #30]!
 260:	30024b4b 	andcc	r4, r2, fp, asr #22
 264:	Address 0x00000264 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	5f534552 	svcpl	0x00534552
   4:	52505257 	subspl	r5, r0, #1879048197	; 0x70000005
   8:	52460054 	subpl	r0, r6, #84	; 0x54
   c:	4f4f545f 	svcmi	0x004f545f
  10:	4e414d5f 	mcrmi	13, 2, r4, cr1, cr15, {2}
  14:	504f5f59 	subpl	r5, pc, r9, asr pc	; <UNPREDICTABLE>
  18:	465f4e45 	ldrbmi	r4, [pc], -r5, asr #28
  1c:	53454c49 	movtpl	r4, #23625	; 0x5c49
  20:	5f736600 	svcpl	0x00736600
  24:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
  28:	53455200 	movtpl	r5, #20992	; 0x5200
  2c:	544f4e5f 	strbpl	r4, [pc], #-3679	; 34 <current_sp-0x80>
  30:	00594452 	subseq	r4, r9, r2, asr r4
  34:	6f725f6e 	svcvs	0x00725f6e
  38:	6964746f 	stmdbvs	r4!, {r0, r1, r2, r3, r5, r6, sl, ip, sp, lr}^
  3c:	6f6c0072 	svcvs	0x006c0072
  40:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
  44:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  48:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  4c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  50:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  54:	75627200 	strbvc	r7, [r2, #-512]!	; 0xfffffe00
  58:	69640066 	stmdbvs	r4!, {r1, r2, r5, r6}^
  5c:	65735f72 	ldrbvs	r5, [r3, #-3954]!	; 0xfffff08e
  60:	64007463 	strvs	r7, [r0], #-1123	; 0xfffffb9d
  64:	61627269 	cmnvs	r2, r9, ror #4
  68:	6c006573 	cfstr32vs	mvfx6, [r0], {115}	; 0x73
  6c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  70:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  74:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  78:	5f524600 	svcpl	0x00524600
  7c:	41564e49 	cmpmi	r6, r9, asr #28
  80:	5f44494c 	svcpl	0x0044494c
  84:	41524150 	cmpmi	r2, r0, asr r1
  88:	4554454d 	ldrbmi	r4, [r4, #-1357]	; 0xfffffab3
  8c:	73660052 	cmnvc	r6, #82	; 0x52
  90:	00657a69 	rsbeq	r7, r5, r9, ror #20
  94:	61665f6e 	cmnvs	r6, lr, ror #30
  98:	746e6574 	strbtvc	r6, [lr], #-1396	; 0xfffffa8c
  9c:	5f524600 	svcpl	0x00524600
  a0:	41564e49 	cmpmi	r6, r9, asr #28
  a4:	5f44494c 	svcpl	0x0044494c
  a8:	454a424f 	strbmi	r4, [sl, #-591]	; 0xfffffdb1
  ac:	52005443 	andpl	r5, r0, #1124073472	; 0x43000000
  b0:	505f5345 	subspl	r5, pc, r5, asr #6
  b4:	52455241 	subpl	r5, r5, #268435460	; 0x10000004
  b8:	5f6e0052 	svcpl	0x006e0052
  bc:	73746166 	cmnvc	r4, #-2147483623	; 0x80000019
  c0:	32637200 	rsbcc	r7, r3, #0, 4
  c4:	0067736d 	rsbeq	r7, r7, sp, ror #6
  c8:	46746146 	ldrbtmi	r6, [r4], -r6, asr #2
  cc:	52460073 	subpl	r0, r6, #115	; 0x73
  d0:	5f4f4e5f 	svcpl	0x004f4e5f
  d4:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
  d8:	54535953 	ldrbpl	r5, [r3], #-2387	; 0xfffff6ad
  dc:	78004d45 	stmdavc	r0, {r0, r2, r6, r8, sl, fp, lr}
  e0:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
  e4:	74756f5f 	ldrbtvc	r6, [r5], #-3935	; 0xfffff0a1
  e8:	756f6400 	strbvc	r6, [pc, #-1024]!	; fffffcf0 <_sp_base+0xbffefcf8>
  ec:	00656c62 	rsbeq	r6, r5, r2, ror #24
  f0:	4e5f5246 	cdpmi	2, 5, cr5, cr15, cr6, {2}
  f4:	455f544f 	ldrbmi	r5, [pc, #-1103]	; fffffcad <_sp_base+0xbffefcb5>
  f8:	47554f4e 	ldrbmi	r4, [r5, -lr, asr #30]
  fc:	4f435f48 	svcmi	0x00435f48
 100:	46004552 			; <UNDEFINED> instruction: 0x46004552
 104:	58455f52 	stmdapl	r5, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
 108:	00545349 	subseq	r5, r4, r9, asr #6
 10c:	62746166 	rsbsvs	r6, r4, #-2147483623	; 0x80000019
 110:	00657361 	rsbeq	r7, r5, r1, ror #6
 114:	524f5744 	subpl	r5, pc, #68, 14	; 0x1100000
 118:	53460044 	movtpl	r0, #24644	; 0x6044
 11c:	5f455a49 	svcpl	0x00455a49
 120:	5f5f0074 	svcpl	0x005f0074
 124:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
 128:	745f3233 	ldrbvc	r3, [pc], #-563	; 130 <current_sp+0x7c>
 12c:	69736300 	ldmdbvs	r3!, {r8, r9, sp, lr}^
 130:	7000657a 	andvc	r6, r0, sl, ror r5
 134:	00767264 	rsbseq	r7, r6, r4, ror #4
 138:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
 13c:	736c635f 	cmnvc	ip, #2080374785	; 0x7c000001
 140:	59420074 	stmdbpl	r2, {r2, r4, r5, r6}^
 144:	64004554 	strvs	r4, [r0], #-1364	; 0xfffffaac
 148:	705f7269 	subsvc	r7, pc, r9, ror #4
 14c:	61007274 	tstvs	r0, r4, ror r2
 150:	00727474 	rsbseq	r7, r2, r4, ror r4
 154:	5f534552 	svcpl	0x00534552
 158:	4f525245 	svcmi	0x00525245
 15c:	49550052 	ldmdbmi	r5, {r1, r4, r6}^
 160:	7300544e 	movwvc	r5, #1102	; 0x44e
 164:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 168:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 16c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 170:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 174:	52460074 	subpl	r0, r6, #116	; 0x74
 178:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
 17c:	5252455f 	subspl	r4, r2, #398458880	; 0x17c00000
 180:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
 184:	00632e6e 	rsbeq	r2, r3, lr, ror #28
 188:	445f5246 	ldrbmi	r5, [pc], #-582	; 190 <current_sp+0xdc>
 18c:	5f4b5349 	svcpl	0x004b5349
 190:	00525245 	subseq	r5, r2, r5, asr #4
 194:	736e6977 	cmnvc	lr, #1949696	; 0x1dc000
 198:	00746365 	rsbseq	r6, r4, r5, ror #6
 19c:	4f5f5246 	svcmi	0x005f5246
 1a0:	5246004b 	subpl	r0, r6, #75	; 0x4b
 1a4:	4952575f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
 1a8:	505f4554 	subspl	r4, pc, r4, asr r5	; <UNPREDICTABLE>
 1ac:	45544f52 	ldrbmi	r4, [r4, #-3922]	; 0xfffff0ae
 1b0:	44455443 	strbmi	r5, [r5], #-1091	; 0xfffffbbd
 1b4:	54414600 	strbpl	r4, [r1], #-1536	; 0xfffffa00
 1b8:	66005346 	strvs	r5, [r0], -r6, asr #6
 1bc:	00727470 	rsbseq	r7, r2, r0, ror r4
 1c0:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
 1c4:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 1c8:	5f524600 	svcpl	0x00524600
 1cc:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
 1d0:	0054554f 	subseq	r5, r4, pc, asr #10
 1d4:	72696463 	rsbvc	r6, r9, #1660944384	; 0x63000000
 1d8:	6c637300 	stclvs	3, cr7, [r3], #-0
 1dc:	00747375 	rsbseq	r7, r4, r5, ror r3
 1e0:	5f534552 	svcpl	0x00534552
 1e4:	46004b4f 	strmi	r4, [r0], -pc, asr #22
 1e8:	4f4e5f52 	svcmi	0x004e5f52
 1ec:	4c49465f 	mcrrmi	6, 5, r4, r9, cr15
 1f0:	52460045 	subpl	r0, r6, #69	; 0x45
 1f4:	544f4e5f 	strbpl	r4, [pc], #-3679	; 1fc <current_sp+0x148>
 1f8:	414e455f 	cmpmi	lr, pc, asr r5
 1fc:	44454c42 	strbmi	r4, [r5], #-3138	; 0xfffff3be
 200:	73616c00 	cmnvc	r1, #0, 24
 204:	6c635f74 	stclvs	15, cr5, [r3], #-464	; 0xfffffe30
 208:	75007473 	strvc	r7, [r0, #-1139]	; 0xfffffb8d
 20c:	00636573 	rsbeq	r6, r3, r3, ror r5
 210:	61746164 	cmnvs	r4, r4, ror #2
 214:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
 218:	6a626f00 	bvs	189be20 <__mprec_tinytens+0x18775b0>
 21c:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
 220:	736e7500 	cmnvc	lr, #0, 10
 224:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 228:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
 22c:	73007261 	movwvc	r7, #609	; 0x261
 230:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 234:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 238:	5f524600 	svcpl	0x00524600
 23c:	41564e49 	cmpmi	r6, r9, asr #28
 240:	5f44494c 	svcpl	0x0044494c
 244:	56495244 	strbpl	r5, [r9], -r4, asr #4
 248:	52460045 	subpl	r0, r6, #69	; 0x45
 24c:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
 250:	00444549 	subeq	r4, r4, r9, asr #10
 254:	4d5f5246 	lfmmi	f5, 2, [pc, #-280]	; 144 <current_sp+0x90>
 258:	5f53464b 	svcpl	0x0053464b
 25c:	524f4241 	subpl	r4, pc, #268435460	; 0x10000004
 260:	00444554 	subeq	r4, r4, r4, asr r5
 264:	4c5f5246 	lfmmi	f5, 2, [pc], {70}	; 0x46
 268:	454b434f 	strbmi	r4, [fp, #-847]	; 0xfffffcb1
 26c:	66770044 	ldrbtvs	r0, [r7], -r4, asr #32
 270:	0067616c 	rsbeq	r6, r7, ip, ror #2
 274:	6e756678 	mrcvs	6, 3, r6, cr5, cr8, {3}
 278:	6e695f63 	cdpvs	15, 6, cr5, cr9, cr3, {3}
 27c:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
 280:	31314320 	teqcc	r1, r0, lsr #6
 284:	332e3620 			; <UNDEFINED> instruction: 0x332e3620
 288:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
 28c:	30373130 	eorscc	r3, r7, r0, lsr r1
 290:	20303236 	eorscs	r3, r0, r6, lsr r2
 294:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
 298:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
 29c:	415b2029 	cmpmi	fp, r9, lsr #32
 2a0:	652f4d52 	strvs	r4, [pc, #-3410]!	; fffff556 <_sp_base+0xbffef55e>
 2a4:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
 2a8:	2d646564 	cfstr64cs	mvdx6, [r4, #-400]!	; 0xfffffe70
 2ac:	72622d36 	rsbvc	r2, r2, #3456	; 0xd80
 2b0:	68636e61 	stmdavs	r3!, {r0, r5, r6, r9, sl, fp, sp, lr}^
 2b4:	76657220 	strbtvc	r7, [r5], -r0, lsr #4
 2b8:	6f697369 	svcvs	0x00697369
 2bc:	3432206e 	ldrtcc	r2, [r2], #-110	; 0xffffff92
 2c0:	37333439 			; <UNDEFINED> instruction: 0x37333439
 2c4:	6d2d205d 	stcvs	0, cr2, [sp, #-372]!	; 0xfffffe8c
 2c8:	3d757063 	ldclcc	0, cr7, [r5, #-396]!	; 0xfffffe74
 2cc:	376d7261 	strbcc	r7, [sp, -r1, ror #4]!
 2d0:	696d6474 	stmdbvs	sp!, {r2, r4, r5, r6, sl, sp, lr}^
 2d4:	2d20732d 	stccs	3, cr7, [r0, #-180]!	; 0xffffff4c
 2d8:	2d203367 	stccs	3, cr3, [r0, #-412]!	; 0xfffffe64
 2dc:	61776467 	cmnvs	r7, r7, ror #8
 2e0:	322d6672 	eorcc	r6, sp, #119537664	; 0x7200000
 2e4:	73672d20 	cmnvc	r7, #32, 26	; 0x800
 2e8:	63697274 	cmnvs	r9, #116, 4	; 0x40000007
 2ec:	77642d74 			; <UNDEFINED> instruction: 0x77642d74
 2f0:	20667261 	rsbcs	r7, r6, r1, ror #4
 2f4:	76004f2d 	strvc	r4, [r0], -sp, lsr #30
 2f8:	61626c6f 	cmnvs	r2, pc, ror #24
 2fc:	46006573 			; <UNDEFINED> instruction: 0x46006573
 300:	4e495f52 	mcrmi	15, 2, r5, cr9, cr2, {2}
 304:	494c4156 	stmdbmi	ip, {r1, r2, r4, r6, r8, lr}^
 308:	414e5f44 	cmpmi	lr, r4, asr #30
 30c:	6600454d 	strvs	r4, [r0], -sp, asr #10
 310:	665f6973 			; <UNDEFINED> instruction: 0x665f6973
 314:	0067616c 	rsbeq	r6, r7, ip, ror #2
 318:	32334244 	eorscc	r4, r3, #68, 4	; 0x40000004
 31c:	746c6300 	strbtvc	r6, [ip], #-768	; 0xfffffd00
 320:	77006c62 	strvc	r6, [r0, -r2, ror #24]
 324:	5f746961 	svcpl	0x00746961
 328:	6365736d 	cmnvs	r5, #-1275068415	; 0xb4000001
 32c:	61747300 	cmnvs	r4, r0, lsl #6
 330:	52460074 	subpl	r0, r6, #116	; 0x74
 334:	4c555345 	mrrcmi	3, 4, r5, r5, cr5	; <UNPREDICTABLE>
 338:	3a430054 	bcc	10c0490 <__mprec_tinytens+0x109bc20>
 33c:	6573555c 	ldrbvs	r5, [r3, #-1372]!	; 0xfffffaa4
 340:	555c7372 	ldrbpl	r7, [ip, #-882]	; 0xfffffc8e
 344:	5c524553 	cfldr64pl	mvdx4, [r2], {83}	; 0x53
 348:	6b736544 	blvs	1cd9860 <__mprec_tinytens+0x1cb4ff0>
 34c:	5c706f74 	ldclpl	15, cr6, [r0], #-464	; 0xfffffe30
 350:	2d4d5241 	sfmcs	f5, 2, [sp, #-260]	; 0xfffffefc
 354:	5c564544 	cfldr64pl	mvdx4, [r6], {68}	; 0x44
 358:	6a6f7250 	bvs	1bdcca0 <__mprec_tinytens+0x1bb8430>
 35c:	73746365 	cmnvc	r4, #-1811939327	; 0x94000001
 360:	63706c5c 	cmnvs	r0, #92, 24	; 0x5c00
 364:	78783332 	ldmdavc	r8!, {r1, r4, r5, r8, r9, ip, sp}^
 368:	63706c5c 	cmnvs	r0, #92, 24	; 0x5c00
 36c:	38383332 	ldmdacc	r8!, {r1, r4, r5, r8, r9, ip, sp}
 370:	6f69622d 	svcvs	0x0069622d
 374:	64735c73 	ldrbtvs	r5, [r3], #-3187	; 0xfffff38d
 378:	70615c6b 	rsbvc	r5, r1, fp, ror #24
 37c:	63696c70 	cmnvs	r9, #112, 24	; 0x7000
 380:	6f697461 	svcvs	0x00697461
 384:	61665c6e 	cmnvs	r6, lr, ror #24
 388:	52460074 	subpl	r0, r6, #116	; 0x74
 38c:	5f4f4e5f 	svcpl	0x004f4e5f
 390:	48544150 	ldmdami	r4, {r4, r6, r8, lr}^
 394:	5f524600 	svcpl	0x00524600
 398:	5f544f4e 	svcpl	0x00544f4e
 39c:	44414552 	strbmi	r4, [r1], #-1362	; 0xfffffaae
 3a0:	616d0059 	qdsubvs	r0, r9, sp
 3a4:	46006e69 	strmi	r6, [r0], -r9, ror #28
 3a8:	4a424f46 	bmi	10940c8 <__mprec_tinytens+0x106f858>
 3ac:	Address 0x000003ac is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	0000000c 	andeq	r0, r0, ip
  14:	00000000 	andeq	r0, r0, r0
  18:	40002050 	andmi	r2, r0, r0, asr r0
  1c:	00000038 	andeq	r0, r0, r8, lsr r0
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	00000000 	andeq	r0, r0, r0
  28:	40002088 	andmi	r2, r0, r8, lsl #1
  2c:	00000094 	muleq	r0, r4, r0
  30:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
  34:	5a018e02 	bpl	63844 <__mprec_tinytens+0x3efd4>
  38:	0ec4ce0a 	cdpeq	14, 12, cr12, cr4, cr10, {0}
  3c:	000b4200 	andeq	r4, fp, r0, lsl #4
  40:	00000028 	andeq	r0, r0, r8, lsr #32
  44:	00000000 	andeq	r0, r0, r0
  48:	4000211c 	andmi	r2, r0, ip, lsl r1
  4c:	0000025c 	andeq	r0, r0, ip, asr r2
  50:	840c0e42 	strhi	r0, [ip], #-3650	; 0xfffff1be
  54:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
  58:	f80e4201 			; <UNDEFINED> instruction: 0xf80e4201
  5c:	0aa00204 	beq	fe800874 <_sp_base+0xbe7f087c>
  60:	ce420c0e 	cdpgt	12, 4, cr0, cr2, cr14, {0}
  64:	000ec4c5 	andeq	ip, lr, r5, asr #9
  68:	00000b42 	andeq	r0, r0, r2, asr #22
