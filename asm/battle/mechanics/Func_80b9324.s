	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b9324  @ 0x080b9324
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x30
	mov	r2, #0
	str	r0, [sp, #0x10]
	str	r2, [sp, #0xc]
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x45
	str	r3, [sp, #8]
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r3, #1
	bne	.Lb934c
	b	.Lb945e
.Lb934c:
	mov	r3, sp
	add	r3, #0x14
	mov	r0, #2
	mov	r1, r3
	str	r3, [sp, #4]
	bl	Func_80b6b40
	mov	r4, #0x1f
	mov	r8, r0
	ldr	r6, [sp, #4]
	cmp	r0, #0
	bne	.Lb9368
	mov	r0, #0
	b	.Lb945e
.Lb9368:
	str	r4, [sp]
	bl	Random
	mov	r5, r8
	mul	r5, r0
	bl	Random
	mov	r2, r8
	mul	r2, r0
	lsr	r5, #16
	lsr	r2, #16
	lsl	r5, #1
	lsl	r2, #1
	ldr	r4, [sp]
	ldrh	r1, [r6, r5]
	ldrh	r3, [r6, r2]
	sub	r4, #1
	strh	r3, [r6, r5]
	strh	r1, [r6, r2]
	cmp	r4, #0
	bge	.Lb9368
	ldr	r2, [sp, #8]
	ldrb	r3, [r2]
	cmp	r3, #2
	bne	.Lb93b2
	bl	Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	add	r3, #1
	cmp	r3, #1
	bgt	.Lb93ac
	mov	r3, #2
.Lb93ac:
	cmp	r3, r8
	bge	.Lb93b2
	mov	r8, r3
.Lb93b2:
	mov	r4, #0
	cmp	r4, r8
	bge	.Lb945c
.Lb93b8:
	ldr	r2, [sp, #4]
	lsl	r3, r4, #1
	ldrh	r3, [r2, r3]
	mov	r9, r3
	mov	r0, r9
	str	r4, [sp]
	bl	_GetUnit
	mov	r3, #0x43
	mov	r6, r0
	add	r3, r6
	mov	r10, r3
	ldrb	r3, [r3]
	mov	r7, #0
	ldr	r4, [sp]
	cmp	r7, r3
	bge	.Lb9456
	mov	r2, #0x40
	add	r2, r6
	mov	r11, r2
	ldr	r2, [sp, #0xc]
	lsl	r3, r2, #4
	ldr	r2, [sp, #0x10]
	add	r5, r3, r2
.Lb93e8:
	mov	r3, r9
	strh	r3, [r5]
	mov	r3, r11
	ldrh	r2, [r3]
	strh	r2, [r5, #4]
	cmp	r7, #0
	beq	.Lb9402
	lsl	r2, #16
	asr	r3, r2, #16
	lsr	r2, #31
	add	r3, r2
	asr	r3, #1
	strh	r3, [r5, #4]
.Lb9402:
	mov	r2, #0x9e
	lsl	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb9418
	sub	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb9430
.Lb9418:
	mov	r3, #8
	strh	r3, [r5, #6]
	ldr	r3, .Lb9428	@ 0
	strh	r3, [r5, #8]
	mov	r3, #0x80
	lsl	r3, #1
	strh	r3, [r5, #0xa]
	b	.Lb943c

	.align	2, 0
.Lb9428:
	.word	0
	.pool

.Lb9430:
	mov	r0, r5
	mov	r1, #0
	str	r4, [sp]
	bl	LoadEnemy
	ldr	r4, [sp]
.Lb943c:
	ldr	r2, [sp, #0xc]
	add	r2, #1
	str	r2, [sp, #0xc]
	ldr	r2, [sp, #8]
	ldrb	r3, [r2]
	add	r5, #0x10
	cmp	r3, #2
	beq	.Lb9456
	mov	r2, r10
	ldrb	r3, [r2]
	add	r7, #1
	cmp	r7, r3
	blt	.Lb93e8
.Lb9456:
	add	r4, #1
	cmp	r4, r8
	blt	.Lb93b8
.Lb945c:
	ldr	r0, [sp, #0xc]
.Lb945e:
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b9324
