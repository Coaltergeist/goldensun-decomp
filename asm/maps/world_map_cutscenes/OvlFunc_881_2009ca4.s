	.include "macros.inc"
	.include "gba.inc"

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

