	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_936_20095e0
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_20095e0

