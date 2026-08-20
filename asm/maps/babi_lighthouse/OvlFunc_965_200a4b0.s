	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_965_200a4b0
	push	{lr}
	sub	sp, #8
	mov	r3, #0x11
	mov	r2, #0x4e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010788
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a4b0

