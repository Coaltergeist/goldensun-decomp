	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DeleteSpriteLayer  @ 0x0800bc48
	push	{lr}
	mov	r1, r0
	sub	sp, #4
	cmp	r1, #0
	beq	.Lbc60
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	ldr	r2, =0x85000006
	ldr	r3, =REG_DMA3SAD
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Lbc60:
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end DeleteSpriteLayer

