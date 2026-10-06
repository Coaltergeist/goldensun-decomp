	.include "macros.inc"

.arm_func_start DecompressLZ2_ROM  @ 0x08002808
	ldrb	r2, [r0], #1
	cmp	r2, #2
	movne	r0, #4
	bxne	lr
	push	{r5, r6, r7, r8, r9, r10, r11, lr}
	adr	r12, .L2848
	ldm	r12, {r10, r11}
	mov	r12, #0xf
	sub	r1, #1
	add	r9, r1, #0x21
	ands	r2, r0, #1
	lsl	r4, r2, #3
	ldrneb	r2, [r0], #1
	subs	r4, #0x10
	blmi	.L2ae8
	b	.L2910
.L2848:
	.word	0xfedcba98
	.word	0x76543210
.L2850:
	and	r8, r2, #0xf
	adr	r9, .L2b08
	mov	lr, pc
	add	pc, r9, r8, lsl #5
	mov	r5, r8
	and	r8, r2, #0xf0
	adr	r9, .L2b08
	mov	r14, pc
	add	pc, r9, r8, lsl #1
	orr	r5, r8, lsl #4
	lsr	r2, #8
	subs	r4, #0xb
	blmi	.L2ae8
	b	.L2908
.L2888:
	lsrs	r2, #1
	bcc	.L2850
	and	r8, r2, #7
	adr	r9, .L2b08
	mov	r14, pc
	add	pc, r9, r8, lsl #5
	mov	r5, r8
	and	r8, r2, #0x38
	adr	r9, .L2b08
	mov	lr, pc
	add	pc, r9, r8, lsl #2
	orr	r5, r8, lsl #4
	lsr	r2, #6
	subs	r4, #9
	blmi	.L2ae8
	b	.L2908
.L28c8:
	push	{r5, r9}
	lsrs	r2, #1
	bcc	.L2888
	and	r8, r2, #3
	adr	r9, .L2b08
	mov	lr, pc
	add	pc, r9, r8, lsl #5
	mov	r5, r8
	and	r8, r2, #0xc
	adr	r9, .L2b08
	mov	lr, pc
	add	pc, r9, r8, lsl #3
	orr	r5, r8, lsl #4
	lsr	r2, #4
	subs	r4, #6
	blmi	.L2ae8
