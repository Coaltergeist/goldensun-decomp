	.include "macros.inc"

.thumb_func_start OvlFunc_911_20088ec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	bl	__CutsceneStart
	mov	r0, #3
	ldr	r5, =.Lm911_369c
	bl	__GetFlag
	str	r0, [r5]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xd0
	mov	r1, #1
	mov	r2, #0x80
	mov	r3, #0
	lsl	r0, #15
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r1, #0xb8
	mov	r2, #0xf7
	lsl	r1, #13
	lsl	r2, #16
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0x79
	mov	r2, #0xee
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm911_9a0
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm911_9a0:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm911_9b4
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm911_9b4:
	ldr	r1, =ActorCmd_ARRAY_911__0200abd4
	mov	r0, #1
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_911__0200ac08
	mov	r0, #2
	bl	__MapActor_SetBehavior
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm911_9f0
	mov	r0, #3
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm911_9e8
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lm911_9e8:
	ldr	r1, =gScript_911__0200ac3c
	mov	r0, #3
	bl	__MapActor_SetBehavior
.Lm911_9f0:
	mov	r0, #2
	bl	__MapActor_WaitScript
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r5, =.Lm911_369c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm911_a2e
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
.Lm911_a2e:
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_8092adc
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm911_a64
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.Lm911_a64:
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm911_a94
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
.Lm911_a94:
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_809259c
	ldr	r0, =0x1473
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r2, #0
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_Face
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x8f
	mov	r0, #2
	mov	r1, #0x48
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x97
	mov	r0, #2
	mov	r1, #0x48
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x9b
	lsl	r2, #1
	mov	r0, #2
	mov	r1, #0x58
	bl	__MapActor_TravelToAnimWait
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm911_b28
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
.Lm911_b28:
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm911_b44
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
.Lm911_b44:
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #9
	mov	r0, #2
	bl	OvlFunc_911_20088ac
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_911_20088d8
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #2
	bl	__MapActor_SetSpeed
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r7, #0xfe
	mov	r3, r7
	and	r3, r2
	mov	r2, #0x9b
	strb	r3, [r0]
	mov	r1, #0x50
	lsl	r2, #1
	mov	r0, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	mov	r1, #0x81
	strb	r3, [r0]
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm911_c08
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
.Lm911_c08:
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_TurnToFaceActor
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm911_c24
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.Lm911_c24:
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #2
	bl	__MapActor_SetSpeed
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r7
	and	r3, r2
	mov	r2, #0x8f
	strb	r3, [r0]
	mov	r1, #0x48
	lsl	r2, #1
	mov	r0, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	ldr	r1, =gScript_911__0200ac08
	mov	r0, #2
	bl	__MapActor_SetBehavior
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm911_ce4
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	b	.Lm911_cf4

	.pool_aligned

.Lm911_ce4:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm911_cf4:
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0
	bl	__MapActor_Face
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #1
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm911_d68
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	b	.Lm911_d80
.Lm911_d68:
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm911_d80:
	mov	r5, #0x80
	lsl	r5, #6
	mov	r0, #1
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0x28
	bl	OvlFunc_911_200a5c0
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r2, #0x80
	lsl	r2, #7
	mov	r8, r2
	mov	r0, #2
	mov	r1, r8
	mov	r2, #0x28
	bl	OvlFunc_911_200a5c0
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r6, #0xc0
	mov	r0, #0x3c
	bl	__CutsceneWait
	lsl	r6, #7
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x3c
	bl	OvlFunc_911_200a5c0
	mov	r1, r5
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r1, r5
	mov	r5, #0xa0
	lsl	r5, #8
	mov	r0, #1
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	ldr	r0, =0x147b
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r10, r3
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r10
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0x28
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x1e
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r1, #0xe0
	mov	r2, #0x1e
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r2, #0xa
	mov	r1, r10
	mov	r0, #2
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0xce
	bl	__PlaySound
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
	ldr	r2, =.Lm911_36a0
	mov	r3, #1
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_911_200a608
	bl	__StartTask
	mov	r0, #0x14
	bl	__WaitFrames
	ldr	r0, =0x405210
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	ldr	r5, =gScript_911__0200ac70
	mov	r0, #0
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #2
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_SetBehavior
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	ldr	r3, =.Lm911_369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm911_fb0
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	b	.Lm911_fc0

	.pool_aligned

