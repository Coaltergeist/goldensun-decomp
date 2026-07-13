	.include "macros.inc"

.thumb_func_start OvlFunc_890_2008054
	push	{lr}
	bl	OvlFunc_890_200a5b0
	cmp	r0, #0
	beq	.Lb8
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lf0
	bl	__CutsceneStart
	mov	r1, #1
	ldr	r0, =0x2051cc
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	ldr	r0, =0x201
	bl	__SetFlag
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x202
	bl	__ClearFlag
	ldr	r0, =0x80a
	bl	__GetFlag
	cmp	r0, #0
	bne	.L9c
	bl	OvlFunc_890_20089f4
.L9c:
	bl	OvlFunc_890_200a5b0
	cmp	r0, #0
	beq	.Lb2
	ldr	r0, =0x811
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lb2
	bl	OvlFunc_890_2009be8
.Lb2:
	bl	__CutsceneEnd
	b	.Lf0
.Lb8:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lf0
	bl	__CutsceneStart
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x201
	bl	__ClearFlag
	ldr	r0, =0x202
	bl	__ClearFlag
	bl	__CutsceneEnd
.Lf0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2008054
