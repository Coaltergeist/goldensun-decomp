	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c02a4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x94
	str	r0, [sp]
	ldr	r6, =iwram_3001f00
	mov	r5, r1
	mov	r0, #0x2a
	mov	r1, #4
	ldr	r7, [r6]
	bl	Func_80048b0
	ldr	r1, =0x15b
	mov	r11, r0
	cmp	r5, r1
	bne	.Lc02ce
	b	.Lc04c8
.Lc02ce:
	ldr	r2, =.Lc5b30
	mov	r12, r2
	ldr	r3, =REG_DMA3SAD
	mov	r0, r12
	ldr	r1, =0x6005020
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r12
	add	r0, #0x20
	add	r1, #0x20
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r12
	add	r0, #0x40
	add	r1, #0x20
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r12
	add	r0, #0x60
	add	r1, #0x20
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r12
	add	r0, #0x80
	add	r1, #0x20
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r12
	add	r0, #0xa0
	add	r1, #0x20
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r12
	add	r0, #0xc0
	add	r1, #0x20
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	sub	r3, #0xd4
	mov	r2, #1
	strh	r2, [r3]
	ldr	r3, =0x33333333
	add	r4, sp, #0x90
	mov	r5, #0
	str	r2, [r7, #0xc]
	str	r2, [r7, #8]
	str	r5, [r7, #0x10]
	mov	r0, r4
	str	r3, [r4]
	sub	r1, #0xe0
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r5, [r4]
	mov	r0, r4
	ldr	r1, =0x6005100
	ldr	r2, =0x85000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Lc0378	@ 0xc04
	ldr	r1, =REG_BG0CNT
	strh	r3, [r2]
	ldr	r2, .Lc037c
	ldrh	r3, [r1]
	orr	r3, r2
	strh	r3, [r1]
	mov	r3, #2
	str	r3, [r7, #8]
	ldr	r2, =0x6006000
	mov	r6, #0
.Lc036a:
	ldr	r1, =0xf080
	cmp	r6, #0x14
	bls	.Lc0372
	ldr	r1, =0xf088
.Lc0372:
	mov	r3, #0
	b	.Lc03b8

	.align	2, 0
.Lc0378:
	.word	0xc04
.Lc037c:
	.word	2
	.pool

.Lc03b8:
	add	r3, #1
	strh	r1, [r2]
	add	r2, #2
	cmp	r3, #0x1f
	bls	.Lc03b8
	add	r6, #1
	cmp	r6, #0x1f
	bls	.Lc036a
	ldr	r6, =iwram_3001ad0
	mov	r3, #0
	mov	r5, #0x20
	mov	r9, r3
	mov	r3, #8
	strh	r5, [r6, #2]
	strh	r5, [r6, #6]
	strh	r3, [r6, #4]
	mov	r0, #1
	bl	Func_80030f8
	ldr	r1, .Lc0414	@ 0xf0
	ldr	r3, =REG_WIN0H
	ldr	r2, .Lc0418	@ 0x88
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lc041c	@ 0x3537
	strh	r3, [r2]
	ldr	r3, .Lc0420	@ 0x3f21
	add	r2, #2
	mov	r0, #0x80
	strh	r3, [r2]
	lsl	r0, #19
	ldr	r1, =0x7741
	bl	Func_800387c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0xb4
	b	.Lc0434

	.align	2, 0
.Lc0414:
	.word	0xf0
.Lc0418:
	.word	0x88
.Lc041c:
	.word	0x3537
.Lc0420:
	.word	0x3f21
	.pool

.Lc0434:
	bl	Func_80c0cec
	ldr	r3, =Func_80c01bc
	mov	r2, r11
	mov	r1, r9
	mov	r10, r3
	str	r1, [r2]
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r10
	bl	Func_80041d8
	ldr	r1, =Func_80c0228
	mov	r8, r1
	mov	r1, #0x90
	lsl	r1, #3
	mov	r0, r8
	bl	Func_80041d8
	ldr	r2, =Func_80c0298
	mov	r1, #0x20
	mov	r0, #2
	bl	Func_800307c
	strh	r5, [r6, #2]
	mov	r0, #1
	bl	Func_80030f8
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	ldr	r5, =REG_BG0CNT
	bl	_Func_801ef08
	mov	r0, #0x14
	bl	Func_80030f8
	mov	r0, r5
	mov	r1, #2
	bl	Func_80039fc
	mov	r1, #0
	mov	r0, r5
	bl	Func_800393c
	ldr	r0, [sp]
	bl	Func_80b595c
	mov	r0, r10
	bl	Func_8004278
	mov	r0, r8
	bl	Func_8004278
	mov	r2, r9
	strh	r2, [r6, #2]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	Func_800307c
	b	.Lc069c

	.pool_aligned

.Lc04c8:
	mov	r3, r6
	sub	r3, #0x8c
	ldr	r3, [r3]
	mov	r10, r3
	mov	r3, #1
	str	r3, [r7, #0xc]
	mov	r3, #0
	str	r3, [r7, #0x10]
	add	r1, sp, #0x20
	mov	r0, #3
	bl	Func_80b6c08
	mov	r6, #0
	mov	r8, r0
	cmp	r0, #0
	beq	.Lc0516
.Lc04e8:
	mov	r5, r6
	add	r5, #0x78
	cmp	r6, #7
	bgt	.Lc04f2
	mov	r5, r6
.Lc04f2:
	mov	r0, r5
	bl	Func_80b7dd0
	mov	r7, r0
	mov	r0, r5
	bl	_Func_8077394
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r3, [r0]
	cmp	r3, #0x94
	beq	.Lc0510
	ldr	r3, =0xb333
	str	r3, [r7, #0x18]
.Lc0510:
	add	r6, #1
	cmp	r6, r8
	bne	.Lc04e8
.Lc0516:
	ldr	r1, =ewram_2002090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lc0544
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x6041
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lc0544:
	strh	r4, [r0]
	mov	r0, #1
	bl	Func_80030f8
	mov	r3, #0xc9
	ldr	r2, =0x21
	lsl	r3, #3
	add	r6, sp, #0x60
	add	r3, r10
	mov	r1, #0
	mov	r8, r1
	strh	r2, [r3]
	mov	r1, r6
	mov	r0, #2
	add	r5, sp, #0x3c
	bl	Func_80b6c08
	ldr	r2, .Lc05a4	@ 0xff
	str	r0, [r5, #0x14]
	mov	r10, r2
	lsl	r0, #1
	mov	r3, r10
	add	r0, #0x24
	strh	r3, [r5, r0]
	mov	r1, #0
	mov	r0, r6
	bl	Func_80b7b6c
	mov	r0, r5
	bl	_Func_80cbc0c
	mov	r3, #0x64
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	Func_80c0cec
	mov	r1, r8
	mov	r2, r11
	str	r1, [r2]
	mov	r0, #2
	ldr	r2, =Func_80c0298
	mov	r1, #0x20
	bl	Func_800307c
	mov	r0, #1
	b	.Lc05c0

	.align	2, 0
.Lc05a4:
	.word	0xff
	.pool

.Lc05c0:
	bl	Func_80030f8
	mov	r0, #0x14
	bl	Func_80030f8
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	ldr	r5, =REG_BG0CNT
	add	r3, #0x41
	ldrb	r0, [r3]
	bl	_Func_801ef08
	mov	r0, r5
	mov	r1, #2
	bl	Func_80039fc
	mov	r0, r5
	mov	r1, #0
	bl	Func_800393c
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lc0620	@ 0x3f40
	strh	r3, [r2]
	add	r3, sp, #4
	mov	r8, r3
	mov	r1, r8
	mov	r0, #3
	bl	Func_80b6c08
	mov	r7, r0
	lsl	r3, r7, #1
	mov	r2, r10
	mov	r1, r8
	strh	r2, [r1, r3]
	mov	r0, r8
	mov	r1, #0
	bl	Func_80b7b6c
	mov	r0, #1
	mov	r1, r8
	bl	Func_80b6c08
	mov	r7, r0
	mov	r6, #0
	cmp	r7, #0
	beq	.Lc0640
	mov	r5, r8
	b	.Lc0630

	.align	2, 0
.Lc0620:
	.word	0x3f40
	.pool

.Lc0630:
	ldrh	r0, [r5]
	mov	r1, #1
	add	r6, #1
	add	r5, #2
	bl	Func_80c0f98
	cmp	r6, r7
	bne	.Lc0630
.Lc0640:
	ldr	r3, =REG_BLDALPHA
	ldr	r5, .Lc0668	@ 0x1000
	mov	r6, #0
	mov	r10, r3
.Lc0648:
	mov	r3, r6
	orr	r3, r5
	mov	r1, r10
	strh	r3, [r1]
	mov	r0, #1
	add	r6, #1
	bl	Func_80030f8
	cmp	r6, #0x10
	bne	.Lc0648
	mov	r6, #0
	cmp	r7, #0
	beq	.Lc0680
	mov	r5, r8
	b	.Lc0670

	.align	2, 0
.Lc0668:
	.word	0x1000
	.pool

.Lc0670:
	ldrh	r0, [r5]
	mov	r1, #0
	add	r6, #1
	add	r5, #2
	bl	Func_80c0f98
	cmp	r6, r7
	bne	.Lc0670
.Lc0680:
	ldr	r0, [sp]
	bl	Func_80b595c
	ldr	r2, =iwram_3001ad0
	mov	r3, #0
	strh	r3, [r2, #2]
	mov	r0, #1
	bl	Func_80030f8
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	Func_800307c
.Lc069c:
	ldr	r6, =REG_BG1CNT
	ldr	r5, .Lc06d8	@ 0x1f83
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	Func_800307c
	strh	r5, [r6]
	mov	r0, #1
	bl	Func_80030f8
	strh	r5, [r6]
	ldr	r1, =REG_BG0CNT
	ldr	r3, =0xfffd
	ldrh	r2, [r1]
	and	r3, r2
	ldr	r2, =iwram_3001ad0
	strh	r3, [r1]
	mov	r3, #8
	strh	r3, [r2, #4]
	ldr	r3, .Lc06dc	@ 0x1541
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	mov	r0, #0x2a
	bl	Func_8002dd8
	add	sp, #0x94
	b	.Lc06f0

	.align	2, 0
.Lc06d8:
	.word	0x1f83
.Lc06dc:
	.word	0x1541
	.pool

.Lc06f0:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c02a4

.thumb_func_start Func_80c0700
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e74
	ldr	r0, [r3]
	ldr	r3, =0x544
	sub	sp, #4
	mov	r4, r1
	add	r5, r0, r3
	mov	r6, sp
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	str	r2, [r6]
	strh	r3, [r3]
	cmp	r4, #0
	bne	.Lc072a
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x50000c0
	ldr	r2, =0x80000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.Lc074a
.Lc072a:
	ldr	r3, =0x644
	add	r0, r3
	lsl	r3, r4, #4
	add	r3, r4
	lsl	r3, #4
	add	r3, r4
	mov	r2, #0x80
	lsl	r3, #2
	lsl	r2, #9
	sub	r2, r3
	str	r2, [r0]
	ldr	r1, =0x50000c0
	mov	r0, r5
	mov	r3, #0x80
	bl	Func_80c1724
.Lc074a:
	ldr	r2, [r6]
	ldr	r3, =REG_IME
	add	sp, #4
	strh	r2, [r3]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80c0700

.thumb_func_start Func_80c0774
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f00
	ldr	r6, [r3]
	ldr	r3, [r6, #8]
	mov	r7, r0
	mov	r5, r2
	cmp	r3, #0
	bne	.Lc078c
	ldr	r0, =Func_80c0130
	ldr	r1, =0x4ff
	bl	Func_80041d8
.Lc078c:
	str	r7, [r6, #8]
	cmp	r7, #1
	bne	.Lc07c0
	ldr	r1, =ewram_2002090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lc07be
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x1f83
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BG1CNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lc07be:
	strh	r4, [r0]
.Lc07c0:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	ldr	r1, =0x50000a0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =0x50001e8
	ldr	r3, =0x50000bc
	ldrh	r2, [r2]
	strh	r2, [r3]
	cmp	r5, #0x80
	bne	.Lc07ec
	ldr	r3, =iwram_3001e74
	ldr	r2, =0x544
	ldr	r0, [r3]
	add	r1, #0x20
	add	r0, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x80000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.Lc088e
.Lc07ec:
	cmp	r5, #0
	beq	.Lc088e
	ldr	r3, =iwram_3001e74
	ldr	r2, =0x544
	ldr	r3, [r3]
	ldr	r7, .Lc081c	@ 0x1f
	add	r2, r3
	ldr	r4, =0x50000c0
	mov	r12, r2
	mov	r6, #0
	mov	r0, #0
.Lc0802:
	mov	r2, r12
	ldrh	r3, [r0, r2]
	mov	r1, #0x1f
	and	r1, r3
	lsl	r3, #16
	lsr	r2, r3, #21
	lsr	r3, #26
	and	r2, r7
	and	r3, r7
	cmp	r1, r5
	ble	.Lc0864
	sub	r1, r5
	b	.Lc0866

	.align	2, 0
.Lc081c:
	.word	0x1f
	.pool

.Lc0864:
	mov	r1, #0
.Lc0866:
	cmp	r2, r5
	ble	.Lc086e
	sub	r2, r5
	b	.Lc0870
.Lc086e:
	mov	r2, #0
.Lc0870:
	cmp	r3, r5
	ble	.Lc0878
	sub	r3, r5
	b	.Lc087a
.Lc0878:
	mov	r3, #0
.Lc087a:
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	add	r6, #1
	strh	r3, [r4]
	add	r0, #2
	add	r4, #2
	cmp	r6, #0x80
	bne	.Lc0802
.Lc088e:
	ldr	r0, =0x6003800
	bl	Func_80c0098
	ldr	r0, =0x600f800
	bl	Func_80c00d8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c0774

.thumb_func_start Func_80c08a8
	push	{r5, lr}
	mov	r1, #0xa8
	lsl	r1, #2
	mov	r0, #0xa
	sub	sp, #4
	bl	Func_80048f4
	ldr	r3, =iwram_3001f00
	mov	r1, r0
	mov	r4, #0
	mov	r0, sp
	ldr	r5, [r3]
	str	r4, [r0]
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x850000a8
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r4, [r5, #8]
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80c08a8

