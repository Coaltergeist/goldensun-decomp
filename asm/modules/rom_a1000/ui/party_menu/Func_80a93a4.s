	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a93a4  @ 0x080a93a4
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

