	.include "macros.inc"

.thumb_func_start KolimaForest1_MapInit
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	OvlFunc_913_20088c0
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm913_cbe
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x11
	mov	r3, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #0x14
	mov	r2, #0x11
	mov	r3, #1
	mov	r5, #0
	mov	r0, #2
	str	r5, [sp, #4]
	bl	OvlFunc_913_2008244
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm913_cbe:
	mov	r0, #8
	bl	OvlFunc_913_20088c0
	mov	r0, #9
	bl	OvlFunc_913_20088c0
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.Lm913_ce8
	ldr	r0, =0x843
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm913_ce8
	bl	OvlFunc_913_2008d3c
.Lm913_ce8:
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm913_d24
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm913_d24:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end KolimaForest1_MapInit

.thumb_func_start OvlFunc_913_2008d3c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
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
	mov	r0, #0xf6
	mov	r1, #1
	mov	r2, #0x97
	mov	r3, #0
	lsl	r2, #18
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #3
	ldr	r6, =.Lm913_3394
	bl	__GetFlag
	str	r0, [r6]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
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
	ldr	r5, =gScript_913__0200b024
	mov	r0, #0x11
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x12
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x13
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x15
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, #0xe8
	lsl	r1, #15
	ldr	r2, =0x25a0000
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0xfe
	ldr	r2, =0x251
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
	beq	.Lm913_e72
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm913_e72:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm913_e86
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm913_e86:
	ldr	r1, =gScript_911__0200ae20
	mov	r0, #1
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_913__0200ae54
	mov	r0, #2
	bl	__MapActor_SetBehavior
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.Lm913_ec2
	mov	r0, #3
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm913_eba
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lm913_eba:
	ldr	r1, =gScript_913__0200ae88
	mov	r0, #3
	bl	__MapActor_SetBehavior
.Lm913_ec2:
	mov	r5, #0x80
	lsl	r5, #6
	mov	r0, #2
	bl	__MapActor_WaitScript
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0x28
	bl	OvlFunc_913_200a780
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r2, #0x80
	lsl	r2, #7
	mov	r8, r2
	mov	r0, #2
	mov	r1, r8
	mov	r2, #0x28
	bl	OvlFunc_913_200a780
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
	bl	OvlFunc_913_200a780
	mov	r1, r5
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r1, r5
	mov	r5, #0xa0
	lsl	r5, #8
	mov	r0, #1
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
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
	bl	OvlFunc_913_200a780
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	ldr	r0, =0x1474
	bl	__MessageID
	mov	r1, #0xa
	mov	r0, #1
	bl	OvlFunc_913_200a768
	ldr	r0, =0x147c
	bl	__MessageID
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r10, r3
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r10
	bl	OvlFunc_913_200a780
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0x28
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x1e
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r1, #0xe0
	mov	r2, #0x1e
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_913_200a780
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
	bl	OvlFunc_913_200a780
	mov	r2, #0xa
	mov	r1, r10
	mov	r0, #2
	bl	OvlFunc_913_200a780
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
	ldr	r2, =.Lm913_3398
	mov	r3, #1
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_913_200a7c8
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
	ldr	r5, =gScript_913__0200aebc
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
	bl	OvlFunc_913_200a768
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
	ldr	r3, =.Lm913_3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm913_1120
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
	b	.Lm913_1130

	.pool_aligned

.Lm913_1120:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm913_1130:
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r7, =.Lm913_3394
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm913_1188
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
	ldr	r1, =gScript_913__0200af48
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
.Lm913_1188:
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
	ldr	r6, =gScript_913__0200af48
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
	ldr	r3, =.Lm913_3398
	mov	r5, #0
	str	r5, [r3]
	mov	r0, #0xa0
	bl	__CutsceneWait
	ldr	r0, =OvlFunc_913_200a7c8
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
	ldr	r3, =.Lm913_3388
	ldr	r2, =.Lm913_3384
	str	r5, [r3]
	mov	r3, #0x80
	ldr	r5, =.Lm913_338c
	lsl	r3, #16
	str	r3, [r2]
	mov	r1, #0xc8
	mov	r3, #1
	str	r3, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_913_200a974
	bl	__StartTask
	mov	r0, #0xb4
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #0x50
	bl	OvlFunc_913_200a768
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
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
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
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
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm913_1390
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	b	.Lm913_13a0

	.pool_aligned

.Lm913_1390:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm913_13a0:
	ldr	r7, =.Lm913_338c
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
	ldr	r3, =.Lm913_3390
	mov	r5, #0
	mov	r1, #0xc8
	str	r5, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_913_200aad8
	bl	__StartTask
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r0, #0xd
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_8092b08
	mov	r1, #0xfd
	ldr	r2, =0x25b0000
	mov	r0, #0xd
	lsl	r1, #16
	bl	__MapActor_SetPos
	ldr	r5, =gScript_913__0200af6c
	mov	r0, #0xd
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_8092b08
	mov	r1, #0xe9
	mov	r0, #0xe
	lsl	r1, #16
	ldr	r2, =0x2750000
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, r5
	bl	__MapActor_SetBehavior
	ldr	r3, =.Lm913_3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm913_14ac
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_8092b08
	mov	r1, #0xcf
	mov	r0, #0xf
	lsl	r1, #16
	ldr	r2, =0x2610000
	bl	__MapActor_SetPos
	mov	r0, #0xf
	mov	r1, r5
	bl	__MapActor_SetBehavior
.Lm913_14ac:
	mov	r0, #0x10
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_8092b08
	mov	r1, #0xe3
	mov	r2, #0x91
	mov	r0, #0x10
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x10
	mov	r1, r5
	bl	__MapActor_SetBehavior
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm913_14ee
	mov	r5, r7
.Lm913_14e2:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.Lm913_14e2
.Lm913_14ee:
	mov	r0, #0x96
	lsl	r0, #1
	bl	__CutsceneWait
	ldr	r0, =OvlFunc_913_200a974
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
	mov	r0, #0xd
	bl	__MapActor_SetIdle
	mov	r0, #0xe
	bl	__MapActor_SetIdle
	ldr	r7, =.Lm913_3394
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm913_1538
	mov	r0, #0xf
	bl	__MapActor_SetIdle
.Lm913_1538:
	mov	r0, #0x10
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	ldr	r5, =gScript_913__0200afc8
	mov	r0, #0xd
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xe
	mov	r1, r5
	bl	__MapActor_SetBehavior
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm913_1564
	mov	r0, #0xf
	mov	r1, r5
	bl	__MapActor_SetBehavior
.Lm913_1564:
	mov	r1, r5
	mov	r0, #0x10
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
	mov	r1, #0xdc
	mov	r2, #0xf7
	mov	r0, #0xb
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xdc
	mov	r2, #0xf7
	lsl	r1, #16
	mov	r0, #0xc
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm913_15c6
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm913_15c6:
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
	bl	OvlFunc_913_200a768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm913_1606
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x1488
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
.Lm913_1606:
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
	bl	OvlFunc_913_200a768
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
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #3
	mov	r2, #0
	mov	r0, #1
	neg	r1, r1
	bl	__MapActor_TravelBy
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r5, #0x80
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	lsl	r5, #6
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
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
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
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
	bl	OvlFunc_913_200a768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm913_17fe
	b	.Lm913_1778

	.pool_aligned

.Lm913_1778:
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
	bl	OvlFunc_913_200a780
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	b	.Lm913_180e
.Lm913_17fe:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm913_180e:
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
	bl	OvlFunc_913_200a780
	lsl	r7, #6
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, r7
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
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
	bl	OvlFunc_913_200a780
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
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
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
	bl	OvlFunc_913_200a768
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
	bne	.Lm913_19e6
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
	b	.Lm913_1a08
.Lm913_19e6:
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
.Lm913_1a08:
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_913_200a780
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	ldr	r3, =.Lm913_3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm913_1a84
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	b	.Lm913_1a94

	.pool_aligned

.Lm913_1a84:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm913_1a94:
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
	bl	OvlFunc_913_200a780
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
	bl	OvlFunc_913_200a780
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
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_913_200a780
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x28
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_913_200a780
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #6
	mov	r0, #1
	bl	OvlFunc_913_200a780
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
	bne	.Lm913_1c00
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	b	.Lm913_1c24

	.pool_aligned

.Lm913_1c00:
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
.Lm913_1c24:
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
	ldr	r2, =.Lm913_3388
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.Lm913_3384
	mov	r3, #0x80
	lsl	r3, #16
	ldr	r6, =.Lm913_338c
	str	r3, [r2]
	mov	r1, #0xc8
	mov	r3, #1
	str	r3, [r6]
	lsl	r1, #4
	ldr	r0, =OvlFunc_913_200a974
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
	bl	OvlFunc_913_200a780
	ldr	r0, =0x149d
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	ldr	r7, =.Lm913_3394
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm913_1cd2
	mov	r0, #3
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
.Lm913_1cd2:
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
	mov	r1, #0xfd
	ldr	r2, =0x25b0000
	mov	r0, #0xd
	lsl	r1, #16
	bl	__MapActor_SetPos
	ldr	r5, =gScript_913__0200af6c
	mov	r0, #0xd
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, #0xe9
	mov	r0, #0xe
	lsl	r1, #16
	ldr	r2, =0x2750000
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, r5
	bl	__MapActor_SetBehavior
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm913_1d80
	mov	r1, #0xcf
	mov	r0, #0xf
	lsl	r1, #16
	ldr	r2, =0x2610000
	bl	__MapActor_SetPos
	mov	r0, #0xf
	mov	r1, r5
	bl	__MapActor_SetBehavior
.Lm913_1d80:
	mov	r1, #0xe3
	mov	r2, #0x91
	lsl	r2, #18
	mov	r0, #0x10
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, r5
	mov	r0, #0x10
	bl	__MapActor_SetBehavior
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r3, #3
	str	r3, [r6]
	mov	r5, r6
.Lm913_1da2:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.Lm913_1da2
	mov	r0, #0xb
	mov	r1, #0x50
	bl	OvlFunc_913_200a768
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
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
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
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
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
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
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
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
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
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
	bl	OvlFunc_913_200a780
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
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
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
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
	bl	OvlFunc_913_200a780
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
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
	bl	OvlFunc_913_200a780
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
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
	bl	OvlFunc_913_200a780
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
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
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
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
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
	bl	OvlFunc_913_200a780
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	b	.Lm913_2038

	.pool_aligned

.Lm913_2038:
	mov	r0, #0
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
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
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
	bl	OvlFunc_913_200a780
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
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
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
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
	bl	OvlFunc_913_200a780
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
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
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	ldr	r0, =OvlFunc_913_200a974
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
	mov	r0, #0xd
	bl	__MapActor_SetIdle
	mov	r0, #0xe
	bl	__MapActor_SetIdle
	mov	r0, #0xf
	ldr	r7, =.Lm913_3394
	bl	__MapActor_SetIdle
	mov	r0, #0x10
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	ldr	r5, =gScript_913__0200afc8
	mov	r0, #0xd
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xe
	mov	r1, r5
	bl	__MapActor_SetBehavior
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm913_21c2
	mov	r0, #0xf
	mov	r1, r5
	bl	__MapActor_SetBehavior
.Lm913_21c2:
	mov	r1, r5
	mov	r0, #0x10
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
	bl	OvlFunc_913_200a780
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
	beq	.Lm913_226c
	b	.Lm913_2372
.Lm913_226c:
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
	bne	.Lm913_2302
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
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
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r5
	bl	OvlFunc_913_200a780
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #1
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	b	.Lm913_2360
.Lm913_2302:
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
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
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_913_200a780
	ldr	r0, =0x14b4
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
.Lm913_2360:
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	b	.Lm913_2528
.Lm913_2372:
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
	bl	OvlFunc_913_200a768
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_913_200a780
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
	beq	.Lm913_23e0
	b	.Lm913_2558
.Lm913_23e0:
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
	bl	OvlFunc_913_200a780
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm913_242a
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #3
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	b	.Lm913_243a
.Lm913_242a:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm913_243a:
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
	ldr	r3, =.Lm913_3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm913_24a6
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	b	.Lm913_24b6
.Lm913_24a6:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm913_24b6:
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r3, =.Lm913_3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm913_24e4
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x28
	bl	OvlFunc_913_200a780
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
.Lm913_24e4:
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
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
	bl	OvlFunc_913_200a768
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
.Lm913_2528:
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	b	.Lm913_2660

	.pool_aligned

.Lm913_2558:
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
	bl	OvlFunc_913_200a768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lm913_25a0
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #3
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	b	.Lm913_25b0
.Lm913_25a0:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm913_25b0:
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
	ldr	r3, =.Lm913_3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm913_261c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
	b	.Lm913_262c
.Lm913_261c:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm913_262c:
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
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
	bl	OvlFunc_913_200a768
.Lm913_2660:
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
	beq	.Lm913_26a4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm913_26a4:
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
	beq	.Lm913_26d4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm913_26d4:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =.Lm913_3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm913_271c
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm913_270c
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.Lm913_270c:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm913_271c:
	ldr	r0, =0x843
	bl	__SetFlag
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__PlayMapMusic
	bl	__CutsceneEnd
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_913_2008d3c

