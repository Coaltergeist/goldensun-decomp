	.include "macros.inc"

	.section .text.after, "ax", %progbits

	.section .text.after_798e0, "ax", %progbits

.thumb_func_start Func_80799b0  @ 0x080799b0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #1
	mov	r5, r0
	neg	r2, r2
	sub	sp, #0x14
	mov	r8, r2
	mov	r0, #0
	cmp	r5, #7
	bgt	.L79aba
	add	r6, sp, #4
	mov	r0, r5
	mov	r2, r6
	bl	Func_80797fc
	mov	r0, #0x20
	bl	GetFlag
	cmp	r0, #0
	beq	.L799ee
	mov	r0, #0xc8
	cmp	r5, #0
	beq	.L79aba
	mov	r0, #0xc9
	cmp	r5, #1
	beq	.L79aba
.L799ee:
	mov	r0, #0xca
	cmp	r5, #5
	beq	.L79aba
	mov	r0, #1
	neg	r0, r0
	cmp	r8, r0
	bne	.L79aba
	mov	r12, r8
	mov	r5, r8
	mov	r0, #0
	mov	r2, r6
.L79a04:
	ldmia	r2!, {r3}
	cmp	r12, r3
	bge	.L79a0e
	mov	r12, r3
	mov	r5, r0
.L79a0e:
	add	r0, #1
	cmp	r0, #3
	ble	.L79a04
	mov	r4, #1
	neg	r4, r4
	mov	r12, r4
	mov	r0, #0
	mov	r2, r6
.L79a1e:
	cmp	r0, r5
	beq	.L79a2c
	ldr	r3, [r2]
	cmp	r12, r3
	bge	.L79a2c
	mov	r12, r3
	mov	r4, r0
.L79a2c:
	add	r0, #1
	add	r2, #4
	cmp	r0, #3
	ble	.L79a1e
	lsl	r3, r4, #2
	ldr	r3, [r6, r3]
	mov	r1, r5
	cmp	r3, #9
	ble	.L79a46
	mov	r1, r4
	b	.L79a46
.L79a42:
	mov	r8, r0
	b	.L79aac
.L79a46:
	mov	r0, r5
	bl	Func_80797ec
	ldr	r3, =.L84b1c
	ldr	r7, =0x424c
	mov	r10, r3
	mov	r14, r10
	str	r6, [sp]
	ldr	r5, =0x4248
	mov	r11, r0
	mov	r9, r6
	mov	r0, #0xca
	add	r7, r14
.L79a60:
	mov	r6, r10
	ldr	r3, [r5, r6]
	cmp	r3, r11
	bne	.L79aa2
	ldrb	r3, [r7]
	ldr	r1, [sp]
	lsl	r2, r3, #2
	add	r2, r3
	ldr	r3, [r1]
	lsl	r2, #1
	mov	r4, #0
	cmp	r3, r2
	blt	.L79a9e
	mov	r2, r14
	add	r3, r5, r2
	mov	r12, r9
	add	r1, r3, #4
.L79a82:
	add	r4, #1
	cmp	r4, #3
	bgt	.L79a9e
	add	r1, #1
	ldrb	r3, [r1]
	lsl	r2, r3, #2
	add	r2, r3
	mov	r3, #4
	add	r12, r3
	mov	r6, r12
	ldr	r3, [r6]
	lsl	r2, #1
	cmp	r3, r2
	bge	.L79a82
.L79a9e:
	cmp	r4, #4
	beq	.L79a42
.L79aa2:
	sub	r0, #1
	sub	r7, #0x54
	sub	r5, #0x54
	cmp	r0, #0
	bge	.L79a60
.L79aac:
	mov	r1, #1
	neg	r1, r1
	cmp	r8, r1
	bne	.L79ab8
	mov	r2, #0
	mov	r8, r2
.L79ab8:
	mov	r0, r8
.L79aba:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80799b0
