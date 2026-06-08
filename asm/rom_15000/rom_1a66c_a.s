	.include "macros.inc"

.thumb_func_start Func_801a66c
	push	{r5, r6, r7, lr}
	mov	r1, #0xf9
	lsl	r1, #2
	mov	r0, #0x12
	bl	galloc_ewram
	mov	r2, #0xd2
	mov	r7, r0
	lsl	r2, #2
	mov	r5, #0
	add	r3, r7, r2
	add	r2, #4
	str	r5, [r3]
	add	r3, r7, r2
	add	r2, #4
	str	r5, [r3]
	add	r3, r7, r2
	add	r2, #0x4a
	str	r5, [r3]
	add	r3, r7, r2
	add	r2, #2
	strh	r5, [r3]
	add	r3, r7, r2
	strh	r5, [r3]
	ldr	r3, =0x39e
	add	r2, r7, r3
	mov	r3, #0x80
	strh	r3, [r2]
	mov	r3, #0xe8
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #0x20
	strh	r3, [r2]
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r7, r2
	strh	r5, [r3]
	mov	r3, #0xee
	lsl	r3, #2
	add	r2, r7, r3
	add	r3, #0x2f
	strh	r3, [r2]
	mov	r3, #0xef
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, r7
	mov	r1, #0
	mov	r0, #0
	add	r3, #0x72
