	.include "macros.inc"

.thumb_func_start OvlFunc_899_2009f50
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	sub	sp, #8
	ldr	r5, [r3]
	bl	__CutsceneStart
	ldr	r0, =OvlFunc_899_200c8c8
	bl	__StopTask
	ldr	r0, =0x107
	bl	__ClearFlag
	mov	r0, #0x94
	lsl	r0, #2
	bl	__ClearFlag
	mov	r0, #0x18
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x19
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #0x18
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0xc1
	lsl	r2, #1
	add	r5, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r6, #0x18
	cmp	r3, #0xc9
	beq	.L2008
	cmp	r3, #0xc9
	blt	.L202a
	cmp	r3, #0xcb
	bgt	.L202a
	ldr	r0, =0x12a4
	bl	__MessageID
	mov	r1, #0x81
	mov	r0, #0x19
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x19
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r6, #0x19
	cmp	r3, #0xca
	beq	.L202a
.L2008:
	ldr	r0, =0x12a3
	bl	__MessageID
	mov	r1, #0x81
	mov	r0, #0x18
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x18
	mov	r1, #0x14
	mov	r6, #0x18
	bl	OvlFunc_899_200c5f4
.L202a:
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, r6
	mov	r0, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x12a5
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, r6
	mov	r0, #2
	bl	OvlFunc_899_200c658
	bl	__Func_8097adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x18
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x19
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	bl	OvlFunc_899_200c684
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	mov	r5, #0xd
	ldrb	r2, [r1, #9]
	neg	r5, r5
	mov	r3, r5
	mov	r6, #4
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #1
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #2
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	and	r5, r3
	orr	r5, r6
	ldr	r6, =iwram_3001ebc
	mov	r3, #0xe4
	ldr	r1, [r6]
	lsl	r3, #1
	strb	r5, [r2, #9]
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r5, #0xe0
	ldr	r3, =0x201
	lsl	r5, #1
	str	r3, [r1, r5]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	OvlFunc_899_200a1c8
	mov	r3, #0xe
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0xe
	bl	__Func_8010704
	ldr	r0, =0x853
	bl	__SetFlag
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r3, #5
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r3, #4
	add	r0, #0x64
	mov	r1, #0xc8
	strh	r3, [r0]
	lsl	r1, #4
	ldr	r0, =OvlFunc_899_200aba0
	bl	__StartTask
	ldr	r2, [r6]
	ldr	r3, =0x209
	str	r3, [r2, r5]
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009f50

.thumb_func_start OvlFunc_899_200a1c8
	push	{r5, r6, lr}
	bl	__PlayMapMusic
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0x90
	mov	r0, #0x80
	mov	r2, #0xc8
	mov	r3, #0xea
	lsl	r3, #18
	lsl	r0, #14
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80935b0
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xf8
	mov	r2, #0xb6
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x84
	mov	r2, #0xba
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xe8
	mov	r2, #0xba
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #1
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	mov	r5, #0xd
	ldrb	r2, [r1, #9]
	neg	r5, r5
	mov	r3, r5
	and	r3, r2
	mov	r6, #4
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #1
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #2
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	and	r5, r3
	orr	r5, r6
	strb	r5, [r2, #9]
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r1, #0xd0
	mov	r2, #0xae
	mov	r0, #0x18
	lsl	r1, #15
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xf0
	mov	r2, #0xae
	mov	r0, #0x19
	lsl	r1, #15
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r0, #0x18
	mov	r1, #0x19
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0
	bl	__SetCameraTarget
	bl	__Func_8093530
	bl	__Func_800fe9c
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x12ae
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x32
	bl	OvlFunc_899_200c624
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
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
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x14
	bl	OvlFunc_899_200c624
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	mov	r5, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L24a0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L24a0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0x14
	bl	OvlFunc_899_200c624
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L24a0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #2
	bl	OvlFunc_899_200c60c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_899_200c5f4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_899_200c624
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #0x14
	mov	r5, #1
	bl	OvlFunc_899_200c5f4
.L24a0:
	cmp	r5, #0
	bne	.L24c4
	ldr	r0, =0x12bc
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_899_200c624
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
.L24c4:
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_899_200c5f4
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0xa
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #2
	bl	OvlFunc_899_200c624
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0xa
	bl	OvlFunc_899_200c63c
	mov	r2, #0xb6
	mov	r0, #2
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_809218c
	mov	r2, #0xb6
	mov	r0, #1
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200a1c8

.thumb_func_start OvlFunc_899_200a564
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0xb
	cmp	r3, #7
	bls	.L257c
	b	.L2690
.L257c:
	ldr	r2, =.L2584
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2584:
	.word	.L25a4
	.word	.L25b8
	.word	.L25d8
	.word	.L25fe
	.word	.L2618
	.word	.L262c
	.word	.L2652
	.word	.L2678
.L25a4:
	ldr	r3, =.L55b0
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #2
	bl	OvlFunc_899_200a6e4
	ldr	r3, =gScript_899__0200d8bc
	mov	r0, #0x19
	mov	r1, #3
	b	.L25f6
.L25b8:
	ldr	r3, =gScript_899__0200d678
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #4
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L55d8
	mov	r0, #0x18
	mov	r1, #2
	mov	r2, #3
	bl	OvlFunc_899_200a6e4
	ldr	r3, =gScript_899__0200d830
	mov	r0, #0x19
	mov	r1, #1
	b	.L2610
.L25d8:
	ldr	r3, =.L5538
	mov	r0, #0x18
	mov	r1, #2
	mov	r2, #1
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L5718
	mov	r0, #0x18
	mov	r1, #3
	mov	r2, #6
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L5894
	mov	r0, #0x19
	mov	r1, #2
.L25f6:
	mov	r2, #4
	bl	OvlFunc_899_200a6e4
	b	.L2690
.L25fe:
	ldr	r3, =.L55b0
	mov	r0, #0x18
	mov	r1, #3
	mov	r2, #2
	bl	OvlFunc_899_200a6e4
	ldr	r3, =gScript_899__0200d858
	mov	r0, #0x19
	mov	r1, #4
.L2610:
	mov	r2, #3
	bl	OvlFunc_899_200a6e4
	b	.L2690
.L2618:
	ldr	r3, =.L56c8
	mov	r0, #0x18
	mov	r1, #4
	mov	r2, #5
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L57cc
	mov	r0, #0x19
	mov	r1, #1
	b	.L2670
.L262c:
	ldr	r3, =gScript_899__0200d560
	mov	r0, #0x18
	mov	r1, #4
	mov	r2, #1
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L56f0
	mov	r0, #0x18
	mov	r1, #5
	mov	r2, #6
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L57a4
	mov	r0, #0x19
	mov	r1, #3
	mov	r2, #1
	bl	OvlFunc_899_200a6e4
	b	.L2690
.L2652:
	ldr	r3, =gScript_899__0200d650
	mov	r0, #0x18
	mov	r1, #5
	mov	r2, #4
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L5600
	mov	r0, #0x18
	mov	r1, #6
	mov	r2, #3
	bl	OvlFunc_899_200a6e4
	ldr	r3, =gScript_956__0200d808
	mov	r0, #0x19
	mov	r1, #4
.L2670:
	mov	r2, #2
	bl	OvlFunc_899_200a6e4
	b	.L2690
.L2678:
	ldr	r3, =.L56c8
	mov	r0, #0x18
	mov	r1, #6
	mov	r2, #5
	bl	OvlFunc_899_200a6e4
	ldr	r3, =gScript_899__0200d768
	mov	r0, #0x19
	mov	r1, #2
	mov	r2, #1
	bl	OvlFunc_899_200a6e4
.L2690:
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200a564

