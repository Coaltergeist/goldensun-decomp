	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009ccc
	push	{lr}
	sub	sp, #8
	mov	r3, #0x2a
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x36
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x28
	bl	__Func_8010704
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009ccc

