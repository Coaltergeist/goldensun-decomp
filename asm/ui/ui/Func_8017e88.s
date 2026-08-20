	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8017e88  @ 0x08017e88
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x20
	mov	r10, r0
	mov	r5, r1
	mov	r0, r2
	ldr	r1, [sp, #0x3c]
	ldr	r2, [sp, #0x44]
	mov	r7, r3
	mov	r3, r10
	mov	r8, r1
	mov	r14, r2
	cmp	r3, #0
	beq	.L17ec8
	ldr	r3, .L17edc	@ 0x20
	lsl	r2, r0, #1
	strh	r3, [r2, r7]
	ldr	r2, =0x1ff
	add	r0, #1
	and	r0, r2
	lsl	r3, r0, #1
	ldr	r1, .L17ee0	@ 0xa
	add	r0, #1
	and	r0, r2
	strh	r1, [r3, r7]
	lsl	r3, r0, #1
	strh	r1, [r3, r7]
	add	r0, #1
	and	r0, r2
.L17ec8:
	mov	r4, r8
	cmp	r4, #1
	beq	.L17ee8
	cmp	r4, #3
	bne	.L17f6a
	ldr	r6, [sp, #0x40]
	cmp	r6, #0
	bne	.L17f6a
	b	.L17ee8

	.align	2, 0
.L17edc:
	.word	0x20
.L17ee0:
	.word	0xa
	.pool

.L17ee8:
	mov	r9, sp
	ldr	r3, =.L33e40
	mov	r1, #0
	mov	r2, r9
	mov	r12, r1
	ldmia	r3!, {r1, r4, r6}
	stmia	r2!, {r1, r4, r6}
	ldmia	r3!, {r1, r4, r6}
	stmia	r2!, {r1, r4, r6}
	ldmia	r3!, {r4, r6}
	stmia	r2!, {r4, r6}
	ldrh	r2, [r5]
	cmp	r2, #0x1d
	bne	.L17f0c
	ldrh	r3, [r5, #2]
	sub	r3, #1
	mov	r12, r3
	add	r5, #4
.L17f0c:
	mov	r1, r12
	cmp	r1, #0
	bne	.L17f2e
	cmp	r2, #0x41
	beq	.L17f2a
	cmp	r2, #0x49
	beq	.L17f2a
	cmp	r2, #0x55
	beq	.L17f2a
	cmp	r2, #0x45
	beq	.L17f2a
	mov	r3, #1
	mov	r12, r3
	cmp	r2, #0x4f
	bne	.L17f2e
.L17f2a:
	mov	r4, #2
	mov	r12, r4
.L17f2e:
	mov	r3, #7
	mov	r6, r12
	and	r6, r3
	lsl	r3, r6, #2
	mov	r1, r9
	ldr	r4, [r1, r3]
	ldrb	r3, [r4]
	lsl	r1, r3, #24
	mov	r6, #0
	add	r4, #1
	cmp	r1, #0
	beq	.L17f74
	ldr	r2, =0x1ff
	mov	r12, r2
.L17f4a:
	lsl	r2, r0, #1
	asr	r3, r1, #24
	strh	r3, [r2, r7]
	add	r0, #1
	mov	r3, r12
	add	r6, #1
	and	r0, r3
	cmp	r6, #7
	bgt	.L17f74
	ldrb	r3, [r4]
	lsl	r3, #24
	add	r4, #1
	mov	r1, r3
	cmp	r3, #0
	bne	.L17f4a
	b	.L17f74
.L17f6a:
	ldrh	r3, [r5]
	ldrh	r2, [r5]
	cmp	r3, #0x1d
	bne	.L17f76
	add	r5, #4
.L17f74:
	ldrh	r2, [r5]
.L17f76:
	mov	r3, r2
	cmp	r3, #0
	beq	.L17fb8
	ldr	r6, =0x1ff
	mov	r4, #1
	mov	r1, #0
.L17f82:
	lsl	r2, #16
	asr	r2, #16
	lsl	r3, r0, #1
	strh	r2, [r3, r7]
	lsl	r2, #16
	add	r0, #1
	lsr	r2, #16
	add	r5, #2
	and	r0, r6
	cmp	r2, #0x53
	beq	.L17f9c
	cmp	r2, #0x73
	bne	.L17fac
.L17f9c:
	mov	r2, r14
	str	r4, [r2]
	b	.L17fb0

	.pool_aligned

.L17fac:
	mov	r3, r14
	str	r1, [r3]
.L17fb0:
	ldrh	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	bne	.L17f82
.L17fb8:
	mov	r4, r8
	cmp	r4, #2
	beq	.L17fc8
	cmp	r4, #3
	bne	.L17fe8
	ldr	r6, [sp, #0x40]
	cmp	r6, #0
	beq	.L17fe8
.L17fc8:
	mov	r1, r14
	ldr	r3, [r1]
	cmp	r3, #0
	beq	.L17fdc
	ldr	r2, .L18004	@ 0x65
	lsl	r3, r0, #1
	strh	r2, [r3, r7]
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
.L17fdc:
	ldr	r2, .L18008	@ 0x73
	lsl	r3, r0, #1
	strh	r2, [r3, r7]
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
.L17fe8:
	mov	r2, r10
	cmp	r2, #0
	beq	.L18024
	ldr	r1, =0x1ff
	ldr	r3, .L1800c	@ 0xa
	lsl	r2, r0, #1
	add	r0, #1
	strh	r3, [r2, r7]
	and	r0, r1
	ldr	r3, .L18010	@ 8
	lsl	r2, r0, #1
	add	r0, #1
	strh	r3, [r2, r7]
	b	.L18018

	.align	2, 0
.L18004:
	.word	0x65
.L18008:
	.word	0x73
.L1800c:
	.word	0xa
.L18010:
	.word	8
	.pool

.L18018:
	and	r0, r1
	ldr	r3, =0x20
	lsl	r2, r0, #1
	strh	r3, [r2, r7]
	add	r0, #1
	and	r0, r1
.L18024:
	add	sp, #0x20
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8017e88

