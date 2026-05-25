	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800c0cc
	push	{lr}
	ldr	r3, =iwram_3001e64
	ldr	r2, [r3]
	ldr	r3, [r2]
	mov	r0, #0
	mov	r1, #0
	b	.Lc0e4
.Lc0da:
	add	r1, #1
	add	r2, #0x70
	cmp	r1, #0x3f
	bgt	.Lc0ea
	ldr	r3, [r2]
.Lc0e4:
	cmp	r3, #0
	bne	.Lc0da
	mov	r0, r2
.Lc0ea:
	pop	{r1}
	bx	r1
.func_end Func_800c0cc

.thumb_func_start Func_800c0f4
	push	{r5, r6, r7, lr}
	mov	r7, r0
	sub	sp, #4
	cmp	r7, #0
	beq	.Lc13e
	mov	r3, r7
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Lc112
	cmp	r2, #2
	beq	.Lc11a
	b	.Lc12e
.Lc112:
	ldr	r0, [r7, #0x50]
	bl	Func_800bdd4
	b	.Lc12e
.Lc11a:
	ldr	r5, [r7, #0x50]
	mov	r6, #3
.Lc11e:
	ldmia	r5!, {r0}
	cmp	r0, #0
	beq	.Lc128
	bl	Func_800bdd4
.Lc128:
	sub	r6, #1
	cmp	r6, #0
	bge	.Lc11e
.Lc12e:
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r7
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8500001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Lc13e:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800c0f4

.thumb_func_start Func_800c150
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r7, r0
	mov	r11, r3
	mov	r9, r1
	str	r2, [sp]
	bl	Func_800c0cc
	mov	r3, r7
	cmp	r7, #0
	bge	.Lc176
	ldr	r2, .Lc1c8	@ 0xfff
	add	r3, r7, r2
.Lc176:
	asr	r5, r3, #12
	ldr	r3, .Lc1c8	@ 0xfff
	and	r7, r3
	bl	Func_800c0cc
	mov	r6, r0
	cmp	r6, #0
	bne	.Lc188
	b	.Lc2be
.Lc188:
	mov	r3, #0x10
	strh	r3, [r6, #0x20]
	cmp	r5, #0
	beq	.Lc196
	cmp	r5, #2
	beq	.Lc1cc
	b	.Lc230
.Lc196:
	mov	r0, r7
	bl	Func_800bc70
	mov	r5, r0
	cmp	r5, #0
	beq	.Lc1ba
	mov	r2, r6
	mov	r3, #1
	add	r2, #0x54
	strb	r3, [r2]
	mov	r0, r7
	str	r5, [r6, #0x50]
	bl	_Func_8185008
	ldrb	r3, [r0, #9]
	lsr	r3, #1
	strh	r3, [r6, #0x20]
	b	.Lc230
.Lc1ba:
	mov	r2, r6
	ldr	r3, .Lc1c4	@ 0
	add	r2, #0x54
	strb	r3, [r2]
	b	.Lc230

	.align	2, 0
.Lc1c4:
	.word	0
.Lc1c8:
	.word	0xfff

.Lc1cc:
	ldr	r3, =iwram_3001e68
	ldr	r1, [r3]
	mov	r0, r1
	add	r0, #0x18
	ldr	r3, [r0]
	lsl	r2, r3, #2
	add	r1, r2
	add	r3, #1
	str	r3, [r0]
	mov	r10, r1
	mov	r3, r6
	mov	r4, #8
	add	r4, r10
	add	r3, #0x54
	strb	r5, [r3]
	mov	r8, r4
	add	r0, sp, #4
	mov	r3, #0
	str	r3, [r0]
	str	r4, [r6, #0x50]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r8
	ldr	r2, =0x85000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r7
	bl	Func_800bc70
	mov	r5, r0
	cmp	r5, #0
	beq	.Lc220
	mov	r0, r7
	bl	_Func_8185008
	ldrb	r3, [r0, #9]
	lsr	r3, #1
	mov	r2, r8
	strh	r3, [r6, #0x20]
	mov	r3, #0xc
	add	r3, r10
	str	r5, [r2]
	mov	r8, r3
.Lc220:
	add	r0, r7, #1
	bl	Func_800bc70
	mov	r5, r0
	cmp	r5, #0
	beq	.Lc230
	mov	r4, r8
	str	r5, [r4]
.Lc230:
	cmp	r6, #0
	beq	.Lc2be
	mov	r0, r6
	mov	r1, r9
	ldr	r2, [sp]
	mov	r3, r11
	bl	Func_800d130
	ldr	r3, =.L1358c
	str	r3, [r6]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x55
	add	r3, r6
	mov	r12, r3
	mov	r2, #0x80
	lsl	r2, #9
	mov	r1, #0
	mov	r3, #3
	mov	r4, r12
	strh	r1, [r6, #4]
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	str	r2, [r6, #0x34]
	ldr	r0, .Lc28c	@ 0
	strb	r3, [r4]
	str	r2, [r6, #0x48]
	mov	r3, r6
	mov	r2, #0x80
	lsl	r2, #7
	add	r3, #0x59
	str	r2, [r6, #0x44]
	strb	r0, [r3]
	mov	r0, r6
	add	r0, #0x5a
	mov	r3, #1
	strb	r3, [r0]
	str	r1, [r6, #0x4c]
	mov	r1, r9
	strh	r2, [r6, #6]
	cmp	r1, #0
	bge	.Lc2a4
	ldr	r2, =0xffff
	add	r1, r2
	b	.Lc2a4

	.align	2, 0
.Lc28c:
	.word	0
	.pool

.Lc2a4:
	mov	r3, r6
	add	r3, #0x64
	asr	r2, r1, #16
	strh	r2, [r3]
	mov	r3, r11
	cmp	r3, #0
	bge	.Lc2b6
	ldr	r4, =0xffff
	add	r3, r4
.Lc2b6:
	mov	r2, r6
	asr	r3, #16
	add	r2, #0x66
	strh	r3, [r2]
.Lc2be:
	mov	r0, r6
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_800c150

.thumb_func_start Func_800c2d8
	push	{lr}
	cmp	r0, #0
	beq	.Lc2fc
	mov	r2, #0
	strh	r2, [r0, #4]
	ldr	r3, =0
	mov	r2, r0
	add	r2, #0x5b
	str	r1, [r0]
	strb	r3, [r2]
	add	r2, #2
	strb	r3, [r2]
	sub	r2, #6
	strb	r3, [r2]
	b	.Lc2fc

	.pool_aligned

.Lc2fc:
	pop	{r0}
	bx	r0
.func_end Func_800c2d8

.thumb_func_start Func_800c300
	push	{r5, r6, r7, lr}
	mov	r7, r1
	cmp	r0, #0
	beq	.Lc33c
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Lc31c
	cmp	r2, #2
	beq	.Lc326
	b	.Lc33c
.Lc31c:
	ldr	r0, [r0, #0x50]
	mov	r1, r7
	bl	Func_800ba30
	b	.Lc33c
.Lc326:
	ldr	r5, [r0, #0x50]
	mov	r6, #3
.Lc32a:
	ldmia	r5!, {r0}
	cmp	r0, #0
	beq	.Lc336
	mov	r1, r7
	bl	Func_800ba30
.Lc336:
	sub	r6, #1
	cmp	r6, #0
	bge	.Lc32a
.Lc33c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800c300

.thumb_func_start Func_800c344
	push	{r5, r6, r7, lr}
	mov	r7, r1
	cmp	r0, #0
	beq	.Lc380
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Lc360
	cmp	r2, #2
	beq	.Lc36a
	b	.Lc380
.Lc360:
	ldr	r0, [r0, #0x50]
	mov	r1, r7
	bl	Func_800baf8
	b	.Lc380
.Lc36a:
	ldr	r5, [r0, #0x50]
	mov	r6, #3
.Lc36e:
	ldmia	r5!, {r0}
	cmp	r0, #0
	beq	.Lc37a
	mov	r1, r7
	bl	Func_800baf8
.Lc37a:
	sub	r6, #1
	cmp	r6, #0
	bge	.Lc36e
.Lc380:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800c344

.thumb_func_start Func_800c388
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r8, r1
	mov	r10, r2
	cmp	r5, #0
	beq	.Lc3e0
	mov	r3, r5
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Lc3ae
	cmp	r2, #2
	beq	.Lc3c0
	b	.Lc3e0
.Lc3ae:
	mov	r1, r8
	ldr	r0, [r5, #0x50]
	bl	Func_800ba30
	ldr	r0, [r5, #0x50]
	mov	r1, r10
	bl	Func_800baf8
	b	.Lc3e0
.Lc3c0:
	ldr	r6, [r5, #0x50]
	mov	r7, #3
.Lc3c4:
	ldmia	r6!, {r5}
	cmp	r5, #0
	beq	.Lc3da
	mov	r1, r8
	mov	r0, r5
	bl	Func_800ba30
	mov	r0, r5
	mov	r1, r10
	bl	Func_800baf8
.Lc3da:
	sub	r7, #1
	cmp	r7, #0
	bge	.Lc3c4
.Lc3e0:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800c388

.thumb_func_start Func_800c3ec
	push	{lr}
	cmp	r0, #0
	beq	.Lc404
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.Lc404
	ldr	r3, [r0, #0x50]
	strh	r1, [r3, #0x1e]
.Lc404:
	pop	{r0}
	bx	r0
.func_end Func_800c3ec

.thumb_func_start Func_800c408
	push	{lr}
	cmp	r0, #0
	beq	.Lc42a
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.Lc42a
	ldr	r0, [r0, #0x50]
	cmp	r1, #0
	blt	.Lc42a
	ldr	r3, [r0, #0x28]
	strh	r1, [r3]
	bl	Func_800b7c0
.Lc42a:
	pop	{r0}
	bx	r0
.func_end Func_800c408

.thumb_func_start Func_800c430
	push	{lr}
	cmp	r0, #0
	beq	.Lc44e
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.Lc44e
	ldr	r0, [r0, #0x50]
	cmp	r1, #0
	blt	.Lc44e
	bl	Func_800b8ac
.Lc44e:
	pop	{r0}
	bx	r0
.func_end Func_800c430

.thumb_func_start Func_800c454
	push	{r5, r6, lr}
	mov	r6, r1
	ldr	r1, =.L13608
	mov	r5, r0
	bl	Func_800c2d8
	str	r6, [r5, #0x68]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800c454

.thumb_func_start Func_800c46c
	push	{lr}
	ldr	r1, =.L13590
	bl	Func_800c2d8
	pop	{r0}
	bx	r0
.func_end Func_800c46c

.thumb_func_start Func_800c47c
	push	{lr}
	ldr	r1, =.L135a8
	bl	Func_800c2d8
	pop	{r0}
	bx	r0
.func_end Func_800c47c

.thumb_func_start Func_800c48c
	push	{lr}
	ldr	r1, =.L135c0
	bl	Func_800c2d8
	pop	{r0}
	bx	r0
.func_end Func_800c48c

.thumb_func_start Func_800c49c
	push	{lr}
	ldr	r1, =.L135d8
	bl	Func_800c2d8
	pop	{r0}
	bx	r0
.func_end Func_800c49c

.thumb_func_start Func_800c4ac
	push	{lr}
	ldr	r1, =.L13620
	bl	Func_800c2d8
	pop	{r0}
	bx	r0
.func_end Func_800c4ac

.thumb_func_start Func_800c4bc
	push	{r5, r6, lr}
	mov	r6, r1
	ldr	r1, =.L135f0
	mov	r5, r0
	bl	Func_800c2d8
	cmp	r6, #0
	beq	.Lc4e2
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	mov	r2, r5
	str	r3, [r5, #0x30]
	add	r2, #0x64
	mov	r3, #0
	str	r6, [r5, #0x68]
	strh	r3, [r2]
.Lc4e2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800c4bc

.thumb_func_start Func_800c4ec
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	r6, #0
	cmp	r3, #0x10
	beq	.Lc51c
.Lc500:
	mov	r0, #1
	bl	Func_80030f8
	ldr	r3, =0x12b
	add	r6, #1
	cmp	r6, r3
	bgt	.Lc51c
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	ldr	r3, [r3, r2]
	cmp	r3, #0x10
	bne	.Lc500
.Lc51c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800c4ec

.thumb_func_start Func_800c528
	push	{lr}
	cmp	r0, #0
	beq	.Lc542
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.Lc542
	ldr	r3, [r0, #0x50]
	add	r3, #0x26
	strb	r1, [r3]
.Lc542:
	pop	{r0}
	bx	r0
.func_end Func_800c528

.thumb_func_start Func_800c548
	push	{lr}
	cmp	r0, #0
	beq	.Lc56c
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lc56c
	ldr	r0, [r0, #0x50]
	mov	r3, #3
	and	r1, r3
	ldrb	r2, [r0, #5]
	mov	r3, #0xd
	neg	r3, r3
	lsl	r1, #2
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #5]
.Lc56c:
	pop	{r0}
	bx	r0
.func_end Func_800c548

.thumb_func_start Func_800c570
	push	{lr}
	cmp	r0, #0
	beq	.Lc594
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lc594
	ldr	r0, [r0, #0x50]
	mov	r3, #1
	and	r1, r3
	ldrb	r2, [r0, #0x1d]
	mov	r3, #3
	neg	r3, r3
	lsl	r1, #1
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #0x1d]
.Lc594:
	pop	{r0}
	bx	r0
.func_end Func_800c570

.thumb_func_start Func_800c598
	push	{lr}
	cmp	r0, #0
	beq	.Lc5ae
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lc5ae
	ldr	r0, [r0, #0x50]
	bl	Func_800b684
.Lc5ae:
	pop	{r0}
	bx	r0
.func_end Func_800c598

.thumb_func_start Func_800c5b4
	push	{lr}
	ldr	r0, =Func_800c62c
	bl	Func_80042c8
	ldr	r0, =Func_800c880
	bl	Func_80042c8
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	_Func_8091200
	mov	r0, #1
	bl	_Func_8091254
	mov	r0, #1
	bl	Func_80030f8
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xf1ff
	and	r3, r2
	ldr	r2, .Lc5ec	@ 0x1000
	orr	r3, r2
	strh	r3, [r1]
	pop	{r0}
	bx	r0

	.align	2, 0
.Lc5ec:
	.word	0x1000
.func_end Func_800c5b4

.thumb_func_start Func_800c5fc
	push	{lr}
	ldr	r0, =Func_800c62c
	bl	Func_800439c
	ldr	r0, =Func_800c880
	bl	Func_800439c
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xe1ff
	and	r3, r2
	strh	r3, [r1]
	pop	{r0}
	bx	r0
.func_end Func_800c5fc

