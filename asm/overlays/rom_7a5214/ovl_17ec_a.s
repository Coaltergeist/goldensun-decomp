	.include "macros.inc"

.thumb_func_start OvlFunc_918_20097ec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r6, =.L1ca8
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	mov	r2, #1
	neg	r2, r2
	sub	sp, #8
	cmp	r3, r2
	beq	.L183c
	mov	r8, r2
	mov	r5, #0
	mov	r7, #1
.L1808:
	ldrsh	r0, [r6, r5]
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1832
	add	r3, r5, #2
	ldrsh	r3, [r6, r3]
	cmp	r3, #0
	beq	.L1832
	add	r3, r5, #4
	ldrsh	r0, [r6, r3]
	add	r3, r5, #6
	ldrsh	r1, [r6, r3]
	add	r3, #2
	ldrsh	r2, [r6, r3]
	add	r3, #2
	ldrsh	r3, [r6, r3]
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	__Func_8010424
.L1832:
	ldr	r6, =.L1ca8
	add	r5, #0xc
	ldrsh	r3, [r6, r5]
	cmp	r3, r8
	bne	.L1808
.L183c:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_20097ec

