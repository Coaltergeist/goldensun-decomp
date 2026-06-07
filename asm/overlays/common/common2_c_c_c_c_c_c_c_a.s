	.include "macros.inc"

.thumb_func_start OvlFunc_common2_41c
	push	{r4, r5, r6, lr}
	mov	r6, r2
	cmp	r6, #0
	beq	.L44a
	mov	r3, #0x20
	sub	r3, r6
	cmp	r3, #0
	bgt	.L436
	neg	r3, r3
	mov	r4, r1
	mov	r5, #0
	lsr	r4, r3
	b	.L446
.L436:
	mov	r2, r1
	lsl	r2, r3
	mov	r3, r0
	lsr	r3, r6
	mov	r5, r1
	mov	r4, r3
	lsr	r5, r6
	orr	r4, r2
.L446:
	mov	r1, r5
	mov	r0, r4
.L44a:
	pop	{r4, r5, r6, pc}
.func_end OvlFunc_common2_41c

.thumb_func_start OvlFunc_common2_44c
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r4, r0
	ldr	r3, [r4, #4]
	sub	sp, #8
	ldr	r5, [r4, #0xc]
	ldr	r6, [r4, #0x10]
	mov	r10, r3
	mov	r7, #0
	bl	OvlFunc_common2_5e8
	cmp	r0, #0
	beq	.L478
	ldr	r2, =0x80000
	ldr	r1, .L54c	@ 0
	mov	r4, r6
	mov	r3, r5
	orr	r4, r2
	ldr	r7, =0x7ff
	b	.L58c
.L478:
	mov	r0, r4
	bl	OvlFunc_common2_5f8
	cmp	r0, #0
	bne	.L51a
	mov	r0, r4
	bl	OvlFunc_common2_608
	cmp	r0, #0
	beq	.L492
	mov	r5, #0
	mov	r6, #0
	b	.L590
.L492:
	mov	r3, r6
	orr	r3, r5
	cmp	r3, #0
	beq	.L590
	ldr	r0, [r4, #8]
	ldr	r2, =0xfffffc02
	cmp	r0, r2
	bge	.L512
	sub	r2, r0
	cmp	r2, #0x38
	ble	.L4ae
	mov	r5, #0
	mov	r6, #0
	b	.L4dc
.L4ae:
	mov	r3, #0
	mov	r8, r3
	mov	r3, #1
	lsl	r3, r2
	sub	r3, #1
	asr	r4, r3, #31
	and	r4, r6
	and	r3, r5
	orr	r3, r4
	cmp	r3, #0
	beq	.L4c8
	mov	r3, #1
	mov	r8, r3
.L4c8:
	mov	r1, r6
	mov	r0, r5
	bl	OvlFunc_common2_41c
	mov	r4, #0
	mov	r3, r8
	mov	r5, r0
	mov	r6, r1
	orr	r5, r3
	orr	r6, r4
.L4dc:
	mov	r3, #0xff
	mov	r1, r5
	and	r1, r3
	mov	r2, #0
	cmp	r1, #0x80
	bne	.L500
	cmp	r2, #0
	bne	.L500
	add	r3, #1
	mov	r1, r5
	and	r1, r3
	mov	r3, r2
	orr	r3, r1
	cmp	r3, #0
	beq	.L508
	mov	r3, #0x80
	mov	r4, #0
	b	.L504
.L500:
	mov	r3, #0x7f
	mov	r4, #0
.L504:
	add	r5, r3
	adc	r6, r4
.L508:
	ldr	r3, =0xfffffff
	cmp	r6, r3
	bls	.L582
	mov	r7, #1
	b	.L582
.L512:
	mov	r3, #0x80
	lsl	r3, #3
	cmp	r0, r3
	blt	.L522
.L51a:
	ldr	r7, =0x7ff
	mov	r5, #0
	mov	r6, #0
	b	.L590
.L522:
	ldr	r3, =0x3ff
	mov	r1, r5
	add	r7, r0, r3
	mov	r3, #0xff
	and	r1, r3
	mov	r2, #0
	cmp	r1, #0x80
	bne	.L564
	cmp	r2, #0
	bne	.L564
	add	r3, #1
	mov	r1, r5
	and	r1, r3
	mov	r3, r2
	orr	r3, r1
	cmp	r3, #0
	beq	.L56c
	mov	r3, #0x80
	mov	r4, #0
	b	.L568

	.align	2, 0
.L54c:
	.word	0
	.pool

.L564:
	mov	r3, #0x7f
	mov	r4, #0
.L568:
	add	r5, r3
	adc	r6, r4
.L56c:
	ldr	r3, =0x1fffffff
	cmp	r6, r3
	bls	.L582
	lsl	r1, r6, #31
	lsr	r2, r5, #1
	mov	r3, r1
	orr	r3, r2
	lsr	r4, r6, #1
	mov	r6, r4
	mov	r5, r3
	add	r7, #1
.L582:
	lsl	r1, r6, #24
	lsr	r2, r5, #8
	mov	r3, r1
	orr	r3, r2
	lsr	r4, r6, #8
.L58c:
	mov	r6, r4
	mov	r5, r3
.L590:
	mov	r0, sp
	ldr	r3, [r0, #4]
	ldr	r2, =0xfff00000
	ldr	r1, =0xfffff
	and	r3, r2
	and	r1, r6
	orr	r3, r1
	str	r3, [r0, #4]
	ldr	r3, .L5cc	@ 0x7ff
	ldrh	r2, [r0, #6]
	and	r7, r3
	ldr	r3, =0xffff800f
	lsl	r1, r7, #4
	and	r3, r2
	orr	r3, r1
	strh	r3, [r0, #6]
	mov	r3, r10
	ldrb	r2, [r0, #7]
	lsl	r1, r3, #7
	mov	r3, #0x7f
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #7]
	ldr	r3, [r0, #4]
	str	r5, [r0, #4]
	str	r3, [r0]
	ldr	r1, [r0, #4]
	ldr	r0, [r0]
	add	sp, #8
	b	.L5e0

	.align	2, 0
.L5cc:
	.word	0x7ff
	.pool

.L5e0:
	pop	{r3, r4}
	mov	r8, r3
	mov	r10, r4
	pop	{r4, r5, r6, r7, pc}
.func_end OvlFunc_common2_44c

