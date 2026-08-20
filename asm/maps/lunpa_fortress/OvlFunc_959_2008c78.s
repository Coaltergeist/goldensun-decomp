	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_2008c78
	push	{lr}
	mov	r1, #0xf8
	mov	r2, #0xbc
	mov	r0, #0xc
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	bl	OvlFunc_959_2008b4c
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008c78