.Lm911_fb0:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm911_fc0:
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r7, =.Lm911_369c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm911_1018
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #10
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, r5
	mov	r2, r5
	bl	__MapActor_SetSpeed
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	neg	r1, r1
	bl	__MapActor_TravelBy
	ldr	r1, =gScript_911__0200acfc
	mov	r0, #3
	bl	__MapActor_SetBehavior
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #3
	mov	r1, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
.Lm911_1018:
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #10
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, r5
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_SetSpeed
	ldr	r6, =gScript_911__0200acfc
	mov	r0, #0
	mov	r1, r6
	bl	__MapActor_SetBehavior
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x13
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	bl	__MapActor_GetActor
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, r5
	mov	r1, r5
	mov	r0, #1
	bl	__MapActor_SetSpeed
	mov	r1, r6
	mov	r0, #1
	bl	__MapActor_SetBehavior
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x13
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #2
	bl	__MapActor_GetActor
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r6
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x13
	mov	r0, #2
	bl	__MapActor_SetAnim
	ldr	r3, =.Lm911_36a0
	mov	r5, #0
	str	r5, [r3]
	mov	r0, #0xa0
	bl	__CutsceneWait
	ldr	r0, =OvlFunc_911_200a608
	bl	__StopTask
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	ldr	r3, =.Lm911_3690
	ldr	r2, =.Lm911_368c
	str	r5, [r3]
	mov	r3, #0x80
	ldr	r5, =.Lm911_3694
	lsl	r3, #16
	str	r3, [r2]
	mov	r1, #0xc8
	mov	r3, #1
	str	r3, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_911_200a7ac
	bl	__StartTask
	mov	r0, #0xb4
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #0x50
	bl	OvlFunc_911_200a5a8
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r3, #2
	str	r3, [r5]
	mov	r1, #2
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm911_1214
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	b	.Lm911_1224

	.pool_aligned

.Lm911_1214:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm911_1224:
	ldr	r7, =.Lm911_3694
	mov	r3, #3
	str	r3, [r7]
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	mov	r6, #0xfe
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #3
	mov	r1, #3
	bl	__Func_8092b08
	ldr	r3, =.Lm911_3698
	mov	r5, #0
	mov	r1, #0xc8
	str	r5, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_911_2008800
	bl	__StartTask
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r0, #0x13
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_8092b08
	mov	r1, #0xf0
	mov	r2, #0xf8
	lsl	r2, #16
	mov	r0, #0x13
	lsl	r1, #15
	bl	__MapActor_SetPos
	ldr	r5, =gScript_911__0200ad20
	mov	r0, #0x13
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_8092b08
	mov	r1, #0xc8
	mov	r2, #0x89
	mov	r0, #0x14
	lsl	r1, #15
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0x14
	mov	r1, r5
	bl	__MapActor_SetBehavior
	ldr	r3, =.Lm911_369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm911_1336
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_8092b08
	mov	r1, #0x94
	mov	r2, #0xfe
	mov	r0, #0x15
	lsl	r1, #15
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #0x15
	mov	r1, r5
	bl	__MapActor_SetBehavior
.Lm911_1336:
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_8092b08
	mov	r1, #0xbc
	mov	r2, #0xe1
	mov	r0, #0x16
	lsl	r1, #15
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	mov	r1, r5
	bl	__MapActor_SetBehavior
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm911_1378
	mov	r5, r7
