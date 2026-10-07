	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801e858  @ 0x0801e858
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0x80
	lsl	r0, #2
	mov	r8, r2
	mov	r10, r3
	mov	r7, r1
	bl	alloc_ewram
	ldrb	r3, [r5]
	mov	r6, r0
	mov	r2, r6
	cmp	r3, #0
	beq	.L1e888
.L1e87a:
	ldrb	r3, [r5]
	strh	r3, [r2]
	add	r5, #1
	ldrb	r3, [r5]
	add	r2, #2
	cmp	r3, #0
	bne	.L1e87a
.L1e888:
	ldr	r3, =0
	mov	r0, r6
	strh	r3, [r2]
	mov	r1, r7
	mov	r2, r8
	mov	r3, r10
	bl	Func_8017aa4
	mov	r0, r6
	bl	free
	b	.L1e8a4

	.pool_aligned

.L1e8a4:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801e858

