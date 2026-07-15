	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_20198, "ax", %progbits

.thumb_func_start Func_8020244  @ 0x08020244
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r9, r1
	mov	r1, #0xa7
	mov	r8, r0
	lsl	r1, #4
	mov	r0, #0x37
	sub	sp, #0x28
	bl	galloc_iwram
	ldr	r3, =iwram_3001f1c
	mov	r1, #0
	mov	r2, #1
	ldr	r7, [r3]
	str	r1, [sp, #0x20]
	str	r1, [sp, #0x1c]
	str	r1, [sp, #0x18]
	str	r2, [sp, #0xc]
	sub	r3, #0x90
	ldr	r3, [r3]
	mov	r5, r0
	str	r3, [sp, #8]
	bl	_Func_8077cb8
	mov	r3, r8
	str	r0, [sp, #4]
	cmp	r3, #0
	bge	.L2028a
	mov	r1, #0
	mov	r8, r1
.L2028a:
	mov	r2, r9
	cmp	r2, #1
	bne	.L202d2
	mov	r3, r8
	ldr	r1, =0x105c
	lsl	r2, r3, #6
	add	r3, r2, r1
	ldrb	r3, [r7, r3]
	mov	r6, #0
	b	.L202bc
.L2029e:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #3
	bne	.L202ac
	mov	r1, #0
	mov	r8, r1
.L202ac:
	add	r6, #1
	cmp	r6, #2
	bgt	.L2039a
	mov	r3, r8
	ldr	r1, =0x105c
	lsl	r2, r3, #6
	add	r3, r2, r1
	ldrb	r3, [r7, r3]
.L202bc:
	cmp	r3, #0
	beq	.L2029e
	add	r1, #0x14
	add	r3, r2, r1
	add	r3, r7, r3
	ldrb	r3, [r3, #1]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L2029e
	b	.L2039a
.L202d2:
	mov	r2, r9
	cmp	r2, #4
	bne	.L2031a
	mov	r3, r8
	ldr	r1, =0x105c
	lsl	r2, r3, #6
	add	r3, r2, r1
	ldrb	r3, [r7, r3]
	mov	r6, #0
	b	.L20304
.L202e6:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #3
	bne	.L202f4
	mov	r1, #0
	mov	r8, r1
.L202f4:
	add	r6, #1
	cmp	r6, #2
	bgt	.L2039a
	mov	r3, r8
	ldr	r1, =0x105c
	lsl	r2, r3, #6
	add	r3, r2, r1
	ldrb	r3, [r7, r3]
.L20304:
	cmp	r3, #0
	beq	.L202e6
	add	r1, #0x14
	add	r3, r2, r1
	add	r3, r7, r3
	ldrb	r3, [r3, #2]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L202e6
	b	.L2039a
.L2031a:
	mov	r2, r9
	cmp	r2, #5
	bne	.L20362
	mov	r3, r8
	ldr	r1, =0x105c
	lsl	r2, r3, #6
	add	r3, r2, r1
	ldrb	r3, [r7, r3]
	mov	r6, #0
	b	.L2034c
.L2032e:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #3
	bne	.L2033c
	mov	r1, #0
	mov	r8, r1
.L2033c:
	add	r6, #1
	cmp	r6, #2
	bgt	.L2039a
	mov	r3, r8
	ldr	r1, =0x105c
	lsl	r2, r3, #6
	add	r3, r2, r1
	ldrb	r3, [r7, r3]
.L2034c:
	cmp	r3, #0
	beq	.L2032e
	add	r1, #0x14
	add	r3, r2, r1
	add	r3, r7, r3
	ldrb	r3, [r3, #1]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L2032e
	b	.L2039a
.L20362:
	mov	r2, r9
	cmp	r2, #0
	beq	.L203b0
	mov	r3, r8
	ldr	r1, =0x105c
	lsl	r2, r3, #6
	add	r3, r2, r1
	ldrb	r3, [r7, r3]
	mov	r6, #0
	cmp	r3, #0
	bne	.L2039a
	add	r3, r2, r7
	add	r2, r3, r1
.L2037c:
	mov	r3, #1
	add	r8, r3
	mov	r3, r8
	add	r2, #0x40
	cmp	r3, #3
	bne	.L2038e
	mov	r3, #0
	add	r2, r7, r1
	mov	r8, r3
.L2038e:
	add	r6, #1
	cmp	r6, #2
	bgt	.L2039a
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L2037c
.L2039a:
	cmp	r6, #3
	bne	.L203b0
	mov	r5, #2
	neg	r5, r5
	b	.L20794
.L203a4:
	mov	r0, #0x71
	mov	r5, #1
	bl	_PlaySound
	neg	r5, r5
	b	.L2074a
.L203b0:
	add	r0, sp, #0x24
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8500029c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	Func_801fd84
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #2
	mov	r2, #0x1c
	mov	r3, #7
	mov	r0, #1
	bl	CreateUIBox
	mov	r1, #0x82
	lsl	r1, #5
	add	r1, r7, r1
	ldr	r3, =0x105c
	mov	r2, #0
	str	r1, [sp, #0x14]
	mov	r10, r0
	mov	r11, r2
	mov	r6, #2
	add	r5, r7, r3
.L203e8:
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L203f2
	ldr	r0, =0
	b	.L2041a
.L203f2:
	ldrh	r3, [r5, #0x1a]
	ldr	r1, [sp, #4]
	cmp	r3, r1
	bcs	.L203fe
	ldr	r0, =1
	b	.L2041a
.L203fe:
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #0x1c]
	cmp	r2, r3
	beq	.L2040a
	ldr	r0, =3
	b	.L2041a
.L2040a:
	mov	r2, r9
	cmp	r2, #5
	bne	.L20426
	mov	r3, #0x15
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	bne	.L20426
	ldr	r0, =2
.L2041a:
	mov	r1, r10
	mov	r2, #0xa
	mov	r3, r11
	bl	DrawSmallText
	b	.L2044e
.L20426:
	ldr	r0, [sp, #0x14]
	mov	r1, r10
	add	r0, #0x10
	mov	r2, #0xc
	mov	r3, r11
	bl	Func_801e858
	ldr	r3, =0x99b
	ldrh	r0, [r5, #2]
	mov	r1, r10
	add	r0, r3
	mov	r2, #0x3e
	mov	r3, r11
	bl	DrawSmallText
	ldr	r1, =0xea3
	ldr	r3, [sp, #8]
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
.L2044e:
	ldr	r3, [sp, #0x14]
	mov	r2, #0x10
	add	r3, #0x40
	sub	r6, #1
	add	r11, r2
	add	r5, #0x40
	str	r3, [sp, #0x14]
	cmp	r6, #0
	bge	.L203e8
	mov	r3, #2
	str	r3, [sp]
	mov	r0, r10
	mov	r1, #0
	mov	r2, #2
	mov	r3, #0x1b
	bl	Func_801e41c
	mov	r3, #4
	str	r3, [sp]
	mov	r0, r10
	mov	r1, #0
	mov	r2, #4
	mov	r3, #0x1b
	bl	Func_801e41c
	mov	r3, #0x18
	mov	r1, r10
	neg	r3, r3
	mov	r0, r9
	mov	r2, #0x48
	bl	Func_8021620
	mov	r1, #2
	str	r0, [sp, #0x10]
	mov	r11, r1
.L20494:
	ldr	r2, [sp, #0xc]
	cmp	r2, #0
	bne	.L2049c
	b	.L2061e
.L2049c:
	mov	r3, #0
	mov	r1, r8
	ldr	r2, =0x105c
	str	r3, [sp, #0xc]
	lsl	r5, r1, #6
	add	r3, r5, r2
	ldrb	r3, [r7, r3]
	cmp	r3, #0
	bne	.L204b0
	b	.L205ac
.L204b0:
	ldr	r1, =0x1074
	add	r3, r5, r1
	ldrb	r0, [r7, r3]
	add	r3, r7, r3
	ldrb	r1, [r3, #1]
	bl	SetUIColor
	ldr	r2, [sp, #0x20]
	cmp	r2, #0
	bne	.L204d6
	mov	r3, r11
	str	r3, [sp]
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0xe
	mov	r3, #9
	bl	CreateUIBox
	str	r0, [sp, #0x20]
.L204d6:
	mov	r1, #0x82
	add	r3, r7, r5
	lsl	r1, #5
	add	r6, r3, r1
	ldr	r0, [sp, #0x20]
	mov	r1, r6
	bl	Func_8020198
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, [sp, #0x1c]
	cmp	r2, #0
	bne	.L20504
	mov	r3, r11
	str	r3, [sp]
	mov	r0, #0x10
	mov	r1, #0xa
	mov	r2, #0xd
	mov	r3, #3
	bl	CreateUIBox
	str	r0, [sp, #0x1c]
.L20504:
	bl	Func_801ff14
	mov	r1, #0
	ldr	r0, [sp, #0x1c]
	mov	r2, #0
	mov	r3, r6
	bl	Func_801fe2c
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =0x1068
	add	r3, r5, r1
	add	r1, #1
	ldrsb	r2, [r7, r3]
	add	r3, r5, r1
	ldrsb	r3, [r7, r3]
	add	r1, #1
	add	r2, r3
	add	r3, r5, r1
	ldrsb	r3, [r7, r3]
	add	r1, #1
	add	r2, r3
	add	r3, r5, r1
	ldrsb	r3, [r7, r3]
	cmn	r2, r3
	beq	.L2056a
	ldr	r2, [sp, #0x18]
	cmp	r2, #0
	bne	.L20552
	mov	r3, r11
	str	r3, [sp]
	mov	r0, #0x10
	mov	r1, #0xe
	mov	r2, #0xd
	mov	r3, #5
	bl	CreateUIBox
	str	r0, [sp, #0x18]
.L20552:
	ldr	r0, [sp, #0x18]
	mov	r1, r6
	bl	Func_8020150
	bl	Func_8020088
	mov	r1, #0
	ldr	r0, [sp, #0x18]
	mov	r2, #0
	bl	Func_801ffd8
	b	.L205e6
.L2056a:
	bl	Func_8020088
	mov	r1, #2
	ldr	r0, [sp, #0x18]
	bl	CloseUIBox
	mov	r1, #0
	str	r1, [sp, #0x18]
	b	.L205e6

	.pool_aligned

.L205ac:
	ldr	r2, =gState
	ldr	r1, =0x205
	add	r3, r2, r1
	ldrb	r0, [r3]
	ldr	r3, =0x206
	add	r2, r3
	ldrb	r1, [r2]
	bl	SetUIColor
	bl	Func_8020088
	bl	Func_801ff14
	mov	r1, #2
	ldr	r0, [sp, #0x18]
	bl	CloseUIBox
	mov	r1, #2
	ldr	r0, [sp, #0x1c]
	bl	CloseUIBox
	mov	r1, #2
	ldr	r0, [sp, #0x20]
	bl	CloseUIBox
	mov	r1, #0
	str	r1, [sp, #0x18]
	str	r1, [sp, #0x1c]
	str	r1, [sp, #0x20]
.L205e6:
	mov	r0, r10
	bl	Func_8016498
	mov	r2, r11
	str	r2, [sp]
	mov	r0, r10
	mov	r1, #0
	mov	r2, #2
	mov	r3, #0x1b
	bl	Func_801e41c
	mov	r3, #4
	str	r3, [sp]
	mov	r0, r10
	mov	r1, #0
	mov	r2, #4
	mov	r3, #0x1b
	bl	Func_801e41c
	mov	r3, r8
	lsl	r2, r3, #1
	mov	r3, #1
	str	r3, [sp]
	mov	r0, r10
	mov	r1, #0
	mov	r3, #0x1a
	bl	Func_801fda8
.L2061e:
	ldr	r0, [sp, #0x10]
	bl	Func_80216b4
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gKeyRepeat
	ldr	r2, [r1]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L206aa
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #1
	str	r1, [sp, #0xc]
	b	.L20696
.L20642:
	mov	r3, r8
	ldr	r1, =0x105c
	lsl	r2, r3, #6
	add	r3, r2, r1
	ldrb	r3, [r7, r3]
	cmp	r3, #0
	beq	.L20696
	mov	r3, r9
	cmp	r3, #1
	bne	.L20666
	add	r1, #0x14
	add	r3, r2, r1
	add	r3, r7, r3
	ldrb	r3, [r3, #1]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L20696
.L20666:
	mov	r3, r9
	cmp	r3, #4
	bne	.L2067c
	ldr	r1, =0x1070
	add	r3, r2, r1
	add	r3, r7, r3
	ldrb	r3, [r3, #2]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L20696
.L2067c:
	mov	r3, r9
	cmp	r3, #5
	beq	.L20684
	b	.L20494
.L20684:
	ldr	r1, =0x1070
	add	r3, r2, r1
	add	r3, r7, r3
	ldrb	r3, [r3, #1]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L20696
	b	.L20494
.L20696:
	mov	r0, r8
	add	r0, #2
	mov	r1, #3
	bl	__modsi3
	mov	r2, r9
	mov	r8, r0
	cmp	r2, #0
	bne	.L20642
	b	.L20494
.L206aa:
	ldr	r2, [r1]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.L20728
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, #1
	str	r3, [sp, #0xc]
	b	.L20714
.L206c0:
	mov	r1, r8
	lsl	r2, r1, #6
	ldr	r1, =0x105c
	add	r3, r2, r1
	ldrb	r3, [r7, r3]
	cmp	r3, #0
	beq	.L20714
	mov	r3, r9
	cmp	r3, #1
	bne	.L206e4
	add	r1, #0x14
	add	r3, r2, r1
	add	r3, r7, r3
	ldrb	r3, [r3, #1]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L20714
.L206e4:
	mov	r3, r9
	cmp	r3, #4
	bne	.L206fa
	ldr	r1, =0x1070
	add	r3, r2, r1
	add	r3, r7, r3
	ldrb	r3, [r3, #2]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L20714
.L206fa:
	mov	r3, r9
	cmp	r3, #5
	beq	.L20702
	b	.L20494
.L20702:
	ldr	r1, =0x1070
	add	r3, r2, r1
	add	r3, r7, r3
	ldrb	r3, [r3, #1]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L20714
	b	.L20494
.L20714:
	mov	r0, r8
	add	r0, #4
	mov	r1, #3
	bl	__modsi3
	mov	r2, r9
	mov	r8, r0
	cmp	r2, #0
	bne	.L206c0
	b	.L20494
.L20728:
	ldr	r2, =gKeyPress
	ldr	r3, [r2]
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	beq	.L20736
	b	.L203a4
.L20736:
	ldr	r3, [r2]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L20742
	b	.L20494
.L20742:
	mov	r0, #0x70
	bl	_PlaySound
	mov	r5, r8
.L2074a:
	bl	Func_8020088
	bl	Func_801ff14
	mov	r1, #2
	ldr	r0, [sp, #0x18]
	bl	CloseUIBox
	mov	r1, #2
	ldr	r0, [sp, #0x1c]
	bl	CloseUIBox
	mov	r1, #2
	ldr	r0, [sp, #0x20]
	bl	CloseUIBox
	mov	r1, #2
	mov	r0, r10
	bl	CloseUIBox
	bl	Func_801fd98
	mov	r0, #0x37
	bl	gfree
	ldr	r3, =gState
	ldr	r1, =0x205
	add	r2, r3, r1
	ldrb	r0, [r2]
	ldr	r2, =0x206
	add	r3, r2
	ldrb	r1, [r3]
	bl	SetUIColor
	mov	r0, #1
	bl	WaitFrames
.L20794:
	mov	r0, r5
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8020244

.thumb_func_start Menu_Save  @ 0x080207c4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	mov	r8, r2
	bl	Func_80056cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L207e8
	ldr	r0, =_MSG_0a
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #9
	neg	r3, r3
	mov	r8, r3
	b	.L208ae
.L207e8:
	bl	Func_8005c68
	ldr	r3, =iwram_3001f1c
	ldr	r5, [r3]
	ldr	r3, =ewram_2002004
	mov	r1, #0
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	Func_8020244
	mov	r3, #1
	mov	r7, r0
	neg	r3, r3
	cmp	r7, r3
	bne	.L2080a
	mov	r8, r7
	b	.L208ae
.L2080a:
	ldr	r2, =0x105c
	lsl	r3, r7, #6
	add	r3, r2
	ldrb	r3, [r5, r3]
	cmp	r3, #0
	beq	.L20848
	ldr	r0, =_MSG_14
	mov	r1, #0xd
	bl	Func_801776c
	b	.L20826
.L20820:
	mov	r0, #1
	bl	WaitFrames
.L20826:
	bl	Func_8017364
	cmp	r0, #0
	beq	.L20820
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	mov	r3, #1
	bl	YesNoMenu
	cmp	r0, #0
	beq	.L20844
	bl	Func_8019a54
	b	.L208ae
.L20844:
	bl	Func_8019a54
.L20848:
	ldr	r3, =ewram_2002004
	mov	r0, #0x55
	strh	r7, [r3]
	bl	_PlaySound
	ldr	r0, =_MSG_1a
	mov	r1, #0xd
	bl	Func_801776c
	b	.L20862
.L2085c:
	mov	r0, #1
	bl	WaitFrames
.L20862:
	bl	Func_8017364
	cmp	r0, #0
	beq	.L2085c
	bl	PrepareSaveHeader
	bl	_Func_808ba38
	ldr	r5, =ewram_2000000
	mov	r0, r7
	mov	r1, r5
	bl	SomethingSaveHeader
	mov	r3, #0x80
	lsl	r3, #5
	add	r5, r3
	mov	r6, r0
	mov	r1, r5
	add	r0, r7, #3
	bl	SomethingSaveHeader
	orr	r6, r0
	bl	Func_8019a54
	cmp	r6, #0
	beq	.L208a6
	ldr	r0, =_MSG_0b
	mov	r1, #1
	bl	Func_801776c
	mov	r2, #3
	neg	r2, r2
	mov	r8, r2
	b	.L208ae
.L208a6:
	ldr	r0, =_MSG_17
	mov	r1, #9
	bl	Func_801776c
.L208ae:
	bl	Func_8005cf8
	mov	r0, r8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Menu_Save

