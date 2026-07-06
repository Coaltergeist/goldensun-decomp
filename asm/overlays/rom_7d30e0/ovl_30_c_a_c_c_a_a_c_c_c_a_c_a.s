	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_20091d8
	push	{lr}
	sub	sp, #8
	mov	r3, #0x19
	mov	r2, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r0, #0x18
	mov	r1, #0x30
	mov	r2, #1
	bl	__Func_80105d4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #12
	lsl	r2, #12
	bl	__MapActor_SetPos
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20091d8

