	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200a004
	push	{r5, r6, lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xc
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r5, r3, #20
	cmp	r6, #0x18
	bne	.Lm946_2030
	mov	r0, #0xc
	mov	r1, #0x60
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xc
	mov	r1, #0x60
	b	.Lm946_2038
.Lm946_2030:
	cmp	r6, #0x22
	bne	.Lm946_2040
	mov	r0, #0xc
	mov	r1, #0x20
.Lm946_2038:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2044
.Lm946_2040:
	cmp	r6, #0x24
	beq	.Lm946_2076
.Lm946_2044:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xc
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
.Lm946_2076:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a004

