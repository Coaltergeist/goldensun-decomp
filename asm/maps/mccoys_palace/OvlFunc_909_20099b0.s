	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_909_20099b0
	push	{r5, r6, lr}
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
	mov	r5, #0
	add	r0, #0x55
	mov	r1, #1
	mov	r2, #0xa6
	mov	r3, #0
	strb	r5, [r0]
	neg	r1, r1
	lsl	r2, #18
	ldr	r0, =0x37e0000
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r6, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r6]
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	sub	r3, #0x39
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xde
	mov	r0, #0x13
	lsl	r1, #18
	ldr	r2, =0x31e0000
	bl	__MapActor_SetPos
	mov	r1, #0xe2
	ldr	r2, =0x31e0000
	mov	r0, #0
	lsl	r1, #18
	bl	__MapActor_SetPos
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x37e0000
	neg	r1, r1
	ldr	r2, =0x2ba0000
	bl	__Func_80933f8
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xde
	mov	r2, #0xb4
	mov	r0, #0x13
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r1, #0xe2
	mov	r2, #0xb8
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x13
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x1728
	bl	__MessageID
	ldr	r0, =0x84f
	mov	r5, #1
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm909_1ad6
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.Lm909_1ad6:
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	cmp	r5, #0
	beq	.Lm909_1af0
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm909_1af0:
	mov	r1, #1
	mov	r2, #0xa6
	lsl	r2, #18
	mov	r3, #1
	ldr	r0, =0x37e0000
	neg	r1, r1
	bl	__Func_80933f8
	ldr	r1, =gScript_909__0200a5d4
	mov	r0, #0x13
	bl	__MapActor_SetBehavior
	mov	r2, #0xab
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_1b28
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm909_1b28:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_1b3c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm909_1b3c:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_1b50
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lm909_1b50:
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	bl	__MapActor_TravelBy
	mov	r0, #2
	mov	r1, #0x10
	mov	r2, #0x10
	bl	__MapActor_TravelBy
	mov	r2, #0x10
	mov	r1, #0x20
	mov	r0, #3
	bl	__MapActor_TravelBy
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x13
	bl	__MapActor_WaitScript
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x84f
	mov	r5, #1
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm909_1c20
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.Lm909_1c20:
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_80925cc
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	cmp	r5, #0
	beq	.Lm909_1c44
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm909_1c44:
	ldr	r0, =0x84f
	mov	r5, #1
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm909_1c60
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.Lm909_1c60:
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	cmp	r5, #0
	beq	.Lm909_1c84
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm909_1c84:
	bl	OvlFunc_909_2009958
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x84f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_1cec
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	b	.Lm909_1cf2

	.pool_aligned

.Lm909_1cec:
	mov	r0, #0x28
	bl	__CutsceneWait
.Lm909_1cf2:
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x84f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_1df8
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__ShowActorMessage_NoWait
	bl	OvlFunc_909_2009958
	mov	r0, #0
	mov	r1, #0
	mov	r5, #1
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm909_1db6
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.Lm909_1db6:
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_8092adc
	bl	OvlFunc_909_2009984
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	cmp	r5, #0
	beq	.Lm909_1dea
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm909_1dea:
	mov	r1, #0x81
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	b	.Lm909_1e08
.Lm909_1df8:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #4
	strh	r3, [r2]
.Lm909_1e08:
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__ShowActorMessage_NoWait
	bl	OvlFunc_909_2009958
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm909_1e48
	ldr	r0, =0x1737
	bl	__MessageID
	b	.Lm909_1e4e

	.pool_aligned

.Lm909_1e48:
	ldr	r0, =0x1738
	bl	__MessageID
.Lm909_1e4e:
	bl	OvlFunc_909_2009984
	mov	r2, #0x14
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	ldr	r0, =0x1739
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	bl	OvlFunc_909_2009984
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage_Wait
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
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x84
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #0x12
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__ShowActorMessage_NoWait
	bl	OvlFunc_909_2009958
	mov	r0, #0
	mov	r1, #0
	mov	r5, #1
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm909_1f76
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.Lm909_1f76:
	bl	OvlFunc_909_2009984
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	cmp	r5, #0
	beq	.Lm909_1f98
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm909_1f98:
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage_Wait
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
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_205a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm909_205a:
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_207a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm909_207a:
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_209a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.Lm909_209a:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_SetPos
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r2, =gOvl_0200a5c0
	mov	r0, #0
	ldr	r1, =0x10013
	bl	__Func_8092a1c
	mov	r1, #0xd5
	mov	r0, #0x13
	lsl	r1, #2
	ldr	r2, =0x286
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xd5
	mov	r0, #0x13
	lsl	r1, #2
	ldr	r2, =0x29a
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xd8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r2, #0xb1
	mov	r0, #0x13
	ldr	r1, =0x376
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xbf
	mov	r0, #0x13
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0xbf
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x322
	bl	__SetFlag
	ldr	r0, =0x84f
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm909_2172
	ldr	r0, =0x84f
	bl	__SetFlag
	ldr	r0, =0x84a
	bl	__SetFlag
.Lm909_2172:
	mov	r0, #6
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20099b0

