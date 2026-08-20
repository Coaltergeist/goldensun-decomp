	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200a700
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #9
	asr	r3, #20
	mov	r8, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	cmp	r7, #0x13
	bne	.Lm946_2774
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_274c
	mov	r2, #0x10
	b	.Lm946_27f6
.Lm946_274c:
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2758
	mov	r2, #0x40
	b	.Lm946_27f6
.Lm946_2758:
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2764
	mov	r2, #0x70
	b	.Lm946_27f6
.Lm946_2764:
	mov	r2, #0x50
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x60
	b	.Lm946_27f6
.Lm946_2774:
	cmp	r7, #0x12
	bne	.Lm946_27a4
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_283a
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_27f4
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2794
	mov	r2, #0x60
	b	.Lm946_27f6
.Lm946_2794:
	mov	r2, #0x60
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x40
	b	.Lm946_27f6
.Lm946_27a4:
	cmp	r7, #0xf
	bne	.Lm946_27bc
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_283a
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_27f4
	mov	r2, #0x70
	b	.Lm946_27f6
.Lm946_27bc:
	cmp	r7, #0xe
	bne	.Lm946_27d8
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_283a
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_27d4
	mov	r2, #0x20
	b	.Lm946_27f6
.Lm946_27d4:
	mov	r2, #0x60
	b	.Lm946_27f6
.Lm946_27d8:
	cmp	r7, #0xc
	bne	.Lm946_27e8
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_283a
	mov	r2, #0x40
	b	.Lm946_27f6
.Lm946_27e8:
	cmp	r7, #0xb
	bne	.Lm946_2802
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_283a
.Lm946_27f4:
	mov	r2, #0x30
.Lm946_27f6:
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2806
.Lm946_2802:
	cmp	r7, #9
	bls	.Lm946_283a
.Lm946_2806:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r7
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_8010704
.Lm946_283a:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a700

