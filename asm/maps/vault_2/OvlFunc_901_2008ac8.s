	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_901_2008ac8
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm901_1740
	mov	r1, #0x38
	mov	r2, #0x13
	bl	__Func_8010560
	mov	r0, #0xcc
	mov	r1, #0xa0
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #5
	bl	OvlFunc_901_2008a80
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008ac8

