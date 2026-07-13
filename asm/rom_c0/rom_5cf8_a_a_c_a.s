	.include "macros.inc"
	.include "gba.inc"

	.section .text.after, "ax", %progbits

.thumb_func_start Func_8006408  @ 0x08006408
	push	{r5, r6, lr}
	ldr	r5, =ewram_20023ac
	ldr	r4, [r5]
	ldr	r6, =ewram_2002220
	cmp	r4, #0
	beq	.L641a
	mov	r0, #1
	neg	r0, r0
	b	.L6438
.L641a:
	ldr	r2, =REG_IME
	ldrh	r1, [r2]
	strh	r2, [r2]
	mov	r3, #0x81
	strb	r3, [r6, #1]
	ldr	r3, =ewram_2002238
	strh	r4, [r3]
	mov	r3, #1
	strb	r3, [r6]
	str	r0, [r5]
	ldr	r3, =ewram_20023a4
	ldr	r0, .L6440	@ 0
	strb	r0, [r3]
	strh	r1, [r2]
	mov	r0, #0
.L6438:
	pop	{r5, r6}
	pop	{r1}
	bx	r1

	.align	2, 0
.L6440:
	.word	0
.func_end Func_8006408
