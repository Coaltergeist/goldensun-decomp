	.include "macros.inc"

.thumb_func_start Func_808b25c
	push	{r5, r6, lr}
	ldr	r2, =gState
	mov	r3, #0xe0
	mov	r12, r2
	lsl	r3, #1
	ldr	r4, =.L9e270
	add	r3, r12
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldmia	r4!, {r2}
	cmp	r2, #0
	beq	.L8b294
	cmp	r2, r0
	beq	.L8b294
	mov	r6, #0x80
	ldr	r5, =0xffff
	lsl	r6, #24
.L8b27e:
	mov	r3, r2
	and	r3, r6
	cmp	r3, #0
	beq	.L8b28a
	mov	r1, r5
	and	r1, r2
.L8b28a:
	ldmia	r4!, {r2}
	cmp	r2, #0
	beq	.L8b294
	cmp	r2, r0
	bne	.L8b27e
.L8b294:
	mov	r3, #0xeb
	lsl	r3, #1
	add	r3, r12
	strh	r1, [r3]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_808b25c

.thumb_func_start Func_808b2b0
	push	{lr}
	sub	r0, #1
	cmp	r0, #6
	bhi	.L8b2f0
	ldr	r2, =.L8b2c0
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L8b2c0:
	.word	.L8b2dc
	.word	.L8b2e0
	.word	.L8b2e4
	.word	.L8b2e8
	.word	.L8b2ec
	.word	.L8b2ec
	.word	.L8b2e8
.L8b2dc:
	ldr	r2, =0x38
	b	.L8b2f2
.L8b2e0:
	ldr	r2, =0x3a
	b	.L8b2f2
.L8b2e4:
	ldr	r2, =0x3c
	b	.L8b2f2
.L8b2e8:
	ldr	r2, =0x36
	b	.L8b2f2
.L8b2ec:
	ldr	r2, =0x37
	b	.L8b2f2
.L8b2f0:
	ldr	r2, =0x39
.L8b2f2:
	ldr	r3, =gState
	mov	r1, #0xeb
	lsl	r1, #1
	add	r3, r1
	strh	r2, [r3]
	pop	{r0}
	bx	r0
.func_end Func_808b2b0

.thumb_func_start Func_808b320
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

