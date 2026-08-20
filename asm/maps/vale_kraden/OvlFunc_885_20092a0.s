	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_885_20092a0
	push	{r5, r6, lr}
	mov	r0, #0x80
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm885_12b0
	b	.Lm885_14ec
.Lm885_12b0:
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	lsl	r1, #9
	mov	r0, #0
	bl	__MapActor_SetSpeed
	ldr	r0, =0xf9f
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xa
	ldrsh	r5, [r0, r3]
	mov	r3, #0x12
	ldrsh	r6, [r0, r3]
	lsl	r5, #16
	lsl	r6, #16
	mov	r0, #5
	mov	r1, r5
	mov	r2, r6
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, r5
	mov	r2, r6
	bl	__MapActor_SetPos
	mov	r0, #5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0x94
	mov	r2, #0xa4
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r1, #0x8c
	mov	r2, #0xa4
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0xf0
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xd
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__MapActor_SetSpeed
	mov	r2, #0xe8
	mov	r1, #0xd8
	mov	r0, #0xd
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r0, #0xd
	mov	r1, #2
	mov	r2, #0xa
	bl	__MapActor_Jump
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r2, #0xe8
	mov	r1, #0xf8
	mov	r0, #0xd
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x3c
	mov	r0, #0xd
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #2
	bl	__ActorMessage_Wait
	mov	r1, #0xe8
	mov	r2, #0xe8
	mov	r0, #0xd
	bl	__MapActor_TravelToAnimWait
	mov	r0, #2
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #4
	mov	r0, #0xd
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #4
	bl	__CutsceneWait
	mov	r2, #2
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #4
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__Func_8093530
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm885_14a0
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm885_14a0:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm885_14d0
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__MapActor_TravelTo
.Lm885_14d0:
	mov	r0, #5
	bl	__MapActor_WaitMovement
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x80
	lsl	r0, #4
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm885_14ec:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_885_20092a0

