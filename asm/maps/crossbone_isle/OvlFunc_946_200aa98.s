	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200aa98
	push	{r5, r6, r7, lr}
	mov	r0, #0x13
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x13
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
	cmp	r6, #3
	bne	.Lm946_2aec
	cmp	r5, #0xf
	bne	.Lm946_2ad2
	mov	r0, #0x13
	mov	r1, #0x20
	b	.Lm946_2b2e
.Lm946_2ad2:
	cmp	r3, #0xf
	bne	.Lm946_2adc
	mov	r0, #0x13
	mov	r1, #0x50
	b	.Lm946_2b2e
.Lm946_2adc:
	mov	r0, #0x13
	mov	r1, #0x70
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0x13
	mov	r1, #0x30
	b	.Lm946_2b2e
.Lm946_2aec:
	cmp	r6, #5
	bne	.Lm946_2b04
	cmp	r5, #0xf
	beq	.Lm946_2b76
	cmp	r3, #0xf
	bne	.Lm946_2afe
	mov	r0, #0x13
	mov	r1, #0x30
	b	.Lm946_2b2e
.Lm946_2afe:
	mov	r0, #0x13
	mov	r1, #0x80
	b	.Lm946_2b2e
.Lm946_2b04:
	cmp	r6, #6
	bne	.Lm946_2b18
	cmp	r3, #0xf
	bne	.Lm946_2b12
	mov	r0, #0x13
	mov	r1, #0x20
	b	.Lm946_2b2e
.Lm946_2b12:
	mov	r0, #0x13
	mov	r1, #0x70
	b	.Lm946_2b2e
.Lm946_2b18:
	cmp	r6, #8
	bne	.Lm946_2b26
	cmp	r3, #0xf
	beq	.Lm946_2b76
	mov	r0, #0x13
	mov	r1, #0x50
	b	.Lm946_2b2e
.Lm946_2b26:
	cmp	r6, #9
	bne	.Lm946_2b36
	mov	r0, #0x13
	mov	r1, #0x40
.Lm946_2b2e:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2b44
.Lm946_2b36:
	cmp	r6, #0xc
	bne	.Lm946_2b44
	mov	r0, #0x13
	mov	r1, #0x10
	mov	r2, #0
	bl	OvlFunc_946_2009774
.Lm946_2b44:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x13
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
.Lm946_2b76:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200aa98

