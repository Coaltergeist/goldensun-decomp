	.include "macros.inc"

.thumb_func_start OvlFunc_944_2008468
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0xa4
	ldr	r2, =0x1410000
	mov	r0, #0
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	OvlFunc_944_20084b0
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_2008468

.thumb_func_start OvlFunc_944_20084b0
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #0xa4
	ldr	r2, =0x141
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xd0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa7
	mov	r0, #8
	mov	r1, #0xa4
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1e3a
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xa
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_20084b0

.thumb_func_start OvlFunc_944_2008564
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r1, =iwram_3001e70
	ldr	r3, [r1]
	mov	r8, r1
	ldr	r5, [r3]
	bl	__CutsceneStart
	ldr	r0, =.Lm944_16f4
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	ldr	r1, =gScript_944__0200939c
	bl	__MapActor_SetBehavior
	mov	r2, #0x4c
	add	r8, r2
	mov	r3, r8
	ldr	r2, [r3]
	mov	r1, #0xe0
	ldr	r3, =0x203
	lsl	r1, #1
	str	r3, [r2, r1]
	mov	r10, r1
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	ldmia	r5!, {r3}
	ldr	r2, =.Lm944_1938
	str	r3, [r2]
	ldr	r3, [r5]
	mov	r1, #0xa0
	str	r3, [r2, #4]
	mov	r2, #0xd2
	lsl	r2, #16
	lsl	r1, #15
	mov	r0, #9
	bl	__MapActor_SetPos
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, #0xa0
	ldr	r3, =.Lm944_1930
	lsl	r5, #15
	mov	r6, #0
	add	r0, #0x55
	ldr	r1, =ActorCmd_ARRAY_944__02009314
	strb	r6, [r0]
	str	r5, [r3]
	str	r6, [r3, #4]
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x1d
	bl	__PlaySound
	mov	r0, #0x8f
	lsl	r0, #4
	bl	__SetFlag
	mov	r0, #8
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	ldr	r0, =0x1e3e
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r2, #0xd2
	mov	r1, r5
	mov	r0, #0xa
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r2, #0xd2
	mov	r1, r5
	mov	r0, #0xb
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r2, #0xd2
	lsl	r2, #16
	mov	r1, r5
	mov	r0, #0xc
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092950
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_8092950
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, #0x80
	ldr	r6, =OvlFunc_944_20080a4
	lsl	r5, #8
	str	r5, [r0, #0x1c]
	str	r5, [r0, #0x18]
	str	r6, [r0, #0x6c]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	str	r5, [r0, #0x18]
	str	r6, [r0, #0x6c]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	str	r5, [r0, #0x18]
	str	r6, [r0, #0x6c]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xa
	ldr	r1, =0x851e
	ldr	r2, =0x428f
	bl	__MapActor_SetSpeed
	mov	r0, #0xb
	ldr	r1, =0x7333
	ldr	r2, =0x3999
	bl	__MapActor_SetSpeed
	mov	r0, #0xc
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #0x80
	ldr	r2, =0x159
	bl	__MapActor_TravelTo
	mov	r2, #0xa5
	mov	r0, #0xb
	mov	r1, #0x88
	lsl	r2, #1
	bl	__MapActor_TravelTo
	mov	r2, #0xaa
	lsl	r2, #1
	mov	r1, #0x9c
	mov	r0, #0xc
	bl	__MapActor_TravelTo
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xac
	mov	r0, #8
	mov	r1, #0xa4
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0xa
	bl	__MapActor_Jump
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #6
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r3, =0x202
	mov	r1, r10
	str	r3, [r2, r1]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xb
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_2008564

.thumb_func_start OvlFunc_944_20087b0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	bl	__CutsceneStart
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =gOvl_0200976c
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #9
	bl	OvlFunc_944_2008a84
	mov	r0, #0xa
	bl	OvlFunc_944_2008a84
	mov	r0, #0xb
	bl	OvlFunc_944_2008a84
	mov	r0, #0xc
	bl	OvlFunc_944_2008a84
	mov	r0, #0xd
	bl	OvlFunc_944_2008a84
	mov	r0, #0xe
	bl	OvlFunc_944_2008a84
	mov	r0, #0xf
	bl	OvlFunc_944_2008a84
	ldr	r2, =gScript_944__0200939c
	mov	r10, r2
	mov	r1, r10
	mov	r0, #8
	bl	__MapActor_SetBehavior
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x43
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #9
	bl	__MapActor_SetIdle
	mov	r3, #0x80
	mov	r6, #0
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	str	r6, [r5, #0x24]
	str	r6, [r5, #0x28]
	str	r6, [r5, #0x2c]
	str	r6, [r5, #0x4c]
	mov	r0, #0x14
	mov	r8, r3
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #12
	lsl	r2, #11
	bl	__MapActor_SetSpeed
	mov	r1, #0xa4
	mov	r2, #0x90
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #16
	ldr	r3, =0x1410000
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r1, #0xa4
	mov	r2, #0xd0
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #15
	ldr	r3, =0x1410000
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r1, #0xcc
	mov	r2, #0xf8
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #15
	ldr	r3, =0x1410000
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r1, #0x90
	mov	r3, #0xa9
	lsl	r3, #16
	lsl	r1, #16
	mov	r2, #0
	mov	r0, r5
	bl	__Actor_TravelTo
	mov	r0, #8
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #10
	mov	r0, #9
	bl	__MapActor_SetSpeed
	mov	r0, #9
	bl	OvlFunc_944_2008a84
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r10
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #9
	bl	__MapActor_SetIdle
	mov	r2, r8
	str	r2, [r5, #0x38]
	str	r2, [r5, #0x3c]
	str	r2, [r5, #0x40]
	str	r6, [r5, #0x24]
	str	r6, [r5, #0x28]
	str	r6, [r5, #0x2c]
	str	r6, [r5, #0x4c]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #12
	lsl	r2, #11
	bl	__MapActor_SetSpeed
	mov	r1, #0xa4
	mov	r2, #0x90
	ldr	r3, =0x1410000
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #16
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r1, #0xa0
	mov	r2, #0xa0
	mov	r0, #9
	lsl	r1, #11
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r1, #0xa4
	mov	r2, #0xd0
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #15
	ldr	r3, =0x1410000
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r1, #0xa4
	mov	r2, #0xe4
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #15
	ldr	r3, =0x1410000
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r1, #0xa4
	mov	r2, #0xd0
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #15
	ldr	r3, =0x1410000
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r1, #0xcc
	mov	r2, #0xf8
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #15
	ldr	r3, =0x1410000
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r1, #0x90
	mov	r3, #0xa9
	lsl	r3, #16
	lsl	r1, #16
	mov	r2, #0
	mov	r0, r5
	bl	__Actor_TravelTo
	mov	r0, #8
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #9
	bl	__MapActor_SetSpeed
	mov	r0, #9
	bl	OvlFunc_944_2008a84
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r1, #6
	mov	r2, #0x28
	mov	r0, #8
	bl	__MapActor_Jump
	mov	r0, #0x1d
	bl	__PlaySound
	mov	r0, #0x8f
	lsl	r0, #4
	bl	__SetFlag
	ldr	r0, =0x1e49
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0xac
	lsl	r2, #1
	mov	r1, #0xa4
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xc
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_20087b0

