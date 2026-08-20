	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200a7d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	ldr	r5, =0x1008
	mov	r1, #3
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1ddb
	bl	__MessageID
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, r5
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm945_28d8
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	ldr	r0, =0x9009
	bl	OvlFunc_945_200c86c
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.Lm945_2904

	.pool_aligned

.Lm945_28d8:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	ldr	r0, =0x9009
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x9008
	bl	OvlFunc_945_200c86c
.Lm945_2904:
	mov	r2, #0x28
	mov	r0, #0xd
	ldr	r1, =0x105
	bl	__MapActor_Emote
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0x9f
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r6, #0xb0
	mov	r1, #0xec
	ldr	r2, =0x296
	lsl	r6, #8
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, r6
	mov	r0, #0xd
	bl	OvlFunc_945_200c880
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r10, r3
	mov	r0, #8
	mov	r1, r10
	bl	OvlFunc_945_200c880
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80925cc
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r0, #0xc
	mov	r1, r8
	bl	OvlFunc_945_200c880
	ldr	r0, =0x100c
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #0xb
	mov	r1, r6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r5, #0xd0
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #0xb
	bl	__MapActor_Emote
	lsl	r5, #8
	mov	r0, #0xb
	bl	OvlFunc_945_200c86c
	ldr	r7, =0x900c
	mov	r0, #0xc
	mov	r1, r5
	bl	OvlFunc_945_200c880
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r0, #0xd
	mov	r1, r6
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #9
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, r5
	bl	OvlFunc_945_200c880
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #0xb
	bl	OvlFunc_945_200c880
	mov	r0, #0xb
	bl	OvlFunc_945_200c86c
	mov	r1, #0
	mov	r0, #0xc
	bl	OvlFunc_945_200c880
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xf3
	mov	r2, #0x98
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_2ae6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm945_2ae6:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xf3
	mov	r2, #0x9c
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_2b22
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm945_2b22:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xf3
	mov	r2, #0xa0
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_2b5e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lm945_2b5e:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xf3
	mov	r2, #0xa4
	mov	r0, #3
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x84
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	ldr	r0, =0x1009
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, r10
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm945_2c44
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0x28
	ldr	r0, =0x9009
	mov	r1, #0
	bl	__ActorMessage_Wait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lm945_2c66

	.pool_aligned

.Lm945_2c44:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
.Lm945_2c66:
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r8, r3
	mov	r1, r8
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r6, #0xb0
	mov	r0, #8
	lsl	r6, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, r6
	bl	OvlFunc_945_200c880
	mov	r2, #0x14
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r5, =0x4008
	mov	r1, #0xec
	mov	r2, #0x9e
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #0xd
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0x28
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #0xb
	bl	OvlFunc_945_200c880
	ldr	r0, =0x100b
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r0, #0xa
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xe7
	ldr	r2, =0x2a2
	mov	r0, #0xa
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	mov	r1, r6
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_809259c
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r1, #4
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #9
	bl	__Func_809259c
	ldr	r0, =0x1009
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #0
	bl	OvlFunc_945_200c880
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, r6
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x100c
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r2, #0x28
	mov	r0, #8
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r1, #0
	ldr	r0, =0x1008
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm945_2e40
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x1008
	bl	OvlFunc_945_200c86c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lm945_2e56
.Lm945_2e40:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	ldr	r0, =0x1008
	bl	OvlFunc_945_200c86c
.Lm945_2e56:
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	ldr	r0, =0x1008
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #8
	bl	OvlFunc_945_200c880
	ldr	r0, =0x4008
	bl	OvlFunc_945_200c86c
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r5, =gScript_883__0200e6e4
	mov	r0, #0xa
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #4
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	mov	r0, #4
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_2f08
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.Lm945_2f08:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_2f38
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm945_2f38:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_2f68
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm945_2f68:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r1, r5
	mov	r0, #0xd
	bl	__MapActor_SetBehavior
	mov	r1, #0xe4
	mov	r2, #0xa2
	lsl	r2, #2
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r0, #0xe8
	bl	__Func_8078a08
	ldr	r0, =0x925
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200a7d8

