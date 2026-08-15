	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8005fcc  @ 0x08005fcc
	push	{r5, r6, r7, lr}
	ldr	r7, =ewram_2002240
	ldr	r6, =REG_SIOCNT
	ldrb	r3, [r7, #1]
	ldr	r5, [r6]
	cmp	r3, #0
	bne	.L6034
	mov	r3, #0x88
	mov	r4, r5
	and	r4, r3
	cmp	r4, #8
	bne	.L602e
	mov	r2, #4
	mov	r3, r5
	and	r3, r2
	lsl	r3, #24
	lsr	r2, r3, #24
	cmp	r2, #0
	bne	.L602a
	mov	r1, #1
	ldr	r3, [r7, #0x14]
	neg	r1, r1
	cmp	r3, r1
	bne	.L602a
	ldr	r0, =REG_IME
	strh	r2, [r0]
	ldr	r1, =REG_IE
	ldrh	r2, [r1]
	mov	r3, #0x81
	neg	r3, r3
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	strh	r3, [r1]
	mov	r3, #1
	strh	r3, [r0]
	ldrb	r2, [r6, #1]
	sub	r3, #0x42
	and	r3, r2
	strb	r3, [r6, #1]
	ldr	r2, =REG_IF
	ldr	r3, .L6048	@ 0xc0
	strh	r3, [r2]
	ldr	r3, =0xc963
	sub	r2, #0xf6
	str	r3, [r2]
	strb	r4, [r7]
.L602a:
	mov	r3, #1
	strb	r3, [r7, #1]
.L602e:
	ldrb	r3, [r7, #0xb]
	add	r3, #1
	strb	r3, [r7, #0xb]
.L6034:
	ldrb	r3, [r7, #2]
	ldrb	r2, [r7, #3]
	lsl	r3, #8
	orr	r2, r3
	ldrb	r3, [r7]
	cmp	r3, #8
	bne	.L6064
	mov	r3, #0x80
	orr	r2, r3
	b	.L6064

	.align	2, 0
.L6048:
	.word	0xc0
	.pool

.L6064:
	ldrb	r3, [r7, #9]
	mov	r0, r2
	cmp	r3, #0
	beq	.L6072
	mov	r3, #0x80
	lsl	r3, #5
	orr	r0, r3
.L6072:
	lsl	r3, r5, #26
	lsr	r3, #30
	cmp	r3, #1
	bls	.L6080
	mov	r3, #0x80
	lsl	r3, #6
	orr	r0, r3
.L6080:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8005fcc
