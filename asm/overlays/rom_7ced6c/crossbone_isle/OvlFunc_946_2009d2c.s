	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_2009d2c
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xa
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xf
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x12
	bne	.Lm946_1d82
	sub	r3, #0x1f
	cmp	r3, #2
	bhi	.Lm946_1d66
	mov	r2, #0x80
	b	.Lm946_1d96
.Lm946_1d66:
	mov	r3, r5
	sub	r3, #0x1f
	cmp	r3, #2
	bhi	.Lm946_1d72
	mov	r2, #0x80
	b	.Lm946_1d96
.Lm946_1d72:
	mov	r2, #0x70
	neg	r2, r2
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x40
	b	.Lm946_1d96
.Lm946_1d82:
	cmp	r6, #0xa
	bne	.Lm946_1da2
	sub	r3, #0x1f
	cmp	r3, #2
	bls	.Lm946_1dd8
	mov	r3, r5
	sub	r3, #0x1f
	cmp	r3, #2
	bls	.Lm946_1dd8
	mov	r2, #0x30
.Lm946_1d96:
	neg	r2, r2
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_1da6
.Lm946_1da2:
	cmp	r6, #7
	beq	.Lm946_1dd8
.Lm946_1da6:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xa
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
.Lm946_1dd8:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009d2c

