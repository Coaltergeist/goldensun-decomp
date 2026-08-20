	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_200b054
	push	{r5, lr}
	ldr	r0, =0x301
	sub	sp, #8
	bl	__SetFlag
	ldr	r0, =0x941
	bl	__SetFlag
	mov	r3, #0x1a
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r2, #7
	mov	r1, #0x4b
	mov	r0, #0x10
	bl	__Func_80105d4
	mov	r0, #4
	bl	OvlFunc_959_2008c90
	bl	__CutsceneStart
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xe4
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xdc
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf4
	mov	r2, #0xb8
	mov	r0, #3
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xec
	mov	r2, #0xb8
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x82
	mov	r2, #0xe0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0xed
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0xee
	lsl	r2, #16
	mov	r0, #0xf
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #0xe5
	mov	r2, #0xf3
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xd
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #5
	mov	r0, #0xd
	bl	__MapActor_SetAnim
	bl	__MapTransitionIn
	mov	r0, #0x78
	bl	__CutsceneWait
	ldr	r5, =0x2481
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #1
	bl	__MapActor_Emote
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #1
	bl	__MapActor_Emote
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #1
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #1
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__MapActor_Face
	mov	r0, #0x3c
	bl	__CutsceneWait
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_Face
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0xe8
	mov	r0, #0xc
	lsl	r1, #2
	bl	__MapActor_TravelToAnim
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	add	r0, r5, #3
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	add	r0, r5, #4
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0xd
	bl	__MapActor_Face
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809259c
	add	r0, r5, #5
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r0, #3
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #3
	bl	__MapActor_SetAnim
	add	r0, r5, #6
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x41
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x64
	bl	__CutsceneWait
	add	r0, r5, #7
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #8
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #9
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_Face
	mov	r0, r5
	add	r0, #0xa
	bl	__MessageID
	mov	r1, #0
	mov	r0, #3
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm959_3388
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0x3c
	bl	__CutsceneWait
	b	.Lm959_3494

	.pool_aligned

.Lm959_3388:
	mov	r0, r5
	add	r0, #0xb
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Face
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__MapActor_Face
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__MapActor_Face
	mov	r0, r5
	add	r0, #0xc
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
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
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xc
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
.Lm959_3494:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0xd0
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0xd0
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #3
	bl	__MapActor_TravelToAnim
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #3
	bl	__MapActor_TravelToAnim
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #2
	bl	__MapActor_TravelToAnim
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r2, #0
	mov	r1, #2
	mov	r0, #3
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, #0xe2
	bl	__PlaySound
	mov	r0, #0xd
	mov	r1, #7
	bl	__MapActor_SetAnim
	mov	r0, #0
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x18
	mov	r0, #0
	neg	r1, r1
	mov	r2, #0
	bl	__MapActor_TravelBy
	mov	r0, #1
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x18
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__MapActor_TravelBy
	mov	r0, #3
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x18
	mov	r0, #3
	neg	r1, r1
	mov	r2, #0
	bl	__MapActor_TravelBy
	mov	r0, #2
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x18
	mov	r0, #2
	neg	r1, r1
	mov	r2, #0
	bl	__MapActor_TravelBy
	mov	r0, #0xb
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__MapActor_SetSpeed
	mov	r0, #0xf
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x18
	mov	r0, #0xb
	neg	r1, r1
	mov	r2, #0
	bl	__MapActor_TravelBy
	mov	r1, #0x18
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xf
	bl	__MapActor_TravelBy
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__MapActor_SetSpeed
	mov	r1, #0xe4
	mov	r2, #0xb8
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe8
	mov	r2, #0x80
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0xdc
	mov	r2, #0xc0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #3
	bl	__MapActor_TravelToAnim
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0xf4
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__MapActor_TravelToAnim
	mov	r1, #0xec
	mov	r2, #0xb8
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_TravelToAnim
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r5, =0x248e
	mov	r0, r5
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #6
	mov	r0, #0xd
	bl	__MapActor_SetAnim
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #7
	mov	r0, #0xd
	bl	__MapActor_SetAnim
	add	r0, r5, #1
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #2
	bl	__MapActor_Face
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x46
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #5
	mov	r0, #0xd
	bl	__MapActor_SetAnim
	mov	r0, #0x46
	bl	__CutsceneWait
	add	r0, r5, #3
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xd
	mov	r1, #7
	bl	__MapActor_SetAnim
	mov	r1, #0x84
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	add	r0, r5, #4
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xd0
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__MapActor_Face
	add	r0, r5, #5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x4b
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_Face
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_SetAnim
	add	r0, r5, #6
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	add	r0, r5, #7
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe0
	mov	r2, #0xd0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, r5
	add	r0, #8
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #9
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm959_39e0

	.pool_aligned

