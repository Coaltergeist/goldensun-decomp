	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801776c  @ 0x0801776c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	sub	sp, #0x1c
	mov	r8, r3
	mov	r3, #0
	mov	r4, #0
	mov	r6, r1
	str	r3, [sp, #4]
	str	r4, [sp, #8]
	mov	r3, #2
	mov	r5, #0
	mov	r2, #1
	mov	r7, r6
	and	r3, r6
	mov	r10, r0
	str	r5, [sp, #0x18]
	str	r5, [sp, #0x14]
	and	r7, r2
	cmp	r3, #0
	beq	.L177a2
	ldr	r3, =0x12f9
	add	r3, r8
	strb	r2, [r3]
.L177a2:
	add	r0, sp, #0xc
	add	r2, sp, #0x14
	add	r3, sp, #0x10
	str	r0, [sp]
	add	r1, sp, #0x18
	mov	r0, r10
	bl	TextBox
	ldr	r2, [sp, #0x10]
	mov	r3, #0x1e
	sub	r3, r2
	asr	r3, #1
	ldr	r2, [sp, #0xc]
	str	r3, [sp, #0x18]
	mov	r3, #0xc
	sub	r3, r2
	asr	r2, r3, #1
	mov	r3, #8
	and	r3, r6
	str	r2, [sp, #0x14]
	cmp	r3, #0
	beq	.L177d2
	add	r3, r2, #4
	b	.L17800
.L177d2:
	mov	r3, #0x40
	and	r3, r6
	cmp	r3, #0
	beq	.L177e0
	mov	r3, r2
	add	r3, #0xc
	b	.L17800
.L177e0:
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	add	r5, sp, #4
	ldr	r0, [r3]
	mov	r1, r5
	bl	_Func_8094154
	ldr	r3, [r5, #4]
	asr	r3, #3
	cmp	r3, #9
	ble	.L177fe
	sub	r3, #5
	b	.L17800
.L177fe:
	add	r3, #4
.L17800:
	str	r3, [sp, #0x14]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x14]
	mov	r0, r10
	mov	r3, r7
	bl	Func_8017658
	mov	r5, r0
	cmp	r5, #0
	beq	.L1785a
	b	.L1781c
.L17816:
	mov	r0, #1
	bl	WaitFrames
.L1781c:
	bl	Func_8017364
	cmp	r0, #0
	beq	.L17816
	mov	r3, #0x20
	and	r3, r6
	cmp	r3, #0
	beq	.L17838
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0xea6
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
.L17838:
	mov	r3, #4
	and	r3, r6
	cmp	r3, #0
	bne	.L1785a
	mov	r0, r5
	mov	r1, r7
	bl	CloseUIBox
	b	.L17850
.L1784a:
	mov	r0, #1
	bl	WaitFrames
.L17850:
	mov	r0, r5
	bl	Func_8017394
	cmp	r0, #0
	beq	.L1784a
.L1785a:
	ldr	r3, =0x12f9
	mov	r2, #0
	add	r3, r8
	strb	r2, [r3]
	ldr	r3, =0x12f4
	add	r3, r8
	strh	r2, [r3]
	ldr	r3, =0x12f6
	add	r3, r8
	strh	r2, [r3]
	mov	r0, #3
	bl	WaitFrames
	add	sp, #0x1c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801776c

