	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_2009d04
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xe
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r1, #0xc4
	mov	r2, #0xe3
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	bl	OvlFunc_896_200c3bc
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xe
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r6, =0x10b6
	mov	r0, r6
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0xae
	lsl	r2, #17
	ldr	r1, =0x1d50000
	ldr	r5, =0x200a
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, r5
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r2, #0xae
	lsl	r2, #17
	mov	r0, #0xa
	ldr	r1, =0x1fb0000
	bl	__MapActor_SetPos
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r2, #0xea
	mov	r0, #1
	ldr	r1, =0x185
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xd0
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	add	r0, r6, #4
	mov	r1, #1
	mov	r2, #0xa
	bl	__Func_8019aa0
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #1
	bl	__MapActor_SetSpeed
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r5, r7
	add	r5, #0x5a
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0
	mov	r8, r2
	mov	r1, #0xbc
	mov	r2, #0xeb
	strb	r3, [r5]
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldrb	r2, [r5]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r5]
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	add	r6, #5
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, r6
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xe
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_8092950
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r6, r7
	mov	r3, r8
	add	r6, #0x55
	strb	r3, [r6]
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r5, #0
.Lm896_1ee6:
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r7, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0x1e
	bne	.Lm896_1ee6
	mov	r3, #5
	strb	r3, [r6]
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xe
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xe
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xe
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r0, #0xe
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r1, #1
	mov	r2, #0xa7
	lsl	r2, #17
	mov	r3, #0
	neg	r1, r1
	ldr	r0, =0x1dd0000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0
	mov	r0, #0xb
	bl	__ShowActorMessage_NoWait
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_80933d4
	mov	r0, #0xbb
	mov	r1, #1
	mov	r2, #0xeb
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0xa0
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm896_2076
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	ldr	r0, =0x10c3
	b	.Lm896_205e

	.pool_aligned

.Lm896_2048:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x10c6
.Lm896_205e:
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xe
	bl	__ShowActorMessage_NoWait
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm896_2048
.Lm896_2076:
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x10c4
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r3, #0
	strb	r3, [r6]
	mov	r0, #0xe
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__MapActor_SetSpeed
	mov	r1, #0xe6
	mov	r3, #0xb4
	lsl	r3, #17
	mov	r2, #0
	mov	r0, r7
	lsl	r1, #17
	bl	__Actor_TravelTo
	mov	r0, #0xe
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092950
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__SetCameraTarget
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r1, r7
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	mov	r5, #0xc0
	str	r3, [r7, #0x34]
	lsl	r5, #11
	mov	r0, #0x99
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #7
	str	r5, [r7, #0x28]
	bl	__MapActor_SetAnim
	mov	r1, #0xab
	mov	r2, #0xeb
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_TravelToWait
	mov	r1, #1
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x99
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #7
	str	r5, [r7, #0x28]
	bl	__MapActor_SetAnim
	mov	r1, #0x9c
	mov	r2, #0xeb
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_TravelToWait
	mov	r1, #1
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x99
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #7
	str	r5, [r7, #0x28]
	bl	__MapActor_SetAnim
	mov	r1, #0x8b
	mov	r2, #0xf0
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_TravelToWait
	mov	r1, #1
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm896_2232
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm896_2232:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_SetPos
	mov	r0, #0xdc
	bl	__Func_8078a08
	mov	r0, #0xdd
	bl	__Func_8078a08
	mov	r0, #0xdf
	bl	__Func_8078a08
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_2009d04

