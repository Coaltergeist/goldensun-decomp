	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DrawSmallText  @ 0x0801e74c
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r11, r3
	ldr	r3, =iwram_3001e8c
	mov	r9, r2
	ldr	r5, [r3]
	ldr	r2, =0x12b2
	mov	r3, #0
	mov	r8, r3
	add	r6, r5, r2
	mov	r2, r8
	mov	r10, r1
	strh	r2, [r6]
	mov	r1, #1
	bl	BufferString
	ldrh	r3, [r6]
	mov	r1, #0xeb
	lsl	r1, #4
	lsl	r3, #1
	add	r3, r1
	mov	r2, r8
	strh	r2, [r5, r3]
	ldrh	r3, [r6]
	ldr	r2, .L1e7a0	@ 0x1ff
	add	r3, #1
	and	r3, r2
	add	r5, r1
	strh	r3, [r6]
	mov	r0, r5
	mov	r1, r10
	mov	r2, r9
	mov	r3, r11
	bl	Func_8017aa4
	b	.L1e7ac

	.align	2, 0
.L1e7a0:
	.word	0x1ff
	.pool

.L1e7ac:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end DrawSmallText

.thumb_func_start Func_801e7c0  @ 0x0801e7c0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r6, r3
	ldr	r3, =iwram_3001e8c
	mov	r10, r1
	ldr	r7, [r3]
	mov	r9, r2
	ldr	r1, =0x12b2
	mov	r2, #0
	mov	r8, r2
	add	r5, r7, r1
	mov	r3, r8
	strh	r3, [r5]
	mov	r1, #1
	bl	BufferString
	ldrh	r3, [r5]
	mov	r4, #0xeb
	lsl	r4, #4
	lsl	r3, #1
	add	r3, r4
	mov	r0, r8
	strh	r0, [r7, r3]
	ldrh	r3, [r5]
	ldr	r2, .L1e82c	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r5]
	mov	r1, r10
	ldrh	r3, [r1, #0xe]
	lsr	r6, #3
	ldrh	r2, [r1, #0xc]
	add	r3, r6
	mov	r4, r9
	lsr	r1, r4, #3
	add	r3, #1
	add	r2, r1
	lsl	r3, #5
	add	r3, r2
	mov	r0, #0xa0
	add	r1, r3, #1
	lsl	r0, #2
	cmp	r1, r0
	bcs	.L1e848
	ldr	r3, =0x6002000
	mov	r4, #0xeb
	lsl	r1, #1
	lsl	r4, #4
	add	r2, r1, r3
	add	r0, r7, r4
	b	.L1e83c

	.align	2, 0
.L1e82c:
	.word	0x1ff
	.pool

.L1e83c:
	mov	r3, #7
	mov	r4, r9
	add	r1, r7, r1
	and	r3, r4
	bl	Func_801de5c
.L1e848:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801e7c0

.thumb_func_start Func_801e858  @ 0x0801e858
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0x80
	lsl	r0, #2
	mov	r8, r2
	mov	r10, r3
	mov	r7, r1
	bl	Func_8004970
	ldrb	r3, [r5]
	mov	r6, r0
	mov	r2, r6
	cmp	r3, #0
	beq	.L1e888
.L1e87a:
	ldrb	r3, [r5]
	strh	r3, [r2]
	add	r5, #1
	ldrb	r3, [r5]
	add	r2, #2
	cmp	r3, #0
	bne	.L1e87a
.L1e888:
	ldr	r3, =0
	mov	r0, r6
	strh	r3, [r2]
	mov	r1, r7
	mov	r2, r8
	mov	r3, r10
	bl	Func_8017aa4
	mov	r0, r6
	bl	free
	b	.L1e8a4

	.pool_aligned

.L1e8a4:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801e858

.thumb_func_start Func_801e8b0  @ 0x0801e8b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0x80
	lsl	r0, #2
	mov	r10, r2
	mov	r8, r3
	mov	r7, r1
	bl	Func_8004970
	ldr	r3, =iwram_3001e8c
	mov	r6, r0
	ldr	r0, [r3]
	ldrb	r3, [r5]
	mov	r2, r6
	cmp	r3, #0
	beq	.L1e8e4
.L1e8d6:
	ldrb	r3, [r5]
	strh	r3, [r2]
	add	r5, #1
	ldrb	r3, [r5]
	add	r2, #2
	cmp	r3, #0
	bne	.L1e8d6
.L1e8e4:
	ldr	r3, .L1e91c	@ 0
	strh	r3, [r2]
	mov	r1, r8
	ldrh	r3, [r7, #0xe]
	lsr	r2, r1, #3
	add	r3, r2
	mov	r4, r10
	ldrh	r2, [r7, #0xc]
	lsr	r1, r4, #3
	add	r3, #1
	add	r2, r1
	lsl	r3, #5
	add	r3, r2
	add	r1, r3, #1
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r1, r3
	bcs	.L1e932
	ldr	r4, =0x6002000
	lsl	r1, #1
	add	r2, r1, r4
	mov	r3, #7
	add	r1, r0, r1
	mov	r0, r10
	and	r3, r0
	mov	r0, r6
	b	.L1e928

	.align	2, 0
.L1e91c:
	.word	0
	.pool

.L1e928:
	bl	Func_801de5c
	mov	r0, r6
	bl	free
.L1e932:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801e8b0

.thumb_func_start UIDrawText  @ 0x0801e940
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0x80
	lsl	r0, #2
	mov	r7, r2
	mov	r8, r3
	mov	r10, r1
	bl	Func_8004970
	ldrb	r3, [r5]
	mov	r6, r0
	mov	r2, r6
	cmp	r3, #0
	beq	.L1e970
.L1e962:
	ldrb	r3, [r5]
	strh	r3, [r2]
	add	r5, #1
	ldrb	r3, [r5]
	add	r2, #2
	cmp	r3, #0
	bne	.L1e962
.L1e970:
	ldr	r3, =0
	lsr	r7, #3
	strh	r3, [r2]
	mov	r3, r8
	lsr	r3, #3
	mov	r0, r6
	mov	r1, r10
	mov	r2, r7
	mov	r8, r3
	bl	Func_8017c8c
	mov	r0, r6
	bl	free
	b	.L1e994

	.pool_aligned

.L1e994:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end UIDrawText

