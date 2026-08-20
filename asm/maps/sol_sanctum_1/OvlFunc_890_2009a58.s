	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_890_2009a58
	push	{lr}
	mov	r0, #0x81
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_1a68
	b	.Lm890_1bd2
.Lm890_1a68:
	bl	OvlFunc_890_200a5b0
	cmp	r0, #0
	bne	.Lm890_1a72
	b	.Lm890_1bd2
.Lm890_1a72:
	bl	__CutsceneStart
	mov	r2, #0x93
	mov	r0, #0x10
	ldr	r1, =0x2410000
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #1
	bl	__Func_8092adc
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	ldr	r0, =0x23e0000
	bl	__Func_80933f8
	ldr	r0, =0x1027
	bl	__MessageID
	mov	r1, #0x90
	mov	r2, #0xe8
	mov	r0, #0
	lsl	r1, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r0, #0
	bl	__MapActor_SetAnim
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	lsl	r1, #2
	mov	r2, #0x98
	mov	r0, #0x10
	bl	__MapActor_TravelToAnimWait
	mov	r0, #6
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #0x10
	mov	r1, #6
	bl	__MapActor_Jump
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x90
	mov	r2, #0xb8
	lsl	r1, #2
	mov	r0, #0x10
	bl	__MapActor_TravelToAnimWait
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x4010
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0x90
	mov	r2, #0xd0
	lsl	r1, #2
	mov	r0, #0x10
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r0, #0x10
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm890_1bb6
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x10
	bl	__MapActor_TravelTo
.Lm890_1bb6:
	mov	r0, #0x10
	bl	__MapActor_WaitMovement
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x81
	lsl	r0, #4
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm890_1bd2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2009a58

