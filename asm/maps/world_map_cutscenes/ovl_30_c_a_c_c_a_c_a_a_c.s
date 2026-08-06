	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_20097fc
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r0, #8
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__MapTransitionIn
	mov	r0, #8
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	ldr	r1, =0x14a8
	ldr	r2, =0x918
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x927
	bl	__SetFlag
	mov	r0, #0x66
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20097fc

.thumb_func_start OvlFunc_881_2009888
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0xc8
	lsl	r2, #16
	ldr	r1, =0x1f080000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__MapTransitionIn
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	add	r5, #0x64
	mov	r3, #0
	strh	r3, [r5]
	ldr	r1, =gScript_881__0200d158
	mov	r0, #8
	bl	__MapActor_SetBehavior
.Lm881_18f6:
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.Lm881_18f6
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x927
	bl	__SetFlag
	mov	r0, #0x67
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009888

.thumb_func_start OvlFunc_881_2009938
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0xc8
	lsl	r2, #16
	ldr	r1, =0x1f080000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__MapTransitionIn
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	add	r5, #0x64
	mov	r3, #0
	strh	r3, [r5]
	ldr	r1, =gScript_881__0200d158
	mov	r0, #8
	bl	__MapActor_SetBehavior
.Lm881_19a6:
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.Lm881_19a6
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x927
	bl	__SetFlag
	mov	r0, #0x68
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009938

.thumb_func_start OvlFunc_881_20099e8
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0xc8
	lsl	r2, #16
	ldr	r1, =0x1f080000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__MapTransitionIn
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	add	r5, #0x64
	mov	r3, #0
	strh	r3, [r5]
	ldr	r1, =gScript_881__0200d158
	mov	r0, #8
	bl	__MapActor_SetBehavior
.Lm881_1a56:
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.Lm881_1a56
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x927
	bl	__SetFlag
	mov	r0, #0x69
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20099e8

.thumb_func_start OvlFunc_881_2009a98
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0xc8
	lsl	r2, #16
	ldr	r1, =0x1f080000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__MapTransitionIn
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	add	r5, #0x64
	mov	r3, #0
	strh	r3, [r5]
	bl	OvlFunc_881_200b41c
	cmp	r0, #0xb
	bne	.Lm881_1b10
	ldr	r1, =gScript_881__0200d1b8
	mov	r0, #8
	bl	__MapActor_SetBehavior
	b	.Lm881_1b18
.Lm881_1b10:
	ldr	r1, =gScript_881__0200d158
	mov	r0, #8
	bl	__MapActor_SetBehavior
.Lm881_1b18:
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.Lm881_1b18
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x927
	bl	__SetFlag
	mov	r0, #0x6a
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009a98

.thumb_func_start OvlFunc_881_2009b5c
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r2, =0x9180000
	ldr	r1, =0x13e80000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__MapTransitionIn
	mov	r0, #8
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	ldr	r1, =0x13c8
	ldr	r2, =0x918
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x93e
	bl	__SetFlag
	ldr	r0, =0x927
	bl	__ClearFlag
	mov	r0, #0x6b
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009b5c

.thumb_func_start OvlFunc_881_2009c08
	push	{lr}
	bl	__Func_808c4c0
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #6
	bl	__Func_80936a0
	bl	__Func_8093710
	bl	__Func_808c44c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0xc66
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x6f
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0
	bl	__Func_802899c
	ldr	r0, =0x16f
	bl	__ClearFlag
	ldr	r0, =0x171
	bl	__ClearFlag
	bl	__Func_80aa56c
	mov	r2, #0x1e
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_Jump
	ldr	r0, =0xc67
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	ldr	r0, =0x16f
	bl	__ClearFlag
	ldr	r0, =0x171
	bl	__SetFlag
	bl	__Func_80aa56c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #6
	bl	__StartMapBattle
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009c08

