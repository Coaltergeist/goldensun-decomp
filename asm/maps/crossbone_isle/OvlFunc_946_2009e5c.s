	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_2009e5c
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xb
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r5, r3, #20
	cmp	r6, #0x1e
	beq	.Lm946_1eec
	cmp	r6, #0x22
	bne	.Lm946_1e8e
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x12
	beq	.Lm946_1eec
	mov	r1, #0x40
	b	.Lm946_1ea2
.Lm946_1e8e:
	cmp	r6, #0x24
	bne	.Lm946_1eba
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x12
	bne	.Lm946_1eae
	mov	r1, #0x20
.Lm946_1ea2:
	neg	r1, r1
	mov	r0, #0xb
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_1eba
.Lm946_1eae:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xb
	mov	r2, #0
	bl	OvlFunc_946_2009774
.Lm946_1eba:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xb
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
.Lm946_1eec:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009e5c

