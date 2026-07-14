	.include "macros.inc"

	.section .text.before, "ax", %progbits

	.section .text.after_8b2b0, "ax", %progbits

.thumb_func_start Func_808b320  @ 0x0808b320
	push	{r5, r6, r7, lr}
	lsl	r0, #4
	add	r0, r1
	lsl	r0, #16
	asr	r7, r0, #16
	mov	r0, #0xb6
	lsl	r0, #1
	ldr	r5, =.L9e488
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8b33c
	mov	r6, #0x12
	b	.L8b37a
.L8b33c:
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	lsl	r2, r3, #16
	lsr	r1, r2, #16
	add	r5, #2
	cmp	r1, #0
	beq	.L8b37a
	lsl	r3, r7, #16
	lsr	r0, r3, #16
	cmp	r1, r0
	beq	.L8b37a
	mov	r4, #0x80
	ldr	r1, =0xfff
	lsl	r4, #8
	mov	r12, r0
.L8b35a:
	lsr	r2, #16
	mov	r3, r2
	and	r3, r4
	cmp	r3, #0
	beq	.L8b368
	mov	r6, r2
	and	r6, r1
.L8b368:
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	lsl	r2, r3, #16
	lsr	r3, r2, #16
	add	r5, #2
	cmp	r3, #0
	beq	.L8b37a
	cmp	r3, r12
	bne	.L8b35a
.L8b37a:
	ldr	r3, =gState
	mov	r2, #0xf7
	lsl	r2, #1
	add	r3, r2
	strh	r6, [r3]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808b320
