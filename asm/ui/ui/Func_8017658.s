	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8017658  @ 0x08017658
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r3
	ldr	r3, =iwram_3001e8c
	sub	sp, #0x24
	ldr	r3, [r3]
	str	r2, [sp, #0x14]
	ldr	r2, =0x12f4
	mov	r8, r3
	lsl	r3, r5, #4
	add	r2, r8
	lsr	r3, #20
	str	r1, [sp, #0x18]
	strh	r3, [r2]
	ldr	r3, =0x12f6
	mov	r6, #0
	add	r3, r8
	strh	r6, [r3]
	ldr	r3, =0xffff
	mov	r1, #1
	and	r5, r3
	bl	BufferString
	lsl	r3, r0, #1
	mov	r10, r0
	mov	r0, #0xeb
	lsl	r0, #4
	add	r3, r0
	mov	r2, r8
	ldrh	r3, [r2, r3]
	mov	r7, #0
	mov	r0, #0
	cmp	r3, #0
	beq	.L17744
	add	r0, sp, #0xc
	str	r0, [sp]
	add	r0, sp, #0x1c
	add	r2, sp, #0x14
	str	r0, [sp, #4]
	add	r1, sp, #0x18
	add	r3, sp, #0x10
	mov	r9, r0
	mov	r0, r10
	str	r6, [sp, #8]
	bl	Func_801868c
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	bne	.L176ca
	ldr	r4, [sp, #0xc]
	cmp	r4, #0
	bne	.L176cc
	mov	r0, #0
	b	.L17744
.L176ca:
	ldr	r4, [sp, #0xc]
.L176cc:
	mov	r3, #1
	and	r3, r5
	cmp	r3, #0
	bne	.L176d8
	mov	r3, #2
	orr	r7, r3
.L176d8:
	mov	r1, #8
	mov	r3, r5
	and	r3, r1
	cmp	r3, #0
	beq	.L176e4
	orr	r7, r1
.L176e4:
	mov	r3, #0x10
	and	r3, r5
	cmp	r3, #0
	beq	.L176f0
	mov	r3, #0x80
	orr	r7, r3
.L176f0:
	mov	r3, #0x20
	and	r3, r5
	cmp	r3, #0
	beq	.L176fe
	mov	r3, #0x80
	lsl	r3, #1
	orr	r7, r3
.L176fe:
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	mov	r3, r4
	str	r7, [sp]
	bl	CreateUIBox
	mov	r6, r0
	mov	r0, #0
	cmp	r6, #0
	beq	.L17744
	mov	r2, r9
	str	r2, [sp]
	mov	r5, #0
	mov	r0, r6
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	str	r5, [sp, #4]
	bl	Func_80165d8
	cmp	r0, #0
	bne	.L17736
	mov	r0, r6
	mov	r1, #1
	bl	CloseUIBox
	mov	r0, #0
	b	.L17744
.L17736:
	ldr	r3, =0x12fa
	add	r3, r8
	strb	r5, [r3]
	ldr	r3, =0x12fb
	add	r3, r8
	strb	r5, [r3]
	mov	r0, r6
.L17744:
	add	sp, #0x24
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8017658

