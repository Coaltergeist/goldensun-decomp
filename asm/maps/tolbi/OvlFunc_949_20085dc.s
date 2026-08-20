	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_949_20085dc
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x8bf
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm949_622
	ldr	r0, =0x8bf
	bl	__SetFlag
	ldr	r0, =0x2368
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xe9
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xe9
	mov	r1, #0
	bl	__Func_8091a58
	b	.Lm949_630
.Lm949_622:
	ldr	r0, =0x236a
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
.Lm949_630:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_20085dc

