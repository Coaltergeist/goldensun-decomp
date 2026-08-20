	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_898_200906c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm898_2896
	mov	r1, #0x26
	mov	r2, #6
	bl	__Func_8010560
	mov	r0, #0x78
	mov	r1, #0x90
	mov	r2, #0xa
	bl	OvlFunc_898_2008ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_200906c

