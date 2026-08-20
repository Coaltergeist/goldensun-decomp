	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801be80  @ 0x0801be80
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r1, #0xe7
	mov	r5, r0
	lsl	r1, #2
	add	r3, r5, r1
	ldrh	r2, [r3]
	ldr	r3, =0x39e
	add	r3, r5
	mov	r10, r3
	ldrh	r3, [r3]
	mov	r0, #0
	add	r2, r3
	mov	r8, r0
	mov	r0, r5
	mov	r9, r2
	bl	Func_801ba34
	mov	r0, r10
	ldrh	r1, [r0]
	mov	r0, r5
	bl	Func_801b9a8
	ldr	r1, =0x3a2
	mov	r3, #0x21
	add	r2, r5, r1
	strh	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, =0x2e2
	ldr	r0, =0x2fa
	mov	r7, #0
	add	r3, r5, r2
	strh	r7, [r5, #0xa]
	strh	r7, [r5, #0x3e]
	strh	r7, [r3]
	add	r3, r5, r0
	strh	r7, [r3]
	bl	Func_801c21c
	mov	r1, #0xd2
	lsl	r1, #2
	add	r3, r5, r1
	ldr	r6, [r3]
	cmp	r6, #0
	beq	.L1befc
	mov	r2, r10
	ldrh	r3, [r2]
	cmp	r3, #0
	beq	.L1befc
.L1beec:
	ldr	r6, [r6, #4]
	mov	r3, #1
	add	r8, r3
	cmp	r6, #0
	beq	.L1befc
	ldrh	r3, [r2]
	cmp	r3, r8
	bne	.L1beec
.L1befc:
	ldrh	r3, [r6, #0x10]
	strh	r3, [r6, #0x1c]
	ldrh	r3, [r6, #0x12]
	mov	r0, #0xd2
	strh	r3, [r6, #0x1e]
	lsl	r0, #2
	add	r3, r5, r0
	ldr	r7, [r3]
	cmp	r7, #0
	beq	.L1bf2c
.L1bf10:
	cmp	r7, r6
	beq	.L1bf26
	ldrh	r3, [r6, #0x10]
	strh	r3, [r7, #0x18]
	mov	r0, #0x10
	ldrsh	r2, [r7, r0]
	mov	r1, #0x10
	ldrsh	r3, [r6, r1]
	sub	r3, r2
	asr	r3, #1
	strh	r3, [r7, #0x14]
.L1bf26:
	ldr	r7, [r7, #4]
	cmp	r7, #0
	bne	.L1bf10
.L1bf2c:
	mov	r0, #2
	bl	WaitFrames
	mov	r1, #0xd2
	lsl	r1, #2
	add	r3, r5, r1
	ldr	r7, [r3]
	cmp	r7, #0
	beq	.L1bf56
	mov	r2, #0
	mov	r8, r2
.L1bf42:
	cmp	r7, r6
	beq	.L1bf50
	ldrh	r0, [r7, #0xc]
	bl	Func_8003f3c
	mov	r3, r8
	strh	r3, [r7, #0xa]
.L1bf50:
	ldr	r7, [r7, #4]
	cmp	r7, #0
	bne	.L1bf42
.L1bf56:
	mov	r0, #0xd2
	lsl	r0, #2
	add	r3, r5, r0
	str	r6, [r3]
	mov	r3, #0
	str	r3, [r6]
	str	r3, [r6, #4]
	mov	r1, #0xd3
	mov	r3, #4
	strh	r3, [r6, #0x18]
	lsl	r1, #2
	add	r3, r5, r1
	ldr	r7, [r3]
	mov	r2, #0
	mov	r8, r2
	cmp	r7, #0
	beq	.L1bf88
.L1bf78:
	ldrh	r3, [r6, #0x18]
	add	r3, #0x10
	strh	r3, [r6, #0x18]
	ldr	r7, [r7, #4]
	mov	r3, #1
	add	r8, r3
	cmp	r7, #0
	bne	.L1bf78
.L1bf88:
	mov	r0, r8
	lsl	r1, r0, #1
	mov	r3, #0xe9
	mov	r0, #0xe7
	lsl	r3, #2
	lsl	r0, #2
	add	r2, r1, r3
	add	r3, r5, r0
	ldrh	r3, [r3]
	strh	r3, [r5, r2]
	ldr	r3, =0x39e
	mov	r2, #0xeb
	lsl	r2, #2
	add	r0, r1, r2
	add	r1, r5, r3
	ldrh	r3, [r1]
	add	r2, r5, #2
	strh	r3, [r2, r0]
	mov	r0, #0x10
	ldrsh	r2, [r6, r0]
	mov	r0, #0x18
	ldrsh	r3, [r6, r0]
	ldr	r0, =0x39a
	sub	r3, r2
	mov	r2, #0
	mov	r8, r2
	asr	r3, #1
	strh	r3, [r6, #0x14]
	mov	r2, r8
	add	r3, r5, r0
	strh	r2, [r3]
	ldr	r3, .L1bff8	@ 0x80
	ldrh	r2, [r1]
	orr	r3, r2
	strh	r3, [r1]
	mov	r0, #2
	bl	WaitFrames
	mov	r0, #1
	bl	Func_801a910
	ldrh	r3, [r6, #0xa]
	mov	r7, r0
	strh	r3, [r7, #0xa]
	ldrh	r3, [r6, #0x20]
	strh	r3, [r7, #0x20]
	ldrh	r3, [r6, #8]
	strh	r3, [r7, #8]
	ldrh	r3, [r6, #0xc]
	strh	r3, [r7, #0xc]
	ldrh	r3, [r6, #0xe]
	strh	r3, [r7, #0xe]
	ldrh	r2, [r6, #0x10]
	strh	r2, [r7, #0x10]
	b	.L1c010

	.align	2, 0
.L1bff8:
	.word	0x80
	.pool

.L1c010:
	ldrh	r3, [r6, #0x12]
	strh	r2, [r7, #0x18]
	strh	r3, [r7, #0x12]
	strh	r3, [r7, #0x1a]
	ldrh	r3, [r6, #0x1c]
	strh	r3, [r7, #0x1c]
	ldrh	r3, [r6, #0x1e]
	strh	r3, [r7, #0x1e]
	mov	r3, r8
	strh	r3, [r7, #0x14]
	mov	r3, #0x80
	lsl	r3, #1
	mov	r0, r8
	strh	r0, [r7, #0x16]
	strh	r3, [r7, #0x22]
	strh	r3, [r7, #0x26]
	mov	r0, r7
	add	r0, #0x28
	ldrb	r3, [r0, #5]
	mov	r2, #0xd
	neg	r2, r2
	and	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	ldrb	r1, [r0, #7]
	and	r2, r3
	mov	r4, #0x3f
	add	r3, #0x10
	and	r2, r3
	mov	r3, r4
	and	r3, r1
	and	r2, r4
	mov	r1, #0x40
	strb	r2, [r0, #5]
	orr	r3, r1
	ldrb	r2, [r0, #9]
	strb	r3, [r0, #7]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r0, #9]
	ldrh	r3, [r7, #0xe]
	ldr	r2, =0x3ff
	ldrh	r1, [r0, #8]
	and	r2, r3
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	mov	r2, #0xd2
	mov	r1, r8
	lsl	r2, #2
	strh	r3, [r0, #8]
	strh	r1, [r6, #0xa]
	add	r3, r5, r2
	mov	r0, r8
	mov	r1, #0xd3
	str	r0, [r3]
	lsl	r1, #2
	add	r0, r5, r1
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L1c0a4
	mov	r6, r3
	ldr	r2, [r6, #4]
	cmp	r2, #0
	beq	.L1c09c
.L1c092:
	mov	r6, r2
	ldr	r3, [r6, #4]
	mov	r2, r3
	cmp	r3, #0
	bne	.L1c092
.L1c09c:
	mov	r3, #0
	str	r7, [r6, #4]
	str	r6, [r7]
	b	.L1c0a8
.L1c0a4:
	str	r7, [r0]
	str	r3, [r7]
.L1c0a8:
	str	r3, [r7, #4]
	mov	r0, r9
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801be80

