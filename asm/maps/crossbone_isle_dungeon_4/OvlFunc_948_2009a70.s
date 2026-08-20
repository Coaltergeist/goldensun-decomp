	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009a70
	push	{lr}
	sub	sp, #8
	mov	r3, #0x29
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x2c
	bl	__Func_8010704
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009a70

