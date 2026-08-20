	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200a5f0
	push	{r5, r6, r7, lr}
	mov	r0, #0x12
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x12
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #9
	bne	.Lm946_2642
	sub	r3, #6
	cmp	r3, #2
	bls	.Lm946_2674
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.Lm946_2696
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x60
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_2642:
	cmp	r6, #0xb
	bne	.Lm946_266a
	sub	r3, #6
	cmp	r3, #2
	bls	.Lm946_26f8
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.Lm946_265e
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x30
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_265e:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x80
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_266a:
	cmp	r6, #0xc
	bne	.Lm946_268c
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.Lm946_2680
.Lm946_2674:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x20
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_2680:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_268c:
	cmp	r6, #0xe
	bne	.Lm946_26a2
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.Lm946_26f8
.Lm946_2696:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_26a2:
	cmp	r6, #0xf
	bne	.Lm946_26b2
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_26b2:
	cmp	r6, #0x12
	bne	.Lm946_26c2
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x10
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_26c2:
	cmp	r6, #0x13
	beq	.Lm946_26f8
.Lm946_26c6:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	sub	r5, r7, #1
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
.Lm946_26f8:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a5f0

