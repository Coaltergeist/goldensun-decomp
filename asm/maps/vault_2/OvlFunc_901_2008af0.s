	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_901_2008af0
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm901_1756
	mov	r1, #0x32
	mov	r2, #0x12
	bl	__Func_8010560
	mov	r0, #0x9c
	mov	r1, #0x98
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #6
	bl	OvlFunc_901_2008a80
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008af0

