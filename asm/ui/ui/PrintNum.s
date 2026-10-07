	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start PrintNum  @ 0x08017dd4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r3, #0
	mov	r6, r1
	mov	r7, r0
	mov	r8, r2
	mov	r9, r3
	cmp	r6, #0
	bge	.L17df6
	cmp	r2, #0
	bne	.L17df4
	mov	r3, #1
	mov	r9, r3
.L17df4:
	neg	r6, r6
.L17df6:
	mov	r3, #0x20
	mov	r5, r7
	strb	r3, [r7]
	add	r5, #0xc
	mov	r10, r7
.L17e00:
	mov	r0, r6
	mov	r1, #0xa
	bl	__modsi3
	add	r0, #0x30
	strb	r0, [r5]
	mov	r1, #0xa
	mov	r0, r6
	bl	__divsi3
	sub	r5, #1
	mov	r6, r0
	cmp	r5, r10
	bne	.L17e00
	mov	r0, #0
	strb	r0, [r7, #0xd]
	mov	r1, #0x20
	mov	r0, #1
	mov	r4, #0x2d
	mov	r2, r7
	b	.L17e2e
.L17e2a:
	add	r2, #1
	add	r0, #1
.L17e2e:
	cmp	r0, #0xd
	beq	.L17e48
	ldrb	r3, [r2, #1]
	cmp	r3, #0x30
	bne	.L17e40
	cmp	r0, #0xc
	beq	.L17e2a
	strb	r1, [r2, #1]
	b	.L17e2a
.L17e40:
	mov	r3, r9
	cmp	r3, #0
	beq	.L17e48
	strb	r4, [r2]
.L17e48:
	mov	r3, r8
	cmp	r3, #0
	bne	.L17e6a
	ldrb	r3, [r7]
	mov	r0, #0
	cmp	r3, #0x20
	bne	.L17e66
	mov	r2, r7
.L17e58:
	add	r0, #1
	cmp	r0, #0xc
	beq	.L17e66
	add	r2, #1
	ldrb	r3, [r2]
	cmp	r3, #0x20
	beq	.L17e58
.L17e66:
	add	r0, r7, r0
	b	.L17e7a
.L17e6a:
	mov	r3, r8
	cmp	r3, #0xc
	bls	.L17e74
	mov	r3, #0xc
	mov	r8, r3
.L17e74:
	mov	r3, r8
	sub	r0, r7, r3
	add	r0, #0xd
.L17e7a:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end PrintNum

	.section .rodata.rom_178b0
.L31e24:
	.incrom 0x31e24, 0x32224
