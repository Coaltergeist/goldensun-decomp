	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80164ac
	push	{r5, lr}
	mov	r3, r0
	mov	r5, #0
	cmp	r3, #0
	beq	.L164cc
	ldr	r0, [r3]
	str	r3, [r3, #4]
	str	r5, [r3]
	cmp	r0, #0
	beq	.L164cc
.L164c0:
	ldr	r5, [r0]
	bl	Func_8016594
	mov	r0, r5
	cmp	r0, #0
	bne	.L164c0
.L164cc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80164ac

.thumb_func_start Func_80164d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r7, r2
	ldr	r2, =iwram_3001e8c
	mov	r5, r1
	ldr	r1, [sp, #0x18]
	ldr	r2, [r2]
	lsr	r4, r5, #3
	add	r3, #7
	ldrh	r5, [r0, #0xc]
	add	r1, #7
	ldrh	r0, [r0, #0xe]
	mov	r8, r2
	lsr	r3, #3
	lsr	r2, r7, #3
	lsr	r1, #3
	add	r2, r0
	add	r4, r5
	add	r3, r5
	add	r1, r0
	add	r5, r4, #1
	add	r7, r2, #1
	sub	r6, r3, r4
	sub	r4, r1, r2
	mov	r3, r4
	mov	r1, r7
	mov	r2, r6
	mov	r0, r5
	str	r4, [sp]
	bl	Func_801e260
	lsl	r3, r7, #5
	add	r3, r5
	ldr	r4, [sp]
	lsl	r3, #1
	mov	r2, r8
	mov	r1, #0
	add	r0, r3, r2
	cmp	r1, r4
	bcs	.L16548
	mov	r3, #0x20
	sub	r3, r6
	lsl	r3, #1
.L1652e:
	mov	r5, #0
	cmp	r5, r6
	bcs	.L16540
	ldr	r2, .L16554	@ 0xf020
.L16536:
	add	r5, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r5, r6
	bcc	.L16536
.L16540:
	add	r1, #1
	add	r0, r3
	cmp	r1, r4
	bcc	.L1652e
.L16548:
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r8
	strb	r3, [r2]
	add	sp, #4
	b	.L16560

	.align	2, 0
.L16554:
	.word	0xf020
	.pool

.L16560:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80164d4

