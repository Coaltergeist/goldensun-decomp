	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_931_20083d4
	push	{lr}
	ldr	r0, =0x241
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm931_3f8
	bl	__CutsceneStart
	ldr	r0, =0x18ed
	bl	__MessageID
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	b	.Lm931_430
.Lm931_3f8:
	bl	OvlFunc_931_2008338
	cmp	r0, #0
	beq	.Lm931_40a
	mov	r0, #0x14
	mov	r1, #0x11
	bl	__Func_80b0278
	b	.Lm931_430
.Lm931_40a:
	bl	__CutsceneStart
	ldr	r0, =0x18ee
	bl	__MessageID
	ldr	r0, =0x909
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_424
	ldr	r0, =0x1943
	bl	__MessageID
.Lm931_424:
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.Lm931_430:
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_20083d4

