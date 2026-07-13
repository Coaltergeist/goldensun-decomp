	.include "macros.inc"

.thumb_func_start Func_807a3a8  @ 0x0807a3a8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r1, #0
	mov	r10, r2
	mov	r9, r1
	mov	r3, #0
	cmp	r0, #7
	bls	.L7a3c2
	mov	r3, #1
.L7a3c2:
	mov	r0, r3
	bl	Func_8077330
	mov	r1, #0x84
	mov	r3, r0
	lsl	r1, #1
	mov	r2, #8
	add	r2, r3
	add	r7, r3, r1
	mov	r12, r2
	ldr	r2, [r7]
	mov	r4, #0
	add	r0, #9
	mov	r5, #0
	mov	r1, r12
	cmp	r9, r2
	bge	.L7a448
	ldrb	r3, [r1]
	mov	r14, r3
	mov	r6, r9
	cmp	r8, r14
	bne	.L7a3fe
	ldrb	r3, [r0]
	cmp	r10, r3
	bne	.L7a3fe
	sub	r3, r2, #1
	mov	r1, #1
	str	r3, [r7]
	mov	r9, r1
	b	.L7a422
.L7a3fe:
	ldr	r2, [r7]
	add	r4, #1
	add	r0, #4
	add	r1, #4
	add	r5, #4
	cmp	r4, r2
	bge	.L7a448
	ldrb	r3, [r1]
	mov	r6, r5
	cmp	r8, r3
	bne	.L7a3fe
	ldrb	r3, [r0]
	cmp	r10, r3
	bne	.L7a3fe
	sub	r3, r2, #1
	str	r3, [r7]
	mov	r2, #1
	mov	r9, r2
.L7a422:
	mov	r3, #0x80
	lsl	r3, #1
	add	r3, r12
	ldr	r3, [r3]
	cmp	r4, r3
	bge	.L7a448
	mov	r2, #0x80
	lsl	r2, #1
	add	r2, r12
	b	.L7a438
.L7a436:
	lsl	r6, r4, #2
.L7a438:
	mov	r1, r12
	add	r3, r6, #4
	ldr	r3, [r1, r3]
	str	r3, [r1, r6]
	ldr	r3, [r2]
	add	r4, #1
	cmp	r4, r3
	blt	.L7a436
.L7a448:
	mov	r0, r9
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a3a8

	.section .text.after_7a458, "ax", %progbits

.thumb_func_start Func_807a498  @ 0x0807a498
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r2
	mov	r5, r1
	mov	r11, r3
	sub	sp, #4
	mov	r10, r0
	bl	GetUnit
	mov	r2, #1
	lsl	r3, r5, #2
	mov	r9, r2
	add	r3, #0xf8
	mov	r8, r3
	mov	r3, r9
	lsl	r3, r6
	mov	r2, r8
	mov	r7, r0
	mov	r9, r3
	ldr	r3, [r7, r2]
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	beq	.L7a538
	mov	r1, r5
	mov	r2, r6
	mov	r0, r10
	bl	Func_807a2bc
	mov	r1, r5
	str	r0, [sp]
	mov	r2, r6
	mov	r0, r11
	bl	GiveDjinni
	cmp	r0, #0
	bne	.L7a538
	mov	r2, r6
	mov	r0, r10
	mov	r1, r5
	bl	Func_807a350
	mov	r2, r8
	ldr	r3, [r7, r2]
	mov	r2, r9
	bic	r3, r2
	mov	r2, r8
	str	r3, [r7, r2]
	mov	r3, #0x8c
	lsl	r3, #1
	add	r2, r5, r3
	ldrb	r3, [r7, r2]
	add	r3, #0xff
	strb	r3, [r7, r2]
	ldr	r2, [sp]
	cmp	r2, #0
	beq	.L7a520
	mov	r0, r11
	mov	r1, r5
	mov	r2, r6
	bl	SetDjinni
	b	.L7a534
.L7a520:
	mov	r1, r5
	mov	r2, r6
	mov	r0, r10
	bl	Func_807a3a8
	mov	r0, r11
	mov	r1, r5
	mov	r2, r6
	bl	Func_807a458
.L7a534:
	mov	r0, #0
	b	.L7a53c
.L7a538:
	mov	r0, #1
	neg	r0, r0
.L7a53c:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a498

.thumb_func_start Func_807a550  @ 0x0807a550
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, #0
	bl	Func_8077330
	mov	r2, r0
	mov	r1, r2
	mov	r6, #0
	add	r1, #8
	cmp	r5, #0
	beq	.L7a574
	add	r3, r5, #3
	strb	r6, [r3]
	add	r3, r5, #2
	strb	r6, [r3]
	add	r3, r5, #1
	strb	r6, [r3]
	strb	r6, [r5]
.L7a574:
	mov	r3, #0x84
	lsl	r3, #1
	add	r0, r2, r3
	ldr	r3, [r0]
	mov	r4, #0
	cmp	r3, #0
	beq	.L7a5a6
	mov	r7, #1
	neg	r7, r7
.L7a586:
	mov	r3, #3
	ldrsb	r3, [r1, r3]
	cmp	r3, r7
	bne	.L7a59c
	cmp	r5, #0
	beq	.L7a59a
	ldrb	r2, [r1]
	ldrb	r3, [r5, r2]
	add	r3, #1
	strb	r3, [r5, r2]
.L7a59a:
	add	r6, #1
.L7a59c:
	ldr	r3, [r0]
	add	r4, #1
	add	r1, #4
	cmp	r4, r3
	bne	.L7a586
.L7a5a6:
	mov	r0, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a550
