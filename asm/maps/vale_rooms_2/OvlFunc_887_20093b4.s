	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_20093b4
	push	{lr}
	sub	sp, #8
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0x55
	mov	r2, #0x19
	mov	r3, #0x55
	bl	__CopyMapTiles
	mov	r3, #0x19
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0xf
	mov	r2, #2
	mov	r3, #2
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20093b4

