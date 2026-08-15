	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8005ee0  @ 0x08005ee0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, =ewram_2002240
	ldr	r6, =REG_SIOCNT
	ldrb	r3, [r7, #1]
	mov	r8, r0
	mov	r12, r1
	ldr	r5, [r6]
	cmp	r3, #0
	beq	.L5f04
	cmp	r3, #1
	beq	.L5f62
	b	.L5f70

	.pool_aligned

.L5f04:
	mov	r2, #0x30
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	bne	.L5f5e
	mov	r3, #0x88
	mov	r4, r5
	and	r4, r3
	cmp	r4, #8
	bne	.L5f70
	mov	r2, #4
	mov	r3, r5
	and	r3, r2
	lsl	r3, #24
	lsr	r2, r3, #24
	cmp	r2, #0
	bne	.L5f5e
	mov	r1, #1
	ldr	r3, [r7, #0x14]
	neg	r1, r1
	cmp	r3, r1
	bne	.L5f5e
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
	ldr	r3, .L5f8c	@ 0xc0
	strh	r3, [r2]
	ldr	r3, =0xc963
	sub	r2, #0xf6
	str	r3, [r2]
	strb	r4, [r7]
.L5f5e:
	mov	r3, #1
	strb	r3, [r7, #1]
.L5f62:
	mov	r0, r12
	bl	Func_800615c
	mov	r0, r8
	bl	Func_80060e8
	ldr	r7, =ewram_2002240
.L5f70:
	ldrb	r3, [r7, #0xb]
	add	r3, #1
	strb	r3, [r7, #0xb]
	ldrb	r3, [r7, #2]
	ldrb	r2, [r7, #3]
	lsl	r3, #8
	orr	r2, r3
	ldrb	r3, [r7]
	cmp	r3, #8
	bne	.L5fa4
	mov	r3, #0x80
	orr	r2, r3
	b	.L5fa4

	.align	2, 0
.L5f8c:
	.word	0xc0
	.pool

.L5fa4:
	ldrb	r3, [r7, #9]
	mov	r0, r2
	cmp	r3, #0
	beq	.L5fb2
	mov	r3, #0x80
	lsl	r3, #5
	orr	r0, r3
.L5fb2:
	lsl	r3, r5, #26
	lsr	r3, #30
	cmp	r3, #1
	bls	.L5fc0
	mov	r3, #0x80
	lsl	r3, #6
	orr	r0, r3
.L5fc0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8005ee0
