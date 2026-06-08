	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_974_2008208
	push	{lr}
	sub	sp, #8
	mov	r1, sp
	add	r0, sp, #4
	bl	__UI_SellMenu
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_2008208

