	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_200b4bc
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r5, =0x217f
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm957_34f4
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm957_3508
.Lm957_34f4:
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.Lm957_3508:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_200b4bc

