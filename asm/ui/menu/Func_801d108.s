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

