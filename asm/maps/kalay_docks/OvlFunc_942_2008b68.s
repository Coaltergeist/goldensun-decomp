	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_942_2008b68
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #3
	bl	__Func_8092b08
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	add	r6, #0x23
	ldrb	r2, [r6]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_2008b68

