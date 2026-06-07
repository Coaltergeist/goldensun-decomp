	.include "macros.inc"

.thumb_func_start Func_8091c44
	push	{r5, r6, r7, lr}
	mov	r7, r1
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L91c76
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L91c76
	ldr	r3, [r0, #0x50]
	mov	r6, r3
	mov	r5, #0
	add	r6, #0x24
	b	.L91c66
.L91c64:
	add	r5, #1
.L91c66:
	cmp	r5, #0x59
	bgt	.L91c76
	mov	r0, #1
	bl	Func_80030f8
	ldrb	r3, [r6]
	cmp	r7, r3
	beq	.L91c64
.L91c76:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8091c44

.thumb_func_start Func_8091c7c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r8, r0
	ldr	r6, [r3]
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r6, r0
	ldr	r0, [r3]
	sub	sp, #4
	mov	r9, r1
	bl	Func_808d394
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r0, #0xfc
	lsl	r0, #1
	add	r3, r6, r0
	ldr	r3, [r3]
	mov	r11, r1
	mov	r1, #0xfe
	lsl	r1, #1
	mov	r2, #1
	mov	r10, r3
	add	r3, r6, r1
	ldr	r5, [r3]
	str	r2, [sp]
	ldr	r2, =iwram_3001c94
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L91cda
	mov	r7, r2
.L91cc6:
	mov	r0, #1
	bl	Func_80030f8
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L91cc6
	b	.L91cda
.L91cd4:
	mov	r0, #1
	bl	Func_80030f8
.L91cda:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.L91cd4
	mov	r0, #3
	bl	Func_80030f8
	mov	r3, r9
	cmp	r3, #0
	bne	.L91d0e
	mov	r0, r10
	ldrh	r2, [r0, #0xe]
	ldrh	r3, [r0, #0xa]
	add	r1, r2, r3
	cmp	r5, #0
	beq	.L91d06
	ldrh	r2, [r5, #0xe]
	ldrh	r3, [r5, #0xa]
	add	r2, r3
	cmp	r1, r2
	bge	.L91d06
	mov	r1, r2
.L91d06:
	cmp	r1, #0xf
	ble	.L91d0e
	mov	r1, #0
	str	r1, [sp]
.L91d0e:
	ldr	r2, =0xcc2
	add	r3, r6, r2
	add	r2, #2
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	add	r3, r6, r2
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r0, [sp]
	mov	r3, #0
	bl	_Func_8028df4
	mov	r5, r0
	cmp	r5, #0
	beq	.L91d48
	mov	r1, #4
	mov	r0, r8
	bl	Func_80924d4
	mov	r0, r11
	bl	_Func_8019e48
	bl	_Func_8019a54
	mov	r0, r8
	mov	r1, #4
	bl	Func_8091c44
	b	.L91d62
.L91d48:
	mov	r1, #3
	mov	r0, r8
	bl	Func_80924d4
	mov	r0, r11
	bl	_Func_8019e48
	bl	_Func_8019a54
	mov	r0, r8
	mov	r1, #3
	bl	Func_8091c44
.L91d62:
	mov	r0, r5
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8091c7c

