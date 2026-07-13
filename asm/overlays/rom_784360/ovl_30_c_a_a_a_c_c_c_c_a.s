	.include "macros.inc"

.thumb_func_start OvlFunc_884_2008780
	push	{r5, lr}
	mov	r0, #0xbc
	sub	sp, #8
	bl	__PlaySound
	mov	r5, #2
	mov	r1, #0x3f
	mov	r2, #0x33
	mov	r3, #8
	mov	r0, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r3, #8
	mov	r1, #0x3f
	mov	r2, #0x33
	mov	r0, #2
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r1, #0xb0
	mov	r2, #0x99
	lsl	r2, #1
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #0xb0
	mov	r2, #0x94
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #2
	bl	OvlFunc_884_2008714
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008780

