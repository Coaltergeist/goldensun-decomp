	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_931_2008d58
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xfc
	mov	r1, #1
	mov	r2, #0xe1
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	lsl	r0, #14
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x12
	bl	__MapActor_SetAnim
	mov	r0, #1
	neg	r0, r0
	bl	__Func_8091ff0
	ldr	r0, =OvlFunc_931_2008d08
	bl	__StopTask
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x12
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #0x12
	bl	__Func_8092adc
	mov	r0, #0x93
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	bl	OvlFunc_931_20087b8
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__Func_8093530
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	ldr	r0, =0x8ff
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008d58

