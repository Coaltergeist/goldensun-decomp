	.include "macros.inc"
	.include "gba.inc"




	.section .text.after_timers, "ax", %progbits


	.section .text.after_574, "ax", %progbits

.thumb_func_start Func_80bf5a8  @ 0x080bf5a8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #4
	bl	_Func_8077330
	mov	r1, #0x84
	mov	r3, r0
	lsl	r1, #1
	mov	r7, r3
	add	r3, r1
	ldr	r3, [r3]
	mov	r2, #0
	add	r7, #8
	mov	r8, r2
	cmp	r2, r3
	bge	.Lbf600
	mov	r5, r7
.Lbf5ce:
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	ble	.Lbf5ee
	ldrb	r0, [r5, #2]
	str	r2, [sp]
	bl	_GetUnit
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	ldr	r2, [sp]
	cmp	r3, #0
	beq	.Lbf5ee
	ldrb	r3, [r5, #3]
	sub	r3, #1
	strb	r3, [r5, #3]
.Lbf5ee:
	mov	r1, #0x80
	mov	r3, #1
	lsl	r1, #1
	add	r8, r3
	add	r3, r7, r1
	ldr	r3, [r3]
	add	r5, #4
	cmp	r8, r3
	blt	.Lbf5ce
.Lbf600:
	mov	r1, #0x80
	mov	r3, #0
	lsl	r1, #1
	mov	r8, r3
	add	r3, r7, r1
	ldr	r3, [r3]
	cmp	r8, r3
	bge	.Lbf64c
	mov	r6, r7
.Lbf612:
	mov	r3, #3
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	bne	.Lbf63a
	ldrb	r5, [r6, #2]
	ldrb	r1, [r6]
	ldrb	r2, [r6, #1]
	mov	r0, r5
	bl	_SetDjinni
	ldrb	r2, [r6, #1]
	ldrb	r1, [r6]
	mov	r0, r5
	bl	_Func_807a3a8
	mov	r0, r5
	bl	_CalcStats
	mov	r2, #1
	b	.Lbf640
.Lbf63a:
	mov	r3, #1
	add	r6, #4
	add	r8, r3
.Lbf640:
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r3, [r3]
	cmp	r8, r3
	blt	.Lbf612
.Lbf64c:
	mov	r0, r2
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bf5a8
