	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_927_200a1b0
	push	{r5, lr}
	mov	r0, #0x12
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r1, #0x88
	mov	r2, #0xb4
	lsl	r2, #17
	mov	r0, #0x12
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r0, #0x12
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	mov	r2, #0xcc
	mov	r3, #0x80
	lsl	r2, #1
	lsl	r3, #12
	mov	r1, #0x88
	mov	r0, #0x12
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0x12
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x12
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0xdc
	mov	r3, #0xc0
	lsl	r3, #11
	lsl	r2, #1
	mov	r0, #0x12
	mov	r1, #0x88
	bl	OvlFunc_927_2008d90
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Face
	mov	r5, #0xc0
	mov	r0, #0xa
	bl	__CutsceneWait
	lsl	r5, #10
	mov	r2, #0xec
	mov	r3, r5
	lsl	r2, #1
	mov	r0, #0x12
	mov	r1, #0x88
	bl	OvlFunc_927_2008d90
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #6
	bl	__CutsceneWait
	mov	r2, #0xfc
	mov	r3, r5
	lsl	r2, #1
	mov	r0, #0x12
	mov	r1, #0x88
	bl	OvlFunc_927_2008d90
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x12
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0x89d
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #0x10
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_200a1b0

