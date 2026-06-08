	.include "macros.inc"

.thumb_func_start Func_801a98c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e98
	ldr	r3, [r3]
	mov	r0, #0xc0
	mov	r10, r3
	lsl	r0, #2
	mov	r3, #0
	sub	sp, #0x18
	add	r0, r10
	mov	r11, r3
	mov	r3, #0xd2
	str	r0, [sp, #8]
	lsl	r3, #2
	mov	r1, #0xb6
	mov	r2, #0xc3
	add	r3, r10
	lsl	r1, #2
	lsl	r2, #2
	ldr	r7, [r3]
	add	r1, r10
	add	r2, r10
	mov	r8, r1
	mov	r9, r2
	cmp	r7, #0
	bne	.L1a9cc
	b	.L1ab1c
.L1a9cc:
	mov	r6, r7
	add	r6, #0x28
	mov	r4, #4
	ldrb	r3, [r6, #5]
	neg	r4, r4
	mov	r2, r4
	and	r3, r2
	mov	r5, #0x3f
	strb	r3, [r6, #5]
	neg	r5, r5
	ldrb	r3, [r6, #7]
	mov	r2, r5
	and	r3, r2
	strb	r3, [r6, #7]
	ldrh	r1, [r7, #0x10]
	ldr	r3, .L1aa18	@ 0x1ff
	ldr	r2, .L1aa1c	@ 0xfffffe00
	and	r1, r3
	ldrh	r3, [r6, #6]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r6, #6]
	ldrh	r3, [r7, #0x12]
	mov	r0, #0xf0
	strb	r3, [r6, #4]
	mov	r1, r3
	mov	r3, #0xe8
	str	r0, [sp, #4]
	lsl	r3, #2
	add	r3, r10
	ldrh	r2, [r3]
	mov	r3, r2
	cmp	r3, #0
	beq	.L1aa24
	add	r3, r2, r1
	strb	r3, [r6, #4]
	b	.L1aac0

	.align	2, 0
.L1aa18:
	.word	0x1ff
.L1aa1c:
	.word	0xfffffe00
	.pool

.L1aa24:
	mov	r1, #0x10
	ldrsh	r2, [r7, r1]
	mov	r3, #0x18
	ldrsh	r1, [r7, r3]
	ldrh	r5, [r7, #0x10]
	ldrh	r4, [r7, #0x18]
	cmp	r2, r1
	beq	.L1aa78
	ldrh	r0, [r7, #0x14]
	mov	r12, r0
	mov	r0, #0x14
	ldrsh	r3, [r7, r0]
	cmp	r3, #0
	ble	.L1aa4c
	add	r3, r2, r3
	cmp	r3, r1
	bgt	.L1aa52
	mov	r1, r12
	add	r3, r5, r1
	b	.L1aa5a
.L1aa4c:
	add	r3, r2, r3
	cmp	r3, r1
	bge	.L1aa56
.L1aa52:
	strh	r4, [r7, #0x10]
	b	.L1aa5c
.L1aa56:
	mov	r2, r12
	add	r3, r5, r2
.L1aa5a:
	strh	r3, [r7, #0x10]
.L1aa5c:
	ldrh	r1, [r7, #0x10]
	ldr	r3, =0x1ff
	ldr	r2, =0xfffffe00
	and	r1, r3
	ldrh	r3, [r6, #6]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r6, #6]
	b	.L1aac0

	.pool_aligned

.L1aa78:
	ldr	r3, =0x39e
	add	r3, r10
	ldrh	r3, [r3]
	cmp	r11, r3
	bne	.L1aac0
	mov	r3, #0xf1
	str	r3, [sp, #4]
	mov	r4, r8
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	beq	.L1aac0
	add	r5, sp, #0xc
	mov	r1, r5
	ldrh	r0, [r7, #8]
	bl	_Func_80b845c
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.L1aac0
	ldr	r2, [r5]
	mov	r3, r8
	strh	r2, [r3, #0x18]
	mov	r4, r8
	ldr	r1, [r5, #4]
	mov	r5, #0x22
	ldrsh	r3, [r4, r5]
	strh	r1, [r4, #0x1a]
	cmp	r3, #0
	bne	.L1aac0
	mov	r0, r8
	strh	r2, [r0, #0x10]
	mov	r3, #1
	mov	r2, r8
	strh	r1, [r2, #0x12]
	strh	r3, [r4, #0x22]
.L1aac0:
	mov	r5, #0x22
	ldrsh	r3, [r7, r5]
	cmp	r3, #0
	beq	.L1ab10
	ldr	r0, =0x103
	bl	_GetFlag
	cmp	r0, #0
	beq	.L1ab08
	ldr	r3, =0x2e2
	add	r3, r10
	ldrh	r3, [r3]
	cmp	r3, #1
	bne	.L1aaea
	ldrb	r3, [r6, #5]
	mov	r0, #0xd
	neg	r0, r0
	and	r3, r0
	mov	r2, #4
	orr	r3, r2
	b	.L1aaf2
.L1aaea:
	ldrb	r3, [r6, #5]
	mov	r1, #0xd
	neg	r1, r1
	and	r3, r1
.L1aaf2:
	strb	r3, [r6, #5]
	ldrh	r3, [r7, #0xa]
	cmp	r3, #1
	bne	.L1ab08
	ldrb	r3, [r6, #5]
	mov	r2, #0xd
	neg	r2, r2
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #5]
.L1ab08:
	mov	r0, r6
	ldr	r1, [sp, #4]
	bl	Func_8003dec
.L1ab10:
	ldr	r7, [r7, #4]
	mov	r3, #1
	add	r11, r3
	cmp	r7, #0
	beq	.L1ab1c
	b	.L1a9cc
.L1ab1c:
	mov	r4, r9
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	bne	.L1ab26
	b	.L1ac36
.L1ab26:
	mov	r0, r10
	bl	Func_801b36c
	mov	r5, r9
	add	r5, #0x28
	mov	r6, #0xd
	ldrb	r3, [r5, #5]
	neg	r6, r6
	mov	r2, r6
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r5, #7]
	neg	r3, r3
	and	r2, r3
	sub	r3, #0x3b
	and	r3, r1
	mov	r1, #0x11
	neg	r1, r1
	and	r2, r1
	mov	r1, #0x20
	mov	r7, r0
	orr	r2, r1
	mov	r0, #0x3f
	and	r2, r0
	and	r3, r0
	mov	r1, #0x80
	strb	r2, [r5, #5]
	orr	r3, r1
	ldrb	r2, [r5, #9]
	strb	r3, [r5, #7]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r5, #9]
	mov	r0, r9
	ldrh	r3, [r0, #0xe]
	ldr	r2, =0x3ff
	ldrh	r1, [r5, #8]
	and	r2, r3
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #8]
	ldrh	r2, [r7, #0x10]
	ldr	r1, =0x1ff
	sub	r2, #4
	and	r2, r1
	ldr	r3, =0xfffffe00
	ldrh	r1, [r5, #6]
	mov	r11, r3
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #6]
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	ldr	r0, =.L36740
	mov	r2, #0xf
	lsr	r3, #1
	and	r3, r2
	ldrb	r3, [r0, r3]
	ldrb	r1, [r7, #0x12]
	lsl	r3, #24
	asr	r3, #25
	add	r1, r3
	sub	r1, #4
	strb	r1, [r5, #4]
	mov	r4, r9
	mov	r0, #0x22
	ldrsh	r2, [r4, r0]
	mov	r0, #0x26
	ldrsh	r3, [r4, r0]
	ldrh	r1, [r4, #0x22]
	cmp	r2, r3
	beq	.L1ac18
	mov	r0, #0xd0
	lsl	r0, #2
	add	r0, r10
	strh	r1, [r0]
	ldr	r3, =0x342
	ldrh	r2, [r4, #0x22]
	add	r3, r10
	strh	r2, [r3]
	mov	r2, #0xd1
	lsl	r2, #2
	add	r2, r10
	mov	r3, #0
	strh	r3, [r2]
	bl	Func_8003d28
	mov	r3, #0x1f
	ldrb	r2, [r5, #7]
	and	r0, r3
	mov	r3, #0x3f
	neg	r3, r3
	lsl	r0, #1
	and	r3, r2
	orr	r3, r0
	strb	r3, [r5, #7]
	ldrb	r3, [r5, #5]
	ldrh	r1, [r5, #6]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r5, #5]
	ldr	r2, =0xfff0
	lsl	r3, r1, #23
	lsr	r3, #23
	ldr	r4, =0x1ff
	add	r3, r2
	mov	r2, r11
	and	r3, r4
	and	r2, r1
	orr	r2, r3
	ldrb	r3, [r5, #4]
	add	r3, #0xf0
	strh	r2, [r5, #6]
	strb	r3, [r5, #4]
	mov	r0, r9
	ldrh	r3, [r0, #0x22]
	ldrh	r2, [r0, #0x24]
	mov	r1, r9
	add	r3, r2
	strh	r3, [r1, #0x22]
.L1ac18:
	ldr	r0, =0x103
	bl	_GetFlag
	cmp	r0, #0
	beq	.L1ac2e
	ldrb	r3, [r5, #5]
	mov	r2, r6
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r5, #5]
.L1ac2e:
	mov	r0, r5
	mov	r1, #0xf8
	bl	Func_8003dec
.L1ac36:
	mov	r0, r10
	mov	r1, #0
	bl	DisplayMenuArrowCursor
	mov	r0, r10
	mov	r1, #1
	bl	DisplayMenuArrowCursor
	mov	r3, #0xd3
	lsl	r3, #2
	add	r3, r10
	ldr	r7, [r3]
	cmp	r7, #0
	bne	.L1ac54
	b	.L1adaa
.L1ac54:
	mov	r2, #0xd0
	lsl	r2, #2
	mov	r3, #0xd
	add	r2, r10
	neg	r3, r3
	mov	r9, r2
	mov	r11, r3
.L1ac62:
	mov	r4, #0x10
	ldrsh	r2, [r7, r4]
	mov	r5, #0x18
	ldrsh	r3, [r7, r5]
	mov	r6, r7
	add	r6, #0x28
	ldrh	r1, [r7, #0x10]
	cmp	r2, r3
	beq	.L1ac7a
	ldrh	r3, [r7, #0x14]
	add	r3, r1, r3
	strh	r3, [r7, #0x10]
.L1ac7a:
	mov	r0, #0x12
	ldrsh	r2, [r7, r0]
	mov	r4, #0x1a
	ldrsh	r3, [r7, r4]
	ldrh	r1, [r7, #0x12]
	cmp	r2, r3
	beq	.L1ac8e
	ldrh	r3, [r7, #0x16]
	add	r3, r1, r3
	strh	r3, [r7, #0x12]
.L1ac8e:
	ldr	r4, =0x1ff
	ldrh	r3, [r7, #0x10]
	ldr	r5, =0xfffffe00
	ldrh	r1, [r6, #6]
	mov	r2, r4
	and	r2, r3
	mov	r3, r5
	and	r3, r1
	orr	r3, r2
	strh	r3, [r6, #6]
	ldrh	r3, [r7, #0x12]
	strb	r3, [r6, #4]
	mov	r3, #0x22
	ldrsh	r2, [r7, r3]
	mov	r14, r2
	mov	r3, #0x26
	ldrsh	r2, [r7, r3]
	mov	r12, r2
	mov	r0, #0
	ldrh	r1, [r7, #0x22]
	cmp	r14, r12
	beq	.L1ad16
	ldrh	r3, [r7, #0x24]
	add	r3, r1, r3
	mov	r1, r9
	strh	r3, [r7, #0x22]
	strh	r3, [r1]
	ldr	r3, =0x342
	ldrh	r2, [r7, #0x22]
	add	r3, r10
	strh	r2, [r3]
	mov	r3, #0xd1
	lsl	r3, #2
	add	r3, r10
	strh	r0, [r3]
	mov	r0, r9
	str	r4, [sp]
	bl	Func_8003d28
	mov	r3, #0x1f
	mov	r1, #0x3f
	and	r0, r3
	neg	r1, r1
	ldrb	r3, [r6, #7]
	mov	r2, r1
	and	r3, r2
	lsl	r0, #1
	orr	r3, r0
	strb	r3, [r6, #7]
	ldrb	r3, [r6, #5]
	ldrh	r1, [r6, #6]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r6, #5]
	lsl	r2, r1, #23
	ldr	r3, =0xfff8
	lsr	r2, #23
	ldr	r4, [sp]
	add	r2, r3
	mov	r3, r5
	and	r2, r4
	and	r3, r1
	orr	r3, r2
	strh	r3, [r6, #6]
	ldrb	r3, [r6, #4]
	add	r3, #0xf8
	strb	r3, [r6, #4]
	b	.L1ad2e
.L1ad16:
	mov	r4, #4
	ldrb	r3, [r6, #5]
	neg	r4, r4
	mov	r2, r4
	and	r3, r2
	mov	r5, #0x3f
	strb	r3, [r6, #5]
	neg	r5, r5
	ldrb	r3, [r6, #7]
	mov	r2, r5
	and	r3, r2
	strb	r3, [r6, #7]
.L1ad2e:
	ldr	r0, =0x103
	bl	_GetFlag
	cmp	r0, #0
	beq	.L1ad9a
	ldr	r3, =0x2e2
	add	r3, r10
	ldrh	r3, [r3]
	cmp	r3, #1
	bne	.L1ad80
	ldrb	r3, [r6, #5]
	mov	r0, r11
	and	r3, r0
	mov	r2, #4
	orr	r3, r2
	b	.L1ad86

	.pool_aligned

.L1ad80:
	ldrb	r3, [r6, #5]
	mov	r1, r11
	and	r3, r1
.L1ad86:
	strb	r3, [r6, #5]
	ldrh	r3, [r7, #0xa]
	cmp	r3, #1
	bne	.L1ad9a
	ldrb	r3, [r6, #5]
	mov	r2, r11
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #5]
.L1ad9a:
	mov	r0, r6
	mov	r1, #0xf0
	bl	Func_8003dec
	ldr	r7, [r7, #4]
	cmp	r7, #0
	beq	.L1adaa
	b	.L1ac62
.L1adaa:
	mov	r4, r8
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	bne	.L1adb4
	b	.L1aecc
.L1adb4:
	ldr	r3, =iwram_3001800
	ldr	r2, [r3]
	ldr	r5, =Data_346f8
	mov	r3, #0xf
	lsr	r2, #2
	and	r2, r3
	mov	r11, r5
	lsl	r2, #8
	mov	r1, #0x80
	add	r2, r11
	ldrh	r0, [r4, #0xc]
	lsl	r1, #1
	bl	UploadSpriteGFX
	ldr	r3, .L1ae00	@ 0x3ff
	ldr	r1, [sp, #8]
	and	r0, r3
	ldrh	r2, [r1, #8]
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	mov	r2, r1
	strh	r3, [r2, #8]
	mov	r3, r8
	ldrh	r0, [r3, #0x18]
	mov	r4, #0x18
	ldrsh	r2, [r3, r4]
	ldrh	r1, [r3, #0x10]
	mov	r5, #0x10
	ldrsh	r3, [r3, r5]
	cmp	r2, r3
	beq	.L1ae1c
	sub	r3, r2, r3
	asr	r3, #1
	cmp	r3, #0
	beq	.L1ae18
	b	.L1ae10

	.align	2, 0
.L1ae00:
	.word	0x3ff
	.pool

.L1ae10:
	add	r3, r1, r3
	mov	r0, r8
	strh	r3, [r0, #0x10]
	b	.L1ae1c
.L1ae18:
	mov	r1, r8
	strh	r0, [r1, #0x10]
.L1ae1c:
	mov	r2, r8
	mov	r5, r8
	ldrh	r1, [r2, #0x1a]
	mov	r3, #0x1a
	ldrsh	r2, [r2, r3]
	mov	r4, #0x12
	ldrsh	r3, [r5, r4]
	mov	r0, r3
	cmp	r2, r3
	beq	.L1ae48
	sub	r3, r2, r3
	asr	r3, #1
	cmp	r3, #0
	beq	.L1ae42
	add	r3, r0, r3
	mov	r0, r8
	strh	r3, [r0, #0x12]
	mov	r0, r3
	b	.L1ae48
.L1ae42:
	mov	r2, r8
	strh	r1, [r2, #0x12]
	mov	r0, r1
.L1ae48:
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	ldr	r1, =.L36740
	mov	r2, #0xf
	lsr	r3, #2
	and	r3, r2
	ldrb	r3, [r1, r3]
	ldr	r4, [sp, #8]
	add	r3, r0
	sub	r3, #0x20
	strb	r3, [r4, #4]
	mov	r5, r8
	ldrh	r2, [r5, #0x10]
	ldr	r3, .L1ae8c	@ 0x1ff
	sub	r2, #4
	and	r2, r3
	ldrh	r1, [r4, #6]
	ldr	r3, =0xfffffe00
	ldr	r0, [sp, #8]
	and	r3, r1
	orr	r3, r2
	strh	r3, [r0, #6]
	ldr	r0, =0x103
	bl	_GetFlag
	cmp	r0, #0
	beq	.L1aec4
	ldr	r3, =0x2e2
	add	r3, r10
	ldrh	r3, [r3]
	cmp	r3, #1
	bne	.L1aeb6
	b	.L1aea4

	.align	2, 0
.L1ae8c:
	.word	0x1ff
	.pool

.L1aea4:
	ldr	r1, [sp, #8]
	mov	r2, #0xd
	ldrb	r3, [r1, #5]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r1, #5]
	b	.L1aec4
.L1aeb6:
	ldr	r3, [sp, #8]
	ldrb	r2, [r3, #5]
	mov	r3, #0xd
	neg	r3, r3
	ldr	r4, [sp, #8]
	and	r3, r2
	strb	r3, [r4, #5]
.L1aec4:
	ldr	r0, [sp, #8]
	mov	r1, #0xf8
	bl	Func_8003dec
.L1aecc:
	ldr	r2, =0x3a2
	add	r2, r10
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801a98c

	.section .rodata

.L36740:
	.incrom 0x36740, 0x36750
