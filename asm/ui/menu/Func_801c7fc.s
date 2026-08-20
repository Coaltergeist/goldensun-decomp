	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801c7fc  @ 0x0801c7fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x28
	str	r0, [sp, #8]
	add	r5, sp, #0xc
	mov	r0, #0
	mov	r9, r0
	mov	r0, r5
	bl	_Func_80796c4
	cmp	r9, r0
	bge	.L1c88c
	mov	r11, r5
	mov	r10, r0
.L1c822:
	mov	r3, r11
	ldrh	r3, [r3]
	mov	r0, #2
	mov	r8, r3
	add	r11, r0
	mov	r0, r8
	bl	_GetUnit
	mov	r3, #0x58
	ldr	r2, =0x3fff
	ldrh	r3, [r0, r3]
	mov	r5, r2
	and	r5, r3
	mov	r1, #0
	cmp	r5, #0
	beq	.L1c880
	mov	r7, r0
	mov	r0, r9
	lsl	r3, r0, #2
	ldr	r0, [sp, #8]
	add	r7, #0x58
	add	r6, r3, r0
	b	.L1c854

	.pool_aligned

.L1c854:
	mov	r0, r5
	str	r1, [sp, #4]
	str	r2, [sp]
	bl	_GetMoveInfo
	ldr	r1, [sp, #4]
	mov	r3, r8
	mov	r0, #1
	add	r1, #1
	strh	r3, [r6]
	strh	r5, [r6, #2]
	add	r9, r0
	add	r6, #4
	ldr	r2, [sp]
	cmp	r1, #0x1f
	bgt	.L1c880
	add	r7, #4
	ldrh	r3, [r7]
	mov	r5, r2
	and	r5, r3
	cmp	r5, #0
	bne	.L1c854
.L1c880:
	mov	r3, #1
	neg	r3, r3
	add	r10, r3
	mov	r0, r10
	cmp	r0, #0
	bne	.L1c822
.L1c88c:
	mov	r0, r9
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801c7fc

