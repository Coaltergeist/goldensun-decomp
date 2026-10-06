	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200a16c
	push	{r5, r6, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xd
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xf
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	cmp	r6, #0x19
	bne	.Lm946_219e
	mov	r0, #0xd
	mov	r1, #0x60
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xd
	mov	r1, #0x50
	b	.Lm946_21ba
.Lm946_219e:
	cmp	r6, #0x1f
	bne	.Lm946_21a8
	mov	r0, #0xd
	mov	r1, #0x50
	b	.Lm946_21ba
.Lm946_21a8:
	cmp	r6, #0x22
	bne	.Lm946_21b2
	mov	r0, #0xd
	mov	r1, #0x20
	b	.Lm946_21ba
.Lm946_21b2:
	cmp	r6, #0x23
	bne	.Lm946_21c2
	mov	r0, #0xd
	mov	r1, #0x10
.Lm946_21ba:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_21c6
.Lm946_21c2:
	cmp	r6, #0x24
	beq	.Lm946_21f8
.Lm946_21c6:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, #1
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
.Lm946_21f8:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a16c