.Lm959_39e0:
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0xa
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0xb
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0xc
	bl	__MessageID
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r1, #1
	mov	r0, #3
	bl	__MapActor_Face
	mov	r0, r5
	add	r0, #0xd
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #3
	bl	__MapActor_Face
	mov	r0, r5
	add	r0, #0xe
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_Face
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0xf
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #1
	ldr	r1, =0x107
	mov	r2, #0x6e
	bl	__MapActor_Emote
	mov	r1, #0xe4
	mov	r2, #0xd4
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, r5
	add	r0, #0x10
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #1
	mov	r0, #2
	bl	__MapActor_Face
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, r5
	add	r0, #0x11
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0xd
	mov	r1, #0xd
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__MapActor_Face
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x12
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x13
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0x14
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__MapActor_Face
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x15
	bl	__MessageID
	mov	r1, #0
	mov	r0, #2
	bl	__ShowActorMessage_NoWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0xe4
	mov	r2, #0x98
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm959_3c88
	mov	r0, #0x13
	bl	__PlaySound
	mov	r0, r5
	add	r0, #0x16
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm959_3c9e

	.pool_aligned

.Lm959_3c88:
	mov	r0, #0x13
	bl	__PlaySound
	mov	r0, r5
	add	r0, #0x17
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
.Lm959_3c9e:
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0xe
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #3
	mov	r1, #0xe
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0xe
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0xc
	mov	r1, #0xe
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0xd
	mov	r1, #0xe
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0xe4
	mov	r1, #1
	mov	r2, #0xf0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	bl	__PlaySound
	ldr	r5, =0x24a6
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe4
	mov	r2, #0x8c
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xe
	bl	__MapActor_TravelToAnim
	mov	r0, #0xe
	bl	__MapActor_WaitMovement
	mov	r1, #0xdc
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #0xe4
	mov	r1, #1
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	add	r0, r5, #1
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xe
	bl	__MapActor_WaitMovement
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0x59
	bl	__CutsceneWait
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	add	r0, r5, #3
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x50
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #4
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_809259c
	add	r0, r5, #5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xe
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #6
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x81
	mov	r2, #0x50
	lsl	r1, #1
	mov	r0, #0xd
	bl	__MapActor_Emote
	add	r0, r5, #7
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x3c
	ldr	r1, =0x103
	mov	r0, #0xe
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #8
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, r5
	add	r0, #9
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r0, #0xd
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0
	bl	__MapActor_Surprise
	mov	r1, #0xf8
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #0xe
	bl	__MapActor_TravelToAnim
	mov	r0, #0xe
	bl	__MapActor_WaitMovement
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0xe
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xe
	mov	r0, #0xc
	bl	__MapActor_Face
	mov	r0, r5
	add	r0, #0xa
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, r5
	add	r0, #0xb
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0xc
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0xd
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xe
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0xe
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0x8c
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xe
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0xb4
	lsl	r1, #1
	mov	r0, #0xe
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0xf
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x50
	ldr	r1, =0x101
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0x10
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__MapActor_Face
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0xe
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0xe
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #0xe
	mov	r0, #3
	bl	__MapActor_Face
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x11
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x12
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x13
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xe
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x14
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x15
	bl	__MessageID
	mov	r0, #0xe
	b	.Lm959_4108

	.pool_aligned

.Lm959_4108:
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x5a
	lsl	r1, #1
	mov	r0, #0xe
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0x16
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x17
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0x18
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xe
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_809259c
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x19
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x1a
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, r5
	add	r0, #0x1b
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r0, #0xe
	mov	r1, #0
	bl	__MapActor_Face
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x1c
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x5a
	ldr	r1, =0x101
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0x1d
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x1e
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x1f
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xe
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x20
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0x21
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__MapActor_Face
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x22
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x50
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, r5
	add	r0, #0x23
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, r5
	add	r0, #0x24
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__MapActor_Face
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x25
	bl	__MessageID
	mov	r1, #0
	mov	r0, #2
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm959_4360
	mov	r0, r5
	add	r0, #0x26
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
.Lm959_4360:
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xc
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm959_43c4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm959_43c4:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm959_43f4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm959_43f4:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm959_4424
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.Lm959_4424:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xc
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r1, #0xec
	mov	r2, #0xb8
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_TravelToAnim
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r0, #0xc
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0xe
	mov	r1, #0
	bl	__MapActor_Face
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xe
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x27
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, r5
	add	r0, #0x28
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0xc
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r1, #0xf0
	mov	r2, #0xf8
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092b08
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092b08
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0xc
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0xe
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r0, #0xc
	mov	r1, #0xe
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #5
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r1, #0xf0
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__MapActor_TravelToAnim
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0xc
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0xe4
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r1, #0xe4
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xc
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0xb0
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r1, #0xb0
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xc
	bl	__MapActor_TravelToAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x11
	bl	__PlaySound
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x43
	str	r2, [r3]
	bl	__MapTransitionOut
	mov	r0, #1
	b	.Lm959_461c

	.pool_aligned

.Lm959_461c:
	bl	__CutsceneWait
	mov	r0, #0xd2
	bl	__CutsceneWait
	mov	r0, #4
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200b054

