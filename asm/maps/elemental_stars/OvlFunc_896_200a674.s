	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_200a674
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x83e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm896_2694
	ldr	r0, =0x10cb
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm896_26c4
.Lm896_2694:
	ldr	r0, =0x83c
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm896_26a6
	ldr	r0, =0x1079
	bl	__MessageID
	b	.Lm896_26ac
.Lm896_26a6:
	ldr	r0, =0x107b
	bl	__MessageID
.Lm896_26ac:
	mov	r1, #0
	mov	r0, #9
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.Lm896_26c4:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a674

