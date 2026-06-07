	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808f32c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r1, #0xfa
	ldr	r7, [r3, #0x10]
	ldr	r3, =ewram_2000240
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	sub	sp, #8
	bl	Func_808ba1c
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	str	r3, [sp, #4]
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	str	r3, [sp]
	cmp	r7, #0
	bne	.L8f364
	b	.L8f46e
.L8f364:
	b	.L8f458
.L8f366:
	ldrb	r3, [r7]
	mov	r10, r3
	mov	r0, r10
	add	r7, #1
	bl	Func_808ed4c
	cmp	r0, #0
	bne	.L8f458
	mov	r3, r10
	sub	r3, #0x64
	cmp	r3, #0x8b
	bhi	.L8f458
	ldr	r1, [sp, #4]
	sub	r3, r1, r5
	cmp	r3, #0
	blt	.L8f38c
	cmp	r3, #8
	ble	.L8f394
	b	.L8f458
.L8f38c:
	ldr	r2, [sp, #4]
	sub	r3, r5, r2
	cmp	r3, #8
	bgt	.L8f458
.L8f394:
	ldr	r1, [sp]
	mov	r2, r8
	sub	r3, r1, r2
	cmp	r3, #0
	blt	.L8f3a4
	cmp	r3, #5
	ble	.L8f3ae
	b	.L8f458
.L8f3a4:
	ldr	r2, [sp]
	mov	r1, r8
	sub	r3, r1, r2
	cmp	r3, #5
	bgt	.L8f458
.L8f3ae:
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0x24]
	bl	_call_via_r0
	mov	r6, r0
	mov	r3, #1
	ldr	r2, [r6]
	neg	r3, r3
	cmp	r2, r3
	beq	.L8f458
	mov	r3, #0x80
	lsl	r5, #20
	lsl	r3, #12
	mov	r11, r5
	mov	r9, r3
.L8f3cc:
	mov	r1, #4
	ldrsh	r3, [r6, r1]
	cmp	r3, r10
	bne	.L8f44a
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #3
	bne	.L8f44a
	ldr	r3, =0xfff00000
	ldr	r2, [r6, #8]
	and	r2, r3
	mov	r3, #0x80
	lsl	r3, #14
	cmp	r2, r3
	beq	.L8f40c
	cmp	r2, r3
	bhi	.L8f3fc
	cmp	r2, #0
	beq	.L8f40c
	mov	r3, #0x80
	lsl	r3, #13
	cmp	r2, r3
	beq	.L8f40c
	b	.L8f44a
.L8f3fc:
	mov	r1, #0xc0
	lsl	r1, #14
	cmp	r2, r1
	beq	.L8f40c
	mov	r3, #0xa0
	lsl	r3, #15
	cmp	r2, r3
	bne	.L8f44a
.L8f40c:
	mov	r2, #1
	mov	r1, #6
	ldrsh	r0, [r6, r1]
	neg	r2, r2
	cmp	r0, r2
	beq	.L8f44a
	bl	_Func_8079338
	cmp	r0, #0
	bne	.L8f44a
	mov	r1, r8
	lsl	r3, r1, #20
	mov	r1, r11
	mov	r0, #0x16
	add	r1, r9
	mov	r2, #0
	add	r3, r9
	bl	_Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L8f44a
	ldr	r1, =.L9e8a0
	bl	_Func_800c2d8
	mov	r0, r5
	mov	r1, #0
	bl	_Func_800c528
	ldr	r3, =Func_808f28c
	str	r3, [r5, #0x6c]
.L8f44a:
	add	r6, #0xc
	ldr	r3, [r6]
	mov	r1, #1
	neg	r1, r1
	mov	r2, r3
	cmp	r3, r1
	bne	.L8f3cc
.L8f458:
	ldrb	r5, [r7]
	add	r7, #1
	ldrb	r2, [r7]
	add	r7, #1
	mov	r8, r2
	cmp	r5, #0xff
	beq	.L8f468
	b	.L8f366
.L8f468:
	cmp	r2, #0xff
	beq	.L8f46e
	b	.L8f366
.L8f46e:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808f32c

.thumb_func_start Func_808f498
	ldr	r3, =iwram_3001ecc
	ldr	r2, =0x539
	ldr	r0, [r3]
	add	r3, r0, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #5
	add	r3, r2
	lsl	r3, #2
	add	r0, r3
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	mov	r4, #0x80
	lsl	r4, #19
	ldrh	r2, [r3, #0xa]
	ldr	r1, .L8f4f8	@ 0x6000
	ldrh	r2, [r4]
	orr	r2, r1
	strh	r2, [r4]
	ldrh	r1, [r0]
	ldr	r2, =REG_WININ
	strh	r1, [r2]
	add	r0, #2
	ldrh	r1, [r0]
	add	r2, #2
	strh	r1, [r2]
	add	r0, #2
	ldrh	r2, [r0]
	ldr	r1, =REG_WIN0H
	strh	r2, [r1]
	add	r0, #2
	ldrh	r4, [r0]
	ldr	r2, =REG_WIN1H
	strh	r4, [r2]
	mov	r4, #0xa0
	add	r2, #2
	strh	r4, [r2]
	add	r2, #2
	strh	r4, [r2]
	b	.L8f51c

	.align	2, 0
.L8f4f8:
	.word	0x6000
	.pool

.L8f51c:
	add	r0, #2
	ldr	r2, =0xa6600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_808f498

.thumb_func_start Func_808f52c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r6, [r3]
	ldr	r3, [r3, #0x5c]
	sub	sp, #0x18
	ldr	r0, =0x53c
	str	r3, [sp, #0x14]
	add	r4, r3, r0
	mov	r2, #0
	ldrsb	r2, [r4, r2]
	cmp	r2, #0
	beq	.L8f5fc
	ldr	r5, =0x53d
	add	r1, r3, r5
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r0, [r1]
	cmp	r3, r2
	blt	.L8f5c4
	mov	r3, #0
	strb	r3, [r4]
	ldr	r7, [sp, #0x14]
	ldr	r0, =0x53e
	add	r3, r7, r0
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	cmp	r2, #0
	bne	.L8f5b8
	ldr	r1, =0x53b
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0x40
	bne	.L8f588
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0x81ff
	b	.L8f590
.L8f588:
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0x9fff
.L8f590:
	and	r3, r2
	strh	r3, [r1]
	ldr	r0, =Func_808f498
	bl	Func_8004278
	ldr	r0, =Func_808f52c
	bl	Func_8004278
	ldr	r2, =REG_DMA0SAD
	ldr	r3, =0xc5ff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldr	r3, =0x7fff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldrh	r3, [r2, #0xa]
	bl	.L8fe1e
.L8f5b8:
	ldr	r5, [sp, #0x14]
	mov	r7, #0xa5
	lsl	r7, #3
	add	r3, r5, r7
	strh	r2, [r3]
	b	.L8f5fc
.L8f5c4:
	ldr	r2, [sp, #0x14]
	ldr	r5, =0x53b
	add	r3, r2, r5
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r7, [sp, #0x14]
	ldr	r3, =0x53a
	add	r5, r7, r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	sub	r2, r3
	add	r3, r0, #1
	strb	r3, [r1]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, r3
	mul	r0, r2
	mov	r1, #0
	ldrsb	r1, [r4, r1]
	ldr	r3, =Func_8000af0
	bl	_call_via_r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	ldr	r5, =0x52a
	add	r3, r0
	add	r2, r7, r5
	strh	r3, [r2]
.L8f5fc:
	ldr	r7, [sp, #0x14]
	ldr	r0, =0x539
	add	r3, r7, r0
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #5
	add	r3, r2
	lsl	r3, #2
	add	r4, r7, r3
	add	r0, r4, #4
	str	r4, [sp]
	bl	_Func_801edec
	mov	r1, #0xa5
	lsl	r1, #3
	add	r3, r7, r1
	ldrh	r3, [r3]
	ldr	r4, [sp]
	cmp	r3, #0x4d
	bls	.L8f62e
	bl	.L8fe10
.L8f62e:
	ldr	r2, =.L8f638
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L8f638:
	.word	.L8f770
	.word	.L8f818
	.word	.L8f8e4
	.word	.L8f958
	.word	.L8f9ea
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fa52
	.word	.L8fb3c
	.word	.L8fc32
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fd0e
.L8f770:
	ldr	r3, .L8f798	@ 0x7f7f
	strh	r3, [r4]
	ldr	r3, .L8f79c	@ 1
	add	r4, #2
	strh	r3, [r4]
	ldr	r2, [sp, #0x14]
	ldr	r5, =0x52a
	add	r3, r2, r5
	ldrh	r5, [r3]
	mov	r2, #0x20
	mov	r3, r5
	and	r3, r2
	add	r4, #2
	cmp	r3, #0
	beq	.L8f7e4
	mov	r3, #0x1f
	and	r3, r5
	sub	r5, r2, r3
	b	.L8f7e8

	.align	2, 0
.L8f798:
	.word	0x7f7f
.L8f79c:
	.word	1
	.pool

.L8f7e4:
	mov	r3, #0x1f
	and	r5, r3
.L8f7e8:
	ldr	r3, =.L9e8ac
	ldrb	r5, [r3, r5]
	mov	r7, #0
	mov	r3, #0xf1
	mov	r8, r7
	sub	r6, r3, r5
.L8f7f4:
	str	r4, [sp]
	bl	Func_8004458
	mov	r3, r6
	mul	r3, r0
	mov	r0, #1
	lsr	r3, #16
	lsl	r2, r3, #8
	ldr	r4, [sp]
	add	r3, r5
	add	r8, r0
	orr	r2, r3
	mov	r1, r8
	strh	r2, [r4]
	add	r4, #4
	cmp	r1, #0x9f
	bls	.L8f7f4
	b	.L8fe10
.L8f818:
	ldr	r2, [sp, #0x14]
	ldr	r5, =0x52a
	add	r3, r2, r5
	ldrh	r5, [r3]
	mov	r3, #0x1f
	and	r3, r5
	lsl	r2, r3, #3
	sub	r2, r3
	ldr	r3, =Data_9f840
	lsl	r2, #2
	add	r2, r3
	mov	r3, #0x20
	and	r3, r5
	cmp	r3, #0
	beq	.L8f83e
	ldrh	r3, [r2]
	strh	r3, [r4]
	ldrh	r3, [r2, #2]
	b	.L8f844
.L8f83e:
	ldrh	r3, [r2, #2]
	strh	r3, [r4]
	ldrh	r3, [r2]
.L8f844:
	add	r4, #2
	strh	r3, [r4]
	add	r4, #2
	mov	r7, #0
	add	r2, #4
	mov	r8, r7
	mov	r10, r2
.L8f852:
	mov	r2, r10
	ldrh	r7, [r2]
	ldrh	r0, [r2, #2]
	cmp	r7, #0
	beq	.L8f8d4
	cmp	r0, #0
	beq	.L8f876
	mov	r1, #0
	mov	r9, r1
	cmp	r9, r7
	bge	.L8f8d4
.L8f868:
	mov	r2, #1
	add	r9, r2
	strh	r0, [r4]
	add	r4, #4
	cmp	r9, r7
	blt	.L8f868
	b	.L8f8d4
.L8f876:
	ldrb	r3, [r2, #4]
	ldrb	r6, [r2, #6]
	mov	r11, r3
	ldrb	r0, [r2, #7]
	ldrb	r3, [r2, #5]
	cmp	r7, #0
	beq	.L8f8d4
	mov	r5, r11
	sub	r5, r3, r5
	sub	r0, r6
	str	r5, [sp, #0x10]
	str	r0, [sp, #0xc]
	mov	r2, #0
	mov	r3, #0
	mov	r9, r7
.L8f894:
	mov	r0, r3
	mov	r1, r7
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	r4, [sp]
	bl	Func_af0_from_thumb
	ldr	r2, [sp, #8]
	mov	r5, r0
	mov	r1, r7
	mov	r0, r2
	bl	Func_af0_from_thumb
	add	r5, r11
	add	r0, r6, r0
	ldr	r4, [sp]
	lsl	r5, #8
	add	r5, r0
	strh	r5, [r4]
	mov	r5, #1
	ldr	r0, [sp, #0xc]
	ldr	r2, [sp, #8]
	neg	r5, r5
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #0x10]
	add	r9, r5
	add	r2, r0
	mov	r0, r9
	add	r4, #4
	add	r3, r1
	cmp	r0, #0
	bne	.L8f894
.L8f8d4:
	mov	r2, #1
	add	r8, r2
	mov	r1, #8
	mov	r3, r8
	add	r10, r1
	cmp	r3, #2
	bls	.L8f852
	b	.L8fe10
.L8f8e4:
	ldr	r5, [sp, #0x14]
	ldr	r7, =0x52a
	add	r3, r5, r7
	ldrh	r3, [r3]
	sub	r5, r3, #1
	mov	r3, #0x20
	and	r3, r5
	cmp	r3, #0
	beq	.L8f914
	ldr	r3, .L8f900	@ 1
	strh	r3, [r4]
	ldr	r3, .L8f904	@ 0x7f7f
	b	.L8f91a

	.align	2, 0
.L8f900:
	.word	1
.L8f904:
	.word	0x7f7f
	.pool

.L8f914:
	ldr	r3, =0x7f7f
	strh	r3, [r4]
	ldr	r3, =1
.L8f91a:
	add	r4, #2
	strh	r3, [r4]
	add	r4, #2
	mov	r3, #0x1f
	and	r5, r3
	mov	r0, #0
	mov	r8, r0
	lsl	r5, #4
.L8f92a:
	str	r4, [sp]
	bl	Func_8004458
	lsl	r0, #4
	lsr	r0, #16
	add	r0, r5, r0
	ldr	r4, [sp]
	cmp	r0, #0xff
	bls	.L8f948
	mov	r0, #0xff
	b	.L8f948

	.pool_aligned

.L8f948:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	strh	r0, [r4]
	add	r4, #4
	cmp	r2, #0x9f
	bls	.L8f92a
	b	.L8fe10
.L8f958:
	ldr	r5, [sp, #0x14]
	ldr	r7, =0x52a
	ldr	r2, .L8f990	@ 0x7f7f
	add	r3, r5, r7
	ldrh	r5, [r3]
	ldr	r3, .L8f994	@ 1
	strh	r2, [r4]
	add	r4, #2
	strh	r3, [r4]
	add	r4, #2
	cmp	r5, #0x20
	bls	.L8f97c
	strh	r3, [r4]
	add	r4, #2
	mov	r3, #0x40
	strh	r2, [r4]
	sub	r5, r3, r5
	add	r4, #2
.L8f97c:
	lsl	r3, r5, #2
	add	r5, r3, r5
	mov	r3, r5
	mul	r3, r5
	mov	r0, #0
	lsl	r3, #16
	ldr	r7, =Func_8000948
	mov	r11, r3
	mov	r8, r0
	b	.L8f9a0

	.align	2, 0
.L8f990:
	.word	0x7f7f
.L8f994:
	.word	1
	.pool

.L8f9a0:
	mov	r5, r8
	sub	r5, #0x50
	mov	r0, r5
	mul	r0, r5
	mov	r1, r11
	lsl	r0, #16
	str	r4, [sp]
	sub	r0, r1, r0
	bl	_call_via_r7
	mov	r3, #0x78
	asr	r0, #8
	sub	r6, r3, r0
	ldr	r4, [sp]
	add	r0, #0x78
	cmp	r6, #0
	bge	.L8f9c4
	mov	r6, #0
.L8f9c4:
	cmp	r0, #0
	bge	.L8f9ca
	mov	r0, #0
.L8f9ca:
	cmp	r6, #0xf0
	ble	.L8f9d0
	mov	r6, #0xf0
.L8f9d0:
	cmp	r0, #0xf0
	ble	.L8f9d6
	mov	r0, #0xf0
.L8f9d6:
	lsl	r3, r6, #8
	mov	r2, #1
	add	r3, r0
	add	r8, r2
	strh	r3, [r4]
	mov	r3, r8
	add	r4, #4
	cmp	r3, #0x9f
	bls	.L8f9a0
	b	.L8fe10
.L8f9ea:
	ldr	r5, [sp, #0x14]
	ldr	r7, =0x52a
	add	r3, r5, r7
	ldrh	r5, [r3]
	mov	r3, #0x20
	and	r3, r5
	cmp	r3, #0
	beq	.L8fa10
	ldr	r3, .L8fa04	@ 1
	strh	r3, [r4]
	ldr	r3, .L8fa08	@ 0x7f7f
	b	.L8fa16

	.align	2, 0
.L8fa04:
	.word	1
.L8fa08:
	.word	0x7f7f
	.pool

.L8fa10:
	ldr	r3, =0x7f7f
	strh	r3, [r4]
	ldr	r3, =1
.L8fa16:
	add	r4, #2
	strh	r3, [r4]
	add	r4, #2
	mov	r3, #0x1f
	and	r3, r5
	lsl	r2, r3, #4
	sub	r2, r3
	lsl	r2, #4
	lsr	r5, r2, #5
	mov	r3, #0xf0
	sub	r3, r5
	mov	r0, #0
	lsl	r3, #8
	mov	r8, r0
	add	r3, #0xf0
	b	.L8fa40

	.pool_aligned

.L8fa40:
	mov	r1, #2
	add	r8, r1
	mov	r2, r8
	strh	r5, [r4]
	strh	r3, [r4, #4]
	add	r4, #8
	cmp	r2, #0x9f
	bls	.L8fa40
	b	.L8fe10
.L8fa52:
	mov	r2, r6
	add	r2, #0xe4
	ldr	r3, =0xffff0000
	ldr	r5, [r2]
	ldr	r6, [r2, #4]
	and	r5, r3
	and	r6, r3
	mov	r7, #0xfa
	ldr	r3, =ewram_2000240
	lsl	r7, #1
	add	r3, r7
	ldr	r0, [r3]
	str	r4, [sp]
	bl	Func_808ba1c
	ldr	r3, [r0, #8]
	sub	r3, r5
	ldr	r4, [sp]
	cmp	r3, #0
	bge	.L8fa7e
	ldr	r1, =0xffff
	add	r3, r1
.L8fa7e:
	ldr	r2, [r0, #0xc]
	asr	r7, r3, #16
	ldr	r3, [r0, #0x10]
	sub	r3, r2
	sub	r0, r3, r6
	cmp	r0, #0
	bge	.L8fa90
	ldr	r2, =0xffff
	add	r0, r2
.L8fa90:
	asr	r3, r0, #16
	sub	r3, #0x10
	ldr	r5, [sp, #0x14]
	mov	r10, r3
	ldr	r0, =0x536
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	add	r3, r5, r0
	ldrh	r3, [r3]
	ldr	r1, =0x534
	strh	r3, [r4]
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r4, #2
	ldr	r2, =0x52a
	strh	r3, [r4]
	add	r3, r5, r2
	ldrh	r5, [r3]
	mov	r2, #0x20
	mov	r3, r5
	and	r3, r2
	add	r4, #2
	cmp	r3, #0
	bne	.L8fac8
	mov	r3, #0x1f
	and	r3, r5
	sub	r5, r2, r3
	b	.L8facc
.L8fac8:
	mov	r3, #0x1f
	and	r5, r3
.L8facc:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L8fada
	mov	r5, #0
.L8fada:
	lsl	r3, r5, #2
	add	r5, r3, r5
	mov	r3, r5
	mul	r3, r5
	ldr	r5, =Func_8000948
	lsl	r3, #16
	mov	r11, r3
	mov	r3, #0
	mov	r8, r3
	mov	r9, r5
.L8faee:
	mov	r0, r8
	mov	r1, r10
	sub	r5, r0, r1
	mov	r3, r5
	mul	r3, r5
	lsl	r0, r3, #1
	add	r0, r3
	mov	r2, r11
	lsl	r0, #15
	str	r4, [sp]
	sub	r0, r2, r0
	bl	_call_via_r9
	asr	r0, #8
	sub	r6, r7, r0
	ldr	r4, [sp]
	add	r0, r7, r0
	cmp	r6, #0
	bge	.L8fb16
	mov	r6, #0
.L8fb16:
	cmp	r0, #0
	bge	.L8fb1c
	mov	r0, #0
.L8fb1c:
	cmp	r6, #0xf0
	ble	.L8fb22
	mov	r6, #0xf0
.L8fb22:
	cmp	r0, #0xf0
	ble	.L8fb28
	mov	r0, #0xf0
.L8fb28:
	lsl	r3, r6, #8
	add	r3, r0
	strh	r3, [r4]
	mov	r3, #1
	add	r8, r3
	mov	r5, r8
	add	r4, #4
	cmp	r5, #0x9f
	bls	.L8faee
	b	.L8fe10
.L8fb3c:
	mov	r1, r6
	add	r1, #0xe4
	ldr	r3, =0xffff0000
	ldr	r2, [r1]
	ldr	r7, [sp, #0x14]
	ldr	r1, [r1, #4]
	ldr	r0, =0x52c
	and	r2, r3
	and	r1, r3
	add	r3, r7, r0
	ldr	r3, [r3]
	sub	r3, r2
	cmp	r3, #0
	bge	.L8fb5c
	ldr	r2, =0xffff
	add	r3, r2
.L8fb5c:
	ldr	r5, [sp, #0x14]
	mov	r0, #0xa6
	lsl	r0, #3
	asr	r7, r3, #16
	add	r3, r5, r0
	ldr	r3, [r3]
	sub	r1, r3, r1
	cmp	r1, #0
	bge	.L8fb72
	ldr	r2, =0xffff
	add	r1, r2
.L8fb72:
	asr	r3, r1, #16
	sub	r3, #0x10
	lsl	r2, r3, #1
	mov	r10, r3
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	ldr	r5, [sp, #0x14]
	ldr	r0, =0x534
	sub	r3, r2
	mov	r9, r3
	add	r3, r5, r0
	ldrh	r3, [r3]
	ldr	r1, =0x536
	strh	r3, [r4]
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r4, #2
	ldr	r2, =0x52a
	strh	r3, [r4]
	add	r3, r5, r2
	ldrh	r5, [r3]
	mov	r2, #0x20
	mov	r3, r5
	and	r3, r2
	add	r4, #2
	cmp	r3, #0
	beq	.L8fbb0
	mov	r3, #0x1f
	and	r3, r5
	sub	r5, r2, r3
	b	.L8fbb4
.L8fbb0:
	mov	r3, #0x1f
	and	r5, r3
.L8fbb4:
	lsl	r3, r5, #2
	add	r5, r3, r5
	mov	r3, r5
	mul	r3, r5
	lsl	r3, #16
	mov	r11, r3
	mov	r3, #0
	mov	r8, r3
.L8fbc4:
	mov	r0, r8
	mov	r1, r10
	sub	r5, r0, r1
	mov	r3, r5
	mul	r3, r5
	lsl	r0, r3, #1
	add	r0, r3
	mov	r2, r11
	lsl	r0, #15
	str	r4, [sp]
	sub	r0, r2, r0
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	asr	r0, #8
	sub	r6, r7, r0
	add	r0, r7, r0
	ldr	r4, [sp]
	cmp	r6, r0
	bge	.L8fc02
	mov	r3, #0x1f
	mov	r5, r9
	ldr	r1, =.L9e8ce
	and	r3, r5
	ldrsb	r3, [r1, r3]
	sub	r6, r3
	add	r0, r3
	cmp	r6, r0
	blt	.L8fc02
	mov	r6, #0xf0
	mov	r0, #0xf0
.L8fc02:
	cmp	r6, #0
	bge	.L8fc08
	mov	r6, #0
.L8fc08:
	cmp	r0, #0
	bge	.L8fc0e
	mov	r0, #0
.L8fc0e:
	cmp	r6, #0xf0
	ble	.L8fc14
	mov	r6, #0xf0
.L8fc14:
	cmp	r0, #0xf0
	ble	.L8fc1a
	mov	r0, #0xf0
.L8fc1a:
	lsl	r3, r6, #8
	add	r3, r0
	strh	r3, [r4]
	mov	r3, #1
	add	r8, r3
	mov	r2, #2
	mov	r5, r8
	add	r4, #4
	add	r9, r2
	cmp	r5, #0x9f
	bls	.L8fbc4
	b	.L8fe10
.L8fc32:
	mov	r2, r6
	add	r2, #0xe4
	ldr	r3, =0xffff0000
	ldr	r5, [r2]
	ldr	r6, [r2, #4]
	and	r5, r3
	and	r6, r3
	mov	r7, #0xfa
	ldr	r3, =ewram_2000240
	lsl	r7, #1
	add	r3, r7
	ldr	r0, [r3]
	str	r4, [sp]
	bl	Func_808ba1c
	ldr	r3, [r0, #8]
	sub	r3, r5
	ldr	r4, [sp]
	cmp	r3, #0
	bge	.L8fc5e
	ldr	r1, =0xffff
	add	r3, r1
.L8fc5e:
	ldr	r2, [r0, #0xc]
	asr	r7, r3, #16
	ldr	r3, [r0, #0x10]
	sub	r3, r2
	sub	r0, r3, r6
	cmp	r0, #0
	bge	.L8fc70
	ldr	r2, =0xffff
	add	r0, r2
.L8fc70:
	asr	r3, r0, #16
	sub	r3, #0x10
	ldr	r5, [sp, #0x14]
	mov	r10, r3
	ldr	r0, =0x534
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	add	r3, r5, r0
	ldrh	r3, [r3]
	ldr	r1, =0x536
	strh	r3, [r4]
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r4, #2
	ldr	r2, =0x52a
	strh	r3, [r4]
	add	r3, r5, r2
	ldrh	r5, [r3]
	mov	r2, #0x20
	mov	r3, r5
	and	r3, r2
	add	r4, #2
	cmp	r3, #0
	beq	.L8fca8
	mov	r3, #0x1f
	and	r3, r5
	sub	r5, r2, r3
	b	.L8fcac
.L8fca8:
	mov	r3, #0x1f
	and	r5, r3
.L8fcac:
	lsl	r3, r5, #2
	add	r5, r3, r5
	mov	r3, r5
	mul	r3, r5
	ldr	r5, =Func_8000948
	lsl	r3, #16
	mov	r11, r3
	mov	r3, #0
	mov	r8, r3
	mov	r9, r5
.L8fcc0:
	mov	r0, r8
	mov	r1, r10
	sub	r5, r0, r1
	mov	r3, r5
	mul	r3, r5
	lsl	r0, r3, #1
	add	r0, r3
	mov	r2, r11
	lsl	r0, #15
	str	r4, [sp]
	sub	r0, r2, r0
	bl	_call_via_r9
	asr	r0, #8
	sub	r6, r7, r0
	ldr	r4, [sp]
	add	r0, r7, r0
	cmp	r6, #0
	bge	.L8fce8
	mov	r6, #0
.L8fce8:
	cmp	r0, #0
	bge	.L8fcee
	mov	r0, #0
.L8fcee:
	cmp	r6, #0xf0
	ble	.L8fcf4
	mov	r6, #0xf0
.L8fcf4:
	cmp	r0, #0xf0
	ble	.L8fcfa
	mov	r0, #0xf0
.L8fcfa:
	lsl	r3, r6, #8
	add	r3, r0
	strh	r3, [r4]
	mov	r3, #1
	add	r8, r3
	mov	r5, r8
	add	r4, #4
	cmp	r5, #0x9f
	bls	.L8fcc0
	b	.L8fe10
.L8fd0e:
	mov	r2, r6
	add	r2, #0xe4
	ldr	r3, =0xffff0000
	ldr	r5, [r2]
	ldr	r6, [r2, #4]
	and	r5, r3
	and	r6, r3
	mov	r7, #0xfa
	ldr	r3, =ewram_2000240
	lsl	r7, #1
	add	r3, r7
	ldr	r0, [r3]
	str	r4, [sp]
	bl	Func_808ba1c
	ldr	r3, [r0, #8]
	sub	r3, r5
	ldr	r4, [sp]
	cmp	r3, #0
	bge	.L8fd3a
	ldr	r1, =0xffff
	add	r3, r1
.L8fd3a:
	ldr	r2, [r0, #0xc]
	asr	r7, r3, #16
	ldr	r3, [r0, #0x10]
	sub	r3, r2
	sub	r0, r3, r6
	cmp	r0, #0
	bge	.L8fd4c
	ldr	r2, =0xffff
	add	r0, r2
.L8fd4c:
	asr	r3, r0, #16
	sub	r3, #8
	ldr	r5, [sp, #0x14]
	mov	r10, r3
	ldr	r0, =0x534
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	add	r3, r5, r0
	ldrh	r3, [r3]
	ldr	r1, =0x536
	strh	r3, [r4]
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r4, #2
	ldr	r2, =0x52a
	strh	r3, [r4]
	add	r3, r5, r2
	ldrh	r5, [r3]
	mov	r2, #0x20
	mov	r3, r5
	and	r3, r2
	add	r4, #2
	cmp	r3, #0
	beq	.L8fdac
	mov	r3, #0x1f
	and	r3, r5
	sub	r5, r2, r3
	b	.L8fdb0

	.pool_aligned

.L8fdac:
	mov	r3, #0x1f
	and	r5, r3
.L8fdb0:
	lsl	r3, r5, #2
	add	r5, r3, r5
	mov	r3, r5
	mul	r3, r5
	ldr	r5, =Func_8000948
	lsl	r3, #16
	mov	r11, r3
	mov	r3, #0
	mov	r8, r3
	mov	r9, r5
.L8fdc4:
	mov	r0, r8
	mov	r1, r10
	sub	r5, r0, r1
	mov	r3, r5
	mul	r3, r5
	lsl	r0, r3, #1
	add	r0, r3
	mov	r2, r11
	lsl	r0, #14
	str	r4, [sp]
	sub	r0, r2, r0
	bl	_call_via_r9
	asr	r0, #8
	sub	r6, r7, r0
	ldr	r4, [sp]
	add	r0, r7, r0
	cmp	r6, #0
	bge	.L8fdec
	mov	r6, #0
.L8fdec:
	cmp	r0, #0
	bge	.L8fdf2
	mov	r0, #0
.L8fdf2:
	cmp	r6, #0xf0
	ble	.L8fdf8
	mov	r6, #0xf0
.L8fdf8:
	cmp	r0, #0xf0
	ble	.L8fdfe
	mov	r0, #0xf0
.L8fdfe:
	lsl	r3, r6, #8
	add	r3, r0
	strh	r3, [r4]
	mov	r3, #1
	add	r8, r3
	mov	r5, r8
	add	r4, #4
	cmp	r5, #0x9f
	bls	.L8fdc4
.L8fe10:
	ldr	r7, [sp, #0x14]
	ldr	r0, =0x539
	add	r3, r7, r0
	ldrb	r2, [r3]
	mov	r1, #1
	eor	r2, r1
	strb	r2, [r3]
.L8fe1e:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808f52c

.thumb_func_start Func_808fe38
	push	{r5, r6, lr}
	mov	r1, #0xa8
	mov	r6, r0
	lsl	r1, #3
	mov	r0, #0x1f
	sub	sp, #4
	bl	Func_80048f4
	mov	r5, #0
	mov	r4, r0
	mov	r0, sp
	str	r5, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r4
	ldr	r2, =0x85000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xa5
	lsl	r2, #3
	add	r3, r4, r2
	add	r2, #2
	strh	r6, [r3]
	add	r3, r4, r2
	strh	r5, [r3]
	ldr	r3, =0x534
	add	r2, r4, r3
	ldr	r3, =0x3f3f
	strh	r3, [r2]
	ldr	r2, =0x536
	mov	r3, #1
	add	r4, r2
	mov	r1, #0xc8
	strh	r3, [r4]
	lsl	r1, #4
	ldr	r0, =Func_808f52c
	bl	Func_80041d8
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_808f498
	bl	Func_80041d8
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_808fe38

.thumb_func_start Func_808feb0
	push	{lr}
	ldr	r0, =Func_808f52c
	bl	Func_80042c8
	ldr	r0, =Func_808f498
	bl	Func_80042c8
	pop	{r0}
	bx	r0
.func_end Func_808feb0

.thumb_func_start Func_808fecc
	push	{lr}
	mov	r1, #0xa8
	lsl	r1, #3
	mov	r0, #0x1f
	sub	sp, #4
	bl	Func_80048f4
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r4
	add	sp, #4
	pop	{r1}
	bx	r1
.func_end Func_808fecc

.thumb_func_start Func_808fefc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r3, #0xff
	mov	r10, r1
	asr	r2, r0, #8
	ldr	r1, =iwram_3001e70
	mov	r6, r3
	and	r2, r3
	ldr	r7, [r1]
	and	r6, r0
	cmp	r2, #4
	bls	.L8ff1c
	b	.L90168
.L8ff1c:
	lsl	r3, r2, #2
	ldr	r2, =.L8ff24
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L8ff24:
	.word	.L8ff38
	.word	.L8ff4c
	.word	.L8ffa2
	.word	.L9003c
	.word	.L900c0
.L8ff38:
	mov	r0, #0
	bl	Func_8003b70
	mov	r0, r10
	bl	Func_8003bb4
	mov	r0, #1
	bl	Func_80030f8
	b	.L90168
.L8ff4c:
	mov	r3, #0xa0
	lsl	r3, #19
	mov	r0, #0x80
	ldrh	r1, [r3]
	lsl	r0, #8
	bl	Func_8091220
	mov	r0, r10
	bl	Func_8091254
	mov	r0, #1
	bl	Func_80030f8
	ldr	r1, =ewram_2002090
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r5, r3
	strh	r4, [r4]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L8ff98
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r0, #0x80
	lsl	r0, #19
	lsl	r2, #2
	ldrh	r3, [r7, #0x14]
	add	r2, r1
	ldrh	r1, [r0]
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	mov	r3, #0x80
	stmia	r2!, {r0}
	lsl	r3, #10
	str	r3, [r2]
.L8ff98:
	strh	r5, [r4]
	mov	r0, #0
	bl	Func_8091240
	b	.L9019c
.L8ffa2:
	bl	Func_808fecc
	mov	r1, #0xa5
	mov	r5, r0
	lsl	r1, #3
	mov	r2, #0
	add	r3, r5, r1
	mov	r8, r2
	add	r1, #2
	strh	r6, [r3]
	mov	r2, r8
	add	r3, r5, r1
	strh	r2, [r3]
	ldr	r3, =0x534
	add	r1, #0xc
	add	r2, r5, r3
	mov	r3, #0x3f
	strh	r3, [r2]
	add	r2, r5, r1
	mov	r3, #1
	mov	r1, #0xc8
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_808f52c
	bl	Func_80041d8
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_808f498
	bl	Func_80041d8
	mov	r0, #1
	bl	Func_80030f8
	ldr	r1, =ewram_2002090
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r6, r3
	strh	r4, [r4]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L90018
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r0, #0x80
	lsl	r0, #19
	lsl	r2, #2
	ldrh	r3, [r7, #0x14]
	add	r2, r1
	ldrh	r1, [r0]
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	mov	r3, #0x80
	stmia	r2!, {r0}
	lsl	r3, #10
	str	r3, [r2]
.L90018:
	strh	r6, [r4]
	ldr	r2, =0x53a
	add	r3, r5, r2
	mov	r1, r8
	strb	r1, [r3]
	ldr	r3, =0x53b
	ldr	r1, =0x53c
	add	r2, r5, r3
	mov	r3, #0x20
	strb	r3, [r2]
	add	r3, r5, r1
	mov	r2, r10
	add	r1, #1
	strb	r2, [r3]
	add	r3, r5, r1
	mov	r2, r8
	strb	r2, [r3]
	b	.L9019c
.L9003c:
	bl	Func_808fecc
	mov	r1, #0xa5
	mov	r5, r0
	lsl	r1, #3
	add	r3, r5, r1
	ldr	r2, =0x52a
	mov	r1, #0x20
	mov	r8, r1
	strh	r6, [r3]
	add	r3, r5, r2
	mov	r2, r8
	strh	r2, [r3]
	mov	r0, #0xf
	bl	Func_80907b0
	mov	r0, #1
	bl	Func_80030f8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_8090658
	bl	Func_80041d8
	ldr	r1, =ewram_2002090
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r6, r3
	strh	r4, [r4]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L9009e
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r0, #0x80
	lsl	r0, #19
	lsl	r2, #2
	ldrh	r3, [r7, #0x14]
	add	r2, r1
	ldrh	r1, [r0]
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	mov	r3, #0x80
	stmia	r2!, {r0}
	lsl	r3, #10
	str	r3, [r2]
.L9009e:
	strh	r6, [r4]
	ldr	r1, =0x53a
	mov	r2, #0
	add	r3, r5, r1
	add	r1, #1
	strb	r2, [r3]
	add	r3, r5, r1
	mov	r1, r8
	strb	r1, [r3]
	ldr	r1, =0x53c
	add	r3, r5, r1
	mov	r1, r10
	strb	r1, [r3]
	ldr	r1, =0x53d
	add	r3, r5, r1
	strb	r2, [r3]
	b	.L9019c
.L900c0:
	ldr	r7, [r1]
	bl	Func_808fecc
	mov	r3, #0x80
	lsl	r3, #1
	ldr	r1, .L900f4	@ 0
	add	r2, r7, r3
	ldr	r3, .L900f8	@ 0x50
	mov	r8, r1
	mov	r1, #0x81
	mov	r9, r3
	lsl	r1, #1
	mov	r3, #0x50
	strh	r3, [r2]
	add	r2, r7, r1
	mov	r5, r0
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_80030f8
	cmp	r6, #0
	bne	.L90134
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80903bc
	b	.L9013a

	.align	2, 0
.L900f4:
	.word	0
.L900f8:
	.word	0x50
	.pool

.L90134:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_8090488
.L9013a:
	bl	Func_80041d8
	ldr	r2, =Func_8090584
	mov	r1, #0
	mov	r0, #1
	bl	SetIntrHandler
	ldr	r2, =0x53a
	mov	r1, r9
	add	r3, r5, r2
	add	r2, #1
	strb	r1, [r3]
	add	r3, r5, r2
	mov	r1, r8
	add	r2, #1
	strb	r1, [r3]
	add	r3, r5, r2
	mov	r1, r10
	add	r2, #1
	strb	r1, [r3]
	add	r3, r5, r2
	mov	r1, r8
	strb	r1, [r3]
.L90168:
	ldr	r1, =ewram_2002090
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r5, r3
	strh	r4, [r4]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L9019a
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r0, #0x80
	lsl	r0, #19
	lsl	r2, #2
	ldrh	r3, [r7, #0x14]
	add	r2, r1
	ldrh	r1, [r0]
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	mov	r3, #0x80
	stmia	r2!, {r0}
	lsl	r3, #10
	str	r3, [r2]
.L9019a:
	strh	r5, [r4]
.L9019c:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808fefc

.thumb_func_start Func_80901c0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0xff
	asr	r2, r0, #8
	mov	r6, r3
	and	r2, r3
	mov	r7, r1
	and	r6, r0
	cmp	r2, #4
	bls	.L901d8
	b	.L90352
.L901d8:
	lsl	r3, r2, #2
	ldr	r2, =.L901e0
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L901e0:
	.word	.L901f4
	.word	.L90202
	.word	.L90214
	.word	.L90278
	.word	.L902e8
.L901f4:
	mov	r0, #0
	bl	Func_8003bb4
	mov	r0, r7
	bl	Func_8003b70
	b	.L90352
.L90202:
	mov	r0, #0x80
	lsl	r0, #8
	mov	r1, #0
	bl	Func_8091200
	mov	r0, r7
	bl	Func_8091254
	b	.L90352
.L90214:
	bl	Func_808fecc
	mov	r2, #0xa5
	mov	r5, r0
	lsl	r2, #3
	add	r3, r5, r2
	strh	r6, [r3]
	ldr	r2, .L9025c	@ 0
	ldr	r3, =0x52a
	mov	r8, r2
	add	r2, r5, r3
	mov	r3, #0x20
	strh	r3, [r2]
	ldr	r3, =0x534
	add	r2, r5, r3
	mov	r3, #0x3f
	strh	r3, [r2]
	ldr	r3, =0x536
	mov	r1, #0xc8
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_808f52c
	bl	Func_80041d8
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_808f498
	bl	Func_80041d8
	mov	r0, #1
	bl	Func_80030f8
	b	.L902a8

	.align	2, 0
.L9025c:
	.word	0
	.pool

.L90278:
	bl	Func_808fecc
	mov	r2, #0xa5
	mov	r5, r0
	lsl	r2, #3
	add	r3, r5, r2
	strh	r6, [r3]
	ldr	r2, .L902c0	@ 0
	ldr	r3, =0x52a
	mov	r8, r2
	add	r2, r5, r3
	mov	r3, #0x20
	strh	r3, [r2]
	mov	r0, #0
	bl	Func_80907b0
	mov	r0, #1
	bl	Func_80030f8
	mov	r1, #0xc8
	ldr	r0, =Func_8090658
	lsl	r1, #4
	bl	Func_80041d8
.L902a8:
	ldr	r2, =0x53a
	ldr	r6, .L902c4	@ 0x20
	add	r3, r5, r2
	strb	r6, [r3]
	ldr	r3, =0x53b
	add	r2, r5, r3
	mov	r3, #0x40
	strb	r3, [r2]
	ldr	r2, =0x53c
	add	r3, r5, r2
	b	.L902dc

	.align	2, 0
.L902c0:
	.word	0
.L902c4:
	.word	0x20
	.pool

.L902dc:
	strb	r7, [r3]
	ldr	r3, =0x53d
	mov	r2, r8
	add	r5, r3
	strb	r2, [r5]
	b	.L90352
.L902e8:
	bl	Func_808fecc
	mov	r5, r0
	cmp	r6, #0
	bne	.L90322
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80903bc
	bl	Func_80041d8
	ldr	r2, =Func_8090584
	mov	r0, #1
	mov	r1, #0
	bl	SetIntrHandler
	ldr	r2, =0x53a
	add	r3, r5, r2
	strb	r6, [r3]
	ldr	r3, =0x53b
	add	r2, r5, r3
	mov	r3, #0x50
	strb	r3, [r2]
	ldr	r2, =0x53c
	add	r3, r5, r2
	add	r2, #1
	strb	r7, [r3]
	add	r3, r5, r2
	strb	r6, [r3]
	b	.L90352
.L90322:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_8090488
	bl	Func_80041d8
	ldr	r2, =Func_8090584
	mov	r1, #0
	mov	r0, #1
	bl	SetIntrHandler
	ldr	r2, =0x53a
	mov	r1, #0
	add	r3, r5, r2
	strb	r1, [r3]
	ldr	r3, =0x53b
	add	r2, r5, r3
	mov	r3, #0x50
	strb	r3, [r2]
	ldr	r2, =0x53c
	add	r3, r5, r2
	add	r2, #1
	strb	r7, [r3]
	add	r3, r5, r2
	strb	r1, [r3]
.L90352:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80901c0