.L1a6ce:
	add	r1, #1
	strh	r0, [r3]
	strh	r0, [r2]
	add	r3, #0x34
	add	r2, #0x34
	cmp	r1, #5
	bne	.L1a6ce
	mov	r2, #0xba
	lsl	r2, #1
	mov	r5, #0
	add	r3, r7, r2
	add	r2, #0x34
	strh	r5, [r3, #2]
	add	r3, r7, r2
	strh	r5, [r3, #2]
	mov	r3, r7
	add	r3, #0x46
	strh	r5, [r7, #0xa]
	strh	r5, [r7, #0x3e]
	strh	r5, [r7, #0x12]
	strh	r5, [r3]
	ldr	r6, =Data_346f8
	bl	AllocSpriteSlot
	mov	r2, #0xb9
	lsl	r2, #2
	add	r3, r7, r2
	strh	r0, [r3]
	mov	r1, #0x80
	mov	r2, r6
	ldrh	r0, [r3]
	lsl	r1, #1
	bl	UploadSpriteGFX
	ldr	r2, =0x2e6
	add	r3, r7, r2
	sub	r2, #4
	strh	r0, [r3]
	add	r3, r7, r2
	add	r2, #0x18
	strh	r5, [r3]
	add	r3, r7, r2
	add	r2, #0x1c
	strh	r5, [r3]
	add	r3, r7, r2
	strh	r5, [r3]
	mov	r3, #0xc0
	lsl	r3, #2
	add	r5, r7, r3
	mov	r0, #0xd
	ldrb	r3, [r5, #5]
	neg	r0, r0
	mov	r2, r0
	and	r2, r3
	mov	r3, #0x11
	neg	r3, r3
	and	r2, r3
	mov	r3, #0x20
	orr	r2, r3
	mov	r3, #4
	ldrb	r1, [r5, #7]
	neg	r3, r3
	and	r2, r3
	sub	r3, #0x3b
	mov	r4, #0x3f
	and	r3, r1
	and	r3, r4
	mov	r1, #0x40
	orr	r3, r1
	strb	r3, [r5, #7]
	ldrb	r3, [r5, #9]
	and	r2, r4
	and	r0, r3
	strb	r2, [r5, #5]
	strb	r0, [r5, #9]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801a66c

.thumb_func_start Func_801a778
	push	{lr}
	ldr	r3, =iwram_3001e98
	mov	r2, #0xd2
	ldr	r1, [r3]
	lsl	r2, #2
	add	r3, r1, r2
	mov	r0, #0
	add	r2, #0x52
	str	r0, [r3]
	add	r3, r1, r2
	strh	r0, [r3]
	ldr	r3, =0x39e
	add	r4, r1, r3
	ldrh	r2, [r4]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L1a7a6
	mov	r2, #0xe7
	lsl	r2, #2
	add	r3, r1, r2
	strh	r0, [r3]
	strh	r0, [r4]
.L1a7a6:
	mov	r2, #0xe8
	lsl	r2, #2
	add	r3, r1, r2
	sub	r2, #0xc
	strh	r0, [r3]
	add	r3, r1, r2
	strh	r0, [r3]
	pop	{r0}
	bx	r0
.func_end Func_801a778

.thumb_func_start Func_801a7c0
	push	{lr}
	ldr	r3, =iwram_3001e98
	ldr	r2, [r3]
	mov	r3, #0xe5
	lsl	r3, #2
	add	r4, r2, r3
	ldrh	r3, [r4]
	cmp	r3, #0x10
	beq	.L1a7ec
	lsl	r3, #1
	mov	r12, r3
	mov	r3, #0xd5
	lsl	r3, #2
	add	r3, r12
	strh	r0, [r2, r3]
	mov	r3, #0xdd
	lsl	r3, #2
	add	r3, r12
	strh	r1, [r2, r3]
	ldrh	r3, [r4]
	add	r3, #1
	strh	r3, [r4]
.L1a7ec:
	pop	{r0}
	bx	r0
.func_end Func_801a7c0

.thumb_func_start Func_801a7f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e98
	ldr	r3, [r3]
	mov	r9, r3
	mov	r3, #0xe5
	lsl	r3, #2
	add	r3, r9
	ldrh	r3, [r3]
	sub	sp, #8
	str	r3, [sp, #4]
	mov	r3, #0xe7
	lsl	r3, #2
	add	r3, r9
	ldrh	r3, [r3]
	mov	r2, #0xd5
	mov	r10, r3
	lsl	r3, #1
	mov	r6, #0
	add	r3, r9
	lsl	r2, #2
	mov	r11, r6
	add	r4, r3, r2
	b	.L1a86c
.L1a82e:
	mov	r2, r5
	mov	r3, #0
	mov	r0, r7
	mov	r1, r8
	str	r4, [sp]
	bl	Func_801bd98
	mov	r3, #0xd2
	lsl	r3, #2
	add	r3, r9
	ldr	r2, [r3]
	ldr	r4, [sp]
	cmp	r2, #0
	bne	.L1a854
	str	r5, [r3]
	str	r2, [r5]
	b	.L1a858

	.pool_aligned

.L1a854:
	str	r5, [r6, #4]
	str	r6, [r5]
.L1a858:
	mov	r3, #0
	str	r3, [r5, #4]
	mov	r3, #1
	add	r11, r3
	mov	r2, r11
	mov	r6, r5
	cmp	r2, #5
	beq	.L1a888
	add	r4, #2
	add	r10, r3
.L1a86c:
	ldr	r3, [sp, #4]
	cmp	r10, r3
	bcs	.L1a888
	ldrh	r2, [r4, #0x20]
	mov	r0, #0
	ldrh	r7, [r4]
	str	r4, [sp]
	mov	r8, r2
	bl	Func_801a910
	mov	r5, r0
	ldr	r4, [sp]
	cmp	r5, #0
	bne	.L1a82e
.L1a888:
	mov	r3, r11
	lsl	r2, r3, #3
	ldr	r3, =0x64
	ldr	r1, =0x396
	sub	r3, r2
	mov	r2, #0xe6
	add	r1, r9
	lsl	r2, #2
	strh	r3, [r1]
	add	r2, r9
	mov	r3, #0x8c
	strh	r3, [r2]
	mov	r3, #0xd2
	lsl	r3, #2
	add	r3, r9
	ldr	r6, [r3]
	mov	r3, #0
	mov	r11, r3
	cmp	r6, #0
	beq	.L1a8f4
	mov	r0, #0xee
	lsl	r0, #2
	mov	r5, r1
	mov	r4, r2
	add	r0, r9
	mov	r1, #0
	b	.L1a8c8

	.pool_aligned

.L1a8c8:
	ldrh	r3, [r5]
	add	r3, r11
	strh	r3, [r6, #0x10]
	ldrh	r2, [r4]
	strh	r2, [r6, #0x12]
	strh	r2, [r6, #0x1a]
	ldrh	r2, [r6, #0xa]
	strh	r3, [r6, #0x18]
	cmp	r2, #6
	bne	.L1a8e6
	ldrh	r3, [r0]
	cmp	r3, #0
	bne	.L1a8e6
	strh	r2, [r6, #0x12]
	strh	r2, [r6, #0x1a]
.L1a8e6:
	strh	r1, [r6, #0x14]
	strh	r1, [r6, #0x16]
	ldr	r6, [r6, #4]
	mov	r2, #0x10
	add	r11, r2
	cmp	r6, #0
	bne	.L1a8c8
.L1a8f4:
	bl	Func_801c188
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801a7f4

