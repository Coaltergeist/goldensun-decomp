	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80788c4  @ 0x080788c4
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r7, r0
	bl	GetUnit
	lsl	r5, #1
	add	r5, #0xd8
	ldrh	r3, [r0, r5]
	mov	r6, #1
	neg	r6, r6
	cmp	r3, #0
	beq	.L7893a
	mov	r2, #0xf8
	lsl	r2, #8
	and	r2, r3
	cmp	r2, #0
	beq	.L788f4
	ldr	r2, =0xfffff800
	add	r3, r2
	strh	r3, [r0, r5]
	mov	r6, #1
	b	.L7893a

	.pool_aligned

.L788f4:
	mov	r6, r0
	add	r6, #0xd8
	strh	r2, [r0, r5]
	mov	r4, r6
	mov	r5, #0
	mov	r1, r6
	mov	r0, #0xe
.L78902:
	ldrh	r2, [r4]
	lsl	r3, r2, #16
	add	r4, #2
	cmp	r3, #0
	beq	.L78912
	strh	r2, [r1]
	add	r5, #1
	add	r1, #2
.L78912:
	sub	r0, #1
	cmp	r0, #0
	bge	.L78902
	cmp	r5, #0xe
	bgt	.L78938
	lsl	r3, r5, #1
	add	r0, r3, r6
	ldr	r2, =0
	mov	r3, #0xf
	sub	r5, r3, r5
.L78926:
	sub	r5, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r5, #0
	bne	.L78926
	b	.L78938

	.pool_aligned

.L78938:
	mov	r6, #2
.L7893a:
	mov	r0, r7
	bl	CalcStats
	mov	r0, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80788c4

