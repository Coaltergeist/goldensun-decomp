	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_20081b4
	push	{lr}
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_956_200804c
	bl	__StartTask
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_20081b4

