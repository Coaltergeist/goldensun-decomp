	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_2008d84
	push	{lr}
	bl	OvlFunc_common1_21c8
	cmp	r0, #0
	bne	.Ld94
	bl	__Func_8093c00
	b	.Ld98
.Ld94:
	bl	OvlFunc_956_200857c
.Ld98:
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008d84

