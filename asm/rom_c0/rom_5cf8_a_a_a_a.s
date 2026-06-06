	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8005cf8
	push	{lr}
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	Func_800307c
	mov	r0, #0x33
	bl	Func_8002dd8
	pop	{r1}
	bx	r1
.func_end Func_8005cf8

.thumb_func_start Func_8005d10
	push	{r5, r6, r7, lr}
	ldr	r6, =REG_IME
	ldrh	r3, [r6]
	sub	sp, #4
	mov	r7, r3
	strh	r6, [r6]
	ldr	r5, =Func_8006240
	mov	r0, #7
	mov	r1, #0
	mov	r2, r5
	bl	Func_800307c
	mov	r0, #6
	mov	r1, #0
	mov	r2, r5
	bl	Func_800307c
	ldr	r4, .L5d54	@ 0
	mov	r3, r6
	strh	r4, [r3]
	ldr	r1, =REG_IE
	ldr	r3, =0xff3f
	ldrh	r2, [r1]
	and	r3, r2
	strh	r3, [r1]
	add	r1, #2
	ldrh	r2, [r1]
	mov	r0, #0x80
	mov	r3, r0
	and	r3, r2
	cmp	r3, #0
	beq	.L5d68
	strh	r0, [r1]
	b	.L5d68

	.align	2, 0
.L5d54:
	.word	0
	.pool

.L5d68:
	ldrh	r2, [r1]
	mov	r0, #0x40
	mov	r3, r0
	and	r3, r2
	cmp	r3, #0
	beq	.L5d76
	strh	r0, [r1]
.L5d76:
	ldr	r2, =REG_RCNT
	ldr	r3, .L5dac	@ 0x8000
	ldr	r1, =REG_SIOCNT
	strh	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #5
	strh	r4, [r2]
	str	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #6
	strh	r4, [r2]
	str	r3, [r1]
	ldr	r2, .L5db0	@ 0x4003
	ldrh	r3, [r1]
	orr	r3, r2
	strh	r3, [r1]
	ldr	r2, =ewram_2002240
	ldr	r3, .L5db4	@ 1
	mov	r12, r2
	strh	r3, [r6]
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r12
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000058
	b	.L5dcc

	.align	2, 0
.L5dac:
	.word	0x8000
.L5db0:
	.word	0x4003
.L5db4:
	.word	1
	.pool

.L5dcc:
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #1
	mov	r2, r12
	neg	r3, r3
	str	r3, [r2, #0x14]
	mov	r3, r12
	add	r3, #0x60
	str	r3, [r2, #0x28]
	mov	r4, r12
	add	r3, #0x20
	str	r3, [r2, #0x2c]
	add	r4, #0xe0
	add	r3, #0x40
	add	r2, #0x30
	add	r1, #0xa0
	mov	r0, #1
.L5dee:
	sub	r0, #1
	str	r1, [r2]
	str	r3, [r2, #0x10]
	str	r4, [r2, #0x20]
	add	r3, #0x60
	add	r4, #0x60
	add	r2, #4
	add	r1, #0x60
	cmp	r0, #0
	bge	.L5dee
	ldr	r5, =REG_IME
	mov	r0, #0
	strh	r0, [r5]
	ldr	r1, =REG_IE
	ldr	r2, .L5e3c	@ 0x80
	ldrh	r3, [r1]
	orr	r3, r2
	strh	r3, [r1]
	ldr	r2, .L5e40	@ 1
	ldr	r3, =iwram_3001cb0
	strh	r2, [r5]
	ldr	r4, .L5e44	@ 0
	strh	r2, [r3]
	ldr	r3, =ewram_20023a0
	strb	r4, [r3]
	ldr	r3, =ewram_2002080
	str	r0, [r3]
	ldr	r3, =ewram_2002008
	strh	r0, [r3]
	ldr	r3, =ewram_20023ac
	str	r0, [r3]
	ldr	r3, =ewram_2002238
	strh	r0, [r3]
	bl	Func_800651c
	strh	r7, [r5]
	add	sp, #4
	b	.L5e68

	.align	2, 0
.L5e3c:
	.word	0x80
.L5e40:
	.word	1
.L5e44:
	.word	0
	.pool

.L5e68:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8005d10

