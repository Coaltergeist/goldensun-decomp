	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_918_2009424
	push	{lr}
	cmp	r0, #0xc
	bls	.Lm918_142c
	b	.Lm918_159c
.Lm918_142c:
	ldr	r2, =.Lm918_1434
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm918_1434:
	.word	.Lm918_1468
	.word	.Lm918_14e8
	.word	.Lm918_1480
	.word	.Lm918_1498
	.word	.Lm918_14b0
	.word	.Lm918_14f2
	.word	.Lm918_159c
	.word	.Lm918_150a
	.word	.Lm918_158a
	.word	.Lm918_1522
	.word	.Lm918_153a
	.word	.Lm918_1552
	.word	.Lm918_1594
.Lm918_1468:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	b	.Lm918_159c
.Lm918_1480:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	b	.Lm918_159c
.Lm918_1498:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_SetAnim
	b	.Lm918_159c
.Lm918_14b0:
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
.Lm918_14e8:
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	b	.Lm918_159c
.Lm918_14f2:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	b	.Lm918_159c
.Lm918_150a:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #8
	bl	__MapActor_SetAnim
	b	.Lm918_159c
.Lm918_1522:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #9
	bl	__MapActor_SetAnim
	b	.Lm918_159c
.Lm918_153a:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #0xa
	bl	__MapActor_SetAnim
	b	.Lm918_159c
.Lm918_1552:
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
.Lm918_158a:
	mov	r0, #8
	mov	r1, #6
	bl	__MapActor_SetAnim
	b	.Lm918_159c
.Lm918_1594:
	mov	r0, #8
	mov	r1, #6
	bl	__MapActor_SetAnim
.Lm918_159c:
	mov	r0, #0xc
	bl	__WaitFrames
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_2009424

