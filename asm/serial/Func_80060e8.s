	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80060e8  @ 0x080060e8
	push	{r5, lr}
	ldr	r4, =ewram_2002240
	ldr	r1, [r4, #0x28]
	ldrb	r3, [r4, #0xb]
	strb	r3, [r1]
	ldrb	r2, [r4, #3]
	ldrb	r3, [r4, #2]
	mov	r5, #0
	eor	r3, r2
	strb	r3, [r1, #1]
	strh	r5, [r1, #2]
	ldr	r3, =REG_DMA3SAD
	add	r1, #4
	ldr	r2, =0x84000006
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, [r4, #0x28]
	mov	r1, #0
.L610c:
	ldrh	r3, [r2]
	add	r1, #1
	add	r2, #2
	add	r5, r3
	cmp	r1, #0xd
	bls	.L610c
	ldr	r3, [r4, #0x28]
	mvn	r2, r5
	strh	r2, [r3, #2]
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.L612a
	ldr	r2, =REG_TM3CNT_H
	mov	r3, #0
	strh	r3, [r2]
.L612a:
	mov	r3, #1
	neg	r3, r3
	str	r3, [r4, #0x14]
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.L6142
	ldrb	r3, [r4, #8]
	cmp	r3, #0
	beq	.L6142
	ldr	r2, =REG_TM3CNT_H
	ldr	r3, .L6148	@ 0xc0
	strh	r3, [r2]
.L6142:
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.L6148:
	.word	0xc0
.func_end Func_80060e8
