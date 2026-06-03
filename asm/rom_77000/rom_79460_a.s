	.include "macros.inc"

.thumb_func_start Func_8079460
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r11, r1
	mov	r5, r11
	sub	sp, #0x24
	mov	r9, r0
	mov	r8, r2
	sub	r5, #8
	cmp	r0, #0x7f
	bgt	.L79482
	mov	r0, #0
	b	.L795da
.L79482:
	mov	r2, r9
	mov	r0, #0
	cmp	r2, #0x86
	ble	.L7948c
	b	.L795da
.L7948c:
	cmp	r5, #0xf2
	bls	.L79492
	b	.L795da
.L79492:
	mov	r0, r9
	bl	Func_8077394
	mov	r1, #0xa6
	ldr	r3, =Func_80008d4
	lsl	r1, #1
	mov	r6, r0
	bl	_call_via_r3
	cmp	r5, #0xa4
	bls	.L794aa
	mov	r5, #0
.L794aa:
	mov	r3, #0x54
	mov	r2, r5
	mul	r2, r3
	ldr	r3, =Data_80ec8
	add	r7, r2, r3
	ldrb	r3, [r7, #0xf]
	strb	r3, [r6, #0xf]
	ldrh	r3, [r7, #0x10]
	strh	r3, [r6, #0x10]
	strh	r3, [r6, #0x38]
	strh	r3, [r6, #0x34]
	ldrh	r3, [r7, #0x12]
	strh	r3, [r6, #0x12]
	strh	r3, [r6, #0x3a]
	strh	r3, [r6, #0x36]
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r6, #0x14]
	strh	r3, [r6, #0x16]
	ldrh	r3, [r7, #0x14]
	strh	r3, [r6, #0x18]
	ldrh	r3, [r7, #0x16]
	strh	r3, [r6, #0x1a]
	ldrh	r3, [r7, #0x18]
	strh	r3, [r6, #0x1c]
	ldrb	r3, [r7, #0x1a]
	strb	r3, [r6, #0x1e]
	ldrb	r3, [r7, #0x1b]
	ldrb	r2, [r7, #0x1c]
	strb	r3, [r6, #0x1f]
	mov	r3, r6
	add	r3, #0x20
	strb	r2, [r3]
	ldr	r0, =0x28f
	ldrb	r3, [r7, #0x1d]
	mov	r2, r6
	add	r4, sp, #4
	add	r2, #0x21
	strb	r3, [r2]
	add	r0, r5, r0
	mov	r1, r4
	mov	r2, #0xf
	str	r4, [sp]
	bl	_Func_80196c4
	ldr	r4, [sp]
	mov	r5, #0
	ldrh	r3, [r4, r5]
	cmp	r3, #0
	beq	.L79528
	mov	r0, r4
	mov	r1, r6
	mov	r2, #0
.L79514:
	ldrh	r3, [r2, r0]
	add	r5, #1
	strb	r3, [r1]
	add	r2, #2
	add	r1, #1
	cmp	r5, #0xd
	bgt	.L79528
	ldrh	r3, [r2, r4]
	cmp	r3, #0
	bne	.L79514
.L79528:
	mov	r3, r8
	cmp	r3, #8
	bgt	.L79534
	add	r3, #0x31
	strb	r3, [r6, r5]
	add	r5, #1
.L79534:
	mov	r3, #0
	strb	r3, [r6, r5]
	mov	r2, #0x28
	mov	r3, #0
	strb	r3, [r6, #0xe]
	mov	r8, r3
	mov	r10, r2
	mov	r3, #0x28
	mov	r2, #0x30
	add	r3, r7
	add	r2, r7
	mov	r14, r3
	mov	r5, #3
	mov	r12, r2
	mov	r0, r6
.L79552:
	mov	r2, r14
	ldrh	r3, [r2]
	mov	r2, #2
	add	r14, r2
	cmp	r3, #0
	beq	.L79586
	mov	r2, r12
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L79586
	mov	r2, r0
	mov	r4, r10
	mov	r1, r3
	add	r2, #0xd8
.L7956e:
	mov	r3, r8
	cmp	r3, #0xe
	bgt	.L79580
	ldrh	r3, [r7, r4]
	strh	r3, [r2]
	mov	r3, #1
	add	r2, #2
	add	r0, #2
	add	r8, r3
.L79580:
	sub	r1, #1
	cmp	r1, #0
	bne	.L7956e
.L79586:
	mov	r2, #2
	mov	r3, #1
	sub	r5, #1
	add	r10, r2
	add	r12, r3
	cmp	r5, #0
	bge	.L79552
	mov	r3, #0x90
	lsl	r3, #1
	add	r2, r6, r3
	ldr	r3, [r7, #0x20]
	str	r3, [r2]
	ldr	r3, =0x129
	add	r2, r6, r3
	mov	r3, #0
	strb	r3, [r2]
	mov	r2, #0x94
	lsl	r2, #1
	add	r5, r6, r2
	mov	r3, r11
	mov	r1, r6
	strb	r3, [r5]
	add	r1, #0x24
	mov	r0, r9
	bl	Func_80798e0
	mov	r0, r9
	bl	Func_8077428
	mov	r3, #0x95
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #1
	strb	r3, [r2]
	ldrb	r3, [r5]
	cmp	r3, #0xab
	bgt	.L795d8
	cmp	r3, #0x9e
	blt	.L795d8
	mov	r3, #2
	strb	r3, [r2]
.L795d8:
	mov	r0, #1
.L795da:
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8079460

