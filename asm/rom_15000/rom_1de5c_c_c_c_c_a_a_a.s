	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801edec  @ 0x0801edec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	ldr	r7, [r3]
	sub	sp, #4
	mov	r8, r0
	cmp	r7, #0
	bne	.L1ee24
	mov	r0, sp
	ldr	r3, .L1ee14	@ 0xe0e0
	add	r0, #2
	strh	r3, [r0]
	mov	r1, r8
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x810000a0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.L1ee4e

	.align	2, 0
.L1ee14:
	.word	0xe0e0
	.pool

.L1ee24:
	ldr	r5, =0x214
	mov	r0, r5
	bl	Func_8004938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_80158e8
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r8
	mov	r1, r7
	bl	_call_via_r6
	mov	r0, r6
	bl	free
.L1ee4e:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801edec

	.section .text.after_1ee68, "ax", %progbits
.thumb_func_start Func_801eea0  @ 0x0801eea0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e90
	ldr	r5, [r3]
	sub	r3, #4
	ldr	r3, [r3]
	ldr	r2, =0xea5
	add	r3, r2
	ldrb	r3, [r3]
	mov	r6, r0
	mov	r7, #4
	cmp	r3, #0
	beq	.L1eec2
	mov	r0, #0
	bl	_Func_80b6a60
	mov	r7, #3
	b	.L1eec6
.L1eec2:
	bl	_GetPartySize
.L1eec6:
	mov	r3, #1
	and	r3, r6
	cmp	r3, #0
	beq	.L1eed2
	add	r7, #1
	b	.L1eed8
.L1eed2:
	mov	r3, #3
	neg	r3, r3
	and	r6, r3
.L1eed8:
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r0, r3, #1
	mov	r3, #2
	and	r3, r6
	add	r1, r0, #1
	cmp	r3, #0
	beq	.L1eeea
	add	r1, r0, #6
