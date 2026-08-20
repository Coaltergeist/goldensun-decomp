	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_974_2008180
	push	{lr}
	ldr	r0, =0xd21
	ldr	r1, =0xd4c
	sub	r1, r0
	bl	OvlFunc_974_200807c
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_2008180

