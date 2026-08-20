	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200a450
	push	{r5, r6, lr}
	mov	r0, #0x11
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x11
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r6, #0xf
	bne	.Lm946_2478
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
	b	.Lm946_248c
.Lm946_2478:
	cmp	r6, #0x12
	bne	.Lm946_2488
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x10
	bl	OvlFunc_946_2009774
	b	.Lm946_248c
.Lm946_2488:
	cmp	r6, #0x13
	beq	.Lm946_24be
.Lm946_248c:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	sub	r5, #1
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
.Lm946_24be:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a450

