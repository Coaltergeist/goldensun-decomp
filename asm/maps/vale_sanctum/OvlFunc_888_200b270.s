	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_888_200b270
	push	{lr}
	sub	sp, #8
	mov	r3, #3
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x40
	mov	r2, #0xb
	mov	r3, #0x44
	bl	__CopyMapTiles
	mov	r3, #0xb
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xa
	mov	r2, #3
	mov	r3, #2
	mov	r0, #0xb
	bl	__Func_8010704
	mov	r0, #1
	bl	__WaitFrames
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200b270

