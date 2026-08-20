	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_931_2008448
	push	{lr}
	mov	r0, #0x90
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm931_46e
	bl	__CutsceneStart
	ldr	r0, =0x18f1
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	b	.Lm931_4a6
.Lm931_46e:
	bl	OvlFunc_931_2008338
	cmp	r0, #0
	beq	.Lm931_480
	mov	r0, #0x15
	mov	r1, #0x10
	bl	__Func_80b0278
	b	.Lm931_4a6
.Lm931_480:
	bl	__CutsceneStart
	ldr	r0, =0x18f2
	bl	__MessageID
	ldr	r0, =0x909
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_49a
	ldr	r0, =0x1945
	bl	__MessageID
.Lm931_49a:
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.Lm931_4a6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008448

