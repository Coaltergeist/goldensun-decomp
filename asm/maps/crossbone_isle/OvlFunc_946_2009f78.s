	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_2009f78
	push	{r5, r6, r7, lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xc
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r7, r3, #20
	cmp	r6, #0x24
	bne	.Lm946_1fa8
	mov	r5, #0x60
	neg	r5, r5
	mov	r0, #0xc
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xc
	mov	r1, r5
	b	.Lm946_1fbe
.Lm946_1fa8:
	cmp	r6, #0x22
	bne	.Lm946_1fc6
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xc
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x40
	neg	r1, r1
	mov	r0, #0xc
.Lm946_1fbe:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_1fca
.Lm946_1fc6:
	cmp	r6, #0x18
	beq	.Lm946_1ffc
.Lm946_1fca:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xc
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
.Lm946_1ffc:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009f78

