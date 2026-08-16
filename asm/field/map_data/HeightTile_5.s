	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start HeightTile_5  @ 0x08011d94
	push	{r5, r6, lr}
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	add	r0, #1
	lsl	r6, r3, #19
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	lsl	r5, r3, #19
	mov	r3, #1
	ldrsb	r3, [r0, r3]
	add	r1, r2
	lsl	r3, #19
	mov	r0, r5
	cmp	r1, #0xf
	beq	.L11dd6
	cmp	r1, #0xe
	bhi	.L11dc6
	sub	r3, r5, r6
	mov	r0, r1
	mul	r0, r3
	mov	r1, #0xf
	bl	__divsi3
	add	r0, r6, r0
	b	.L11dd6
.L11dc6:
	sub	r1, #0xf
	sub	r3, r5
	mov	r0, r1
	mul	r0, r3
	mov	r1, #0xf
	bl	__divsi3
	add	r0, r5, r0
.L11dd6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end HeightTile_5
