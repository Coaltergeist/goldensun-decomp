	.include "macros.inc"

.thumb_func_start ValeSanctum_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x22
	bhi	.Lm888_128
	ldr	r2, =.Lm888_8c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm888_8c:
	.word	.Lm888_118
	.word	.Lm888_118
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_11c
	.word	.Lm888_11c
	.word	.Lm888_11c
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_120
	.word	.Lm888_120
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_124
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_124
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_11c
.Lm888_118:
	ldr	r0, =.Lm888_3c0c
	b	.Lm888_12a
.Lm888_11c:
	ldr	r0, =.Lm888_3ccc
	b	.Lm888_12a
.Lm888_120:
	ldr	r0, =.Lm888_3d2c
	b	.Lm888_12a
.Lm888_124:
	ldr	r0, =.Lm888_3e04
	b	.Lm888_12a
.Lm888_128:
	ldr	r0, =.Lm888_3bf4
.Lm888_12a:
	pop	{r1}
	bx	r1
.func_end ValeSanctum_GetActors

.thumb_func_start ValeSanctum_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0xa
	cmp	r3, #0x28
	bhi	.Lm888_224
	ldr	r2, =.Lm888_168
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm888_168:
	.word	.Lm888_20c
	.word	.Lm888_210
	.word	.Lm888_20c
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_214
	.word	.Lm888_214
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_21c
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_218
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_220
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_224
	.word	.Lm888_214
.Lm888_20c:
	ldr	r0, =.Lm888_3e70
	b	.Lm888_242
.Lm888_210:
	ldr	r0, =.Lm888_3ec4
	b	.Lm888_242
.Lm888_214:
	ldr	r0, =.Lm888_3f0c
	b	.Lm888_242
.Lm888_218:
	ldr	r0, =.Lm888_40ec
	b	.Lm888_242
.Lm888_21c:
	ldr	r0, =.Lm888_4038
	b	.Lm888_242
.Lm888_220:
	ldr	r0, =.Lm888_4080
	b	.Lm888_242
.Lm888_224:
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm888_232
	ldr	r0, =.Lm888_3fd8
	b	.Lm888_242
.Lm888_232:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm888_240
	ldr	r0, =.Lm888_3f78
	b	.Lm888_242
.Lm888_240:
	ldr	r0, =.Lm888_3e34
.Lm888_242:
	pop	{r1}
	bx	r1
.func_end ValeSanctum_GetEvents

.thumb_func_start OvlFunc_888_200827c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm888_294
	ldr	r0, =0x1377
	bl	__MessageID
	b	.Lm888_29a
.Lm888_294:
	ldr	r0, =0x1289
	bl	__MessageID
.Lm888_29a:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.Lm888_2b0
	ldr	r0, =0x1ce9
	bl	__MessageID
.Lm888_2b0:
	mov	r0, #9
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_TurnToFaceActor
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200827c

.thumb_func_start OvlFunc_888_20082ec
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm888_304
	ldr	r0, =0x128b
	bl	__MessageID
	b	.Lm888_30a
.Lm888_304:
	ldr	r0, =0x1379
	bl	__MessageID
.Lm888_30a:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.Lm888_320
	ldr	r0, =0x1ceb
	bl	__MessageID
.Lm888_320:
	mov	r0, #9
	bl	__MapActor_SetIdle
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_20082ec

.thumb_func_start OvlFunc_888_2008360
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1164
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm888_390
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	b	.Lm888_4da
.Lm888_390:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm888_3ac
	b	.Lm888_4da
.Lm888_3ac:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm888_3c8
	b	.Lm888_4da
.Lm888_3c8:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, #0xa0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bcc	.Lm888_488
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, #0xe0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bhi	.Lm888_488
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0x98
	mov	r2, #0x78
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xa8
	mov	r2, #0x78
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #0xa8
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0x78
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_WaitMovement
	b	.Lm888_4aa
.Lm888_488:
	mov	r1, #0xc0
	mov	r2, #0xa8
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_WaitMovement
.Lm888_4aa:
	bl	OvlFunc_888_200987c
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0x56
	bl	__PlaySound
	bl	__Func_80f95a0
	mov	r0, #0x9f
	lsl	r0, #4
	bl	__SetFlag
	mov	r0, #0x1e
	bl	__Func_8091e9c
.Lm888_4da:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_2008360

.thumb_func_start OvlFunc_888_20084e8
	push	{r5, lr}
	sub	sp, #0x1c
	bl	__CutsceneStart
	ldr	r0, =.Lm888_3c9c
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x1bfd
	bl	__MessageID
	mov	r1, #0
	mov	r0, #9
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm888_520
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm888_55c
.Lm888_520:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r3, #3
	mov	r2, #7
	mov	r1, #0x10
	mov	r4, #0xe
	str	r0, [sp]
	str	r3, [sp, #4]
	str	r2, [sp, #8]
	str	r0, [sp, #0x10]
	mov	r5, #0
	mov	r0, #2
	mov	r2, #1
	mov	r3, #0x18
	str	r1, [sp, #0xc]
	str	r4, [sp, #0x14]
	str	r5, [sp, #0x18]
	bl	__Func_80931ec
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.Lm888_55c:
	bl	__CutsceneEnd
	add	sp, #0x1c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_20084e8

