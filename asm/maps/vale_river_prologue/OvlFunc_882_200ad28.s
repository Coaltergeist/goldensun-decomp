	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_200ad28
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__MapActor_TurnToFaceActor
	ldr	r0, =0x30d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_2d62
	ldr	r0, =0xea5
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	b	.Lm882_2d8c
.Lm882_2d62:
	ldr	r0, =0xea4
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
.Lm882_2d8c:
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #5
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	ldr	r1, =gScript_882__0200cec8
	strh	r0, [r5]
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x30d
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200ad28

