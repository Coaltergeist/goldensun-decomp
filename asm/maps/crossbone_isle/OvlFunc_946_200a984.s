	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200a984
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x13
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x11
	asr	r3, #20
	mov	r8, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r7, #3
	beq	.Lm946_2a8a
	cmp	r7, #0xd
	bne	.Lm946_29f0
	cmp	r3, #0xf
	bne	.Lm946_29d0
	mov	r1, #0x10
	b	.Lm946_2a3e
.Lm946_29d0:
	cmp	r5, #0xf
	bne	.Lm946_29d8
	mov	r1, #0x40
	b	.Lm946_2a3e
.Lm946_29d8:
	cmp	r6, #0xf
	bne	.Lm946_29e0
	mov	r1, #0x70
	b	.Lm946_2a3e
.Lm946_29e0:
	mov	r1, #0x70
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x30
	b	.Lm946_2a3e
.Lm946_29f0:
	cmp	r7, #6
	bne	.Lm946_29fc
	cmp	r6, #0xf
	beq	.Lm946_2a8a
	mov	r1, #0x30
	b	.Lm946_2a3e
.Lm946_29fc:
	cmp	r7, #5
	bne	.Lm946_2a04
	mov	r1, #0x20
	b	.Lm946_2a3e
.Lm946_2a04:
	cmp	r7, #8
	bne	.Lm946_2a18
	cmp	r5, #0xf
	beq	.Lm946_2a8a
	cmp	r6, #0xf
	bne	.Lm946_2a14
	mov	r1, #0x20
	b	.Lm946_2a3e
.Lm946_2a14:
	mov	r1, #0x50
	b	.Lm946_2a3e
.Lm946_2a18:
	cmp	r7, #9
	bne	.Lm946_2a28
	cmp	r5, #0xf
	beq	.Lm946_2a8a
	cmp	r6, #0xf
	bne	.Lm946_2a3c
	mov	r1, #0x30
	b	.Lm946_2a3e
.Lm946_2a28:
	cmp	r7, #0xc
	bne	.Lm946_2a56
	cmp	r3, #0xf
	beq	.Lm946_2a8a
	cmp	r5, #0xf
	bne	.Lm946_2a38
	mov	r1, #0x30
	b	.Lm946_2a3e
.Lm946_2a38:
	cmp	r6, #0xf
	bne	.Lm946_2a4a
.Lm946_2a3c:
	mov	r1, #0x60
.Lm946_2a3e:
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2a56
.Lm946_2a4a:
	mov	r1, #0x90
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_946_2009774
.Lm946_2a56:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r7
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_2a8a:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a984

