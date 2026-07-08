	.include "macros.inc"

.thumb_func_start OvlFunc_953_2008648
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x12
	bl	__Func_8092848
	ldr	r0, =0x2122
	bl	__MessageID
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #0xd0
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092848
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x12
	bl	OvlFunc_953_2009c5c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2008648

