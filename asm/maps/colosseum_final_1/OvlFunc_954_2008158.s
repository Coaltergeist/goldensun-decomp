	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_2008158
	push	{lr}
	ldr	r3, =.Lm954_441c
	mov	r2, #0x42
	mov	r1, #0xc8
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_954_200804c
	bl	__StartTask
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008158

