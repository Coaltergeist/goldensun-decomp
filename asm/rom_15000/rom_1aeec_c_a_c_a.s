	.include "macros.inc"

	.section .text.after, "ax", %progbits

.thumb_func_start Func_801c49c  @ 0x0801c49c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	mov	r0, #0
	str	r0, [sp, #4]
	mov	r8, r0
	mov	r0, #0xe0
	mov	r1, #1
	lsl	r0, #3
	mov	r11, r1
	bl	Func_8004938
	mov	r1, #0x8c
	mov	r7, r0
	mov	r0, #0
	bl	_GiveInnateMove
	mov	r1, #0x8c
	mov	r0, #1
	bl	_GiveInnateMove
	mov	r1, #0x8c
	mov	r0, #2
	bl	_GiveInnateMove
	mov	r1, #0x8d
	mov	r0, #2
	bl	_GiveInnateMove
	mov	r1, #0x4e
	mov	r0, #2
	bl	_GiveInnateMove
	mov	r1, #0x5d
	mov	r0, #3
	bl	_GiveInnateMove
	mov	r1, #0x8c
	mov	r0, #5
	bl	_GiveInnateMove
	mov	r3, #0
	mov	r0, r7
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x10]
	bl	Func_801c7fc
	mov	r10, r0
	cmp	r0, #0
	bne	.L1c50c
	b	.L1c7b6
