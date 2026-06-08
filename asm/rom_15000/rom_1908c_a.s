	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80191cc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r2, #0xa0
	mov	r9, r3
	lsl	r2, #3
	add	r2, r9
	mov	r3, #0
	sub	sp, #0x18
	mov	r10, r2
	mov	r11, r3
.L191ee:
	mov	r3, r10
	ldrh	r2, [r3, #0x16]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L191fc
	b	.L19618
.L191fc:
	ldr	r3, =iwram_3001800
	mov	r2, r10
	ldr	r3, [r3]
	ldr	r6, [r2]
	b	.L1960c
.L19206:
	mov	r2, r10
	ldrh	r3, [r2, #0x12]
	mov	r7, r6
	add	r7, #0x10
	cmp	r3, #4
	bne	.L1921a
	mov	r3, #2
	strh	r3, [r6, #0xc]
	mov	r3, #8
	strb	r3, [r6, #5]
.L1921a:
	ldrb	r3, [r6, #5]
	sub	r3, #2
	cmp	r3, #0x10
	bls	.L19224
	b	.L195e0
.L19224:
	ldr	r2, =.L1922c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1922c:
	.word	.L1927c
	.word	.L195e0
	.word	.L1947c
	.word	.L19310
	.word	.L19380
	.word	.L193fc
	.word	.L19548
	.word	.L195da
	.word	.L195da
	.word	.L195da
	.word	.L195da
	.word	.L195e0
	.word	.L194f6
	.word	.L194f6
	.word	.L194f6
	.word	.L194e0
	.word	.L1950c

	.pool_aligned

.L1927c:
	ldr	r1, =0x12b6
	add	r1, r9
	ldrh	r3, [r1]
	cmp	r3, #0x60
	bne	.L19288
	b	.L195e0
.L19288:
	ldr	r3, =Data_368d4
	lsl	r2, r0, #7
	add	r2, r3
	ldrh	r0, [r1]
	mov	r1, #0x80
	bl	UploadSpriteGFX
	ldr	r3, .L192d0	@ 0x3ff
	ldrh	r2, [r7, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r7, #8]
	strb	r3, [r6, #0xe]
	ldrb	r3, [r7, #5]
	mov	r5, #0xd
	neg	r5, r5
	and	r5, r3
	mov	r3, #0x11
	neg	r3, r3
	and	r5, r3
	mov	r3, #0x20
	ldrb	r2, [r7, #7]
	orr	r5, r3
	mov	r3, #0x3f
	mov	r4, r3
	and	r5, r3
	mov	r3, #0x80
	and	r4, r2
	orr	r5, r3
	strb	r4, [r7, #7]
	strb	r5, [r7, #5]
	ldrb	r3, [r6, #8]
	b	.L192e0

	.align	2, 0
.L192d0:
	.word	0x3ff
	.pool

.L192e0:
	mov	r8, r3
	ldr	r3, =iwram_3001800
	ldr	r2, =.L33e60
	ldr	r0, [r3]
	mov	r1, #0x50
	str	r2, [sp, #4]
	str	r4, [sp]
	bl	Func_b50_from_thumb
	ldr	r2, [sp, #4]
	ldrb	r3, [r2, r0]
	mov	r2, r8
	add	r3, r2, r3
	add	r3, #2
	strb	r3, [r7, #4]
	mov	r3, #4
	neg	r3, r3
	ldr	r4, [sp]
	and	r5, r3
	sub	r3, #0x3b
	and	r3, r4
	strb	r5, [r7, #5]
	strb	r3, [r7, #7]
	b	.L195e0
.L19310:
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L1931e
	b	.L195e0
.L1931e:
	bl	Random
	mov	r5, r0
	bl	Random
	lsl	r2, r5, #1
	lsl	r3, r0, #1
	add	r2, r5
	add	r3, r0
	lsr	r3, #16
	lsr	r2, #16
	ldrh	r1, [r6, #6]
	add	r2, r3
	lsr	r2, #1
	add	r1, r2
	ldr	r3, .L19370	@ 0x1ff
	sub	r1, #1
	and	r1, r3
	ldrh	r2, [r7, #6]
	ldr	r3, =0xfffffe00
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #6]
	bl	Random
	mov	r5, r0
	bl	Random
	lsl	r2, r5, #1
	lsl	r3, r0, #1
	add	r2, r5
	add	r3, r0
	lsr	r2, #16
	lsr	r3, #16
	ldrb	r1, [r6, #8]
	add	r2, r3
	lsr	r2, #1
	add	r1, r2
	sub	r1, #1
	strb	r1, [r7, #4]
	b	.L195e0

	.align	2, 0
.L19370:
	.word	0x1ff
	.pool

.L19380:
	ldrh	r3, [r6, #0xc]
	cmp	r3, #0
	bne	.L19388
	b	.L195b0
.L19388:
	ldr	r1, =0xffff0000
	ldr	r3, [sp, #0x10]
	mov	r2, #0x80
	and	r3, r1
	lsl	r2, #2
	ldr	r5, =0xffff
	orr	r3, r2
	mov	r2, #0x80
	lsl	r2, #18
	and	r3, r5
	orr	r3, r2
	str	r3, [sp, #0x10]
	add	r0, sp, #0x10
	ldr	r3, [r0, #4]
	and	r3, r1
	str	r3, [r0, #4]
	bl	Func_8003d28
	mov	r3, #0x1f
	ldrb	r2, [r7, #7]
	and	r0, r3
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	lsl	r0, #1
	orr	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #5]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r7, #5]
	ldr	r3, =0xfffb
	ldrh	r2, [r6, #6]
	add	r2, r3
	ldr	r3, .L193e8	@ 0x1ff
	ldrh	r1, [r7, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	ldrb	r3, [r6, #8]
	add	r3, #0xfb
	strb	r3, [r7, #4]
	ldrh	r3, [r6, #0xc]
	add	r3, r5
	strh	r3, [r6, #0xc]
	b	.L195e0

	.align	2, 0
.L193e8:
	.word	0x1ff
	.pool

.L193fc:
	mov	r3, #0x80
	add	r5, sp, #0x10
	lsl	r3, #1
	strh	r3, [r5]
	strh	r3, [r5, #2]
	mov	r2, #0xc0
	ldrh	r3, [r6, #0xc]
	lsl	r2, #2
	add	r3, r2
	strh	r3, [r6, #0xc]
	strh	r3, [r5, #4]
	mov	r0, r5
	bl	Func_8003d28
	mov	r3, #0x1f
	ldrb	r2, [r7, #7]
	and	r0, r3
	mov	r3, #0x3f
	neg	r3, r3
	lsl	r0, #1
	and	r3, r2
	orr	r3, r0
	ldrb	r2, [r7, #5]
	strb	r3, [r7, #7]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r7, #5]
	ldrh	r0, [r5, #4]
	mov	r3, #0xe8
	lsl	r3, #8
	add	r0, r3
	bl	sin
	ldrh	r2, [r6, #6]
	asr	r0, #14
	sub	r2, r0
	ldr	r3, =0x1ff
	sub	r2, #2
	and	r2, r3
	ldrh	r1, [r7, #6]
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	ldrh	r0, [r5, #4]
	mov	r2, #0xd0
	lsl	r2, #7
	strh	r3, [r7, #6]
	add	r0, r2
	bl	cos
	ldrb	r3, [r6, #8]
	asr	r0, #14
	sub	r3, r0
	sub	r3, #2
	strb	r3, [r7, #4]
	b	.L195e0

	.pool_aligned

.L1947c:
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1948e
	ldrh	r3, [r6, #0xc]
	add	r3, #1
	strh	r3, [r6, #0xc]
.L1948e:
	ldr	r4, =.L33eb0
	ldrh	r0, [r6, #0xc]
	mov	r1, #0x14
	str	r4, [sp]
	bl	Func_b50_from_thumb
	ldr	r4, [sp]
	lsl	r0, #16
	lsr	r0, #15
	ldrsb	r3, [r4, r0]
	ldrh	r2, [r6, #6]
	add	r2, r3
	ldr	r3, .L194d0	@ 0x1ff
	ldrh	r1, [r7, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	mov	r1, #0x14
	ldrh	r0, [r6, #0xc]
	bl	Func_b50_from_thumb
	lsl	r0, #16
	lsr	r0, #15
	ldr	r4, [sp]
	add	r0, #1
	ldrb	r5, [r6, #8]
	ldrb	r3, [r4, r0]
	add	r5, r3
	sub	r5, #2
	strb	r5, [r7, #4]
	b	.L195e0

	.align	2, 0
.L194d0:
	.word	0x1ff
	.pool

.L194e0:
	ldrh	r3, [r6, #0xc]
	ldr	r0, =.L33ee8
	add	r3, #1
	mov	r2, #0xf
	strh	r3, [r6, #0xc]
	and	r3, r2
	ldrb	r1, [r6, #8]
	ldrb	r3, [r0, r3]
	sub	r1, r3
	strb	r1, [r7, #4]
	b	.L195e0
.L194f6:
	ldrh	r3, [r6, #0xc]
	ldr	r0, =.L33ee8
	add	r3, #1
	mov	r2, #0xf
	strh	r3, [r6, #0xc]
	and	r3, r2
	ldrb	r1, [r6, #8]
	ldrb	r3, [r0, r3]
	add	r1, r3
	strb	r1, [r7, #4]
	b	.L195e0
.L1950c:
	ldrh	r3, [r6, #0xc]
	ldr	r4, =.L33ee8
	add	r3, #1
	mov	r0, #0xf
	strh	r3, [r6, #0xc]
	and	r3, r0
	ldrh	r2, [r6, #6]
	ldrsb	r3, [r4, r3]
	sub	r2, r3
	ldr	r3, .L1953c	@ 0x1ff
	ldrh	r1, [r7, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	ldrh	r3, [r6, #0xc]
	and	r0, r3
	ldrb	r2, [r6, #8]
	ldrb	r3, [r4, r0]
	add	r2, r3
	strb	r2, [r7, #4]
	b	.L195e0

	.align	2, 0
.L1953c:
	.word	0x1ff
	.pool

.L19548:
	ldrh	r3, [r6, #0xc]
	cmp	r3, #0
	beq	.L195b0
	mov	r3, #0xa0
	lsl	r3, #1
	add	r0, sp, #0x10
	mov	r2, #0
	strh	r3, [r0]
	strh	r3, [r0, #2]
	strh	r2, [r0, #4]
	bl	Func_8003d28
	mov	r3, #0x1f
	ldrb	r2, [r7, #7]
	and	r0, r3
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	lsl	r0, #1
	orr	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #5]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r7, #5]
	ldr	r3, =0xfff8
	ldrh	r2, [r6, #6]
	add	r2, r3
	ldr	r3, .L195a0	@ 0x1ff
	ldrh	r1, [r7, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	ldrb	r3, [r6, #8]
	add	r3, #0xf8
	strb	r3, [r7, #4]
	ldr	r2, =0xffff
	ldrh	r3, [r6, #0xc]
	add	r3, r2
	strh	r3, [r6, #0xc]
	b	.L195e0

	.align	2, 0
.L195a0:
	.word	0x1ff
	.pool

.L195b0:
	ldrb	r2, [r7, #7]
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #5]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	strb	r3, [r7, #5]
	ldr	r2, =0x1ff
	ldrh	r3, [r6, #6]
	ldrh	r1, [r7, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	ldrh	r3, [r6, #8]
	strb	r3, [r7, #4]
	b	.L195e0
.L195da:
	mov	r0, r6
	bl	Func_801908c
.L195e0:
	ldrb	r3, [r6, #5]
	cmp	r3, #2
	bne	.L195fa
	ldr	r3, =0x12b6
	add	r3, r9
	ldrh	r3, [r3]
	cmp	r3, #0x60
	beq	.L19606
	ldrb	r1, [r6, #0xf]
	mov	r0, r7
	bl	Func_8003dec
	b	.L19606
.L195fa:
	cmp	r3, #0xd
	beq	.L19606
	ldrb	r1, [r6, #0xf]
	mov	r0, r7
	bl	Func_8003dec
.L19606:
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	ldr	r6, [r6]
.L1960c:
	lsr	r0, r3, #2
	mov	r3, #7
	and	r0, r3
	cmp	r6, #0
	beq	.L19618
	b	.L19206
.L19618:
	mov	r2, #1
	mov	r3, #0x24
	add	r11, r2
	add	r10, r3
	mov	r3, r11
	cmp	r3, #8
	beq	.L19628
	b	.L191ee
.L19628:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80191cc

