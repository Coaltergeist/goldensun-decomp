	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8019000  @ 0x08019000
	push	{r5, r6, r7, lr}
	mov	r4, r3
	ldr	r3, =iwram_3001e8c
	ldr	r6, [r3]
	ldrh	r3, [r0, #0xa]
	mov	r7, r1
	add	r4, #1
	mov	r1, r2
	sub	r3, #1
	ldr	r2, [sp, #0x10]
	add	r1, #1
	cmp	r4, r3
	bhi	.L19082
	ldrh	r3, [r0, #8]
	sub	r3, #1
	cmp	r1, r3
	bhi	.L19082
	mov	r5, #0xf0
	lsl	r5, #8
	cmp	r2, #3
	beq	.L19042
	cmp	r2, #3
	bhi	.L19038
	mov	r5, #0xe0
	lsl	r5, #8
	cmp	r2, #2
	beq	.L19042
	b	.L19040
.L19038:
	mov	r5, #0x80
	lsl	r5, #5
	cmp	r2, #4
	beq	.L19042
.L19040:
	mov	r5, #0
.L19042:
	cmp	r2, #1
	beq	.L19082
	cmp	r2, #1
	bcc	.L1906a
	cmp	r2, #4
	bhi	.L1906a
	ldrh	r2, [r0, #0xe]
	ldrh	r3, [r0, #0xc]
	add	r2, r4
	add	r3, r1
	lsl	r2, #5
	add	r0, r2, r3
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r0, r3
	bcs	.L19082
	lsl	r3, r0, #1
	orr	r5, r7
	strh	r5, [r6, r3]
	b	.L19082
.L1906a:
	ldrh	r2, [r0, #0xe]
	ldrh	r3, [r0, #0xc]
	add	r2, r4
	add	r3, r1
	lsl	r2, #5
	add	r0, r2, r3
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r0, r3
	bcs	.L19082
	lsl	r3, r0, #1
	strh	r7, [r6, r3]
.L19082:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8019000

