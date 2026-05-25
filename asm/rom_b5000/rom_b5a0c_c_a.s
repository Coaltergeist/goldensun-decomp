	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b5b18
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x14
	mov	r8, sp
	mov	r0, r8
	bl	Func_80b6a60
	mov	r7, #0
	mov	r10, r0
	cmp	r7, r10
	bge	.Lb5bee
	mov	r0, #0
	mov	r5, #0
	mov	r6, #0
	mov	r9, r0
.Lb5b3c:
	mov	r1, r8
	ldrh	r0, [r6, r1]
	bl	_Func_8077394
	mov	r2, r0
	ldr	r0, =0x12f
	mov	r1, #3
	add	r3, r2, r0
.Lb5b4c:
	mov	r0, r9
	sub	r1, #1
	strb	r0, [r3]
	sub	r3, #1
	cmp	r1, #0
	bge	.Lb5b4c
	mov	r1, #0x99
	lsl	r1, #1
	ldr	r0, =0x133
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #3
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #3
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	mov	r1, r8
	add	r3, r2, r0
	strb	r5, [r3]
	ldrh	r0, [r6, r1]
	add	r7, #1
	bl	_Func_8077428
	add	r6, #2
	cmp	r7, r10
	blt	.Lb5b3c
.Lb5bee:
	add	sp, #0x14
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b5b18

.thumb_func_start Func_80b5c08
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x18
	add	r5, sp, #4
	mov	r0, r5
	bl	Func_80b6a60
	mov	r2, #0
	mov	r10, r0
	mov	r8, r2
	cmp	r8, r10
	bge	.Lb5cb6
	mov	r9, r5
.Lb5c28:
	mov	r3, r9
	ldrh	r7, [r3]
	mov	r6, #0
.Lb5c2e:
	mov	r5, #0
.Lb5c30:
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	bl	_Func_807a1f8
	cmp	r0, #0
	beq	.Lb5c9e
	mov	r0, #0
	cmp	r7, #7
	bls	.Lb5c46
	mov	r0, #1
.Lb5c46:
	bl	_Func_8077330
	mov	r2, #0x84
	mov	r3, r0
	lsl	r2, #1
	mov	r1, r3
	add	r3, r2
	ldr	r3, [r3]
	mov	r0, #0
	add	r1, #8
	cmp	r0, r3
	bge	.Lb5c88
	ldrb	r3, [r1]
	cmp	r6, r3
	bne	.Lb5c6a
	ldrb	r3, [r1, #1]
	cmp	r5, r3
	beq	.Lb5c88
.Lb5c6a:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	add	r0, #1
	cmp	r0, r3
	bge	.Lb5c88
	lsl	r2, r0, #2
	ldrb	r3, [r1, r2]
	cmp	r6, r3
	bne	.Lb5c6a
	add	r3, r1, r2
	ldrb	r3, [r3, #1]
	cmp	r5, r3
	bne	.Lb5c6a
.Lb5c88:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	cmp	r0, r3
	bne	.Lb5c9e
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	bl	_Func_807a458
.Lb5c9e:
	add	r5, #1
	cmp	r5, #0x13
	ble	.Lb5c30
	add	r6, #1
	cmp	r6, #3
	ble	.Lb5c2e
	mov	r2, #1
	mov	r3, #2
	add	r8, r2
	add	r9, r3
	cmp	r8, r10
	blt	.Lb5c28
.Lb5cb6:
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	bne	.Lb5d2a
	mov	r0, #0
	bl	_Func_8077330
	mov	r2, #8
	mov	r3, r0
	add	r2, r3
	mov	r10, r2
	mov	r2, #0
	mov	r8, r2
	mov	r2, #0x84
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	cmp	r8, r3
	bge	.Lb5d2a
	mov	r3, #1
	neg	r3, r3
	mov	r9, r3
	mov	r7, r10
.Lb5ce8:
	mov	r3, #3
	ldrsb	r3, [r7, r3]
	cmp	r3, r9
	bne	.Lb5d18
	ldrb	r0, [r7, #2]
	bl	Func_80b7dd0
	cmp	r0, #0
	bne	.Lb5d18
	ldrb	r3, [r7, #1]
	ldrb	r5, [r7, #2]
	ldrb	r6, [r7]
	mov	r2, r3
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp]
	bl	_Func_807a2e4
	ldr	r3, [sp]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	bl	_Func_807a3a8
.Lb5d18:
	mov	r3, #0x80
	lsl	r3, #1
	add	r3, r10
	mov	r2, #1
	ldr	r3, [r3]
	add	r8, r2
	add	r7, #4
	cmp	r8, r3
	blt	.Lb5ce8
.Lb5d2a:
	add	sp, #0x18
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b5c08

.thumb_func_start Func_80b5d3c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	add	r1, sp, #8
	mov	r9, r1
	mov	r0, r9
	bl	Func_80b6a60
	mov	r3, #0x1c
	mov	r2, #0
	add	r3, sp
	mov	r4, r0
	mov	r11, r2
	mov	r8, r2
	mov	r10, r3
.Lb5d64:
	mov	r3, #0
	mov	r1, r10
	mov	r2, r8
	strb	r3, [r1, r2]
	cmp	r4, #0
	ble	.Lb5d9e
	mov	r1, #0x8c
	lsl	r1, #1
	mov	r7, r10
	add	r1, r8
	mov	r6, r9
	mov	r5, r4
.Lb5d7c:
	ldrh	r0, [r6]
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	_Func_8077394
	ldr	r1, [sp, #4]
	mov	r2, r8
	ldrb	r3, [r7, r2]
	ldrb	r2, [r0, r1]
	sub	r5, #1
	add	r3, r2
	mov	r2, r8
	add	r6, #2
	strb	r3, [r7, r2]
	ldr	r4, [sp]
	cmp	r5, #0
	bne	.Lb5d7c
.Lb5d9e:
	mov	r3, #1
	add	r8, r3
	mov	r1, r8
	cmp	r1, #3
	ble	.Lb5d64
	mov	r2, #0
	mov	r8, r2
.Lb5dac:
	mov	r0, r8
	bl	_Func_80797d4
	cmp	r0, #0
	beq	.Lb5de8
	mov	r3, r10
	add	r0, #4
	ldrb	r2, [r3]
	ldrb	r3, [r0]
	mov	r4, #0
	cmp	r2, r3
	bcc	.Lb5dd8
	mov	r1, r10
.Lb5dc6:
	add	r4, #1
	cmp	r4, #3
	bgt	.Lb5dd8
	add	r1, #1
	add	r0, #1
	ldrb	r2, [r1]
	ldrb	r3, [r0]
	cmp	r2, r3
	bcs	.Lb5dc6
.Lb5dd8:
	cmp	r4, #4
	bne	.Lb5de8
	mov	r3, #1
	mov	r1, r8
	mov	r2, r11
	lsl	r3, r1
	orr	r2, r3
	mov	r11, r2
.Lb5de8:
	mov	r3, #1
	add	r8, r3
	mov	r1, r8
	cmp	r1, #0x1f
	ble	.Lb5dac
	mov	r0, #0
	bl	_Func_8077330
	mov	r2, r11
	str	r2, [r0]
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b5d3c

