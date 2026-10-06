	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_807a550  @ 0x0807a550
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, #0
	bl	Func_8077330
	mov	r2, r0
	mov	r1, r2
	mov	r6, #0
	add	r1, #8
	cmp	r5, #0
	beq	.L7a574
	add	r3, r5, #3
	strb	r6, [r3]
	add	r3, r5, #2
	strb	r6, [r3]
	add	r3, r5, #1
	strb	r6, [r3]
	strb	r6, [r5]
.L7a574:
	mov	r3, #0x84
	lsl	r3, #1
	add	r0, r2, r3
	ldr	r3, [r0]
	mov	r4, #0
	cmp	r3, #0
	beq	.L7a5a6
	mov	r7, #1
	neg	r7, r7
.L7a586:
	mov	r3, #3
	ldrsb	r3, [r1, r3]
	cmp	r3, r7
	bne	.L7a59c
	cmp	r5, #0
	beq	.L7a59a
	ldrb	r2, [r1]
	ldrb	r3, [r5, r2]
	add	r3, #1
	strb	r3, [r5, r2]
.L7a59a:
	add	r6, #1
.L7a59c:
	ldr	r3, [r0]
	add	r4, #1
	add	r1, #4
	cmp	r4, r3
	bne	.L7a586
.L7a5a6:
	mov	r0, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a550

