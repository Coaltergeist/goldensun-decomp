	.include "macros.inc"

.thumb_func_start OvlFunc_922_2008314
	push	{lr}
	mov	r0, #0xf1
	bl	__PlaySound
	mov	r2, #0x40
	neg	r2, r2
	mov	r1, #0
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__PlaySound
	ldr	r0, =0x302
	bl	__SetFlag
	mov	r0, #2
	bl	__WaitFrames
	bl	OvlFunc_922_2009050
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008314

