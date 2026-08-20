	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_200b4c8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0x1c
	bl	__MapActor_GetActor
	mov	r9, r0
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_8093554
	mov	r7, #0
	add	r0, #0x55
	mov	r1, #0
	strb	r7, [r0]
	mov	r0, #1
	mov	r10, r1
	bl	__WaitFrames
	mov	r3, #0x14
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x35
	mov	r2, #8
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #2
	str	r3, [sp]
	mov	r5, #1
	mov	r0, #2
	mov	r1, #0x66
	mov	r2, #0x54
	mov	r3, #0x29
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #1
	mov	r1, #0x66
	mov	r2, #0x53
	mov	r3, #0x29
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x67
	mov	r2, #0x52
	mov	r3, #0x2a
	mov	r0, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x55
	strb	r2, [r3]
	mov	r3, #0xa0
	lsl	r3, #16
	mov	r8, r3
	str	r3, [r7, #0xc]
	mov	r5, #0xc2
	mov	r3, #0xd2
	lsl	r5, #17
	lsl	r3, #18
	str	r3, [r7, #0x10]
	str	r5, [r7, #8]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	mov	r1, r10
	add	r3, #0x55
	strb	r1, [r3]
	mov	r3, #0xd3
	mov	r2, r8
	lsl	r3, #18
	str	r2, [r7, #0xc]
	str	r3, [r7, #0x10]
	str	r5, [r7, #8]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	mov	r1, r10
	add	r3, #0x55
	strb	r1, [r3]
	mov	r3, #0xd4
	lsl	r3, #18
	mov	r2, r8
	str	r3, [r7, #0x10]
	str	r2, [r7, #0xc]
	str	r5, [r7, #8]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	mov	r1, #0xb
	bl	__MapActor_SetAnim
	ldr	r7, =gScript_883__0200e590
	mov	r0, #0
	mov	r1, r7
	bl	__MapActor_SetBehavior
	bl	__Func_800c5b4
	ldr	r5, =0xee8
	mov	r1, #0
	mov	r0, r5
	mov	r2, #0
	bl	__Func_8019aa0
	bl	__Func_800c5fc
	ldr	r2, =0x4950000
	mov	r3, #0
	mov	r1, r8
	ldr	r0, =0x1530000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x547a
	ldr	r1, =0xa8f
	bl	__Func_80933d4
	mov	r0, #0x94
	mov	r3, #1
	lsl	r0, #17
	mov	r1, r8
	ldr	r2, =0x3990000
	bl	__Func_80933f8
	ldr	r1, =0x1990000
	ldr	r2, =0x46e0000
	mov	r0, #5
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #5
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__MapActor_SetSpeed
	mov	r1, #0xd2
	mov	r0, #5
	lsl	r1, #1
	ldr	r2, =0x42c
	bl	__MapActor_TravelToAnim
	bl	__PlayMapMusic
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	mov	r10, r3
	mov	r1, r10
	mov	r3, #0x3c
	str	r3, [r2, r1]
	bl	__MapTransitionIn
	mov	r0, #5
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x85
	mov	r0, #5
	ldr	r1, =0x155
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r0, #5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #5
	ldr	r1, =0x167
	ldr	r2, =0x409
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x9f
	ldr	r2, =0x3b3
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0xce
	mov	r0, #5
	lsl	r1, #1
	ldr	r2, =0x409
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xce
	mov	r0, #5
	lsl	r1, #1
	ldr	r2, =0x3fb
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xbb
	mov	r2, #0xfc
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #5
	ldr	r1, =0x15b
	ldr	r2, =0x3bb
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x9f
	mov	r0, #8
	lsl	r1, #1
	ldr	r2, =0x3b3
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x28
	mov	r0, #5
	mov	r1, #8
	bl	__MapActor_TurnToFaceActor
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, =0x3f9
	mov	r0, #8
	ldr	r1, =0x17b
	bl	__MapActor_TravelToAnim
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r2, #0xe6
	mov	r0, #5
	ldr	r1, =0x14d
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xe7
	ldr	r1, =0x12b
	lsl	r2, #2
	mov	r0, #5
	bl	__MapActor_TravelToAnimWait
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xf0
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r3, #1
	ldr	r0, =0x1830000
	mov	r1, r8
	ldr	r2, =0x3620000
	bl	__Func_80933f8
	add	r5, #1
	bl	__Func_8093530
	mov	r1, #2
	mov	r2, #0x14
	mov	r0, #0xa
	bl	__MapActor_Jump
	mov	r0, r5
	bl	__MessageID
	ldr	r0, =0x100a
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, r9
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r2, #0x28
	mov	r0, #0xa
	mov	r1, #0
	bl	__MapActor_TurnToFaceActor
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_809259c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x28
	ldr	r0, =0x100a
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, r7
	bl	__MapActor_SetBehavior
	mov	r1, #1
	mov	r0, #5
	bl	__SetCameraTarget
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xd0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x9c
	mov	r0, #5
	lsl	r1, #1
	ldr	r2, =0x2f7
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xbe
	ldr	r1, =0x169
	lsl	r2, #2
	mov	r0, #5
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	ldr	r0, =0x6001
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0x28
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #5
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xc6
	mov	r1, #1
	mov	r2, #0x93
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r1, r10
	ldr	r2, =0x2e3
	mov	r0, #5
	bl	__MapActor_TravelToAnimWait
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_883_200d594
	mov	r0, #1
	mov	r1, #0x11
	bl	__MapActor_SetAnim
	ldr	r0, =0x2001
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #0x83
	bl	__PlaySound
	mov	r5, #0
.Lm883_3922:
	mov	r0, #1
	bl	__MapActor_GetActor
	bl	OvlFunc_883_200dc20
	add	r5, #1
	mov	r0, #1
	bl	__WaitFrames
	cmp	r5, #0x3b
	bls	.Lm883_3922
	mov	r0, #1
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r3, =OvlFunc_883_200d5b0
	mov	r1, #0xc8
	mov	r10, r3
	mov	r0, r10
	lsl	r1, #4
	bl	__StartTask
	ldr	r1, =OvlFunc_883_200d5d0
	mov	r8, r1
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r8
	bl	__StartTask
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, #0
	mov	r9, r2
	mov	r3, r6
	mov	r1, r9
	add	r3, #0x55
	strb	r1, [r3]
	mov	r3, #0xd6
	lsl	r3, #17
	str	r3, [r6, #8]
	mov	r3, #0x80
	lsl	r3, #8
	mov	r11, r3
	mov	r2, #0xd0
	ldr	r3, =OvlFunc_883_200d75c
	mov	r5, #0x92
	lsl	r5, #18
	mov	r1, r11
	lsl	r2, #16
	str	r3, [r6, #0x6c]
	str	r2, [r6, #0xc]
	strh	r1, [r6, #6]
	str	r5, [r6, #0x10]
	mov	r0, #4
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #10
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r1, #0xcc
	mov	r2, #0xd0
	mov	r3, r5
	mov	r0, r6
	lsl	r1, #17
	lsl	r2, #16
	bl	__Actor_TravelTo
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #9
	ldr	r1, =0x2666
	ldr	r2, =0x1333
	bl	__MapActor_SetSpeed
	ldr	r1, =0x2666
	ldr	r2, =0x1333
	mov	r0, #0xe
	bl	__MapActor_SetSpeed
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0xc4
	mov	r2, #0xd0
	mov	r3, r5
	mov	r0, r6
	lsl	r1, #17
	lsl	r2, #16
	b	.Lm883_3a88

	.pool_aligned

.Lm883_3a88:
	bl	__Actor_TravelTo
	mov	r1, #0xbd
	mov	r2, #0x92
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #9
	bl	__MapActor_TravelToWait
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x2005
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r2, r9
	mov	r1, #2
	str	r2, [r6, #0x6c]
	mov	r0, #1
	bl	__Func_8092b08
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, r10
	bl	__StopTask
	mov	r0, r8
	bl	__StopTask
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, r6
	bl	OvlFunc_883_200d7fc
	bl	OvlFunc_883_200d5a4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xd4
	mov	r2, #0x9c
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x3c
	mov	r0, #1
	mov	r1, #5
	bl	__MapActor_TurnToFaceActor
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x6001
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r2, #0x50
	mov	r0, #1
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #5
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc2
	mov	r2, #0x97
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x1005
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #4
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r11
	mov	r0, #1
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r3, #0xe
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x14]
	mov	r1, #5
	mov	r3, r9
	mov	r0, #0xa
	mov	r4, #4
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r3, [sp, #0x18]
	mov	r2, #2
	mov	r3, #0x19
	mov	r1, #1
	mov	r0, #1
	str	r2, [sp]
	str	r4, [sp, #0x10]
	bl	__Func_80931ec
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0x14
	ldr	r0, =0x1005
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0x14
	ldr	r0, =0x1005
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x50
	mov	r0, #5
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x1005
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #5
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #5
	mov	r1, #1
	bl	__MapActor_Face
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xbe
	mov	r2, #0x9b
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #5
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x1005
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x6001
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #4
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x50
	mov	r0, #1
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xce
	mov	r2, #0x97
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x1005
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0x1e
	bl	__MapActor_Jump
	mov	r2, #0x14
	ldr	r0, =0x1005
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x6001
	bl	__ActorMessage_Wait
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r2, #0x28
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x1005
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r0, #5
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xd6
	mov	r2, #0x9d
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #5
	bl	__MapActor_TravelToAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #5
	bl	__MapActor_WaitMovement
	ldr	r0, =0x5001
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #5
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	b	.Lm883_3ec0

	.pool_aligned

.Lm883_3ec0:
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xd6
	mov	r2, #0x9d
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x2005
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x5001
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x80
	mov	r1, r11
	mov	r0, #5
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r2, #0x80
	mov	r1, r11
	mov	r0, #1
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0xe1
	mov	r0, #5
	lsl	r1, #1
	ldr	r2, =0x2ee
	bl	__MapActor_TravelToAnim
	mov	r1, #0xe1
	lsl	r1, #1
	ldr	r2, =0x2ee
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe4
	ldr	r3, [r3]
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0x3c
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xc
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200b4c8

