	.include "macros.inc"

.arm_func_start Func_8009e7c  @ 0x08009e7c
	push	{r5, r6, r7, r8, r9, r10, r11, lr}
	mov	r4, #0xa00000
	orr	r4, #0x38
	orr	r4, #0xff000000
.L9e8c:
	ldrsh	r6, [r0, #4]
	ldr	r7, [r0, #8]
	ldr	r8, [r0, #0xc]
	ldrsh	r5, [r0], #0x20
	lsl	r7, #15
	lsl	r8, #15
	add	r4, #0x1e000000
.L9ea8:
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r12, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r12, #0
	ldrneb	r12, [r10, r12, lsl #6]
	cmp	r12, #0
	subeq	r11, #0x1000
	ldreqb	r12, [r11]
	subeq	r10, #0x4000
	ldreqb	r12, [r10, r12, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r9, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r9, #0
	ldrneb	r9, [r10, r9, lsl #6]
	cmp	r9, #0
	subeq	r11, #0x1000
	ldreqb	r9, [r11]
	subeq	r10, #0x4000
	ldreqb	r9, [r10, r9, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	orr	r9, r12, r9, lsl #8
	strh	r9, [r1], #2
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r12, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r12, #0
	ldrneb	r12, [r10, r12, lsl #6]
	cmp	r12, #0
	subeq	r11, #0x1000
	ldreqb	r12, [r11]
	subeq	r10, #0x4000
	ldreqb	r12, [r10, r12, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r9, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r9, #0
	ldrneb	r9, [r10, r9, lsl #6]
	cmp	r9, #0
	subeq	r11, #0x1000
	ldreqb	r9, [r11]
	subeq	r10, #0x4000
	ldreqb	r9, [r10, r9, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	orr	r9, r12, r9, lsl #8
	strh	r9, [r1], #2
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r12, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r12, #0
	ldrneb	r12, [r10, r12, lsl #6]
	cmp	r12, #0
	subeq	r11, #0x1000
	ldreqb	r12, [r11]
	subeq	r10, #0x4000
	ldreqb	r12, [r10, r12, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r9, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r9, #0
	ldrneb	r9, [r10, r9, lsl #6]
	cmp	r9, #0
	subeq	r11, #0x1000
	ldreqb	r9, [r11]
	subeq	r10, #0x4000
	ldreqb	r9, [r10, r9, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	orr	r9, r12, r9, lsl #8
	strh	r9, [r1], #2
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r12, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r12, #0
	ldrneb	r12, [r10, r12, lsl #6]
	cmp	r12, #0
	subeq	r11, #0x1000
	ldreqb	r12, [r11]
	subeq	r10, #0x4000
	ldreqb	r12, [r10, r12, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r9, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r9, #0
	ldrneb	r9, [r10, r9, lsl #6]
	cmp	r9, #0
	subeq	r11, #0x1000
	ldreqb	r9, [r11]
	subeq	r10, #0x4000
	ldreqb	r9, [r10, r9, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	orr	r9, r12, r9, lsl #8
	strh	r9, [r1], #2
	add	r1, #0x38
	subs	r4, #0x1000000
	bpl	.L9ea8
	sub	r1, #0x780
	add	r1, #8
	sub	r4, #0x10000
	tst	r4, #0x70000
	addeq	r1, #0x740
	tst	r4, #0xff0000
	bne	.L9e8c
	pop	{r5, r6, r7, r8, r9, r10, r11, lr}
	bx	lr
.func_end Func_8009e7c

