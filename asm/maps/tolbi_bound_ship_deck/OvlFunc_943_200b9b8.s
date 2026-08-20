	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200b9b8
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r5, #5
	mov	r0, #0x42
	mov	r1, #0x3d
	mov	r2, #0x40
	mov	r3, #0x28
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x27
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #5
	mov	r3, #4
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b9b8

