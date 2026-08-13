	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80dfddc  @ 0x080dfddc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	mov	r5, r2
	mov	r0, r3
	mov	r2, #0
	mov	r14, r1
	mov	r12, r2
	cmp	r0, #0
	beq	.Ldfe20
	mov	r7, #0
	mov	r6, r0
.Ldfdf6:
	mov	r1, #0
	cmp	r5, #0
	beq	.Ldfe14
	mov	r2, r14
	add	r3, r6, r2
	sub	r2, r3, #1
	mov	r3, r8
	add	r4, r7, r3
.Ldfe06:
	ldrb	r3, [r4]
	add	r1, #1
	strb	r3, [r2]
	add	r4, #1
	add	r2, r0
	cmp	r1, r5
	bne	.Ldfe06
.Ldfe14:
	mov	r2, #1
	add	r12, r2
	add	r7, r5
	sub	r6, #1
	cmp	r12, r0
	bne	.Ldfdf6
.Ldfe20:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80dfddc
