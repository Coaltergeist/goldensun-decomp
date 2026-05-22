	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_20198
	push	{r5, r6, r7, lr}
	mov	r5, r0
	sub	sp, #0x14
	mov	r7, r1
	cmp	r5, #0
	beq	.L2022c
	bl	Func_16478
	mov	r3, #4
	str	r3, [sp]
	mov	r0, r5
	mov	r1, #0
	mov	r2, #4
	mov	r3, #0xd
	bl	Func_1e41c
	mov	r0, r7
	add	r0, #0x10
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e8b0
	ldr	r0, =.L371e0
	mov	r1, r5
	mov	r2, #0x48
	mov	r3, #0
	bl	Func_1e940
	mov	r6, #0
	ldrb	r0, [r7, #0x1c]
	mov	r1, #2
	mov	r2, r5
	mov	r3, #0x50
	str	r6, [sp]
	bl	Func_1e9d4
	ldr	r3, =0x741
	ldrb	r0, [r7, #0x1d]
	mov	r1, r5
	add	r0, r3
	mov	r2, #0
	mov	r3, #0x10
	bl	Func_1e7c0
	mov	r2, #0
	mov	r3, #0x20
	ldr	r0, =9
	mov	r1, r5
	bl	Func_1e7c0
	ldr	r0, [r7, #0x20]
	add	r1, sp, #4
	bl	Func_1f680
	mov	r1, r5
	mov	r2, #0x30
	mov	r3, #0x28
	bl	Func_1e940
	mov	r6, #0x30
	ldr	r0, [r7, #0x24]
	mov	r1, #6
	mov	r2, r5
	mov	r3, #0
	str	r6, [sp]
	bl	Func_1ea08
	ldr	r0, =0xc88
	mov	r1, r5
	mov	r2, #0x30
	mov	r3, #0x30
	bl	Func_1e7c0
.L2022c:
	add	sp, #0x14
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_20198

.thumb_func_start Func_20244
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
	bl	Func_48b0
	ldr	r3, =iwram_1f1c
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
	bl	_Func_77cb8
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
	bl	_Func_f9080
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
	bl	Func_1fd84
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #2
	mov	r2, #0x1c
	mov	r3, #7
	mov	r0, #1
	bl	Func_162d4
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
	bl	Func_1e74c
	b	.L2044e
.L20426:
	ldr	r0, [sp, #0x14]
	mov	r1, r10
	add	r0, #0x10
	mov	r2, #0xc
	mov	r3, r11
	bl	Func_1e858
	ldr	r3, =0x99b
	ldrh	r0, [r5, #2]
	mov	r1, r10
	add	r0, r3
	mov	r2, #0x3e
	mov	r3, r11
	bl	Func_1e74c
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
	bl	Func_1e41c
	mov	r3, #4
	str	r3, [sp]
	mov	r0, r10
	mov	r1, #0
	mov	r2, #4
	mov	r3, #0x1b
	bl	Func_1e41c
	mov	r3, #0x18
	mov	r1, r10
	neg	r3, r3
	mov	r0, r9
	mov	r2, #0x48
	bl	Func_21620
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
	bl	Func_1ccc0
	ldr	r2, [sp, #0x20]
	cmp	r2, #0
	bne	.L204d6
	mov	r3, r11
	str	r3, [sp]
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0xe
	mov	r3, #9
	bl	Func_162d4
	str	r0, [sp, #0x20]
.L204d6:
	mov	r1, #0x82
	add	r3, r7, r5
	lsl	r1, #5
	add	r6, r3, r1
	ldr	r0, [sp, #0x20]
	mov	r1, r6
	bl	Func_20198
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [sp, #0x1c]
	cmp	r2, #0
	bne	.L20504
	mov	r3, r11
	str	r3, [sp]
	mov	r0, #0x10
	mov	r1, #0xa
	mov	r2, #0xd
	mov	r3, #3
	bl	Func_162d4
	str	r0, [sp, #0x1c]
.L20504:
	bl	Func_1ff14
	mov	r1, #0
	ldr	r0, [sp, #0x1c]
	mov	r2, #0
	mov	r3, r6
	bl	Func_1fe2c
	mov	r0, #1
	bl	Func_30f8
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
	bl	Func_162d4
	str	r0, [sp, #0x18]
.L20552:
	ldr	r0, [sp, #0x18]
	mov	r1, r6
	bl	Func_20150
	bl	Func_20088
	mov	r1, #0
	ldr	r0, [sp, #0x18]
	mov	r2, #0
	bl	Func_1ffd8
	b	.L205e6
.L2056a:
	bl	Func_20088
	mov	r1, #2
	ldr	r0, [sp, #0x18]
	bl	Func_16418
	mov	r1, #0
	str	r1, [sp, #0x18]
	b	.L205e6

	.pool_aligned

.L205ac:
	ldr	r2, =ewram_240
	ldr	r1, =0x205
	add	r3, r2, r1
	ldrb	r0, [r3]
	ldr	r3, =0x206
	add	r2, r3
	ldrb	r1, [r2]
	bl	Func_1ccc0
	bl	Func_20088
	bl	Func_1ff14
	mov	r1, #2
	ldr	r0, [sp, #0x18]
	bl	Func_16418
	mov	r1, #2
	ldr	r0, [sp, #0x1c]
	bl	Func_16418
	mov	r1, #2
	ldr	r0, [sp, #0x20]
	bl	Func_16418
	mov	r1, #0
	str	r1, [sp, #0x18]
	str	r1, [sp, #0x1c]
	str	r1, [sp, #0x20]
.L205e6:
	mov	r0, r10
	bl	Func_16498
	mov	r2, r11
	str	r2, [sp]
	mov	r0, r10
	mov	r1, #0
	mov	r2, #2
	mov	r3, #0x1b
	bl	Func_1e41c
	mov	r3, #4
	str	r3, [sp]
	mov	r0, r10
	mov	r1, #0
	mov	r2, #4
	mov	r3, #0x1b
	bl	Func_1e41c
	mov	r3, r8
	lsl	r2, r3, #1
	mov	r3, #1
	str	r3, [sp]
	mov	r0, r10
	mov	r1, #0
	mov	r3, #0x1a
	bl	Func_1fda8
.L2061e:
	ldr	r0, [sp, #0x10]
	bl	Func_216b4
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =iwram_1b04
	ldr	r2, [r1]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L206aa
	mov	r0, #0x6f
	bl	_Func_f9080
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
	bl	Func_b1c_from_thumb
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
	bl	_Func_f9080
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
	bl	Func_b1c_from_thumb
	mov	r2, r9
	mov	r8, r0
	cmp	r2, #0
	bne	.L206c0
	b	.L20494
.L20728:
	ldr	r2, =iwram_1c94
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
	bl	_Func_f9080
	mov	r5, r8
.L2074a:
	bl	Func_20088
	bl	Func_1ff14
	mov	r1, #2
	ldr	r0, [sp, #0x18]
	bl	Func_16418
	mov	r1, #2
	ldr	r0, [sp, #0x1c]
	bl	Func_16418
	mov	r1, #2
	ldr	r0, [sp, #0x20]
	bl	Func_16418
	mov	r1, #2
	mov	r0, r10
	bl	Func_16418
	bl	Func_1fd98
	mov	r0, #0x37
	bl	Func_2dd8
	ldr	r3, =ewram_240
	ldr	r1, =0x205
	add	r2, r3, r1
	ldrb	r0, [r2]
	ldr	r2, =0x206
	add	r3, r2
	ldrb	r1, [r3]
	bl	Func_1ccc0
	mov	r0, #1
	bl	Func_30f8
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
.func_end Func_20244

.thumb_func_start Func_207c4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	mov	r8, r2
	bl	Func_56cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L207e8
	ldr	r0, =0xa
	mov	r1, #1
	bl	Func_1776c
	mov	r3, #9
	neg	r3, r3
	mov	r8, r3
	b	.L208ae
.L207e8:
	bl	Func_5c68
	ldr	r3, =iwram_1f1c
	ldr	r5, [r3]
	ldr	r3, =ewram_2004
	mov	r1, #0
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	Func_20244
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
	ldr	r0, =0x14
	mov	r1, #0xd
	bl	Func_1776c
	b	.L20826
.L20820:
	mov	r0, #1
	bl	Func_30f8
.L20826:
	bl	Func_17364
	cmp	r0, #0
	beq	.L20820
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	mov	r3, #1
	bl	Func_28df4
	cmp	r0, #0
	beq	.L20844
	bl	Func_19a54
	b	.L208ae
.L20844:
	bl	Func_19a54
.L20848:
	ldr	r3, =ewram_2004
	mov	r0, #0x55
	strh	r7, [r3]
	bl	_Func_f9080
	ldr	r0, =0x1a
	mov	r1, #0xd
	bl	Func_1776c
	b	.L20862
.L2085c:
	mov	r0, #1
	bl	Func_30f8
.L20862:
	bl	Func_17364
	cmp	r0, #0
	beq	.L2085c
	bl	Func_1f818
	bl	_Func_8ba38
	ldr	r5, =ewram_0
	mov	r0, r7
	mov	r1, r5
	bl	Func_5920
	mov	r3, #0x80
	lsl	r3, #5
	add	r5, r3
	mov	r6, r0
	mov	r1, r5
	add	r0, r7, #3
	bl	Func_5920
	orr	r6, r0
	bl	Func_19a54
	cmp	r6, #0
	beq	.L208a6
	ldr	r0, =0xb
	mov	r1, #1
	bl	Func_1776c
	mov	r2, #3
	neg	r2, r2
	mov	r8, r2
	b	.L208ae
.L208a6:
	ldr	r0, =0x17
	mov	r1, #9
	bl	Func_1776c
.L208ae:
	bl	Func_5cf8
	mov	r0, r8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_207c4

.thumb_func_start Func_208e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0
	mov	r5, r0
	mov	r8, r1
	bl	Func_56cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L2090c
	ldr	r0, =0xa
	mov	r1, #1
	bl	Func_1776c
	mov	r2, #9
	neg	r2, r2
	mov	r8, r2
	b	.L20978
.L2090c:
	bl	Func_5c68
	ldr	r3, =ewram_2004
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, r5
	mov	r10, r3
	bl	Func_20244
	mov	r2, #1
	mov	r7, r0
	neg	r2, r2
	cmp	r7, r2
	bne	.L2092c
	mov	r8, r7
	b	.L20978
.L2092c:
	ldr	r5, =ewram_0
	mov	r0, r7
	mov	r1, r5
	bl	Func_5a78
	mov	r3, #0x80
	lsl	r3, #5
	add	r5, r3
	mov	r6, r0
	mov	r1, r5
	add	r0, r7, #3
	bl	Func_5a78
	orr	r6, r0
	cmp	r6, #0
	beq	.L2095c
	mov	r1, #1
	ldr	r0, =0xc
	bl	Func_1776c
	mov	r1, #2
	neg	r1, r1
	mov	r8, r1
	b	.L20978
.L2095c:
	ldr	r3, =ewram_240
	ldr	r1, =iwram_1c9c
	ldr	r2, [r3, #4]
	str	r2, [r1]
	ldr	r1, =0x22a
	add	r3, r1
	ldrb	r3, [r3]
	ldr	r2, =iwram_1d08
	strb	r3, [r2]
	ldr	r3, =iwram_1d24
	mov	r2, r8
	strh	r2, [r3]
	mov	r3, r10
	strh	r7, [r3]
.L20978:
	bl	Func_5cf8
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_208e4

.thumb_func_start Func_209b0
	push	{r5, lr}
	bl	Func_4080
	ldr	r2, =Data_310a4
	mov	r1, #0x80
	mov	r5, r0
	bl	Func_3fa4
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_209b0

