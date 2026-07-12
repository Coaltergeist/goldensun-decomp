	.include "macros.inc"

.thumb_func_start OvlFunc_947_200a5f8
	push	{r5, lr}
	bl	__MapActor_GetActor
	mov	r5, r0
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r3, r5
	mov	r1, #0
	add	r3, #0x55
	strb	r1, [r3]
	mov	r0, r5
	bl	__Actor_SetSpriteFlags
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a5f8
