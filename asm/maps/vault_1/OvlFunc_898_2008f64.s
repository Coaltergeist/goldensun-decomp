	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_898_2008f64
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm898_283e
	mov	r1, #0x32
	mov	r2, #0x12
	bl	__Func_8010560
	mov	r0, #0x9c
	mov	r1, #0x98
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #6
	bl	OvlFunc_898_2008ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008f64

