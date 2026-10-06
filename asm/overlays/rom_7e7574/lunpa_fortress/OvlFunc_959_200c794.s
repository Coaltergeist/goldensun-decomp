	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_200c794
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_47b8
	ldr	r0, =0x2566
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	b	.Lm959_4902
.Lm959_47b8:
	ldr	r0, =0x313
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_47d6
	ldr	r0, =0x2457
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x19
	bl	__ShowActorMessage_NoWait
	bl	__CutsceneEnd
	b	.Lm959_4902
.Lm959_47d6:
	mov	r1, #0x81
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x19
	bl	__MapActor_Face
	ldr	r5, =0x244f
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0x19
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r0, #0x19
	mov	r1, #0x18
	bl	__MapActor_Face
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8093500
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x3c
	ldr	r1, =0x105
	mov	r0, #0x19
	bl	__MapActor_Emote
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #0x19
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x3c
	ldr	r1, =0x107
	mov	r0, #0x19
	bl	__MapActor_Emote
	add	r0, r5, #2
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x19
	bl	__ActorMessage
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x19
	bl	__MapActor_Face
	add	r0, r5, #3
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x19
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm959_489c
	add	r0, r5, #4
	bl	__MessageID
	mov	r0, #0x19
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	b	.Lm959_48aa
.Lm959_489c:
	add	r0, r5, #5
	bl	__MessageID
	mov	r0, #0x19
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
.Lm959_48aa:
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x3c
	ldr	r1, =0x105
	mov	r0, #0x19
	bl	__MapActor_Emote
	ldr	r5, =0x2455
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x19
	bl	__ShowActorMessage_NoWait
	mov	r1, #1
	mov	r0, #0x19
	bl	__Func_80925cc
	add	r0, r5, #1
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x19
	bl	__ShowActorMessage_NoWait
	add	r5, #2
	mov	r1, #3
	mov	r0, #0x19
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x19
	bl	__ShowActorMessage_NoWait
	ldr	r0, =0x313
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm959_4902:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200c794

