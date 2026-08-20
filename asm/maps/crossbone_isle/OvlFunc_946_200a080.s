	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_200a080
	push	{r5, r6, r7, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xd
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xa
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xf
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x24
	bne	.Lm946_20d8
	cmp	r3, #0x22
	bne	.Lm946_20b8
	mov	r1, #0x10
	b	.Lm946_2122
.Lm946_20b8:
	cmp	r5, #7
	bne	.Lm946_20c0
	mov	r1, #0x20
	b	.Lm946_2122
.Lm946_20c0:
	cmp	r3, #0x1e
	bne	.Lm946_20c8
	mov	r1, #0x50
	b	.Lm946_2122
.Lm946_20c8:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xd
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x50
	b	.Lm946_2122
.Lm946_20d8:
	cmp	r6, #0x23
	bne	.Lm946_2104
	cmp	r3, #0x22
	beq	.Lm946_2164
	cmp	r5, #7
	bne	.Lm946_20e8
	mov	r1, #0x10
	b	.Lm946_2122
.Lm946_20e8:
	cmp	r3, #0x1e
	bne	.Lm946_20f0
	mov	r1, #0x40
	b	.Lm946_2122
.Lm946_20f0:
	mov	r5, #0x50
	neg	r5, r5
	mov	r0, #0xd
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xd
	mov	r1, r5
	b	.Lm946_2126
.Lm946_2104:
	cmp	r6, #0x22
	bne	.Lm946_2118
	cmp	r5, #7
	beq	.Lm946_2164
	cmp	r3, #0x1e
	bne	.Lm946_2114
	mov	r1, #0x30
	b	.Lm946_2122
.Lm946_2114:
	mov	r1, #0x90
	b	.Lm946_2122
.Lm946_2118:
	cmp	r6, #0x1f
	bne	.Lm946_212e
	cmp	r3, #0x1e
	beq	.Lm946_2164
	mov	r1, #0x60
.Lm946_2122:
	neg	r1, r1
	mov	r0, #0xd
.Lm946_2126:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2132
.Lm946_212e:
	cmp	r6, #0x19
	beq	.Lm946_2164
.Lm946_2132:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xd
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
.Lm946_2164:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a080

