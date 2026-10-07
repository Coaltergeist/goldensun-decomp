	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Ground  @ 0x080e1040
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_3001eec
	mov	r3, r2
	mov	r6, r0
	ldmia	r3!, {r0}
	ldr	r3, [r3]
	sub	sp, #0x48
	str	r3, [sp, #0x30]
	sub	r2, #0x6c
	ldr	r5, =0x7828
	ldr	r2, [r2]
	mov	r9, r0
	add	r5, r9
	str	r2, [sp, #0x1c]
	mov	r0, #0
	str	r6, [r5]
	bl	AnimStart
	ldr	r3, [r5]
	ldr	r2, [r3, #4]
	add	r3, sp, #0x38
	str	r3, [sp]
	add	r3, sp, #0x34
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r3, #2
	mov	r1, #0
	bl	Anim_Djinni
	ldr	r3, .Le10a8	@ 0x1010
	ldr	r2, =REG_BLDALPHA
	strh	r3, [r2]
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Le10b8
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	BuildDraw2DFuncEx
	b	.Le10c8

	.align	2, 0
.Le10a8:
	.word	0x1010
	.pool

.Le10b8:
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	bl	BuildDraw2DFuncEx
.Le10c8:
	ldr	r3, =gPtrs
	add	r3, #0xb8
	ldr	r3, [r3]
	ldr	r0, =_FILE_a7
	str	r3, [sp, #0x20]
	mov	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r1, =0x65c0
	ldr	r0, =_FILE_94
	add	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	ldr	r5, =0x7828
	add	r2, r9
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	add	r5, r9
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r6, [r0]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	ldr	r0, [r0]
	mov	r2, #0
	mov	r5, #0xe1
	lsl	r5, #7
	str	r0, [sp, #0x18]
	str	r2, [sp, #0x2c]
	mov	r7, #0
	add	r5, r9
.Le112e:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	mov	r3, #0x84
	lsl	r3, #15
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	asr	r3, r7, #5
	str	r3, [r5, #0xc]
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	sub	r3, #0x40
	lsl	r3, #16
	asr	r3, #6
	str	r3, [r5, #0x10]
	bl	Random
	mov	r3, #0xff
	and	r3, r0
	sub	r3, #0x7f
	lsl	r3, #16
	asr	r3, #5
	str	r3, [r5, #0x14]
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.Le116c
	ldr	r3, [r5, #0xc]
	neg	r3, r3
	str	r3, [r5, #0xc]
.Le116c:
	mov	r3, #1
	str	r3, [r5, #0x18]
	ldr	r4, [sp, #0x2c]
	mov	r3, #0xa0
	lsl	r3, #15
	add	r4, #1
	add	r7, r3
	add	r5, #0x1c
	str	r4, [sp, #0x2c]
	cmp	r4, #8
	bne	.Le112e
	ldr	r0, [sp, #0x1c]
	mov	r5, #0
	add	r0, #0xc
	str	r5, [sp, #0x28]
	str	r0, [sp, #0x10]
.Le118c:
	ldr	r1, [sp, #0x28]
	cmp	r1, #0x10
	ble	.Le1198
	ldr	r0, =_FILE_a7
	bl	BlendVFXPaletteFile
.Le1198:
	ldr	r6, =0x7828
	add	r6, r9
	ldr	r3, [r6]
	ldr	r3, [r3, #0x1c]
	cmp	r3, #1
	bne	.Le1248
	ldr	r2, [sp, #0x28]
	lsl	r5, r2, #11
	mov	r0, r5
	bl	sin
	ldr	r3, [sp, #0x38]
	neg	r0, r0
	lsr	r2, r3, #31
	add	r3, r2
	lsl	r0, #2
	asr	r3, #1
	asr	r0, #16
	add	r0, r3
	mov	r7, r0
	mov	r0, r5
	bl	cos
	ldr	r3, [sp, #0x34]
	lsl	r0, #1
	asr	r0, #16
	add	r0, r3
	ldr	r3, [sp, #0x28]
	mov	r5, r0
	sub	r7, #0xa
	sub	r5, #0x16
	cmp	r3, #0x10
	ble	.Le11e2
	lsl	r3, #1
	sub	r3, r5, r3
	mov	r5, r3
	add	r5, #0x20
.Le11e2:
	ldr	r3, [r6]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Le11fc
	mov	r3, #3
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	BuildDraw2DFuncEx
	b	.Le120a
.Le11fc:
	mov	r3, #3
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
.Le120a:
	ldr	r4, [sp, #0x28]
	cmp	r4, #3
	bgt	.Le122a
	mov	r3, #0x14
	str	r3, [sp]
	mov	r3, #0x28
	str	r3, [sp, #4]
	ldr	r0, =iwram_3001f0c
	ldr	r1, =0x65c0
	ldr	r4, [r0]
	add	r1, r9
	ldr	r0, [sp, #0x30]
	mov	r2, r7
	mov	r3, r5
	bl	_call_via_r4
.Le122a:
	mov	r0, #0x2f
	bl	gfree
	mov	r3, #0x14
	ldr	r1, =0x65c0
	str	r3, [sp]
	mov	r3, #0x28
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x30]
	add	r1, r9
	mov	r2, r7
	mov	r3, r5
	ldr	r4, [sp, #0x20]
	bl	_call_via_r4
.Le1248:
	ldr	r5, [sp, #0x28]
	mov	r3, #1
	and	r3, r5
	cmp	r3, #0
	bne	.Le1284
	mov	r0, #0
	mov	r5, #0xe8
	lsl	r5, #7
	str	r0, [sp, #0x2c]
	ldr	r6, =.Leec70
	add	r5, r9
.Le125e:
	bl	Random
	mov	r1, #6
	bl	__umodsi3
	add	r0, #3
	str	r0, [r5, #0xc]
	bl	Random
	mov	r3, #3
	and	r3, r0
	ldrb	r3, [r6, r3]
	str	r3, [r5, #0x10]
	ldr	r1, [sp, #0x2c]
	add	r1, #1
	add	r5, #0x1c
	str	r1, [sp, #0x2c]
	cmp	r1, #0x20
	bne	.Le125e
.Le1284:
	bl	InitMatrixStack
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x10]
	bl	MatrixSetLook
	mov	r6, #0xe1
	mov	r2, #0
	mov	r3, r9
	lsl	r6, #7
	str	r2, [sp, #0x2c]
	str	r2, [sp, #0xc]
	str	r3, [sp, #8]
	add	r6, r9
.Le12a0:
	ldr	r3, [r6, #0x18]
	cmp	r3, #1
	beq	.Le12a8
	b	.Le14da
.Le12a8:
	ldr	r4, [sp, #0xc]
	ldr	r5, [sp, #0x28]
	str	r4, [sp, #0x14]
	cmp	r5, r4
	bgt	.Le12b4
	b	.Le142a
.Le12b4:
	add	r5, sp, #0x3c
	mov	r1, r5
	mov	r0, r6
	bl	Func_80e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	sub	r3, #0xc
	mov	r10, r3
	ldr	r3, [r5, #4]
	sub	r3, #0x18
	mov	r8, r3
	mov	r3, #0x18
	str	r3, [sp]
	mov	r3, #0x30
	str	r3, [sp, #4]
	ldr	r5, [sp, #0x20]
	mov	r3, r8
	ldr	r0, [sp, #0x30]
	mov	r1, r9
	mov	r2, r10
	bl	_call_via_r5
	ldr	r0, [sp, #0x28]
	mov	r3, #3
	and	r3, r0
	cmp	r3, #1
	bgt	.Le1314
	ldr	r3, =.Leec86
	ldr	r4, =.Leeca1
	ldrh	r1, [r3, #2]
	ldr	r3, =.Leec98
	ldrb	r2, [r3, #1]
	ldrb	r3, [r4, #1]
	ldr	r4, =.Leec74
	ldrb	r0, [r4, #1]
	str	r0, [sp]
	ldr	r0, =.Leec7d
	ldrb	r0, [r0, #1]
	add	r1, r9
	str	r0, [sp, #4]
	add	r2, r10
	add	r3, r8
	ldr	r0, [sp, #0x30]
	bl	_call_via_r5
	b	.Le1338
.Le1314:
	ldr	r3, =.Leec86
	ldr	r0, =.Leeca1
	ldrh	r1, [r3, #4]
	ldr	r4, =.Leec74
	ldr	r3, =.Leec98
	ldrb	r2, [r3, #2]
	ldrb	r3, [r0, #2]
	ldrb	r0, [r4, #2]
	str	r0, [sp]
	ldr	r0, =.Leec7d
	ldrb	r0, [r0, #2]
	add	r1, r9
	str	r0, [sp, #4]
	add	r2, r10
	add	r3, r8
	ldr	r0, [sp, #0x30]
	bl	_call_via_r5
.Le1338:
	ldr	r0, [sp, #8]
	mov	r1, #0xe8
	mov	r5, #0
	lsl	r1, #7
	mov	r11, r5
	add	r7, r0, r1
.Le1344:
	mov	r2, #2
	ldr	r3, [r7, #0x10]
	mov	r1, #7
	str	r2, [sp]
	mov	r0, #0x2f
	mov	r2, #7
	bl	BuildDraw2DFuncEx
	ldr	r2, =iwram_3001f0c
	ldr	r1, [r7, #0x10]
	ldr	r2, [r2]
	mov	r3, #4
	and	r3, r1
	str	r2, [sp, #0x24]
	cmp	r3, #0
	beq	.Le1378
	ldr	r0, [r7, #0xc]
	ldr	r4, =.Leec74
	ldrb	r3, [r4, r0]
	mov	r5, r10
	sub	r3, r5, r3
	ldr	r5, =.Leec98
	ldrb	r2, [r5, r0]
	sub	r3, r2
	add	r3, #0x18
	b	.Le1382
.Le1378:
	ldr	r0, [r7, #0xc]
	ldr	r2, =.Leec98
	ldrb	r3, [r2, r0]
	ldr	r4, =.Leec74
	add	r3, r10
.Le1382:
	mov	r12, r3
	mov	r3, #8
	and	r3, r1
	cmp	r3, #0
	beq	.Le13d8
	ldr	r5, =.Leec7d
	ldrb	r3, [r5, r0]
	ldr	r5, =.Leeca1
	mov	r1, r8
	ldrb	r2, [r5, r0]
	sub	r3, r1, r3
	sub	r3, r2
	mov	r5, r3
	add	r5, #0x30
	b	.Le13e0

	.pool_aligned

.Le13d8:
	ldr	r1, =.Leeca1
	ldrb	r3, [r1, r0]
	mov	r2, r8
	add	r5, r2, r3
.Le13e0:
	ldr	r2, =.Leec86
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	ldrb	r3, [r4, r0]
	str	r3, [sp]
	ldr	r3, [r7, #0xc]
	ldr	r4, =.Leec7d
	ldrb	r3, [r4, r3]
	add	r1, r9
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x30]
	mov	r3, r5
	mov	r2, r12
	ldr	r5, [sp, #0x24]
	bl	_call_via_r5
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #1
	add	r11, r0
	mov	r1, r11
	add	r7, #0x1c
	cmp	r1, #4
	bne	.Le1344
	ldr	r3, [r6]
	ldr	r2, [r6, #0xc]
	add	r3, r2
	str	r3, [r6]
	ldr	r2, [r6, #0x10]
	ldr	r3, [r6, #4]
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r2, [r6, #0x14]
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r6, #8]
.Le142a:
	ldr	r3, [sp, #0xc]
	ldr	r2, [sp, #0x28]
	add	r3, #0x10
	cmp	r2, r3
	ble	.Le14da
	ldr	r4, [sp, #0x18]
	ldr	r2, [r6]
	ldr	r3, [r4, #8]
	sub	r3, r2
	ldr	r2, [r6, #0xc]
	asr	r3, #8
	add	r1, r2, r3
	ldr	r2, [r6, #4]
	mov	r3, #0xa0
	lsl	r3, #13
	sub	r3, r2
	ldr	r2, [r6, #0x10]
	asr	r3, #8
	add	r0, r2, r3
	str	r1, [r6, #0xc]
	str	r0, [r6, #0x10]
	ldr	r2, [r6, #8]
	ldr	r3, [r4, #0x10]
	sub	r3, r2
	ldr	r2, [r6, #0x14]
	asr	r3, #8
	add	r4, r2, r3
	str	r4, [r6, #0x14]
	ldr	r3, [sp, #0x14]
	ldr	r5, [sp, #0x28]
	add	r3, #0x55
	cmp	r5, r3
	bge	.Le149c
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Le1478
	add	r2, #0x3f
.Le1478:
	asr	r3, r2, #6
	str	r3, [r6, #0xc]
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Le1488
	add	r2, #0x3f
.Le1488:
	asr	r3, r2, #6
	str	r3, [r6, #0x10]
	lsl	r3, r4, #4
	sub	r3, r4
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Le1498
	add	r2, #0x3f
.Le1498:
	asr	r3, r2, #6
	str	r3, [r6, #0x14]
.Le149c:
	ldr	r3, [r6, #4]
	ldr	r0, =0x13ffff
	cmp	r3, r0
	bgt	.Le14da
	ldr	r2, =0x77a8
	mov	r3, #8
	add	r2, r9
	str	r3, [r2]
	mov	r3, #0
	str	r3, [r6, #0x18]
	mov	r0, #0x86
	bl	_PlaySound
	ldr	r5, =0x7828
	add	r5, r9
	ldr	r3, [r5]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	SetBattleActorState
	ldr	r3, [r5]
	mov	r1, #4
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_SetBattleActorKnockback
.Le14da:
	ldr	r3, [sp, #0xc]
	ldr	r4, [sp, #8]
	ldr	r5, [sp, #0x2c]
	add	r3, #2
	add	r4, #0x70
	add	r5, #1
	str	r3, [sp, #0xc]
	add	r6, #0x1c
	str	r4, [sp, #8]
	str	r5, [sp, #0x2c]
	cmp	r5, #6
	beq	.Le14f4
	b	.Le12a0
.Le14f4:
	mov	r0, #0x10
	mov	r1, #0x10
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	mov	r0, #1
	str	r3, [r2]
	bl	WaitFrames
	ldr	r0, [sp, #0x28]
	add	r0, #1
	str	r0, [sp, #0x28]
	cmp	r0, #0x60
	beq	.Le151a
	b	.Le118c
.Le151a:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x48
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Ground

	.section .rodata
.Leec70:
	.incrom 0xeec70, 0xeec74
.Leec74:
	.incrom 0xeec74, 0xeec7d
.Leec7d:
	.incrom 0xeec7d, 0xeec86
.Leec86:
	.incrom 0xeec86, 0xeec98
.Leec98:
	.incrom 0xeec98, 0xeeca1
.Leeca1:
	.incrom 0xeeca1, 0xeecaa
