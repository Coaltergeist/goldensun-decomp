	.include "macros.inc"

.thumb_func_start Func_80a8604
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x28
	str	r2, [sp, #0x18]
	str	r1, [sp, #0x1c]
	ldr	r3, =iwram_3001f2c
	mov	r7, r0
	ldr	r3, [r3]
	mov	r0, #1
	neg	r0, r0
	mov	r8, r3
	bl	_Func_807a5bc
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	ldr	r0, [sp, #0x1c]
	str	r3, [sp, #0xc]
	bl	_Func_8077394
	ldr	r2, [sp, #0x18]
	mov	r3, #0xff
	and	r3, r2
	mov	r2, #7
	str	r0, [sp, #0x14]
	str	r2, [sp, #0x10]
	cmp	r3, #1
	beq	.La864a
	mov	r3, #0xa
	str	r3, [sp, #0x10]
.La864a:
	mov	r3, #0xbe
	lsl	r3, #1
	add	r3, r8
	ldr	r2, [r3]
	mov	r3, #1
	strb	r3, [r2, #5]
	ldr	r1, [sp, #0x1c]
	ldr	r2, [sp, #0x18]
	mov	r0, r7
	bl	Func_80a8914
	add	r5, sp, #0x20
	ldr	r2, [sp, #0x1c]
	mov	r1, #1
	mov	r0, r5
	bl	Func_80a8b10
	mov	r0, r5
	bl	Func_80a9dc4
	mov	r6, #0x80
	ldr	r2, [sp, #0x18]
	lsl	r6, #1
	and	r6, r2
	cmp	r6, #0
	bne	.La868c
	mov	r3, #0x60
	mov	r0, r7
	mov	r1, #0
	mov	r2, #0x28
	str	r3, [sp]
	bl	_Func_80164d4
.La868c:
	mov	r3, #0
	mov	r10, r3
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.La86a6
	mov	r2, #0x10
	ldr	r0, =0xbd5
	mov	r1, r7
	mov	r3, #0x28
	bl	_Func_801e7c0
	mov	r2, #1
	mov	r10, r2
.La86a6:
	ldrb	r3, [r5, #1]
	cmp	r3, #0
	beq	.La86c0
	mov	r2, r10
	lsl	r3, r2, #4
	add	r3, #0x28
	ldr	r0, =0xbd6
	mov	r1, r7
	mov	r2, #0x10
	bl	_Func_801e7c0
	mov	r3, #1
	add	r10, r3
.La86c0:
	ldrb	r3, [r5, #2]
	cmp	r3, #0
	beq	.La86da
	mov	r2, r10
	lsl	r3, r2, #4
	add	r3, #0x28
	ldr	r0, =0xbd7
	mov	r1, r7
	mov	r2, #0x10
	bl	_Func_801e7c0
	mov	r3, #1
	add	r10, r3
.La86da:
	ldrb	r3, [r5, #3]
	cmp	r3, #0
	beq	.La86f4
	mov	r2, r10
	lsl	r3, r2, #4
	add	r3, #0x28
	ldr	r0, =0xbd8
	mov	r1, r7
	mov	r2, #0x10
	bl	_Func_801e7c0
	mov	r3, #1
	add	r10, r3
.La86f4:
	ldrb	r3, [r5, #4]
	cmp	r3, #0
	beq	.La870e
	mov	r2, r10
	lsl	r3, r2, #4
	add	r3, #0x28
	ldr	r0, =0xbd9
	mov	r1, r7
	mov	r2, #0x10
	bl	_Func_801e7c0
	mov	r3, #1
	add	r10, r3
.La870e:
	mov	r2, r10
	cmp	r2, #0
	bne	.La8720
	ldr	r0, =0xbd4
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x28
	bl	_Func_801e7c0
.La8720:
	mov	r0, r5
	bl	Func_80a9dc4
	mov	r0, r5
	bl	Func_80a9d3c
	mov	r3, #0x88
	lsl	r3, #2
	add	r3, r8
	ldrh	r3, [r3]
	cmp	r3, #3
	bne	.La873a
	b	.La88c6
.La873a:
	cmp	r6, #0
	bne	.La8754
	mov	r0, #1
	bl	Func_80030f8
	mov	r3, #0x60
	str	r3, [sp]
	mov	r0, r7
	mov	r1, #0x40
	mov	r2, #0x38
	mov	r3, #0xe0
	bl	_Func_80164d4
.La8754:
	mov	r0, #0xf
	bl	_Func_801e71c
	ldr	r3, [sp, #0x18]
	cmp	r3, #1
	beq	.La8766
	ldr	r2, [sp, #0xc]
	cmp	r2, #1
	bne	.La87a0
.La8766:
	mov	r5, #4
	ldr	r3, [sp, #0x10]
	mov	r0, r7
	mov	r1, #1
	mov	r2, #0xf
	str	r5, [sp]
	bl	_Func_8019000
	mov	r0, r7
	ldr	r3, [sp, #0x10]
	mov	r1, #2
	mov	r2, #0x13
	str	r5, [sp]
	bl	_Func_8019000
	mov	r0, r7
	mov	r1, #3
	mov	r2, #0x17
	ldr	r3, [sp, #0x10]
	str	r5, [sp]
	bl	_Func_8019000
	mov	r0, r7
	mov	r1, #4
	mov	r2, #0x1b
	ldr	r3, [sp, #0x10]
	str	r5, [sp]
	bl	_Func_8019000
.La87a0:
	ldr	r3, [sp, #0xc]
	cmp	r3, #0
	beq	.La87b8
	ldr	r2, [sp, #0x10]
	lsl	r6, r2, #3
	mov	r3, r6
	ldr	r0, =0xafd
	add	r3, #8
	mov	r1, r7
	mov	r2, #0x40
	bl	_Func_801e7c0
.La87b8:
	ldr	r3, [sp, #0x18]
	cmp	r3, #1
	bne	.La87fc
	ldr	r2, [sp, #0xc]
	cmp	r2, #0
	bne	.La87ca
	ldr	r3, [sp, #0x10]
	sub	r3, #1
	str	r3, [sp, #0x10]
.La87ca:
	ldr	r2, [sp, #0x10]
	lsl	r6, r2, #3
	mov	r3, r6
	ldr	r0, =.Laf22c
	add	r3, #0x10
	mov	r1, r7
	mov	r2, #0x40
	bl	_Func_801e8b0
	ldr	r5, =0xafe
	mov	r3, r6
	mov	r0, r5
	add	r3, #0x18
	mov	r1, r7
	mov	r2, #0x40
	bl	_Func_801e7c0
	add	r5, #1
	mov	r3, r6
	add	r3, #0x20
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x40
	bl	_Func_801e7c0
.La87fc:
	ldr	r2, [sp, #0x10]
	mov	r3, #0
	lsl	r2, #3
	mov	r10, r3
	ldr	r3, [sp, #0x14]
	str	r2, [sp, #8]
	add	r2, #8
	add	r3, #0x48
	str	r2, [sp, #4]
	mov	r2, #0x68
	mov	r8, r3
	mov	r11, r2
	mov	r3, #0x78
	ldr	r2, [sp, #0x14]
	mov	r9, r3
	add	r3, #0xa0
	add	r5, r2, r3
.La881e:
	ldr	r2, [sp, #0xc]
	cmp	r2, #0
	beq	.La8834
	ldr	r3, [sp, #4]
	ldrb	r0, [r5]
	mov	r1, #1
	str	r3, [sp]
	mov	r2, r7
	mov	r3, r9
	bl	_Func_801ea08
.La8834:
	ldr	r2, [sp, #0x18]
	mov	r3, #0xff
	and	r3, r2
	cmp	r3, #1
	bne	.La88b0
	ldr	r3, [sp, #0xc]
	cmp	r3, #0
	beq	.La8866
	ldr	r2, [sp, #4]
	ldrb	r0, [r5, #4]
	mov	r1, #1
	str	r2, [sp]
	mov	r3, r11
	mov	r2, r7
	ldr	r6, [sp, #8]
	bl	_Func_801ea08
	mov	r2, r9
	sub	r2, #8
	ldr	r0, =.Laf230
	mov	r1, r7
	ldr	r3, [sp, #4]
	bl	_Func_801e940
	b	.La886a
.La8866:
	ldr	r3, [sp, #0x10]
	lsl	r6, r3, #3
.La886a:
	ldr	r0, [sp, #0x1c]
	mov	r1, r10
	bl	_Func_807987c
	mov	r2, r6
	add	r2, #0x10
	mov	r3, r9
	str	r2, [sp]
	sub	r3, #8
	mov	r2, r7
	mov	r1, #2
	bl	_Func_801ea08
	mov	r3, r8
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	mov	r3, r6
	add	r3, #0x18
	mov	r2, r7
	str	r3, [sp]
	mov	r1, #3
	mov	r3, r11
	bl	_Func_801ea08
	mov	r3, r8
	mov	r2, #2
	ldrsh	r0, [r3, r2]
	mov	r3, r6
	add	r3, #0x20
	str	r3, [sp]
	mov	r1, #3
	mov	r2, r7
	mov	r3, r11
	bl	_Func_801ea08
.La88b0:
	mov	r2, #4
	add	r8, r2
	mov	r2, #1
	mov	r3, #0x20
	add	r10, r2
	add	r11, r3
	add	r9, r3
	mov	r3, r10
	add	r5, #1
	cmp	r3, #3
	ble	.La881e
.La88c6:
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a8604

