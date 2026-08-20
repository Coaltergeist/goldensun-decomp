	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_936_2009ed8
	push	{lr}
	ldr	r3, =.Lm936_5144
	mov	r2, #0
	str	r2, [r3]
	mov	r0, #0x14
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_936_2009f14
	bl	__StartTask
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_2009ed8

