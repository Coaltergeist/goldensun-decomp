	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801d9d4  @ 0x0801d9d4
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
	bl	_GetFlag
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
	ldr	r3, =gDebugMode
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
	bl	CreateUIBox
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
	bl	DrawSmallText
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0x30
	mov	r3, #0x1c
	bl	DrawSmallText
	mov	r7, #0x34
.L1da82:
	mov	r3, r7
	ldr	r0, =0xc25
	mov	r1, r8
	mov	r2, #0x30
	bl	DrawSmallText
	ldr	r3, =gDebugMode
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
	bl	DrawSmallText
	add	r0, r5, #1
	mov	r3, r7
	mov	r1, r8
	mov	r2, #0x30
	add	r7, #0x18
	add	r5, #2
	bl	DrawSmallText
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0x30
	mov	r3, r7
	bl	DrawSmallText
.L1dac4:
	bl	AllocSpriteSlot
	mov	r5, r0
	cmp	r5, #0x5f
	bgt	.L1db02
	ldr	r2, =Data_310a4
	mov	r1, #0x80
	bl	UploadSpriteGFX
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

