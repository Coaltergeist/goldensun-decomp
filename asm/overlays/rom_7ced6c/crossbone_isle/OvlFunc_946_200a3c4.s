	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200a3c4
	push	{r5, r6, lr}
	mov	r0, #0x11
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x11
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x13
	bne	.Lm946_23f8
	sub	r3, #3
	cmp	r3, #2
	bhi	.Lm946_23f4
	mov	r2, #0x10
	b	.Lm946_2404
.Lm946_23f4:
	mov	r2, #0x40
	b	.Lm946_2404
.Lm946_23f8:
	cmp	r6, #0x12
	bne	.Lm946_2410
	sub	r3, #3
	cmp	r3, #2
	bls	.Lm946_2446
	mov	r2, #0x30
.Lm946_2404:
	neg	r2, r2
	mov	r0, #0x11
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2414
.Lm946_2410:
	cmp	r6, #0xf
	beq	.Lm946_2446
.Lm946_2414:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
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
.Lm946_2446:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a3c4

