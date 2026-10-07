	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801b010  @ 0x0801b010
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001e98
	ldr	r6, [r3]
	mov	r10, r0
	mov	r0, r6
	sub	sp, #4
	mov	r5, r1
	bl	Func_801b36c
	mov	r2, #0xd4
	lsl	r2, #2
	add	r2, r6
	mov	r9, r0
	ldr	r0, [r2]
	mov	r8, r2
	cmp	r0, #0
	bne	.L1b0aa
	mov	r3, r10
	cmp	r3, #6
	bne	.L1b082
	mov	r2, #0xee
	lsl	r2, #2
	add	r3, r6, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1b058
	mov	r3, r10
	str	r3, [sp]
	mov	r2, #5
	mov	r0, #0x11
	mov	r1, #0x11
	b	.L1b062
.L1b058:
	mov	r3, r10
	str	r3, [sp]
	mov	r2, #5
	mov	r0, #0x11
	mov	r1, #0
.L1b062:
	mov	r3, #3
	bl	CreateUIBox
	mov	r2, r8
	str	r0, [r2]
	mov	r3, #0xe8
	lsl	r3, #2
	add	r2, r6, r3
	mov	r3, #0
	strh	r3, [r2]
	mov	r3, #0xee
	lsl	r3, #2
	add	r2, r6, r3
	add	r3, #0x2f
	strh	r3, [r2]
	b	.L1b09c
.L1b082:
	mov	r0, #9
	sub	r0, r5
	mov	r3, #6
	lsr	r0, #1
	add	r2, r5, #2
	str	r3, [sp]
	add	r0, #0x13
	mov	r1, #0x11
	mov	r3, #3
	bl	CreateUIBox
	mov	r2, r8
	str	r0, [r2]
.L1b09c:
	mov	r2, #0xd4
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r0, [r3]
	bl	Func_8016478
	b	.L1b0e2
.L1b0aa:
	cmp	r5, #0
	beq	.L1b0d6
	ldrh	r3, [r0, #8]
	add	r7, r5, #2
	cmp	r3, r7
	beq	.L1b0d6
	mov	r1, #2
	bl	CloseUIBox
	mov	r0, #9
	sub	r0, r5
	mov	r3, #6
	lsr	r0, #1
	str	r3, [sp]
	add	r0, #0x13
	mov	r3, #3
	mov	r1, #0x11
	mov	r2, r7
	bl	CreateUIBox
	mov	r3, r8
	str	r0, [r3]
.L1b0d6:
	mov	r2, #0xd4
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r0, [r3]
	bl	Func_8016478
.L1b0e2:
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r6, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1b0fa
	mov	r3, r9
	sub	r2, #0x44
	ldrh	r0, [r3, #0x20]
	add	r3, r6, r2
	ldr	r1, [r3]
	b	.L1b10e
.L1b0fa:
	mov	r3, r10
	cmp	r3, #2
	beq	.L1b118
	cmp	r3, #4
	bne	.L1b12a
	mov	r2, #0xd4
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r1, [r3]
	ldr	r0, =0x51
.L1b10e:
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e7c0
	b	.L1b12a
.L1b118:
	mov	r2, #0xd4
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r1, [r3]
	ldr	r0, =0x50
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e7c0
.L1b12a:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801b010

