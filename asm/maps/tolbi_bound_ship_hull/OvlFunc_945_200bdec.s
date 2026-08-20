	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200bdec
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0xf
	mov	r1, #1
	mov	r2, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1e3d
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #9
	mov	r1, #0xb
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200bdec

