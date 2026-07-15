	.include "macros.inc"

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
