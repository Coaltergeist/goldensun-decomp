	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_934_2008de8
	push	{lr}
	sub	sp, #8
	mov	r3, #0xf
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_80105d4
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_2008de8

