	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_931_2008360
	push	{lr}
	ldr	r0, =0x242
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm931_384
	bl	__CutsceneStart
	ldr	r0, =0x18e7
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8093054
	bl	__CutsceneEnd
	b	.Lm931_3bc
.Lm931_384:
	bl	OvlFunc_931_2008338
	cmp	r0, #0
	beq	.Lm931_396
	mov	r0, #0x13
	mov	r1, #0xf
	bl	__Func_80b0278
	b	.Lm931_3bc
.Lm931_396:
	bl	__CutsceneStart
	ldr	r0, =0x18ea
	bl	__MessageID
	ldr	r0, =0x909
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_3b0
	ldr	r0, =0x1941
	bl	__MessageID
.Lm931_3b0:
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.Lm931_3bc:
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008360

