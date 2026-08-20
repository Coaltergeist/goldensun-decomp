	.include "macros.inc"
	.include "gba.inc"

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
	bl	__MapActor_Face
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
	bl	__MapActor_Face
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
	bl	__MapActor_Face
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
	bl	__MapActor_Face
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
	bl	__MapActor_Face
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
	bl	__MapActor_Face
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
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0xc
	bl	__MapActor_Face
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
	bl	__MapActor_Face
	mov	r0, r5
	add	r0, #0xc
	bl	__MessageID
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Face
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
	bl	__MapActor_Face
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
	bl	__MapActor_Face
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
	bl	__MapActor_Face
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
	bl	__MapActor_Face
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
	bl	__MapActor_TurnToFaceActor
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
	b	.Lm941_d2c

	.pool_aligned

.Lm941_d2c:
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #2
	bl	__MapActor_Face
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
	bl	__MapActor_Face
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
	bl	__MapActor_Face
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
	bl	__MapActor_TravelToAnim
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r2, #0x8c
	mov	r1, #0xa8
	lsl	r2, #2
	mov	r0, #0xc
	bl	__MapActor_TravelToAnim
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
	bl	__MapActor_TravelToAnim
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r2, #0xf4
	lsl	r2, #1
	mov	r1, #0xa8
	mov	r0, #0xc
	bl	__MapActor_TravelToAnim
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
	bl	__MapActor_TurnToFaceActor
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
	bl	__MapActor_Face
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
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm941_fdc
	mov	r0, r5
	add	r0, #0x27
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm941_fec

	.pool_aligned

.Lm941_fdc:
	mov	r0, r5
	add	r0, #0x28
	bl	__MessageID
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__ActorMessage
.Lm941_fec:
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #3
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0xd
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
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
	bl	__MapActor_Face
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
	bl	__MapActor_Face
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
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__MapActor_Face
	add	r0, r5, #6
	bl	__MessageID
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #1
	bl	__MapActor_Face
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
	bl	__MapActor_TurnToFaceActor
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
	bl	__MapActor_Face
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

