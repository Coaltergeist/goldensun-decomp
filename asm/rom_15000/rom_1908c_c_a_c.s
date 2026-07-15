	.include "macros.inc"
	.include "gba.inc"


	.section .text.after_19908, "ax", %progbits

	.section .text.after_1999c, "ax", %progbits


	.section .text.after_19a54, "ax", %progbits


.thumb_func_start Func_8019aa0  @ 0x08019aa0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	sub	sp, #0x18
	mov	r8, r3
	mov	r6, r1
	mov	r3, #8
	mov	r1, #1
	mov	r9, r2
	str	r3, [sp, #0x14]
	str	r3, [sp, #0x10]
	mov	r7, r0
	bl	BufferString
	mov	r2, #0xeb
	lsl	r2, #4
	lsl	r3, r0, #1
	add	r3, r2
	mov	r2, r8
	ldrh	r3, [r2, r3]
	mov	r5, #0
	mov	r10, r0
	cmp	r3, #0
	beq	.L19b84
	add	r0, sp, #8
	add	r1, sp, #0x14
	add	r2, sp, #0x10
	add	r3, sp, #0xc
	str	r0, [sp]
	mov	r0, r7
	bl	TextBox
	ldr	r2, [sp, #0xc]
	mov	r3, #0x1e
	sub	r3, r2
	ldr	r4, [sp, #8]
	asr	r0, r3, #1
	mov	r3, #0xf
	sub	r3, r4
	asr	r3, #1
	mov	r7, r9
	add	r1, r3, r7
	str	r0, [sp, #0x14]
	str	r1, [sp, #0x10]
	cmp	r6, #0
	beq	.L19b10
	mov	r3, r4
	str	r5, [sp]
	bl	CreateUIBox
	mov	r5, r0
	b	.L19b22
.L19b10:
	mov	r3, #2
	str	r3, [sp]
	mov	r2, #0
	mov	r3, #0
	bl	CreateUIBox
	mov	r5, r0
	strh	r6, [r5, #8]
	strh	r6, [r5, #0xa]
.L19b22:
	mov	r3, #0
	mov	r0, r5
	mov	r1, r10
	mov	r2, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	bl	Func_80165d8
	cmp	r0, #0
	bne	.L19b46
	mov	r0, r5
	mov	r1, #1
	bl	CloseUIBox
	b	.L19b84
.L19b40:
	mov	r0, #1
	bl	WaitFrames
.L19b46:
	bl	Func_8017364
	cmp	r0, #0
	beq	.L19b40
	cmp	r6, #0
	beq	.L19b6e
	mov	r0, r5
	mov	r1, #0
	bl	CloseUIBox
	b	.L19b62
.L19b5c:
	mov	r0, #1
	bl	WaitFrames
.L19b62:
	mov	r0, r5
	bl	Func_8017394
	cmp	r0, #0
	beq	.L19b5c
	b	.L19b76
.L19b6e:
	mov	r0, r5
	mov	r1, #1
	bl	CloseUIBox
.L19b76:
	ldr	r3, =0x12f4
	mov	r2, #0
	add	r3, r8
	strh	r2, [r3]
	ldr	r3, =0x12f6
	add	r3, r8
	strh	r2, [r3]
.L19b84:
	add	sp, #0x18
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8019aa0
