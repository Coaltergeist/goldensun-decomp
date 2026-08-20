	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_2008670
	push	{lr}
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x921
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_694
	ldr	r0, =0x1dd4
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm945_6ea
.Lm945_694:
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_6dc
	ldr	r0, =0x1d91
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xa
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm945_6be
	bl	OvlFunc_945_2009f3c
	b	.Lm945_6ea
.Lm945_6be:
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.Lm945_6ea
.Lm945_6dc:
	ldr	r0, =0x1d31
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
.Lm945_6ea:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008670

