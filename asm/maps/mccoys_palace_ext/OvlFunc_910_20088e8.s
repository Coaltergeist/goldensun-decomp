	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_910_20088e8
	push	{lr}
	mov	r0, #0xbc
	bl	__PlaySound
	ldr	r0, =.Lm910_bd4
	mov	r1, #0x34
	mov	r2, #0xb
	bl	__Func_8010560
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_910_20088e8

