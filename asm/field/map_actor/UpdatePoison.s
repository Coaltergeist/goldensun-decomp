	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start UpdatePoison  @ 0x0808c3a4
	push	{r5, r6, r7, lr}
	mov	r7, #0
	bl	_GetPartySize
	cmp	r7, r0
	bge	.L8c420
	ldr	r3, =gState
	mov	r2, #0xfc
	lsl	r2, #1
	add	r6, r3, r2
	mov	r5, r0
.L8c3ba:
	ldrb	r0, [r6]
	bl	_GetUnit
	ldr	r2, =0x131
	add	r3, r0, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #1
	beq	.L8c3d4
	cmp	r3, #2
	beq	.L8c3f2
	b	.L8c410
.L8c3d4:
	mov	r3, #0x34
	ldrsh	r0, [r0, r3]
	mov	r1, #0x14
	add	r0, #0xa
	bl	__divsi3
	neg	r1, r0
	cmp	r1, #0
	bne	.L8c3ea
	mov	r1, #1
	neg	r1, r1
.L8c3ea:
	cmp	r7, #0
	bgt	.L8c412
	mov	r7, #1
	b	.L8c412
.L8c3f2:
	mov	r2, #0x34
	ldrsh	r0, [r0, r2]
	mov	r1, #0xa
	add	r0, #5
	bl	__divsi3
	neg	r1, r0
	cmp	r1, #0
	bne	.L8c408
	mov	r1, #1
	neg	r1, r1
.L8c408:
	cmp	r7, #1
	bgt	.L8c412
	mov	r7, #2
	b	.L8c412
.L8c410:
	mov	r1, #0
.L8c412:
	ldrb	r0, [r6]
	sub	r5, #1
	bl	_ModifyHP
	add	r6, #1
	cmp	r5, #0
	bne	.L8c3ba
.L8c420:
	cmp	r7, #0
	beq	.L8c438
	ldr	r0, =0x1ff
	mov	r1, #0
	bl	Func_8091220
	mov	r0, #4
	bl	Func_8091254
	mov	r0, #0x85
	bl	_PlaySound
.L8c438:
	mov	r0, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end UpdatePoison
