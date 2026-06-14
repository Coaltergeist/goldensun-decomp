	.include "macros.inc"

.thumb_func_start OvlFunc_965_20091c4
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x8f
	mov	r2, #0x91
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_965_20089f4
	mov	r0, #0xf2
	mov	r2, #0x8f
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xfd
	lsl	r0, #15
	bl	OvlFunc_965_20089f4
	bl	OvlFunc_965_2009158
	mov	r0, #0xd
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_20091c4

