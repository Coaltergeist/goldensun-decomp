	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_884_20085e8
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0xa
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x84
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_614
	ldr	r0, =0xeb1
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm884_622
.Lm884_614:
	ldr	r0, =_MSG_eb0
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
.Lm884_622:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20085e8

