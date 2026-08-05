	.include "macros.inc"

.thumb_func_start OvlFunc_888_200b334
	push	{lr}
	bl	OvlFunc_888_200b2a8
	cmp	r0, #0
	beq	.Lm888_3346
	mov	r0, #8
	bl	__UI_Sanctum
	b	.Lm888_3440
.Lm888_3346:
	bl	__CutsceneStart
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0xa
	cmp	r3, #0x28
	bhi	.Lm888_3434
	ldr	r2, =.Lm888_3364
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm888_3364:
	.word	.Lm888_3408
	.word	.Lm888_3422
	.word	.Lm888_3408
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_342a
	.word	.Lm888_342a
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_3434
	.word	.Lm888_342a
.Lm888_3408:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm888_341a
	ldr	r0, =0x1376
	bl	__MessageID
	b	.Lm888_3434
.Lm888_341a:
	ldr	r0, =0x1288
	bl	__MessageID
	b	.Lm888_3434
.Lm888_3422:
	ldr	r0, =0x1ce8
	bl	__MessageID
	b	.Lm888_3434
.Lm888_342a:
	bl	__CutsceneEnd
	bl	OvlFunc_888_2008360
	b	.Lm888_3440
.Lm888_3434:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.Lm888_3440:
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200b334

