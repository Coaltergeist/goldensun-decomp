	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801e318  @ 0x0801e318
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001e8c
	mov	r2, #0x1e
	ldr	r5, [r3]
	mov	r9, r2
	ldr	r2, =0xea2
	add	r3, r5, r2
	ldrb	r7, [r3]
	mov	r4, r5
	mov	r6, #0x14
.L1e334:
	mov	r3, r9
	cmp	r3, #0
	beq	.L1e384
	ldr	r2, =0x3ff
	ldr	r3, =0x1ff
	mov	r10, r2
	ldr	r2, =0x27f
	mov	r8, r3
	mov	r3, #0xff
	mov	r0, r9
	mov	r14, r2
	mov	r12, r3
.L1e34c:
	ldrh	r3, [r4]
	mov	r1, r10
	and	r1, r3
	mov	r3, r1
	sub	r3, #0x80
	add	r4, #2
	cmp	r3, #0x7f
	bls	.L1e368
	cmp	r7, #0
	beq	.L1e37e
	cmp	r1, r8
	bls	.L1e37e
	cmp	r1, r14
	bhi	.L1e37e
.L1e368:
	mov	r2, r12
	and	r1, r2
	mov	r3, #0x80
	eor	r1, r3
	mov	r3, #0xda
	lsl	r3, #4
	add	r1, r3
	ldrb	r3, [r5, r1]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r5, r1]
.L1e37e:
	sub	r0, #1
	cmp	r0, #0
	bne	.L1e34c
.L1e384:
	sub	r6, #1
	cmp	r6, #0
	bne	.L1e334
	mov	r3, #0xda
	lsl	r3, #4
	mov	r1, #0
	mov	r6, #0xff
	add	r2, r5, r3
.L1e394:
	ldrb	r3, [r2]
	cmp	r3, #1
	bne	.L1e39c
	strb	r1, [r2]
.L1e39c:
	sub	r6, #1
	add	r2, #1
	cmp	r6, #0
	bge	.L1e394
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801e318

