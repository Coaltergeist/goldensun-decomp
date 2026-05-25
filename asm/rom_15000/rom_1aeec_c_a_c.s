	.include "macros.inc"

.thumb_func_start Func_801c46c
	push	{lr}
	ldr	r2, =0x205
	ldr	r1, =ewram_2000240
	add	r3, r1, r2
	ldrb	r2, [r3]
	mov	r3, #0x20
	and	r0, r3
	cmp	r0, #0
	beq	.L1c484
	mov	r3, r2
	add	r3, #0xff
	b	.L1c486
.L1c484:
	add	r3, r2, #1
.L1c486:
	lsl	r3, #24
	lsr	r2, r3, #24
	ldr	r0, =0x205
	add	r3, r1, r0
	strb	r2, [r3]
	pop	{r0}
	bx	r0
.func_end Func_801c46c

.thumb_func_start Func_801c49c
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
	bl	_Func_8078e28
	mov	r1, #0x8c
	mov	r0, #1
	bl	_Func_8078e28
	mov	r1, #0x8c
	mov	r0, #2
	bl	_Func_8078e28
	mov	r1, #0x8d
	mov	r0, #2
	bl	_Func_8078e28
	mov	r1, #0x4e
	mov	r0, #2
	bl	_Func_8078e28
	mov	r1, #0x5d
	mov	r0, #3
	bl	_Func_8078e28
	mov	r1, #0x8c
	mov	r0, #5
	bl	_Func_8078e28
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
	bl	Func_80162d4
	mov	r1, #3
	mov	r2, #0x14
	mov	r3, #3
	mov	r6, r0
	mov	r0, #4
	str	r5, [sp]
	bl	Func_80162d4
	mov	r1, #0xe
	str	r0, [sp, #8]
	mov	r2, #0x14
	mov	r3, #5
	mov	r0, #4
	str	r5, [sp]
	bl	Func_80162d4
	mov	r9, r0
	bl	Func_8004080
	mov	r5, r0
	cmp	r5, #0
	beq	.L1c56e
	ldr	r2, =Data_310a4
	mov	r1, #0x80
	bl	Func_8003fa4
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
	bl	Func_b50_from_thumb
	str	r0, [sp, #0x10]
	ldr	r0, [sp, #0xc]
	mov	r1, r10
	add	r0, r10
	bl	Func_b50_from_thumb
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
	bl	_Func_8078b9c
	ldr	r3, [sp, #0xc]
	b	.L1c684
.L1c676:
	ldr	r3, [sp, #0x10]
	lsl	r3, #2
	add	r3, r7
	ldrh	r0, [r3, #2]
	bl	_Func_8078b9c
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
	bl	Func_80030f8
	ldr	r5, =iwram_3001b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L1c6da
	mov	r0, #0x6f
	bl	_Func_80f9080
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
	ldr	r5, =iwram_3001b04
	mov	r11, r0
.L1c6da:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L1c704
	mov	r0, #0x6f
	bl	_Func_80f9080
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
	ldr	r5, =iwram_3001b04
	mov	r11, r3
.L1c704:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L1c71e
	mov	r0, #0x6f
	bl	_Func_80f9080
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
	bl	_Func_80f9080
	mov	r3, #1
	add	r8, r3
	mov	r11, r3
.L1c734:
	ldr	r1, =iwram_3001c94
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1c748
	mov	r0, #0x70
	bl	_Func_80f9080
	b	.L1c76c
.L1c748:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1c75a
	mov	r0, #0x71
	bl	_Func_80f9080
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
	bl	_Func_80f9080
.L1c76c:
	ldr	r3, [sp, #0x10]
	lsl	r3, #2
	add	r3, r7
	ldrh	r2, [r3]
	ldr	r1, =ewram_2000240
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
	bl	Func_8016418
	mov	r1, #1
	ldr	r0, [sp, #8]
	bl	Func_8016418
	mov	r0, r9
	mov	r1, #1
	bl	Func_8016418
	mov	r0, #1
	bl	Func_80030f8
.L1c7b6:
	mov	r0, r7
	bl	Func_8002df0
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

.thumb_func_start Func_801c7fc
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
	bl	_Func_8077394
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
	bl	_Func_8078b9c
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

.thumb_func_start Func_801c8a0
	push	{r5, r6, r7, lr}
	mov	r3, #0
	mov	r6, r0
	str	r3, [r6]
	mov	r7, r2
	str	r3, [r1]
	mov	r2, #0x88
	ldr	r3, =ewram_2000240
	lsl	r2, #2
	add	r3, r2
	ldrh	r3, [r3]
	ldr	r2, =0x3ff
	ldr	r5, =0x1bf
	mov	r14, r1
	and	r2, r3
	mov	r1, #0
	lsr	r0, r3, #10
	mov	r4, r7
.L1c8c4:
	ldrh	r3, [r4, #2]
	cmp	r3, r2
	bne	.L1c8d4
	ldrh	r3, [r4]
	cmp	r3, r0
	bne	.L1c8d4
	str	r1, [r6]
	b	.L1c8dc
.L1c8d4:
	add	r1, #1
	add	r4, #4
	cmp	r1, r5
	ble	.L1c8c4
.L1c8dc:
	ldr	r3, =ewram_2000462
	ldr	r6, =0x3ff
	ldr	r5, =0x1bf
	mov	r1, #0
	mov	r12, r3
	mov	r0, r7
.L1c8e8:
	mov	r2, r12
	ldrh	r4, [r2]
	mov	r3, r6
	ldrh	r2, [r0, #2]
	and	r3, r4
	cmp	r2, r3
	bne	.L1c904
	ldrh	r2, [r0]
	lsr	r3, r4, #10
	cmp	r2, r3
	bne	.L1c904
	mov	r3, r14
	str	r1, [r3]
	b	.L1c90c
.L1c904:
	add	r1, #1
	add	r0, #4
	cmp	r1, r5
	ble	.L1c8e8
.L1c90c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801c8a0

.thumb_func_start Func_801c924
	push	{lr}
	bl	Func_801c49c
	pop	{r0}
	bx	r0
.func_end Func_801c924

.thumb_func_start Func_801c930
	push	{lr}
	ldr	r1, =0x1004
	mov	r0, #0x13
	bl	Func_80048f4
	mov	r2, r0
	mov	r3, #0
	add	r2, #0x46
	strh	r3, [r2]
	ldr	r2, =0x352
	add	r0, r2
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end Func_801c930

.thumb_func_start Func_801c954
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e9c
	ldr	r2, =0xff4
	ldr	r5, [r3]
	add	r3, r5, r2
	ldr	r0, [r3]
	mov	r1, #0
	bl	Func_8016418
	ldr	r3, =0xff4
	add	r6, r5, r3
	b	.L1c972
.L1c96c:
	mov	r0, #1
	bl	Func_80030f8
.L1c972:
	ldr	r0, [r6]
	bl	Func_8017394
	cmp	r0, #0
	beq	.L1c96c
	mov	r3, r5
	add	r3, #0x46
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1c990
	mov	r3, r5
	add	r3, #0x48
	ldrh	r0, [r3]
	bl	Func_8003f3c
.L1c990:
	ldr	r2, =0x352
	add	r3, r5, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1c9a4
	add	r2, #2
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_8003f3c
.L1c9a4:
	mov	r0, #0x13
	bl	Func_8002dd8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_801c954

