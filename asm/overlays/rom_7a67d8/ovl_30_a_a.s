	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	push	{lr}
	mov	r0, #8
	mov	r1, #0x3d
	bl	__Func_91f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_30

