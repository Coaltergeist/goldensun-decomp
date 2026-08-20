	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_200824c
	push	{lr}
	mov	r0, #0xd8
	lsl	r0, #2
	sub	sp, #8
	bl	__SetFlag
	mov	r3, #0x31
	mov	r2, #0x3d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3d
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_200824c

