	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_884_2009084
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	bl	__Func_8093554
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x90
	mov	r2, #0xaf
	mov	r3, #0
	lsl	r2, #17
	lsl	r1, #16
	lsl	r0, #15
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #1
	bl	__Func_80917d0
	bl	__MapTransitionIn
	mov	r0, #0x11
	bl	__PlaySound
	bl	__Func_8095268
	mov	r1, #0xd2
	lsl	r1, #15
	ldr	r2, =0x10b0000
	mov	r0, #0x17
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	ldr	r2, =0x157
	mov	r1, #0x5d
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	ldr	r0, =0xed6
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x17
	bl	__ActorMessage
	mov	r0, #0x3d
	bl	__PlaySound
	add	r5, #0x55
	mov	r3, #0
	mov	r0, #0xc0
	mov	r1, #0xc0
	strb	r3, [r5]
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xda
	mov	r1, #0xb0
	mov	r3, #1
	lsl	r1, #16
	ldr	r2, =0x1190000
	lsl	r0, #15
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x87
	mov	r2, #0xb1
	mov	r0, #0x18
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #0x18
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x81
	mov	r1, #0x7e
	lsl	r2, #1
	mov	r0, #0x18
	bl	__MapActor_TravelToAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x17
	bl	__Func_8092adc
	mov	r0, #0x18
	bl	__MapActor_WaitMovement
	mov	r0, #0x18
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xe0
	mov	r2, #0xa
	lsl	r1, #7
	mov	r0, #0x18
	bl	OvlFunc_884_200a2e0
	mov	r0, #0x17
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x18
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r6, =0x8017
	ldr	r0, =0x2018
	mov	r1, #0
	bl	__ActorMessage
	mov	r5, #0xb0
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_80925cc
	lsl	r5, #8
	mov	r0, r6
	mov	r1, #0x1e
	bl	OvlFunc_884_200a2c8
	mov	r1, r5
	mov	r2, #0x14
	mov	r0, #0x18
	bl	OvlFunc_884_200a2e0
	ldr	r3, =0x2018
	mov	r8, r3
	mov	r0, r8
	mov	r1, #0xa
	bl	OvlFunc_884_200a2c8
	mov	r2, #0x28
	mov	r1, r5
	mov	r0, #0x17
	bl	OvlFunc_884_200a2e0
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x18
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, r8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xf0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #0x17
	bl	OvlFunc_884_200a2e0
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #0x18
	bl	OvlFunc_884_200a2e0
	mov	r1, #3
	mov	r0, #0x18
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r8
	mov	r1, #0x14
	bl	OvlFunc_884_200a2c8
	bl	OvlFunc_884_2009274
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2009084