.L1eeea:
	mov	r3, #0x1e
	sub	r3, r1
	mov	r2, #0
	strh	r3, [r5, #4]
	strh	r2, [r5, #6]
	strh	r1, [r5, #8]
	strh	r7, [r5, #0xa]
	strh	r6, [r5, #0xc]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801eea0

	.section .text.after_ef08, "ax", %progbits

.thumb_func_start Func_801ef68  @ 0x0801ef68
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r6, r0
	sub	sp, #4
	mov	r9, r3
	mov	r3, #0
	str	r3, [sp]
	ldrh	r3, [r6, #8]
	sub	r3, #1
	mov	r2, #1
	mov	r11, r3
	mov	r3, r1
	and	r3, r2
	ldrh	r7, [r6, #0xa]
	cmp	r3, #0
	bne	.L1ef9c
	mov	r3, #3
	neg	r3, r3
	and	r1, r3
.L1ef9c:
	mov	r3, #2
	and	r3, r1
	cmp	r3, #0
	beq	.L1efaa
	mov	r2, #5
	str	r2, [sp]
	mov	r2, #0
.L1efaa:
	ldr	r1, =.L371c4
	mov	r5, r2
	b	.L1f012
.L1efb0:
	ldrsb	r3, [r2, r5]
	ldr	r2, [sp]
	add	r0, r3, r2
	cmp	r0, r11
	bcs	.L1f010
	mov	r4, #0
	cmp	r7, #0
	beq	.L1f010
	ldr	r3, =0xf018
	sub	r2, r7, #1
	mov	r12, r2
	ldr	r2, =0xf00f
	mov	r10, r3
	add	r3, #1
	mov	r8, r3
	mov	r14, r2
.L1efd0:
	ldrh	r2, [r6, #0xe]
	ldrh	r3, [r6, #0xc]
	add	r2, r4
	add	r3, r0
	lsl	r2, #5
	add	r2, r3
	lsl	r2, #1
	mov	r3, r9
	add	r1, r2, r3
	cmp	r4, #0
	bne	.L1efea
	mov	r2, r10
	b	.L1f006
.L1efea:
	cmp	r4, r12
	bne	.L1f004
	mov	r3, r8
	strh	r3, [r1]
	b	.L1f008

	.pool_aligned

.L1f004:
	mov	r2, r14
.L1f006:
	strh	r2, [r1]
.L1f008:
	add	r4, #1
	cmp	r4, r7
	bne	.L1efd0
	ldr	r1, =.L371c4
.L1f010:
	add	r5, #1
.L1f012:
	mov	r2, r1
	ldrsb	r3, [r2, r5]
	cmp	r3, #0
	bge	.L1efb0
	ldr	r3, =0xea5
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1f054
	ldrh	r3, [r6, #0xa]
	ldrh	r2, [r6, #0xe]
	add	r2, r3
	ldrh	r3, [r6, #0xc]
	lsl	r2, #6
	lsl	r3, #1
	add	r2, r9
	add	r2, r3
	mov	r1, r2
	ldr	r3, .L1f060	@ 0xf080
	sub	r1, #0x40
	mov	r0, #1
	strh	r3, [r1]
	add	r1, #2
	cmp	r0, r11
	bcs	.L1f050
	ldr	r3, .L1f064	@ 0xf081
.L1f046:
	add	r0, #1
	strh	r3, [r1]
	add	r1, #2
	cmp	r0, r11
	bcc	.L1f046
.L1f050:
	ldr	r3, .L1f068	@ 0xf082
	strh	r3, [r1]
.L1f054:
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r9
	strb	r3, [r2]
	add	sp, #4
	b	.L1f078

	.align	2, 0
.L1f060:
	.word	0xf080
.L1f064:
	.word	0xf081
.L1f068:
	.word	0xf082
	.pool

.L1f078:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ef68

.thumb_func_start Func_801f088  @ 0x0801f088
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	str	r1, [sp, #0x10]
	mov	r9, r3
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r6, r0
	ldr	r1, =0xea5
	mov	r0, r9
	str	r3, [sp, #8]
	str	r0, [sp, #4]
	add	r3, r1
	ldrb	r3, [r3]
	mov	r5, r2
	cmp	r3, #0
	bne	.L1f0ca
	bl	GetSpritePalette
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50001c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x50001e8
	ldr	r2, =0x50001dc
	ldrh	r3, [r3]
	strh	r3, [r2]
.L1f0ca:
	ldrh	r3, [r6, #0xc]
	ldr	r2, [sp, #0x10]
	add	r2, r3
	str	r2, [sp, #0x10]
	ldrh	r3, [r6, #0xe]
	add	r5, r3
	lsl	r5, #5
	mov	r3, #4
	str	r5, [sp]
	str	r3, [sp, #0xc]
.L1f0de:
	ldr	r0, [sp]
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #8]
	add	r3, r0, r1
	lsl	r3, #1
	ldrh	r3, [r2, r3]
	mov	r10, r3
	ldr	r3, =0x22222222
	mov	r8, r3
	ldr	r3, =0x3ff
	mov	r1, r10
	ldr	r0, =0xcccccccc
	and	r1, r3
	mov	r2, r9
	mov	r12, r0
	mov	r10, r1
	cmp	r2, #7
	ble	.L1f10a
	ldr	r3, =0x88888888
	ldr	r0, =0xdddddddd
	mov	r8, r3
	b	.L1f134
.L1f10a:
	mov	r1, r9
	cmp	r1, #0
	blt	.L1f136
	lsl	r1, #2
	mov	r2, r8
	lsl	r2, r1
	mov	r8, r2
	ldr	r3, =0x88888888
	mov	r2, #0x20
	sub	r2, r1
	lsr	r3, r2
	mov	r0, r8
	orr	r0, r3
	mov	r3, r12
	lsl	r3, r1
	mov	r12, r3
	ldr	r3, =0xdddddddd
	mov	r8, r0
	lsr	r3, r2
	mov	r0, r12
	orr	r0, r3
.L1f134:
	mov	r12, r0
.L1f136:
	ldr	r2, =0x600001c
	mov	r1, #0
	mov	r14, r1
	mov	r11, r2
	mov	r7, #0
	b	.L1f190
.L1f142:
	mov	r3, r10
	lsl	r6, r3, #5
	mov	r0, r11
	sub	r3, r6, r7
	ldr	r4, [r3, r0]
	mov	r1, #0
	mov	r0, #0
	mov	r5, #0xf
.L1f152:
	mov	r2, r4
	and	r2, r5
	cmp	r2, #0xe
	bne	.L1f164
	lsl	r2, r1, #2
	mov	r3, r5
	lsl	r3, r2
	mov	r2, r8
	b	.L1f170
.L1f164:
	cmp	r2, #1
	bne	.L1f176
	lsl	r2, r1, #2
	mov	r3, r5
	lsl	r3, r2
	mov	r2, r12
.L1f170:
	and	r3, r2
	orr	r0, r3
	b	.L1f17c
.L1f176:
	lsl	r3, r1, #2
	lsl	r2, r3
	orr	r0, r2
.L1f17c:
	add	r1, #1
	lsr	r4, #4
	cmp	r1, #7
	ble	.L1f152
	sub	r3, r6, r7
	mov	r1, r11
	mov	r2, #1
	str	r0, [r3, r1]
	add	r7, #4
	add	r14, r2
.L1f190:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L1f19e
	mov	r0, r14
	cmp	r0, #2
	ble	.L1f142
	b	.L1f1a4
.L1f19e:
	mov	r1, r14
	cmp	r1, #0
	ble	.L1f142
.L1f1a4:
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #0x10]
	mov	r2, #8
	neg	r2, r2
	sub	r3, #1
	add	r0, #1
	add	r9, r2
	str	r3, [sp, #0xc]
	str	r0, [sp, #0x10]
	cmp	r3, #0
	bge	.L1f0de
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801f088

.thumb_func_start Func_801f200  @ 0x0801f200
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e90
	ldr	r6, [r3]
	mov	r2, r3
	sub	r3, #4
	ldr	r3, [r3]
	sub	sp, #0x34
	sub	r2, #0x1c
	mov	r5, #0
	ldr	r1, =0xea5
	ldr	r7, [r2]
	mov	r11, r0
	ldr	r0, [r6]
	str	r3, [sp, #0x20]
	str	r5, [sp, #0x18]
	add	r3, r1
	ldrb	r3, [r3]
	mov	r8, r0
	cmp	r3, #0
	beq	.L1f288
	mov	r0, #0
	bl	_Func_80b6a60
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	mov	r10, r3
	str	r0, [sp, #0x1c]
	str	r2, [sp, #0x18]
	cmp	r10, r0
	bcs	.L1f2d8
	mov	r4, sp
	add	r4, #0x28
	str	r4, [sp, #0x10]
	mov	r3, #0x58
	ldrh	r3, [r7, r3]
	mov	r0, r4
	mov	r1, #0xff
	strh	r3, [r0]
	lsl	r1, #16
	lsl	r3, #16
	cmp	r3, r1
	beq	.L1f2d8
	mov	r2, r7
	ldr	r0, [sp, #0x10]
	add	r2, #0x58
	mov	r1, #0
.L1f26a:
	mov	r3, #1
	ldr	r4, [sp, #0x1c]
	add	r10, r3
	add	r1, #2
	cmp	r10, r4
	bcs	.L1f2d8
	add	r2, #2
	ldrh	r3, [r2]
	mov	r4, #0xff
	strh	r3, [r1, r0]
	lsl	r4, #16
	lsl	r3, #16
	cmp	r3, r4
	bne	.L1f26a
	b	.L1f2d8
.L1f288:
	bl	_GetPartySize
	str	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x1c]
	mov	r0, #0
	mov	r10, r0
	cmp	r10, r1
	bcs	.L1f2c8
	mov	r2, sp
	ldr	r3, =gState
	mov	r4, #0xfc
	add	r2, #0x28
	lsl	r4, #1
	str	r2, [sp, #0x10]
	mov	r1, r2
	add	r2, r3, r4
.L1f2a8:
	ldrb	r3, [r2]
	strh	r3, [r1]
	mov	r0, #1
	ldr	r3, [sp, #0x1c]
	add	r10, r0
	add	r2, #1
	add	r1, #2
	cmp	r10, r3
	bcc	.L1f2a8
	b	.L1f2ce

	.pool_aligned

.L1f2c8:
	mov	r4, sp
	add	r4, #0x28
	str	r4, [sp, #0x10]
.L1f2ce:
	mov	r0, r10
	ldr	r3, =0xff
	ldr	r1, [sp, #0x10]
	lsl	r2, r0, #1
	strh	r3, [r1, r2]
.L1f2d8:
	mov	r3, #1
	mov	r2, r10
	neg	r3, r3
	str	r2, [sp, #0x1c]
	cmp	r11, r3
	bne	.L1f2e8
	ldrh	r4, [r6, #0xc]
	mov	r11, r4
.L1f2e8:
	mov	r3, #1
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0
	bne	.L1f2fa
	mov	r3, #3
	neg	r3, r3
	and	r0, r3
	mov	r11, r0
.L1f2fa:
	ldr	r1, [sp, #0x20]
	ldr	r2, =0xea5
	add	r3, r1, r2
	ldrb	r3, [r3]
	b	.L1f30c

	.pool_aligned

.L1f30c:
	cmp	r3, #0
	beq	.L1f31c
	mov	r0, #0
	mov	r1, #0
	bl	_Func_80be0b4
	cmp	r0, #0
	bne	.L1f326
.L1f31c:
	mov	r3, #3
	mov	r4, r11
	neg	r3, r3
	and	r4, r3
	mov	r11, r4
.L1f326:
	mov	r0, r11
	cmp	r0, #9
	bne	.L1f33a
	ldrh	r0, [r6, #4]
	ldrh	r1, [r6, #6]
	ldrh	r2, [r6, #8]
	ldrh	r3, [r6, #0xa]
	bl	ClearUIRegion
	b	.L1f5a6
.L1f33a:
	ldr	r1, [sp, #0x20]
	ldr	r2, =0xea6
	add	r3, r1, r2
	mov	r2, #1
	strb	r2, [r3]
	ldrh	r3, [r6, #0xc]
	cmp	r3, r11
	bne	.L1f35a
	mov	r0, r8
	bl	Func_8016498
	mov	r0, r8
	mov	r1, r11
	bl	Func_801ef68
	b	.L1f392
.L1f35a:
	ldrh	r1, [r6, #6]
	ldrh	r2, [r6, #8]
	ldrh	r3, [r6, #0xa]
	ldrh	r0, [r6, #4]
	bl	ClearUIRegion
	mov	r0, r11
	bl	Func_801eea0
	ldrh	r3, [r6, #8]
	mov	r4, r8
	strh	r3, [r4, #8]
	ldrh	r3, [r6, #0xa]
	mov	r0, r8
	strh	r3, [r0, #0xa]
	ldrh	r3, [r6, #4]
	mov	r1, r8
	strh	r3, [r1, #0xc]
	ldrh	r0, [r6, #4]
	ldrh	r1, [r6, #6]
	ldrh	r2, [r6, #8]
	ldrh	r3, [r6, #0xa]
	bl	Func_80170f8
	mov	r0, r8
	mov	r1, r11
	bl	Func_801ef68
.L1f392:
	mov	r3, #2
	mov	r2, r11
	and	r3, r2
	cmp	r3, #0
	beq	.L1f39e
	mov	r5, #5
.L1f39e:
	ldr	r4, [sp, #0x1c]
	mov	r3, #0
	mov	r10, r3
	cmp	r4, #0
	bne	.L1f3aa
	b	.L1f4ea
.L1f3aa:
	ldr	r1, [sp, #0x18]
	mov	r0, sp
	lsl	r1, #3
	add	r2, r5, #1
	add	r0, #0x28
	lsl	r5, #3
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	str	r1, [sp, #0x14]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	mov	r9, r5
.L1f3c2:
	ldr	r3, [sp, #4]
	ldr	r4, [sp, #0x10]
	ldrh	r0, [r3, r4]
	bl	_GetUnit
	mov	r5, r0
	mov	r0, #0x38
	ldrsh	r7, [r5, r0]
	mov	r1, #0x34
	ldrsh	r3, [r5, r1]
	cmp	r7, #0
	bne	.L1f3e2
	mov	r0, #2
	bl	SetTextColor
	b	.L1f3fc
.L1f3e2:
	cmp	r3, #0
	bge	.L1f3e8
	add	r3, #3
.L1f3e8:
	asr	r3, #2
	cmp	r7, r3
	bgt	.L1f3f6
	mov	r0, #4
	bl	SetTextColor
	b	.L1f3fc
.L1f3f6:
	mov	r0, #0xf
	bl	SetTextColor
.L1f3fc:
	ldr	r2, [sp, #0x20]
	ldr	r3, =0xea7
	add	r6, r2, r3
	mov	r3, #0xe
	strb	r3, [r6]
	ldr	r4, [sp, #0x20]
	ldr	r0, =0xea5
	add	r3, r4, r0
	ldrb	r3, [r3]
	mov	r2, #0
	cmp	r3, #0
	beq	.L1f418
	mov	r3, #5
	strb	r3, [r6]
.L1f418:
	ldr	r3, [sp, #0x14]
	str	r2, [sp]
	mov	r1, r8
	mov	r2, r9
	add	r3, #8
	mov	r0, r7
	bl	Func_801ea3c
	mov	r3, #0xf
	strb	r3, [r6]
	mov	r1, r8
	mov	r2, r9
	mov	r0, r5
	ldr	r3, [sp, #0x14]
	bl	Func_801e8b0
	mov	r0, #0xf
	bl	SetTextColor
	mov	r2, #0x34
	ldrsh	r1, [r5, r2]
	cmp	r1, #0
	beq	.L1f46c
	mov	r3, #0x38
	ldrsh	r6, [r5, r3]
	lsl	r0, r6, #2
	add	r0, r6
	lsl	r0, #3
	bl	__divsi3
	mov	r3, r0
	cmp	r3, #0
	bne	.L1f460
	cmp	r6, #0
	beq	.L1f460
	mov	r3, #1
.L1f460:
	ldr	r2, [sp, #0x18]
	mov	r0, r8
	ldr	r1, [sp, #8]
	add	r2, #2
	bl	Func_801f088
.L1f46c:
	mov	r1, #1
	mov	r3, r11
	and	r3, r1
	cmp	r3, #0
	beq	.L1f4ce
	ldr	r4, [sp, #0x20]
	ldr	r0, =0xea7
	mov	r3, #0xe
	add	r2, r4, r0
	strb	r3, [r2]
	sub	r0, #2
	add	r3, r4, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1f48e
	mov	r3, #5
	strb	r3, [r2]
.L1f48e:
	ldr	r3, [sp, #0xc]
	mov	r2, #0x3a
	ldrsh	r0, [r5, r2]
	add	r3, #0x10
	str	r1, [sp]
	mov	r2, r9
	mov	r1, r8
	bl	Func_801ea3c
	mov	r3, #0x36
	ldrsh	r1, [r5, r3]
	cmp	r1, #0
	beq	.L1f4ce
	mov	r4, #0x3a
	ldrsh	r6, [r5, r4]
	lsl	r0, r6, #2
	add	r0, r6
	lsl	r0, #3
	bl	__divsi3
	mov	r3, r0
	cmp	r3, #0
	bne	.L1f4c2
	cmp	r6, #0
	beq	.L1f4c2
	mov	r3, #1
.L1f4c2:
	ldr	r2, [sp, #0x18]
	mov	r0, r8
	ldr	r1, [sp, #8]
	add	r2, #3
	bl	Func_801f088
.L1f4ce:
	ldr	r0, [sp, #8]
	ldr	r2, [sp, #4]
	mov	r3, #1
	ldr	r4, [sp, #0x1c]
	add	r0, #6
	mov	r1, #0x30
	add	r2, #2
	add	r10, r3
	str	r0, [sp, #8]
	add	r9, r1
	str	r2, [sp, #4]
	cmp	r10, r4
	beq	.L1f4ea
	b	.L1f3c2
.L1f4ea:
	ldr	r0, [sp, #0x20]
	ldr	r1, =0xea7
	mov	r3, #0
	add	r2, r0, r1
	mov	r10, r3
	ldr	r4, =0xea5
	mov	r3, #0xf
	strb	r3, [r2]
	add	r3, r0, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1f59c
	mov	r3, #2
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0
	beq	.L1f59c
	mov	r3, #1
	and	r3, r0
	ldr	r7, [sp, #0x18]
	cmp	r3, #0
	beq	.L1f518
	add	r7, #1
.L1f518:
	add	r6, sp, #0x24
	mov	r1, r6
	mov	r0, #0
	bl	_Func_80be0b4
	mov	r2, r10
	str	r2, [sp]
	ldr	r1, =0x5001
	mov	r0, r8
	mov	r2, #0
	mov	r3, r7
	bl	Func_8019000
	mov	r3, r10
	str	r3, [sp]
	ldr	r1, =0x5002
	mov	r0, r8
	mov	r2, #2
	mov	r3, r7
	bl	Func_8019000
	add	r5, r7, #1
	mov	r4, r10
	ldr	r1, =0x5003
	mov	r0, r8
	mov	r2, #0
	mov	r3, r5
	str	r4, [sp]
	bl	Func_8019000
	mov	r0, r10
	str	r0, [sp]
	ldr	r1, =0x5004
	mov	r0, r8
	mov	r2, #2
	mov	r3, r5
	bl	Func_8019000
	ldrb	r1, [r6]
	mov	r2, #1
	add	r1, #0x30
	mov	r3, r7
	mov	r0, r8
	bl	Func_8018efc
	ldrb	r1, [r6, #1]
	mov	r2, #3
	add	r1, #0x30
	mov	r3, r7
	mov	r0, r8
	bl	Func_8018efc
	ldrb	r1, [r6, #2]
	mov	r2, #1
	add	r1, #0x30
	mov	r3, r5
	mov	r0, r8
	bl	Func_8018efc
	ldrb	r1, [r6, #3]
	mov	r0, r8
	add	r1, #0x30
	mov	r2, #3
	mov	r3, r5
	bl	Func_8018efc
.L1f59c:
	ldr	r1, [sp, #0x20]
	ldr	r3, =0xea6
	add	r2, r1, r3
	mov	r3, #0
	strb	r3, [r2]
.L1f5a6:
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801f200
