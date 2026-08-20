	.include "macros.inc"

.thumb_func_start OvlFunc_959_200cbfc
	push	{r5, lr}
	ldr	r0, =0x226
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_4c18
	ldr	r0, =0x2434
	bl	__MessageID
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm959_4cee
.Lm959_4c18:
	bl	__CutsceneStart
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	ldr	r0, =0x227
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm959_4c8c
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__MapActor_SetIdle
	mov	r0, #0x14
	bl	__MapActor_WaitScript
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r5, =0x242e
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x1e
	lsl	r1, #1
	mov	r0, #0x14
	add	r5, #1
	bl	__MapActor_Emote
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
.Lm959_4c8c:
	ldr	r5, =0x2430
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__MapActor_Emote
	add	r0, r5, #1
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x14
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm959_4cd6
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #0x14
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	ldr	r0, =0x226
	bl	__SetFlag
	b	.Lm959_4ce4
.Lm959_4cd6:
	add	r0, r5, #3
	bl	__MessageID
	mov	r0, #0x14
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
.Lm959_4ce4:
	ldr	r0, =0x227
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm959_4cee:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cbfc

