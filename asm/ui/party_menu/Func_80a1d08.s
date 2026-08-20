	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a1d08  @ 0x080a1d08
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r7, [r3]
	mov	r8, r2
	ldr	r2, [r7, #0x14]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r2, #1
	neg	r2, r2
	sub	sp, #0x18
	mov	r6, r0
	mov	r10, r1
	cmp	r8, r2
	beq	.La1d6c
	add	r0, sp, #8
	add	r1, sp, #0x14
	add	r2, sp, #0x10
	add	r3, sp, #0xc
	str	r0, [sp]
	mov	r0, r6
	bl	_TextBox
	ldr	r2, [sp, #8]
	mov	r5, r7
	str	r2, [sp]
	mov	r2, #0x81
	lsl	r2, #1
	add	r5, #0x3c
	str	r2, [sp, #4]
	ldr	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, r10
	mov	r2, r8
	bl	Func_80a10d0
	cmp	r0, #0
	bne	.La1d68
	ldr	r2, [sp, #8]
	ldr	r0, [r5]
	ldr	r3, [sp, #0xc]
	str	r2, [sp]
	mov	r1, r10
	mov	r2, r8
	bl	Func_80a23f4
.La1d68:
	ldr	r5, [r5]
	b	.La1d6e
.La1d6c:
	ldr	r5, [r7, #0x2c]
.La1d6e:
	mov	r0, r5
	bl	_Func_8016498
	mov	r0, r5
	bl	_Func_80164ac
	mov	r3, #1
	neg	r3, r3
	cmp	r8, r3
	bne	.La1d90
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	b	.La1d9c
.La1d90:
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_DrawSmallText
.La1d9c:
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	beq	.La1df4
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #1
	ldr	r6, =gKeyPress
	mov	r10, r3
.La1db0:
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r6]
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	bne	.La1dd4
	ldr	r3, [r6]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.La1dd4
	ldr	r3, [r6]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.La1db0
.La1dd4:
	mov	r3, #1
	neg	r3, r3
	cmp	r8, r3
	bne	.La1de2
	mov	r0, r5
	bl	_Func_8016498
.La1de2:
	mov	r0, r5
	bl	_Func_80164ac
	b	.La1dfa

	.pool_aligned

.La1df4:
	ldr	r0, =0x151
	bl	_SetFlag
.La1dfa:
	ldr	r3, =0x222
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	ldr	r1, .La1e1c	@ 1
	ldr	r3, [r7, #0x14]
	mov	r2, #1
	neg	r2, r2
	strb	r1, [r3, #5]
	cmp	r8, r2
	beq	.La1e28
	mov	r0, r7
	add	r0, #0x3c
	mov	r1, #1
	bl	Func_80a1114
	b	.La1e28

	.align	2, 0
.La1e1c:
	.word	1
	.pool

.La1e28:
	add	sp, #0x18
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a1d08

