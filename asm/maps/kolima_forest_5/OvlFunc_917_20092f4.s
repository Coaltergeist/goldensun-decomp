	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_20092f4
	push	{lr}
	cmp	r0, #0xa
	beq	.Lm917_12fc
	b	.Lm917_1454
.Lm917_12fc:
	cmp	r1, #0xb
	bls	.Lm917_1302
	b	.Lm917_1518
.Lm917_1302:
	ldr	r2, =.Lm917_130c
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm917_130c:
	.word	.Lm917_133c
	.word	.Lm917_134e
	.word	.Lm917_1352
	.word	.Lm917_1364
	.word	.Lm917_1376
	.word	.Lm917_13b2
	.word	.Lm917_13ca
	.word	.Lm917_144a
	.word	.Lm917_13e2
	.word	.Lm917_13fa
	.word	.Lm917_1412
	.word	.Lm917_144a
.Lm917_133c:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	b	.Lm917_1488
.Lm917_134e:
	mov	r0, #8
	b	.Lm917_14fa
.Lm917_1352:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	b	.Lm917_14a0
.Lm917_1364:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	b	.Lm917_14b8
.Lm917_1376:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	b	.Lm917_14fa
.Lm917_13b2:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_13ca:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #8
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_13e2:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #9
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_13fa:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #0xa
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_1412:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #8
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #8
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
.Lm917_144a:
	mov	r0, #8
	mov	r1, #6
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_1454:
	cmp	r1, #5
	bhi	.Lm917_1518
	ldr	r2, =.Lm917_1460
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm917_1460:
	.word	.Lm917_1478
	.word	.Lm917_14f8
	.word	.Lm917_1490
	.word	.Lm917_14a8
	.word	.Lm917_14c0
	.word	.Lm917_1502
.Lm917_1478:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #9
.Lm917_1488:
	mov	r1, #3
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_1490:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #9
.Lm917_14a0:
	mov	r1, #5
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_14a8:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #9
.Lm917_14b8:
	mov	r1, #4
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_14c0:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
.Lm917_14f8:
	mov	r0, #9
.Lm917_14fa:
	mov	r1, #1
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_1502:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetAnim
.Lm917_1518:
	mov	r0, #0xc
	bl	__WaitFrames
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_20092f4

