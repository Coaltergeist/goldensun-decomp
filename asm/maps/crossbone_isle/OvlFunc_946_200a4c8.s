	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200a4c8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x12
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x12
	asr	r3, #20
	mov	r8, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	cmp	r6, #0x13
	bne	.Lm946_2536
	sub	r3, r7, #6
	cmp	r3, #2
	bhi	.Lm946_2512
	mov	r2, #0x10
	b	.Lm946_259e
.Lm946_2512:
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.Lm946_251c
	mov	r2, #0x40
	b	.Lm946_259e
.Lm946_251c:
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.Lm946_2526
	mov	r2, #0x70
	b	.Lm946_259e
.Lm946_2526:
	mov	r2, #0x40
	neg	r2, r2
	mov	r0, #0x12
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x60
	b	.Lm946_259e
.Lm946_2536:
	cmp	r6, #0x12
	bne	.Lm946_2558
	sub	r3, r7, #6
	cmp	r3, #2
	bls	.Lm946_25e2
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.Lm946_254a
	mov	r2, #0x30
	b	.Lm946_259e
.Lm946_254a:
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.Lm946_2554
	mov	r2, #0x60
	b	.Lm946_259e
.Lm946_2554:
	mov	r2, #0x90
	b	.Lm946_259e
.Lm946_2558:
	cmp	r6, #0xf
	bne	.Lm946_2570
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.Lm946_25e2
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.Lm946_256c
	mov	r2, #0x30
	b	.Lm946_259e
.Lm946_256c:
	mov	r2, #0x60
	b	.Lm946_259e
.Lm946_2570:
	cmp	r6, #0xe
	bne	.Lm946_2584
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.Lm946_25e2
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.Lm946_259c
	mov	r2, #0x50
	b	.Lm946_259e
.Lm946_2584:
	cmp	r6, #0xc
	bne	.Lm946_2592
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.Lm946_25e2
	mov	r2, #0x30
	b	.Lm946_259e
.Lm946_2592:
	cmp	r6, #0xb
	bne	.Lm946_25aa
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.Lm946_25e2
.Lm946_259c:
	mov	r2, #0x20
.Lm946_259e:
	neg	r2, r2
	mov	r0, #0x12
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_25ae
.Lm946_25aa:
	cmp	r6, #9
	beq	.Lm946_25e2
.Lm946_25ae:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
.Lm946_25e2:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a4c8

