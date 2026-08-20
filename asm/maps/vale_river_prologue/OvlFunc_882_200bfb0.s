	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_200bfb0
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #0x16
	bl	__MapActor_SetIdle
	ldr	r0, =OvlFunc_882_200c5b8
	bl	__StopTask
	mov	r1, #0xf0
	mov	r2, #0xae
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0x14
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0xf9
	mov	r2, #0x9b
	strb	r3, [r0]
	lsl	r2, #19
	lsl	r1, #16
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0xed3
	bl	__MessageID
	ldr	r0, =0x1016
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xac
	ldr	r2, =0x4fe0000
	lsl	r1, #16
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xa2
	mov	r3, #1
	ldr	r2, =0x5050000
	mov	r1, #0
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, =0x1016
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x1016
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r0, #0x16
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	mov	r1, #0xa5
	ldr	r2, =0x514
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xb3
	mov	r0, #0x16
	mov	r1, #0xc3
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	ldr	r0, =0x842
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200bfb0

