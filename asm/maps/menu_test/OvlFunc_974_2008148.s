	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_974_2008148
	push	{lr}
	ldr	r0, =0xcc6
	ldr	r1, =0xc9b
	sub	r1, r0, r1
	bl	OvlFunc_974_200807c
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_2008148

