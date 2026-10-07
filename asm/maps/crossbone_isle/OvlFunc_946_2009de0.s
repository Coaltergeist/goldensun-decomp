	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_2009de0
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xa
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r6, #0x12
	beq	.Lm946_1e52
	cmp	r6, #0xa
	bne	.Lm946_1e0c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x80
	bl	OvlFunc_946_2009774
	b	.Lm946_1e20
.Lm946_1e0c:
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_946_2009774
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
.Lm946_1e20:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xa
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
.Lm946_1e52:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009de0

