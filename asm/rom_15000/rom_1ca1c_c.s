	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801cf48
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ea0
	ldr	r1, =0x574
	ldr	r5, [r3]
	ldr	r2, =0x5a4
	add	r3, r5, r1
	add	r0, r5, r2
	ldrh	r6, [r3]
	bl	_Func_80b08b8
	ldr	r3, =0x5b4
	add	r0, r5, r3
	bl	_Func_80b0958
	ldr	r1, =0x5c4
	add	r0, r5, r1
	bl	_Func_80b0958
	cmp	r6, #0
	bne	.L1cf80
	ldr	r2, =0x57c
	add	r3, r5, r2
	ldrh	r2, [r3]
	mov	r3, #7
	and	r3, r2
	ldr	r2, =_FILE_e8
	add	r0, r3, r2
	b	.L1cf82
.L1cf80:
	ldr	r0, =_FILE_e8
.L1cf82:
	bl	GetFile
	ldr	r1, =0x5b4
	add	r3, r5, r1
	ldr	r3, [r3]
	mov	r1, #0x80
	mov	r2, r0
	lsl	r1, #1
	ldrb	r0, [r3, #0xe]
	bl	Func_8003fa4
	cmp	r6, #1
	bne	.L1cfac
	ldr	r2, =0x57c
	add	r3, r5, r2
	ldrh	r2, [r3]
	mov	r3, #7
	and	r3, r2
	ldr	r2, =_FILE_e8
	add	r0, r3, r2
	b	.L1cfae
.L1cfac:
	ldr	r0, =_FILE_e8
.L1cfae:
	bl	GetFile
	ldr	r1, =0x5c4
	add	r3, r5, r1
	ldr	r3, [r3]
	mov	r1, #0x80
	mov	r2, r0
	lsl	r1, #1
	ldrb	r0, [r3, #0xe]
	bl	Func_8003fa4
	cmp	r6, #1
	ble	.L1cfe0
	ldr	r1, =0x594
	add	r2, r6, r1
	ldrsb	r2, [r5, r2]
	lsl	r3, r6, #1
	add	r3, r6
	add	r3, r2
	ldr	r2, =0x5d4
	lsl	r3, #2
	add	r3, r2
	ldr	r0, [r5, r3]
	bl	Func_80217a4
.L1cfe0:
	ldr	r3, =0x57c
	add	r2, r5, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_801cf48

.thumb_func_start Func_801d014
	push	{lr}
	mov	r1, #0xc5
	lsl	r1, #3
	mov	r0, #0x14
	sub	sp, #4
	bl	Func_80048f4
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8500018a
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =ewram_2000240
	ldr	r0, =0x205
	add	r3, r1, r0
	ldr	r0, =0x594
	ldrb	r2, [r3]
	add	r3, r4, r0
	strb	r2, [r3]
	ldr	r3, =0x599
	ldr	r0, =0x206
	add	r2, r4, r3
	mov	r3, #0x18
	strb	r3, [r2]
	add	r3, r1, r0
	ldr	r0, =0x595
	ldrb	r2, [r3]
	add	r3, r4, r0
	strb	r2, [r3]
	ldr	r3, =0x59a
	mov	r0, #0x83
	add	r2, r4, r3
	lsl	r0, #2
	mov	r3, #0xf
	strb	r3, [r2]
	add	r3, r1, r0
	ldr	r0, =0x596
	ldrb	r2, [r3]
	add	r3, r4, r0
	strb	r2, [r3]
	ldr	r3, =0x59b
	ldr	r0, =0x20a
	add	r2, r4, r3
	mov	r3, #3
	strb	r3, [r2]
	add	r3, r1, r0
	ldr	r0, =0x597
	ldrb	r2, [r3]
	add	r3, r4, r0
	strb	r2, [r3]
	ldr	r2, =0x59c
	mov	r0, #2
	add	r3, r4, r2
	strb	r0, [r3]
	ldr	r3, =0x22a
	add	r1, r3
	ldrb	r2, [r1]
	mov	r1, #0xb3
	lsl	r1, #3
	add	r3, r4, r1
	strb	r2, [r3]
	ldr	r2, =0x59d
	mov	r1, #0xc8
	add	r4, r2
	strb	r0, [r4]
	lsl	r1, #4
	ldr	r0, =Func_801cf48
	bl	Func_80041d8
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_801d014

.thumb_func_start Func_801d0f0
	push	{lr}
	ldr	r0, =Func_801cf48
	bl	Func_8004278
	mov	r0, #0x14
	bl	Func_8002dd8
	pop	{r0}
	bx	r0
.func_end Func_801d0f0

.thumb_func_start Func_801d108
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ea0
	ldr	r3, [r3]
	sub	sp, #8
	mov	r5, #2
	mov	r1, #5
	mov	r2, #0x1c
	mov	r9, r3
	mov	r0, #1
	mov	r3, #0xe
	str	r5, [sp]
	bl	Func_80162d4
	mov	r1, #0
	mov	r2, #2
	mov	r3, #0x1b
	str	r5, [sp]
	mov	r11, r0
	bl	Func_801e41c
	mov	r3, #4
	str	r3, [sp]
	mov	r0, r11
	mov	r1, #0
	mov	r2, #4
	mov	r3, #0x1b
	bl	Func_801e41c
	mov	r3, #7
	str	r3, [sp]
	mov	r0, r11
	mov	r1, #0
	mov	r2, #7
	mov	r3, #0x1b
	bl	Func_801e41c
	mov	r3, #0xa
	str	r3, [sp]
	mov	r0, r11
	mov	r1, #0
	mov	r2, #0xa
	mov	r3, #0x1b
	bl	Func_801e41c
	ldr	r5, =0xc07
	mov	r1, r11
	mov	r0, r5
	mov	r2, #8
	mov	r3, #0
	add	r5, #1
	bl	Func_801e7c0
	mov	r0, r5
	mov	r1, r11
	mov	r2, #8
	mov	r3, #0x10
	bl	Func_801e7c0
	ldr	r5, =0xc0d
	mov	r1, r11
	mov	r0, r5
	mov	r2, #8
	mov	r3, #0x20
	add	r5, #1
	bl	Func_801e7c0
	mov	r0, r5
	mov	r1, r11
	mov	r2, #0x20
	mov	r3, #0x28
	bl	Func_801e7c0
	ldr	r0, =0xc0f
	mov	r1, r11
	mov	r2, #8
	mov	r3, #0x40
	bl	Func_801e7c0
	ldr	r0, =0xc12
	mov	r1, r11
	mov	r2, #8
	mov	r3, #0x58
	bl	Func_801e7c0
	bl	Func_8004080
	mov	r6, r0
	cmp	r6, #0x5f
	bgt	.L1d1fc
	ldr	r2, =Data_310a4
	mov	r1, #0x80
	bl	Func_8003fa4
	mov	r1, #0x80
	mov	r3, #0
	lsl	r1, #23
	mov	r0, r6
	mov	r2, r11
	str	r3, [sp]
	bl	Func_801eadc
	mov	r4, r0
	ldr	r0, =0x5a4
	add	r0, r9
	str	r4, [r0]
	mov	r1, r11
	ldrh	r3, [r1, #0xc]
	lsl	r6, r3, #3
	ldrh	r3, [r1, #0xe]
	lsl	r3, #3
	mov	r7, r3
	add	r7, #0xc
	mov	r1, r6
	mov	r2, r7
	bl	_Func_80b0a20
.L1d1fc:
	bl	Func_8004080
	mov	r6, r0
	cmp	r6, #0x5f
	bgt	.L1d2be
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_73812
	ldr	r1, =0x50003c0
	ldr	r2, =0x80000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0x80
	lsl	r1, #1
	ldr	r2, =Data_29910
	mov	r0, r6
	bl	Func_8003fa4
	ldr	r2, =0x40004000
	mov	r8, r2
	mov	r7, #0
	mov	r1, r8
	mov	r2, r11
	mov	r3, #0x86
	mov	r0, r6
	str	r7, [sp]
	bl	Func_801eadc
	mov	r4, r0
	ldrb	r2, [r4, #0x19]
	mov	r5, #0xf
	mov	r1, #0xe0
	mov	r10, r1
	mov	r3, r5
	and	r3, r2
	mov	r2, r10
	orr	r3, r2
	strb	r3, [r4, #0x19]
	mov	r1, r8
	mov	r2, r11
	mov	r3, #0xa6
	mov	r0, r6
	str	r7, [sp]
	bl	Func_801eadc
	mov	r4, r0
	ldrh	r1, [r4, #0x18]
	lsl	r2, r1, #22
	ldr	r3, =0x3ff
	lsr	r2, #22
	add	r2, #4
	and	r2, r3
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r4, #0x18]
	ldrb	r3, [r4, #0x19]
	mov	r1, r10
	and	r5, r3
	orr	r5, r1
	strb	r5, [r4, #0x19]
	mov	r7, #0x10
	mov	r1, r8
	mov	r2, r11
	mov	r3, #0x86
	mov	r0, r6
	str	r7, [sp]
	bl	Func_801eadc
	mov	r4, r0
	ldrb	r3, [r4, #0x19]
	mov	r5, #0xf0
	orr	r3, r5
	strb	r3, [r4, #0x19]
	mov	r1, r8
	mov	r2, r11
	mov	r3, #0xa6
	mov	r0, r6
	str	r7, [sp]
	bl	Func_801eadc
	mov	r4, r0
	ldrh	r2, [r4, #0x18]
	lsl	r3, r2, #22
	ldr	r1, =0x3ff
	lsr	r3, #22
	add	r3, #4
	and	r3, r1
	ldr	r1, =0xfffffc00
	and	r1, r2
	orr	r1, r3
	str	r1, [sp, #4]
	add	r2, sp, #4
	ldrh	r2, [r2]
	strh	r2, [r4, #0x18]
	ldrb	r3, [r4, #0x19]
	orr	r3, r5
	strb	r3, [r4, #0x19]
.L1d2be:
	bl	Func_8004080
	mov	r6, r0
	cmp	r6, #0x5f
	bgt	.L1d32c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	bl	Func_8003fa4
	mov	r1, #0x80
	mov	r3, #0
	lsl	r1, #23
	mov	r0, r6
	mov	r2, r11
	str	r3, [sp]
	bl	Func_801eadc
	mov	r4, r0
	ldrb	r3, [r4, #0x15]
	ldr	r5, =0x5b4
	mov	r2, #0x20
	orr	r3, r2
	add	r5, r9
	strb	r3, [r4, #0x15]
	str	r4, [r5]
	mov	r1, r11
	ldrh	r3, [r1, #0xc]
	lsl	r3, #3
	mov	r6, r3
	ldr	r3, =0x594
	add	r3, r9
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	lsl	r0, r3, #4
	sub	r0, r3
	ldr	r3, =0x599
	add	r3, r9
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	lsl	r0, #2
	bl	Func_af0_from_thumb
	mov	r2, r11
	ldrh	r3, [r2, #0xe]
	add	r6, #0x8c
	lsl	r3, #3
	add	r6, r0
	add	r7, r3, #4
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	bl	_Func_80b0a20
.L1d32c:
	bl	Func_8004080
	mov	r6, r0
	cmp	r6, #0x5f
	bgt	.L1d39c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	bl	Func_8003fa4
	mov	r1, #0x80
	mov	r3, #0
	lsl	r1, #23
	mov	r0, r6
	mov	r2, r11
	str	r3, [sp]
	bl	Func_801eadc
	mov	r4, r0
	ldrb	r3, [r4, #0x15]
	ldr	r5, =0x5c4
	mov	r2, #0x20
	orr	r3, r2
	add	r5, r9
	strb	r3, [r4, #0x15]
	str	r4, [r5]
	mov	r1, r11
	ldrh	r3, [r1, #0xc]
	lsl	r3, #3
	mov	r6, r3
	ldr	r3, =0x595
	add	r3, r9
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	lsl	r0, r3, #4
	sub	r0, r3
	ldr	r3, =0x59a
	add	r3, r9
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	lsl	r0, #2
	bl	Func_af0_from_thumb
	mov	r2, r11
	ldrh	r3, [r2, #0xe]
	lsl	r3, #3
	add	r6, #0x8c
	mov	r7, r3
	add	r6, r0
	add	r7, #0x14
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	bl	_Func_80b0a20
.L1d39c:
	ldr	r5, =.L367c9
	mov	r7, #0x1c
	mov	r0, #0
	ldrsb	r0, [r5, r0]
	mov	r2, r11
	mov	r1, #0
	mov	r3, #0x54
	str	r7, [sp]
	bl	Func_8021750
	ldr	r3, =0x5ec
	add	r3, r9
	str	r0, [r3]
	mov	r2, r11
	mov	r0, #1
	ldrsb	r0, [r5, r0]
	mov	r1, #0
	mov	r3, #0x6c
	str	r7, [sp]
	bl	Func_8021750
	mov	r3, #0xbe
	lsl	r3, #3
	add	r3, r9
	str	r0, [r3]
	mov	r2, r11
	mov	r0, #2
	ldrsb	r0, [r5, r0]
	mov	r1, #0
	mov	r3, #0x84
	str	r7, [sp]
	bl	Func_8021750
	ldr	r3, =0x5f4
	ldr	r5, =.L367cc
	add	r3, r9
	str	r0, [r3]
	mov	r7, #0x34
	mov	r0, #0
	ldrsb	r0, [r5, r0]
	mov	r2, r11
	mov	r1, #0
	mov	r3, #0x64
	str	r7, [sp]
	bl	Func_8021750
	mov	r3, #0xbf
	lsl	r3, #3
	add	r3, r9
	str	r0, [r3]
	mov	r2, r11
	mov	r0, #1
	ldrsb	r0, [r5, r0]
	mov	r1, #0
	mov	r3, #0x7c
	str	r7, [sp]
	bl	Func_8021750
	ldr	r3, =0x5fc
	ldr	r5, =.L367ce
	add	r3, r9
	str	r0, [r3]
	mov	r7, #0x4c
	mov	r0, #0
	ldrsb	r0, [r5, r0]
	mov	r2, r11
	mov	r1, #0
	mov	r3, #0x64
	str	r7, [sp]
	bl	Func_8021750
	ldr	r3, =0x604
	add	r3, r9
	str	r0, [r3]
	mov	r1, #0
	mov	r0, #1
	ldrsb	r0, [r5, r0]
	mov	r2, r11
	mov	r3, #0x7c
	str	r7, [sp]
	bl	Func_8021750
	mov	r3, #0xc1
	lsl	r3, #3
	add	r3, r9
	str	r0, [r3]
	add	sp, #8
	mov	r0, r11
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801d108

.thumb_func_start Func_801d4cc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #1
	mov	r1, #0
	sub	sp, #0x14
	mov	r11, r0
	mov	r9, r1
	bl	Func_801d014
	ldr	r3, =iwram_3001ea0
	ldr	r7, [r3]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #2
	mov	r2, #0x1c
	mov	r3, #3
	mov	r0, #1
	bl	Func_80162d4
	str	r0, [sp, #0x10]
	bl	Func_801d108
	mov	r3, #0x30
	mov	r8, r0
	neg	r3, r3
	mov	r2, #0x40
	mov	r1, r8
	mov	r0, #7
	bl	Func_8021620
	str	r0, [sp, #0xc]
	mov	r0, #1
	bl	Func_80030f8
	ldr	r2, =0x594
	ldr	r3, =0x595
	add	r2, r7, r2
	add	r3, r7, r3
	str	r2, [sp, #8]
	str	r3, [sp, #4]
.L1d526:
	mov	r0, r11
	cmp	r0, #0
	bne	.L1d52e
	b	.L1d766
.L1d52e:
	mov	r1, #0
	mov	r0, r9
	mov	r11, r1
	add	r0, #5
	mov	r1, #5
	bl	Func_b1c_from_thumb
	ldr	r5, =0x594
	mov	r2, #0xb3
	mov	r9, r0
	lsl	r2, #3
	add	r2, r9
	add	r3, r7, #1
	add	r5, r9
	ldrsb	r1, [r3, r2]
	ldrsb	r0, [r7, r5]
	add	r0, r1
	bl	Func_b1c_from_thumb
	ldr	r2, =0x574
	strb	r0, [r7, r5]
	add	r3, r7, r2
	mov	r0, r9
	strh	r0, [r3]
	ldr	r3, =iwram_3001ca0
	ldrb	r3, [r3]
	ldr	r2, .L1d594	@ 0
	cmp	r3, #0
	beq	.L1d570
	mov	r1, #0xb3
	lsl	r1, #3
	add	r3, r7, r1
	strb	r2, [r3]
.L1d570:
	ldr	r6, =0x5ec
	mov	r5, #0
.L1d574:
	ldr	r0, [r6, r7]
	mov	r3, #0xfb
	strb	r3, [r0, #0xf]
	bl	_Func_80a17c4
	ldr	r3, [r6, r7]
	ldr	r0, =0x596
	ldrb	r1, [r3, #0xe]
	add	r3, r7, r0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #0
	cmp	r5, r3
	beq	.L1d5b6
	b	.L1d5b4

	.align	2, 0
.L1d594:
	.word	0
	.pool

.L1d5b4:
	mov	r2, #1
.L1d5b6:
	ldr	r3, =.L367c9
	ldrsb	r0, [r3, r5]
	add	r5, #1
	bl	Func_80216e8
	add	r6, #4
	cmp	r5, #2
	ble	.L1d574
	mov	r6, #0xbf
	mov	r5, #0
	lsl	r6, #3
.L1d5cc:
	ldr	r0, [r6, r7]
	mov	r3, #0xfb
	strb	r3, [r0, #0xf]
	bl	_Func_80a17c4
	ldr	r3, [r6, r7]
	ldr	r0, =0x597
	ldrb	r1, [r3, #0xe]
	add	r3, r7, r0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #0
	cmp	r5, r3
	beq	.L1d5ec
	mov	r2, #1
.L1d5ec:
	ldr	r3, =.L367cc
	ldrsb	r0, [r3, r5]
	add	r5, #1
	bl	Func_80216e8
	add	r6, #4
	cmp	r5, #1
	ble	.L1d5cc
	ldr	r6, =0x604
	mov	r5, #0
.L1d600:
	ldr	r0, [r6, r7]
	mov	r3, #0xfb
	strb	r3, [r0, #0xf]
	bl	_Func_80a17c4
	ldr	r3, [r6, r7]
	ldrb	r1, [r3, #0xe]
	mov	r3, #0xb3
	lsl	r3, #3
	add	r3, r7
	mov	r10, r3
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #0
	cmp	r5, r3
	beq	.L1d624
	mov	r2, #1
.L1d624:
	ldr	r3, =.L367ce
	ldrsb	r0, [r3, r5]
	add	r5, #1
	bl	Func_80216e8
	add	r6, #4
	cmp	r5, #1
	ble	.L1d600
	mov	r0, r8
	ldrh	r3, [r0, #0xc]
	ldr	r1, [sp, #8]
	lsl	r3, #3
	mov	r5, r3
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldr	r2, =0x599
	lsl	r0, r3, #4
	sub	r0, r3
	add	r3, r7, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	lsl	r0, #2
	bl	Func_af0_from_thumb
	add	r5, #0x8c
	add	r5, r0
	mov	r0, r8
	ldrh	r3, [r0, #0xe]
	ldr	r1, =0x5b4
	lsl	r3, #3
	add	r2, r3, #4
	add	r0, r7, r1
	mov	r3, #1
	mov	r1, r5
	bl	_Func_80b09fc
	mov	r2, r8
	ldrh	r3, [r2, #0xc]
	ldr	r0, [sp, #4]
	lsl	r3, #3
	mov	r5, r3
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	ldr	r1, =0x59a
	lsl	r0, r3, #4
	sub	r0, r3
	add	r3, r7, r1
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	lsl	r0, #2
	bl	Func_af0_from_thumb
	mov	r2, r8
	ldrh	r3, [r2, #0xe]
	lsl	r3, #3
	mov	r2, r3
	add	r5, #0x8c
	ldr	r3, =0x5c4
	add	r5, r0
	mov	r1, r5
	add	r0, r7, r3
	add	r2, #0x14
	mov	r3, #1
	bl	_Func_80b09fc
	ldr	r0, =0x596
	add	r3, r7, r0
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, =0xc0a
	add	r5, r2, r3
	mov	r3, #0x30
	str	r3, [sp]
	mov	r0, r8
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r3, #0xc8
	bl	Func_80164d4
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0xa0
	mov	r3, #0x28
	bl	Func_801e7c0
	ldr	r1, =0x597
	add	r3, r7, r1
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, =0xc10
	add	r5, r2, r3
	mov	r3, #0x48
	str	r3, [sp]
	mov	r0, r8
	mov	r1, #0xa0
	mov	r2, #0x40
	mov	r3, #0xb8
	bl	Func_80164d4
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0xa0
	mov	r3, #0x40
	bl	Func_801e7c0
	mov	r3, r10
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, =0xc13
	add	r5, r2, r3
	mov	r3, #0x60
	str	r3, [sp]
	mov	r0, r8
	mov	r1, #0xa0
	mov	r2, #0x58
	mov	r3, #0xb8
	bl	Func_80164d4
	mov	r0, r5
	mov	r3, #0x58
	mov	r1, r8
	mov	r2, #0xa0
	bl	Func_801e7c0
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	mov	r0, #0
	ldrsb	r0, [r1, r0]
	mov	r1, #0
	ldrsb	r1, [r2, r1]
	bl	Func_801ccc0
	mov	r0, r8
	ldrh	r3, [r0, #0xc]
	mov	r1, r9
	ldrh	r2, [r0, #0xe]
	lsl	r5, r3, #3
	lsl	r3, r1, #1
	add	r3, r9
	add	r3, r2
	lsl	r3, #3
	add	r2, r3, #4
	cmp	r1, #0
	bne	.L1d746
	add	r2, #8
.L1d746:
	ldr	r3, =0x5a4
	mov	r1, r5
	add	r0, r7, r3
	mov	r3, #3
	bl	_Func_80b09fc
	ldr	r0, [sp, #0x10]
	bl	Func_80164ac
	ldr	r0, =0xc15
	ldr	r1, [sp, #0x10]
	add	r0, r9
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e74c
.L1d766:
	ldr	r0, [sp, #0xc]
	bl	Func_80216b4
	mov	r0, #1
	bl	Func_80030f8
	ldr	r1, =iwram_3001c94
	ldr	r2, [r1]
	mov	r3, #4
	and	r2, r3
	cmp	r2, #0
	beq	.L1d7b6
	mov	r0, #0x70
	bl	_Func_80f9080
	ldr	r0, =0x57e
	add	r1, r7, r0
	ldrh	r3, [r1]
	mov	r0, #1
	add	r3, #1
	mov	r11, r0
	mov	r0, #0xa0
	strh	r3, [r1]
	lsl	r0, #11
	lsl	r3, #16
	mov	r2, #0
	cmp	r3, r0
	bls	.L1d7a0
	strh	r2, [r1]
.L1d7a0:
	ldrh	r3, [r1]
	ldr	r2, =.L367d0
	ldrb	r3, [r2, r3]
	ldr	r2, [sp, #8]
	strb	r3, [r2]
	ldr	r2, =.L367d6
	ldrh	r3, [r1]
	ldr	r0, [sp, #4]
	ldrb	r3, [r2, r3]
	strb	r3, [r0]
	b	.L1d526
.L1d7b6:
	ldr	r2, [r1]
	mov	r3, #9
	and	r2, r3
	cmp	r2, #0
	bne	.L1d8a6
	ldr	r2, [r1]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	bne	.L1d89a
	ldr	r5, =iwram_3001b04
	ldr	r2, [r5]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L1d7e8
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r1, #1
	neg	r1, r1
	mov	r2, #1
	add	r9, r1
	mov	r11, r2
	b	.L1d526
.L1d7e8:
	ldr	r2, [r5]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.L1d800
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r3, #1
	add	r9, r3
	mov	r11, r3
	b	.L1d526
.L1d800:
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L1d81e
	mov	r0, #0x6f
	bl	_Func_80f9080
	ldr	r2, =0x594
	add	r2, r9
	ldrb	r3, [r7, r2]
	sub	r3, #1
	mov	r0, #1
	strb	r3, [r7, r2]
	mov	r11, r0
.L1d81e:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	bne	.L1d82a
	b	.L1d526
.L1d82a:
	mov	r0, #0x6f
	bl	_Func_80f9080
	ldr	r2, =0x594
	add	r2, r9
	ldrb	r3, [r7, r2]
	mov	r1, #1
	add	r3, #1
	strb	r3, [r7, r2]
	mov	r11, r1
	b	.L1d526
.L1d840:
	ldr	r0, [sp, #0x10]
	mov	r1, #2
	bl	Func_8016418
	mov	r0, r8
	mov	r1, #2
	bl	Func_8016418
	cmp	r5, #0
	bne	.L1d8b0
	ldr	r0, =0x594
	ldr	r2, =ewram_2000240
	add	r3, r7, r0
	ldr	r0, =0x205
	ldrb	r1, [r3]
	add	r3, r2, r0
	strb	r1, [r3]
	ldr	r1, =0x595
	add	r3, r7, r1
	ldrb	r1, [r3]
	add	r0, #1
	add	r3, r2, r0
	strb	r1, [r3]
	ldr	r1, =0x596
	add	r3, r7, r1
	ldrb	r1, [r3]
	add	r0, #6
	add	r3, r2, r0
	strb	r1, [r3]
	ldr	r1, =0x597
	add	r3, r7, r1
	ldrb	r1, [r3]
	sub	r0, #2
	add	r3, r2, r0
	strb	r1, [r3]
	mov	r1, #0xb3
	lsl	r1, #3
	add	r3, r7, r1
	ldrb	r1, [r3]
	ldr	r3, =0x22a
	add	r2, r3
	ldr	r3, =iwram_3001d08
	strb	r1, [r2]
	strb	r1, [r3]
	b	.L1d8c2
.L1d89a:
	mov	r5, #1
	mov	r0, #0x71
	neg	r5, r5
	bl	_Func_80f9080
	b	.L1d840
.L1d8a6:
	mov	r0, #0x70
	mov	r5, #0
	bl	_Func_80f9080
	b	.L1d840
.L1d8b0:
	ldr	r3, =ewram_2000240
	ldr	r0, =0x205
	ldr	r1, =0x206
	add	r2, r3, r0
	add	r3, r1
	ldrb	r0, [r2]
	ldrb	r1, [r3]
	bl	Func_801ccc0
.L1d8c2:
	bl	Func_801d0f0
	mov	r0, #1
	bl	Func_80030f8
	mov	r0, r5
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801d4cc

.thumb_func_start Func_801d94c
	push	{r5, lr}
	ldr	r3, =iwram_3001ea0
	ldr	r2, =0x5a4
	ldr	r5, [r3]
	add	r0, r5, r2
	bl	_Func_80b08b8
	ldr	r2, =0x574
	add	r3, r5, r2
	ldrh	r3, [r3]
	add	r2, #0x9c
	lsl	r3, #2
	add	r3, r2
	ldr	r0, [r5, r3]
	bl	Func_80217a4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_801d94c

.thumb_func_start Func_801d980
	push	{lr}
	mov	r1, #0xc5
	lsl	r1, #3
	mov	r0, #0x14
	sub	sp, #4
	bl	Func_80048f4
	mov	r3, #0
	mov	r1, r0
	mov	r0, sp
	str	r3, [r0]
	ldr	r2, =0x8500018a
	ldr	r3, =REG_DMA3SAD
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_801d94c
	bl	Func_80041d8
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_801d980

.thumb_func_start Func_801d9bc
	push	{lr}
	ldr	r0, =Func_801d94c
	bl	Func_8004278
	mov	r0, #0x14
	bl	Func_8002dd8
	pop	{r0}
	bx	r0
.func_end Func_801d9bc

.thumb_func_start Func_801d9d4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ea0
	mov	r0, #3
	ldr	r3, [r3]
	mov	r10, r0
	mov	r0, #0xbf
	lsl	r0, #1
	sub	sp, #0xc
	mov	r11, r3
	bl	_Func_8079338
	mov	r2, #0
	mov	r9, r0
	str	r2, [sp, #8]
	cmp	r0, #0
	beq	.L1da08
	mov	r0, #2
	mov	r3, #1
	str	r0, [sp, #8]
	mov	r10, r3
.L1da08:
	ldr	r3, =iwram_3001f54
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1da14
	mov	r2, #3
	add	r10, r2
.L1da14:
	mov	r3, #8
	mov	r0, r10
	sub	r1, r3, r0
	lsl	r3, r0, #1
	add	r3, r10
	add	r4, r3, #1
	add	r3, r1, r4
	cmp	r3, #0x13
	ble	.L1da2a
	mov	r1, #1
	mov	r4, #0x13
.L1da2a:
	mov	r3, #2
	str	r3, [sp]
	mov	r2, #0x14
	mov	r0, #5
	mov	r3, r4
	bl	Func_80162d4
	mov	r2, r10
	mov	r8, r0
	cmp	r2, #1
	ble	.L1da5c
	mov	r5, r10
	mov	r6, #3
	sub	r5, #1
.L1da46:
	mov	r2, r6
	mov	r0, r8
	mov	r1, #0
	mov	r3, #0x13
	sub	r5, #1
	str	r6, [sp]
	bl	Func_801e41c
	add	r6, #3
	cmp	r5, #0
	bne	.L1da46
.L1da5c:
	mov	r3, r9
	mov	r7, #4
	cmp	r3, #0
	bne	.L1da82
	ldr	r5, =0xc23
	mov	r1, r8
	mov	r0, r5
	mov	r2, #0x30
	mov	r3, #4
	add	r5, #1
	bl	Func_801e74c
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0x30
	mov	r3, #0x1c
	bl	Func_801e74c
	mov	r7, #0x34
.L1da82:
	mov	r3, r7
	ldr	r0, =0xc25
	mov	r1, r8
	mov	r2, #0x30
	bl	Func_801e74c
	ldr	r3, =iwram_3001f54
	ldrb	r3, [r3]
	add	r7, #0x18
	cmp	r3, #0
	beq	.L1dac4
	ldr	r5, =0xc27
	mov	r3, r7
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0x30
	add	r7, #0x18
	bl	Func_801e74c
	add	r0, r5, #1
	mov	r3, r7
	mov	r1, r8
	mov	r2, #0x30
	add	r7, #0x18
	add	r5, #2
	bl	Func_801e74c
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0x30
	mov	r3, r7
	bl	Func_801e74c
.L1dac4:
	bl	Func_8004080
	mov	r5, r0
	cmp	r5, #0x5f
	bgt	.L1db02
	ldr	r2, =Data_310a4
	mov	r1, #0x80
	bl	Func_8003fa4
	mov	r1, #0x80
	mov	r3, #0
	lsl	r1, #23
	mov	r2, r8
	mov	r0, r5
	str	r3, [sp]
	bl	Func_801eadc
	ldr	r2, =0x5a4
	add	r2, r11
	str	r0, [r2]
	mov	r0, r8
	ldrh	r3, [r0, #0xe]
	lsl	r3, #3
	ldrh	r1, [r0, #0xc]
	mov	r7, r3
	add	r7, #0x10
	mov	r0, r2
	lsl	r1, #3
	mov	r2, r7
	bl	_Func_80b0a20
.L1db02:
	mov	r7, #4
	mov	r2, r10
	neg	r7, r7
	cmp	r2, #0
	ble	.L1db3c
	ldr	r3, =.L367dc
	mov	r4, #0xc2
	ldr	r0, [sp, #8]
	lsl	r4, #3
	add	r4, r11
	mov	r5, r10
	add	r6, r0, r3
.L1db1a:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	mov	r1, #0
	mov	r2, r8
	mov	r3, #0xc
	str	r7, [sp]
	str	r4, [sp, #4]
	bl	Func_8021750
	ldr	r4, [sp, #4]
	sub	r5, #1
	add	r6, #1
	stmia	r4!, {r0}
	add	r7, #0x18
	cmp	r5, #0
	bne	.L1db1a
.L1db3c:
	mov	r0, r8
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801d9d4

.thumb_func_start Func_801db70
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	mov	r0, #1
	str	r0, [sp, #0xc]
	mov	r0, #0xbf
	mov	r2, #3
	lsl	r0, #1
	mov	r11, r2
	bl	_Func_8079338
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r5, r0
	bl	Func_801d980
	ldr	r3, =iwram_3001ea0
	ldr	r3, [r3]
	mov	r10, r3
	bl	Func_801d9d4
	ldr	r6, =iwram_3001f54
	str	r0, [sp, #0x10]
	ldrb	r3, [r6]
	mov	r4, #0x18
	neg	r4, r4
	cmp	r3, #0
	beq	.L1dbb4
	add	r4, #8
.L1dbb4:
	mov	r3, r4
	ldr	r1, [sp, #0x10]
	mov	r2, #0x28
	mov	r0, #6
	bl	Func_8021620
	str	r0, [sp, #8]
	mov	r0, #1
	bl	Func_80030f8
	ldr	r3, =0x574
	add	r3, r10
	ldrh	r3, [r3]
	mov	r8, r3
	cmp	r5, #0
	beq	.L1dbdc
	mov	r2, #2
	mov	r0, #1
	str	r2, [sp, #4]
	mov	r11, r0
.L1dbdc:
	ldrb	r3, [r6]
	cmp	r3, #0
	beq	.L1dbe6
	mov	r3, #3
	add	r11, r3
.L1dbe6:
	ldr	r0, [sp, #0xc]
	cmp	r0, #0
	beq	.L1dc6e
	mov	r0, r8
	mov	r2, #0
	add	r0, r11
	mov	r1, r11
	str	r2, [sp, #0xc]
	bl	Func_b1c_from_thumb
	ldr	r3, =0x574
	mov	r8, r0
	add	r3, r10
	mov	r0, r8
	strh	r0, [r3]
	ldr	r2, [sp, #0xc]
	mov	r4, #0
	cmp	r2, r11
	bge	.L1dc4c
	ldr	r3, =.L367dc
	mov	r7, #0xc2
	lsl	r7, #3
	ldr	r6, [sp, #4]
	mov	r9, r3
	add	r7, r10
.L1dc18:
	ldmia	r7!, {r5}
	mov	r3, #0xfb
	strb	r3, [r5, #0xf]
	mov	r0, r5
	str	r4, [sp]
	bl	_Func_80a17c4
	ldr	r3, =0x574
	add	r3, r10
	ldrh	r3, [r3]
	ldr	r4, [sp]
	ldrb	r1, [r5, #0xe]
	mov	r2, #0
	cmp	r4, r3
	beq	.L1dc38
	mov	r2, #1
.L1dc38:
	mov	r3, r9
	ldrsb	r0, [r6, r3]
	str	r4, [sp]
	bl	Func_80216e8
	ldr	r4, [sp]
	add	r4, #1
	add	r6, #1
	cmp	r4, r11
	blt	.L1dc18
.L1dc4c:
	ldr	r0, [sp, #0x10]
	ldrh	r2, [r0, #0xe]
	ldrh	r1, [r0, #0xc]
	mov	r0, r8
	lsl	r3, r0, #1
	add	r3, r8
	add	r3, r2
	lsl	r3, #3
	mov	r4, r3
	ldr	r0, =0x5a4
	add	r4, #0x10
	lsl	r1, #3
	add	r0, r10
	mov	r2, r4
	mov	r3, #3
	bl	_Func_80b09fc
.L1dc6e:
	ldr	r0, [sp, #8]
	bl	Func_80216b4
	mov	r0, #1
	bl	Func_80030f8
	ldr	r1, =iwram_3001c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L1dc90
	mov	r0, #0x70
	mov	r5, r8
	bl	_Func_80f9080
	b	.L1dcdc
.L1dc90:
	ldr	r2, [r1]
	mov	r3, #0xa
	and	r2, r3
	cmp	r2, #0
	beq	.L1dca6
	mov	r5, #1
	mov	r0, #0x71
	neg	r5, r5
	bl	_Func_80f9080
	b	.L1dcdc
.L1dca6:
	ldr	r1, =iwram_3001b04
	ldr	r2, [r1]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L1dcc4
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r2, #1
	neg	r2, r2
	mov	r3, #1
	add	r8, r2
	str	r3, [sp, #0xc]
	b	.L1dbe6
.L1dcc4:
	ldr	r3, [r1]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L1dbe6
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r0, #1
	add	r8, r0
	str	r0, [sp, #0xc]
	b	.L1dbe6
.L1dcdc:
	ldr	r0, [sp, #0x10]
	mov	r1, #2
	bl	Func_8016418
	bl	Func_801d9bc
	mov	r0, #1
	bl	Func_80030f8
	cmp	r5, #0
	blt	.L1dcf6
	ldr	r2, [sp, #4]
	add	r5, r2
.L1dcf6:
	mov	r0, r5
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801db70

.thumb_func_start Func_801dd28
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x84
	str	r1, [sp]
	mov	r6, r3
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r11, r0
	ldr	r0, =_FILE_13
	mov	r9, r2
	mov	r8, r3
	bl	GetFile
	mov	r10, r0
	mov	r0, r11
	ldrb	r5, [r0]
	add	r1, sp, #4
	mov	r3, #0xc0
	mov	r12, r1
	lsl	r7, r5, #5
	lsl	r3, #19
	mov	r14, r12
	add	r2, r7, r3
	mov	r1, #0
.L1dd62:
	ldrb	r4, [r2]
	mov	r0, #0xf
	mov	r3, r4
	and	r3, r0
	mov	r0, r12
	strb	r3, [r0]
	lsr	r3, r4, #4
	strb	r3, [r0, #1]
	add	r1, #1
	mov	r3, #2
	add	r2, #1
	add	r12, r3
	cmp	r1, #0x1f
	bls	.L1dd62
	mov	r4, r9
	lsl	r3, r4, #5
	mov	r0, r10
	add	r2, r0, r3
	mov	r3, #0xf
	mov	r12, r14
	mov	r1, #0
	mov	r10, r3
.L1dd8e:
	ldrb	r0, [r2]
	mov	r4, r10
	mov	r3, r0
	and	r3, r4
	ldrb	r3, [r6, r3]
	add	r2, #1
	cmp	r3, #0
	beq	.L1dda2
	mov	r4, r12
	strb	r3, [r4]
.L1dda2:
	mov	r3, #1
	add	r12, r3
	lsr	r3, r0, #4
	ldrb	r3, [r6, r3]
	cmp	r3, #0
	beq	.L1ddb2
	mov	r4, r12
	strb	r3, [r4]
.L1ddb2:
	mov	r0, #1
	add	r1, #1
	add	r12, r0
	cmp	r1, #0x1f
	bls	.L1dd8e
	mov	r12, r14
	mov	r1, #0
	mov	r0, r12
.L1ddc2:
	ldrb	r3, [r0, #1]
	ldrb	r2, [r0]
	lsl	r3, #4
	orr	r2, r3
	mov	r4, #1
	mov	r3, r12
	add	r1, #1
	add	r0, #2
	strb	r2, [r3]
	add	r12, r4
	cmp	r1, #0x1f
	bls	.L1ddc2
	lsl	r3, r5, #24
	cmp	r3, #0
	blt	.L1de24
	mov	r1, #0xea
	lsl	r1, #4
	mov	r0, #0xda
	mov	r4, #0
	add	r1, r8
	mov	r6, #0x7f
	lsl	r0, #4
.L1ddee:
	ldrh	r3, [r1]
	add	r2, r3, #1
	and	r2, r6
	lsl	r3, #24
	lsr	r5, r3, #24
	strh	r2, [r1]
	mov	r7, r8
	add	r2, r5, r0
	ldrb	r3, [r7, r2]
	cmp	r3, #0
	beq	.L1de0a
	add	r4, #1
	cmp	r4, #0x7f
	bls	.L1ddee
.L1de0a:
	mov	r3, #1
	mov	r0, r8
	strb	r3, [r0, r2]
	mov	r3, #0x80
	orr	r5, r3
	ldr	r2, .L1de38	@ 0xf000
	mov	r3, r5
	orr	r3, r2
	mov	r1, r11
	strh	r3, [r1]
	ldr	r2, [sp]
	strh	r3, [r2]
	lsl	r7, r5, #5
.L1de24:
	mov	r4, #0xc0
	lsl	r4, #19
	ldr	r3, =REG_DMA3SAD
	add	r0, sp, #4
	add	r1, r7, r4
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #0x84
	b	.L1de4c

	.align	2, 0
.L1de38:
	.word	0xf000
	.pool

.L1de4c:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801dd28

	.section .rodata
	.global .L36750

.L36750:
	.incrom 0x36750, 0x367c9
.L367c9:
	.incrom 0x367c9, 0x367cc
.L367cc:
	.incrom 0x367cc, 0x367ce
.L367ce:
	.incrom 0x367ce, 0x367d0
.L367d0:
	.incrom 0x367d0, 0x367d6
.L367d6:
	.incrom 0x367d6, 0x367dc
.L367dc:
	.incrom 0x367dc, 0x367e4
