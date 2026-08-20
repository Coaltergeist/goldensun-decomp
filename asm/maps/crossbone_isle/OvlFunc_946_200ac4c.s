	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200ac4c
	push	{r5, r6, r7, lr}
	mov	r0, #0xe
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xe
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
	cmp	r6, #6
	bne	.Lm946_2c9c
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.Lm946_2c88
	mov	r0, #0xe
	mov	r1, #0x20
	b	.Lm946_2cc4
.Lm946_2c88:
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.Lm946_2c96
	mov	r0, #0xe
	mov	r1, #0x40
	b	.Lm946_2cc4
.Lm946_2c96:
	mov	r0, #0xe
	mov	r1, #0x70
	b	.Lm946_2cc4
.Lm946_2c9c:
	cmp	r6, #8
	bne	.Lm946_2cac
	sub	r3, #0xc
	cmp	r3, #2
	bls	.Lm946_2d02
	mov	r0, #0xe
	mov	r1, #0x50
	b	.Lm946_2cc4
.Lm946_2cac:
	cmp	r6, #9
	bne	.Lm946_2cbc
	sub	r3, #0xc
	cmp	r3, #2
	bls	.Lm946_2d02
	mov	r0, #0xe
	mov	r1, #0x40
	b	.Lm946_2cc4
.Lm946_2cbc:
	cmp	r6, #0xc
	bne	.Lm946_2ccc
	mov	r0, #0xe
	mov	r1, #0x10
.Lm946_2cc4:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2cd0
.Lm946_2ccc:
	cmp	r6, #0xd
	beq	.Lm946_2d02
.Lm946_2cd0:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xe
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
.Lm946_2d02:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200ac4c

