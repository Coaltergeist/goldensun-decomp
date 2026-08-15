	.include "macros.inc"

.arm_func_start Func_800a37c  @ 0x0800a37c
	push	{r5, r6, r7, r8}
	mov	r5, #0xff000000
	orr	r5, r5, lsr #4
	orr	r4, r5, r5, lsr #8
	add	r4, #1
	mov	r6, #0x4000
.La394:
	ldrh	r12, [r0], #2
	cmp	r5, r12, lsl #20
	bne	.La3ac
	add	r12, r4
	cmp	r4, #0
	addne	r4, #1
.La3ac:
	strh	r12, [r1], #4
	subs	r6, #1
	bne	.La394
	add	r0, r2, #0x4000
	sub	r1, #0x10000
	add	r1, #2
	mov	r5, #0xff
	orr	r5, r5, lsl #16
	mov	r8, #0x1000
.La3d0:
	ldr	r4, [r2], #4
	ldr	r12, [r0], #4
	and	r3, r4, r5
	and	r6, r12, r5
	orr	r3, r6, lsl #8
	and	r7, r4, r5, lsl #8
	and	r6, r12, r5, lsl #8
	orr	r7, r6, r7, lsr #8
	strh	r3, [r1], #4
	strh	r7, [r1], #4
	ror	r3, #16
	ror	r7, #16
	strh	r3, [r1], #4
	strh	r7, [r1], #4
	subs	r8, #1
	bne	.La3d0
	pop	{r5, r6, r7, r8}
	bx	lr
.func_end Func_800a37c

