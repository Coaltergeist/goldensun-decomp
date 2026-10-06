	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_200a7b0
	push	{r5, lr}
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_27c0
	bl	.Lm959_302e
.Lm959_27c0:
	mov	r0, #0x9c
	lsl	r0, #2
	bl	__SetFlag
	bl	__CutsceneStart
	ldr	r0, =0x942
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm959_27d8
	b	.Lm959_29b0
.Lm959_27d8:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0xe4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	bl	OvlFunc_959_200a52c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_Jump
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__MapActor_SetSpeed
	mov	r1, #0xe8
	lsl	r1, #1
	mov	r2, #0xc0
	mov	r0, #2
	bl	__MapActor_TravelToAnim
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe4
	mov	r2, #0xa0
	lsl	r2, #17
	mov	r0, #0xd
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r1, #7
	lsl	r0, #10
	bl	__Func_80933d4
	ldr	r5, =0x247d
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe5
	mov	r2, #0x88
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xd
	bl	__MapActor_TravelToAnim
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #8
	mov	r2, #8
	neg	r1, r1
	mov	r0, #0xd
	bl	__MapActor_TravelBy
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x9b
	bl	__PlaySound
	add	r0, r5, #1
	mov	r1, #1
	bl	__Func_801776c
	mov	r2, #8
	neg	r2, r2
	mov	r1, #8
	mov	r0, #0xd
	bl	__MapActor_TravelBy
	bl	OvlFunc_959_200a5f8
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r5, #2
	bl	OvlFunc_959_200a718
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__MapActor_Face
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	bl	OvlFunc_959_200a69c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0xa3
	mov	r1, #4
	bl	__Func_8091f90
	mov	r0, #0x62
	mov	r1, #4
	bl	__StartMapBattle
	b	.Lm959_302a

	.pool_aligned

.Lm959_29b0:
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r5, =0x2464
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x8c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_Jump
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0xe4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	bl	OvlFunc_959_200a52c
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__MapActor_SetSpeed
	mov	r1, #0xe8
	mov	r2, #0xc0
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_TravelToAnim
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #0x1e
	bl	__CutsceneWait
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x6e
	bl	__CutsceneWait
	mov	r0, #0x3c
	bl	__PlaySound
	add	r0, r5, #3
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xc
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r1, #0x82
	mov	r2, #0xd0
	lsl	r1, #2
	mov	r0, #0xc
	bl	__MapActor_TravelToAnim
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xc
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #4
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x78
	bl	__CutsceneWait
	add	r0, r5, #5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x19
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #2
	bl	__MapActor_TravelToAnim
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #2
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x3c
	bl	__CutsceneWait
	add	r0, r5, #6
	bl	__MessageID
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	add	r0, r5, #7
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe4
	mov	r2, #0xa0
	lsl	r2, #17
	lsl	r1, #17
	mov	r0, #0xd
	bl	__MapActor_SetPos
	mov	r0, #0x13
	bl	__PlaySound
	mov	r0, r5
	add	r0, #8
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
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #5
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__MapActor_Face
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x3d
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r0, #0xd
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xe4
	mov	r2, #0x98
	lsl	r2, #1
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_TravelToAnim
	mov	r1, #1
	mov	r0, #0xd
	bl	__SetCameraTarget
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0xd
	bl	__MapActor_Face
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #9
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xd
	bl	__MapActor_Face
	mov	r0, r5
	add	r0, #0xa
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xd
	bl	__MapActor_Face
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0xb
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x3c
	bl	__CutsceneWait
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
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0xd
	bl	__MapActor_Face
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0xc
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xd
	bl	__MapActor_SetAnim
	mov	r0, r5
	add	r0, #0xd
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	b	.Lm959_2ddc

	.pool_aligned

.Lm959_2ddc:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, r5
	add	r0, #0xe
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xec
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #2
	bl	__MapActor_TravelToAnim
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0xf
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x10
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #3
	bl	__MapActor_TravelToAnim
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0xd
	bl	__MapActor_Face
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x11
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #4
	mov	r0, #0xd
	bl	__MapActor_SetAnim
	mov	r0, r5
	add	r0, #0x12
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x84
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xd
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x13
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x14
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x15
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe4
	mov	r2, #0x8c
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xd
	bl	__MapActor_TravelToAnim
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #8
	mov	r2, #8
	neg	r1, r1
	mov	r0, #0xd
	bl	__MapActor_TravelBy
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x9b
	bl	__PlaySound
	ldr	r0, =0x247e
	mov	r1, #1
	bl	__Func_801776c
	mov	r2, #8
	mov	r0, #0xd
	mov	r1, #8
	neg	r2, r2
	bl	__MapActor_TravelBy
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0xd
	bl	__MapActor_Face
	bl	OvlFunc_959_200a5f8
	mov	r0, #0x34
	bl	__PlaySound
	mov	r0, r5
	add	r0, #0x17
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0xb
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0xb
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #3
	mov	r1, #0xb
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0xb
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Face
	bl	OvlFunc_959_200a718
	bl	OvlFunc_959_200a69c
	ldr	r0, =0x942
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0xa3
	mov	r1, #4
	bl	__Func_8091f90
	mov	r0, #0x62
	mov	r1, #4
	bl	__StartMapBattle
.Lm959_302a:
	bl	__CutsceneEnd
.Lm959_302e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a7b0

