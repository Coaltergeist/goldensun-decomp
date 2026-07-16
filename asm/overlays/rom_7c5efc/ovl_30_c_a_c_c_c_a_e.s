	.include "macros.inc"
.thumb_func_start OvlFunc_941_20084a8
	push	{r5, lr}
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	bne	.L4b6
	b	.L800
.L4b6:
	ldr	r0, =0x94d
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r1, #0x90
	mov	r2, #0xc8
	mov	r0, #0xc
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xc8
	lsl	r2, #1
	mov	r1, #0xb8
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r0, #0xc
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xd8
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #17
	mov	r3, #1
	bl	__Func_80933f8
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L542
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xd
	bl	__MapActor_SetPos
.L542:
	mov	r0, #0xd
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__MapActor_SetSpeed
	mov	r2, #0xe8
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #0xd
	bl	__Func_809218c
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L57e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L57e:
	mov	r0, #2
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__MapActor_SetSpeed
	mov	r2, #0xf4
	mov	r1, #0x98
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L5ba
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.L5ba:
	mov	r0, #3
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__MapActor_SetSpeed
	mov	r2, #0xf4
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #3
	bl	__Func_809218c
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L5f6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L5f6:
	mov	r0, #1
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__MapActor_SetSpeed
	mov	r2, #0xf4
	mov	r1, #0xb8
	lsl	r2, #1
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	ldr	r5, =0x250d
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x46
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0
	bl	__Func_809280c
	add	r0, r5, #2
	bl	__MessageID
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #1
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L6c2
	add	r0, r5, #3
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	b	.L6d0
.L6c2:
	add	r0, r5, #4
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
.L6d0:
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xd
	bl	__MapActor_Emote
	ldr	r5, =0x2512
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_80922c4
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0xd
	bl	__MapActor_SetAnim
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x41
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0xc
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r1, #0xd
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_80922c4
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xc
	add	r5, #3
	bl	__MapActor_Emote
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0xd8
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__CutsceneEnd
	bl	OvlFunc_941_2008828
.L800:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_20084a8

.thumb_func_start OvlFunc_941_2008828
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #0xc8
	mov	r2, #0x88
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xb8
	mov	r2, #0x88
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xa8
	mov	r2, #0x88
	mov	r0, #3
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xd4
	mov	r2, #0x84
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xc8
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xa8
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #0
	bl	__SetCameraTarget
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	ldr	r5, =0x2516
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	add	r0, r5, #2
	bl	__MessageID
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x50
	ldr	r1, =0x107
	mov	r0, #1
	bl	__MapActor_Emote
	add	r0, r5, #3
	bl	__MessageID
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x46
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809280c
	add	r0, r5, #4
	bl	__MessageID
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	add	r0, r5, #5
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x400d
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0x50
	lsl	r1, #1
	mov	r0, #0xd
	bl	__MapActor_Emote
	add	r0, r5, #6
	bl	__MessageID
	ldr	r0, =0x400d
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x84
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #3
	bl	__Func_809280c
	add	r0, r5, #7
	bl	__MessageID
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xd
	bl	__Func_809280c
	mov	r0, r5
	add	r0, #8
	bl	__MessageID
	ldr	r0, =0x400d
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #9
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0xa
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0xc
	bl	__Func_809280c
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0xb
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, r5
	add	r0, #0xc
	bl	__MessageID
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0xd
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #3
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x46
	ldr	r1, =0x101
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0xe
	bl	__MessageID
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0xf
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xd
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0x10
	bl	__MessageID
	ldr	r0, =0x400d
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0xd
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x11
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x12
	bl	__MessageID
	ldr	r0, =0x400d
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x84
	mov	r2, #0x46
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x13
	bl	__MessageID
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x14
	bl	__MessageID
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, r5
	add	r0, #0x15
	bl	__MessageID
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, r5
	add	r0, #0x16
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, r5
	add	r0, #0x17
	bl	__MessageID
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xc
	mov	r1, #3
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0x18
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #2
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x19
	bl	__MessageID
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xd
	mov	r1, #0xc
	b	.Ld2c

	.pool_aligned

.Ld2c:
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x1a
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Surprise
	mov	r0, r5
	add	r0, #0x1b
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, r5
	add	r0, #0x1c
	bl	__MessageID
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x46
	mov	r0, #0xc
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, r5
	add	r0, #0x1d
	bl	__MessageID
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, r5
	add	r0, #0x1e
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, r5
	add	r0, #0x1f
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x400d
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, r5
	add	r0, #0x20
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x84
	mov	r1, #0x90
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r2, #0x8c
	mov	r1, #0xa8
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x84
	mov	r1, #0x90
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r2, #0xf4
	lsl	r2, #1
	mov	r1, #0xa8
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, r5
	add	r0, #0x21
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x4002
	bl	__ActorMessage
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x22
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0x23
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, r5
	add	r0, #0x24
	bl	__MessageID
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0x25
	bl	__MessageID
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0x26
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x4001
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lfdc
	mov	r0, r5
	add	r0, #0x27
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	b	.Lfec

	.pool_aligned

.Lfdc:
	mov	r0, r5
	add	r0, #0x28
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
.Lfec:
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #3
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #0xd
	bl	__MapActor_Emote
	ldr	r5, =0x253f
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x400d
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	add	r0, r5, #1
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #3
	bl	__MapActor_Emote
	add	r0, r5, #2
	bl	__MessageID
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xc
	bl	__Func_8092adc
	add	r0, r5, #3
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #2
	bl	__Func_809280c
	add	r0, r5, #4
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x4002
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	add	r0, r5, #5
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	add	r0, r5, #6
	bl	__MessageID
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	add	r5, #7
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	OvlFunc_941_20091b8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_2008828
