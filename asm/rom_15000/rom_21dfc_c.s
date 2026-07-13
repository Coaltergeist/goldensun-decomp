	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80228e4  @ 0x080228e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	mov	r8, r1
	mov	r1, #0
	str	r2, [sp, #0xc]
	str	r3, [sp, #8]
	str	r1, [sp, #4]
	str	r1, [sp]
	mov	r2, r8
	ldrh	r3, [r2]
	mov	r10, r0
	mov	r9, r1
	cmp	r3, #0
	beq	.L2298e
	ldr	r3, =0x3fff
	ldr	r6, [sp, #0xc]
	mov	r11, r3
	mov	r5, r8
	sub	r6, #2
.L22916:
	ldrh	r0, [r5]
	bl	_GetMoveInfo
	ldrb	r2, [r0, #1]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L2297e
	ldrh	r2, [r5]
	mov	r3, r11
	and	r3, r2
	strh	r3, [r6, #2]
	mov	r1, #1
	add	r9, r1
	mov	r1, r10
	ldrh	r2, [r1]
	ldrh	r3, [r5]
	eor	r3, r2
	mov	r2, r11
	and	r3, r2
	add	r6, #2
	mov	r0, #0
	cmp	r3, #0
	beq	.L2295e
	ldr	r7, .L22970	@ 0x3fff
	mov	r4, r5
.L2294a:
	add	r0, #1
	cmp	r0, #0x1f
	bgt	.L2295e
	add	r1, #4
	ldrh	r3, [r4]
	ldrh	r2, [r1]
	eor	r3, r2
	and	r3, r7
	cmp	r3, #0
	bne	.L2294a
.L2295e:
	cmp	r0, #0x20
	bne	.L2297e
	ldr	r3, [sp, #4]
	add	r3, #1
	str	r3, [sp, #4]
	ldr	r2, .L22974	@ 0x8000
	ldrh	r3, [r6]
	orr	r3, r2
	b	.L2297c

	.align	2, 0
.L22970:
	.word	0x3fff
.L22974:
	.word	0x8000
	.pool

.L2297c:
	strh	r3, [r6]
.L2297e:
	mov	r3, r8
	add	r5, #4
	add	r3, #0x7c
	cmp	r5, r3
	bgt	.L2298e
	ldrh	r3, [r5]
	cmp	r3, #0
	bne	.L22916
.L2298e:
	mov	r1, r10
	ldrh	r3, [r1]
	cmp	r3, #0
	beq	.L22a18
	mov	r2, r9
	lsl	r3, r2, #1
	ldr	r1, [sp, #0xc]
	ldr	r2, =0x3fff
	mov	r5, r10
	add	r7, r3, r1
	mov	r11, r2
.L229a4:
	ldrh	r0, [r5]
	bl	_GetMoveInfo
	ldrb	r2, [r0, #1]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L22a08
	mov	r1, r8
	ldrh	r2, [r1]
	ldrh	r3, [r5]
	eor	r3, r2
	mov	r2, r11
	and	r3, r2
	mov	r0, #0
	cmp	r3, #0
	beq	.L229de
	ldr	r6, .L229f0	@ 0x3fff
	mov	r4, r5
.L229ca:
	add	r0, #1
	cmp	r0, #0x1f
	bgt	.L229de
	add	r1, #4
	ldrh	r3, [r4]
	ldrh	r2, [r1]
	eor	r3, r2
	and	r3, r6
	cmp	r3, #0
	bne	.L229ca
.L229de:
	cmp	r0, #0x20
	bne	.L22a08
	ldr	r3, [sp]
	add	r3, #1
	str	r3, [sp]
	ldrh	r3, [r5]
	ldr	r2, .L229f4	@ 0x4000
	mov	r1, r11
	b	.L229fc

	.align	2, 0
.L229f0:
	.word	0x3fff
.L229f4:
	.word	0x4000
	.pool

.L229fc:
	and	r3, r1
	orr	r3, r2
	mov	r2, #1
	strh	r3, [r7]
	add	r9, r2
	add	r7, #2
.L22a08:
	mov	r3, r10
	add	r5, #4
	add	r3, #0x7c
	cmp	r5, r3
	bgt	.L22a18
	ldrh	r3, [r5]
	cmp	r3, #0
	bne	.L229a4
.L22a18:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #8]
	str	r3, [r1]
	ldr	r2, [sp]
	ldr	r3, [sp, #0x30]
	mov	r0, r9
	str	r2, [r3]
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80228e4
