	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Task_Earthquake  @ 0x08094e7c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ec4
	ldr	r0, [r3]
	sub	sp, #0x1c
	mov	r1, #0
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x14]
	sub	r3, #0x54
	ldr	r3, [r3]
	str	r3, [sp, #0xc]
	add	r3, #0xe4
	mov	r7, r0
	str	r3, [sp, #8]
	str	r1, [sp, #4]
	str	r1, [sp]
	str	r1, [sp, #0x10]
	add	r7, #8
	mov	r9, r1
	mov	r11, r1
	mov	r8, r1
.L94eb0:
	ldrh	r3, [r7, #0x1c]
	cmp	r3, #0
	bne	.L94eb8
	b	.L94fc8
.L94eb8:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #8]
	ldr	r2, [r2]
	ldr	r3, [r3, #4]
	mov	r0, #0xb3
	lsl	r0, #1
	mov	r8, r2
	mov	r10, r3
	bl	_GetFlag
	cmp	r0, #0
	beq	.L94ed6
	ldrh	r3, [r7, #0x1c]
	add	r3, #1
	strh	r3, [r7, #0x1c]
.L94ed6:
	ldrh	r3, [r7, #0x1c]
	ldr	r2, =gScript_0809f024
	lsr	r3, #1
	lsl	r3, #2
	add	r6, r3, r2
	bl	Random
	mov	r5, r0
	bl	Random
	mov	r3, #1
	ldr	r2, [r7, #0xc]
	and	r0, r3
	mov	r1, r8
	and	r3, r5
	sub	r2, r1
	add	r3, r0
	asr	r2, #16
	lsr	r3, #1
	add	r1, r2, r3
	sub	r2, r1, #1
	mov	r11, r2
	ldr	r3, [r7, #0x14]
	ldr	r2, [r7, #0x10]
	mov	r0, r10
	sub	r3, r2
	sub	r3, r0
	cmp	r3, #0
	bge	.L94f14
	ldr	r2, =0xffff
	add	r3, r2
.L94f14:
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	asr	r3, #16
	add	r3, r2
	mov	r8, r3
	mov	r3, r1
	add	r3, #0xf
	add	r6, #2
	cmp	r3, #0xff
	bhi	.L94fb2
	mov	r1, #0x20
	neg	r1, r1
	cmp	r8, r1
	blt	.L94fb2
	mov	r2, r8
	cmp	r2, #0x9f
	bgt	.L94fb2
	ldr	r3, [sp, #0x18]
	ldr	r1, [r3, #4]
	ldrh	r3, [r6]
	add	r1, r3
	ldr	r3, .L94f70	@ 0x3ff
	ldr	r2, .L94f74	@ 0xfffffc00
	and	r1, r3
	ldrh	r3, [r7, #8]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #8]
	ldr	r3, .L94f78	@ 0x1ff
	mov	r1, r11
	and	r1, r3
	ldr	r2, .L94f7c	@ 0xfffffe00
	ldrh	r3, [r7, #6]
	and	r3, r2
	orr	r3, r1
	ldrb	r2, [r7, #5]
	mov	r1, #0x3f
	strh	r3, [r7, #6]
	mov	r3, r1
	and	r3, r2
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #7]
	and	r1, r3
	mov	r3, #0x40
	b	.L94f8c

	.align	2, 0
.L94f70:
	.word	0x3ff
.L94f74:
	.word	0xfffffc00
.L94f78:
	.word	0x1ff
.L94f7c:
	.word	0xfffffe00
	.pool

.L94f8c:
	orr	r1, r3
	ldr	r3, =iwram_3001e40
	mov	r0, r8
	ldr	r3, [r3]
	ldr	r2, .L94fbc	@ 1
	strb	r0, [r7, #4]
	mov	r0, #0x3f
	neg	r0, r0
	lsr	r3, #1
	and	r3, r2
	mov	r2, r0
	lsl	r3, #4
	and	r1, r2
	orr	r1, r3
	strb	r1, [r7, #7]
	mov	r0, r7
	mov	r1, #0xf0
	bl	Func_8003dec
.L94fb2:
	ldrh	r3, [r7, #0x1c]
	ldr	r1, =0xffff
	add	r3, r1
	strh	r3, [r7, #0x1c]
	b	.L94fc8

	.align	2, 0
.L94fbc:
	.word	1
	.pool

.L94fc8:
	ldr	r2, [sp, #0x14]
	cmp	r2, #3
	bhi	.L95078
	ldrh	r3, [r7, #0x1c]
	cmp	r3, #0
	bne	.L95078
	ldr	r0, [sp, #0x18]
	ldr	r1, =0x40c
	add	r3, r0, r1
	ldr	r5, [r3]
	cmp	r5, #0
	bne	.L95078
	mov	r2, r9
	cmp	r2, #0
	beq	.L95020
	ldr	r3, [sp, #4]
	str	r3, [r7, #0xc]
	ldr	r0, [sp]
	mov	r3, r8
	mov	r2, r11
	asr	r1, r2, #16
	str	r0, [r7, #0x14]
	asr	r2, r3, #16
	mov	r0, #0
	bl	_Func_8011f54
	ldr	r3, .L95018	@ 0x3e
	lsl	r0, #16
	str	r0, [r7, #0x10]
	mov	r0, r9
	sub	r3, r0
	strh	r3, [r7, #0x1c]
	str	r5, [r7, #0x18]
	ldr	r1, [sp, #0x14]
	mov	r2, #4
	add	r1, #1
	str	r1, [sp, #0x14]
	add	r9, r2
	b	.L95078

	.align	2, 0
.L95018:
	.word	0x3e
	.pool

.L95020:
	bl	Random
	mov	r3, #0xff
	and	r0, r3
	cmp	r0, #0
	bne	.L95078
	ldr	r3, [sp, #0xc]
	ldr	r6, [r3]
	bl	Random
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r5, =0xff800000
	add	r3, r0
	add	r3, r5
	str	r3, [sp, #4]
	bl	Random
	ldr	r3, [r6, #8]
	lsl	r0, #8
	add	r3, r0
	add	r3, r5
	ldr	r0, [sp, #4]
	str	r3, [sp]
	mov	r2, r11
	str	r3, [r7, #0x14]
	mov	r3, r8
	asr	r1, r2, #16
	str	r0, [r7, #0xc]
	asr	r2, r3, #16
	mov	r0, #0
	bl	_Func_8011f54
	lsl	r0, #16
	str	r0, [r7, #0x10]
	mov	r3, #0x1e
	mov	r0, r9
	strh	r3, [r7, #0x1c]
	str	r0, [r7, #0x18]
	ldr	r1, [sp, #0x14]
	add	r1, #1
	mov	r2, #4
	str	r1, [sp, #0x14]
	mov	r9, r2
.L95078:
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
	add	r7, #0x20
	cmp	r3, #0x1f
	bhi	.L95086
	b	.L94eb0
.L95086:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Task_Earthquake

