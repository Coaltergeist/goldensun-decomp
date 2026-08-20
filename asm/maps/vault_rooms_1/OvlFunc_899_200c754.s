	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_200c754
	push	{r5, r6, r7, lr}
	mov	r2, #1
	mov	r6, r1
	neg	r2, r2
	mov	r12, r2
	ldrh	r2, [r6]
	mov	r7, #0x80
	mov	r3, #0
	ldrsh	r1, [r6, r3]
	add	r0, #4
	lsl	r7, #8
	mov	r5, #0
	mov	r14, r2
.Lm899_476e:
	ldrb	r3, [r0, #1]
	lsl	r4, r3, #24
	mov	r2, r14
	lsr	r3, r4, #16
	sub	r3, r2
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0
	bge	.Lm899_4782
	neg	r2, r2
.Lm899_4782:
	ldrb	r3, [r0]
	cmp	r3, #0xff
	beq	.Lm899_4794
	cmp	r2, r7
	bge	.Lm899_4794
	ldrb	r3, [r0]
	mov	r7, r2
	mov	r12, r3
	asr	r1, r4, #16
.Lm899_4794:
	add	r5, #1
	add	r0, #4
	cmp	r5, #2
	bls	.Lm899_476e
	mov	r2, #1
	neg	r2, r2
	mov	r0, #0
	cmp	r12, r2
	beq	.Lm899_47b0
	mov	r3, r12
	lsl	r0, r3, #4
	ldr	r3, =.Lm899_4f2c
	strh	r1, [r6]
	add	r0, r3
.Lm899_47b0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c754

