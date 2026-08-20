	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200a200
	push	{r5, r6, r7, lr}
	mov	r0, #0xf
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xf
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #8
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xa
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #0x23
	bne	.Lm946_2250
	cmp	r3, #7
	bne	.Lm946_2238
	mov	r1, #0x10
	b	.Lm946_227e
.Lm946_2238:
	cmp	r5, #7
	bne	.Lm946_2240
	mov	r1, #0x70
	b	.Lm946_227e
.Lm946_2240:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xf
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x50
	b	.Lm946_227e
.Lm946_2250:
	cmp	r6, #0x22
	bne	.Lm946_2268
	cmp	r3, #7
	beq	.Lm946_22c0
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xf
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x40
	b	.Lm946_227e
.Lm946_2268:
	cmp	r6, #0x21
	bne	.Lm946_2270
	mov	r1, #0x90
	b	.Lm946_227e
.Lm946_2270:
	cmp	r6, #0x1f
	bne	.Lm946_2278
	mov	r1, #0x50
	b	.Lm946_227e
.Lm946_2278:
	cmp	r6, #0x1e
	bne	.Lm946_228a
	mov	r1, #0x60
.Lm946_227e:
	neg	r1, r1
	mov	r0, #0xf
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_228e
.Lm946_228a:
	cmp	r6, #0x18
	beq	.Lm946_22c0
.Lm946_228e:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xf
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
.Lm946_22c0:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a200

