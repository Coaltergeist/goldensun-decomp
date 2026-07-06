	.include "macros.inc"

.thumb_func_start OvlFunc_899_2008428
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1253
	bl	__MessageID
	mov	r0, #0xf
	bl	OvlFunc_899_20083bc
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008428