.L2908:
	strb	r5, [r1, #1]!
	pop	{r5, r9}
.L2910:
	lsrs	r2, #1
	bcs	.L28c8
	lsrs	r2, #1
	bcc	.L29cc
	lsrs	r2, #1
	bcc	.L2990
	lsrs	r2, #1
	bcc	.L299c
	lsrs	r2, #1
	bcc	.L29ac
	lsrs	r2, #1
	bcs	.L2958
	lsrs	r2, #1
	bcc	.L29bc
	subs	r4, #7
	mov	r5, #6
	bpl	.L29d4
	blmi	.L2ae4
.L2958:
	ands	r5, r2, #3
	lsr	r2, #2
	beq	.L2974
	add	r5, #6
	subs	r4, #8
	bpl	.L29d4
	blmi	.L2ae4
.L2974:
	ands	r5, r2, #0x7f
	beq	.L2af8
	add	r5, #9
	lsr	r2, #7
	subs	r4, #0xf
	bpl	.L29d4
	blmi	.L2ae4
.L2990:
	subs	r4, #3
	mov	r5, #2
	b	.L29d4
.L299c:
	subs	r4, #4
	mov	r5, #3
	bpl	.L29d4
	blmi	.L2ae4
.L29ac:
	subs	r4, #5
	mov	r5, #4
	bpl	.L29d4
	blmi	.L2ae4
.L29bc:
	subs	r4, #7
	mov	r5, #5
	bpl	.L29d4
	blmi	.L2ae4
.L29cc:
	subs	r4, #2
	mov	r5, #1
.L29d4:
	lsrs	r2, #1
	bcc	.L2a18
	and	r6, r2, #0x1f
	subs	r4, #6
	lsr	r2, #5
.L29e8:
	blmi	.L2ae8
	ldrb	r7, [r1, -r6]
	strb	r7, [r1, #1]!
.L29f4:
	ldrb	r7, [r1, -r6]
	strb	r7, [r1, #1]!
	subs	r5, #1
	beq	.L2910
	ldrb	r7, [r1, -r6]
	strb	r7, [r1, #1]!
	subs	r5, #1
	bne	.L29f4
	b	.L2910
.L2a18:
	sub	r6, r1, r9
	cmp	r6, #0x800
	bcc	.L2a3c
	ror	r6, r2, #12
	lsr	r2, #12
	lsr	r6, #20
	add	r6, #0x20
	subs	r4, #0xd
	b	.L29e8
.L2a3c:
	mov	r7, #0xb
	lsls	r6, #22
	bcs	.L2ac4
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2ac4
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2ac4
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2ac4
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2ac4
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2ac4
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2ac4
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2ac4
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2ac4
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2ac4
	sub	r7, #1
	lsls	r6, #1
	bcs	.L2ac4
	sub	r7, #1
.L2ac4:
	mov	r6, #1
	rsb	r6, r6, lsl r7
	and	r6, r2, r6
	add	r6, #0x20
	lsr	r2, r7
	sub	r4, #1
	subs	r4, r7
	b	.L29e8
.L2ae4:
	adr	lr, .L29d4
.L2ae8:
	ldrh	r3, [r0], #2
	add	r4, #0x10
	orr	r2, r3, lsl r4
	bx	lr
.L2af8:
	sub	r9, #0x21
	sub	r0, r1, r9
	pop	{r5, r6, r7, r8, r9, r10, r11, lr}
	bx	lr
.L2b08:
	and	r8, r12, r11
	bx	lr
	nop
	nop
	nop
	nop
	nop
	nop
	lsr	r9, r11, #8
	orr	r9, r11, lsl #28
	and	r8, r12, r11, lsr #4
	orr	r11, r8, r9, ror #24
	bx	lr
	nop
	nop
	nop
	lsr	r9, r11, #12
	orr	r9, r11, lsl #24
	and	r8, r12, r11, lsr #8
	orr	r11, r8, r9, ror #20
	bx	lr
	nop
	nop
	nop
	lsr	r9, r11, #16
	orr	r9, r11, lsl #20
	and	r8, r12, r11, lsr #12
	orr	r11, r8, r9, ror #16
	bx	lr
	nop
	nop
	nop
	lsr	r9, r11, #20
	orr	r9, r11, lsl #16
	and	r8, r12, r11, lsr #16
	orr	r11, r8, r9, ror #12
	bx	lr
	nop
	nop
	nop
	lsr	r9, r11, #24
	orr	r9, r11, lsl #12
	and	r8, r12, r11, lsr #20
	orr	r11, r8, r9, ror #8
	bx	lr
	nop
	nop
	nop
	lsr	r9, r11, #28
	orr	r9, r11, lsl #8
	and	r8, r12, r11, lsr #24
	orr	r11, r8, r9, ror #4
	bx	lr
	nop
	nop
	nop
	ror	r11, #28
	and	r8, r12, r11
	bx	lr
	nop
	nop
	nop
	nop
	nop
	and	r8, r12, r10
	bic	r9, r10, #0xf
.L2c10:
	orr	r10, r9, r11, lsr #28
	orr	r11, r8, r11, lsl #4
	bx	lr
	nop
	nop
	nop
	and	r8, r12, r10, lsr #4
	lsr	r9, r10, #8
	orr	r9, r10, lsl #28
	ror	r9, #24
	b	.L2c10
	nop
	nop
	nop
	and	r8, r12, r10, lsr #8
	lsr	r9, r10, #12
	orr	r9, r10, lsl #24
	ror	r9, #20
	b	.L2c10
	nop
	nop
	nop
	and	r8, r12, r10, lsr #12
	lsr	r9, r10, #16
	orr	r9, r10, lsl #20
	ror	r9, #16
	b	.L2c10
	nop
	nop
	nop
	and	r8, r12, r10, lsr #16
	lsr	r9, r10, #20
	orr	r9, r10, lsl #16
	ror	r9, #12
	b	.L2c10
	nop
	nop
	nop
	and	r8, r12, r10, lsr #20
	lsr	r9, r10, #24
	orr	r9, r10, lsl #12
	ror	r9, #8
	b	.L2c10
	nop
	nop
	nop
	and	r8, r12, r10, lsr #24
	lsr	r9, r10, #28
	orr	r9, r10, lsl #8
	ror	r9, #4
	b	.L2c10
	nop
	nop
	nop
	and	r8, r12, r10, lsr #28
	lsl	r9, r10, #4
	b	.L2c10
.func_end_emit_size DecompressLZ2_ROM, _DECOMPRESS_LZ2_SIZE

.arm_func_start UploadPalette_ROM  @ 0x08002cf4
	stmfd	sp!, {r5}
	add	r0, #4
.L2cfc:
	ldm	r0!, {r2, r3, r4}
	ands	r12, r4, #0x30000
	beq	.L2d4c
	tst	r4, #0xc0000
	beq	.L2d2c
	cmp	r12, #0x20000
	ldrccb	r5, [r3]
	ldreqh	r5, [r3]
	ldrgt	r5, [r3]
	tst	r4, #0x40000
	orrne	r2, r5, r2
	biceq	r2, r5, r2
.L2d2c:
	cmp	r12, #0x20000
	strccb	r2, [r3]
	streqh	r2, [r3]
	strgt	r2, [r3]
.L2d3c:
	subs	r1, #1
	bgt	.L2cfc
	ldmfd	sp!, {r5}
	bx	lr
.L2d4c:
	mov	r12, #0x4000000
	add	r12, #0xd4
	stm	r12, {r2, r3, r4}
	b	.L2d3c
.func_end_emit_size UploadPalette_ROM, _UPLOAD_PALETTE_SIZE

