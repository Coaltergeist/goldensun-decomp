	.include "macros.inc"
	.include "gba.inc"

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
