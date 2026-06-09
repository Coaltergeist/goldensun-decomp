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

.thumb_func_start Func_801ee68  @ 0x0801ee68
	push	{r5, r6, lr}
	mov	r5, r3
	mov	r4, #0
	ldr	r6, [sp, #0xc]
	ldr	r0, =0x6002000
	cmp	r4, r5
	bcs	.L1ee94
	mov	r3, #0x20
	sub	r3, r2
	lsl	r3, #1
.L1ee7c:
	mov	r1, #0
	cmp	r1, r2
	bcs	.L1ee8c
.L1ee82:
	add	r1, #1
	strh	r6, [r0]
	add	r0, #2
	cmp	r1, r2
	bcc	.L1ee82
.L1ee8c:
	add	r4, #1
	add	r0, r3
	cmp	r4, r5
	bcc	.L1ee7c
.L1ee94:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_801ee68

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

.thumb_func_start Func_801ef08  @ 0x0801ef08
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r8, r0
	mov	r1, #0x10
	mov	r0, #0x10
	sub	sp, #4
	bl	galloc_ewram
	ldr	r3, =iwram_3001e8c
	ldr	r6, [r3]
	ldr	r3, =0xea6
	add	r6, r3
	mov	r3, #0
	mov	r10, r3
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r6]
	mov	r0, r8
	bl	Func_801eea0
	ldrh	r3, [r5, #0xa]
	ldrh	r1, [r5, #6]
	ldrh	r2, [r5, #8]
	mov	r4, #6
	ldrh	r0, [r5, #4]
	str	r4, [sp]
	bl	CreateUIBox
	str	r0, [r5]
	mov	r0, r8
	bl	Func_801f200
	mov	r3, r10
	strb	r3, [r6]
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_801ef08

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

.thumb_func_start Func_801f5d4  @ 0x0801f5d4
	push	{lr}
	ldr	r3, =iwram_3001e90
	ldr	r3, [r3]
	mov	r1, #1
	ldr	r0, [r3]
	bl	CloseUIBox
	mov	r0, #0x10
	bl	gfree
	pop	{r0}
	bx	r0
.func_end Func_801f5d4

.thumb_func_start Func_801f5f0  @ 0x0801f5f0
	push	{r5, r6, r7, lr}
	mov	r6, r3
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r12, r3
	ldrh	r3, [r0, #0xc]
	add	r3, r1, r3
	add	r1, r3, #1
	ldrh	r3, [r0, #0xe]
	ldr	r7, [sp, #0x14]
	add	r3, r2, r3
	add	r2, r3, #1
	mov	r3, #1
	and	r7, r3
	ldr	r5, [sp, #0x10]
	lsl	r7, #12
	cmp	r1, #0
	bge	.L1f618
	add	r6, r1
	mov	r1, #0
.L1f618:
	add	r3, r1, r6
	cmp	r3, #0x1d
	ble	.L1f622
	mov	r3, #0x1e
	sub	r6, r3, r1
.L1f622:
	cmp	r2, #0
	bge	.L1f62a
	add	r5, r2
	mov	r2, #0
.L1f62a:
	add	r3, r2, r5
	cmp	r3, #0x1d
	ble	.L1f634
	mov	r3, #0x14
	sub	r5, r3, r2
.L1f634:
	cmp	r6, #0
	ble	.L1f66e
	cmp	r5, #0
	ble	.L1f66e
	lsl	r2, #6
	lsl	r3, r1, #1
	add	r1, r2, r3
.L1f642:
	mov	r3, r12
	mov	r0, r6
	add	r4, r1, r3
	cmp	r0, #0
	beq	.L1f65e
	ldr	r2, =0xffffefff
.L1f64e:
	ldrh	r3, [r4]
	and	r3, r2
	orr	r3, r7
	sub	r0, #1
	strh	r3, [r4]
	add	r4, #2
	cmp	r0, #0
	bne	.L1f64e
.L1f65e:
	sub	r5, #1
	add	r1, #0x40
	cmp	r5, #0
	bne	.L1f642
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r12
	strb	r3, [r2]
.L1f66e:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801f5f0

.thumb_func_start Func_801f680  @ 0x0801f680
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	mov	r1, #0xe1
	lsl	r1, #4
	sub	sp, #0x40
	bl	__udivsi3
	ldr	r3, =0xea5f
	mov	r6, r0
	cmp	r6, r3
	bls	.L1f69c
	mov	r6, r3
.L1f69c:
	mov	r0, r6
	mov	r1, #0x3c
	bl	__udivsi3
	mov	r1, #0x3c
	mov	r5, r0
	mov	r0, r6
	bl	__umodsi3
	mov	r8, sp
	mov	r1, r5
	mov	r6, r0
	mov	r2, #3
	mov	r0, r8
	bl	PrintNum
	ldrb	r3, [r0]
	strb	r3, [r7]
	add	r0, #1
	ldrb	r3, [r0]
	add	r5, r7, #1
	strb	r3, [r5]
	ldrb	r3, [r0, #1]
	add	r5, #1
	strb	r3, [r5]
	add	r6, #0x64
	mov	r3, #0x3a
	add	r5, #1
	strb	r3, [r5]
	mov	r0, r8
	mov	r1, r6
	mov	r2, #2
	bl	PrintNum
	ldrb	r3, [r0]
	add	r5, #1
	strb	r3, [r5]
	ldrb	r3, [r0, #1]
	add	r5, #1
	strb	r3, [r5]
	mov	r3, #0
	mov	r0, r7
	strb	r3, [r5, #1]
	add	sp, #0x40
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801f680

.thumb_func_start Func_801f704  @ 0x0801f704
	push	{lr}
	ldr	r3, =iwram_3001f1c
	mov	r1, #0x82
	ldr	r3, [r3]
	lsl	r1, #5
	add	r2, r3, r1
	mov	r0, #0
.L1f712:
	ldrb	r3, [r2, #0x1c]
	cmp	r3, #0
	beq	.L1f722
	add	r0, #1
	add	r2, #0x40
	cmp	r0, #2
	bls	.L1f712
	ldr	r0, =0x3e7
.L1f722:
	pop	{r1}
	bx	r1
.func_end Func_801f704

.thumb_func_start Func_801f730  @ 0x0801f730
	push	{r5, r6, lr}
	mov	r6, r0
	bl	Func_80056cc
	mov	r5, #9
	neg	r5, r5
	cmp	r0, #0
	bne	.L1f766
	bl	Func_8005c68
	mov	r5, r0
	cmp	r6, #0
	beq	.L1f766
	ldr	r3, =iwram_3001f1c
	ldr	r1, =0x1071
	ldr	r3, [r3]
	add	r2, r3, r1
	mov	r1, #2
.L1f754:
	ldrb	r3, [r2]
	lsl	r3, #24
	add	r2, #0x40
	cmp	r3, #0
	beq	.L1f760
	sub	r5, #1
.L1f760:
	sub	r1, #1
	cmp	r1, #0
	bge	.L1f754
.L1f766:
	bl	Func_8005cf8
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_801f730

.thumb_func_start Func_801f77c  @ 0x0801f77c
	push	{r5, r6, r7, lr}
	bl	Func_80056cc
	mov	r6, #9
	mov	r5, #0
	neg	r6, r6
	cmp	r0, #0
	bne	.L1f7f6
	bl	Func_8005c68
	ldr	r3, =iwram_3001f1c
	ldr	r1, [r3]
	ldr	r3, =ewram_2002010
	ldr	r2, =ewram_200200c
	strh	r5, [r3]
	mov	r7, r3
	ldr	r3, =0x1070
	strh	r5, [r2]
	ldr	r4, .L1f7d0	@ 1
	mov	r6, r0
	add	r1, r3
	mov	r0, #2
.L1f7a8:
	mov	r3, #1
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L1f7b4
	strh	r4, [r7]
	add	r5, #1
.L1f7b4:
	mov	r3, #2
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L1f7be
	strh	r4, [r2]
.L1f7be:
	sub	r0, #1
	add	r1, #0x40
	cmp	r0, #0
	bge	.L1f7a8
	ldr	r3, =gKeyHeld
	mov	r2, #0x90
	ldr	r3, [r3]
	b	.L1f7e8

	.align	2, 0
.L1f7d0:
	.word	1
	.pool

.L1f7e8:
	lsl	r2, #1
	and	r3, r2
	cmp	r3, r2
	beq	.L1f7f6
	ldr	r2, =ewram_2002010
	ldr	r3, .L1f808	@ 0
	strh	r3, [r2]
.L1f7f6:
	bl	Func_8005cf8
	cmp	r6, #0
	beq	.L1f810
	cmp	r5, r6
	bne	.L1f810
	mov	r0, r6
	add	r0, #0x64
	b	.L1f812

	.align	2, 0
.L1f808:
	.word	0
	.pool

.L1f810:
	mov	r0, r6
.L1f812:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801f77c

.thumb_func_start PrepareSaveHeader  @ 0x0801f818
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	ldr	r5, =ewram_2000000
	sub	sp, #0x1c
	mov	r8, r0
	bl	_Func_8077cb8
	ldr	r2, =gState
	ldr	r3, =iwram_3001c9c
	str	r0, [r2]
	mov	r0, #0x80
	ldr	r1, [r3]
	ldr	r3, =ewram_2001000
	lsl	r0, #1
	add	r3, r0
	str	r1, [r2, #4]
	str	r1, [r3]
	ldr	r3, =iwram_3001d08
	ldr	r0, =0x22a
	ldrb	r1, [r3]
	add	r3, r2, r0
	strb	r1, [r3]
	mov	r1, #0xfa
	lsl	r1, #1
	add	r2, r1
	ldr	r0, [r2]
	bl	_GetUnit
	mov	r7, r5
	mov	r6, r0
	mov	r1, r5
	sub	r7, #0x10
	mov	r2, r6
	mov	r5, #0xb
.L1f860:
	ldrb	r3, [r2]
	sub	r5, #1
	strb	r3, [r1]
	add	r2, #1
	add	r1, #1
	cmp	r5, #0
	bge	.L1f860
	ldrb	r3, [r6, #0xf]
	ldr	r5, =gState
	strb	r3, [r7, #0x1c]
	ldr	r3, [r5, #4]
	mov	r2, #0xe0
	str	r3, [r7, #0x20]
	lsl	r2, #1
	add	r3, r5, r2
	add	r2, #2
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	bl	_GetLocationName
	strh	r0, [r7, #0x1e]
	ldr	r0, =0x129
	add	r3, r6, r0
	ldrb	r3, [r3]
	strb	r3, [r7, #0x1d]
	ldr	r3, [r5, #0x10]
	mov	r0, #0
	str	r3, [r7, #0x24]
	bl	_GetNumDjinn
	mov	r3, r7
	add	r3, #0x28
	strb	r0, [r3]
	mov	r0, #1
	bl	_GetNumDjinn
	mov	r3, r7
	add	r3, #0x29
	strb	r0, [r3]
	mov	r0, #2
	bl	_GetNumDjinn
	mov	r3, r7
	add	r3, #0x2a
	strb	r0, [r3]
	mov	r0, #3
	bl	_GetNumDjinn
	mov	r3, r7
	add	r3, #0x2b
	mov	r6, sp
	strb	r0, [r3]
	mov	r5, #0
	mov	r0, r6
	bl	_Func_80796c4
	ldrh	r3, [r6, r5]
	cmp	r3, #0xff
	beq	.L1f8f8
	mov	r1, r7
	mov	r0, r6
	add	r1, #0x2c
	mov	r2, #0
.L1f8e4:
	ldrh	r3, [r2, r0]
	add	r5, #1
	strb	r3, [r1]
	add	r2, #2
	add	r1, #1
	cmp	r5, #3
	bgt	.L1f8f8
	ldrh	r3, [r2, r6]
	cmp	r3, #0xff
	bne	.L1f8e4
.L1f8f8:
	mov	r1, #1
	mov	r2, r5
	neg	r1, r1
	mov	r3, r1
	add	r2, #0x2c
	strb	r3, [r7, r2]
	ldr	r0, =0x205
	ldr	r2, =gState
	add	r3, r2, r0
	ldrb	r1, [r3]
	mov	r3, r7
	add	r3, #0x34
	strb	r1, [r3]
	ldr	r1, =0x206
	add	r3, r2, r1
	ldrb	r3, [r3]
	mov	r1, r7
	add	r1, #0x35
	strb	r3, [r1]
	ldr	r3, =0x20f
	add	r2, r3
	ldrb	r3, [r2]
	mov	r2, r7
	add	r2, #0x31
	strb	r3, [r2]
	mov	r3, r7
	add	r3, #0x32
	mov	r0, #0
	strb	r0, [r3]
	mov	r5, #0x30
	mov	r6, r3
.L1f936:
	mov	r0, r5
	bl	_GetFlag
	cmp	r0, #0
	beq	.L1f946
	ldrb	r3, [r6]
	add	r3, #1
	strb	r3, [r6]
.L1f946:
	add	r5, #1
	cmp	r5, #0x7f
	ble	.L1f936
	mov	r0, #0x20
	bl	_GetFlag
	neg	r3, r0
	orr	r3, r0
	mov	r2, r7
	lsr	r3, #31
	add	r2, #0x33
	strb	r3, [r2]
	ldr	r3, =gState
	mov	r1, #0xf2
	ldr	r3, [r3]
	ldr	r2, =gFlags
	mov	r5, #0
	lsl	r1, #2
	strh	r3, [r7, #0x36]
	b	.L1f974
.L1f96e:
	ldmia	r2!, {r3}
	add	r5, #1
	add	r8, r3
.L1f974:
	cmp	r5, r1
	blt	.L1f96e
	mov	r0, r8
	str	r0, [r7, #0x3c]
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end PrepareSaveHeader

.thumb_func_start Func_801f9b4  @ 0x0801f9b4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, =ewram_2002004
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L1fa20
	bl	Func_80056cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L1f9e2
	ldr	r0, =_MSG_0a
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #9
	b	.L1fa16
.L1f9e2:
	bl	PrepareSaveHeader
	ldr	r5, =ewram_2000000
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r1, r5
	bl	SomethingSaveHeader
	mov	r6, r0
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r3, #0x80
	lsl	r3, #5
	add	r5, r3
	add	r0, #3
	mov	r1, r5
	bl	SomethingSaveHeader
	orr	r6, r0
	cmp	r6, #0
	beq	.L1fa1a
	ldr	r0, =_MSG_0b
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #3
.L1fa16:
	neg	r3, r3
	mov	r8, r3
.L1fa1a:
	bl	Func_8005cf8
	mov	r0, r8
.L1fa20:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801f9b4

.thumb_func_start Func_801fa3c  @ 0x0801fa3c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	mov	r7, r0
	mov	r8, r3
	bl	Func_80056cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L1fa5e
	ldr	r0, =_MSG_0a
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #9
	b	.L1fa88
.L1fa5e:
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
	cmp	r6, #0
	beq	.L1fa8c
	ldr	r0, =_MSG_0b
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #3
.L1fa88:
	neg	r3, r3
	mov	r8, r3
.L1fa8c:
	bl	Func_8005cf8
	mov	r0, r8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801fa3c

.thumb_func_start Func_801faa8  @ 0x0801faa8
	push	{r5, r6, r7, lr}
	mov	r0, #0x80
	lsl	r0, #5
	bl	Func_8004970
	ldr	r6, =ewram_2002004
	mov	r5, r0
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	mov	r3, #1
	neg	r3, r3
	mov	r7, #0
	cmp	r0, r3
	beq	.L1fb28
	bl	Func_80056cc
	cmp	r0, #0
	beq	.L1fad8
	ldr	r0, =_MSG_0a
	mov	r1, #1
	mov	r7, #9
	bl	Func_801776c
	b	.L1fb1a
.L1fad8:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	mov	r1, r5
	bl	Func_8005a78
	cmp	r0, #0
	beq	.L1faf2
	ldr	r0, =_MSG_0b
	mov	r1, #1
	bl	Func_801776c
	mov	r7, #2
	neg	r7, r7
.L1faf2:
	ldr	r1, =ewram_20004e4
	ldr	r3, =ewram_2000000
	add	r0, r5, r1
	sub	r0, r3
	mov	r2, #0x10
	ldr	r3, =Func_8001af8
	bl	_call_via_r3
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	mov	r1, r5
	bl	SomethingSaveHeader
	cmp	r0, #0
	beq	.L1fb1c
	ldr	r0, =_MSG_0b
	mov	r1, #1
	bl	Func_801776c
	mov	r7, #3
.L1fb1a:
	neg	r7, r7
.L1fb1c:
	bl	Func_8005cf8
	mov	r0, r5
	bl	free
	mov	r0, r7
.L1fb28:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801faa8

.thumb_func_start Func_801fb48  @ 0x0801fb48
	push	{r5, lr}
	mov	r1, #8
	mov	r2, #0xc
	mov	r3, #2
	ldr	r0, =0x14
	bl	Func_8017658
	b	.L1fb5e
.L1fb58:
	mov	r0, #1
	bl	WaitFrames
.L1fb5e:
	bl	Func_8017364
	cmp	r0, #0
	beq	.L1fb58
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	mov	r3, #1
	bl	YesNoMenu
	cmp	r0, #0
	beq	.L1fb7c
	bl	Func_8019a54
	b	.L1fb98
.L1fb7c:
	bl	Func_8019a54
	mov	r0, #0x55
	bl	_PlaySound
	bl	Func_801faa8
	mov	r5, r0
	cmp	r5, #0
	blt	.L1fb98
	ldr	r0, =_MSG_17
	mov	r1, #1
	bl	Func_801776c
.L1fb98:
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_801fb48

.thumb_func_start Func_801fba8  @ 0x0801fba8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r3, #0
	mov	r8, r3
	bl	Func_80056cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L1fbca
	ldr	r0, =_MSG_0a
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #9
	b	.L1fc4c
.L1fbca:
	bl	Func_8005c68
	mov	r0, #0
	mov	r1, #2
	bl	Func_8020244
	mov	r3, #1
	mov	r5, r0
	neg	r3, r3
	cmp	r5, r3
	bne	.L1fbe4
	mov	r8, r5
	b	.L1fc5a
.L1fbe4:
	ldr	r7, =ewram_2000000
	mov	r0, r5
	mov	r1, r7
	bl	Func_8005a78
	mov	r3, #0x80
	lsl	r3, #5
	add	r3, r7
	mov	r10, r3
	mov	r6, r0
	mov	r1, r10
	add	r0, r5, #3
	bl	Func_8005a78
	orr	r6, r0
	cmp	r6, #0
	beq	.L1fc12
	ldr	r0, =_MSG_0c
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #2
	b	.L1fc4c
.L1fc12:
	bl	Func_801f704
	ldr	r3, =0x3e7
	mov	r5, r0
	cmp	r5, r3
	bne	.L1fc2a
	ldr	r0, =_MSG_0d
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #5
	b	.L1fc4c
.L1fc2a:
	mov	r1, r7
	mov	r0, r5
	bl	SomethingSaveHeader
	mov	r1, r10
	mov	r6, r0
	add	r0, r5, #3
	bl	SomethingSaveHeader
	orr	r6, r0
	cmp	r6, #0
	beq	.L1fc52
	ldr	r0, =_MSG_0d
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #3
.L1fc4c:
	neg	r3, r3
	mov	r8, r3
	b	.L1fc5a
.L1fc52:
	ldr	r0, =_MSG_19
	mov	r1, #1
	bl	Func_801776c
.L1fc5a:
	bl	Func_8005cf8
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801fba8

.thumb_func_start Func_801fc84  @ 0x0801fc84
	push	{r5, r6, r7, lr}
	bl	Func_80056cc
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.L1fc9e
	ldr	r0, =_MSG_0a
	mov	r1, #1
	bl	Func_801776c
	sub	r7, #9
	b	.L1fd18
.L1fc9e:
	bl	Func_8005c68
	mov	r0, #0
	mov	r1, #3
	bl	Func_8020244
	mov	r3, #1
	mov	r6, r0
	neg	r3, r3
	cmp	r6, r3
	bne	.L1fcb8
	mov	r7, r6
	b	.L1fd18
.L1fcb8:
	mov	r1, #8
	mov	r2, #1
	mov	r3, #2
	ldr	r0, =0x16
	bl	Func_8017658
	b	.L1fccc
.L1fcc6:
	mov	r0, #1
	bl	WaitFrames
.L1fccc:
	bl	Func_8017364
	cmp	r0, #0
	beq	.L1fcc6
	mov	r0, #1
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	bl	YesNoMenu
	cmp	r0, #0
	beq	.L1fcea
	bl	Func_8019a54
	b	.L1fd18
.L1fcea:
	bl	Func_8019a54
	mov	r0, r6
	bl	Func_8005ac0
	mov	r5, r0
	add	r0, r6, #3
	bl	Func_8005ac0
	orr	r5, r0
	cmp	r5, #0
	beq	.L1fd10
	ldr	r0, =_MSG_0d
	mov	r1, #1
	mov	r7, #4
	bl	Func_801776c
	neg	r7, r7
	b	.L1fd18
.L1fd10:
	ldr	r0, =_MSG_18
	mov	r1, #1
	bl	Func_801776c
.L1fd18:
	bl	Func_8005cf8
	mov	r0, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801fc84

.thumb_func_start Func_801fd34  @ 0x0801fd34
	push	{r5, r6, r7, lr}
	ldr	r7, =iwram_3001800
	ldr	r6, =0x50001d0
	mov	r5, #0
.L1fd3c:
	ldr	r3, [r7]
	lsl	r2, r5, #3
	add	r3, r2
	lsl	r0, r3, #1
	add	r0, r3
	lsl	r0, #8
	bl	sin
	cmp	r0, #0
	bge	.L1fd54
	ldr	r3, =0x3fff
	add	r0, r3
.L1fd54:
	asr	r3, r0, #14
	lsl	r1, r3, #1
	mov	r2, r3
	add	r1, #0x16
	add	r2, #0x10
	add	r3, #0x14
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	strh	r3, [r6]
	add	r6, #2
	add	r5, #1
	cmp	r5, #3
	ble	.L1fd3c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801fd34

