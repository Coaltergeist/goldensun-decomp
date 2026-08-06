	.include "macros.inc"

.thumb_func_start OvlFunc_952_20083b0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	bl	__MapActor_GetActor
	mov	r8, r0
	bl	__CutsceneStart
	ldr	r3, =gScript_952__0200c570
	mov	r10, r3
	mov	r1, r10
	mov	r0, r5
	bl	__MapActor_SetBehavior
	ldr	r0, =0x2009
	bl	__MessageID
	mov	r1, #0
	mov	r0, r5
	bl	__ActorMessage
	mov	r6, #0x80
	mov	r0, r5
	bl	__MapActor_SetIdle
	lsl	r6, #9
	mov	r3, r8
	str	r6, [r3, #0x1c]
	str	r6, [r3, #0x18]
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, r5
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, r10
	bl	__MapActor_SetBehavior
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, r5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, r8
	str	r6, [r3, #0x1c]
	str	r6, [r3, #0x18]
	mov	r0, r5
	mov	r1, r10
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_20083b0

.thumb_func_start OvlFunc_952_200849c
	push	{r5, lr}
	mov	r5, r1
	bl	__CutsceneStart
	ldr	r0, =0x2052
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x968
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm952_512
	ldr	r0, =0x968
	bl	__SetFlag
	bl	__Func_8097608
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0x46
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, r5
	mov	r1, #0
	bl	__MapActor_Face
	mov	r1, #0
	mov	r0, r5
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, r5
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.Lm952_512:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_200849c

.thumb_func_start OvlFunc_952_2008524
	push	{r5, r6, lr}
	ldr	r5, =0x22a8
	mov	r6, r0
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_54c
	add	r0, r5, #1
	bl	__MessageID
	b	.Lm952_552
.Lm952_54c:
	add	r0, r5, #2
	bl	__MessageID
.Lm952_552:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_2008524

.thumb_func_start OvlFunc_952_2008564
	push	{r5, r6, lr}
	ldr	r5, =0x22ab
	mov	r6, r0
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_58c
	add	r0, r5, #1
	bl	__MessageID
	b	.Lm952_592
.Lm952_58c:
	add	r0, r5, #2
	bl	__MessageID
.Lm952_592:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_2008564

.thumb_func_start OvlFunc_952_20085a4
	push	{r5, lr}
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r5, =0x2352
	mov	r0, r5
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #0x1e
	bl	__MapActor_Face
	mov	r1, #0
	mov	r0, #0xe
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm952_602
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm952_664
.Lm952_602:
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #3
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0x10
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #0xcd
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xcd
	mov	r1, #0
	bl	__Func_8091a58
	ldr	r0, =0xf31
	bl	__SetFlag
.Lm952_664:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_20085a4

.thumb_func_start OvlFunc_952_2008674
	push	{r5, r6, lr}
	bl	__CutsceneStart
	ldr	r0, =_MSG_2280
	bl	__MessageID
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x54
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x54
	strb	r5, [r0]
	mov	r0, #1
	bl	__WaitFrames
	mov	r5, #0x80
	ldr	r3, .Lm952_6dc	@ 0x1140
	lsl	r5, #19
	mov	r0, #1
	mov	r1, #0
	strh	r3, [r5]
	neg	r0, r0
	bl	__ActorMessage
	ldr	r3, .Lm952_6e0	@ 0x140
	mov	r0, #0
	strh	r3, [r5]
	bl	__MapActor_GetActor
	mov	r5, #1
	add	r0, #0x54
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x54
	strb	r5, [r0]
	mov	r1, #0x1f
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	b	.Lm952_6e8

	.align	2, 0
.Lm952_6dc:
	.word	0x1140
.Lm952_6e0:
	.word	0x140
	.pool

.Lm952_6e8:
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xf0
	mov	r2, #0xd0
	mov	r0, #1
	lsl	r1, #15
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0xd0
	mov	r2, #0xa0
	mov	r0, #3
	lsl	r1, #15
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0xf0
	mov	r2, #0xf0
	mov	r0, #2
	lsl	r1, #15
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r6, =iwram_3001ebc
	mov	r5, #0xe4
	ldr	r2, [r6]
	mov	r3, #0x3c
	lsl	r5, #1
	str	r3, [r2, r5]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r2, [r6]
	mov	r3, #0x18
	str	r3, [r2, r5]
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #3
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r5, =0xfffd0000
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x40]
	add	r3, r5
	str	r3, [r0, #0x40]
	mov	r1, #0x20
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x22
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x21
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r1, =0x105
	mov	r2, #0x3c
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0x83
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x2d
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm952_93e
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x22
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x21
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lm952_976
.Lm952_93e:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x21
	mov	r0, #0
	bl	__MapActor_DoAnim
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
.Lm952_976:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x23
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0
	ldr	r1, =0x1e666
	ldr	r2, =0xf333
	bl	__MapActor_SetSpeed
	mov	r1, #0x20
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0
	bl	__Func_8092304
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm952_a5a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm952_a5a:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm952_a8a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.Lm952_a8a:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm952_aba
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm952_aba:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_2008674

.thumb_func_start OvlFunc_952_2008af8
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	lsl	r3, #16
	asr	r5, r3, #16
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x1ffb
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm952_b36
	b	.Lm952_fde
.Lm952_b36:
	ldr	r0, =0x96a
	bl	__GetFlag
	b	.Lm952_b4c

	.pool_aligned

.Lm952_b4c:
	cmp	r0, #0
	beq	.Lm952_b5e
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	bl	__InnHeal
	b	.Lm952_fe2
.Lm952_b5e:
	mov	r0, #0x14
	bl	__CutsceneWait
	lsl	r3, r5, #16
	lsr	r5, r3, #16
	cmp	r5, #0
	bne	.Lm952_b76
	mov	r0, #0
	mov	r1, #0x80
	mov	r2, #0x78
	bl	__MapActor_TravelToAnimWait
.Lm952_b76:
	mov	r6, #0x80
	lsl	r6, #8
	cmp	r5, r6
	bne	.Lm952_b88
	mov	r0, #0
	mov	r1, #0xf0
	mov	r2, #0x78
	bl	__MapActor_TravelToAnimWait
.Lm952_b88:
	mov	r0, #0
	mov	r1, #0xb8
	mov	r2, #0x78
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, r6
	mov	r2, #0
	mov	r1, #0x10
	mov	r0, #1
	bl	__Func_809233c
	mov	r0, #1
	bl	__MapActor_WaitScript
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #9
	mov	r2, r6
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #0x28
	mov	r2, #0
	bl	__Func_8092304
	mov	r2, #0x20
	mov	r0, #1
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x10
	mov	r3, #0
	mov	r2, #0
	neg	r1, r1
	mov	r0, #2
	bl	__Func_809233c
	mov	r0, #2
	bl	__MapActor_WaitScript
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #9
	mov	r2, r6
	bl	__MapActor_SetSpeed
	mov	r1, #0x28
	mov	r0, #2
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092304
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, r6
	mov	r2, #0
	mov	r1, #0x10
	mov	r0, #3
	bl	__Func_809233c
	mov	r0, #3
	bl	__MapActor_WaitScript
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #9
	mov	r2, r6
	bl	__MapActor_SetSpeed
	mov	r0, #3
	mov	r1, #0x28
	mov	r2, #0
	bl	__Func_8092304
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092304
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_80933f8
	mov	r1, #0x38
	mov	r0, #0
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r2, #0x20
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x96a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm952_d6e
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm952_d7e
.Lm952_d6e:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm952_d7e:
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x96a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm952_da0
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm952_db0
.Lm952_da0:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm952_db0:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0
	bl	__InnHeal
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x96a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm952_e56
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm952_e66
.Lm952_e56:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm952_e66:
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x96a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm952_e88
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm952_e98
.Lm952_e88:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm952_e98:
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x20
	bl	__Func_8092304
	mov	r1, #0x70
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__Func_80922c4
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r1, #0x70
	neg	r1, r1
	mov	r2, #0
	mov	r0, #3
	bl	__Func_80922c4
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r2, #0x18
	mov	r1, #0
	neg	r2, r2
	mov	r0, #2
	bl	__Func_8092304
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #1
	bl	__Func_8092304
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
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
	beq	.Lm952_f68
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm952_f68:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm952_f98
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.Lm952_f98:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm952_fc8
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm952_fc8:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x96a
	bl	__SetFlag
.Lm952_fde:
	bl	__CutsceneEnd
.Lm952_fe2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_2008af8

.thumb_func_start OvlFunc_952_2008ff8
	push	{lr}
	ldr	r0, =0x96b
	bl	__SetFlag
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x2021
	bl	__MessageID
	mov	r1, #0x82
	mov	r2, #0xd4
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	mov	r1, #0x28
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0x92
	mov	r2, #0xb4
	lsl	r2, #1
	mov	r0, #0x14
	lsl	r1, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x14
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x15
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x84
	mov	r2, #0xb0
	mov	r0, #0x15
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r1, #0x84
	mov	r2, #0xb8
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0x16
	bl	__MapActor_TravelToAnimWait
	mov	r0, #3
	bl	__WaitFrames
	mov	r1, #1
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x10
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0x14
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r1, #4
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x15
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0x15
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0x50
	mov	r0, #0x14
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0x16
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x15
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0x16
	mov	r2, #0x3c
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x15
	mov	r1, #0x14
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #0x14
	mov	r0, #0x16
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x15
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x16
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	b	.Lm952_1408

	.pool_aligned

.Lm952_1408:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0x16
	mov	r2, #0x3c
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x15
	mov	r1, #0x14
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0x14
	mov	r2, #0
	mov	r0, #0x16
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x15
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0x16
	mov	r2, #0x3c
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x15
	mov	r1, #0x14
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #0x14
	mov	r0, #0x16
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x3c
	mov	r0, #0x15
	mov	r1, #0x16
	bl	__MapActor_TurnToFaceActor
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x15
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__MapActor_SetSpeed
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x78
	bl	__Func_80922c4
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x78
	bl	__Func_8092304
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x14
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0x10
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0x14
	bl	__Func_8092304
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	mov	r1, #0x78
	mov	r2, #0
	bl	__Func_8092304
	mov	r0, #0x14
	mov	r1, #0x3c
	mov	r2, #0
	bl	__Func_8092304
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_2008ff8

.thumb_func_start OvlFunc_952_20097e8
	push	{r5, r6, r7, lr}
	bl	__CutsceneStart
	ldr	r0, =0x228c
	bl	__MessageID
	mov	r1, #0x1f
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xd0
	mov	r2, #0xd0
	mov	r0, #1
	lsl	r1, #15
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0xb0
	mov	r2, #0xf0
	mov	r0, #3
	lsl	r1, #15
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0xf0
	mov	r2, #0xf0
	mov	r0, #2
	lsl	r1, #15
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r5, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r5]
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0xc
	str	r3, [r2]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #9
	bl	__Func_808fe38
	ldr	r7, [r5, #0x10]
	ldr	r3, =0x52a
	add	r2, r7, r3
	mov	r3, #0
	strh	r3, [r2]
	ldr	r3, =0x534
	add	r2, r7, r3
	ldr	r3, =0x1f1f
	strh	r3, [r2]
	ldr	r3, =0x536
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	ldr	r3, =0x52a
	mov	r5, #1
	add	r6, r7, r3
.Lm952_189e:
	mov	r0, #3
	bl	__WaitFrames
	strh	r5, [r6]
	add	r5, #1
	cmp	r5, #5
	ble	.Lm952_189e
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r3, =0x52a
	mov	r5, #5
	add	r6, r7, r3
.Lm952_18c6:
	mov	r0, #3
	bl	__WaitFrames
	strh	r5, [r6]
	add	r5, #1
	cmp	r5, #0x1f
	ble	.Lm952_18c6
	ldr	r3, =0x536
	ldr	r6, =iwram_3001ebc
	add	r2, r7, r3
	mov	r3, #0x1f
	strh	r3, [r2]
	ldr	r1, [r6]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	sub	r3, #0x41
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_Face
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r0, #3
	mov	r1, #0x20
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r5, =0xfffd0000
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x40]
	add	r3, r5
	str	r3, [r0, #0x40]
	mov	r1, #0x20
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x22
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x21
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ShowActorMessage_NoWait
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_1ab0
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x21
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0xd
	bl	__MapActor_Jump
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lm952_1af8

	.pool_aligned

.Lm952_1ab0:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x22
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0xd
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0x1e
	bl	__MapActor_Jump
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
.Lm952_1af8:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x23
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0x32
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ShowActorMessage_NoWait
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_1c28
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x21
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x107
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	mov	r5, #0
	strh	r3, [r2]
	b	.Lm952_1c60
.Lm952_1c28:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x22
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	ldr	r1, =0x107
	mov	r2, #0x28
	bl	__MapActor_Emote
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #0
	mov	r5, #1
	bl	__ActorMessage
.Lm952_1c60:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x23
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0x32
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	cmp	r5, #0
	bne	.Lm952_1d88
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.Lm952_1dd0

	.pool_aligned

.Lm952_1d88:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
.Lm952_1dd0:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0x28
	bl	__MapActor_TurnToFaceActor
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r1, =gKeyHeld
	ldr	r3, [r1]
	mov	r2, #0xf0
	and	r3, r2
	cmp	r3, #0
	bne	.Lm952_1e4a
	mov	r6, r1
	mov	r5, #0xf0
.Lm952_1e3c:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	beq	.Lm952_1e3c
.Lm952_1e4a:
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0
	ldr	r1, =0x1e666
	ldr	r2, =0xf333
	bl	__MapActor_SetSpeed
	mov	r1, #0x20
	mov	r2, #8
	neg	r2, r2
	neg	r1, r1
	mov	r0, #0
	bl	__Func_8092304
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm952_1f7c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm952_1f7c:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm952_1fac
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.Lm952_1fac:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm952_1fdc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm952_1fdc:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_20097e8

.thumb_func_start OvlFunc_952_200a014
	push	{r5, lr}
	mov	r0, #0x1e
	bl	__PlaySound
	bl	__CutsceneStart
	ldr	r0, =0x22c4
	bl	__MessageID
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r2, #18
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xe
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0
	bl	__SetCameraTarget
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xbe
	mov	r1, #0xd0
	lsl	r2, #2
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0xb8
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	bl	__Func_80933f8
	mov	r1, #0x10
	mov	r3, #0xc0
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x18
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	mov	r2, #0x10
	lsl	r3, #8
	mov	r1, #0x10
	mov	r0, #2
	bl	__Func_809233c
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x951
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm952_2140
	b	.Lm952_2320
.Lm952_2140:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092304
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x20
	bl	__Func_8092304
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #0x14
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0x10
	strb	r3, [r0]
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0x14
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0x80
	strb	r3, [r0]
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xe
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092304
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa4
	mov	r1, #2
	bl	__Func_8019908
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xa4
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xa4
	bl	__Func_8091a58
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x10
	mov	r0, #0xe
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.Lm952_23a2
.Lm952_2320:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #5
	strh	r3, [r2]
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
.Lm952_23a2:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_23f0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lm952_241c

	.pool_aligned

.Lm952_23f0:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
.Lm952_241c:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0xd
	bl	__MapActor_Jump
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xe
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xe
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0x14
	bl	__Func_8092304
	mov	r0, #2
	bl	__WaitFrames
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__MapActor_Face
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0xe
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r1, #2
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_Face
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x83
	mov	r2, #0x32
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__MapActor_TurnToFaceActor
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #2
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_26e0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lm952_270c

	.pool_aligned

.Lm952_26e0:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
.Lm952_270c:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
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
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #0x14
	mov	r2, #0x3c
	bl	__MapActor_Face
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x32
	bl	__MapActor_TurnToFaceActor
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r2, #0x32
	mov	r1, #0xe
	mov	r0, #0x14
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__MapActor_TurnToFaceActor
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x3c
	mov	r0, #0xe
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0xe
	mov	r1, #2
	bl	__MapActor_TurnToFaceActor
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x3c
	bl	__MapActor_TurnToFaceActor
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_TurnToFaceActor
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_2a3a
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
	b	.Lm952_2aa2
.Lm952_2a3a:
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #1
	mov	r1, #0
	strh	r2, [r3]
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_2a8c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lm952_2aa2

	.pool_aligned

.Lm952_2a8c:
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
.Lm952_2aa2:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #3
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, #0xe
	bl	__MapActor_Face
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x46
	mov	r0, #0xe
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #2
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0x14
	bl	__MapActor_Face
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0xe
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #0x1e
	bl	__MapActor_Face
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
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
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
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__MapActor_TurnToFaceActor
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__MapActor_TurnToFaceActor
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x14
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x18
	bl	__Func_8092304
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #3
	mov	r1, #0x14
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0x14
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xe
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	b	.Lm952_2f20

	.pool_aligned

.Lm952_2f20:
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #0
	bl	__MapActor_Face
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0xe
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x14
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x14
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r2, #0x18
	mov	r0, #0x14
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__MapActor_TurnToFaceActor
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x32
	ldr	r1, =0x101
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__MapActor_TurnToFaceActor
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #2
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
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
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x3c
	mov	r0, #0xe
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	b	.Lm952_339c

	.pool_aligned

.Lm952_339c:
	mov	r0, #1
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x32
	bl	__MapActor_TurnToFaceActor
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #3
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
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
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ShowActorMessage_NoWait
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_34d4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lm952_34f2
.Lm952_34d4:
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
.Lm952_34f2:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__MapActor_Face
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x3c
	bl	__MapActor_TurnToFaceActor
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #0x3c
	bl	__MapActor_TurnToFaceActor
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_36dc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lm952_36fa

	.pool_aligned

.Lm952_36dc:
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
.Lm952_36fa:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
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
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xe
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__MapActor_Face
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0x46
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__MapActor_TurnToFaceActor
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x83
	mov	r2, #0x32
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x14
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xe
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_3928
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lm952_3952

	.pool_aligned

.Lm952_3928:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
.Lm952_3952:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__MapActor_Face
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, #0xe
	bl	__MapActor_Face
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x14
	bl	__MapActor_SetExtra
	mov	r0, #1
	mov	r1, #0x14
	bl	__MapActor_SetExtra
	mov	r0, #3
	mov	r1, #0x14
	bl	__MapActor_SetExtra
	mov	r0, #2
	mov	r1, #0x14
	bl	__MapActor_SetExtra
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x20
	bl	__Func_8092304
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0
	mov	r2, #0x50
	mov	r0, #0x14
	bl	__Func_80922c4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__MapActor_WaitMovement
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xe
	bl	__MapActor_SetExtra
	mov	r0, #1
	mov	r1, #0xe
	bl	__MapActor_SetExtra
	mov	r0, #3
	mov	r1, #0xe
	bl	__MapActor_SetExtra
	mov	r1, #0xe
	mov	r0, #2
	bl	__MapActor_SetExtra
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xe
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x18
	bl	__Func_8092304
	mov	r1, #0x50
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x30
	bl	__Func_8092304
	mov	r1, #0x40
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092304
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__MapActor_SetIdle
	mov	r0, #3
	bl	__MapActor_SetIdle
	mov	r0, #2
	bl	__MapActor_SetIdle
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r2, #0
	mov	r1, #2
	mov	r0, #1
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x1e
	bl	__CutsceneWait
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
	mov	r0, #0x1e
	bl	__CutsceneWait
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
	beq	.Lm952_3ca4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm952_3ca4:
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
	beq	.Lm952_3cd4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm952_3cd4:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm952_3d1c
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
	b	.Lm952_3d1c

	.pool_aligned

.Lm952_3d1c:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__PlayMapMusic
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_200a014

.thumb_func_start OvlFunc_952_200bd40
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	bl	__CutsceneStart
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x20
	bne	.Lm952_3d8e
	mov	r0, #1
	bl	__Func_80118a8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__MapActor_TravelBy
	b	.Lm952_3dc4
.Lm952_3d8e:
	cmp	r3, #0x1e
	bne	.Lm952_3dac
	mov	r0, #4
	bl	__Func_80118a8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #3
	neg	r2, r2
	bl	__Func_8092208
	b	.Lm952_3dc4
.Lm952_3dac:
	mov	r0, #2
	bl	__Func_80118a8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #3
	neg	r2, r2
	bl	__Func_8092208
.Lm952_3dc4:
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8091e9c
	mov	r0, #1
	bl	__Func_80118c0
	mov	r0, #2
	bl	__Func_80118c0
	mov	r0, #4
	bl	__Func_80118c0
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_200bd40

