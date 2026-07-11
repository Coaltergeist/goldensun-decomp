	.include "macros.inc"

.thumb_func_start Func_80a63e4  @ 0x080a63e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	str	r0, [sp, #8]
	ldr	r3, =iwram_3001f2c
	ldr	r6, [r3]
	ldr	r2, =0x219
	mov	r1, #0x1d
	ldrsb	r1, [r6, r1]
	add	r3, r6, r2
	ldrb	r3, [r3]
	mov	r8, r1
	mov	r1, #0
	str	r1, [sp, #4]
	str	r1, [sp]
	mov	r11, r3
	mov	r3, #1
	mov	r9, r3
	mov	r3, #0x1c
	ldrsb	r3, [r6, r3]
	sub	r2, #0x11
	lsl	r3, #1
	add	r3, r2
	ldrh	r0, [r6, r3]
	bl	_GetUnit
	mov	r3, r8
	lsl	r3, #1
	mov	r10, r3
	mov	r0, r10
	add	r0, r8
	lsl	r0, #3
	sub	r0, #0xa
	mov	r1, #0x10
	bl	Func_80a1ac0
	b	.La6582

	.pool_aligned

.La6440:
	mov	r1, r9
	cmp	r1, #0
	beq	.La6500
	mov	r0, r8
	mov	r2, #0
	mov	r1, r11
	add	r0, r11
	mov	r9, r2
	bl	__modsi3
	mov	r8, r0
	mov	r3, r8
	lsl	r3, #1
	mov	r7, #0x82
	mov	r10, r3
	lsl	r7, #2
	add	r7, r10
	ldrh	r0, [r6, r7]
	bl	_GetUnit
	ldr	r3, [r6, #0x10]
	mov	r1, r10
	ldrh	r2, [r3, #0xc]
	add	r1, r8
	add	r2, r1
	ldr	r5, [r6, #0x18]
	ldr	r3, =0xffff
	lsl	r2, #3
	sub	r2, #2
	strh	r2, [r5, #6]
	and	r2, r3
	ldr	r3, =0x1ff
	ldr	r1, =0xfffffe00
	and	r2, r3
	ldrh	r3, [r5, #0x16]
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #0x16]
	ldr	r1, [sp, #8]
	cmp	r1, #0
	bne	.La6506
	b	.La64a0

	.pool_aligned

.La64a0:
	ldr	r0, [r6, #0x24]
	ldrh	r1, [r6, r7]
	mov	r2, #0
	mov	r3, #0
	bl	Func_80a112c
	mov	r0, r6
	ldrh	r1, [r6, r7]
	bl	Func_80a1804
	ldr	r0, =0x151
	bl	_GetFlag
	cmp	r0, #0
	bne	.La64ea
	ldr	r2, [sp]
	cmp	r2, #0
	bne	.La64ea
	ldr	r0, [r6, #0x2c]
	bl	_Func_8016498
	mov	r1, #0xbc
	lsl	r1, #1
	add	r3, r6, r1
	ldrh	r3, [r3]
	ldr	r0, .La64f4	@ 0x3fff
	and	r0, r3
	ldr	r3, =0x53a
	mov	r2, #0
	add	r0, r3
	ldr	r1, [r6, #0x2c]
	mov	r3, #0
	bl	_Func_801e7c0
	mov	r2, #1
	str	r2, [sp]
	b	.La6506
.La64ea:
	ldr	r0, =0x151
	bl	_ClearFlag
	b	.La6506

	.align	2, 0
.La64f4:
	.word	0x3fff
	.pool

.La6500:
	mov	r3, r8
	lsl	r3, #1
	mov	r10, r3
.La6506:
	mov	r0, r10
	add	r0, r8
	lsl	r0, #3
	mov	r1, #0x10
	sub	r0, #0xa
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gKeyPress
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La6538
	mov	r0, #0x70
	bl	_PlaySound
	mov	r3, #0x82
	lsl	r3, #2
	add	r3, r10
	ldrh	r3, [r6, r3]
	str	r3, [sp, #4]
	b	.La6596
.La6538:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La6550
	mov	r0, #0x71
	bl	_PlaySound
	mov	r1, #1
	neg	r1, r1
	str	r1, [sp, #4]
	b	.La6596
.La6550:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La656c
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	neg	r2, r2
	mov	r3, #1
	add	r8, r2
	mov	r9, r3
.La656c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La6582
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #1
	add	r8, r1
	mov	r9, r1
.La6582:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La6590
	b	.La6440
.La6590:
	mov	r2, r8
	lsl	r2, #1
	mov	r10, r2
.La6596:
	ldr	r5, [r6, #0x18]
	mov	r3, r8
	strb	r3, [r6, #0x1d]
	mov	r0, r5
	bl	Func_80a17c4
	mov	r3, #0xd
	strb	r3, [r5, #5]
	mov	r0, #1
	bl	WaitFrames
	mov	r1, r8
	mov	r2, #0x82
	strb	r1, [r6, #0x1d]
	lsl	r2, #2
	add	r2, r10
	ldrh	r3, [r6, r2]
	str	r3, [r6, #8]
	ldr	r1, =0x21b
	ldrh	r2, [r6, r2]
	add	r3, r6, r1
	strb	r2, [r3]
	ldr	r0, [sp, #4]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a63e4

.thumb_func_start Func_80a65e4  @ 0x080a65e4
	push	{lr}
	ldr	r3, =0x3fff
	lsl	r0, #10
	and	r3, r1
	orr	r0, r3
	cmp	r2, #0
	bne	.La65fa
	ldr	r3, =gState
	mov	r2, #0x88
	lsl	r2, #2
	b	.La65fe
.La65fa:
	ldr	r3, =gState
	ldr	r2, =0x222
.La65fe:
	add	r3, r2
	strh	r0, [r3]
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end Func_80a65e4

.thumb_func_start Func_80a6614  @ 0x080a6614
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =gState
	mov	r1, #0x88
	lsl	r1, #2
	add	r3, r2, r1
	ldrh	r3, [r3]
	sub	sp, #0x14
	mov	r5, r0
	cmp	r3, #0
	beq	.La664e
	add	r1, #2
	add	r3, r2, r1
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.La664e
	mov	r3, #8
	ldr	r0, =0xae4
	neg	r3, r3
	mov	r1, r5
	mov	r2, #0
	bl	_Func_801e7c0
	b	.La665c
.La664e:
	mov	r3, #8
	ldr	r0, =0xae0
	neg	r3, r3
	mov	r1, r5
	mov	r2, #0
	bl	_Func_801e7c0
.La665c:
	ldr	r3, =gState
	mov	r2, #0x88
	lsl	r2, #2
	add	r3, r2
	ldrh	r3, [r3]
	ldr	r0, =0x3ff
	and	r0, r3
	ldr	r3, =0x333
	add	r0, r3
	add	r3, sp, #0x10
	mov	r1, #0xc
	mov	r2, #8
	add	r1, sp
	add	r2, sp
	mov	r10, r3
	add	r3, sp, #4
	mov	r9, r1
	mov	r11, r2
	str	r3, [sp]
	mov	r8, r3
	mov	r1, r10
	mov	r3, r11
	mov	r2, r9
	bl	_TextBox
	ldr	r3, [sp, #8]
	mov	r6, #1
	cmp	r3, #0xa
	bhi	.La6698
	mov	r6, #0
.La6698:
	ldr	r3, =gState
	mov	r1, #0x88
	lsl	r1, #2
	add	r7, r3, r1
	ldrh	r2, [r7]
	mov	r3, r2
	cmp	r3, #0
	beq	.La66d6
	ldr	r0, =0x3ff
	mov	r1, #4
	and	r0, r2
	bl	_Func_8019908
	ldr	r0, =0xae7
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	cmp	r6, #0
	bne	.La66e2
	ldrh	r0, [r7]
	lsr	r0, #10
	bl	_GetUnit
	mov	r1, r5
	mov	r2, #0x50
	mov	r3, #0
	bl	_Func_801e8b0
	b	.La66e2
.La66d6:
	ldr	r0, =0xae5
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
.La66e2:
	ldr	r3, =gState
	ldr	r2, =0x222
	add	r3, r2
	ldrh	r3, [r3]
	ldr	r0, =0x3ff
	and	r0, r3
	ldr	r3, =0x333
	add	r0, r3
	mov	r3, r8
	str	r3, [sp]
	mov	r1, r10
	mov	r3, r11
	mov	r2, r9
	bl	_TextBox
	ldr	r3, [sp, #8]
	mov	r6, #1
	cmp	r3, #0xa
	bhi	.La670a
	mov	r6, #0
.La670a:
	ldr	r3, =gState
	ldr	r1, =0x222
	add	r7, r3, r1
	ldrh	r2, [r7]
	mov	r3, r2
	cmp	r3, #0
	beq	.La674c
	ldr	r0, =0x3ff
	mov	r1, #4
	and	r0, r2
	bl	_Func_8019908
	ldr	r0, =0xae8
	mov	r1, r5
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
	cmp	r6, #0
	bne	.La6744
	ldrh	r0, [r7]
	lsr	r0, #10
	bl	_GetUnit
	mov	r1, r5
	mov	r2, #0x50
	mov	r3, #8
	bl	_Func_801e8b0
.La6744:
	mov	r0, #0xf
	bl	_SetTextColor
	b	.La6758
.La674c:
	ldr	r0, =0xae6
	mov	r1, r5
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
.La6758:
	mov	r0, #1
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a6614

.thumb_func_start Func_80a6794  @ 0x080a6794
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r10, r3
	mov	r0, r10
	sub	sp, #8
	bl	Func_80a1814
	mov	r5, #0
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	str	r5, [sp]
	bl	Func_80a1870
	mov	r6, #2
	mov	r1, #5
	mov	r2, #0x1e
	mov	r3, #0xf
	mov	r0, #0
	str	r6, [sp]
	bl	_CreateUIBox
	mov	r3, #0x88
	lsl	r3, #1
	mov	r2, r10
	add	r3, r10
	str	r0, [r2, #0x20]
	strb	r5, [r3]
	ldr	r3, =0x111
	mov	r2, #0x89
	add	r3, r10
	lsl	r2, #1
	strb	r5, [r3]
	add	r2, r10
	mov	r3, #8
	strb	r3, [r2]
	ldr	r3, =0x113
	add	r3, r10
	strb	r6, [r3]
	mov	r1, #0
	mov	r2, #4
	mov	r8, r0
	bl	Func_80a1778
	mov	r3, #0xd
	strb	r3, [r0, #5]
	mov	r3, r10
	str	r0, [r3, #0x44]
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	mov	r3, r8
	str	r5, [sp]
	str	r5, [sp, #4]
	mov	r6, r10
	bl	_Func_801ec6c
	mov	r2, #8
	mov	r9, r2
	add	r6, #0x48
	mov	r7, #0x60
.La6818:
	mov	r3, r9
	str	r3, [sp]
	mov	r1, r5
	mov	r3, r7
	mov	r0, #4
	mov	r2, r8
	bl	_Func_801eb64
	add	r5, #1
	stmia	r6!, {r0}
	add	r7, #0x10
	cmp	r5, #7
	ble	.La6818
	mov	r2, #0x18
	mov	r6, r10
	mov	r5, #8
	mov	r9, r2
	add	r6, #0x68
	mov	r7, #0x60
.La683e:
	mov	r3, r9
	str	r3, [sp]
	mov	r1, r5
	mov	r3, r7
	mov	r0, #4
	mov	r2, r8
	bl	_Func_801eb64
	add	r5, #1
	stmia	r6!, {r0}
	add	r7, #0x10
	cmp	r5, #0xf
	ble	.La683e
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a6794

