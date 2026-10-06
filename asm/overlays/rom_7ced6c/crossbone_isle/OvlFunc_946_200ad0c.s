	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200ad0c
	push	{r5, r6, r7, lr}
	mov	r0, #0x10
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #0xd
	bne	.Lm946_2d56
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2d46
	mov	r1, #0x10
	b	.Lm946_2d86
.Lm946_2d46:
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2d52
	mov	r1, #0x40
	b	.Lm946_2d86
.Lm946_2d52:
	mov	r1, #0x70
	b	.Lm946_2d86
.Lm946_2d56:
	cmp	r6, #0xc
	bne	.Lm946_2d70
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_2dc8
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2d6c
	mov	r1, #0x30
	b	.Lm946_2d86
.Lm946_2d6c:
	mov	r1, #0x60
	b	.Lm946_2d86
.Lm946_2d70:
	cmp	r6, #9
	bne	.Lm946_2d80
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_2dc8
	mov	r1, #0x30
	b	.Lm946_2d86
.Lm946_2d80:
	cmp	r6, #8
	bne	.Lm946_2d92
	mov	r1, #0x20
.Lm946_2d86:
	neg	r1, r1
	mov	r0, #0x10
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2d96
.Lm946_2d92:
	cmp	r6, #6
	beq	.Lm946_2dc8
.Lm946_2d96:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_2dc8:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200ad0c