.Lm911_136c:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.Lm911_136c
.Lm911_1378:
	mov	r0, #0x96
	lsl	r0, #1
	bl	__CutsceneWait
	ldr	r0, =OvlFunc_911_200a7ac
	bl	__StopTask
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	mov	r0, #0x13
	bl	__MapActor_SetIdle
	mov	r0, #0x14
	bl	__MapActor_SetIdle
	ldr	r7, =.Lm911_369c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm911_13c2
	mov	r0, #0x15
	bl	__MapActor_SetIdle
.Lm911_13c2:
	mov	r0, #0x16
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	ldr	r5, =gScript_911__0200ad7c
	mov	r0, #0x13
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	mov	r1, r5
	bl	__MapActor_SetBehavior
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm911_13ee
	mov	r0, #0x15
	mov	r1, r5
	bl	__MapActor_SetBehavior
.Lm911_13ee:
	mov	r1, r5
	mov	r0, #0x16
	bl	__MapActor_RunScript
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r1, #0xae
	mov	r2, #0x8b
	mov	r0, #0x11
	lsl	r1, #15
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xae
	mov	r2, #0x8b
	lsl	r1, #15
	mov	r0, #0x12
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm911_1450
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm911_1450:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm911_1490
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x1488
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
.Lm911_1490:
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r0, =0x1489
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_8092b08
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r2, #1
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r8, r2
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r2, #0
	mov	r0, #1
	mov	r1, #6
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r5, #0x80
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	lsl	r5, #6
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r6, #0xc0
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	lsl	r6, #7
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x28
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm911_166e
	b	.Lm911_15e8

	.pool_aligned

.Lm911_15e8:
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_8092b08
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	neg	r1, r1
	bl	__MapActor_TravelBy
	mov	r0, #3
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xe0
	mov	r2, #0x3c
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_911_200a5c0
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	b	.Lm911_167e
.Lm911_166e:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm911_167e:
	mov	r6, #0x80
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	lsl	r6, #7
	bl	__MapActor_Jump
	mov	r7, #0x80
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	lsl	r7, #6
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, r7
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_8092b08
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r2, #0
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r5, #0xc0
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_Jump
	lsl	r5, #7
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0x3c
	bl	OvlFunc_911_200a5c0
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ShowActorMessage_NoWait
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm911_1856
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lm911_1878
.Lm911_1856:
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
.Lm911_1878:
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	ldr	r3, =.Lm911_369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm911_18f4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	b	.Lm911_1904

	.pool_aligned

.Lm911_18f4:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm911_1904:
	mov	r1, #0x80
	mov	r6, #0xa0
	lsl	r6, #8
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r5, #0x80
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	lsl	r5, #7
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, r5
	bl	OvlFunc_911_200a5c0
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0xe0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x28
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #6
	mov	r0, #1
	bl	OvlFunc_911_200a5c0
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm911_1a68
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	b	.Lm911_1a8c

	.pool_aligned

.Lm911_1a68:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm911_1a8c:
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x15
	bl	__PlaySound
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	ldr	r2, =.Lm911_3690
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.Lm911_368c
	mov	r3, #0x80
	lsl	r3, #16
	ldr	r6, =.Lm911_3694
	str	r3, [r2]
	mov	r1, #0xc8
	mov	r3, #1
	str	r3, [r6]
	lsl	r1, #4
	ldr	r0, =OvlFunc_911_200a7ac
	bl	__StartTask
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r5, #0xc0
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	lsl	r5, #8
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r1, r5
	mov	r0, #2
	bl	OvlFunc_911_200a5c0
	ldr	r0, =0x149d
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	ldr	r7, =.Lm911_369c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm911_1b3a
	mov	r0, #3
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
.Lm911_1b3a:
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092b08
	mov	r3, #2
	str	r3, [r6]
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r1, #0xf0
	mov	r2, #0xf8
	lsl	r2, #16
	mov	r0, #0x13
	lsl	r1, #15
	bl	__MapActor_SetPos
	ldr	r5, =gScript_911__0200ad20
	mov	r0, #0x13
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, #0xc8
	mov	r2, #0x89
	mov	r0, #0x14
	lsl	r1, #15
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0x14
	mov	r1, r5
	bl	__MapActor_SetBehavior
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm911_1bee
	mov	r1, #0x94
	mov	r2, #0xfe
	mov	r0, #0x15
	lsl	r1, #15
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #0x15
	mov	r1, r5
	bl	__MapActor_SetBehavior
