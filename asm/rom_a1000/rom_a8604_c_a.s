	.include "macros.inc"

.thumb_func_start Func_80a93a4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
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
	bl	_Func_8016498
	mov	r0, #1
	bl	WaitFrames
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
	bl	_Func_801e7c0
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
	bl	_GetItemInfo
	ldr	r0, [r0, #0x14]
	cmp	r0, #4
	beq	.La9454
	mov	r3, #0
	add	r1, r0, #1
	str	r3, [sp]
	mov	r0, r6
	mov	r2, #0x1b
	mov	r3, r5
	bl	_Func_8019000
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
	bl	Func_80a2268
	b	.La94b4
.La9468:
	mov	r1, r9
	ldrh	r3, [r1]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_GetItemInfo
	ldr	r0, [r0, #0x14]
	cmp	r0, #4
	beq	.La94a0
	mov	r3, #4
	add	r1, r0, #1
	str	r3, [sp]
	mov	r0, r6
	mov	r2, #0x1b
	mov	r3, r5
	bl	_Func_8019000
	mov	r2, r11
	mov	r3, #0xf
.La948e:
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #0xe
	mov	r2, r5
	mov	r3, #0xd
	bl	Func_80a2268
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
	bl	Func_80a2268
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
	bl	Func_80a2268
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
	bl	_GetItemInfo
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
	bl	Func_80a2268
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
	bl	Func_80a2268
.La9572:
	mov	r0, #1
	bl	WaitFrames
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
.func_end Func_80a93a4

.thumb_func_start Func_80a9598
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r9, r3
	ldr	r3, =0x21a
	add	r3, r9
	mov	r7, r0
	ldrb	r0, [r3]
	mov	r5, r2
	sub	sp, #4
	bl	_GetUnit
	mov	r3, #0x60
	str	r3, [sp]
	mov	r2, #8
	mov	r3, #0xe0
	mov	r11, r0
	mov	r1, #0x80
	mov	r0, r7
	bl	_Func_80164d4
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
	bl	Func_80a2324
	mov	r2, #0x1c
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #0x14]
	mov	r0, r7
	str	r2, [sp]
	mov	r2, #5
	bl	Func_80a21b0
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
	bl	_Func_801e7c0
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
	bl	_Func_801e7c0
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
	bl	_Func_801e8b0
	ldr	r5, =0xaf7
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0x20
	mov	r3, #0x10
	add	r5, #1
	bl	_Func_801e7c0
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x20
	mov	r3, #0x18
	bl	_Func_801e7c0
	mov	r2, r11
	mov	r3, #0x10
	ldrh	r0, [r2, #0x3c]
	mov	r1, #3
	str	r3, [sp]
	mov	r2, r7
	mov	r3, #0x50
	bl	_Func_801ea08
	mov	r3, r11
	ldrh	r0, [r3, #0x3e]
	mov	r3, #0x18
	str	r3, [sp]
	mov	r1, #3
	mov	r2, r7
	mov	r3, #0x50
	bl	_Func_801ea08
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
.func_end Func_80a9598

.thumb_func_start Func_80a96d8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
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
	bl	_GetUnit
	mov	r3, #0xa
	str	r3, [sp]
	mov	r0, r7
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r1, #0
	mov	r2, #0xa
	mov	r3, #0xf
	add	r0, #0x30
	bl	Func_80a10d0
	bl	Func_80a9cbc
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
	ldr	r0, =Func_80a19a0
	bl	StopTask
	mov	r6, #0x18
	ldr	r5, =0xb06
	neg	r6, r6
	mov	r0, r5
	ldr	r1, [r7, #0x24]
	mov	r2, #0x40
	mov	r3, r6
	add	r5, #3
	bl	_Func_801e7c0
	ldr	r1, [r7, #0x24]
	mov	r2, #0
	mov	r3, r6
	mov	r0, r5
	bl	_Func_801e7c0
	bl	Func_80a9cbc
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r1, [r3]
	mov	r0, r7
	bl	Func_80a33d4
	mov	r0, #0xe4
	lsl	r0, #1
	mov	r3, #0
	add	r0, r7, r0
	str	r3, [sp, #0x10]
	str	r0, [sp, #0xc]
	b	.La9926
.La977e:
	mov	r0, #0x70
	bl	_PlaySound
	mov	r2, #1
	str	r2, [sp, #0x14]
	str	r2, [sp, #0x10]
	b	.La9926
.La978c:
	mov	r0, #0x71
	bl	_PlaySound
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
	bl	Func_80a3ddc
	mov	r2, #0x86
	lsl	r2, #2
	add	r3, r7, r2
	strb	r0, [r3]
	ldr	r0, [sp, #0xc]
	mov	r1, #0
	bl	Func_80a1e38
	add	r3, sp, #0x18
	mov	r8, r3
	mov	r1, #0
	mov	r0, r8
	bl	Func_80a8b8c
	ldr	r0, [r7, #0x30]
	bl	_Func_8016498
	ldr	r2, =0x21a
	add	r3, r7, r2
	ldrb	r1, [r3]
	mov	r2, #1
	ldr	r0, [r7, #0x30]
	bl	Func_80a9a5c
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0
	ldr	r0, [sp, #0xc]
	bl	Func_80a3e28
	mov	r5, #1
	mov	r10, r5
	mov	r11, r8
	b	.La9918
.La9802:
	cmp	r5, #0
	beq	.La982a
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	mov	r3, r10
	mov	r5, #0
	cmp	r3, #0
	beq	.La9820
	ldr	r0, [r7, #0x24]
	mov	r1, #0
	mov	r2, r8
	mov	r10, r5
	bl	Func_80a9598
.La9820:
	ldr	r0, [r7, #0x24]
	mov	r1, #0
	mov	r2, r8
	bl	Func_80a93a4
.La982a:
	mov	r0, r11
	ldr	r1, [r0, #0x10]
	ldr	r3, [r7, #0x14]
	mov	r6, #1
	lsl	r1, #4
	strb	r6, [r3, #5]
	add	r1, #0x34
	mov	r0, #0x60
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	mov	r2, r11
	add	r3, sp, #0x20
	ldr	r1, [r2, #0x14]
	mov	r0, #0
	str	r3, [sp]
	mov	r2, #5
	add	r3, sp, #0x28
	bl	Func_80a1fd4
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
	ldr	r2, =gKeyPress
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
	ldr	r6, =gKeyRepeat
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
	bl	_PlaySound
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
	bl	__modsi3
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
	bl	Func_80a1804
	b	.La9926
.La9918:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La9926
	b	.La9802
.La9926:
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	bne	.La9952
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La9952
	bl	Func_80a9cbc
	ldr	r0, [r7, #0x24]
	bl	_Func_8016498
	ldr	r0, =0x21a
	add	r3, r7, r0
	ldrb	r0, [r3]
	bl	_GetUnit
	mov	r4, #0
	mov	r9, r0
	b	.La97ae
.La9952:
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	ldr	r0, [r7, #0x2c]
	bl	_Func_8016498
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	bl	_Func_80164ac
	bl	Func_80a345c
	ldr	r0, [r7, #0x24]
	bl	_Func_8016498
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80a19a0
	bl	StartTask
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
.func_end Func_80a96d8

.thumb_func_start Func_80a99b0
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
.func_end Func_80a99b0

