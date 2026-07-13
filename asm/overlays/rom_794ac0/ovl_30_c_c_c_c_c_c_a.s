	.include "macros.inc"

	.section .text.after_c698, "ax", %progbits

.thumb_func_start OvlFunc_899_200c704
	push	{r5, lr}
	ldr	r3, [r0]
	ldr	r2, =0xffc00000
	add	r3, r2
	asr	r4, r3, #19
	ldr	r2, =0xfd900000
	ldr	r3, [r0, #8]
	add	r3, r2
	ldr	r2, =.L4f2c
	asr	r1, r3, #19
	mov	r5, #0
	mov	r0, #0
	b	.L4722
.L471e:
	add	r0, #1
	add	r2, #0x10
.L4722:
	cmp	r0, #0x24
	bhi	.L4740
	ldrb	r3, [r2]
	cmp	r3, r4
	beq	.L4732
	add	r3, #1
	cmp	r3, r4
	bne	.L471e
.L4732:
	ldrb	r3, [r2, #1]
	cmp	r3, r1
	beq	.L473e
	add	r3, #1
	cmp	r3, r1
	bne	.L471e
.L473e:
	mov	r5, r2
.L4740:
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c704

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
.L476e:
	ldrb	r3, [r0, #1]
	lsl	r4, r3, #24
	mov	r2, r14
	lsr	r3, r4, #16
	sub	r3, r2
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0
	bge	.L4782
	neg	r2, r2
.L4782:
	ldrb	r3, [r0]
	cmp	r3, #0xff
	beq	.L4794
	cmp	r2, r7
	bge	.L4794
	ldrb	r3, [r0]
	mov	r7, r2
	mov	r12, r3
	asr	r1, r4, #16
.L4794:
	add	r5, #1
	add	r0, #4
	cmp	r5, #2
	bls	.L476e
	mov	r2, #1
	neg	r2, r2
	mov	r0, #0
	cmp	r12, r2
	beq	.L47b0
	mov	r3, r12
	lsl	r0, r3, #4
	ldr	r3, =.L4f2c
	strh	r1, [r6]
	add	r0, r3
.L47b0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c754

	.section .text.after_c7bc, "ax", %progbits
