	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_901_2008e30
	push	{lr}
	sub	sp, #8
	mov	r3, #0xd
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x29
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x2a
	mov	r2, #0xc
	mov	r3, #0x16
	bl	__CopyMapTiles
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008e30

