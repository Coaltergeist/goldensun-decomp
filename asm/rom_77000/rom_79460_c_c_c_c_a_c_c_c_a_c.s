	.include "macros.inc"

	.section .text.after_djinni, "ax", %progbits

.thumb_func_start Func_807a1f8  @ 0x0807a1f8
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r6, r2
	mov	r7, r0
	bl	GetUnit
	mov	r2, #0x8c
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r0, r3]
	cmp	r3, #0
	beq	.L7a2b2
	mov	r3, #0x8e
	lsl	r3, #1
	add	r2, r5, r3
	ldrb	r3, [r0, r2]
	cmp	r3, #9
	bls	.L7a222
	mov	r3, #0xa
	strb	r3, [r0, r2]
	b	.L7a2b2
.L7a222:
	lsl	r1, r5, #2
	mov	r3, r1
	add	r3, #0xf8
	mov	r2, #1
	ldr	r3, [r0, r3]
	lsl	r2, r6
	and	r3, r2
	cmp	r3, #0
	beq	.L7a2b2
	mov	r4, #0x84
	lsl	r4, #1
	add	r3, r1, r4
	ldr	r3, [r0, r3]
	and	r3, r2
	mov	r0, #0
	cmp	r3, #0
	bne	.L7a2b4
	cmp	r7, #7
	bls	.L7a24a
	mov	r0, #1
.L7a24a:
	bl	Func_8077330
	mov	r2, #0x84
	mov	r3, r0
	lsl	r2, #1
	mov	r1, r3
	add	r3, r2
	ldr	r3, [r3]
	mov	r4, #0
	add	r1, #8
	cmp	r4, r3
	bge	.L7a28c
	ldrb	r3, [r1]
	cmp	r5, r3
	bne	.L7a26e
	ldrb	r3, [r1, #1]
	cmp	r6, r3
	beq	.L7a28c
.L7a26e:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	add	r4, #1
	cmp	r4, r3
	bge	.L7a28c
	lsl	r2, r4, #2
	ldrb	r3, [r1, r2]
	cmp	r5, r3
	bne	.L7a26e
	add	r3, r1, r2
	ldrb	r3, [r3, #1]
	cmp	r6, r3
	bne	.L7a26e
.L7a28c:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L7a2ae
	lsl	r3, r4, #2
	add	r3, r1, r3
	ldrb	r3, [r3, #3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bgt	.L7a2b2
	mov	r4, #2
	neg	r4, r4
	cmp	r3, r4
	beq	.L7a2b2
.L7a2ae:
	mov	r0, #1
	b	.L7a2b4
.L7a2b2:
	mov	r0, #0
.L7a2b4:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a1f8

	.section .text.after, "ax", %progbits
