	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801d108  @ 0x0801d108
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
	bl	CreateUIBox
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
	bl	AllocSpriteSlot
	mov	r6, r0
	cmp	r6, #0x5f
	bgt	.L1d1fc
	ldr	r2, =Data_310a4
	mov	r1, #0x80
	bl	UploadSpriteGFX
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
	bl	AllocSpriteSlot
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
	bl	UploadSpriteGFX
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
	bl	AllocSpriteSlot
	mov	r6, r0
	cmp	r6, #0x5f
	bgt	.L1d32c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	bl	UploadSpriteGFX
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
	bl	__divsi3
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
	bl	AllocSpriteSlot
	mov	r6, r0
	cmp	r6, #0x5f
	bgt	.L1d39c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	bl	UploadSpriteGFX
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
	bl	__divsi3
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

.thumb_func_start Menu_Settings  @ 0x0801d4cc
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
	bl	CreateUIBox
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
	bl	WaitFrames
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
	bl	__modsi3
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
	bl	__modsi3
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
	bl	StartMenu_AddOption
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
	bl	StartMenu_AddOption
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
	bl	StartMenu_AddOption
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
	bl	__divsi3
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
	bl	__divsi3
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
	bl	SetUIColor
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
	bl	DrawSmallText
.L1d766:
	ldr	r0, [sp, #0xc]
	bl	Func_80216b4
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #4
	and	r2, r3
	cmp	r2, #0
	beq	.L1d7b6
	mov	r0, #0x70
	bl	_PlaySound
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
	ldr	r5, =gKeyRepeat
	ldr	r2, [r5]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L1d7e8
	mov	r0, #0x6f
	bl	_PlaySound
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
	bl	_PlaySound
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
	bl	_PlaySound
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
	bl	_PlaySound
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
	bl	CloseUIBox
	mov	r0, r8
	mov	r1, #2
	bl	CloseUIBox
	cmp	r5, #0
	bne	.L1d8b0
	ldr	r0, =0x594
	ldr	r2, =gState
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
	bl	_PlaySound
	b	.L1d840
.L1d8a6:
	mov	r0, #0x70
	mov	r5, #0
	bl	_PlaySound
	b	.L1d840
.L1d8b0:
	ldr	r3, =gState
	ldr	r0, =0x205
	ldr	r1, =0x206
	add	r2, r3, r0
	add	r3, r1
	ldrb	r0, [r2]
	ldrb	r1, [r3]
	bl	SetUIColor
.L1d8c2:
	bl	Func_801d0f0
	mov	r0, #1
	bl	WaitFrames
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
.func_end Menu_Settings
