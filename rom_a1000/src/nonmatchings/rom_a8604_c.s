	.include "macros.inc"

.thumb_func_start Func_a93a4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	mov	r10, r2
	ldr	r3, [r3]
	ldr	r2, [r2, #8]
	mov	r8, r3
	lsl	r3, r2, #2
	mov	r1, r10
	add	r3, r2
	mov	r9, r3
	ldr	r3, [r1, #0x10]
	mov	r2, r8
	add	r3, r9
	str	r3, [r1, #0x18]
	mov	r6, r0
	ldr	r0, [r2, #0x2c]
	sub	sp, #8
	bl	_Func_16498
	mov	r0, #1
	bl	Func_30f8
	mov	r1, r10
	ldr	r3, [r1, #0x18]
	mov	r2, #0xe4
	lsl	r2, #1
	lsl	r3, #1
	add	r3, r2
	mov	r1, r8
	ldrh	r2, [r1, r3]
	mov	r3, r2
	cmp	r3, #0
	beq	.La9404
	ldr	r0, =0x1ff
	ldr	r3, =0x75
	and	r0, r2
	add	r0, r3
	ldr	r1, [r1, #0x2c]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
.La9404:
	mov	r2, #1
	mov	r1, r9
	mov	r11, r2
	lsl	r3, r1, #1
	mov	r2, #0xe4
	add	r3, r8
	lsl	r2, #1
	add	r2, r3
	mov	r7, #0
	mov	r5, #1
	mov	r9, r2
.La941a:
	mov	r1, r10
	ldr	r3, [r1, #0x10]
	cmp	r7, r3
	bne	.La9468
	ldr	r3, [r1, #0x18]
	mov	r2, #0xe4
	lsl	r2, #1
	lsl	r3, #1
	add	r3, r2
	mov	r1, r8
	ldrh	r3, [r1, r3]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_Func_78414
	ldr	r0, [r0, #0x14]
	cmp	r0, #4
	beq	.La9454
	mov	r3, #0
	add	r1, r0, #1
	str	r3, [sp]
	mov	r0, r6
	mov	r2, #0x1b
	mov	r3, r5
	bl	_Func_19000
	mov	r2, r11
	mov	r3, #0xe
	b	.La948e
.La9454:
	mov	r3, r11
	str	r3, [sp]
	mov	r0, r6
	mov	r3, #0xe
	mov	r1, #0xe
	mov	r2, r5
	str	r3, [sp, #4]
	bl	Func_a2268
	b	.La94b4
.La9468:
	mov	r1, r9
	ldrh	r3, [r1]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_Func_78414
	ldr	r0, [r0, #0x14]
	cmp	r0, #4
	beq	.La94a0
	mov	r3, #4
	add	r1, r0, #1
	str	r3, [sp]
	mov	r0, r6
	mov	r2, #0x1b
	mov	r3, r5
	bl	_Func_19000
	mov	r2, r11
	mov	r3, #0xf
.La948e:
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #0xe
	mov	r2, r5
	mov	r3, #0xd
	bl	Func_a2268
	b	.La94b4
.La94a0:
	mov	r3, r11
	str	r3, [sp]
	mov	r3, #0xf
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #0xe
	mov	r2, r5
	mov	r3, #0xe
	bl	Func_a2268
.La94b4:
	mov	r1, #2
	add	r7, #1
	add	r5, #2
	add	r9, r1
	cmp	r7, #4
	ble	.La941a
	mov	r2, #1
	mov	r9, r2
	mov	r5, #1
	mov	r6, #0xf
	mov	r7, #3
.La94ca:
	mov	r3, r8
	mov	r1, r9
	ldr	r0, [r3, #0x30]
	mov	r2, r5
	str	r1, [sp]
	mov	r3, #0xc
	mov	r1, #1
	sub	r7, #1
	str	r6, [sp, #4]
	add	r5, #2
	bl	Func_a2268
	cmp	r7, #0
	bge	.La94ca
	mov	r2, r10
	ldr	r3, [r2, #0x18]
	mov	r1, #0xe4
	lsl	r1, #1
	lsl	r3, #1
	add	r3, r1
	mov	r1, r8
	ldrh	r2, [r1, r3]
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La9572
	ldr	r0, =0x1ff
	and	r0, r2
	bl	_Func_78414
	ldrb	r1, [r0, #2]
	cmp	r1, #2
	beq	.La955c
	cmp	r1, #2
	bgt	.La9518
	cmp	r1, #1
	beq	.La9522
	b	.La9572
.La9518:
	cmp	r1, #3
	beq	.La9544
	cmp	r1, #4
	beq	.La9532
	b	.La9572
.La9522:
	mov	r2, r8
	mov	r3, #0xe
	ldr	r0, [r2, #0x30]
	str	r1, [sp]
	str	r3, [sp, #4]
	mov	r1, #1
	mov	r2, #1
	b	.La9554
.La9532:
	mov	r3, r8
	ldr	r0, [r3, #0x30]
	mov	r3, #1
	str	r3, [sp]
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r1, #1
	mov	r2, #3
	b	.La9554
.La9544:
	mov	r1, r8
	mov	r3, #1
	ldr	r0, [r1, #0x30]
	str	r3, [sp]
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r1, #1
	mov	r2, #5
.La9554:
	mov	r3, #0xc
	bl	Func_a2268
	b	.La9572
.La955c:
	mov	r2, r8
	mov	r3, #1
	ldr	r0, [r2, #0x30]
	str	r3, [sp]
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r1, #1
	mov	r2, #7
	mov	r3, #0xc
	bl	Func_a2268
.La9572:
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #1
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a93a4

.thumb_func_start Func_a9598
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r9, r3
	ldr	r3, =0x21a
	add	r3, r9
	mov	r7, r0
	ldrb	r0, [r3]
	mov	r5, r2
	sub	sp, #4
	bl	_Func_77394
	mov	r3, #0x60
	str	r3, [sp]
	mov	r2, #8
	mov	r3, #0xe0
	mov	r11, r0
	mov	r1, #0x80
	mov	r0, r7
	bl	_Func_164d4
	ldr	r2, [r5, #8]
	lsl	r3, r2, #2
	add	r3, r2
	mov	r8, r3
	ldr	r3, [r5, #0x14]
	mov	r2, r8
	sub	r3, r2
	lsl	r3, #24
	lsr	r3, #24
	mov	r10, r3
	cmp	r3, #5
	bls	.La95ea
	mov	r3, #5
	mov	r10, r3
.La95ea:
	mov	r3, #0x34
	str	r3, [sp]
	mov	r0, #5
	mov	r1, r8
	mov	r2, r7
	mov	r3, #0x77
	bl	Func_a2324
	mov	r2, #0x1c
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #0x14]
	mov	r0, r7
	str	r2, [sp]
	mov	r2, #5
	bl	Func_a21b0
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.La9624
	ldr	r0, =0xad7
	mov	r1, r7
	mov	r2, #0x78
	mov	r3, #8
	bl	_Func_1e7c0
	b	.La965e
.La9624:
	mov	r2, r10
	mov	r6, #0
	cmp	r2, #0
	bls	.La965e
	mov	r2, r8
	lsl	r3, r2, #1
	mov	r2, #0xe4
	add	r3, r9
	lsl	r2, #1
	add	r5, r3, r2
	ldr	r3, =0x1ff
	mov	r8, r3
.La963c:
	ldrh	r3, [r5]
	mov	r0, r8
	and	r0, r3
	ldr	r3, =0x182
	add	r0, r3
	lsl	r3, r6, #4
	add	r3, #8
	mov	r1, r7
	mov	r2, #0x80
	bl	_Func_1e7c0
	add	r3, r6, #1
	lsl	r3, #24
	lsr	r6, r3, #24
	add	r5, #2
	cmp	r10, r6
	bhi	.La963c
.La965e:
	mov	r0, r11
	mov	r1, r7
	mov	r2, #0x28
	mov	r3, #0
	bl	_Func_1e8b0
	ldr	r5, =0xaf7
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0x20
	mov	r3, #0x10
	add	r5, #1
	bl	_Func_1e7c0
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x20
	mov	r3, #0x18
	bl	_Func_1e7c0
	mov	r2, r11
	mov	r3, #0x10
	ldrh	r0, [r2, #0x3c]
	mov	r1, #3
	str	r3, [sp]
	mov	r2, r7
	mov	r3, #0x50
	bl	_Func_1ea08
	mov	r3, r11
	ldrh	r0, [r3, #0x3e]
	mov	r3, #0x18
	str	r3, [sp]
	mov	r1, #3
	mov	r2, r7
	mov	r3, #0x50
	bl	_Func_1ea08
	mov	r0, #1
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a9598

.thumb_func_start Func_a96d8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r0, =0x21a
	ldr	r7, [r3]
	add	r3, r7, r0
	ldrb	r3, [r3]
	sub	sp, #0x54
	mov	r2, #0
	str	r2, [sp, #0x14]
	sub	r0, #0x12
	lsl	r3, #1
	add	r3, r0
	ldrh	r0, [r7, r3]
	bl	_Func_77394
	mov	r3, #0xa
	str	r3, [sp]
	mov	r0, r7
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r1, #0
	mov	r2, #0xa
	mov	r3, #0xf
	add	r0, #0x30
	bl	Func_a10d0
	bl	Func_a9cbc
	mov	r2, r7
	mov	r1, #0xf0
	add	r2, #0x48
	mov	r4, #0x1f
.La9724:
	ldmia	r2!, {r3}
	cmp	r3, #0
	beq	.La972c
	strb	r1, [r3, #0xf]
.La972c:
	sub	r4, #1
	cmp	r4, #0
	bge	.La9724
	ldr	r0, =Func_a19a0
	bl	Func_4278
	mov	r6, #0x18
	ldr	r5, =0xb06
	neg	r6, r6
	mov	r0, r5
	ldr	r1, [r7, #0x24]
	mov	r2, #0x40
	mov	r3, r6
	add	r5, #3
	bl	_Func_1e7c0
	ldr	r1, [r7, #0x24]
	mov	r2, #0
	mov	r3, r6
	mov	r0, r5
	bl	_Func_1e7c0
	bl	Func_a9cbc
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r1, [r3]
	mov	r0, r7
	bl	Func_a33d4
	mov	r0, #0xe4
	lsl	r0, #1
	mov	r3, #0
	add	r0, r7, r0
	str	r3, [sp, #0x10]
	str	r0, [sp, #0xc]
	b	.La9926
.La977e:
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r2, #1
	str	r2, [sp, #0x14]
	str	r2, [sp, #0x10]
	b	.La9926
.La978c:
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r3, #1
	neg	r3, r3
	mov	r0, #1
	str	r3, [sp, #0x14]
	str	r0, [sp, #0x10]
	b	.La9926
.La979e:
	lsl	r2, r4, #1
	mov	r3, r2
	add	r3, #0xd8
	mov	r0, r9
	ldrh	r3, [r0, r3]
	add	r1, sp, #0x34
	strh	r3, [r1, r2]
	add	r4, #1
.La97ae:
	cmp	r4, #0xe
	ble	.La979e
	ldr	r1, [sp, #0xc]
	mov	r2, #0
	mov	r0, r9
	bl	Func_a3ddc
	mov	r2, #0x86
	lsl	r2, #2
	add	r3, r7, r2
	strb	r0, [r3]
	ldr	r0, [sp, #0xc]
	mov	r1, #0
	bl	Func_a1e38
	add	r3, sp, #0x18
	mov	r8, r3
	mov	r1, #0
	mov	r0, r8
	bl	Func_a8b8c
	ldr	r0, [r7, #0x30]
	bl	_Func_16498
	ldr	r2, =0x21a
	add	r3, r7, r2
	ldrb	r1, [r3]
	mov	r2, #1
	ldr	r0, [r7, #0x30]
	bl	Func_a9a5c
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #0
	ldr	r0, [sp, #0xc]
	bl	Func_a3e28
	mov	r5, #1
	mov	r10, r5
	mov	r11, r8
	b	.La9918
.La9802:
	cmp	r5, #0
	beq	.La982a
	ldr	r0, [r7, #0x2c]
	bl	_Func_164ac
	mov	r3, r10
	mov	r5, #0
	cmp	r3, #0
	beq	.La9820
	ldr	r0, [r7, #0x24]
	mov	r1, #0
	mov	r2, r8
	mov	r10, r5
	bl	Func_a9598
.La9820:
	ldr	r0, [r7, #0x24]
	mov	r1, #0
	mov	r2, r8
	bl	Func_a93a4
.La982a:
	mov	r0, r11
	ldr	r1, [r0, #0x10]
	ldr	r3, [r7, #0x14]
	mov	r6, #1
	lsl	r1, #4
	strb	r6, [r3, #5]
	add	r1, #0x34
	mov	r0, #0x60
	bl	Func_a1a40
	mov	r0, #1
	bl	Func_30f8
	mov	r2, r11
	add	r3, sp, #0x20
	ldr	r1, [r2, #0x14]
	mov	r0, #0
	str	r3, [sp]
	mov	r2, #5
	add	r3, sp, #0x28
	bl	Func_a1fd4
	cmp	r0, #1
	bne	.La9860
	mov	r3, #1
	mov	r10, r3
	mov	r5, #1
.La9860:
	cmp	r0, #0
	bne	.La9866
	mov	r5, #1
.La9866:
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.La9870
	mov	r5, #0
.La9870:
	ldr	r2, =iwram_1c94
	ldr	r3, [r2]
	and	r3, r6
	cmp	r3, #0
	beq	.La987c
	b	.La977e
.La987c:
	ldr	r2, [r2]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	bne	.La978c
	ldr	r6, =iwram_1b04
	mov	r1, #0x80
	ldr	r3, [r6]
	lsl	r1, #1
	and	r3, r1
	cmp	r3, #0
	bne	.La98a0
	ldr	r2, [r6]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La9918
.La98a0:
	mov	r0, #0x6f
	str	r1, [sp, #8]
	bl	_Func_f9080
	mov	r5, #0x1c
	ldrsb	r5, [r7, r5]
	mov	r0, #0x82
	lsl	r0, #2
	lsl	r3, r5, #1
	add	r3, r0
	ldrh	r3, [r7, r3]
	mov	r2, #0x98
	lsl	r2, #2
	mov	r0, r8
	add	r3, r2
	ldr	r2, [r0, #0x18]
	strb	r2, [r7, r3]
	ldr	r1, [sp, #8]
	ldr	r3, [r6]
	and	r3, r1
	cmp	r3, #0
	beq	.La98d0
	add	r5, #1
	b	.La98d2
.La98d0:
	sub	r5, #1
.La98d2:
	mov	r0, r9
	add	r1, sp, #0x34
	add	r0, #0xd8
	mov	r2, #0
	mov	r4, #0xe
.La98dc:
	ldrh	r3, [r2, r1]
	sub	r4, #1
	strh	r3, [r0]
	add	r2, #2
	add	r0, #2
	cmp	r4, #0
	bge	.La98dc
	ldr	r2, =0x219
	add	r3, r7, r2
	ldrb	r1, [r3]
	add	r0, r5, r1
	bl	Func_b1c_from_thumb
	mov	r3, #0x82
	mov	r5, r0
	lsl	r3, #2
	lsl	r2, r5, #1
	add	r2, r3
	ldrh	r3, [r7, r2]
	ldr	r0, =0x21a
	str	r3, [r7, #8]
	ldrh	r1, [r7, r2]
	add	r3, r7, r0
	strb	r1, [r3]
	strb	r5, [r7, #0x1c]
	mov	r0, r7
	ldrh	r1, [r7, r2]
	bl	Func_a1804
	b	.La9926
.La9918:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La9926
	b	.La9802
.La9926:
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	bne	.La9952
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La9952
	bl	Func_a9cbc
	ldr	r0, [r7, #0x24]
	bl	_Func_16498
	ldr	r0, =0x21a
	add	r3, r7, r0
	ldrb	r0, [r3]
	bl	_Func_77394
	mov	r4, #0
	mov	r9, r0
	b	.La97ae
.La9952:
	ldr	r0, [r7, #0x2c]
	bl	_Func_164ac
	ldr	r0, [r7, #0x2c]
	bl	_Func_16498
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	bl	_Func_164ac
	bl	Func_a345c
	ldr	r0, [r7, #0x24]
	bl	_Func_16498
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_a19a0
	bl	Func_41d8
	ldr	r0, [sp, #0x14]
	add	sp, #0x54
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a96d8

.thumb_func_start Func_a99b0
	push	{lr}
	ldr	r3, [r0]
	ldr	r4, [r1]
	cmp	r2, #0x20
	beq	.La9a10
	cmp	r2, #0x20
	bgt	.La99c4
	cmp	r2, #0x10
	beq	.La9a2e
	b	.La9a48
.La99c4:
	cmp	r2, #0x40
	beq	.La99ce
	cmp	r2, #0x80
	beq	.La99f8
	b	.La9a48
.La99ce:
	sub	r4, #1
	cmp	r4, #0
	bge	.La99d6
	mov	r4, #5
.La99d6:
	cmp	r4, #3
	bgt	.La9a48
	cmp	r4, #3
	bne	.La99e6
	cmp	r3, #4
	bgt	.La99ea
	mov	r3, #0
	b	.La99ec
.La99e6:
	cmp	r3, #1
	ble	.La99ec
.La99ea:
	mov	r3, #1
.La99ec:
	cmp	r4, #3
	bne	.La9a48
	cmp	r3, #1
	bne	.La9a48
	mov	r4, #2
	b	.La9a48
.La99f8:
	add	r4, #1
	cmp	r4, #5
	ble	.La9a00
	mov	r4, #0
.La9a00:
	cmp	r4, #3
	bne	.La9a0a
	cmp	r3, #1
	bne	.La9a0a
	mov	r4, #4
.La9a0a:
	cmp	r4, #4
	bne	.La9a48
	b	.La9a46
.La9a10:
	sub	r3, #1
	cmp	r4, #3
	bne	.La9a1a
	add	r3, #1
	b	.La9a48
.La9a1a:
	cmp	r4, #3
	ble	.La9a26
	cmp	r3, #0
	bge	.La9a48
	mov	r3, #7
	b	.La9a48
.La9a26:
	cmp	r3, #0
	bge	.La9a48
	mov	r3, #1
	b	.La9a48
.La9a2e:
	add	r3, #1
	cmp	r4, #3
	bne	.La9a38
	sub	r3, #1
	b	.La9a48
.La9a38:
	cmp	r4, #3
	ble	.La9a42
	cmp	r3, #7
	ble	.La9a48
	b	.La9a46
.La9a42:
	cmp	r3, #1
	ble	.La9a48
.La9a46:
	mov	r3, #0
.La9a48:
	str	r3, [r0]
	lsl	r0, r4, #3
	add	r0, r4
	add	r0, r3
	str	r4, [r1]
	pop	{r1}
	bx	r1
.func_end Func_a99b0

.thumb_func_start Func_a9a58
	mov	r0, #1
	bx	lr
.func_end Func_a9a58

.thumb_func_start Func_a9a5c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r6, r0
	mov	r0, r1
	mov	r10, r2
	mov	r8, r3
	bl	_Func_77394
	bl	Func_a9cbc
	bl	Func_a345c
	ldr	r5, =0xb24
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	add	r0, r5, #1
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x20
	bl	_Func_1e7c0
	add	r0, r5, #2
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x10
	add	r5, #3
	bl	_Func_1e7c0
	mov	r0, r5
	mov	r5, #0xe4
	lsl	r5, #1
	mov	r3, #0x30
	mov	r1, r6
	mov	r2, #0
	add	r5, r8
	bl	_Func_1e7c0
	mov	r0, r6
	mov	r1, r5
	bl	Func_a9aec
	mov	r3, r10
	cmp	r3, #0
	bne	.La9ad8
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r5
	mov	r1, #1
	bl	Func_a3e28
	mov	r0, r5
	bl	Func_a9c18
.La9ad8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_a9a5c

.thumb_func_start Func_a9aec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =0x182
	mov	r8, r3
	mov	r3, #0xe
	mov	r6, r0
	mov	r7, r1
	mov	r10, r3
.La9b00:
	ldrh	r0, [r7]
	ldr	r3, .La9b28	@ 0x200
	and	r3, r0
	add	r7, #2
	cmp	r3, #0
	beq	.La9b7c
	ldr	r3, .La9b2c	@ 0x1ff
	mov	r5, r3
	and	r5, r0
	mov	r0, r5
	bl	_Func_78414
	ldrb	r3, [r0, #2]
	cmp	r3, #2
	beq	.La9b4e
	cmp	r3, #2
	bgt	.La9b34
	cmp	r3, #1
	beq	.La9b3e
	b	.La9b7c

	.align	2, 0
.La9b28:
	.word	0x200
.La9b2c:
	.word	0x1ff
	.pool

.La9b34:
	cmp	r3, #3
	beq	.La9b5e
	cmp	r3, #4
	beq	.La9b6e
	b	.La9b7c
.La9b3e:
	mov	r3, r8
	add	r0, r5, r3
	mov	r1, r6
	mov	r2, #8
	mov	r3, #8
	bl	_Func_1e7c0
	b	.La9b7c
.La9b4e:
	mov	r3, r8
	add	r0, r5, r3
	mov	r1, r6
	mov	r2, #8
	mov	r3, #0x38
	bl	_Func_1e7c0
	b	.La9b7c
.La9b5e:
	mov	r3, r8
	add	r0, r5, r3
	mov	r1, r6
	mov	r2, #8
	mov	r3, #0x28
	bl	_Func_1e7c0
	b	.La9b7c
.La9b6e:
	mov	r3, r8
	add	r0, r5, r3
	mov	r1, r6
	mov	r2, #8
	mov	r3, #0x18
	bl	_Func_1e7c0
.La9b7c:
	mov	r3, #1
	neg	r3, r3
	add	r10, r3
	mov	r3, r10
	cmp	r3, #0
	bge	.La9b00
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a9aec

.thumb_func_start Func_a9b94
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r6, r3
	sub	sp, #4
	mov	r10, r0
	mov	r8, r1
	mov	r7, r2
	mov	r5, #0
	add	r6, #0x48
.La9bae:
	ldmia	r6!, {r0}
	cmp	r0, #0
	beq	.La9bc0
	mov	r1, r5
	mov	r2, r10
	mov	r3, r8
	str	r7, [sp]
	bl	Func_a9bd8
.La9bc0:
	add	r5, #1
	cmp	r5, #0x1f
	ble	.La9bae
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a9b94

.thumb_func_start Func_a9bd8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r6, r0
	mov	r8, r2
	mov	r7, r3
	cmp	r5, #0x1f
	ble	.La9bec
	mov	r5, #0
.La9bec:
	ldr	r1, [sp, #0x14]
	mov	r0, r5
	bl	Func_af0_from_thumb
	lsl	r0, #4
	add	r0, r7
	strh	r0, [r6, #8]
	ldr	r1, [sp, #0x14]
	mov	r0, r5
	bl	Func_b1c_from_thumb
	lsl	r0, #4
	add	r0, r8
	strh	r0, [r6, #6]
	mov	r0, r6
	bl	Func_a17c4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a9bd8

.thumb_func_start Func_a9c18
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r6, [r3]
	mov	r5, r0
	mov	r7, r6
	sub	sp, #4
	bl	Func_a9cbc
	mov	r3, #0xe
	mov	r1, #0xd8
	add	r7, #0x48
	mov	r6, r5
	mov	r8, r3
.La9c36:
	ldrh	r2, [r6]
	mov	r3, r2
	add	r6, #2
	cmp	r3, #0
	beq	.La9ca0
	ldr	r3, .La9c68	@ 0x200
	and	r3, r2
	cmp	r3, #0
	beq	.La9ca0
	ldr	r5, [r7]
	cmp	r5, #0
	beq	.La9ca0
	ldr	r0, .La9c6c	@ 0x1ff
	and	r0, r2
	str	r1, [sp]
	bl	_Func_78414
	ldrb	r3, [r0, #2]
	ldr	r1, [sp]
	cmp	r3, #2
	beq	.La9c88
	cmp	r3, #2
	bgt	.La9c7a
	b	.La9c74

	.align	2, 0
.La9c68:
	.word	0x200
.La9c6c:
	.word	0x1ff
	.pool

.La9c74:
	cmp	r3, #1
	beq	.La9c84
	b	.La9c96
.La9c7a:
	cmp	r3, #3
	beq	.La9c8c
	cmp	r3, #4
	beq	.La9c90
	b	.La9c96
.La9c84:
	mov	r3, #0x20
	b	.La9c92
.La9c88:
	mov	r3, #0x50
	b	.La9c92
.La9c8c:
	mov	r3, #0x40
	b	.La9c92
.La9c90:
	mov	r3, #0x30
.La9c92:
	strh	r1, [r5, #6]
	strh	r3, [r5, #8]
.La9c96:
	mov	r0, r5
	str	r1, [sp]
	bl	Func_a17c4
	ldr	r1, [sp]
.La9ca0:
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r3, r8
	add	r7, #4
	cmp	r3, #0
	bge	.La9c36
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a9c18

.thumb_func_start Func_a9cbc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r2, #0xf8
	mov	r5, r3
	mov	r8, r2
	add	r5, #0x48
	mov	r7, #0xa8
	mov	r6, #0x1f
.La9cd2:
	ldmia	r5!, {r0}
	cmp	r0, #0
	beq	.La9ce2
	mov	r3, r8
	strh	r3, [r0, #6]
	strh	r7, [r0, #8]
	bl	Func_a17c4
.La9ce2:
	sub	r6, #1
	cmp	r6, #0
	bge	.La9cd2
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a9cbc

.thumb_func_start Func_a9cf8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r2, #0xa8
	mov	r6, r3
	sub	sp, #4
	mov	r7, r0
	mov	r5, #0
	mov	r8, r2
	add	r6, #0xc8
.La9d10:
	mov	r3, r8
	str	r3, [sp]
	mov	r1, r5
	mov	r0, #2
	mov	r2, r7
	mov	r3, #0xf8
	bl	_Func_1eb64
	add	r5, #1
	stmia	r6!, {r0}
	cmp	r5, #7
	ble	.La9d10
	mov	r0, #1
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a9cf8

.thumb_func_start Func_a9d3c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	mov	r8, r0
	ldr	r5, [r3]
	bl	Func_a9d84
	mov	r6, #0
	add	r5, #0xc8
	mov	r7, #0x58
.La9d52:
	ldmia	r5!, {r0}
	cmp	r0, #0
	beq	.La9d70
	mov	r2, r8
	ldrb	r3, [r2, r6]
	cmp	r3, #0
	beq	.La9d70
	mov	r3, #8
	strh	r3, [r0, #6]
	mov	r3, #0xf0
	strh	r7, [r0, #8]
	strb	r3, [r0, #0xf]
	bl	Func_a17c4
	add	r7, #0x10
.La9d70:
	add	r6, #1
	cmp	r6, #4
	ble	.La9d52
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a9d3c

.thumb_func_start Func_a9d84
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r2, #0xf8
	mov	r5, r3
	mov	r8, r2
	add	r5, #0xc8
	mov	r7, #0xa8
	mov	r6, #4
.La9d9a:
	ldmia	r5!, {r0}
	cmp	r0, #0
	beq	.La9dae
	mov	r3, r8
	strh	r3, [r0, #6]
	mov	r3, #0xf0
	strh	r7, [r0, #8]
	strb	r3, [r0, #0xf]
	bl	Func_a17c4
.La9dae:
	sub	r6, #1
	cmp	r6, #0
	bge	.La9d9a
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a9d84

.thumb_func_start Func_a9dc4
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f2c
	ldr	r6, [r3]
	mov	r7, r0
	mov	r5, #0
.La9dce:
	ldrb	r3, [r7, r5]
	cmp	r3, #0
	beq	.La9e1c
	cmp	r5, #4
	bhi	.La9e08
	ldr	r3, =.La9de0
	lsl	r2, r5, #2
	ldr	r3, [r2, r3]
	mov	pc, r3
	.align	2, 0
.La9de0:
	.word	.La9df4
	.word	.La9df8
	.word	.La9dfc
	.word	.La9e00
	.word	.La9e04
.La9df4:
	mov	r1, #0x10
	b	.La9e0c
.La9df8:
	mov	r1, #1
	b	.La9e0c
.La9dfc:
	mov	r1, #2
	b	.La9e0c
.La9e00:
	mov	r1, #0xf
	b	.La9e0c
.La9e04:
	mov	r1, #7
	b	.La9e0c
.La9e08:
	mov	r1, #0
	lsl	r2, r5, #2
.La9e0c:
	mov	r3, r2
	add	r3, #0xc8
	ldr	r3, [r6, r3]
	mov	r0, #8
	ldrb	r2, [r3, #0xe]
	mov	r3, #0
	bl	_Func_1bcd4
.La9e1c:
	add	r5, #1
	cmp	r5, #4
	ble	.La9dce
	mov	r0, #1
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a9dc4

.thumb_func_start Func_a9e34
	push	{lr}
	bl	Func_a22f4
	mov	r0, #0xd
	bl	Func_a2144
	pop	{r0}
	bx	r0
.func_end Func_a9e34

.thumb_func_start Func_a9e44
	bx	lr
.func_end Func_a9e44

.thumb_func_start Func_a9e48
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	mov	r11, r0
	mov	r0, r7
	sub	sp, #4
	mov	r9, r2
	bl	_Func_77394
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r1, r11
	str	r3, [sp]
	ldr	r2, =0x1ff
	lsl	r3, r1, #1
	mov	r5, r0
	add	r3, #0xd8
	mov	r10, r2
	mov	r8, r3
	ldrh	r3, [r5, r3]
	mov	r1, r10
	and	r1, r3
	mov	r10, r1
	mov	r0, r10
	bl	_Func_78414
	mov	r6, r0
	ldrh	r3, [r6, #0x28]
	ldr	r0, =0x3fff
	mov	r2, r9
	and	r0, r3
	mov	r1, r7
	mov	r3, #1
	bl	Func_a9f10
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.La9eee
	mov	r3, r8
	ldrh	r0, [r5, r3]
	bl	_Func_78414
	mov	r6, r0
	ldrb	r2, [r6, #0xc]
	mov	r3, r2
	cmp	r3, #1
	bne	.La9ed6
	mov	r1, r11
	mov	r0, r7
	bl	_Func_788c4
	mov	r3, #0xe4
	ldr	r2, [sp]
	lsl	r3, #1
	add	r1, r2, r3
	mov	r0, r5
	mov	r2, #0
	bl	Func_a3ddc
	mov	r2, #0x86
	ldr	r1, [sp]
	lsl	r2, #2
	add	r3, r1, r2
	strb	r0, [r3]
	ldrb	r2, [r6, #0xc]
.La9ed6:
	mov	r3, r2
	cmp	r3, #4
	bne	.La9eec
	mov	r3, r10
	cmp	r3, #0xb8
	bne	.La9ee6
	mov	r1, #0xb9
	mov	r10, r1
.La9ee6:
	mov	r3, r10
	mov	r2, r8
	strh	r3, [r5, r2]
.La9eec:
	mov	r0, #0
.La9eee:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a9e48

.thumb_func_start Func_a9f0c
	mov	r0, #1
	bx	lr
.func_end Func_a9f0c

.thumb_func_start Func_a9f10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	str	r1, [sp, #0xc]
	mov	r10, r2
	str	r3, [sp, #8]
	str	r0, [sp, #0x10]
	bl	_Func_78b9c
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r11, r0
	mov	r1, #0
	mov	r0, #0
	mov	r2, r10
	str	r3, [sp, #4]
	mov	r9, r0
	mov	r7, #0
	mov	r8, r1
	cmp	r2, #9
	beq	.La9f48
	mov	r0, r10
	b	.La9f4a
.La9f48:
	mov	r0, #0
.La9f4a:
	bl	_Func_77394
	mov	r5, r0
	mov	r3, r11
	mov	r4, #0
	ldr	r0, [sp, #4]
	ldr	r1, =0x219
	ldrb	r2, [r3, #8]
	str	r4, [sp]
	add	r3, r0, r1
	ldrb	r3, [r3]
	cmp	r4, r3
	bcc	.La9f66
	b	.Laa3d6
.La9f66:
	mov	r3, r2
	cmp	r3, #0xff
	bne	.La9f84
	ldr	r2, [sp]
	mov	r4, #0x82
	ldr	r0, [sp, #4]
	lsl	r3, r2, #1
	lsl	r4, #2
	add	r3, r4
	ldrh	r3, [r0, r3]
	mov	r10, r3
	mov	r0, r10
	bl	_Func_77394
	mov	r5, r0
.La9f84:
	mov	r1, r11
	ldrb	r2, [r1, #1]
	mov	r3, #0xf
	and	r3, r2
	sub	r3, #1
	ldrh	r6, [r1, #0xa]
	cmp	r3, #0xa
	bls	.La9f96
	b	.Laa178
.La9f96:
	ldr	r2, =.La9fa0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.La9fa0:
	.word	.La9fcc
	.word	.Laa178
	.word	.Laa178
	.word	.Laa178
	.word	.Laa178
	.word	.Laa178
	.word	.Laa178
	.word	.Laa178
	.word	.Laa066
	.word	.Laa178
	.word	.Laa122
.La9fcc:
	ldr	r2, [sp, #8]
	cmp	r2, #0
	bne	.La9ffa
	mov	r4, r11
	ldrb	r3, [r4, #2]
	cmp	r3, #4
	beq	.La9fec
	ldr	r0, [sp, #0xc]
	bl	_Func_77394
	mov	r1, r11
	ldrb	r3, [r1, #2]
	lsl	r3, #2
	add	r3, #0x48
	ldrsh	r1, [r0, r3]
	b	.La9fee
.La9fec:
	mov	r1, #0x64
.La9fee:
	mov	r2, #0x80
	mov	r0, r6
	lsl	r2, #1
	bl	_Func_79c5c
	mov	r6, r0
.La9ffa:
	mov	r4, #0x38
	ldrsh	r1, [r5, r4]
	ldrh	r3, [r5, #0x38]
	cmp	r1, #0
	bgt	.Laa010
	mov	r0, r8
	cmp	r0, #0
	beq	.Laa00c
	b	.Laa178
.Laa00c:
	mov	r7, #2
	b	.Laa178
.Laa010:
	mov	r4, #0x34
	ldrsh	r2, [r5, r4]
	ldrh	r0, [r5, #0x34]
	cmp	r1, r2
	bne	.Laa026
	mov	r0, r8
	cmp	r0, #0
	beq	.Laa022
	b	.Laa178
.Laa022:
	mov	r7, #4
	b	.Laa178
.Laa026:
	add	r3, r6
	strh	r3, [r5, #0x38]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, r2
	ble	.Laa042
	sub	r3, r2
	mov	r1, r8
	sub	r6, r3
	strh	r0, [r5, #0x38]
	cmp	r1, #0
	bne	.Laa04a
	mov	r7, #0
	b	.Laa04a
.Laa042:
	mov	r2, r8
	cmp	r2, #0
	bne	.Laa04a
	mov	r7, #1
.Laa04a:
	mov	r0, r10
	bl	_Func_7822c
	mov	r3, #1
	mov	r4, r11
	mov	r9, r3
	ldrb	r3, [r4, #8]
	cmp	r3, #0xff
	beq	.Laa05e
	b	.Laa178
.Laa05e:
	mov	r0, #1
	mov	r8, r0
	mov	r7, #3
	b	.Laa178
.Laa066:
	bl	Func_4458
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #0
	bne	.Laa078
	mov	r0, #1
	neg	r0, r0
	b	.Laa086
.Laa078:
	mov	r1, #1
	mov	r2, r1
	eor	r2, r0
	neg	r3, r2
	orr	r3, r2
	lsr	r0, r3, #31
	sub	r0, r1, r0
.Laa086:
	ldr	r3, =0x3fff
	ldr	r1, [sp, #0x10]
	ldr	r2, =0xfffffefc
	and	r3, r1
	add	r3, r2
	cmp	r3, #5
	bhi	.Laa178
	ldr	r2, =.Laa09c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Laa09c:
	.word	.Laa0b4
	.word	.Laa0c4
	.word	.Laa0f2
	.word	.Laa10a
	.word	.Laa0d4
	.word	.Laa0e4
.Laa0b4:
	ldrh	r3, [r5, #0x10]
	add	r2, r6, r0
	add	r3, r2
	strh	r3, [r5, #0x10]
	mov	r3, #1
	mov	r7, #0x10
	mov	r9, r3
	b	.Laa178
.Laa0c4:
	ldrh	r3, [r5, #0x12]
	add	r2, r6, r0
	add	r3, r2
	mov	r4, #1
	strh	r3, [r5, #0x12]
	mov	r7, #0x11
	mov	r9, r4
	b	.Laa178
.Laa0d4:
	ldrh	r3, [r5, #0x1c]
	add	r2, r6, r0
	add	r3, r2
	mov	r0, #1
	strh	r3, [r5, #0x1c]
	mov	r7, #0x12
	mov	r9, r0
	b	.Laa178
.Laa0e4:
	ldrb	r3, [r5, #0x1e]
	mov	r1, #1
	add	r3, r6
	strb	r3, [r5, #0x1e]
	mov	r7, #0x13
	mov	r9, r1
	b	.Laa178
.Laa0f2:
	ldrh	r3, [r5, #0x18]
	add	r2, r6, r0
	add	r3, r2
	strh	r3, [r5, #0x18]
	mov	r0, #3
	mov	r1, #5
	bl	_Func_19908
	mov	r2, #1
	mov	r7, #0x14
	mov	r9, r2
	b	.Laa178
.Laa10a:
	ldrh	r3, [r5, #0x1a]
	add	r2, r6, r0
	add	r3, r2
	strh	r3, [r5, #0x1a]
	mov	r0, #4
	mov	r1, #5
	bl	_Func_19908
	mov	r3, #1
	mov	r7, #0x15
	mov	r9, r3
	b	.Laa178
.Laa122:
	mov	r4, #0x3a
	ldrsh	r3, [r5, r4]
	mov	r4, #0x36
	ldrsh	r2, [r5, r4]
	ldrh	r1, [r5, #0x3a]
	ldrh	r0, [r5, #0x36]
	cmp	r3, r2
	bne	.Laa13c
	mov	r0, r8
	cmp	r0, #0
	bne	.Laa178
	mov	r7, #7
	b	.Laa178
.Laa13c:
	add	r3, r1, r6
	strh	r3, [r5, #0x3a]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, r2
	ble	.Laa158
	sub	r3, r2
	mov	r1, r8
	sub	r6, r3
	strh	r0, [r5, #0x3a]
	cmp	r1, #0
	bne	.Laa160
	mov	r7, #5
	b	.Laa160
.Laa158:
	mov	r2, r8
	cmp	r2, #0
	bne	.Laa160
	mov	r7, #6
.Laa160:
	mov	r0, r10
	bl	_Func_7822c
	mov	r3, #1
	mov	r4, r11
	mov	r9, r3
	ldrb	r3, [r4, #8]
	cmp	r3, #0xff
	bne	.Laa178
	mov	r0, #1
	mov	r8, r0
	mov	r7, #8
.Laa178:
	mov	r1, r11
	ldrb	r3, [r1, #3]
	sub	r3, #1
	cmp	r3, #0x38
	bls	.Laa184
	b	.Laa3b0
.Laa184:
	ldr	r2, =.Laa18c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Laa18c:
	.word	.Laa270
	.word	.Laa2ce
	.word	.Laa38a
	.word	.Laa3b0
	.word	.Laa314
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa33e
	.word	.Laa358
.Laa270:
	mov	r4, #0x38
	ldrsh	r2, [r5, r4]
	ldrh	r3, [r5, #0x38]
	cmp	r2, #0
	ble	.Laa284
	mov	r4, #0x34
	ldrsh	r1, [r5, r4]
	ldrh	r0, [r5, #0x34]
	cmp	r2, r1
	bne	.Laa2ac
.Laa284:
	mov	r0, r8
	cmp	r0, #0
	beq	.Laa28c
	b	.Laa3b0
.Laa28c:
	mov	r7, #2
	b	.Laa3b0

	.pool_aligned

.Laa2ac:
	add	r3, r6
	strh	r3, [r5, #0x38]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, r1
	ble	.Laa2c4
	mov	r1, r8
	strh	r0, [r5, #0x38]
	cmp	r1, #0
	bne	.Laa308
	mov	r7, #0
	b	.Laa308
.Laa2c4:
	mov	r2, r8
	cmp	r2, #0
	bne	.Laa308
	mov	r7, #1
	b	.Laa308
.Laa2ce:
	mov	r4, #0x3a
	ldrsh	r3, [r5, r4]
	mov	r4, #0x36
	ldrsh	r2, [r5, r4]
	ldrh	r1, [r5, #0x3a]
	ldrh	r0, [r5, #0x36]
	cmp	r3, r2
	bne	.Laa2e8
	mov	r0, r8
	cmp	r0, #0
	bne	.Laa3b0
	mov	r7, #7
	b	.Laa3b0
.Laa2e8:
	add	r3, r1, r6
	strh	r3, [r5, #0x3a]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, r2
	ble	.Laa300
	mov	r1, r8
	strh	r0, [r5, #0x3a]
	cmp	r1, #0
	bne	.Laa308
	mov	r7, #5
	b	.Laa308
.Laa300:
	mov	r2, r8
	cmp	r2, #0
	bne	.Laa308
	mov	r7, #6
.Laa308:
	mov	r0, r10
	bl	_Func_7822c
	mov	r3, #1
	mov	r9, r3
	b	.Laa3b0
.Laa314:
	mov	r4, #0x38
	ldrsh	r3, [r5, r4]
	cmp	r3, #0
	bne	.Laa334
	ldrh	r3, [r5, #0x34]
	mov	r0, r10
	strh	r3, [r5, #0x38]
	bl	_Func_7822c
	mov	r0, #1
	mov	r1, r8
	mov	r9, r0
	cmp	r1, #0
	bne	.Laa3b0
	mov	r7, #0xc
	b	.Laa3b0
.Laa334:
	mov	r2, r8
	cmp	r2, #0
	bne	.Laa3b0
	mov	r7, #0xd
	b	.Laa3b0
.Laa33e:
	mov	r4, #0x38
	ldrsh	r3, [r5, r4]
	cmp	r3, #0
	bne	.Laa380
	ldrh	r3, [r5, #0x34]
	lsl	r3, #16
	asr	r2, r3, #16
	lsr	r3, #31
	add	r2, r3
	asr	r2, #1
	mov	r0, r10
	strh	r2, [r5, #0x38]
	b	.Laa372
.Laa358:
	mov	r2, #0x38
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.Laa380
	mov	r4, #0x34
	ldrsh	r3, [r5, r4]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	strh	r0, [r5, #0x38]
	mov	r0, r10
.Laa372:
	bl	_Func_7822c
	mov	r0, r8
	cmp	r0, #0
	bne	.Laa3b0
	mov	r7, #0xc
	b	.Laa3b0
.Laa380:
	mov	r1, r8
	cmp	r1, #0
	bne	.Laa3b0
	mov	r7, #0xd
	b	.Laa3b0
.Laa38a:
	ldr	r3, =0x131
	add	r2, r5, r3
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.Laa3a8
	mov	r3, #0
	mov	r4, #1
	mov	r0, r8
	strb	r3, [r2]
	mov	r9, r4
	cmp	r0, #0
	bne	.Laa3b0
	mov	r7, #0xa
	b	.Laa3b0
.Laa3a8:
	mov	r1, r8
	cmp	r1, #0
	bne	.Laa3b0
	mov	r7, #0xb
.Laa3b0:
	mov	r2, r11
	ldrb	r3, [r2, #8]
	mov	r2, r3
	mov	r3, r2
	cmp	r3, #0xff
	bne	.Laa3d6
	ldr	r3, [sp]
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	ldr	r4, [sp, #4]
	ldr	r0, =0x219
	str	r3, [sp]
	add	r3, r4, r0
	ldrb	r3, [r3]
	ldr	r1, [sp]
	cmp	r1, r3
	bcs	.Laa3d6
	b	.La9f66
.Laa3d6:
	mov	r2, r9
	cmp	r2, #0
	bne	.Laa3ea
	ldr	r4, [sp, #4]
	ldr	r0, =0x25a
	add	r3, r4, r0
	mov	r0, #1
	strh	r7, [r3]
	neg	r0, r0
	b	.Laa42a
.Laa3ea:
	mov	r1, #0
	ldr	r2, [sp, #4]
	ldr	r4, =0x219
	str	r1, [sp]
	add	r3, r2, r4
	ldrb	r3, [r3]
	cmp	r1, r3
	bcs	.Laa420
	add	r5, r2, r4
.Laa3fc:
	ldr	r0, [sp]
	mov	r1, #0x82
	lsl	r3, r0, #1
	lsl	r1, #2
	ldr	r2, [sp, #4]
	add	r3, r1
	ldrh	r0, [r2, r3]
	bl	_Func_77428
	ldr	r3, [sp]
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	str	r3, [sp]
	ldr	r4, [sp]
	ldrb	r3, [r5]
	cmp	r4, r3
	bcc	.Laa3fc
.Laa420:
	ldr	r0, [sp, #4]
	ldr	r1, =0x25a
	add	r3, r0, r1
	strh	r7, [r3]
	mov	r0, #0
.Laa42a:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a9f10

.thumb_func_start Func_aa448
	push	{lr}
	bl	_Func_78414
	ldrh	r3, [r0, #0x28]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	Func_aa460
	pop	{r0}
	bx	r0
.func_end Func_aa448

.thumb_func_start Func_aa460
	push	{lr}
	bl	_Func_78b9c
	ldrb	r3, [r0, #1]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Laa476
	cmp	r2, #0xb
	beq	.Laa47c
	b	.Laa484
.Laa476:
	mov	r0, #0x7e
	bl	Func_a2438
.Laa47c:
	mov	r0, #0x7e
	bl	Func_a2438
	b	.Laa52a
.Laa484:
	ldrb	r3, [r0, #3]
	sub	r0, r3, #1
	cmp	r0, #0x1f
	bhi	.Laa524
	ldr	r2, =.Laa494
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Laa494:
	.word	.Laa52a
	.word	.Laa52a
	.word	.Laa51c
	.word	.Laa524
	.word	.Laa514
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa52a
	.word	.Laa52a
.Laa514:
	mov	r0, #0x52
	bl	Func_a2438
	b	.Laa52a
.Laa51c:
	mov	r0, #0x54
	bl	Func_a2438
	b	.Laa52a
.Laa524:
	mov	r0, #0x5b
	bl	Func_a2438
.Laa52a:
	pop	{r0}
	bx	r0
.func_end Func_aa460

.thumb_func_start Func_aa534
	mov	r0, #0
	bx	lr
.func_end Func_aa534

	.section .rodata
	.global .Laf22c
	.global .Laf230
	.global .Laf234
	.global .Laf238
	.global .Laf23c

.Laf22c:
	.incrom 0xaf22c, 0xaf230
.Laf230:
	.incrom 0xaf230, 0xaf234
.Laf234:
	.incrom 0xaf234, 0xaf238
.Laf238:
	.incrom 0xaf238, 0xaf23c
.Laf23c:
	.incrom 0xaf23c, 0xaf26c
