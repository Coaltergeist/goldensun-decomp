	.include "macros.inc"

.thumb_func_start OvlFunc_890_2008054
	push	{lr}
	bl	OvlFunc_890_200a5b0
	cmp	r0, #0
	beq	.Lm890_b8
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_f0
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
	bne	.Lm890_9c
	bl	OvlFunc_890_20089f4
.Lm890_9c:
	bl	OvlFunc_890_200a5b0
	cmp	r0, #0
	beq	.Lm890_b2
	ldr	r0, =0x811
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_b2
	bl	OvlFunc_890_2009be8
.Lm890_b2:
	bl	__CutsceneEnd
	b	.Lm890_f0
.Lm890_b8:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_f0
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
.Lm890_f0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2008054

.thumb_func_start OvlFunc_890_2008108
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_142
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
.Lm890_142:
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2008108

.thumb_func_start OvlFunc_890_2008150
	push	{lr}
	bl	OvlFunc_890_200a5b0
	cmp	r0, #0
	beq	.Lm890_194
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_1d6
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
	b	.Lm890_1d6
.Lm890_194:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_1d6
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
	bne	.Lm890_1d2
	bl	OvlFunc_890_20089f4
.Lm890_1d2:
	bl	__CutsceneEnd
.Lm890_1d6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2008150

.thumb_func_start OvlFunc_890_20081ec
	push	{lr}
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_21a
	mov	r1, #1
	ldr	r0, =0x202db1
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	ldr	r0, =0x202
	bl	__SetFlag
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x201
	bl	__ClearFlag
.Lm890_21a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_20081ec

