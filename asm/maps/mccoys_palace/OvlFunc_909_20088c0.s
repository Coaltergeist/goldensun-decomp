	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_909_20088c0
	push	{r5, lr}
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
	mov	r1, #1
	mov	r2, #0xa6
	strb	r3, [r0]
	neg	r1, r1
	lsl	r2, #18
	ldr	r0, =0x37e0000
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x85f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_940
	mov	r1, #1
	mov	r3, #0
	ldr	r0, =0x37e0000
	neg	r1, r1
	ldr	r2, =0x2ba0000
	bl	__Func_80933f8
	mov	r1, #0xdb
	mov	r0, #0x13
	lsl	r1, #18
	ldr	r2, =0x27a0000
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x37e0000
	ldr	r2, =0x31e0000
	bl	__MapActor_SetPos
.Lm909_940:
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x28
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	ldr	r0, =0x85f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_974
	b	.Lm909_e2c
.Lm909_974:
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r2, =0x31e0000
	mov	r0, #0x13
	ldr	r1, =0x37e0000
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
	mov	r2, #0xae
	ldr	r1, =0x37e
	lsl	r2, #2
	mov	r0, #0x13
	bl	__MapActor_TravelToAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #1
	mov	r2, #0xa6
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #18
	ldr	r0, =0x37e0000
	bl	__Func_80933f8
	mov	r0, #0x13
	bl	__MapActor_WaitMovement
	mov	r2, #0xae
	mov	r0, #0x13
	ldr	r1, =0x34a
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x9f
	mov	r0, #0x13
	ldr	r1, =0x34a
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xe0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xdb
	ldr	r2, =0x27a
	mov	r0, #0x13
	lsl	r1, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x1437
	bl	__MessageID
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x3c
	mov	r0, #0x12
	ldr	r1, =0x105
	bl	__MapActor_Emote
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x37e0000
	neg	r1, r1
	ldr	r2, =0x2ba0000
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0x37e0000
	ldr	r2, =0x31e0000
	bl	__MapActor_SetPos
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0x2d6
	ldr	r1, =0x37e
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r2, #0xa6
	ldr	r0, =0x37e0000
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	bl	__Func_80933f8
	mov	r2, #0xab
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_b26
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm909_b26:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_b3a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm909_b3a:
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_b58
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_b58
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lm909_b58:
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
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_bbc
	mov	r0, #3
	mov	r1, #0x20
	mov	r2, #0x10
	bl	__MapActor_TravelBy
.Lm909_bbc:
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
	mov	r0, #3
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
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r1, #0xe0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0x12
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__ShowActorMessage_NoWait
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm909_cb6
	b	.Lm909_f86
.Lm909_cb6:
	ldr	r0, =_MSG_1440
	bl	__MessageID
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0x13
	lsl	r1, #6
	b	.Lm909_d1c

	.pool_aligned

.Lm909_d1c:
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_d72
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm909_d72:
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_d92
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm909_d92:
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_dbc
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_dbc
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.Lm909_dbc:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_SetPos
	ldr	r0, =0x85f
	bl	__SetFlag
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xbc
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	.Lm909_177e

	.pool_aligned

.Lm909_e2c:
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xab
	lsl	r2, #2
	ldr	r1, =0x37e
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xa6
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	ldr	r0, =0x37e0000
	bl	__Func_80933f8
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_e82
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm909_e82:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_e96
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm909_e96:
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_eb4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_eb4
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lm909_eb4:
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
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_f18
	mov	r0, #3
	mov	r1, #0x20
	mov	r2, #0x10
	bl	__MapActor_TravelBy
.Lm909_f18:
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
	mov	r0, #3
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
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r1, =0x101
	mov	r2, #0x3c
	mov	r0, #0x12
	bl	__MapActor_Emote
	ldr	r0, =0x1442
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm909_f86
	b	.Lm909_cb6
.Lm909_f86:
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
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
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x3c
	ldr	r1, =0x105
	mov	r0, #0x12
	bl	__MapActor_Emote
	ldr	r0, =0x1443
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_101c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x14
	bl	__MapActor_SetPos
.Lm909_101c:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x14
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0xa7
	ldr	r1, =0x37e
	lsl	r2, #2
	mov	r0, #0x14
	bl	__MapActor_TravelToWait
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #2
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	ldr	r0, =0x4001
	bl	__ShowActorMessage_NoWait
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm909_1108
.Lm909_10de:
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r0, =0x1447
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x4001
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm909_10de
.Lm909_1108:
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	ldr	r0, =0x1448
	bl	__MessageID
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
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
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #0x12
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0x12
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	b	.Lm909_1244

	.pool_aligned

.Lm909_1244:
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0
	ldr	r0, =0x4001
	bl	__ShowActorMessage_NoWait
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	b	.Lm909_12b2

	.pool_aligned

.Lm909_12a4:
	ldr	r0, =0x144e
	bl	__MessageID
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
.Lm909_12b2:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm909_12a4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	ldr	r0, =0x144f
	bl	__MessageID
	mov	r2, #0x14
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
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
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #0x14
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0x12
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_1436
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x14
	bl	__MapActor_TravelTo
.Lm909_1436:
	mov	r0, #0x14
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x4002
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x4002
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #3
	ldr	r1, =0x107
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0
	ldr	r1, =0x107
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x107
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #2
	ldr	r1, =0x107
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r5, =gOvl_0200a5c0
	mov	r0, #0
	ldr	r1, =0x10013
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #1
	ldr	r1, =0x10013
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #2
	ldr	r1, =0x10013
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #3
	ldr	r1, =0x10013
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #0x13
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
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
	mov	r0, #0x13
	lsl	r1, #5
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x4013
	bl	__ActorMessage_Wait
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__MapActor_SetIdle
	mov	r0, #2
	bl	__MapActor_SetIdle
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #2
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_16da
	b	.Lm909_16cc

	.pool_aligned

.Lm909_16cc:
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm909_16da:
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_16fa
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm909_16fa:
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_1724
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm909_1724
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.Lm909_1724:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xbc
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x321
	bl	__SetFlag
.Lm909_177e:
	mov	r0, #0x1d
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20088c0

