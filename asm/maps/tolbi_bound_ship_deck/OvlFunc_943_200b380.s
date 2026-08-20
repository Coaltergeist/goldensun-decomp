	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200b380
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm943_33b2
	mov	r0, r6
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #0
	mov	r0, r5
	bl	__Actor_SetSpriteFlags
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
.Lm943_33b2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b380

