	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809bb34  @ 0x0809bb34
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, [r5]
	sub	sp, #4
	cmp	r0, #0
	beq	.L9bb44
	bl	_DeleteSprite
.L9bb44:
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000012
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_809bb34
