	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_20083c0
	push	{r5, lr}
	mov	r0, #0
	ldr	r5, =.Lm970_180c
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r0, #0
	str	r3, [r5]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_970_20083c0

