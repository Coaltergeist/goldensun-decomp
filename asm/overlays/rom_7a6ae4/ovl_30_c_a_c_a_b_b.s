	.include "macros.inc"

.thumb_func_start OvlFunc_920_2008188
	push	{lr}
	sub	sp, #8
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x25
	mov	r2, #0x61
	mov	r3, #0x15
	bl	__CopyMapTiles
	mov	r3, #0x20
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x26
	mov	r2, #3
	mov	r3, #2
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008188

.thumb_func_start OvlFunc_920_20081bc
	push	{lr}
	sub	sp, #8
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5f
	mov	r1, #0x15
	mov	r2, #0x61
	mov	r3, #0x15
	bl	__CopyMapTiles
	mov	r3, #0x20
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x26
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_20081bc
