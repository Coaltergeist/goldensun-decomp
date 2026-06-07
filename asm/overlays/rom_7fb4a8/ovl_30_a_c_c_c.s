	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_200808c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	mov	r5, #1
	and	r3, r2
	mov	r7, r0
	neg	r5, r5
	cmp	r3, #3
	bne	.Lee
	ldr	r3, =REG_SIOCNT
	ldr	r3, [r3]
	ldr	r0, =0x303
	lsl	r3, #26
	lsr	r5, r3, #30
	bl	__Func_8079358
	b	.Lf4
.Lb0:
	ldr	r3, =.L1928
	lsl	r2, r7, #2
	add	r6, r2, r3
	cmp	r5, #0
	beq	.Lc2
	ldr	r0, =0x302
	bl	__Func_8079358
	b	.Lc8
.Lc2:
	ldr	r0, =0x302
	bl	__Func_8079374
.Lc8:
	ldr	r0, =0x302
	bl	__Func_8079338
	mov	r3, #1
	eor	r0, r3
	lsl	r2, r0, #1
	ldr	r3, =ewram_2002024
	add	r2, r0
	lsl	r2, #3
	add	r2, r3
	ldr	r3, =.L1940
	ldrb	r3, [r3, r7]
	lsl	r3, #2
	ldr	r2, [r2, r3]
	ldr	r3, [r6]
	cmp	r2, r3
	bne	.L102
	mov	r0, #1
	b	.L104
.Lee:
	ldr	r0, =0x303
	bl	__Func_8079374
.Lf4:
	cmp	r5, #0
	blt	.L102
	ldr	r0, =0x303
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lb0
.L102:
	mov	r0, #0
.L104:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_200808c

.thumb_func_start OvlFunc_971_2008128
	ldr	r3, =.L1940
	ldr	r2, =.L1928
	lsl	r1, r0, #2
	ldrb	r3, [r3, r0]
	ldr	r4, =ewram_2002224
	ldr	r2, [r1, r2]
	lsl	r3, #2
	str	r2, [r3, r4]
	bx	lr
.func_end OvlFunc_971_2008128

