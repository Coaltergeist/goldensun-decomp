	.include "macros.inc"

	.section .text.after_a9a5c, "ax", %progbits

.thumb_func_start Func_80a9aec  @ 0x080a9aec
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
	bl	_GetItemInfo
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
	bl	_Func_801e7c0
	b	.La9b7c
.La9b4e:
	mov	r3, r8
	add	r0, r5, r3
	mov	r1, r6
	mov	r2, #8
	mov	r3, #0x38
	bl	_Func_801e7c0
	b	.La9b7c
.La9b5e:
	mov	r3, r8
	add	r0, r5, r3
	mov	r1, r6
	mov	r2, #8
	mov	r3, #0x28
	bl	_Func_801e7c0
	b	.La9b7c
.La9b6e:
	mov	r3, r8
	add	r0, r5, r3
	mov	r1, r6
	mov	r2, #8
	mov	r3, #0x18
	bl	_Func_801e7c0
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
.func_end Func_80a9aec
