	.include "macros.inc"

.thumb_func_start OvlFunc_940_200816c
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.Lm940_188
	mov	r0, #0x15
	bl	__UI_Sanctum
	b	.Lm940_1c0
.Lm940_188:
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm940_1aa
	bl	__CutsceneStart
	ldr	r0, =0x2507
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	b	.Lm940_1c0
.Lm940_1aa:
	bl	__CutsceneStart
	ldr	r0, =0x1bdc
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.Lm940_1c0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_200816c

