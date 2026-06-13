	.include "macros.inc"

.thumb_func_start OvlFunc_888_200b2d0
	push	{lr}
	bl	OvlFunc_888_200b2a8
	cmp	r0, #0
	beq	.L32e2
	mov	r0, #8
	bl	__UI_Sanctum
	b	.L331c
.L32e2:
	bl	__CutsceneStart
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L32f8
	ldr	r0, =0x1bfc
	bl	__MessageID
	b	.L3310
.L32f8:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.L330a
	ldr	r0, =0x119d
	bl	__MessageID
	b	.L3310
.L330a:
	ldr	r0, =0x1035
	bl	__MessageID
.L3310:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.L331c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200b2d0

.thumb_func_start OvlFunc_888_200b334
	push	{lr}
	bl	OvlFunc_888_200b2a8
	cmp	r0, #0
	beq	.L3346
	mov	r0, #8
	bl	__UI_Sanctum
	b	.L3440
.L3346:
	bl	__CutsceneStart
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0xa
	cmp	r3, #0x28
	bhi	.L3434
	ldr	r2, =.L3364
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L3364:
	.word	.L3408
	.word	.L3422
	.word	.L3408
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L342a
	.word	.L342a
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L3434
	.word	.L342a
.L3408:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	beq	.L341a
	ldr	r0, =0x1376
	bl	__MessageID
	b	.L3434
.L341a:
	ldr	r0, =0x1288
	bl	__MessageID
	b	.L3434
.L3422:
	ldr	r0, =0x1ce8
	bl	__MessageID
	b	.L3434
.L342a:
	bl	__CutsceneEnd
	bl	OvlFunc_888_2008360
	b	.L3440
.L3434:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.L3440:
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200b334

