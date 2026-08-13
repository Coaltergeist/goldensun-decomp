	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b9724  @ 0x080b9724
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	sub	sp, #0x14
	mov	r9, r3
	add	r3, sp, #4
	add	r2, sp, #8
	mov	r8, r3
	mov	r7, sp
	str	r0, [r2]
	mov	r3, #0
	mov	r0, r8
	str	r1, [r7]
	str	r3, [r0]
	ldr	r0, [r7]
	lsl	r0, #4
	mov	r1, #0x14
	add	r0, #0x13
	mov	r11, r2
	bl	__udivsi3
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	mov	r0, #0x28
	str	r3, [sp, #0xc]
	bl	alloc_ewram
	ldr	r3, [r7]
	add	r5, sp, #0x10
	mov	r10, r5
	str	r0, [r5]
	cmp	r3, #0
	ble	.Lb97b0
	mov	r2, r11
	mov	r6, r9
	ldr	r1, [r2]
	mov	r0, #1
	add	r6, #0x50
	mov	r4, r3
.Lb9780:
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	mov	r2, r9
	add	r3, #0x48
	ldrb	r3, [r2, r3]
	strh	r3, [r1, #2]
	ldrb	r3, [r6]
	cmp	r3, #0
	bne	.Lb97a0
	ldrh	r2, [r1, #4]
	mov	r3, r0
	and	r3, r2
	cmp	r3, #0
	beq	.Lb97a8
	add	r3, r2, #1
	b	.Lb97a6
.Lb97a0:
	ldrh	r2, [r1, #4]
	mov	r3, r0
	orr	r3, r2
.Lb97a6:
	strh	r3, [r1, #4]
.Lb97a8:
	sub	r4, #1
	add	r1, #0x10
	cmp	r4, #0
	bne	.Lb9780
.Lb97b0:
	mov	r3, r9
	add	r3, #0x52
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb9890
	mov	r3, r9
	add	r3, #0x50
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb980e
	mov	r3, r10
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r3, [r2]
	bl	_RPGRandom
	mov	r1, r10
	ldr	r3, [r1]
	str	r0, [r3, #4]
	ldr	r2, =REG_IME
	ldrh	r1, [r2]
	strh	r2, [r2]
	ldr	r4, =sRPGRNGState
	ldr	r3, =gRNGState
	add	r5, sp, #0x10
	ldr	r3, [r3]
	ldr	r0, [r5]
	str	r3, [r0, #8]
	str	r3, [r4]
	strh	r1, [r2]
	add	r2, sp, #0x14
	mov	r9, r2
	bl	Func_80b9554
	cmp	r0, #0
	blt	.Lb9890
	add	r3, sp, #0x14
	mov	r9, r3
	bl	Func_80b9604
	cmp	r0, #0
	blt	.Lb9890
	ldr	r3, [r5]
	ldr	r3, [r3]
	mov	r0, r8
	str	r3, [r0]
	b	.Lb9848
.Lb980e:
	add	r1, sp, #0x14
	mov	r9, r1
	bl	Func_80b9604
	cmp	r0, #0
	blt	.Lb9890
	mov	r3, r10
	ldr	r2, [r3]
	ldr	r3, [r2]
	mov	r0, r8
	str	r3, [r0]
	ldr	r3, [r7]
	add	r1, sp, #0x14
	str	r3, [r2]
	mov	r9, r1
	bl	Func_80b9554
	cmp	r0, #0
	blt	.Lb9890
	bl	_RPGRandom
	mov	r2, r10
	ldr	r1, [r2]
	ldr	r3, [r1, #4]
	cmp	r0, r3
	bne	.Lb9890
	ldr	r2, =sRPGRNGState
	ldr	r3, [r1, #8]
	str	r3, [r2]
.Lb9848:
	mov	r3, r8
	ldr	r1, [r3]
	cmp	r1, #0
	ble	.Lb9870
	mov	r0, r11
	ldr	r3, [r7]
	ldr	r2, [r0]
	lsl	r3, #4
	ldr	r6, .Lb987c	@ 0x80
	add	r0, r3, r2
	mov	r4, r1
.Lb985e:
	ldrh	r3, [r0, #2]
	strh	r3, [r0]
	ldrh	r3, [r0, #0xa]
	sub	r4, #1
	eor	r3, r6
	strh	r3, [r0, #0xa]
	add	r0, #0x10
	cmp	r4, #0
	bne	.Lb985e
.Lb9870:
	ldr	r0, [r5]
	bl	free
	mov	r1, r8
	ldr	r0, [r1]
	b	.Lb98a2

	.align	2, 0
.Lb987c:
	.word	0x80
	.pool

.Lb9890:
	bl	Func_800651c
	bl	Func_8006358
	ldr	r0, [r5]
	bl	free
	mov	r0, #1
	neg	r0, r0
.Lb98a2:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b9724
