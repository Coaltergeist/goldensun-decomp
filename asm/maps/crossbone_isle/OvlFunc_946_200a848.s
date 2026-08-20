	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200a848
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
	asr	r3, #20
	cmp	r7, #8
	bne	.Lm946_28b4
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_2976
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_28c8
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_28a8
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
.Lm946_28a8:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x60
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_28b4:
	cmp	r7, #0xb
	bne	.Lm946_28e0
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_2976
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_28d4
.Lm946_28c8:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x30
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_28d4:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x80
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_28e0:
	cmp	r7, #0xc
	bne	.Lm946_290c
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_2976
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2900
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x20
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_2900:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_290c:
	cmp	r7, #0xe
	bne	.Lm946_2924
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_2976
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_2924:
	cmp	r7, #0xf
	bne	.Lm946_2934
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_2934:
	cmp	r7, #0x12
	bne	.Lm946_2942
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x10
	bl	OvlFunc_946_2009774
.Lm946_2942:
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
.Lm946_2976:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a848

