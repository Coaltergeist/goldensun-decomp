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

.thumb_func_start Func_800615c  @ 0x0800615c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	mov	r3, #0
	mov	r4, r0
	str	r3, [sp, #4]
	ldr	r2, =REG_IME
	strh	r3, [r2]
	ldr	r3, =ewram_2002240
	mov	r1, r3
	add	r1, #0x40
	mov	r7, #3
.L617a:
	ldr	r2, [r1, #0x10]
	ldr	r3, [r1]
	sub	r7, #1
	str	r3, [r1, #0x10]
	stmia	r1!, {r2}
	cmp	r7, #0
	bge	.L617a
	ldr	r1, =ewram_2002244
	ldr	r3, [r1]
	mov	r0, #0
	mov	r14, sp
	str	r3, [sp]
	str	r0, [r1]
	mov	r2, #1
	ldr	r3, =REG_IME
	strh	r2, [r3]
	sub	r3, r1, #4
	mov	r9, r3
	sub	r2, #2
	mov	r6, r1
	strb	r0, [r3, #3]
	mov	r7, #0
	mov	r10, r9
	mov	r8, r2
	add	r6, #0x4c
	mov	r12, r4
.L61ae:
	ldr	r2, [r6]
	mov	r0, #0
	mov	r1, #0
.L61b4:
	ldrh	r3, [r2]
	add	r1, #1
	add	r2, #2
	add	r0, r3
	cmp	r1, #0xd
	bls	.L61b4
	mov	r3, r14
	ldrb	r4, [r3, r7]
	cmp	r4, #1
	bne	.L61ee
	lsl	r5, r0, #16
	asr	r3, r5, #16
	cmp	r3, r8
	bne	.L6202
	ldr	r0, [r6]
	ldr	r3, =REG_DMA3SAD
	add	r0, #4
	mov	r1, r12
	ldr	r2, =0x84000006
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, r10
	ldrb	r3, [r1, #3]
	lsl	r4, r7
	ldr	r2, =ewram_2002240
	orr	r4, r3
	strb	r4, [r1, #3]
	mov	r9, r2
	b	.L61f0
.L61ee:
	lsl	r5, r0, #16
.L61f0:
	asr	r3, r5, #16
	cmp	r3, r8
	bne	.L6202
	ldr	r2, [r6]
	ldrh	r3, [r2, #2]
	mvn	r3, r3
	strh	r3, [r2, #2]
	ldr	r3, =ewram_2002240
	mov	r9, r3
.L6202:
	mov	r1, #0x18
	add	r7, #1
	add	r6, #4
	add	r12, r1
	cmp	r7, #1
	ble	.L61ae
	mov	r2, r9
	ldrb	r3, [r2, #2]
	ldrb	r2, [r2, #3]
	mov	r1, r9
	ldrb	r0, [r1, #3]
	orr	r3, r2
	strb	r3, [r1, #2]
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_800615c

.thumb_func_start Func_8006240  @ 0x08006240
	push	{r5, r6, r7, lr}
	ldr	r3, =REG_SIODATA32
	sub	sp, #8
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	mov	r14, sp
	ldr	r0, =REG_SIOCNT
	mov	r2, r14
	str	r3, [r2]
	str	r4, [r2, #4]
	ldr	r3, [r0]
	ldr	r1, =ewram_2002240
	lsl	r3, #25
	lsr	r3, #31
	strb	r3, [r1, #9]
	ldr	r2, [r1, #0x14]
	mov	r3, #1
	neg	r3, r3
	cmp	r2, r3
	bne	.L6276
	ldr	r3, =0xfefe
	ldr	r2, [r1, #0x2c]
	strh	r3, [r0, #2]
	ldr	r3, [r1, #0x28]
	str	r2, [r1, #0x28]
	str	r3, [r1, #0x2c]
	b	.L6282
.L6276:
	cmp	r2, #0
	blt	.L6282
	ldr	r3, [r1, #0x2c]
	lsl	r2, #1
	ldrh	r3, [r2, r3]
	strh	r3, [r0, #2]
.L6282:
	ldr	r7, =ewram_2002240
	ldr	r3, [r7, #0x14]
	cmp	r3, #0xe
	bgt	.L628e
	add	r3, #1
	str	r3, [r7, #0x14]
.L628e:
	mov	r6, #0
.L6290:
	mov	r2, r14
	lsl	r5, r6, #1
	ldrh	r3, [r2, r5]
	ldr	r2, =0xfefe
	cmp	r3, r2
	bne	.L62c4
	lsl	r3, r6, #2
	mov	r12, r3
	mov	r2, r12
	add	r2, #0x18
	ldr	r3, [r7, r2]
	cmp	r3, #0xd
	ble	.L62c8
	mov	r3, #1
	neg	r3, r3
	str	r3, [r7, r2]
	b	.L62f4

	.pool_aligned

.L62c4:
	lsl	r2, r6, #2
	mov	r12, r2
.L62c8:
	mov	r3, r12
	add	r3, #0x18
	mov	r4, r12
	ldr	r1, [r7, r3]
	add	r4, #0x30
	mov	r3, r14
	ldr	r0, [r7, r4]
	ldrh	r5, [r3, r5]
	lsl	r2, r1, #1
	strh	r5, [r2, r0]
	cmp	r1, #0xd
	bne	.L62f4
	mov	r3, r12
	add	r3, #0x40
	ldr	r2, [r7, r3]
	add	r1, r6, #4
	str	r0, [r7, r3]
	str	r2, [r7, r4]
	ldrb	r3, [r7, r1]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r7, r1]
.L62f4:
	ldr	r0, =ewram_2002240
	ldrb	r3, [r0, #9]
	cmp	r3, #0
	beq	.L6306
	add	r3, r6, #4
	ldrb	r2, [r0, r3]
	mov	r1, #2
	orr	r2, r1
	strb	r2, [r0, r3]
.L6306:
	mov	r2, r12
	add	r2, #0x18
	ldr	r3, [r0, r2]
	cmp	r3, #0xe
	bgt	.L6314
	add	r3, #1
	str	r3, [r0, r2]
.L6314:
	add	r6, #1
	mov	r7, r0
	cmp	r6, #1
	ble	.L6290
	ldrb	r3, [r0]
	cmp	r3, #8
	bne	.L6350
	ldr	r0, =REG_TM3CNT_H
	ldr	r3, .L6338	@ 0
	ldr	r1, =REG_SIOCNT
	strh	r3, [r0]
	ldr	r2, .L633c	@ 0x80
	ldrh	r3, [r1]
	orr	r3, r2
	strh	r3, [r1]
	ldr	r3, .L6340	@ 0xc0
	strh	r3, [r0]
	b	.L6350

	.align	2, 0
.L6338:
	.word	0
.L633c:
	.word	0x80
.L6340:
	.word	0xc0
	.pool

.L6350:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8006240

