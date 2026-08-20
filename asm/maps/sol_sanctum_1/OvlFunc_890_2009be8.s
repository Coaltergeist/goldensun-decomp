	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_890_2009be8
	push	{lr}
	mov	r0, #0x15
	bl	__PlaySound
	mov	r1, #0xbc
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0xbc
	mov	r2, #0xb8
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc4
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	ldr	r0, =0x102b
	bl	__MessageID
	mov	r2, #0x1e
	mov	r0, #0x10
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0xbc
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc9
	lsl	r1, #19
	mov	r2, r1
	mov	r0, #0x10
	bl	__MapActor_SetPos
	mov	r0, #4
	bl	__CutsceneWait
	ldr	r0, =0x811
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2009be8

