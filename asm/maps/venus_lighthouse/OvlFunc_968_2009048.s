	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2009048
	push	{r5, r6, lr}
	ldr	r0, =0x161
	sub	sp, #8
	bl	__ClearFlag
	mov	r3, #0x17
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x23
	mov	r1, #8
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	mov	r5, #3
	mov	r6, #1
	mov	r0, #0x23
	mov	r1, #8
	mov	r2, #0x17
	mov	r3, #8
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x63
	mov	r1, #8
	mov	r2, #0x57
	mov	r3, #8
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #0x2e
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x39
	mov	r1, #0x37
	mov	r2, #3
	mov	r3, #3
	bl	__Func_8010704
	mov	r0, #0x39
	mov	r1, #0x37
	mov	r2, #0x2e
	mov	r3, #0x37
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x79
	mov	r1, #0x37
	mov	r2, #0x6e
	mov	r3, #0x37
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009048

