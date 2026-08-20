	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Task_Snow  @ 0x08094bbc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ec4
	ldr	r0, [r3]
	sub	r3, #0x54
	ldr	r3, [r3]
	sub	sp, #0x10
	mov	r1, #0
	mov	r9, r0
	ldr	r2, =0xfffffc00
	mov	r7, r9
	str	r3, [sp, #0xc]
	str	r1, [sp, #8]
	str	r1, [sp, #4]
	add	r7, #8
	mov	r11, r2
.L94be6:
	ldrh	r3, [r7, #0x1c]
	ldr	r2, =0xffff
	add	r1, r3, r2
	mov	r3, r1
	and	r3, r2
	strh	r1, [r7, #0x1c]
	cmp	r3, r2
	bne	.L94bf8
	b	.L94d2c
.L94bf8:
	ldr	r3, [sp, #0xc]
	add	r3, #0xe4
	ldr	r6, [r3]
	ldr	r3, [r3, #4]
	mov	r0, #0xb3
	mov	r8, r3
	lsl	r3, r1, #16
	asr	r3, #16
	lsl	r0, #1
	mov	r10, r3
	bl	_GetFlag
	cmp	r0, #0
	beq	.L94c20
	ldrh	r3, [r7, #0x1c]
	add	r3, #1
	strh	r3, [r7, #0x1c]
	ldr	r3, [r7, #0x18]
	sub	r3, #1
	str	r3, [r7, #0x18]
.L94c20:
	bl	Random
	mov	r5, r0
	bl	Random
	mov	r3, #1
	ldr	r1, [r7, #0xc]
	and	r0, r3
	and	r3, r5
	add	r3, r0
	sub	r1, r6
	lsr	r3, #1
	asr	r1, #16
	add	r1, r3
	ldr	r2, [r7, #0x14]
	ldr	r3, [r7, #0x10]
	mov	r0, r10
	sub	r2, r3
	mov	r3, r8
	sub	r2, r3
	lsl	r3, r0, #16
	sub	r4, r1, #1
	asr	r2, #16
	lsr	r3, #16
	add	r1, #0xf
	sub	r0, r2, r3
	cmp	r1, #0xff
	bhi	.L94d28
	mov	r1, #0x20
	neg	r1, r1
	cmp	r0, r1
	blt	.L94d28
	cmp	r0, #0x9f
	bgt	.L94d28
	ldrh	r3, [r7, #0x1c]
	cmp	r3, #0x3b
	bhi	.L94c82
	mov	r2, r9
	ldr	r3, [r2, #4]
	ldr	r1, =0x3ff
	ldrh	r2, [r7, #8]
	add	r3, #0x10
	and	r3, r1
	mov	r1, r11
	and	r2, r1
	orr	r2, r3
	ldr	r3, [r7, #0x18]
	add	r3, #3
	b	.L94c9c
.L94c82:
	cmp	r3, #0x59
	bhi	.L94ca2
	mov	r2, r9
	ldr	r3, [r2, #4]
	ldr	r1, =0x3ff
	ldrh	r2, [r7, #8]
	add	r3, #8
	and	r3, r1
	mov	r1, r11
	and	r2, r1
	orr	r2, r3
	ldr	r3, [r7, #0x18]
	add	r3, #1
.L94c9c:
	strh	r2, [r7, #8]
	str	r3, [r7, #0x18]
	b	.L94cb4
.L94ca2:
	mov	r3, r9
	ldr	r2, [r3, #4]
	ldr	r1, =0x3ff
	ldrh	r3, [r7, #8]
	and	r2, r1
	mov	r1, r11
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #8]
.L94cb4:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.L94cd6
	ldrh	r2, [r7, #8]
	lsl	r3, r2, #22
	ldr	r1, =0x3ff
	lsr	r3, #22
	add	r3, #4
	and	r3, r1
	mov	r1, r11
	and	r2, r1
	orr	r2, r3
	strh	r2, [r7, #8]
.L94cd6:
	ldr	r3, .L94d0c	@ 0x1ff
	ldr	r2, .L94d10	@ 0xfffffe00
	and	r4, r3
	ldrh	r3, [r7, #6]
	and	r3, r2
	orr	r3, r4
	strh	r3, [r7, #6]
	ldr	r3, [r7, #0x18]
	asr	r3, #2
	sub	r3, r0, r3
	ldrb	r1, [r7, #5]
	mov	r2, #0x3f
	strb	r3, [r7, #4]
	mov	r3, r2
	and	r3, r1
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #7]
	and	r2, r3
	mov	r3, #0x40
	orr	r2, r3
	strb	r2, [r7, #7]
	mov	r0, r7
	mov	r1, #0xf0
	bl	Func_8003dec
	b	.L94d2c

	.align	2, 0
.L94d0c:
	.word	0x1ff
.L94d10:
	.word	0xfffffe00
	.pool

.L94d28:
	mov	r3, #0
	strh	r3, [r7, #0x1c]
.L94d2c:
	ldr	r2, [sp, #8]
	cmp	r2, #7
	bhi	.L94d7c
	ldrh	r3, [r7, #0x1c]
	mov	r8, r3
	cmp	r3, #0
	bne	.L94d7c
	ldr	r0, [sp, #0xc]
	ldr	r6, [r0]
	bl	Random
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r5, =0xff800000
	add	r3, r0
	add	r4, r3, r5
	str	r4, [sp]
	bl	Random
	ldr	r3, [r6, #8]
	lsl	r0, #8
	add	r3, r0
	ldr	r4, [sp]
	add	r0, r3, r5
	asr	r2, r0, #16
	str	r0, [r7, #0x14]
	asr	r1, r4, #16
	str	r4, [r7, #0xc]
	mov	r0, #0
	bl	_Func_8011f54
	mov	r3, #0x78
	lsl	r0, #16
	mov	r1, r8
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
	str	r1, [r7, #0x18]
	ldr	r2, [sp, #8]
	add	r2, #1
	str	r2, [sp, #8]
.L94d7c:
	ldr	r3, [sp, #4]
	add	r3, #1
	str	r3, [sp, #4]
	add	r7, #0x20
	cmp	r3, #0x1f
	bhi	.L94d8a
	b	.L94be6
.L94d8a:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Task_Snow

