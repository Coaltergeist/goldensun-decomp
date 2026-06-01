	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_200803c
	push	{r5, r6, lr}
	ldr	r5, =REG_IME
	ldrh	r6, [r5]
	strh	r5, [r5]
	bl	__Func_8006358
	bl	__Func_8005d10
	strh	r6, [r5]
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_200803c

