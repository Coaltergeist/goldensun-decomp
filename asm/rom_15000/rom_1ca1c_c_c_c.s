	.include "macros.inc"
	.include "gba.inc"

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

.thumb_func_start StartMenu_Main
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
	bl	_GetFlag
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r5, r0
	bl	Func_801d980
	ldr	r3, =iwram_3001ea0
	ldr	r3, [r3]
	mov	r10, r3
	bl	Func_801d9d4
	ldr	r6, =gDebugMode
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
	bl	WaitFrames
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
	bl	StartMenu_AddOption
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
	bl	WaitFrames
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L1dc90
	mov	r0, #0x70
	mov	r5, r8
	bl	_PlaySound
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
	bl	_PlaySound
	b	.L1dcdc
.L1dca6:
	ldr	r1, =gKeyRepeat
	ldr	r2, [r1]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L1dcc4
	mov	r0, #0x6f
	bl	_PlaySound
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
	bl	_PlaySound
	mov	r0, #1
	add	r8, r0
	str	r0, [sp, #0xc]
	b	.L1dbe6
.L1dcdc:
	ldr	r0, [sp, #0x10]
	mov	r1, #2
	bl	CloseUIBox
	bl	Func_801d9bc
	mov	r0, #1
	bl	WaitFrames
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
.func_end StartMenu_Main

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
	.global .L367c9
	.global .L367cc
	.global .L367ce
	.global .L367d0
	.global .L367d6
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
