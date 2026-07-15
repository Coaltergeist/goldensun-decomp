	.include "macros.inc"

	.section .text.after_portrait, "ax", %progbits

.thumb_func_start Func_8019da8  @ 0x08019da8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r3
	ldr	r3, =iwram_3001e8c
	mov	r6, r2
	sub	sp, #8
	mov	r10, r0
	mov	r11, r1
	ldr	r5, [r3]
	bl	GetPortrait
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.L19dd4
	mov	r0, #0
	b	.L19e2c
.L19dd4:
	mov	r3, #4
	ldr	r2, =0xea4
	neg	r3, r3
	mov	r9, r3
	add	r3, r5, r2
	ldrb	r3, [r3]
	mov	r8, r9
	cmp	r3, #0
	beq	.L19dfe
	mov	r3, #2
	str	r3, [sp]
	mov	r0, r6
	mov	r3, #5
	mov	r1, r7
	mov	r2, #6
	bl	CreateUIBox
	mov	r3, #0
	mov	r5, r0
	mov	r8, r3
	b	.L19e10
.L19dfe:
	mov	r3, #2
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r7
	mov	r2, #5
	mov	r3, #5
	bl	CreateUIBox
	mov	r5, r0
.L19e10:
	cmp	r5, #0
	beq	.L19e2a
	mov	r3, r8
	mov	r2, #1
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	neg	r2, r2
	mov	r0, r10
	mov	r1, r11
	mov	r3, r5
	bl	Func_801ec6c
.L19e2a:
	mov	r0, r5
.L19e2c:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8019da8
