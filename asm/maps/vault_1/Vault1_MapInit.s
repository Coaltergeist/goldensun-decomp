	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Vault1_MapInit
	push	{r5, r6, r7, lr}
	ldr	r0, =0x87a
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm898_1380
	mov	r0, #0xe
	bl	__Func_8091e9c
.Lm898_1380:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm898_13a0
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x37
	mov	r1, #0x1a
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
.Lm898_13a0:
	mov	r0, #0x80
	mov	r2, #0xd2
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_common0_70
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_898_2008314
	mov	r3, r0
	add	r3, #0x64
	mov	r7, #1
	strh	r7, [r3]
	str	r5, [r0, #0x6c]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r3, r0
	mov	r6, #0
	add	r3, #0x64
	strh	r6, [r3]
	str	r5, [r0, #0x6c]
	ldr	r0, =0x858
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm898_13ea
	mov	r1, #0xd8
	mov	r2, #0xc4
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
.Lm898_13ea:
	ldr	r0, =0x853
	bl	__GetFlag
	mov	r5, r0
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm898_140e
	mov	r3, r7
	and	r3, r5
	cmp	r3, #0
	beq	.Lm898_140e
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_898_20083ac
	str	r3, [r0, #0x6c]
.Lm898_140e:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	bgt	.Lm898_14fe
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm898_14fe
	ldr	r0, =0x867
	bl	__ClearFlag
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm898_14fe
	ldr	r0, =0x856
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm898_14fe
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm898_145a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm898_145a:
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #1
	bne	.Lm898_1472
	mov	r1, #0xc8
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	b	.Lm898_1480
.Lm898_1472:
	mov	r1, #0xe0
	mov	r2, #0xa2
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
.Lm898_1480:
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__MapActor_TurnToFaceActor
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r0, =0x1328
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm898_14e2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm898_14e2:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #0
	bl	__Func_80917d0
	bl	__CutsceneEnd
.Lm898_14fe:
	ldr	r0, =0x867
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm898_1516
	mov	r1, #0xcc
	mov	r2, #0xf0
	mov	r0, #0x17
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
.Lm898_1516:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.Lm898_15dc
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm898_15d4
	ldr	r0, =0x856
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm898_15d4
	mov	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm898_15d4
	bl	__CutsceneStart
	mov	r1, #0xa0
	mov	r2, #0x9b
	mov	r0, #2
	lsl	r1, #14
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__MapActor_TurnToFaceActor
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r0, =0x1328
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm898_15b8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm898_15b8:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #0
	bl	__Func_80917d0
	bl	__CutsceneEnd
.Lm898_15d4:
	ldr	r0, =0x12f
	bl	__ClearFlag
	b	.Lm898_15f4
.Lm898_15dc:
	cmp	r3, #0xd
	bne	.Lm898_15f4
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm898_15f4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm898_15f4:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Vault1_MapInit

