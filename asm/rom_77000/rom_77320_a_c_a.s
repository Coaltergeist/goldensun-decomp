	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CalcStats  @ 0x08077428
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0x60
	sub	sp, #4
	bl	Func_8004970
	mov	r6, r0
	mov	r0, r5
	bl	GetUnit
	mov	r7, r0
	mov	r0, #0x10
	ldrsh	r3, [r7, r0]
	str	r3, [r6]
	mov	r1, #0x12
	ldrsh	r3, [r7, r1]
	str	r3, [r6, #4]
	ldrh	r3, [r7, #0x18]
	str	r3, [r6, #8]
	ldrh	r3, [r7, #0x1a]
	str	r3, [r6, #0xc]
	ldrh	r3, [r7, #0x1c]
	str	r3, [r6, #0x10]
	ldrb	r3, [r7, #0x1e]
	str	r3, [r6, #0x18]
	ldrb	r2, [r7, #0x1f]
	mov	r3, #0xf
	and	r3, r2
	str	r3, [r6, #0x1c]
	mov	r3, r7
	add	r3, #0x20
	ldrb	r3, [r3]
	str	r3, [r6, #0x20]
	mov	r3, r7
	add	r3, #0x21
	ldrb	r3, [r3]
	mov	r1, r7
	mov	r2, r6
	str	r3, [r6, #0x24]
	add	r1, #0x24
	add	r2, #0x28
	mov	r5, #3
.L77482:
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	str	r3, [r2]
	mov	r0, #2
	ldrsh	r3, [r1, r0]
	sub	r5, #1
	str	r3, [r2, #4]
	add	r1, #4
	add	r2, #8
	cmp	r5, #0
	bge	.L77482
	mov	r1, #0x34
	ldrsh	r2, [r7, r1]
	mov	r0, #0x14
	ldrsh	r3, [r7, r0]
	mul	r3, r2
	mov	r2, r3
	cmp	r3, #0
	bge	.L774ac
	ldr	r1, =0x3fff
	add	r2, r3, r1
.L774ac:
	asr	r0, r2, #14
	mov	r2, #0x38
	ldrsh	r1, [r7, r2]
	sub	r2, r0, r1
	cmp	r2, #0
	blt	.L774be
	cmp	r2, #1
	bgt	.L774f0
	b	.L774c4
.L774be:
	sub	r3, r1, r0
	cmp	r3, #1
	bgt	.L774f0
.L774c4:
	mov	r3, #0x36
	ldrsh	r2, [r7, r3]
	mov	r0, #0x16
	ldrsh	r3, [r7, r0]
	mul	r3, r2
	mov	r2, r3
	cmp	r3, #0
	bge	.L774d8
	ldr	r1, =0x3fff
	add	r2, r3, r1
.L774d8:
	asr	r0, r2, #14
	mov	r2, #0x3a
	ldrsh	r1, [r7, r2]
	sub	r2, r0, r1
	cmp	r2, #0
	blt	.L774ea
	cmp	r2, #1
	bgt	.L774f0
	b	.L77500
.L774ea:
	sub	r3, r1, r0
	cmp	r3, #1
	ble	.L77500
.L774f0:
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r7, #0x14]
	strh	r3, [r7, #0x16]
	ldrh	r3, [r7, #0x34]
	strh	r3, [r7, #0x38]
	ldrh	r3, [r7, #0x36]
	strh	r3, [r7, #0x3a]
.L77500:
	mov	r3, #0x98
	lsl	r3, #1
	add	r1, r7, r3
	ldrb	r3, [r1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r3
	mov	r3, #4
	and	r3, r0
	mov	r4, #0
	strb	r0, [r1]
	cmp	r3, #0
	beq	.L77522
	mov	r2, #1
	mov	r3, r0
	orr	r3, r2
	strb	r3, [r1]
.L77522:
	mov	r0, #0xa2
	lsl	r0, #1
	add	r3, r7, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L77534
	ldr	r3, [r6, #0x1c]
	add	r3, #1
	str	r3, [r6, #0x1c]
.L77534:
	mov	r1, #0xa1
	lsl	r1, #1
	ldr	r2, =0x143
	add	r3, r7, r1
	strb	r4, [r3]
	ldr	r0, =0x129
	add	r3, r7, r2
	strb	r4, [r3]
	add	r3, r7, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L7754e
	b	.L7790c
.L7754e:
	mov	r5, #0
.L77550:
	lsl	r3, r5, #1
	mov	r1, r3
	add	r1, #0xd8
	ldrh	r2, [r7, r1]
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	bne	.L77564
	b	.L77708
.L77564:
	ldrh	r0, [r7, r1]
	bl	GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #1
	and	r3, r2
	str	r0, [r6, #0x58]
	cmp	r3, #0
	beq	.L77584
	mov	r2, #0x98
	lsl	r2, #1
	add	r1, r7, r2
	ldrb	r2, [r1]
	mov	r3, #3
	orr	r3, r2
	strb	r3, [r1]
.L77584:
	ldr	r1, [r6, #0x58]
	mov	r3, #8
	ldrsh	r2, [r1, r3]
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r6, #8]
	mov	r2, #0xa
	ldrsb	r2, [r1, r2]
	ldr	r3, [r6, #0xc]
	add	r3, r2
	mov	r0, #0
	str	r3, [r6, #0xc]
	mov	r8, r0
.L7759e:
	mov	r1, r8
	ldr	r2, [r6, #0x58]
	lsl	r3, r1, #2
	add	r3, #0x18
	ldrb	r1, [r2, r3]
	add	r2, r3
	mov	r3, #1
	ldrsb	r3, [r2, r3]
	str	r1, [r6, #0x48]
	str	r3, [r6, #0x54]
	cmp	r1, #0x1a
	bls	.L775b8
	b	.L776fc
.L775b8:
	ldr	r2, =.L775c0
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L775c0:
	.word	.L776fc
	.word	.L7762c
	.word	.L77636
	.word	.L77640
	.word	.L7764a
	.word	.L77654
	.word	.L7765e
	.word	.L776fc
	.word	.L776fc
	.word	.L776fc
	.word	.L776fc
	.word	.L776fc
	.word	.L776fc
	.word	.L776fc
	.word	.L776fc
	.word	.L77668
	.word	.L77672
	.word	.L7767c
	.word	.L77686
	.word	.L77690
	.word	.L7769a
	.word	.L776a4
	.word	.L776ae
	.word	.L776b8
	.word	.L776c4
	.word	.L776d2
	.word	.L776f4
.L7762c:
	ldr	r3, [r6]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6]
	b	.L776fc
.L77636:
	ldr	r3, [r6, #0x20]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #0x20]
	b	.L776fc
.L77640:
	ldr	r3, [r6, #4]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #4]
	b	.L776fc
.L7764a:
	ldr	r3, [r6, #0x24]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #0x24]
	b	.L776fc
.L77654:
	ldr	r3, [r6, #0x10]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #0x10]
	b	.L776fc
.L7765e:
	ldr	r3, [r6, #0x18]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #0x18]
	b	.L776fc
.L77668:
	ldr	r3, [r6, #0x28]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #0x28]
	b	.L776fc
.L77672:
	ldr	r3, [r6, #0x30]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #0x30]
	b	.L776fc
.L7767c:
	ldr	r3, [r6, #0x38]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #0x38]
	b	.L776fc
.L77686:
	ldr	r3, [r6, #0x40]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #0x40]
	b	.L776fc
.L77690:
	ldr	r3, [r6, #0x2c]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #0x2c]
	b	.L776fc
.L7769a:
	ldr	r3, [r6, #0x34]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #0x34]
	b	.L776fc
.L776a4:
	ldr	r3, [r6, #0x3c]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #0x3c]
	b	.L776fc
.L776ae:
	ldr	r3, [r6, #0x44]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #0x44]
	b	.L776fc
.L776b8:
	mov	r2, #0xa1
	lsl	r2, #1
	add	r1, r7, r2
	ldrb	r3, [r1]
	ldr	r2, [r6, #0x54]
	b	.L776cc
.L776c4:
	ldr	r3, =0x143
	add	r1, r7, r3
	ldr	r2, [r6, #0x54]
	ldrb	r3, [r1]
.L776cc:
	add	r3, r2
	strb	r3, [r1]
	b	.L776fc
.L776d2:
	mov	r0, #0x98
	lsl	r0, #1
	add	r3, r7, r0
	ldrb	r1, [r3]
	mov	r2, #8
	orr	r2, r1
	strb	r2, [r3]
	b	.L776fc

	.pool_aligned

.L776f4:
	ldr	r3, [r6, #0x1c]
	ldr	r2, [r6, #0x54]
	add	r3, r2
	str	r3, [r6, #0x1c]
.L776fc:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #3
	bgt	.L77708
	b	.L7759e
.L77708:
	add	r5, #1
	cmp	r5, #0xe
	bgt	.L77710
	b	.L77550
.L77710:
	mov	r3, #0x98
	lsl	r3, #1
	add	r1, r7, r3
	ldrb	r2, [r1]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L77728
	mov	r3, #0xa
	neg	r3, r3
	and	r3, r2
	strb	r3, [r1]
.L77728:
	mov	r0, #0x84
	lsl	r0, #1
	add	r0, r7
	mov	r4, #0
	mov	r8, r0
.L77732:
	mov	r1, r8
	ldr	r1, [r1]
	mov	r5, #0
	mov	r10, r1
.L7773a:
	mov	r3, #1
	lsl	r3, r5
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L7778e
	mov	r0, r4
	mov	r1, r5
	str	r4, [sp]
	bl	GetDjinniInfo
	ldr	r3, [r6]
	mov	r2, #4
	ldrsb	r2, [r0, r2]
	add	r3, r2
	str	r3, [r6]
	mov	r2, #5
	ldrsb	r2, [r0, r2]
	ldr	r3, [r6, #4]
	add	r3, r2
	str	r3, [r6, #4]
	mov	r2, #6
	ldrsb	r2, [r0, r2]
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r6, #8]
	mov	r2, #7
	ldrsb	r2, [r0, r2]
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r2, #8
	ldrsb	r2, [r0, r2]
	ldr	r3, [r6, #0x10]
	add	r3, r2
	str	r3, [r6, #0x10]
	mov	r2, #9
	ldrsb	r2, [r0, r2]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r4, [sp]
.L7778e:
	add	r5, #1
	cmp	r5, #0x13
	ble	.L7773a
	mov	r3, #4
	add	r4, #1
	add	r8, r3
	cmp	r4, #3
	ble	.L77732
	ldr	r0, =0x129
	add	r3, r7, r0
	ldrb	r0, [r3]
	bl	GetClassInfo
	mov	r5, r0
	ldrb	r2, [r5, #8]
	ldr	r3, [r6]
	mov	r1, #0xa
	mov	r0, r2
	mul	r0, r3
	bl	__divsi3
	ldrb	r2, [r5, #9]
	ldr	r3, [r6, #4]
	str	r0, [r6]
	mov	r1, #0xa
	mov	r0, r2
	mul	r0, r3
	bl	__divsi3
	ldrb	r2, [r5, #0xa]
	ldr	r3, [r6, #8]
	str	r0, [r6, #4]
	mov	r1, #0xa
	mov	r0, r2
	mul	r0, r3
	bl	__divsi3
	ldrb	r2, [r5, #0xb]
	ldr	r3, [r6, #0xc]
	str	r0, [r6, #8]
	mov	r1, #0xa
	mov	r0, r2
	mul	r0, r3
	bl	__divsi3
	ldrb	r2, [r5, #0xc]
	ldr	r3, [r6, #0x10]
	str	r0, [r6, #0xc]
	mov	r1, #0xa
	mov	r0, r2
	mul	r0, r3
	bl	__divsi3
	ldrb	r2, [r5, #0xd]
	ldr	r3, [r6, #0x18]
	str	r0, [r6, #0x10]
	mov	r1, #0xa
	mov	r0, r2
	mul	r0, r3
	bl	__divsi3
	str	r0, [r6, #0x18]
	mov	r5, #0
.L7780c:
	lsl	r3, r5, #1
	mov	r1, r3
	add	r1, #0xd8
	ldrh	r2, [r7, r1]
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L77904
	ldrh	r0, [r7, r1]
	bl	GetItemInfo
	mov	r1, #0
	str	r0, [r6, #0x58]
	mov	r8, r1
.L7782a:
	mov	r0, r8
	ldr	r2, [r6, #0x58]
	lsl	r3, r0, #2
	add	r3, #0x18
	ldrb	r1, [r2, r3]
	add	r2, r3
	mov	r3, #1
	ldrsb	r3, [r2, r3]
	str	r1, [r6, #0x48]
	sub	r1, #7
	str	r3, [r6, #0x54]
	cmp	r1, #7
	bhi	.L778fa
	ldr	r2, =.L7784c
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L7784c:
	.word	.L7786c
	.word	.L7787e
	.word	.L77890
	.word	.L778a2
	.word	.L778b4
	.word	.L778c6
	.word	.L778d8
	.word	.L778ea
.L7786c:
	ldr	r2, [r6]
	ldr	r3, [r6, #0x54]
	mov	r1, #0xa
	mov	r0, r3
	mul	r0, r2
	bl	__divsi3
	str	r0, [r6]
	b	.L778fa
.L7787e:
	ldr	r2, [r6, #0x20]
	ldr	r3, [r6, #0x54]
	mov	r1, #0xa
	mov	r0, r3
	mul	r0, r2
	bl	__divsi3
	str	r0, [r6, #0x20]
	b	.L778fa
.L77890:
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #0x54]
	mov	r1, #0xa
	mov	r0, r3
	mul	r0, r2
	bl	__divsi3
	str	r0, [r6, #4]
	b	.L778fa
.L778a2:
	ldr	r2, [r6, #0x24]
	ldr	r3, [r6, #0x54]
	mov	r1, #0xa
	mov	r0, r3
	mul	r0, r2
	bl	__divsi3
	str	r0, [r6, #0x24]
	b	.L778fa
.L778b4:
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x54]
	mov	r1, #0xa
	mov	r0, r3
	mul	r0, r2
	bl	__divsi3
	str	r0, [r6, #8]
	b	.L778fa
.L778c6:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x54]
	mov	r1, #0xa
	mov	r0, r3
	mul	r0, r2
	bl	__divsi3
	str	r0, [r6, #0xc]
	b	.L778fa
.L778d8:
	ldr	r2, [r6, #0x10]
	ldr	r3, [r6, #0x54]
	mov	r1, #0xa
	mov	r0, r3
	mul	r0, r2
	bl	__divsi3
	str	r0, [r6, #0x10]
	b	.L778fa
.L778ea:
	ldr	r2, [r6, #0x18]
	ldr	r3, [r6, #0x54]
	mov	r1, #0xa
	mov	r0, r3
	mul	r0, r2
	bl	__divsi3
	str	r0, [r6, #0x18]
.L778fa:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #3
	ble	.L7782a
.L77904:
	add	r5, #1
	cmp	r5, #0xe
	bgt	.L7790c
	b	.L7780c
.L7790c:
	ldr	r0, =0x133
	add	r3, r7, r0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r2, [r6, #8]
	add	r3, #8
	mul	r3, r2
	cmp	r3, #0
	bge	.L77922
	add	r3, #7
.L77922:
	asr	r3, #3
	ldr	r1, =0x135
	str	r3, [r6, #8]
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r2, [r6, #0xc]
	add	r3, #8
	mul	r3, r2
	cmp	r3, #0
	bge	.L7793c
	add	r3, #7
.L7793c:
	asr	r3, #3
	ldr	r2, =0x147
	str	r3, [r6, #0xc]
	add	r3, r7, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r2, [r6, #0x10]
	add	r3, #8
	mul	r3, r2
	cmp	r3, #0
	bge	.L77956
	add	r3, #7
.L77956:
	asr	r3, #3
	str	r3, [r6, #0x10]
	mov	r3, #0x96
	lsl	r3, #1
	mov	r4, #0x28
	mov	r5, #3
	add	r0, r7, r3
.L77964:
	ldrb	r3, [r0]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, r3
	mul	r2, r3
	add	r2, r3
	lsl	r1, r2, #2
	ldr	r3, [r4, r6]
	add	r1, r2
	add	r3, r1
	sub	r5, #1
	str	r3, [r4, r6]
	add	r0, #1
	add	r4, #8
	cmp	r5, #0
	bge	.L77964
	ldr	r1, =0x137
	mov	r5, #3
	add	r0, r7, r1
	mov	r1, #0x2c
.L7798c:
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	lsl	r2, r3, #2
	add	r2, r3
	ldr	r3, [r1, r6]
	lsl	r2, #2
	add	r3, r2
	sub	r5, #1
	str	r3, [r1, r6]
	add	r1, #8
	cmp	r5, #0
	bge	.L7798c
	ldr	r2, =0x129
	add	r3, r7, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L77a32
	mov	r1, #0x94
	lsl	r1, #1
	add	r3, r7, r1
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r3, #5
	bhi	.L77a28
	ldr	r2, =.L779c4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L779c4:
	.word	.L779dc
	.word	.L779e0
	.word	.L779ea
	.word	.L779f2
	.word	.L77a28
	.word	.L77a20
.L779dc:
	mov	r0, #0x88
	b	.L779e2
.L779e0:
	mov	r0, #0x89
.L779e2:
	lsl	r0, #1
	bl	GetFlag
	b	.L77a28
.L779ea:
	ldr	r0, =0x113
	bl	GetFlag
	b	.L77a28
.L779f2:
	ldr	r0, =0x111
	bl	GetFlag
	b	.L77a28

	.pool_aligned

.L77a20:
	mov	r0, #0x89
	lsl	r0, #1
	bl	GetFlag
.L77a28:
	cmp	r0, #0
	beq	.L77a32
	ldr	r3, [r6, #0x24]
	add	r3, #4
	str	r3, [r6, #0x24]
.L77a32:
	ldr	r3, [r6, #8]
	cmp	r3, #0
	bge	.L77a3c
	mov	r3, #0
	str	r3, [r6, #8]
.L77a3c:
	ldr	r2, =0x3e7
	cmp	r3, r2
	ble	.L77a44
	str	r2, [r6, #8]
.L77a44:
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	bge	.L77a4e
	mov	r3, #0
	str	r3, [r6, #0xc]
.L77a4e:
	cmp	r3, r2
	ble	.L77a54
	str	r2, [r6, #0xc]
.L77a54:
	ldr	r3, [r6, #0x10]
	cmp	r3, #0
	bge	.L77a5e
	mov	r3, #0
	str	r3, [r6, #0x10]
.L77a5e:
	cmp	r3, r2
	ble	.L77a64
	str	r2, [r6, #0x10]
.L77a64:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	bge	.L77a6e
	mov	r3, #0
	str	r3, [r6, #0x18]
.L77a6e:
	cmp	r3, #0x63
	ble	.L77a76
	mov	r3, #0x63
	str	r3, [r6, #0x18]
.L77a76:
	ldr	r3, [r6, #0x1c]
	cmp	r3, #0
	bge	.L77a80
	mov	r3, #0
	str	r3, [r6, #0x1c]
.L77a80:
	cmp	r3, #2
	ble	.L77a88
	mov	r3, #2
	str	r3, [r6, #0x1c]
.L77a88:
	ldr	r3, [r6, #0x20]
	cmp	r3, #0
	bge	.L77a92
	mov	r3, #0
	str	r3, [r6, #0x20]
.L77a92:
	ldr	r2, =0x2710
	cmp	r3, r2
	ble	.L77a9a
	str	r2, [r6, #0x20]
.L77a9a:
	ldr	r3, [r6, #0x24]
	cmp	r3, #0
	bge	.L77aa4
	mov	r3, #0
	str	r3, [r6, #0x24]
.L77aa4:
	cmp	r3, #0xc8
	ble	.L77aac
	mov	r3, #0xc8
	str	r3, [r6, #0x24]
.L77aac:
	mov	r2, #0xc8
	mov	r12, r2
	mov	r1, r6
	mov	r2, r6
	mov	r5, #0
	mov	r0, #0
	mov	r4, #0x2c
	add	r2, #0x28
	add	r1, #0x2c
.L77abe:
	ldr	r3, [r2]
	cmp	r3, #0
	bge	.L77ac8
	str	r0, [r2]
	mov	r3, r0
.L77ac8:
	cmp	r3, #0xc8
	ble	.L77ad0
	mov	r3, r12
	str	r3, [r2]
.L77ad0:
	ldr	r3, [r1]
	cmp	r3, #0
	bge	.L77ada
	str	r0, [r1]
	mov	r3, r0
.L77ada:
	cmp	r3, #0xc8
	ble	.L77ae2
	mov	r3, r12
	str	r3, [r6, r4]
.L77ae2:
	add	r5, #1
	add	r1, #8
	add	r4, #8
	add	r2, #8
	cmp	r5, #3
	ble	.L77abe
	ldr	r3, [r6, #8]
	strh	r3, [r7, #0x3c]
	ldr	r3, [r6, #0xc]
	strh	r3, [r7, #0x3e]
	mov	r3, r7
	ldr	r2, [r6, #0x10]
	add	r3, #0x40
	strh	r2, [r3]
	mov	r2, r7
	ldr	r3, [r6, #0x18]
	add	r2, #0x42
	strb	r3, [r2]
	ldr	r3, [r6, #0x1c]
	add	r2, #1
	strb	r3, [r2]
	mov	r3, r7
	ldr	r2, [r6, #0x20]
	add	r3, #0x44
	strb	r2, [r3]
	mov	r2, r7
	ldr	r3, [r6, #0x24]
	add	r2, #0x45
	strb	r3, [r2]
	mov	r1, r7
	mov	r2, r6
	add	r1, #0x48
	add	r2, #0x28
	mov	r5, #3
.L77b26:
	ldr	r3, [r2]
	strh	r3, [r1]
	ldr	r3, [r2, #4]
	sub	r5, #1
	strh	r3, [r1, #2]
	add	r2, #8
	add	r1, #4
	cmp	r5, #0
	bge	.L77b26
	ldr	r0, =0x129
	add	r3, r7, r0
	ldrb	r3, [r3]
	ldr	r1, =0x270f
	cmp	r3, #0
	beq	.L77b46
	ldr	r1, =0x7cf
.L77b46:
	mov	r3, #0x34
	ldrsh	r2, [r7, r3]
	ldr	r3, [r6]
	cmp	r3, #0
	bge	.L77b54
	mov	r3, #0
	str	r3, [r6]
.L77b54:
	cmp	r3, r1
	ble	.L77b5c
	str	r1, [r6]
	mov	r3, r1
.L77b5c:
	strh	r3, [r7, #0x34]
	lsl	r3, #16
	asr	r3, #16
	cmp	r2, r3
	beq	.L77b94
	mov	r0, #0x14
	ldrsh	r2, [r7, r0]
	ldr	r3, [r6]
	mul	r2, r3
	cmp	r2, #0
	bge	.L77b76
	ldr	r3, =0x3fff
	add	r2, r3
.L77b76:
	asr	r2, #14
	cmp	r2, #0
	bge	.L77b7e
	mov	r2, #0
.L77b7e:
	cmp	r2, r1
	ble	.L77b84
	mov	r2, r1
.L77b84:
	mov	r0, #0x38
	ldrsh	r3, [r7, r0]
	cmp	r3, #0
	beq	.L77b92
	cmp	r2, #0
	bne	.L77b92
	mov	r2, #1
.L77b92:
	strh	r2, [r7, #0x38]
.L77b94:
	mov	r3, #0x36
	ldrsh	r2, [r7, r3]
	ldr	r3, [r6, #4]
	cmp	r3, #0
	bge	.L77ba2
	mov	r3, #0
	str	r3, [r6, #4]
.L77ba2:
	cmp	r3, r1
	ble	.L77baa
	str	r1, [r6, #4]
	mov	r3, r1
.L77baa:
	strh	r3, [r7, #0x36]
	lsl	r3, #16
	asr	r3, #16
	cmp	r2, r3
	beq	.L77be2
	mov	r0, #0x16
	ldrsh	r2, [r7, r0]
	ldr	r3, [r6, #4]
	mul	r2, r3
	cmp	r2, #0
	bge	.L77bc4
	ldr	r3, =0x3fff
	add	r2, r3
.L77bc4:
	asr	r2, #14
	cmp	r2, #0
	bge	.L77bcc
	mov	r2, #0
.L77bcc:
	cmp	r2, r1
	ble	.L77bd2
	mov	r2, r1
.L77bd2:
	mov	r0, #0x3a
	ldrsh	r3, [r7, r0]
	cmp	r3, #0
	beq	.L77be0
	cmp	r2, #0
	bne	.L77be0
	mov	r2, #1
.L77be0:
	strh	r2, [r7, #0x3a]
.L77be2:
	mov	r0, r6
	bl	free
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end CalcStats

	.section .text.after_77cb8, "ax", %progbits

.thumb_func_start GameInit  @ 0x08077d38
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #8
	add	r5, sp, #4
	mov	r4, #0
	str	r4, [r5]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =gState
	ldr	r2, =0x850000b0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r4, [r5]
	mov	r0, r5
	ldr	r1, =ewram_2001000
	ldr	r2, =0x850003e1
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	ldr	r2, =REG_DMA3SAD
	lsl	r3, #24
.L77d66:
	ldr	r4, [r2, #8]
	and	r4, r3
	cmp	r4, #0
	bne	.L77d66
	str	r4, [r5]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =gFlags
	ldr	r2, =0x85000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =ewram_2001000
	mov	r1, #0x82
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0xff
	strb	r2, [r3]
	mov	r0, r5
	str	r4, [r5]
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =gPartyStatus
	ldr	r2, =0x85000298
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r4, [sp]
	bl	ResetPCs
	ldr	r7, =gState
	mov	r3, #0x84
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	ldr	r1, .L77de4	@ 0
	ldr	r2, =0x212
	mov	r10, r1
	add	r3, r7, r2
	mov	r1, #2
	strh	r1, [r3]
	mov	r3, #0x85
	lsl	r3, #2
	add	r2, r7, r3
	ldr	r3, .L77de8	@ 4
	mov	r8, r3
	mov	r3, #4
	strh	r3, [r2]
	ldr	r3, =0x216
	add	r2, r7, r3
	mov	r3, #8
	strh	r3, [r2]
	mov	r3, #0x86
	lsl	r3, #2
	add	r2, r7, r3
	sub	r3, #0x18
	strh	r3, [r2]
	add	r3, #0x1a
	add	r2, r7, r3
	mov	r3, #0x80
	lsl	r3, #1
	strh	r3, [r2]
	mov	r2, #0x87
	lsl	r2, #2
	b	.L77e18

	.align	2, 0
.L77de4:
	.word	0
.L77de8:
	.word	4
	.pool

.L77e18:
	add	r3, r7, r2
	strh	r1, [r3]
	mov	r1, #0x88
	ldr	r4, [sp]
	lsl	r1, #2
	add	r3, r7, r1
	add	r2, #6
	strh	r4, [r3]
	sub	r1, #0x2c
	add	r3, r7, r2
	strh	r4, [r3]
	add	r3, r7, r1
	str	r4, [r3]
	mov	r0, #0
	bl	AddPartyMember
	mov	r2, #0x83
	ldr	r4, [sp]
	ldr	r5, .L77e78	@ 1
	lsl	r2, #2
	ldr	r1, =0x20a
	add	r3, r7, r2
	str	r4, [r7, #0x10]
	sub	r2, #1
	strb	r5, [r3]
	add	r3, r7, r1
	strb	r5, [r3]
	sub	r1, #5
	add	r3, r7, r2
	strb	r5, [r3]
	ldr	r6, .L77e7c	@ 8
	add	r3, r7, r1
	mov	r2, r10
	add	r1, #1
	strb	r2, [r3]
	add	r3, r7, r1
	strb	r6, [r3]
	str	r4, [r7]
	bl	Func_8077cb8
	mov	r2, #0xae
	lsl	r2, #2
	add	r3, r7, r2
	str	r0, [r3]
	ldr	r4, [sp]
	ldr	r3, =iwram_3001c9c
	b	.L77e88

	.align	2, 0
.L77e78:
	.word	1
.L77e7c:
	.word	8
	.pool

.L77e88:
	str	r4, [r3]
	ldr	r3, =iwram_3001d08
	mov	r1, r10
	strb	r1, [r3]
	ldr	r1, =0x22a
	ldrb	r2, [r3]
	add	r3, r7, r1
	str	r4, [r7, #4]
	strb	r2, [r3]
	ldr	r3, =iwram_3001d24
	ldr	r2, =ewram_2002004
	strh	r4, [r3]
	ldr	r3, .L77ee0	@ 0xffffffff
	strh	r3, [r2]
	ldr	r2, =0x11d
	mov	r1, r8
	add	r3, r7, r2
	add	r2, #1
	strb	r1, [r3]
	add	r3, r7, r2
	strb	r1, [r3]
	ldr	r1, =0x11f
	mov	r2, r8
	add	r3, r7, r1
	strb	r2, [r3]
	add	r1, #1
	ldr	r2, =0x121
	add	r3, r7, r1
	strb	r6, [r3]
	add	r1, #2
	add	r3, r7, r2
	strb	r6, [r3]
	add	r2, #2
	add	r3, r7, r1
	strb	r6, [r3]
	add	r1, #2
	add	r3, r7, r2
	mov	r2, #0x10
	strb	r2, [r3]
	add	r3, r7, r1
	add	r1, #1
	strb	r2, [r3]
	b	.L77f00

	.align	2, 0
.L77ee0:
	.word	0xffffffff
	.pool

.L77f00:
	add	r3, r7, r1
	strb	r2, [r3]
	mov	r2, #0x93
	lsl	r2, #1
	add	r3, r7, r2
	add	r1, #2
	mov	r2, #0x20
	strb	r2, [r3]
	add	r3, r7, r1
	add	r1, #1
	strb	r2, [r3]
	add	r3, r7, r1
	strb	r2, [r3]
	ldr	r3, =0x129
	add	r1, #2
	add	r2, r7, r3
	mov	r3, #0x40
	strb	r3, [r2]
	add	r2, r7, r1
	add	r1, #1
	strb	r3, [r2]
	add	r2, r7, r1
	strb	r3, [r2]
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end GameInit
