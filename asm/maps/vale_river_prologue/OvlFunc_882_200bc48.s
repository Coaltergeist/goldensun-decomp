	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_200bc48
	push	{lr}
	mov	r0, #0x14
	bl	__WaitFrames
	mov	r0, #0xb3
	lsl	r0, #1
	bl	__SetFlag
	mov	r0, #0
	bl	__Func_80118c0
	mov	r0, #1
	bl	__Func_80118c0
	mov	r0, #2
	bl	__Func_80118c0
	mov	r0, #3
	bl	__Func_80118c0
	mov	r0, #4
	bl	__Func_80118c0
	mov	r0, #5
	bl	__Func_80118c0
	ldr	r0, =0x10003
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	mov	r0, #0xb3
	lsl	r0, #1
	bl	__ClearFlag
	mov	r0, #0
	bl	__Func_80118a8
	mov	r0, #1
	bl	__Func_80118a8
	mov	r0, #2
	bl	__Func_80118a8
	mov	r0, #3
	bl	__Func_80118a8
	mov	r0, #4
	bl	__Func_80118a8
	mov	r0, #5
	bl	__Func_80118a8
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200bc48

