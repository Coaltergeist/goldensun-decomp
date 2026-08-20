	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200c13c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #1
	mov	r0, #0xf
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0x1e43
	bl	__MessageID
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xd0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0xf
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c13c