.L1c50c:
	add	r0, sp, #0x10
	add	r1, sp, #0xc
	mov	r2, r7
	bl	Func_801c8a0
	mov	r5, #2
	mov	r1, #6
	mov	r2, #0x14
	mov	r3, #7
	mov	r0, #4
	str	r5, [sp]
	bl	CreateUIBox
	mov	r1, #3
	mov	r2, #0x14
	mov	r3, #3
	mov	r6, r0
	mov	r0, #4
	str	r5, [sp]
	bl	CreateUIBox
	mov	r1, #0xe
	str	r0, [sp, #8]
	mov	r2, #0x14
	mov	r3, #5
	mov	r0, #4
	str	r5, [sp]
	bl	CreateUIBox
	mov	r9, r0
	bl	AllocSpriteSlot
	mov	r5, r0
	cmp	r5, #0
	beq	.L1c56e
	ldr	r2, =Data_310a4
	mov	r1, #0x80
	bl	UploadSpriteGFX
	mov	r0, #0
	mov	r1, #0x80
	str	r0, [sp]
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r6
	mov	r3, #0
	bl	Func_801eadc
	str	r0, [sp, #4]
.L1c56e:
	ldr	r5, =0xb19
	ldr	r1, [sp, #8]
	mov	r0, r5
	mov	r2, #0x10
	mov	r3, #0
	bl	Func_801e7c0
.L1c57c:
	mov	r1, r11
	cmp	r1, #0
	bne	.L1c584
	b	.L1c6a8
.L1c584:
	ldr	r0, [sp, #0x10]
	mov	r3, #0
	mov	r1, r10
	add	r0, r10
	mov	r11, r3
	bl	__umodsi3
	str	r0, [sp, #0x10]
	ldr	r0, [sp, #0xc]
	mov	r1, r10
	add	r0, r10
	bl	__umodsi3
	mov	r2, r8
	add	r2, #2
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r3, #1
	lsl	r3, #1
	sub	r2, r3
	ldrh	r3, [r6, #0xe]
	mov	r8, r2
	lsl	r3, #3
	lsl	r2, #4
	str	r0, [sp, #0xc]
	add	r2, r3
	ldr	r0, [sp, #4]
	add	r2, #0x1c
	strh	r2, [r0, #8]
	strb	r2, [r0, #0x14]
	mov	r0, r6
	bl	Func_8016498
	mov	r3, #2
	str	r3, [sp]
	mov	r0, r6
	mov	r1, #1
	mov	r2, #2
	mov	r3, #0x11
	bl	Func_801e41c
	ldr	r0, =0xb1e
	mov	r1, r6
	mov	r2, #0x30
	mov	r3, #0
	bl	Func_801e7c0
	ldr	r3, [sp, #0x10]
	lsl	r3, #2
	add	r3, r7
	ldr	r5, =0x333
	ldrh	r0, [r3, #2]
	mov	r1, r6
	add	r0, r5
	mov	r2, #0x38
	mov	r3, #0x10
	bl	Func_801e7c0
	ldr	r3, [sp, #0xc]
	lsl	r3, #2
	add	r3, r7
	ldrh	r0, [r3, #2]
	mov	r1, r6
	add	r0, r5
	mov	r2, #0x38
	mov	r3, #0x20
	bl	Func_801e7c0
	ldr	r0, =0xb1e
	mov	r1, r6
	sub	r0, #2
	mov	r2, #0x10
	mov	r3, #0x10
	bl	Func_801e7c0
	ldr	r0, =0xb1e
	mov	r1, r6
	sub	r0, #1
	mov	r2, #0x10
	mov	r3, #0x20
	bl	Func_801e7c0
	ldr	r3, [sp, #0x10]
	lsl	r3, #2
	ldrh	r0, [r3, r7]
	ldr	r5, =0x66
	mov	r1, r6
	add	r0, r5
	mov	r2, #0x68
	mov	r3, #0x10
	bl	Func_801e7c0
	ldr	r3, [sp, #0xc]
	lsl	r3, #2
	ldrh	r0, [r3, r7]
	mov	r1, r6
	mov	r2, #0x68
	mov	r3, #0x20
	add	r0, r5
	bl	Func_801e7c0
	mov	r0, r9
	bl	Func_8016498
	mov	r1, r9
	ldr	r0, =0xaec
	mov	r2, #0
	mov	r3, #0x10
	bl	Func_801e7c0
	mov	r1, r8
	cmp	r1, #0
	beq	.L1c676
	ldr	r3, [sp, #0xc]
	lsl	r3, #2
	add	r3, r7
	ldrh	r0, [r3, #2]
	bl	_GetMoveInfo
	ldr	r3, [sp, #0xc]
	b	.L1c684
.L1c676:
	ldr	r3, [sp, #0x10]
	lsl	r3, #2
	add	r3, r7
	ldrh	r0, [r3, #2]
	bl	_GetMoveInfo
	ldr	r3, [sp, #0x10]
.L1c684:
	lsl	r3, #2
	add	r3, r7
	ldrb	r0, [r0, #9]
	ldrh	r5, [r3, #2]
	mov	r3, #0x10
	str	r3, [sp]
	mov	r1, #2
	mov	r2, r9
	mov	r3, #0x40
	bl	Func_801e9d4
	ldr	r0, =0x53a
	mov	r1, r9
	add	r0, r5, r0
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e7c0
.L1c6a8:
	mov	r0, #1
	bl	WaitFrames
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L1c6da
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, r8
	cmp	r3, #0
	beq	.L1c6ce
	ldr	r3, [sp, #0xc]
	sub	r3, #1
	str	r3, [sp, #0xc]
	b	.L1c6d4
.L1c6ce:
	ldr	r3, [sp, #0x10]
	sub	r3, #1
	str	r3, [sp, #0x10]
.L1c6d4:
	mov	r0, #1
	ldr	r5, =gKeyRepeat
	mov	r11, r0
.L1c6da:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L1c704
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, r8
	cmp	r1, #0
	beq	.L1c6f8
	ldr	r3, [sp, #0xc]
	add	r3, #1
	str	r3, [sp, #0xc]
	b	.L1c6fe
.L1c6f8:
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
.L1c6fe:
	mov	r3, #1
	ldr	r5, =gKeyRepeat
	mov	r11, r3
.L1c704:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L1c71e
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, #1
	neg	r0, r0
	mov	r1, #1
	add	r8, r0
	mov	r11, r1
.L1c71e:
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L1c734
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, #1
	add	r8, r3
	mov	r11, r3
.L1c734:
	ldr	r1, =gKeyPress
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1c748
	mov	r0, #0x70
	bl	_PlaySound
	b	.L1c76c
.L1c748:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1c75a
	mov	r0, #0x71
	bl	_PlaySound
	b	.L1c76c
.L1c75a:
	ldr	r3, [r1]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L1c766
	b	.L1c57c
.L1c766:
	mov	r0, #0x71
	bl	_PlaySound
.L1c76c:
	ldr	r3, [sp, #0x10]
	lsl	r3, #2
	add	r3, r7
	ldrh	r2, [r3]
	ldr	r1, =gState
	ldrh	r3, [r3, #2]
	mov	r0, #0x88
	lsl	r0, #2
	lsl	r2, #10
	orr	r2, r3
	add	r3, r1, r0
	strh	r2, [r3]
	ldr	r3, [sp, #0xc]
	lsl	r3, #2
	add	r3, r7
	ldrh	r2, [r3]
	ldrh	r3, [r3, #2]
	lsl	r2, #10
	orr	r2, r3
	ldr	r3, =0x222
	add	r1, r3
	strh	r2, [r1]
	mov	r0, r6
	mov	r1, #1
	bl	CloseUIBox
	mov	r1, #1
	ldr	r0, [sp, #8]
	bl	CloseUIBox
	mov	r0, r9
	mov	r1, #1
	bl	CloseUIBox
	mov	r0, #1
	bl	WaitFrames
.L1c7b6:
	mov	r0, r7
	bl	free
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801c49c

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
