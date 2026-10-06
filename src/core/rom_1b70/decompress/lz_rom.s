	.include "macros.inc"

.arm_func_start DecompressLZ_ROM  @ 0x08002544
	push	{r5, r6, r7, r9, lr}
	ldrb	r2, [r0], #1
	cmp	r2, #0
	bne	.L2788
	sub	r1, #1
	add	r9, r1, #0x21
	ands	r2, r0, #1
	lsl	r4, r2, #3
	ldrneb	r2, [r0], #1
	subs	r4, #0x10
	blmi	.L2768
	b	.L258c
.L2574:
	strb	r2, [r1, #1]!
	lsr	r2, #8
	subs	r4, #9
	ldrmih	r3, [r0], #2
	addmi	r4, #0x10
	orrmi	r2, r3, lsl r4
.L258c:
	lsrs	r2, #1
	bcs	.L2574
	lsrs	r2, #1
	bcc	.L2648
	lsrs	r2, #1
	bcc	.L260c
	lsrs	r2, #1
	bcc	.L2618
	lsrs	r2, #1
	bcc	.L2628
	lsrs	r2, #1
	bcs	.L25d4
	lsrs	r2, #1
	bcc	.L2638
	subs	r4, #7
	mov	r5, #7
	bpl	.L2650
	blmi	.L2764
.L25d4:
	ands	r5, r2, #3
	lsr	r2, #2
	beq	.L25f0
	add	r5, #7
	subs	r4, #8
	bpl	.L2650
	blmi	.L2764
.L25f0:
	ands	r5, r2, #0x7f
	beq	.L2778
	add	r5, #0xa
	lsr	r2, #7
	subs	r4, #0xf
	bpl	.L2650
	blmi	.L2764
.L260c:
	subs	r4, #3
	mov	r5, #3
	b	.L2650
.L2618:
	subs	r4, #4
	mov	r5, #4
	bpl	.L2650
	blmi	.L2764
.L2628:
	subs	r4, #5
	mov	r5, #5
	bpl	.L2650
	blmi	.L2764
.L2638:
	subs	r4, #7
	mov	r5, #6
	bpl	.L2650
	blmi	.L2764
.L2648:
	subs	r4, #2
	mov	r5, #2
.L2650:
	lsrs	r2, #1
	bcc	.L2698
	and	r6, r2, #0x1f
	subs	r4, #6
	lsr	r2, #5
.L2664:
	ldrmih	r3, [r0], #2
	addmi	r4, #0x10
	orrmi	r2, r3, lsl r4
	lsrs	r5, #1
	ldrcsb	r7, [r1, -r6]
	strcsb	r7, [r1, #1]!
.L267c:
	ldrb	r7, [r1, -r6]
	strb	r7, [r1, #1]!
	ldrb	r7, [r1, -r6]
	strb	r7, [r1, #1]!
	subs	r5, #1
	bne	.L267c
	b	.L258c
.L2698:
	sub	r6, r1, r9
	cmp	r6, #0x800
	bcc	.L26bc
	ror	r6, r2, #12
	lsr	r2, #12
	lsr	r6, #20
	add	r6, #0x20
	subs	r4, #0xd
	b	.L2664
.L26bc:
	mov	r7, #0xb
	lsls	r6, #22
	bcs	.L2744
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2744
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2744
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2744
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2744
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2744
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2744
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2744
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2744
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2744
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2744
	sub	r7, #1
.L2744:
	mov	r6, #1
	rsb	r6, r6, lsl r7
	and	r6, r2, r6
	add	r6, #0x20
	lsr	r2, r7
	sub	r4, #1
	subs	r4, r7
	b	.L2664
.L2764:
	adr	lr, .L2650
.L2768:
	ldrh	r3, [r0], #2
	add	r4, #0x10
	orr	r2, r3, lsl r4
	bx	lr
.L2778:
	sub	r9, #0x21
.L277c:
	sub	r0, r1, r9
	pop	{r5, r6, r7, r9, lr}
	bx	lr
.L2788:
	cmp	r2, #1
	beq	.L2798
	sub	r9, r1, #4
	b	.L277c
.L2798:
	mov	r9, r1
.L279c:
	ldrb	r14, [r0], #1
	mov	r3, #0x1000000
	orrs	r14, r3, r14, lsl #25
	bcs	.L27c0
.L27ac:
	ldrb	r3, [r0], #1
	strb	r3, [r1], #1
.L27b4:
	lsls	r14, #1
	bcc	.L27ac
	beq	.L279c
.L27c0:
	ldrb	r3, [r0], #1
	ldrb	r4, [r0], #1
	and	r2, r3, #0xf0
	orr	r2, r4, r2, lsl #4
	ands	r3, #0xf
	beq	.L27f4
.L27d8:
	ldrb	r4, [r1, -r2]
	strb	r4, [r1], #1
	subs	r3, #1
	bne	.L27d8
	ldrb	r4, [r1, -r2]
	strb	r4, [r1], #1
	b	.L27b4
.L27f4:
	movs	r2, r2
	beq	.L277c
	ldrb	r3, [r0], #1
	add	r3, #0x10
	b	.L27d8
.func_end_emit_size DecompressLZ_ROM, _DECOMPRESS_LZ_SIZE

