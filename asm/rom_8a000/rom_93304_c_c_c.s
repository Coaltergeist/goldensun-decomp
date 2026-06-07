	.include "macros.inc"

.thumb_func_start Func_8094380
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =ewram_2000240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r6, r0
	ldr	r0, [r3]
	bl	Func_808ba1c
	mov	r5, r0
	ldr	r2, [r5, #0x50]
	mov	r8, r2
	mov	r0, r8
	mov	r1, #0x1b
	bl	_Func_800b8ac
	mov	r3, #0
	mov	r10, r3
	mov	r7, r8
	add	r7, #0x26
	mov	r1, r10
	strb	r1, [r7]
	mov	r3, #0xf
	ldr	r2, =0xfff00000
	strb	r3, [r0, #5]
	mov	r1, #0x80
	ldr	r3, [r5, #8]
	lsl	r1, #12
	and	r3, r2
	mov	r9, r1
	add	r3, r9
	str	r3, [r5, #8]
	ldr	r3, [r5, #0x10]
	and	r3, r2
	mov	r1, r6
	str	r3, [r5, #0x10]
	mov	r0, r5
	bl	_Func_800c300
	mov	r0, #0x1e
	bl	Func_80030f8
	mov	r3, r8
	add	r3, #0x27
	mov	r6, #1
	strb	r6, [r3]
	mov	r2, r8
	ldr	r0, [r2, #0x2c]
	bl	_Func_800bc48
	mov	r3, r10
	mov	r1, r8
	str	r3, [r1, #0x2c]
	strb	r6, [r7]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	str	r3, [r5, #0x30]
	ldr	r3, [r5, #0x10]
	mov	r0, r5
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	add	r3, r9
	bl	_Func_800d14c
	mov	r0, r5
	bl	_Func_800ca6c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8094380

.thumb_func_start Func_8094428
	push	{r5, r6, lr}
	mov	r5, #0x90
	lsl	r5, #1
	mov	r0, r5
	mov	r6, #0
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L9444a
	mov	r0, #0x18
	bl	Func_8094380
	mov	r0, r5
	bl	_Func_8079374
	mov	r6, #1
	b	.L944da
.L9444a:
	ldr	r5, =0x121
	mov	r0, r5
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L94466
	mov	r0, #0x17
	bl	Func_8094380
	mov	r0, r5
	bl	_Func_8079374
	mov	r6, #2
	b	.L944da
.L94466:
	mov	r5, #0x91
	lsl	r5, #1
	mov	r0, r5
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L944da
	mov	r0, r5
	bl	_Func_8079374
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r6, [r3]
	mov	r0, r6
	bl	Func_808ba1c
	mov	r5, r0
	ldr	r3, [r5, #0xc]
	mov	r2, #0xa0
	lsl	r2, #16
	add	r3, r2
	mov	r2, #1
	neg	r2, r2
	str	r3, [r5, #0xc]
	mov	r0, r2
	mov	r1, r2
	mov	r3, #0
	bl	Func_80933f8
	b	.L944ac
.L944a6:
	mov	r0, #1
	bl	Func_80030f8
.L944ac:
	ldr	r2, [r5, #0x28]
	ldr	r3, [r5, #0xc]
	add	r3, r2
	ldr	r2, [r5, #0x14]
	cmp	r3, r2
	bgt	.L944a6
	mov	r0, #0x9f
	bl	_Func_80f9080
	ldr	r3, [r5, #0x14]
	mov	r1, #0x16
	str	r3, [r5, #0xc]
	mov	r0, r5
	bl	_Func_800c300
	mov	r0, #0xf
	bl	Func_809163c
	mov	r0, r6
	mov	r1, #1
	bl	Func_809335c
	mov	r6, #3
.L944da:
	mov	r0, r6
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8094428

	.section .rodata
	.global .L9fc28
	.global .L9fc2c
	.global .L9fd38
	.global .L9fd44
	.global .L9fe00
	.global .L9fe04
	.global .L9fe10
	.global .L9fecc
	.global .L9ff18
	.global .L9ff2c

.L9fc28:
	.incrom 0x9fc28, 0x9fc2c
.L9fc2c:
	.incrom 0x9fc2c, 0x9fd38
.L9fd38:
	.incrom 0x9fd38, 0x9fd44
.L9fd44:
	.incrom 0x9fd44, 0x9fe00
.L9fe00:
	.incrom 0x9fe00, 0x9fe04
.L9fe04:
	.incrom 0x9fe04, 0x9fe10
.L9fe10:
	.incrom 0x9fe10, 0x9fecc
.L9fecc:
	.incrom 0x9fecc, 0x9ff18
.L9ff18:
	.incrom 0x9ff18, 0x9ff2c
.L9ff2c:
	.incrom 0x9ff2c, 0x9ff40
