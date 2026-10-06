	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80aafb8  @ 0x080aafb8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x34
	str	r0, [sp, #0x30]
	ldr	r3, =iwram_3001f2c
	ldr	r0, [r3]
	sub	r3, #0xa0
	ldr	r3, [r3]
	ldr	r1, =0xea6
	str	r3, [sp, #0x20]
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, #0
	ldr	r3, =0x219
	mov	r9, r0
	str	r2, [sp, #0x2c]
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lab01e
	ldr	r7, [sp, #0x30]
	mov	r6, #0x82
	lsl	r6, #2
	ldr	r5, [sp, #0x30]
	add	r7, #0xa0
	add	r6, r9
.Laaff8:
	mov	r2, #1
	ldrh	r1, [r6]
	mov	r0, r5
	neg	r2, r2
	bl	Func_80ac8fc
	strb	r0, [r7]
	ldr	r3, [sp, #0x2c]
	add	r3, #1
	str	r3, [sp, #0x2c]
	ldr	r3, =0x219
	add	r3, r9
	ldrb	r3, [r3]
	ldr	r0, [sp, #0x2c]
	add	r6, #2
	add	r7, #1
	add	r5, #0x14
	cmp	r0, r3
	blt	.Laaff8
.Lab01e:
	mov	r1, r9
	ldr	r0, [r1, #0x30]
	bl	_Func_8016498
	mov	r2, r9
	ldr	r0, =0xbad
	ldr	r1, [r2, #0x30]
	mov	r3, #0x50
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r3, #0
	str	r3, [sp, #0x28]
	ldr	r3, =0x219
	add	r3, r9
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r0, r3
	blt	.Lab046
	b	.Lab1a2
.Lab046:
	ldr	r3, [sp, #0x30]
	mov	r2, #0
	mov	r1, #0xa0
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
.Lab054:
	mov	r0, #0
	str	r0, [sp, #0x1c]
	str	r0, [sp, #0x24]
.Lab05a:
	mov	r1, #0
	str	r1, [sp, #0x2c]
	ldr	r2, [sp, #0x10]
	ldr	r0, [sp, #0x30]
	ldrsb	r3, [r2, r0]
	cmp	r1, r3
	blt	.Lab06a
	b	.Lab16a
.Lab06a:
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #0x1c]
	ldr	r2, [sp, #8]
	str	r3, [sp, #0x14]
	lsl	r3, r0, #3
	mov	r1, #0xe0
	add	r3, #0x10
	str	r2, [sp, #0x18]
	ldr	r5, [sp, #4]
	mov	r11, r1
	mov	r10, r3
.Lab080:
	ldrh	r4, [r5]
	mov	r3, r11
	and	r3, r4
	ldr	r1, [sp, #0x24]
	lsr	r3, #5
	cmp	r1, r3
	bne	.Lab156
	ldr	r3, .Lab0a0	@ 0x8000
	and	r3, r4
	cmp	r3, #0
	bne	.Lab0b4
	mov	r0, #2
	bl	_SetTextColor
	ldrh	r4, [r5]
	b	.Lab0b4

	.align	2, 0
.Lab0a0:
	.word	0x8000
	.pool

.Lab0b4:
	mov	r7, #0xf0
	lsl	r7, #4
	mov	r2, #0
	mov	r0, r7
	mov	r1, r11
	mov	r6, #0x1f
	mov	r8, r2
	and	r0, r4
	and	r1, r4
	mov	r2, r6
	lsr	r0, #8
	lsr	r1, #5
	and	r2, r4
	bl	_Func_807a1f8
	cmp	r0, #0
	bne	.Lab0f0
	ldrh	r3, [r5]
	mov	r0, r7
	mov	r1, r11
	and	r0, r3
	and	r1, r3
	mov	r2, r6
	lsr	r0, #8
	lsr	r1, #5
	and	r2, r3
	bl	_Func_807a2bc
	cmp	r0, #0
	beq	.Lab0f4
.Lab0f0:
	mov	r3, #1
	mov	r8, r3
.Lab0f4:
	mov	r0, r8
	cmp	r0, #0
	bne	.Lab100
	mov	r0, #4
	bl	_SetTextColor
.Lab100:
	ldrh	r3, [r5]
	mov	r1, r9
	ldr	r0, [r1, #0x30]
	mov	r1, r11
	and	r1, r3
	ldr	r2, =0x5001
	lsr	r1, #5
	add	r1, r2
	mov	r2, #0
	ldr	r3, [sp, #0x1c]
	str	r2, [sp]
	ldr	r2, [sp, #0x18]
	add	r3, #2
	add	r2, #1
	bl	_Func_8019000
	ldrh	r2, [r5]
	mov	r3, r11
	and	r3, r2
	lsr	r3, #5
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0x1f
	and	r3, r2
	lsl	r0, #2
	add	r0, r3
	ldr	r3, =0x45f
	ldr	r2, [sp, #0x14]
	add	r0, r3
	mov	r3, r9
	ldr	r1, [r3, #0x30]
	add	r2, #0x10
	mov	r3, r10
	bl	_Func_801e7c0
	ldr	r1, [sp, #0x1c]
	mov	r0, #8
	add	r10, r0
	add	r1, #1
	mov	r0, #0xf
	str	r1, [sp, #0x1c]
	bl	_SetTextColor
.Lab156:
	ldr	r2, [sp, #0x2c]
	add	r2, #1
	str	r2, [sp, #0x2c]
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0x30]
	ldrsb	r3, [r0, r1]
	add	r5, #2
	cmp	r2, r3
	bge	.Lab16a
	b	.Lab080
.Lab16a:
	ldr	r2, [sp, #0x24]
	add	r2, #1
	str	r2, [sp, #0x24]
	cmp	r2, #3
	bgt	.Lab176
	b	.Lab05a
.Lab176:
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
	ldr	r3, [sp, #0x28]
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	add	r3, #1
	str	r3, [sp, #0x28]
	add	r0, #0x38
	add	r1, #7
	add	r2, #0x14
	ldr	r3, =0x219
	str	r0, [sp, #0xc]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	add	r3, r9
	ldrb	r3, [r3]
	ldr	r0, [sp, #0x28]
	cmp	r0, r3
	bge	.Lab1a2
	b	.Lab054
.Lab1a2:
	mov	r1, r9
	mov	r3, #0xa
	ldr	r0, [r1, #0x30]
	mov	r2, #0xa
	str	r3, [sp]
	mov	r1, #0
	mov	r3, #0x1c
	bl	_Func_801e41c
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0xea3
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
	ldr	r0, [sp, #0x20]
	ldr	r2, =0xea6
	mov	r1, #0
	add	r3, r0, r2
	strb	r1, [r3]
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80aafb8