.Lm911_1bee:
	mov	r1, #0xbc
	mov	r2, #0xe1
	lsl	r2, #16
	mov	r0, #0x16
	lsl	r1, #15
	bl	__MapActor_SetPos
	mov	r1, r5
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r3, #3
	str	r3, [r6]
	mov	r5, r6
.Lm911_1c10:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.Lm911_1c10
	mov	r0, #0x11
	mov	r1, #0x50
	bl	OvlFunc_911_200a5a8
	mov	r0, #0x12
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
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
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	mov	r6, #0xc0
	lsl	r6, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #2
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x50
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x11
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x12
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	b	.Lm911_1e94

	.pool_aligned

.Lm911_1e94:
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #3
	mov	r1, r6
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x11
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0
	mov	r0, #0x11
	bl	__ActorMessage
	ldr	r0, =OvlFunc_911_200a7ac
	bl	__StopTask
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__WaitFrames
	mov	r0, #0x13
	bl	__MapActor_SetIdle
	mov	r0, #0x14
	bl	__MapActor_SetIdle
	mov	r0, #0x15
	ldr	r7, =.Lm911_369c
	bl	__MapActor_SetIdle
	mov	r0, #0x16
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	ldr	r5, =gScript_911__0200ad7c
	mov	r0, #0x13
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	mov	r1, r5
	bl	__MapActor_SetBehavior
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm911_2014
	mov	r0, #0x15
	mov	r1, r5
	bl	__MapActor_SetBehavior
.Lm911_2014:
	mov	r1, r5
	mov	r0, #0x16
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092b08
	mov	r0, #1
	mov	r1, #2
	bl	__Func_8092b08
	mov	r0, #2
	mov	r1, #2
	bl	__Func_8092b08
	mov	r1, #2
	mov	r0, #3
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r5, #0xe0
	mov	r0, #2
	mov	r1, #2
	lsl	r5, #8
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, r5
	bl	OvlFunc_911_200a5c0
	mov	r1, #0
	mov	r0, #2
	bl	__ShowActorMessage_NoWait
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm911_21bc
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm911_2152
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r5
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #1
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	b	.Lm911_21aa
.Lm911_2152:
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_911_200a5c0
	ldr	r0, =0x14b4
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
.Lm911_21aa:
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	b	.Lm911_236e
.Lm911_21bc:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x14b6
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #0
	mov	r0, #2
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm911_222a
	b	.Lm911_239c
.Lm911_222a:
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =0x103
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm911_2274
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #3
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	b	.Lm911_2284
.Lm911_2274:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm911_2284:
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	ldr	r3, =.Lm911_369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm911_22ec
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	b	.Lm911_22fc
.Lm911_22ec:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm911_22fc:
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r3, =.Lm911_369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm911_232a
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x28
	bl	OvlFunc_911_200a5c0
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
.Lm911_232a:
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
.Lm911_236e:
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	b	.Lm911_24a0

	.pool_aligned

.Lm911_239c:
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	ldr	r0, =0x14bf
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm911_23e4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #3
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	b	.Lm911_23f4
.Lm911_23e4:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm911_23f4:
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	ldr	r3, =.Lm911_369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm911_245c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	b	.Lm911_246c
.Lm911_245c:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm911_246c:
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
.Lm911_24a0:
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm911_24e4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm911_24e4:
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
	beq	.Lm911_2514
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm911_2514:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =.Lm911_369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm911_2570
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm911_2560
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.Lm911_2560:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm911_2570:
	ldr	r0, =0x843
	bl	__SetFlag
	bl	__PlayMapMusic
	bl	__CutsceneEnd
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_20088ec