.thumb_func_start OvlFunc_971_2008148
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r2, #1
	mov	r0, #0
	mov	r8, r3
	mov	r10, r2
	bl	__Func_8092054
	mov	r2, #0xe0
	ldr	r3, [r0, #0x10]
	lsl	r2, #16
	cmp	r3, r2
	ble	.L172
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079374
.L172:
	mov	r3, #0xc1
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	beq	.L240
	mov	r0, #0
	bl	OvlFunc_971_200808c
	ldr	r0, =0x303
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1c0
	ldr	r2, =.L1f4c
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x19
	ble	.L1c6
	ldr	r7, =Func_80008d4
	ldr	r6, =ewram_2002024
	mov	r5, #3
.L1a2:
	mov	r0, r6
	mov	r1, #0x14
	sub	r5, #1
	bl	_call_via_r7
	add	r6, #0x18
	cmp	r5, #0
	bge	.L1a2
	ldr	r2, =.L1f4c
	mov	r3, #0
	str	r3, [r2]
	mov	r0, #4
	bl	OvlFunc_971_2008128
	b	.L1c6
.L1c0:
	ldr	r2, =.L1f4c
	mov	r3, #0
	str	r3, [r2]
.L1c6:
	ldr	r3, =.L1f4c
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L216
	mov	r0, #0
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	beq	.L20c
	mov	r0, #1
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.L1ec
	mov	r0, #2
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	beq	.L20c
.L1ec:
	ldr	r0, =0x201
	bl	__Func_8079358
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L206
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #1
	strh	r3, [r2]
.L206:
	mov	r3, #1
	mov	r10, r3
	b	.L216
.L20c:
	ldr	r0, =0x201
	bl	__Func_8079374
	mov	r2, #0
	mov	r10, r2
.L216:
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L240
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L240
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L240
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #1
	strh	r3, [r2]
.L240:
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L254
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L292
.L254:
	ldr	r0, =0x173
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L292
	mov	r0, #0
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.L292
	ldr	r3, =.L1f4c
	ldr	r3, [r3]
	cmp	r3, #0x18
	ble	.L292
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #2
	strh	r3, [r2]
	ldr	r0, =0x205
	bl	__Func_8079358
	ldr	r0, =0x201
	bl	__Func_8079374
	ldr	r0, =0x202
	bl	__Func_8079374
	mov	r0, #4
	bl	OvlFunc_971_2008128
.L292:
	ldr	r0, =0x205
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2a6
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #2
	strh	r3, [r2]
.L2a6:
	mov	r0, r10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008148

.thumb_func_start OvlFunc_971_20082d8
	push	{lr}
	ldr	r0, =0x203
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L32e
	ldr	r2, =.L1f50
	ldr	r3, [r2]
	mov	r1, #0x96
	add	r3, #1
	lsl	r1, #1
	str	r3, [r2]
	cmp	r3, r1
	bne	.L2fe
	str	r0, [r2]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079374
.L2fe:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L32e
	bl	__Func_80916b0
	ldr	r0, =0x292e
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #5
	bl	__Func_80030f8
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	bl	__Func_8091750
.L32e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_20082d8

.thumb_func_start OvlFunc_971_2008340
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #4
	ldr	r5, [r3]
	bl	OvlFunc_971_2008128
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x203
	bl	__Func_8079374
	bl	__Func_80916b0
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0
	strh	r3, [r2]
	ldr	r0, =0x2927
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	ldr	r0, =0x205
	bl	__Func_8079374
	bl	__Func_8091750
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008340

.thumb_func_start OvlFunc_971_2008398
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0xaa
	lsl	r2, #1
	mov	r8, r2
	mov	r0, r8
	sub	sp, #0x30
	bl	__Func_8004970
	mov	r7, #0xe1
	mov	r3, #0
	mov	r11, r0
	mov	r9, r3
	lsl	r7, #2
	mov	r10, r3
	b	.L474
.L3c2:
	ldr	r3, =ewram_2002238
	ldrh	r3, [r3]
	cmp	r3, r8
	bls	.L3cc
	b	.L4dc
.L3cc:
	mov	r0, #1
	sub	r7, #1
	bl	__Func_80030f8
	cmp	r7, #0
	blt	.L3e4
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L3ea
.L3e4:
	add	r5, #1
	cmp	r5, #0x18
	bgt	.L4a0
.L3ea:
	bl	__Func_80064f4
	cmp	r0, #0
	bne	.L3c2
	ldr	r3, =ewram_2002238
	ldrh	r3, [r3]
	mov	r12, r3
	cmp	r12, r8
	bne	.L4dc
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L40c
	mov	r3, #1
	add	r9, r3
.L40c:
	mov	r0, #2
	bl	__Func_80030f8
	ldr	r0, =0x80c
	mov	r1, sp
	bl	__Func_801964c
	mov	r0, #0
	mov	r5, sp
	ldrh	r3, [r5, r0]
	cmp	r3, #0
	beq	.L434
	mov	r2, r5
.L426:
	add	r0, #1
	cmp	r0, #4
	bgt	.L434
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, #0
	bne	.L426
.L434:
	mov	r4, r0
	mov	r0, #0xe
	cmp	r0, r4
	blt	.L454
	sub	r3, r6, r4
	mov	r1, r6
	mov	r2, r3
	add	r1, #0xe
	add	r2, #0xe
.L446:
	ldrb	r3, [r2]
	sub	r0, #1
	strb	r3, [r1]
	sub	r2, #1
	sub	r1, #1
	cmp	r0, r4
	bge	.L446
.L454:
	cmp	r4, #0
	ble	.L46c
	mov	r1, r6
	mov	r2, r5
	mov	r0, r4
.L45e:
	ldrh	r3, [r2]
	sub	r0, #1
	strb	r3, [r1]
	add	r2, #2
	add	r1, #1
	cmp	r0, #0
	bne	.L45e
.L46c:
	mov	r3, #0
	mov	r2, #1
	strb	r3, [r6, #0xe]
	add	r10, r2
.L474:
	mov	r3, r10
	cmp	r3, #2
	bgt	.L4ec
	mov	r0, r10
	add	r0, #0x80
	bl	__Func_8077394
	mov	r6, r0
	bl	__Func_8006408
	mov	r2, #1
	neg	r2, r2
	mov	r5, #0
	cmp	r0, r2
	bne	.L3ea
	b	.L514
.L494:
	ldr	r3, =ewram_2002238
	mov	r2, #0xa0
	ldrh	r3, [r3]
	lsl	r2, #1
	cmp	r3, r2
	ble	.L4a8
.L4a0:
	mov	r3, #1
	neg	r3, r3
	mov	r9, r3
	b	.L516
.L4a8:
	mov	r0, #1
	sub	r7, #1
	bl	__Func_80030f8
	cmp	r7, #0
	blt	.L4c0
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L4c6
.L4c0:
	add	r5, #1
	cmp	r5, #0x18
	bgt	.L4dc
.L4c6:
	bl	__Func_80064f4
	cmp	r0, #0
	bne	.L494
	ldr	r3, =ewram_2002238
	ldrh	r3, [r3]
	mov	r12, r3
	mov	r3, #0xa0
	lsl	r3, #1
	cmp	r12, r3
	beq	.L4e4
.L4dc:
	mov	r2, #1
	neg	r2, r2
	mov	r9, r2
	b	.L516
.L4e4:
	mov	r0, #2
	bl	__Func_80030f8
	b	.L516
.L4ec:
	mov	r0, r11
	bl	__Func_8002df0
	mov	r3, #0xa0
	lsl	r3, #1
	mov	r8, r3
	mov	r0, r8
	bl	__Func_8004970
	mov	r11, r0
	mov	r0, #1
	bl	__Func_8077330
	bl	__Func_8006408
	mov	r2, #1
	neg	r2, r2
	mov	r5, #0
	cmp	r0, r2
	bne	.L4c6
.L514:
	mov	r9, r0
.L516:
	mov	r0, r11
	bl	__Func_8002df0
	mov	r0, r9
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008398

.thumb_func_start OvlFunc_971_200853c
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_80795fc
	cmp	r0, #3
	ble	.L54a
	mov	r0, #3
.L54a:
	cmp	r0, #0
	ble	.L56a
	ldr	r3, =ewram_2000240
	mov	r2, #0xfc
	lsl	r2, #1
	add	r3, r2
	mov	r1, r0
.L558:
	ldrb	r2, [r3]
	add	r3, #1
	cmp	r5, #0
	beq	.L564
	strh	r2, [r5]
	add	r5, #2
.L564:
	sub	r1, #1
	cmp	r1, #0
	bne	.L558
.L56a:
	cmp	r5, #0
	beq	.L572
	ldr	r3, .L578	@ 0xff
	strh	r3, [r5]
.L572:
	pop	{r5}
	pop	{r1}
	bx	r1

	.align	2, 0
.L578:
	.word	0xff
	.pool
.func_end OvlFunc_971_200853c

.thumb_func_start OvlFunc_971_2008580
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, #0xaa
	lsl	r5, #1
	mov	r0, r5
	sub	sp, #0x20
	bl	__Func_8004970
	add	r5, sp, #0x10
	mov	r1, #0
	mov	r8, r0
	mov	r0, r5
	str	r1, [sp, #4]
	bl	OvlFunc_971_200853c
	mov	r2, sp
	add	r2, #8
	str	r2, [sp]
	ldr	r1, [sp]
	mov	r6, #0x96
	mov	r3, sp
	lsl	r6, #2
	mov	r11, r0
	mov	r2, #0
	add	r3, #0xf
	mov	r12, r1
.L5be:
	strb	r2, [r3]
	sub	r3, #1
	cmp	r3, r12
	bge	.L5be
	mov	r7, #0
	cmp	r7, r11
	bge	.L68a
	mov	r2, #0
	mov	r9, r5
	mov	r10, r2
.L5d2:
	mov	r3, r10
	mov	r1, r9
	ldrh	r0, [r3, r1]
	bl	__Func_8077394
	mov	r2, #0xaa
	mov	r1, r0
	lsl	r2, #1
	ldr	r3, =iwram_3001388
	mov	r0, r8
	bl	_call_via_r3
	mov	r2, #0x95
	lsl	r2, #1
	add	r2, r8
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, r10
	mov	r3, r9
	ldrh	r2, [r1, r3]
	ldr	r1, [sp]
	mov	r3, r7
	sub	r3, #0x80
	strb	r3, [r1, r2]
	mov	r1, #0xaa
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_80063bc
	mov	r2, #1
	neg	r2, r2
	mov	r5, #0
	cmp	r0, r2
	bne	.L63a
	str	r0, [sp, #4]
	b	.L78e
.L61a:
	mov	r0, #1
	sub	r6, #1
	bl	__Func_80030f8
	cmp	r6, #0
	blt	.L632
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L63a
.L632:
	add	r5, #1
	cmp	r5, #0x18
	ble	.L63a
	b	.L772
.L63a:
	bl	__Func_80064f4
	cmp	r0, #0
	bne	.L61a
	mov	r0, #2
	bl	__Func_80030f8
	add	r7, #1
	mov	r1, #2
	add	r10, r1
	cmp	r7, r11
	blt	.L5d2
	b	.L68a
.L654:
	mov	r0, #1
	sub	r6, #1
	bl	__Func_80030f8
	cmp	r6, #0
	blt	.L66c
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L67a
.L66c:
	add	r5, #1
	cmp	r5, #0x18
	ble	.L67a
	mov	r2, #1
	neg	r2, r2
	str	r2, [sp, #4]
	b	.L78e
.L67a:
	bl	__Func_80064f4
	cmp	r0, #0
	bne	.L654
	mov	r0, #2
	bl	__Func_80030f8
	add	r7, #1
.L68a:
	cmp	r7, #2
	bgt	.L6ae
	mov	r3, #0x95
	lsl	r3, #1
	add	r3, r8
	mov	r5, #0
	mov	r1, #0xaa
	strb	r5, [r3]
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_80063bc
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.L67a
	str	r0, [sp, #4]
	b	.L78e
.L6ae:
	mov	r5, #0xa0
	mov	r0, r8
	lsl	r5, #1
	bl	__Func_8002df0
	mov	r0, r5
	bl	__Func_8004970
	mov	r8, r0
	mov	r0, #0
	bl	__Func_8077330
	ldr	r3, =iwram_3001388
	mov	r1, r0
	mov	r2, r5
	mov	r0, r8
	bl	_call_via_r3
	mov	r5, r8
	mov	r2, #0x84
	lsl	r2, #1
	add	r2, r8
	mov	r1, #0
	ldr	r3, [r2]
	mov	r10, r1
	mov	r7, #0x96
	mov	r1, #0x80
	add	r5, #8
	lsl	r7, #2
	mov	r4, #0
	lsl	r1, #1
	cmp	r10, r3
	bge	.L73a
	ldr	r3, [sp]
	mov	r6, r2
	mov	r12, r3
	mov	r0, r5
.L6f8:
	ldrb	r3, [r0, #2]
	mov	r2, r12
	ldrb	r3, [r2, r3]
	strb	r3, [r0, #2]
	lsl	r3, #24
	cmp	r3, #0
	bne	.L72c
	ldr	r3, [r6]
	sub	r3, #1
	cmp	r4, r3
	bge	.L722
	ldr	r2, [r5, r1]
	lsl	r3, r4, #2
	sub	r2, #1
	add	r1, r3, r5
	sub	r2, r4
.L718:
	ldr	r3, [r1, #4]
	sub	r2, #1
	stmia	r1!, {r3}
	cmp	r2, #0
	bne	.L718
.L722:
	ldr	r3, [r6]
	sub	r3, #1
	str	r3, [r6]
	sub	r0, #4
	sub	r4, #1
.L72c:
	mov	r1, #0x80
	lsl	r1, #1
	ldr	r3, [r5, r1]
	add	r4, #1
	add	r0, #4
	cmp	r4, r3
	blt	.L6f8
.L73a:
	mov	r1, #0xa0
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_80063bc
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.L77a
	str	r0, [sp, #4]
	b	.L78e
.L750:
	mov	r0, #1
	sub	r7, #1
	bl	__Func_80030f8
	cmp	r7, #0
	blt	.L768
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L77a
.L768:
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #0x18
	ble	.L77a
.L772:
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #4]
	b	.L78e
.L77a:
	bl	__Func_80064f4
	cmp	r0, #0
	bne	.L750
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #2
	bl	__Func_80030f8
.L78e:
	mov	r0, r8
	bl	__Func_8002df0
	ldr	r0, [sp, #4]
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008580

.thumb_func_start OvlFunc_971_20087b0
	push	{r5, r6, lr}
	mov	r6, #0
	ldr	r0, =0x302
	bl	__Func_8079338
	ldr	r3, =ewram_20023a0
	strb	r6, [r3]
	cmp	r0, #0
	bne	.L7e6
	mov	r0, #5
	bl	__Func_80030f8
	bl	OvlFunc_971_2008580
	mov	r6, r0
	cmp	r6, #0
	blt	.L812
	mov	r0, #5
	bl	__Func_80030f8
	bl	OvlFunc_971_2008398
	mov	r6, r0
	mov	r5, r6
	cmp	r6, #0
	bge	.L802
	b	.L80e
.L7e6:
	bl	OvlFunc_971_2008398
	mov	r6, r0
	mov	r5, r6
	cmp	r6, #0
	blt	.L812
	mov	r0, #0xa
	bl	__Func_80030f8
	bl	OvlFunc_971_2008580
	mov	r6, r0
	cmp	r6, #0
	blt	.L812
.L802:
	mov	r0, #0xfc
	lsl	r0, #2
	mov	r1, r5
	bl	__Func_80793c8
	mov	r6, r5
.L80e:
	cmp	r5, #0
	bge	.L836
.L812:
	ldr	r1, =ewram_2002220
	ldr	r0, =REG_IME
	ldrh	r4, [r0]
	strh	r0, [r0]
	mov	r2, #0
	mov	r3, #0x80
	strb	r3, [r1, #1]
	ldr	r3, =ewram_2002080
	str	r2, [r3]
	ldr	r3, =ewram_2002008
	strh	r2, [r3]
	ldr	r3, =ewram_20023ac
	str	r2, [r3]
	ldr	r3, =ewram_2002238
	strb	r2, [r1, #3]
	strb	r2, [r1, #2]
	strh	r2, [r3]
	strh	r4, [r0]
.L836:
	mov	r0, r6
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_20087b0

.thumb_func_start OvlFunc_971_2008860
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r2, #0
	ldr	r0, =0x173
	mov	r8, r2
	mov	r7, #0
	mov	r10, r3
	mov	r6, #0
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L886
	bl	__Func_80916b0
	b	.L95a
.L886:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L894
	b	.Lb88
.L894:
	ldr	r0, =0x205
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L8d0
	b	.Lb88
.L8a0:
	mov	r2, #0xc1
	lsl	r2, #1
	mov	r3, #2
	add	r2, r10
	strh	r3, [r2]
	ldr	r0, =0x205
	bl	__Func_8079358
	ldr	r0, =0x201
	bl	__Func_8079374
	ldr	r0, =0x202
	bl	__Func_8079374
	mov	r0, #4
	bl	OvlFunc_971_2008128
	mov	r0, #0x80
	mov	r3, #1
	lsl	r0, #2
	mov	r8, r3
	bl	__Func_8079374
	b	.L948
.L8d0:
	bl	__Func_80916b0
	ldr	r0, =0x203
	bl	__Func_8079358
	mov	r0, #2
	bl	OvlFunc_971_2008128
	mov	r0, #2
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.L93e
	ldr	r0, =0x2928
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8017658
	mov	r7, r0
	b	.L93e
.L8fa:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =0x201
	mov	r5, #0
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L90e
	mov	r5, #1
.L90e:
	ldr	r0, =0x205
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L91a
	mov	r5, #1
.L91a:
	mov	r0, #2
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.L938
	mov	r0, #1
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.L938
	add	r6, #1
	cmp	r6, #0x19
	ble	.L93a
	mov	r5, #1
	b	.L93a
.L938:
	mov	r6, #0
.L93a:
	cmp	r5, #0
	bne	.L8a0
.L93e:
	mov	r0, #2
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	beq	.L8fa
.L948:
	cmp	r7, #0
	beq	.L954
	mov	r0, r7
	mov	r1, #1
	bl	__Func_8016418
.L954:
	mov	r0, #5
	bl	__Func_80030f8
.L95a:
	mov	r2, r8
	cmp	r2, #0
	beq	.L962
	b	.Lb5c
.L962:
	mov	r1, #0xf9
	lsl	r1, #3
	mov	r0, #0x36
	bl	__Func_80048f4
	ldr	r5, =OvlFunc_971_2008148
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8004278
	mov	r0, #5
	bl	__Func_80118a8
	mov	r0, #8
	bl	__Func_80030f8
	mov	r0, #5
	bl	__Func_80118c0
	ldr	r0, =0x173
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L9e8
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	ldr	r0, =0x293b
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0x2d
	bl	__Func_80030f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xd8
	mov	r2, #0xb8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	b	.Lab6
.L9e8:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xd8
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__Func_809218c
	bl	OvlFunc_971_20087b0
	cmp	r0, #0
	bge	.Laa2
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0xc8
	mov	r1, #0xd8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #5
	bl	__Func_80118a8
	mov	r0, #8
	bl	__Func_80030f8
	mov	r0, #5
	bl	__Func_80118c0
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0x36
	bl	__Func_8002dd8
	mov	r0, #0
	bl	OvlFunc_971_2008128
	mov	r0, #4
	bl	OvlFunc_971_2008128
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_80041d8
	mov	r1, #1
	mov	r0, r5
	bl	__Func_8004358
	ldr	r0, =0x201
	bl	__Func_8079374
	ldr	r0, =0x202
	bl	__Func_8079374
	ldr	r0, =0x303
	bl	__Func_8079374
	ldr	r0, =0x203
	bl	__Func_8079374
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079374
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r10
	mov	r3, #2
	strh	r3, [r2]
	b	.Lb5c
.Laa2:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_80923c4
.Lab6:
	ldr	r0, =0x173
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb0c
	ldr	r5, =0xbe
	mov	r1, #8
	mov	r0, r5
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #9
	bl	__Func_8091fa8
	b	.Lb1e

	.pool_aligned

.Lb0c:
	ldr	r5, =0xbe
	mov	r1, #0xa
	mov	r0, r5
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #0xb
	bl	__Func_8091fa8
.Lb1e:
	ldr	r3, =ewram_2000240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #4
	strb	r2, [r3]
	mov	r0, #1
	mov	r1, #1
	bl	__Func_8091eb0
	ldr	r2, =ewram_2002224
	ldr	r3, .Lb64	@ 0x58
	ldr	r1, .Lb68	@ 0x45
	strh	r3, [r2, #2]
	ldr	r3, .Lb6c	@ 0x43
	strh	r1, [r2]
	strh	r1, [r2, #4]
	strh	r3, [r2, #6]
	ldr	r4, =0x7c7
	ldr	r2, =ewram_2018000
	mov	r1, #0
	mov	r0, r6
.Lb48:
	ldrb	r3, [r0]
	add	r1, #1
	strb	r3, [r2]
	add	r0, #1
	add	r2, #1
	cmp	r1, r4
	bls	.Lb48
	mov	r0, #0x36
	bl	__Func_8002dd8
.Lb5c:
	bl	__Func_8091750
	b	.Lb88

	.align	2, 0
.Lb64:
	.word	0x58
.Lb68:
	.word	0x45
.Lb6c:
	.word	0x43
	.pool

.Lb88:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008860

.thumb_func_start OvlFunc_971_2008b94
	push	{r5, r6, r7, lr}
	ldr	r6, =0x2930
	bl	__Func_80916b0
	ldr	r7, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r7, r2
	mov	r0, #8
	ldr	r1, [r3]
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.Lbbe
	mov	r0, #1
	bl	__Func_80030f8
.Lbbe:
	mov	r0, #0
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.Lc40
	mov	r0, #5
	bl	OvlFunc_971_2008128
	bl	OvlFunc_971_200803c
	ldr	r0, =0x173
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lc74
	add	r0, r6, #5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	mov	r5, r0
	cmp	r5, #0
	bne	.Lc28
	mov	r0, #0xfa
	mov	r1, #0
	lsl	r0, #2
	bl	__Func_80793c8
	ldr	r0, =0x173
	bl	__Func_8079358
	mov	r0, #0xb9
	lsl	r0, #1
	bl	__Func_8079374
	mov	r0, #0xb6
	lsl	r0, #1
	bl	__Func_8079374
	ldr	r0, =0x202
	bl	__Func_8079358
	ldr	r2, =0x2aa
	add	r3, r7, r2
	add	r0, r6, #7
	strh	r5, [r3]
	b	.Lc76
.Lc28:
	ldr	r0, =0x173
	bl	__Func_8079374
	mov	r0, #0xb6
	lsl	r0, #1
	bl	__Func_8079358
	mov	r0, #0
	bl	OvlFunc_971_2008128
	add	r0, r6, #6
	b	.Lc76
.Lc40:
	ldr	r0, =0x173
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lc6a
	mov	r0, #0
	bl	OvlFunc_971_2008128
	ldr	r0, =0x293d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	ldr	r0, =0x202
	bl	__Func_8079374
	ldr	r0, =0x173
	bl	__Func_8079374
.Lc6a:
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lc84
.Lc74:
	add	r0, r6, #3
.Lc76:
	bl	__Func_8092b94
.Lc7a:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092c40
	b	.Ld3c
.Lc84:
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lcb2
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lcb2
	mov	r0, r6
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092c40
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079358
	b	.Ld3c
.Lcb2:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lccc
	add	r0, r6, #2
	bl	__Func_8092b94
	b	.Lcd2
.Lccc:
	add	r0, r6, #1
	bl	__Func_8092b94
.Lcd2:
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Ld2e
	mov	r0, #0
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	beq	.Ld26
	mov	r0, #0xb6
	lsl	r0, #1
	bl	__Func_8079358
	mov	r0, #0xb9
	lsl	r0, #1
	bl	__Func_8079358
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld12
	add	r0, r6, #3
	bl	__Func_8092b94
	b	.Ld18
.Ld12:
	add	r0, r6, #4
	bl	__Func_8092b94
.Ld18:
	mov	r0, #1
	bl	OvlFunc_971_2008128
	ldr	r0, =0x202
	bl	__Func_8079358
	b	.Lc7a
.Ld26:
	ldr	r0, =0x205
	bl	__Func_8079358
	b	.Ld3c
.Ld2e:
	mov	r0, r6
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092c40
.Ld3c:
	bl	__Func_8091750
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008b94

.thumb_func_start OvlFunc_971_2008d68
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r6, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r6, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, r7
	bl	__Func_809280c
	ldr	r3, =0xffff5fff
	ldr	r2, =0x3ffe
	add	r5, r3
	cmp	r5, r2
	bhi	.Ldac
	mov	r2, #0xab
	ldr	r3, =0x297b
	lsl	r2, #2
	add	r5, r6, r2
	mov	r8, r3
	ldrh	r3, [r5]
	cmp	r3, #0
	bne	.Ldba
	ldr	r0, =0x2988
	b	.Ldca
.Ldac:
	ldr	r2, =0x2b2
	ldr	r3, =0x297d
	add	r5, r6, r2
	mov	r8, r3
	ldrh	r3, [r5]
	cmp	r3, #0
	beq	.Ldd8
.Ldba:
	bl	__Func_80198dc
	mov	r1, #5
	ldrh	r0, [r5]
	bl	__Func_8019908
	mov	r0, r8
	add	r0, #1
.Ldca:
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	b	.Lde6
.Ldd8:
	ldr	r0, =0x2989
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
.Lde6:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008d68

.thumb_func_start OvlFunc_971_2008e10
	push	{r5, r6, r7, lr}
	sub	sp, #4
	mov	r5, r0
	bl	__Func_80916b0
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, r5
	bl	__Func_809280c
	ldr	r0, =0x989
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #6
	mov	r3, #4
	bl	__Func_80162d4
	mov	r7, #1
	mov	r6, r0
	mov	r5, #0
	neg	r7, r7
	b	.Le64
.Le54:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.Lebe
	mov	r0, #1
	bl	__Func_80030f8
.Le64:
	cmp	r5, r7
	beq	.Le7e
	mov	r0, r6
	bl	__Func_8016478
	mov	r3, #0
	mov	r0, r5
	mov	r1, #3
	mov	r2, r6
	str	r3, [sp]
	bl	__Func_801e9a0
	mov	r7, r5
.Le7e:
	ldr	r1, =iwram_3001b04
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Le8c
	sub	r5, #1
.Le8c:
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Le98
	add	r5, #1
.Le98:
	cmp	r5, #0
	bge	.Le9e
	mov	r5, #0
.Le9e:
	ldr	r1, =gKeyPress
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Le54
.Leaa:
	mov	r0, r6
	mov	r1, #1
	bl	__Func_8016418
	cmp	r5, #0
	blt	.Lec4
	mov	r0, r5
	bl	__Func_80b5368
	b	.Lec8
.Lebe:
	mov	r5, #1
	neg	r5, r5
	b	.Leaa
.Lec4:
	ldr	r0, =0x98a
	b	.Lece
.Lec8:
	cmp	r0, #0
	beq	.Ledc
	ldr	r0, =0x98b
.Lece:
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	b	.Leea
.Ledc:
	ldr	r0, =0x98c
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
.Leea:
	mov	r0, #0xa
	bl	__Func_80030f8
	bl	__Func_8091750
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008e10

.thumb_func_start OvlFunc_971_2008f18
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, r5
	bl	__Func_80b29a8
	bl	__Func_8091750
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008f18

.thumb_func_start OvlFunc_971_2008f30
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	__Func_80795fc
	mov	r5, r0
	mov	r0, #0xb9
	lsl	r0, #1
	mov	r6, #3
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lf4a
	mov	r6, #4
.Lf4a:
	cmp	r5, r6
	ble	.Lf50
	mov	r5, r6
.Lf50:
	mov	r1, #0
	cmp	r1, r5
	bge	.Lf7a
	ldr	r3, =ewram_2000240
	mov	r0, #0xfc
	lsl	r0, #1
	add	r2, r3, r0
	mov	r0, r2
.Lf60:
	ldrb	r3, [r0]
	add	r0, #1
	cmp	r3, #0xff
	beq	.Lf7a
	ldrb	r3, [r2]
	cmp	r3, r7
	bne	.Lf72
	mov	r0, #1
	b	.Lf7c
.Lf72:
	add	r1, #1
	add	r2, #1
	cmp	r1, r5
	blt	.Lf60
.Lf7a:
	mov	r0, #0
.Lf7c:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008f30

