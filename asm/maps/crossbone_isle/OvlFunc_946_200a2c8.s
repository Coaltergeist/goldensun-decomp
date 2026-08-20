	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200a2c8
	push	{r5, r6, r7, lr}
	mov	r0, #0xf
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xf
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xa
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x18
	bne	.Lm946_233e
	cmp	r5, #7
	beq	.Lm946_2300
	cmp	r3, #0x1f
	bne	.Lm946_2306
.Lm946_2300:
	mov	r0, #0xf
	mov	r1, #0x60
	b	.Lm946_237e
.Lm946_2306:
	cmp	r3, #0x22
	bne	.Lm946_231a
	mov	r0, #0xf
	mov	r1, #0x40
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xf
	mov	r1, #0x50
	b	.Lm946_237e
.Lm946_231a:
	cmp	r3, #0x23
	bne	.Lm946_232e
	mov	r0, #0xf
	mov	r1, #0x50
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xf
	mov	r1, #0x50
	b	.Lm946_237e
.Lm946_232e:
	mov	r0, #0xf
	mov	r1, #0x50
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xf
	mov	r1, #0x60
	b	.Lm946_237e
.Lm946_233e:
	cmp	r6, #0x1e
	beq	.Lm946_2346
	cmp	r3, #0x1f
	bne	.Lm946_2364
.Lm946_2346:
	cmp	r5, #7
	beq	.Lm946_23bc
	cmp	r3, #0x22
	bne	.Lm946_2354
	mov	r0, #0xf
	mov	r1, #0x30
	b	.Lm946_237e
.Lm946_2354:
	cmp	r3, #0x23
	bne	.Lm946_235e
	mov	r0, #0xf
	mov	r1, #0x40
	b	.Lm946_237e
.Lm946_235e:
	mov	r0, #0xf
	mov	r1, #0x50
	b	.Lm946_237e
.Lm946_2364:
	cmp	r6, #0x21
	bne	.Lm946_2376
	cmp	r3, #0x22
	beq	.Lm946_23bc
	cmp	r3, #0x23
	beq	.Lm946_237a
	mov	r0, #0xf
	mov	r1, #0x20
	b	.Lm946_237e
.Lm946_2376:
	cmp	r6, #0x22
	bne	.Lm946_2386
.Lm946_237a:
	mov	r0, #0xf
	mov	r1, #0x10
.Lm946_237e:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_238a
.Lm946_2386:
	cmp	r6, #0x23
	beq	.Lm946_23bc
.Lm946_238a:
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
.Lm946_23bc:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a2c8

