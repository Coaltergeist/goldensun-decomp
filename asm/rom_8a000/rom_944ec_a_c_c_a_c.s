	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8096b88  @ 0x08096b88
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	cmp	r2, #1
	bne	.L96bda
	ldr	r0, [r0, #0x50]
	mov	r8, r0
	cmp	r0, #0
	beq	.L96bda
	ldrb	r3, [r0, #0x1d]
	and	r3, r2
	cmp	r3, #0
	bne	.L96bda
	mov	r3, r8
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L96bd2
	ldr	r1, =iwram_3001e40
	mov	r7, r8
	mov	r10, r1
	add	r7, #0x28
	mov	r6, r3
.L96bbe:
	mov	r2, r10
	ldr	r0, [r2]
	mov	r1, #6
	bl	__umodsi3
	ldmia	r7!, {r5}
	sub	r6, #1
	strb	r0, [r5, #5]
	cmp	r6, #0
	bne	.L96bbe
.L96bd2:
	mov	r2, r8
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
.L96bda:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8096b88

