	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200b950
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r5, #1
	mov	r6, #5
	mov	r0, #0x4e
	mov	r1, #0x27
	mov	r2, #0x4e
	mov	r3, #0x28
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x4e
	mov	r1, #0x27
	mov	r2, #0x4e
	mov	r3, #0x29
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #4
	str	r3, [sp]
	mov	r0, #0x4e
	mov	r1, #0x27
	mov	r2, #0x4f
	mov	r3, #0x2a
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x4e
	mov	r1, #0x27
	mov	r2, #0x52
	mov	r3, #0x2b
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #0x11
	mov	r2, #0x28
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x26
	mov	r2, #5
	mov	r3, #2
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b950

