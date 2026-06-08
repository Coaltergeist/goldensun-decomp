	.include "macros.inc"

.thumb_func_start Func_807a5bc
	push	{r5, r6, r7, lr}
	sub	sp, #0x24
	add	r6, sp, #4
	mov	r7, r0
	mov	r0, r6
	mov	r5, #0
	bl	Func_80796c4
	cmp	r5, r0
	bge	.L7a61c
	mov	r1, r6
	mov	r6, r0
.L7a5d4:
	ldrh	r0, [r1]
	add	r1, #2
	str	r1, [sp]
	bl	Func_8077394
	mov	r2, r0
	mov	r0, #1
	neg	r0, r0
	ldr	r1, [sp]
	cmp	r7, r0
	bne	.L7a60c
	mov	r0, #0x8c
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r3, [r3]
	add	r0, #1
	add	r5, r3
	add	r3, r2, r0
	ldrb	r3, [r3]
	add	r0, #1
	add	r5, r3
	add	r3, r2, r0
	ldrb	r3, [r3]
	add	r0, #1
	add	r5, r3
	add	r3, r2, r0
	ldrb	r3, [r3]
	b	.L7a614
.L7a60c:
	mov	r0, #0x8c
	lsl	r0, #1
	add	r3, r7, r0
	ldrb	r3, [r2, r3]
.L7a614:
	add	r5, r3
	sub	r6, #1
	cmp	r6, #0
	bne	.L7a5d4
.L7a61c:
	mov	r0, r5
	add	sp, #0x24
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a5bc

.thumb_func_start Func_807a628
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r8, r1
	bl	Func_8077394
	mov	r1, r8
	mov	r5, r0
	mov	r0, r7
	bl	Func_8078588
	mov	r6, #0
	add	r5, #0xd8
.L7a644:
	ldrh	r3, [r5]
	add	r5, #2
	cmp	r3, r8
	bne	.L7a654
	mov	r0, r7
	mov	r1, r6
	bl	Func_8078708
.L7a654:
	add	r6, #1
	cmp	r6, #0xe
	ble	.L7a644
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_807a628

.thumb_func_start Func_807a664
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r0, =ewram_2001078
	ldr	r2, =0x6774
	ldrh	r3, [r0]
	sub	sp, #4
	mov	r8, r0
	cmp	r3, r2
	bne	.L7a682
	b	.L7a780
.L7a682:
	mov	r1, r8
	ldr	r3, =gState
	mov	r0, #0x88
	strh	r2, [r1]
	lsl	r0, #2
	mov	r2, #2
	add	r8, r2
	add	r2, r3, r0
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	mov	r9, r1
	ldr	r1, =0x222
	add	r3, r1
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	mov	r1, #0
	mov	r11, r2
	mov	r10, r1
.L7a6a6:
	mov	r0, r10
	bl	Func_8077394
	mov	r7, r0
	mov	r2, r7
	add	r2, #0xd8
	mov	r5, #0xe
.L7a6b4:
	ldrh	r3, [r2]
	mov	r0, r8
	mov	r1, #2
	sub	r5, #1
	add	r2, #2
	strh	r3, [r0]
	add	r8, r1
	cmp	r5, #0
	bge	.L7a6b4
	ldr	r2, .L7a6f4	@ 0
	mov	r6, #0xd8
	mov	r5, #0xe
