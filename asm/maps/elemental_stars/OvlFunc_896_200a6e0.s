	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_200a6e0
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x83e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm896_2700
	ldr	r0, =0x10c9
	bl	__MessageID
	mov	r0, #5
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm896_2730
.Lm896_2700:
	ldr	r0, =0x83c
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm896_2712
	ldr	r0, =0x107a
	bl	__MessageID
	b	.Lm896_2718
.Lm896_2712:
	ldr	r0, =0x107c
	bl	__MessageID
.Lm896_2718:
	mov	r1, #0
	mov	r0, #5
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #0
	bl	__ActorMessage
.Lm896_2730:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a6e0

