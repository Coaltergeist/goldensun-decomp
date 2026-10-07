	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_2009fd4
	push	{r5, lr}
	bl	__CutsceneStart
	bl	OvlFunc_947_2009268
	cmp	r0, #0
	bne	.Lm947_2028
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	bl	OvlFunc_947_20083a8
	bl	OvlFunc_947_2009d84
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x55
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
.Lm947_2028:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009fd4