.L7a6cc:
	ldrh	r0, [r6, r7]
	str	r2, [sp]
	bl	Func_8078414
	ldrb	r3, [r0, #2]
	ldr	r2, [sp]
	cmp	r3, #6
	beq	.L7a6de
	strh	r2, [r6, r7]
.L7a6de:
	sub	r5, #1
	add	r6, #2
	cmp	r5, #0
	bge	.L7a6cc
	mov	r0, r7
	add	r0, #0xd8
	mov	r5, #0
	mov	r4, r0
	mov	r1, r0
	mov	r6, #0xe
	b	.L7a708

	.align	2, 0
.L7a6f4:
	.word	0
	.pool

.L7a708:
	ldrh	r2, [r4]
	lsl	r3, r2, #16
	add	r4, #2
	cmp	r3, #0
	beq	.L7a718
	strh	r2, [r1]
	add	r5, #1
	add	r1, #2
.L7a718:
	sub	r6, #1
	cmp	r6, #0
	bge	.L7a708
	cmp	r5, #0xe
	bgt	.L7a73c
	lsl	r3, r5, #1
	add	r0, r3, r0
	ldr	r2, =0
	mov	r3, #0xf
	sub	r5, r3, r5
.L7a72c:
	sub	r5, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r5, #0
	bne	.L7a72c
	b	.L7a73c

	.pool_aligned

.L7a73c:
	mov	r0, r10
	bl	Func_8079ae8
	mov	r0, r10
	bl	Func_8077428
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #3
	ble	.L7a6a6
	mov	r2, #2
	mov	r1, r8
	mov	r0, r9
	add	r8, r2
	strh	r0, [r1]
	mov	r3, r11
	mov	r0, r8
	strh	r3, [r0]
	ldr	r0, =ewram_2000438
	add	r8, r2
	ldrh	r3, [r0]
	mov	r1, r8
	strh	r3, [r1]
	ldrh	r3, [r0, #2]
	mov	r2, r8
	mov	r0, #0
	strh	r3, [r2, #2]
	mov	r1, #0x10
	bl	Func_807a628
	ldr	r0, =0x952
	bl	Func_8079358
.L7a780:
	mov	r0, #1
	bl	Func_807808c
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_807a664

.thumb_func_start Func_807a7a0
	push	{r5, r6, lr}
	ldr	r5, =ewram_2001078
	ldrh	r3, [r5]
	ldr	r1, =0x6774
	mov	r12, r3
	add	r5, #2
	cmp	r12, r1
	bne	.L7a812
	mov	r6, #0
.L7a7b2:
	mov	r0, r6
	bl	Func_8077394
	mov	r2, #0xe
	add	r0, #0xd8
.L7a7bc:
	ldrh	r3, [r5]
	sub	r2, #1
	strh	r3, [r0]
	add	r5, #2
	add	r0, #2
	cmp	r2, #0
	bge	.L7a7bc
	mov	r0, r6
	bl	Func_8079ae8
	mov	r0, r6
	add	r6, #1
	bl	Func_8077428
	cmp	r6, #3
	ble	.L7a7b2
	ldr	r0, =gState
	mov	r4, #0x88
	ldrh	r2, [r5]
	lsl	r4, #2
	add	r3, r0, r4
	strh	r2, [r3]
	add	r5, #2
	ldrh	r2, [r5]
	add	r4, #2
	add	r3, r0, r4
	strh	r2, [r3]
	mov	r3, #0xfc
	add	r5, #2
	lsl	r3, #1
	add	r2, r0, r3
	ldrh	r3, [r5]
	strh	r3, [r2]
	sub	r4, #0x28
	ldrh	r3, [r5, #2]
	ldr	r5, =ewram_2001078
	add	r2, r0, r4
	mov	r1, #0
	strh	r3, [r2]
	ldr	r0, =0x952
	strh	r1, [r5]
	bl	Func_8079374
.L7a812:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_807a7a0

	.section .rodata
	.global .L89258
	.global .L8926c
	.global .L84a8c
	.global .L84b1c
	.global .L88df8
	.global .L88e38
	.global .L84a8c
	.global .L84a9c
	.global .L88db8
	.global .L88e38

.L84a8c:
	.incrom 0x84a8c, 0x84a9c
.L84a9c:
	.incrom 0x84a9c, 0x84b1c
.L84b1c:
	.incrom 0x84b1c, 0x88db8
.L88db8:
	.incrom 0x88db8, 0x88df8
.L88df8:
	.incrom 0x88df8, 0x88e38
.L88e38:
	.incrom 0x88e38, 0x89258
.L89258:
	.incrom 0x89258, 0x8926c
.L8926c:
	.incrom 0x8926c, 0x89624