.thumb_func_start OvlFunc_881_2009ca4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, =0xea300000
	ldr	r3, [r0, #8]
	add	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	ldr	r2, =0x15d00000
	asr	r3, #1
	mov	r11, r2
	add	r3, r11
	mov	r9, r3
	ldr	r1, =0xfad00000
	ldr	r3, [r0, #0x10]
	add	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	mov	r7, #0xa6
	asr	r3, #1
	lsl	r7, #19
	mov	r0, #0xb7
	add	r3, r7
	lsl	r0, #1
	mov	r5, #0
	mov	r10, r3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm881_1cf8
	b	.Lm881_2080
.Lm881_1cf8:
	mov	r0, #1
	bl	__Func_807808c
	mov	r0, #0xb7
	lsl	r0, #1
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm881_1d1e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__MapActor_SetPos
.Lm881_1d1e:
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__GiveDjinni
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_807a458
	bl	__Func_808c44c
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, r6
	mov	r3, #1
	add	r2, #0x66
	strh	r3, [r2]
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_Face
	mov	r0, #0x10
	bl	__WaitFrames
	ldr	r0, =0xc4f
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_808c4c0
	ldr	r0, =0x13333
	mov	r1, #6
	bl	__Func_80936a0
	bl	__Func_8093710
	bl	__Func_808c44c
	mov	r2, #0x55
	add	r2, r6
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x48]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x30]
	str	r3, [r6, #0x34]
	str	r5, [r6, #0x28]
	str	r5, [r6, #0x14]
	mov	r3, r7
	mov	r8, r2
	mov	r0, r6
	mov	r1, r11
	mov	r2, #0
	bl	__Actor_TravelTo
	mov	r7, #0x80
	lsl	r7, #4
	mov	r5, #0xf
.Lm881_1db8:
	ldr	r3, [r6, #0x18]
	add	r3, r7
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r7
	str	r3, [r6, #0x1c]
	mov	r0, #1
	sub	r5, #1
	bl	__WaitFrames
	cmp	r5, #0
	bge	.Lm881_1db8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #0x10
	bl	__WaitFrames
	mov	r3, #0
	str	r3, [r6, #0x6c]
	mov	r0, r6
	mov	r1, #0
	bl	__Actor_SetColorswap
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x48]
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x83
	bl	__PlaySound
	mov	r0, #0x8c
	mov	r1, #0
	bl	__Func_8096fb0
	ldr	r7, =iwram_3001e40
	mov	r5, #0x3b
.Lm881_1e16:
	ldr	r3, [r7]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lm881_1e48
	mov	r0, r6
	mov	r1, #7
	bl	__Actor_SetColorswap
	b	.Lm881_1e50

	.pool_aligned

.Lm881_1e48:
	mov	r0, r6
	mov	r1, #0
	bl	__Actor_SetColorswap
.Lm881_1e50:
	ldr	r3, [r7]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.Lm881_1e60
	mov	r0, r6
	bl	OvlFunc_881_200c058
.Lm881_1e60:
	mov	r0, #1
	sub	r5, #1
	bl	__WaitFrames
	cmp	r5, #0
	bge	.Lm881_1e16
	bl	__Func_8097194
	mov	r0, r6
	mov	r1, #0
	bl	__Actor_SetColorswap
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r3, r9
	asr	r1, r3, #16
	mov	r3, r10
	asr	r2, r3, #16
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0x96
	lsl	r0, #1
	mov	r1, #4
	bl	__Func_8019908
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r5, #0
	mov	r1, r8
	mov	r2, #0x80
	strb	r5, [r1]
	mov	r0, r6
	mov	r1, r9
	lsl	r2, #13
	mov	r3, r10
	bl	__Actor_TravelTo
	ldr	r7, .Lm881_1f6c	@ 0x1000
	mov	r5, #0xf
.Lm881_1f38:
	ldrh	r3, [r6, #6]
	add	r3, r7
	strh	r3, [r6, #6]
	mov	r0, #1
	sub	r5, #1
	bl	__WaitFrames
	cmp	r5, #0
	bge	.Lm881_1f38
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r2, #0
	mov	r3, #2
	mov	r1, r8
	strb	r3, [r1]
	ldr	r7, .Lm881_1f6c	@ 0x1000
	str	r2, [r6, #0x28]
	str	r2, [r6, #0x14]
	b	.Lm881_1f74

	.align	2, 0
.Lm881_1f6c:
	.word	0x1000
	.pool

.Lm881_1f74:
	mov	r5, #7
.Lm881_1f76:
	ldrh	r3, [r6, #6]
	add	r3, r7
	strh	r3, [r6, #6]
	mov	r0, #1
	sub	r5, #1
	bl	__WaitFrames
	cmp	r5, #0
	bge	.Lm881_1f76
	mov	r0, #0
	mov	r1, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_Face
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x1e
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	mov	r5, #0
.Lm881_1fd2:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm881_201a
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	cmp	r5, #6
	bne	.Lm881_2006
	ldr	r0, =0xc62
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm881_2044
.Lm881_2006:
	ldr	r0, =0xc5c
	add	r0, r5, r0
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	add	r5, #1
	b	.Lm881_1fd2
.Lm881_201a:
	mov	r0, #0
	mov	r1, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r1, #4
	mov	r0, #8
	mov	r2, #0x14
	bl	__MapActor_Jump
	ldr	r0, =0xc63
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.Lm881_2044:
	mov	r0, #0x96
	mov	r1, #4
	lsl	r0, #1
	bl	__Func_8019908
	mov	r0, #0x51
	bl	__PlaySound
	ldr	r5, =0xc64
	mov	r1, #3
	mov	r0, r5
	add	r5, #1
	bl	__Func_801776c
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #9
	bl	__PlaySound
	b	.Lm881_21a6
.Lm881_2080:
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm881_2098
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__MapActor_SetPos
.Lm881_2098:
	mov	r3, #0xa0
	lsl	r3, #12
	mov	r1, r9
	mov	r2, #0
	str	r3, [r6, #0x28]
	mov	r0, r6
	mov	r3, r10
	bl	__Actor_TravelTo
	mov	r0, #0x1e
	bl	__CutsceneWait
	bl	__Func_808c44c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r0, #0
	mov	r1, #8
	bl	__MapActor_Face
	mov	r1, #0x16
	mov	r0, #0
	bl	__MapActor_SetAnim
	ldr	r0, =0xc68
	bl	__MessageID
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x6f
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0
	bl	__Func_802899c
	ldr	r0, =0x16f
	bl	__SetFlag
	ldr	r0, =0x171
	bl	__ClearFlag
	bl	__Func_80aa56c
	ldr	r0, =0xc6a
	bl	__MessageID
	mov	r3, r7
	mov	r2, #0
	mov	r1, r11
	mov	r0, r6
	bl	__Actor_TravelTo
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_Face
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm881_21b0
	mov	r0, #0
	mov	r1, #0x16
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0xc6d
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	beq	.Lm881_21b0
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r3, r10
	mov	r2, r9
	asr	r1, r2, #16
	mov	r0, #8
	asr	r2, r3, #16
	bl	__MapActor_TravelToAnimWait
.Lm881_21a6:
	bl	OvlFunc_881_2009c08
	bl	__Func_808c4c0
	b	.Lm881_223c
.Lm881_21b0:
	mov	r1, #0x16
	mov	r0, #0
	bl	__MapActor_SetAnim
	ldr	r0, =0xc6f
	bl	__MessageID
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	ldr	r0, =0x16f
	bl	__SetFlag
	ldr	r0, =0x171
	bl	__SetFlag
	bl	__Func_80aa56c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_808c4c0
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_80955b0
	mov	r0, #0x2a
	bl	__PlaySound
	bl	__CutsceneEnd
	mov	r0, #0xb7
	lsl	r0, #1
	bl	__ClearFlag
	ldr	r0, =0x16f
	bl	__ClearFlag
	ldr	r0, =0x171
	bl	__ClearFlag
.Lm881_223c:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009ca4

.thumb_func_start OvlFunc_881_200a274
	push	{r5, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r5, #6]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =0x15680000
	ldr	r2, =0x8380000
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x8d
	bl	__PlaySound
	ldr	r2, =0x6666
	mov	r0, #0xa
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #2
	bl	__MapActor_SetAnim
	ldr	r2, =0x858
	mov	r0, #0xa
	ldr	r1, =0x156d
	bl	__MapActor_TravelToWait
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x15b80000
	neg	r1, r1
	ldr	r2, =0x8580000
	bl	__Func_80933f8
	mov	r0, #0xa
	ldr	r1, =0x159e
	ldr	r2, =0x858
	bl	__MapActor_TravelToWait
	mov	r0, #0xa
	ldr	r1, =0x15a8
	ldr	r2, =0x86e
	bl	__MapActor_TravelToWait
	ldr	r2, =0x878
	mov	r0, #0xa
	ldr	r1, =0x15e8
	bl	__MapActor_TravelToWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =0x15d80000
	ldr	r2, =0x8780000
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x15c8
	ldr	r2, =0x878
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x28
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0xa
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	ldr	r1, =0x15f8
	ldr	r2, =0x878
	bl	__MapActor_TravelToWait
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x15f8
	ldr	r2, =0x838
	bl	__MapActor_TravelToWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x15bd
	ldr	r2, =0x838
	bl	__MapActor_TravelToWait
	mov	r0, #0xa
	ldr	r1, =0x15b8
	ldr	r2, =0x853
	bl	__MapActor_TravelToWait
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x1572
	ldr	r2, =0x858
	bl	__MapActor_TravelToWait
	mov	r0, #0xa
	ldr	r1, =0x1568
	ldr	r2, =0x838
	bl	__MapActor_TravelToWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__MapActor_SetPos
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x15d80000
	neg	r1, r1
	ldr	r2, =0x8580000
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r1, =0x15d8
	ldr	r2, =0x858
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a274

.thumb_func_start OvlFunc_881_200a4a8
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	bl	__CutsceneStart
	ldr	r6, =.Lm881_679c
	mov	r3, #0x37
	str	r3, [r6]
	mov	r0, #0x37
	bl	OvlFunc_881_200a768
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_808c44c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, r0
	cmp	r3, #0
	beq	.Lm881_24e0
	ldr	r0, [r6]
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #0x10]
	bl	__MapActor_SetPos
.Lm881_24e0:
	ldr	r0, [r6]
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r0, [r6]
	ldr	r1, =0x1768
	ldr	r2, =0xd78
	bl	__MapActor_TravelToAnimWait
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x3c
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__MapActor_Emote
	ldr	r0, [r6]
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x263c
	bl	__MessageID
	ldr	r0, [r6]
	mov	r3, #0x80
	lsl	r3, #5
	orr	r0, r3
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	bl	__Func_808c4c0
	ldr	r0, =0x16666
	mov	r1, #0xa
	bl	__Func_80936a0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #12
	lsl	r1, #9
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r2, =0xd680000
	neg	r1, r1
	ldr	r0, =0x17880000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	__Func_808c44c
	mov	r1, #0x81
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	mov	r5, #0xc0
	ldr	r0, [r6]
	lsl	r5, #6
	orr	r0, r5
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	ldr	r0, [r6]
	ldr	r1, =0x1768
	ldr	r2, =0xd48
	bl	__MapActor_TravelToAnimWait
	ldr	r0, [r6]
	ldr	r1, =0x1794
	ldr	r2, =0xd48
	bl	__MapActor_TravelToAnimWait
	ldr	r0, [r6]
	mov	r1, r5
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r2, =0x6666
	mov	r0, #0
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_881__0200cf20
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	b	.Lm881_25de
.Lm881_25d8:
	mov	r0, #1
	bl	__WaitFrames
.Lm881_25de:
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lm881_25d8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r6, =.Lm881_679c
	mov	r1, #0x83
	ldr	r0, [r6]
	mov	r2, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	ldr	r0, [r6]
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	ldr	r0, [r6]
	mov	r2, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, [r6]
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_8092adc
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	ldr	r1, =0x178c
	ldr	r2, =0xd48
	ldr	r0, [r6]
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	mov	r2, #1
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r8, r2
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	ldr	r1, =0x1794
	ldr	r2, =0xd48
	ldr	r0, [r6]
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r2, r3
	strb	r2, [r0]
	mov	r1, #3
	mov	r0, #0xf2
	mov	r8, r2
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xf2
	bl	__Func_8091a58
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x2642
	bl	__MessageID
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r2, #0
	ldr	r0, [r6]
	lsl	r1, #6
	bl	__Func_8092adc
	bl	__Func_808c4c0
	mov	r0, #0x80
	mov	r1, #0xa
	lsl	r0, #9
	bl	__Func_80936a0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x9bf
	bl	__SetFlag
	ldr	r1, =gState
	mov	r0, #0xe2
	ldr	r2, =2
	lsl	r0, #1
	add	r3, r1, r0
	strh	r2, [r3]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x4e
	strh	r3, [r2]
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a4a8

.thumb_func_start OvlFunc_881_200a768
	push	{r5, r6, r7, lr}
	ldr	r4, =gOvl_0200e3f4
	mov	r3, #1
	neg	r3, r3
	ldr	r6, =OvlFunc_881_200a858
	mov	r0, r4
	mov	r7, #2
	mov	r12, r4
	mov	r1, #4
	mov	r2, #0
	mov	r14, r3
.Lm881_277e:
	ldr	r3, [r2, r4]
	cmp	r3, #1
	bne	.Lm881_2792
	ldrsh	r3, [r0, r1]
	cmp	r3, #0x8a
	bne	.Lm881_2792
	add	r3, r1, #4
	str	r7, [r0, r2]
	str	r6, [r0, r3]
	mov	r0, r12
.Lm881_2792:
	ldr	r3, [r2, r4]
	cmp	r3, r14
	beq	.Lm881_279e
	add	r1, #0xc
	add	r2, #0xc
	b	.Lm881_277e
.Lm881_279e:
	ldr	r0, =.Lm881_5b84
	mov	r6, #0xc0
	mov	r2, r0
	ldr	r4, =0x17940000
	ldr	r5, =0xd480000
	lsl	r6, #6
	add	r2, #8
	mov	r1, #0
.Lm881_27ae:
	ldrsh	r3, [r1, r0]
	cmp	r3, #0x39
	bne	.Lm881_27c0
	str	r4, [r2]
	str	r5, [r2, #8]
	strh	r6, [r2, #0xc]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.Lm881_27c0:
	add	r2, #0x18
	add	r1, #0x18
	b	.Lm881_27ae
.func_end OvlFunc_881_200a768

.thumb_func_start OvlFunc_881_200a7dc
	push	{r5, r6, r7, lr}
	ldr	r0, =gOvl_0200e3f4
	mov	r3, #0x21
	mov	r4, #1
	mov	r7, r0
	mov	r6, #1
	add	r1, r0, #4
	mov	r2, #0
	mov	r12, r3
	neg	r4, r4
.Lm881_27f0:
	ldr	r3, [r2, r0]
	cmp	r3, #2
	bne	.Lm881_2806
	mov	r5, #0
	ldrsh	r3, [r1, r5]
	cmp	r3, #0x8a
	bne	.Lm881_2806
	mov	r3, r12
	str	r6, [r2, r7]
	str	r3, [r1, #4]
	b	.Lm881_2812
.Lm881_2806:
	ldr	r3, [r2, r0]
	cmp	r3, r4
	beq	.Lm881_2812
	add	r1, #0xc
	add	r2, #0xc
	b	.Lm881_27f0
.Lm881_2812:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a7dc

.thumb_func_start OvlFunc_881_200a81c
	push	{lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x37
	bl	__MapActor_Face
	ldr	r0, =0x2642
	bl	__MessageID
	ldr	r3, =.Lm881_679c
	mov	r1, #0
	ldr	r0, [r3]
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0x37
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a81c

