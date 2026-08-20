	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_20088b4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_969_2009280
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_969_2009280
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_969_2009280
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
	mov	r2, #0
	mov	r8, r2
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	add	r5, #0x23
	ldrb	r2, [r5]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r5]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #0x91
	mov	r2, #0xa9
	lsl	r2, #17
	lsl	r1, #18
	mov	r0, #0x12
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r5, r6
	mov	r3, r8
	add	r5, #0x55
	strb	r3, [r5]
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8092b08
	mov	r2, #0x90
	ldr	r1, =0x2450000
	lsl	r2, #17
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x12
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x91
	strb	r3, [r0]
	lsl	r1, #2
	mov	r0, #0x12
	mov	r2, #0xdd
	bl	__MapActor_TravelTo
	mov	r0, #0
	ldr	r1, =0x245
	mov	r2, #0xab
	bl	__MapActor_TravelToWait
	mov	r0, #0x12
	ldr	r1, =0x212
	mov	r2, #0xd3
	bl	__MapActor_TravelTo
	mov	r0, #0
	ldr	r1, =0x213
	mov	r2, #0xa1
	bl	__MapActor_TravelToWait
	mov	r1, #0x82
	mov	r0, #0x12
	lsl	r1, #2
	mov	r2, #0xbf
	bl	__MapActor_TravelTo
	mov	r2, #0x8d
	ldr	r1, =0x209
	mov	r0, #0
	bl	__MapActor_TravelToWait
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x12
	ldr	r1, =0x203
	mov	r2, #0xab
	bl	__MapActor_TravelTo
	mov	r1, #0x81
	mov	r2, #0x79
	lsl	r1, #2
	mov	r0, #0
	bl	__MapActor_TravelToWait
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #6
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__Func_8092504
	mov	r3, #0x81
	lsl	r3, #18
	str	r3, [r6, #8]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r6, #0xc]
	mov	r3, #0x94
	lsl	r3, #16
	mov	r7, #0x80
	lsl	r7, #8
	ldr	r2, .Lm969_a6c	@ 0
	str	r3, [r6, #0x10]
	mov	r3, #3
	strh	r7, [r6, #6]
	mov	r0, #0x98
	strb	r3, [r5]
	mov	r8, r2
	bl	__PlaySound
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x28]
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xfc
	lsl	r1, #1
	mov	r2, #0x94
	mov	r0, #0
	bl	__MapActor_TravelToWait
	mov	r0, #0xa
	bl	__CutsceneWait
	b	.Lm969_a88

	.align	2, 0
.Lm969_a6c:
	.word	0
	.pool

.Lm969_a88:
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r3, #0x80
	lsl	r3, #7
	mov	r9, r3
	ldr	r3, =0xffe00000
	mov	r2, r9
	str	r3, [r6, #0xc]
	strh	r2, [r6, #6]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x9a
	lsl	r0, #1
	bl	__PlaySound
	mov	r1, #0x83
	mov	r2, #0xbf
	lsl	r1, #2
	mov	r0, #0x12
	bl	__MapActor_TravelToWait
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x12
	ldr	r1, =0x212
	mov	r2, #0xd3
	bl	__MapActor_TravelToWait
	mov	r1, #0x91
	mov	r0, #0x12
	lsl	r1, #2
	mov	r2, #0xdd
	bl	__MapActor_TravelToWait
	mov	r1, #0x91
	mov	r2, #0xa9
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0x12
	bl	__MapActor_TravelTo
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	ldr	r2, =0x6666
	strb	r5, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #1
	bl	OvlFunc_969_2009280
	mov	r0, #2
	mov	r1, #1
	bl	OvlFunc_969_2009280
	mov	r0, #3
	mov	r1, #1
	bl	OvlFunc_969_2009280
	mov	r1, #0xf6
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xa4
	bl	__MapActor_TravelToAnim
	mov	r0, #1
	ldr	r1, =0x202
	mov	r2, #0xa4
	bl	__MapActor_TravelToAnim
	mov	r1, #0xf6
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x8c
	bl	__MapActor_TravelToAnim
	mov	r2, #0x8c
	mov	r0, #3
	ldr	r1, =0x202
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, r9
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r9
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r9
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r9
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x12
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x12
	bl	__MapActor_SetPos
	ldr	r6, =0x4013
	ldr	r0, =0x121
	bl	__PlaySound
	ldr	r0, =0x2757
	bl	__MessageID
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #2
	mov	r1, r7
	bl	__Func_8092adc
	mov	r1, r7
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	bl	__Func_8093554
	mov	r3, r8
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x9999
	ldr	r0, =0x4cccc
	bl	__Func_80933d4
	mov	r0, #0x98
	mov	r1, #0x80
	mov	r2, #0x9e
	mov	r3, #1
	lsl	r1, #14
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xd0
	lsl	r2, #8
	mov	r11, r2
	mov	r0, #0x14
	mov	r1, r11
	ldr	r5, =0x2014
	bl	OvlFunc_969_20088a8
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x3d
	bl	__PlaySound
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #0x14
	mov	r1, r10
	bl	OvlFunc_969_20088a8
	ldr	r1, =0x105
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #6
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x13
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x14
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0x93
	mov	r1, #1
	mov	r2, #0xc2
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0x88
	mov	r2, #0xc8
	mov	r0, #0x15
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	ldr	r1, =0x103
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #0x14
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #0x13
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r1, #0x83
	mov	r2, #0x28
	mov	r0, #0x13
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, r7
	mov	r0, #0x13
	bl	OvlFunc_969_20088a8
	ldr	r2, =0x2013
	mov	r8, r2
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r0, #6
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r1, =0x103
	mov	r2, #0x28
	mov	r0, #0x15
	bl	__MapActor_Emote
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, r10
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r6, #0xa0
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r6, #7
	mov	r0, #0x14
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, r6
	mov	r0, #0x13
	bl	OvlFunc_969_20088a8
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0x14
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, r7
	bl	__Func_8092adc
	mov	r0, #0x14
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, r5
	mov	r2, #0x28
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #0x14
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x50
	mov	r0, #0x13
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #0x14
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, r10
	mov	r0, #0x15
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	b	.Lm969_edc

	.pool_aligned

.Lm969_edc:
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #6
	bl	OvlFunc_969_20088a8
	mov	r1, #2
	mov	r0, #6
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, r11
	bl	OvlFunc_969_20088a8
	mov	r1, #4
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r2, #0
	mov	r0, #6
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #0x14
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x13
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r0, #0x13
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0x14
	mov	r1, r7
	bl	__Func_8092adc
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0x93
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x83
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0xb0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x15
	mov	r1, r7
	mov	r2, #0x28
	ldr	r6, =0x8015
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #1
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r0, #0x14
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__MapActor_Emote
	ldr	r0, =0xa014
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	ldr	r1, =0x105
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__MapActor_Emote
	mov	r0, r6
	bl	OvlFunc_969_2008894
	ldr	r1, =0x103
	mov	r2, #0x14
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #0x15
	bl	__MapActor_Emote
	ldr	r5, =0xa014
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x15
	mov	r1, r7
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, =0xa015
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r0, #6
	ldr	r1, =0x105
	mov	r2, #0x78
	bl	__MapActor_Emote
	ldr	r1, =0x105
	mov	r2, #0x3c
	mov	r0, #0x14
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r2, #0x28
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r0, #6
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	ldr	r1, =0x103
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, r8
	bl	OvlFunc_969_2008894
	ldr	r6, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r6]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xfc
	mov	r2, #0xa8
	mov	r3, #0
	lsl	r2, #16
	ldr	r1, =0xffe80000
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r5, =0x8001
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x1002
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0
	mov	r0, r5
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r9
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm969_11d6
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm969_11d6:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r1, r7
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r5, =gScript_969__0200dfc4
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__CutsceneEnd
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_20088b4

