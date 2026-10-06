	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_2009bbc
	push	{r5, r6, r7, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #8
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xc
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xf
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x13
	bne	.Lm946_1c18
	cmp	r5, #0x18
	bne	.Lm946_1bf4
	mov	r2, #0x50
	b	.Lm946_1c36
.Lm946_1bf4:
	cmp	r3, #0x18
	bne	.Lm946_1c08
	mov	r2, #0x70
	neg	r2, r2
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x20
	b	.Lm946_1c36
.Lm946_1c08:
	mov	r2, #0x50
	neg	r2, r2
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x70
	b	.Lm946_1c36
.Lm946_1c18:
	cmp	r6, #0xe
	bne	.Lm946_1c2c
	cmp	r5, #0x18
	beq	.Lm946_1c7a
	cmp	r3, #0x18
	bne	.Lm946_1c28
	mov	r2, #0x40
	b	.Lm946_1c36
.Lm946_1c28:
	mov	r2, #0x70
	b	.Lm946_1c36
.Lm946_1c2c:
	cmp	r6, #0xa
	bne	.Lm946_1c42
	cmp	r3, #0x18
	beq	.Lm946_1c7a
	mov	r2, #0x30
.Lm946_1c36:
	neg	r2, r2
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_1c48
.Lm946_1c42:
	bl	OvlFunc_946_2009b14
	b	.Lm946_1c7a
.Lm946_1c48:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #8
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
.Lm946_1c7a:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009bbc

