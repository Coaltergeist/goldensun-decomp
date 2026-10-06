	.include "macros.inc"

.arm_func_start Func_8015afc  @ 0x08015afc
	push	{r5, r6}
	adr	r5, .L15b30
	ldm	r5, {r2, r3}
	mov	r5, #0xf
	mov	r12, #1
	ands	r6, r0, #3
	beq	.L15b54
	rsbs	r6, r12, r6, lsl #3
	bic	r0, #3
	ldr	r12, [r0], #4
	rrx	r12, r12
	lsr	r12, r6
	b	.L15b54

.L15b30:
	.word	0xfedcba98
	.word	0x76543210

.L15b38:
	orr	r2, r4, r3, lsr #28
	orr	r3, r6, r3, lsl #4
.L15b40:
	and	r6, r3, r5
.L15b44:
	strb	r6, [r1], #1
	lsrs	r12, #1
	bcs	.L15b5c
	strb	r6, [r1], #1
.L15b54:
	lsrs	r12, #1
	bcc	.L15b40
.L15b5c:
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcc	.L15b40
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcc	.L15d10
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcc	.L15cd8
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15bac
	lsr	r4, r3, #28
	orr	r4, r3, lsl #8
	and	r6, r5, r3, lsr #24
	orr	r3, r6, r4, ror #4
	b	.L15b44
.L15bac:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15be4
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15bd8
	ror	r3, #28
	and	r6, r5, r3
	b	.L15b44
.L15bd8:
	and	r6, r5, r2
	bic	r4, r2, #0xf
	b	.L15b38
.L15be4:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15c08
	and	r6, r5, r2, lsr #4
	lsr	r4, r2, #8
	orr	r4, r2, lsl #28
	ror	r4, #24
	b	.L15b38
.L15c08:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15c50
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15c3c
	and	r6, r5, r2, lsr #8
	lsr	r4, r2, #12
	orr	r4, r2, lsl #24
	ror	r4, #20
	b	.L15b38
.L15c3c:
	and	r6, r5, r2, lsr #12
	lsr	r4, r2, #16
	orr	r4, r2, lsl #20
	ror	r4, #16
	b	.L15b38
.L15c50:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15c74
	and	r6, r5, r2, lsr #16
	lsr	r4, r2, #20
	orr	r4, r2, lsl #16
	ror	r4, #12
	b	.L15b38
.L15c74:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15cbc
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15ca8
	and	r6, r5, r2, lsr #20
	lsr	r4, r2, #24
	orr	r4, r2, lsl #12
	ror	r4, #8
	b	.L15b38
.L15ca8:
	and	r6, r5, r2, lsr #24
	lsr	r4, r2, #28
	orr	r4, r2, lsl #8
	ror	r4, #4
	b	.L15b38
.L15cbc:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15d6c
	and	r6, r5, r2, lsr #28
	lsl	r4, r2, #4
	b	.L15b38
.L15cd8:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcc	.L15cfc
	lsr	r4, r3, #24
	orr	r4, r3, lsl #12
	and	r6, r5, r3, lsr #20
	orr	r3, r6, r4, ror #8
	b	.L15b44
.L15cfc:
	lsr	r4, r3, #20
	orr	r4, r3, lsl #16
	and	r6, r5, r3, lsr #16
	orr	r3, r6, r4, ror #12
	b	.L15b44
.L15d10:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcc	.L15d58
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15d44
	lsr	r4, r3, #12
	orr	r4, r3, lsl #24
	and	r6, r5, r3, lsr #8
	orr	r3, r6, r4, ror #20
	b	.L15b44
.L15d44:
	lsr	r4, r3, #16
	orr	r4, r3, lsl #20
	and	r6, r5, r3, lsr #12
	orr	r3, r6, r4, ror #16
	b	.L15b44
.L15d58:
	lsr	r4, r3, #8
	orr	r4, r3, lsl #28
	and	r6, r5, r3, lsr #4
	orr	r3, r6, r4, ror #24
	b	.L15b44
.L15d6c:
	pop	{r5, r6}
	bx	lr
.func_end Func_8015afc

.arm_func_start Func_8015d74  @ 0x08015d74
	push	{r5, r6, r7, r8, r9, r10}
	adr	r10, .L15e04
	ldm	r10, {r4, r6, r7}
.L15d80:
	add	r10, r0, r2, lsl #3
.L15d84:
	add	r9, r1, #0x20
.L15d88:
	ldm	r0, {r5, r12}
	orr	r5, r5, lsr #4
	and	r5, r4
	orr	r5, r5, lsr #8
	and	r5, r6
	orr	r12, r12, lsr #4
	and	r12, r4
	orr	r12, r12, lsr #8
	orr	r12, r5, r12, lsl #16
	orr	r5, r12, r12, lsr #1
	orr	r5, r5, lsr #2
	and	r5, r7
	rsbs	r5, r5, lsl #4
	mvns	r8, r5
	ldrne	r8, [r1]
	bicne	r8, r5
	orrne	r12, r8
	str	r12, [r1], #4
	add	r0, r2, lsl #3
	cmp	r1, r9
	bne	.L15d88
	sub	r0, r2, lsl #6
	add	r0, #8
	cmp	r0, r10
	bne	.L15d84
	add	r0, r2, lsl #6
	sub	r0, r2, lsl #3
	subs	r3, #1
	bne	.L15d80
	pop	{r5, r6, r7, r8, r9, r10}
	bx	lr

.L15e04:
	.word	0xff00ff
	.word	0xffff
	.word	0x11111111
.func_end Func_8015d74

.arm_func_start Func_8015e10  @ 0x08015e10
	push	{r5, r6, r7, r8, r9, r10}
	adr	r10, .L15e80
	ldm	r10, {r4, r6, r7}
.L15e1c:
	add	r10, r0, r2, lsl #3
.L15e20:
	add	r9, r1, #0x20
.L15e24:
	ldm	r0, {r5, r12}
	orr	r5, r5, lsr #4
	and	r5, r4
	orr	r5, r5, lsr #8
	and	r5, r6
	orr	r12, r12, lsr #4
	and	r12, r4
	orr	r12, r12, lsr #8
	orr	r12, r5, r12, lsl #16
	str	r12, [r1], #4
	add	r0, r2, lsl #3
	cmp	r1, r9
	bne	.L15e24
	sub	r0, r2, lsl #6
	add	r0, #8
	cmp	r0, r10
	bne	.L15e20
	add	r0, r2, lsl #6
	sub	r0, r2, lsl #3
	subs	r3, #1
	bne	.L15e1c
	pop	{r5, r6, r7, r8, r9, r10}
	bx	lr

.L15e80:
	.word	0xff00ff
	.word	0xffff
	.word	0x11111111
.func_end Func_8015e10
