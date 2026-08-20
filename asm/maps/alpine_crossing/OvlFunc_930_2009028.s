	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_930_2009028
	push	{lr}
	sub	sp, #8
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #6
	mov	r1, #0x1c
	mov	r2, #5
	mov	r3, #0xd
	bl	__CopyMapTiles
	mov	r3, #5
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #2
	mov	r0, #6
	bl	__Func_8010704
	mov	r0, #1
	bl	__CutsceneWait
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2009028

