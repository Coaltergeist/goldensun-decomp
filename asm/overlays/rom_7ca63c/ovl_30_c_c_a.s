	.include "macros.inc"

.thumb_func_start OvlFunc_944_20081fc
	push	{lr}
	ldr	r0, =0x923
	bl	__GetFlag
	cmp	r0, #0
	bne	.L212
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.L230
.L212:
	bl	__CutsceneStart
	mov	r0, #0xe8
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xe8
	bl	__Func_8091a58
	ldr	r0, =0x924
	bl	__SetFlag
	bl	__CutsceneEnd
.L230:
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_20081fc

.thumb_func_start OvlFunc_944_2008240
	push	{r5, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	lsl	r0, #1
	ldr	r2, =0x209
	add	r3, r0
	str	r2, [r3]
	ldr	r0, =0x927
	bl	__GetFlag
	cmp	r0, #0
	bne	.L26c
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2a4
.L26c:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2a4
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2a4
	ldr	r5, =.L1940
	bl	__Random
	lsl	r0, #16
	lsr	r0, #16
	str	r0, [r5]
	ldr	r5, =.L1928
	bl	__Random
	lsl	r0, #16
	lsr	r0, #16
	mov	r1, #0xc8
	str	r0, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_944_20090a0
	bl	__StartTask
.L2a4:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2c6
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2c6
	mov	r1, #0xa4
	mov	r2, #0xa4
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
.L2c6:
	ldr	r1, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	sub	r3, #1
	cmp	r3, #0xd
	bhi	.L3d0
	ldr	r2, =.L2e0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2e0:
	.word	.L318
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L368
	.word	.L37e
	.word	.L398
	.word	.L3b2
	.word	.L3cc
.L318:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3d0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	bl	__Func_8093fa0
	mov	r3, #0xe0
	lsl	r3, #14
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	neg	r1, r1
	str	r3, [r5, #0xc]
	neg	r0, r0
	mov	r3, #0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__CutsceneEnd
	b	.L3d0
.L368:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L378
	bl	OvlFunc_944_2008468
	b	.L3d0
.L378:
	bl	OvlFunc_944_200840c
	b	.L3d0
.L37e:
	mov	r0, #0xe2
	ldr	r3, =0x6f
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	strh	r3, [r2]
	bl	OvlFunc_944_2008564
	b	.L3d0
.L398:
	mov	r0, #0xe2
	ldr	r3, =0x6f
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	strh	r3, [r2]
	bl	OvlFunc_944_20087b0
	b	.L3d0
.L3b2:
	mov	r0, #0xe2
	ldr	r3, =0x6f
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	strh	r3, [r2]
	bl	OvlFunc_944_2008af8
	b	.L3d0
.L3cc:
	bl	OvlFunc_944_2008e78
.L3d0:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_944_2008240

.thumb_func_start OvlFunc_944_200840c
	push	{lr}
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
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #0x80
	mov	r0, #0xa4
	lsl	r1, #15
	ldr	r2, =0x1410000
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	OvlFunc_944_20084b0
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_200840c

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
	bl	__Func_80921c4
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
	bl	__Func_80921c4
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
	bl	__Func_8093040
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
	ldr	r0, =.L16f4
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
	ldr	r2, =.L1938
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
	ldr	r3, =.L1930
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
	bl	__Func_8093040
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
	bl	__Func_80921c4
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
	bl	__Func_8093040
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
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0xac
	lsl	r2, #1
	mov	r1, #0xa4
	mov	r0, #8
	bl	__Func_80921c4
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

.thumb_func_start OvlFunc_944_2008a84
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__MapActor_GetActor
	mov	r1, #1
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092b08
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	bl	__Random
	mov	r3, r6
	add	r3, #0x64
	lsr	r0, #15
	strh	r0, [r3]
	bl	__Random
	mov	r3, r6
	add	r3, #0x66
	lsr	r0, #15
	strh	r0, [r3]
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	mov	r2, #0xc0
	lsl	r2, #11
	lsl	r0, #16
	add	r0, r2
	str	r0, [r6, #0xc]
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r2, =0xffffd000
	lsl	r3, #13
	lsr	r3, #16
	add	r3, r2
	str	r3, [r6, #0x4c]
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	ldr	r1, =gScript_944__020093a4
	mov	r0, r5
	bl	__MapActor_SetBehavior
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_2008a84

.thumb_func_start OvlFunc_944_2008af8
	push	{r5, r6, r7, lr}
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
	ldr	r0, =.L1844
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
	ldr	r1, =gScript_944__0200939c
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
	mov	r0, #0x96
	lsl	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x93
	bl	__PlaySound
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, #9
	bl	__MapActor_SetIdle
	mov	r0, #0xa
	bl	__MapActor_SetIdle
	mov	r0, #0xb
	bl	__MapActor_SetIdle
	mov	r0, #0xc
	bl	__MapActor_SetIdle
	mov	r0, #0xd
	bl	__MapActor_SetIdle
	mov	r0, #0xe
	bl	__MapActor_SetIdle
	mov	r0, #0xf
	bl	__MapActor_SetIdle
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #9
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xb
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xd
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xe
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xf
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x64
	bl	__MapActor_TravelTo
	mov	r0, #0xa
	mov	r1, #0x3c
	mov	r2, #0x64
	bl	__MapActor_TravelTo
	mov	r0, #0xb
	mov	r1, #0x78
	mov	r2, #0x64
	bl	__MapActor_TravelTo
	mov	r0, #0xc
	mov	r1, #0xb4
	mov	r2, #0x64
	bl	__MapActor_TravelTo
	mov	r0, #0xd
	mov	r1, #0xf0
	mov	r2, #0x64
	bl	__MapActor_TravelTo
	mov	r1, #0xa0
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x64
	bl	__MapActor_TravelTo
	mov	r1, #0xbe
	lsl	r1, #1
	mov	r2, #0x64
	mov	r0, #0xf
	bl	__MapActor_TravelTo
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xf
	bl	__MapActor_SetPos
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, =0x1999
	mov	r5, r0
	mov	r1, #0xac
	mov	r2, #0xaa
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	lsl	r2, #17
	lsl	r1, #16
	mov	r0, #0x12
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1d
	bl	__PlaySound
	mov	r0, #0x8f
	lsl	r0, #4
	bl	__SetFlag
	ldr	r7, =0xccc
	mov	r6, #0
.Ld12:
	ldr	r3, [r5, #0x18]
	add	r3, r7
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r7
	str	r3, [r5, #0x1c]
	mov	r0, #1
	add	r6, #1
	bl	__WaitFrames
	cmp	r6, #0x1f
	bls	.Ld12
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xaa
	mov	r0, #8
	mov	r1, #0xa8
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0xaa
	mov	r0, #8
	mov	r1, #0xc8
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r3, =0x12666
	mov	r5, r0
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0xac
	lsl	r3, #16
	str	r3, [r5, #8]
	mov	r3, #0xa0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	mov	r3, #0xaa
	lsl	r3, #17
	str	r3, [r5, #0x10]
	mov	r3, #0
	strh	r3, [r5, #6]
	ldr	r3, =0x6666
	str	r3, [r5, #0x44]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x48]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_Jump
	mov	r0, #0x93
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_944__020093ac
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0x11
	bl	__MapActor_SetSpeed
	ldr	r3, =0x1999
	str	r3, [r5, #0x44]
	ldr	r3, =0xb333
	mov	r0, #0x99
	str	r3, [r5, #0x48]
	bl	__PlaySound
	mov	r3, #0x80
	lsl	r3, #12
	mov	r2, #0xb4
	str	r3, [r5, #0x28]
	mov	r0, #0x11
	mov	r1, #0x84
	lsl	r2, #1
	bl	__MapActor_TravelTo
	mov	r2, #0xb4
	mov	r1, #0x84
	lsl	r2, #1
	mov	r0, #0x12
	bl	__MapActor_TravelTo
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x11
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r0, #0x28
	strh	r3, [r5, #6]
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xd
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_2008af8

.thumb_func_start OvlFunc_944_2008e78
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
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
	ldr	r1, =gScript_944__0200939c
	mov	r0, #8
	bl	__MapActor_SetBehavior
	ldr	r5, =iwram_3001ebc
	ldr	r3, =0x203
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0xc8
	lsl	r0, #1
	bl	__CutsceneWait
	mov	r0, #9
	bl	__MapActor_SetIdle
	mov	r0, #0xa
	bl	__MapActor_SetIdle
	mov	r0, #0xb
	bl	__MapActor_SetIdle
	mov	r0, #0xc
	bl	__MapActor_SetIdle
	mov	r0, #0xd
	bl	__MapActor_SetIdle
	mov	r0, #0xe
	bl	__MapActor_SetIdle
	mov	r0, #0xf
	bl	__MapActor_SetIdle
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #9
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xb
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xd
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xe
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #9
	mov	r0, #0xf
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_944__02009450
	mov	r0, #9
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_944__02009480
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_944__020094b0
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_944__020094e0
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_944__02009510
	mov	r0, #0xd
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_944__02009540
	mov	r0, #0xe
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_944__02009570
	mov	r0, #0xf
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Surprise
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xac
	mov	r0, #8
	mov	r1, #0xa4
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0xa
	bl	__MapActor_Jump
	mov	r1, #6
	mov	r2, #0x14
	mov	r0, #8
	bl	__MapActor_Jump
	ldr	r0, =0x1ee4
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	ldr	r2, [r5]
	ldr	r3, =0x202
	str	r3, [r2, r6]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r1, =gState
	mov	r0, #0xe2
	ldr	r2, =0x6f
	lsl	r0, #1
	add	r3, r1, r0
	strh	r2, [r3]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #2
	strh	r3, [r2]
	bl	OvlFunc_944_2009130
	cmp	r0, #0xb
	bne	.L1054
	mov	r0, #0xf
	bl	__Func_8091e9c
	b	.L105a
.L1054:
	mov	r0, #0xe
	bl	__Func_8091e9c
.L105a:
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_2008e78

.thumb_func_start OvlFunc_944_20090a0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r3, =iwram_3001e70
	ldr	r6, =.L1940
	ldr	r3, [r3]
	ldr	r0, [r6]
	ldr	r5, [r3]
	bl	__cos
	ldr	r2, =.L1928
	mov	r10, r0
	ldr	r0, [r2]
	mov	r8, r2
	bl	__sin
	ldr	r3, [r5]
	add	r3, r10
	stmia	r5!, {r3}
	ldr	r3, [r5]
	lsl	r0, #2
	add	r3, r0
	str	r3, [r5]
	ldr	r2, =.L1924
	ldr	r3, [r2]
	add	r3, r10
	str	r3, [r2]
	ldr	r2, =.L1920
	ldr	r3, [r2]
	add	r3, r0
	str	r3, [r2]
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r2, [r6]
	lsl	r3, #7
	lsr	r3, #16
	add	r2, r3
	str	r2, [r6]
	bl	__Random
	mov	r2, r8
	ldr	r3, [r2]
	lsl	r0, #9
	ldrh	r2, [r6]
	lsr	r0, #16
	ldr	r1, =0xffff
	add	r3, r0
	str	r2, [r6]
	and	r3, r1
	mov	r2, r8
	str	r3, [r2]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_20090a0

