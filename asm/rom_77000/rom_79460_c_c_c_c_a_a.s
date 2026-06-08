	.include "macros.inc"

.thumb_func_start Func_8079ae8
	push	{r5, r6, lr}
	mov	r5, r0
	bl	GetUnit
	mov	r2, #0x94
	mov	r6, r0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, r6
	add	r1, #0xf8
	ldrb	r0, [r3]
	bl	Func_80799b0
	ldr	r2, =0x129
	add	r3, r6, r2
	strb	r0, [r3]
	mov	r0, r5
	bl	Func_8078bf0
	mov	r1, r6
	add	r1, #0x24
	mov	r0, r5
	bl	Func_80798e0
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8079ae8

.thumb_func_start Func_8079b24
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r5, =.L89258
	mov	r8, r1
	mov	r1, #0
	ldrsh	r2, [r5, r1]
	mov	r6, r0
	mov	r4, #0x10
	ldrsh	r3, [r5, r4]
	mov	r0, #5
	cmp	r6, r2
	ble	.L79b42
	mov	r6, r2
	b	.L79b48
.L79b42:
	cmp	r6, r3
	bge	.L79b48
	mov	r6, r3
.L79b48:
	mov	r1, #0
	mov	r4, #0
	cmp	r1, r0
	bge	.L79b78
	mov	r7, #0
	ldrsh	r3, [r5, r7]
	cmp	r6, r3
	bgt	.L79b72
	mov	r12, r5
	mov	r2, #0
.L79b5c:
	add	r1, #1
	add	r2, #4
	cmp	r1, r0
	bge	.L79b76
	mov	r4, r2
	mov	r3, r12
	ldrsh	r3, [r4, r3]
	mov	r14, r3
	cmp	r6, r14
	ble	.L79b5c
	b	.L79b78
.L79b72:
	mov	r4, #0
	b	.L79b78
.L79b76:
	lsl	r4, r1, #2
.L79b78:
	cmp	r1, r0
	bne	.L79b82
	sub	r3, r4, #2
	ldrsh	r0, [r5, r3]
	b	.L79b9e
.L79b82:
	sub	r3, r4, #4
	ldrsh	r1, [r5, r3]
	ldrsh	r0, [r5, r4]
	sub	r3, r4, #2
	ldrsh	r2, [r5, r3]
	add	r3, r4, #2
	ldrsh	r5, [r5, r3]
	sub	r1, r0
	sub	r2, r5
	sub	r0, r6, r0
	mul	r0, r2
	bl	__divsi3
	add	r0, r5
.L79b9e:
	mov	r7, r8
	cmp	r7, #0
	beq	.L79bae
	cmp	r7, #1
	bne	.L79bae
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r0, r3, #1
.L79bae:
	mov	r1, #0x80
	lsl	r1, #1
	add	r0, r1
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8079b24

