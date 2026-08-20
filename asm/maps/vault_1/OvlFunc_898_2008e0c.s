	.include "macros.inc"

.thumb_func_start OvlFunc_898_2008e0c
	push	{r5, lr}
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r3, #1
	add	r5, #0x5b
	strb	r3, [r5]
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm898_e40
	ldr	r0, =0x1241
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__CutsceneWait
	b	.Lm898_e58
.Lm898_e40:
	ldr	r0, =0x858
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm898_e52
	ldr	r0, =0x13ab
	bl	__MessageID
	b	.Lm898_e58
.Lm898_e52:
	ldr	r0, =0x134e
	bl	__MessageID
.Lm898_e58:
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	mov	r3, #0
	strb	r3, [r5]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008e0c

