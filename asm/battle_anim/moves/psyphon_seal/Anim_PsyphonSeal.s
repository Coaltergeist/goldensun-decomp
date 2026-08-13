	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_PsyphonSeal  @ 0x080d0ad4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =iwram_3001eec
	mov	r8, r1
	mov	r3, r8
	ldmia	r3!, {r2}
	sub	sp, #0x78
	str	r2, [sp, #0x44]
	ldr	r3, [r3]
	str	r3, [sp, #0x40]
	mov	r3, r8
	ldr	r4, =0x7828
	ldr	r6, [r3, #8]
	sub	r3, #0x6c
	ldr	r3, [r3]
	add	r5, r2, r4
	str	r3, [sp, #0x2c]
	str	r0, [r5]
	mov	r0, #0
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ld0b48
	ldr	r0, =_FILE_79
	strh	r3, [r2]
	bl	GetFile
	mov	r7, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	mov	r1, r7
	lsl	r0, #19
	bl	_call_via_r3
	add	r7, #0x80
	ldr	r1, [sp, #0x44]
	mov	r0, r7
	bl	DecompressLZ
	ldr	r0, =_FILE_73
	bl	GetFile
	mov	r1, r6
	bl	DecompressLZ
	ldr	r0, =_FILE_76
	bl	GetFile
	mov	r3, #0x80
	ldr	r2, [sp, #0x44]
	lsl	r3, #5
	b	.Ld0b68

	.align	2, 0
.Ld0b48:
	.word	0x100
	.pool

.Ld0b68:
	add	r1, r2, r3
	mov	r7, r0
	bl	DecompressLZ
	mov	r1, #0xef
	ldr	r4, [sp, #0x44]
	lsl	r1, #7
	add	r2, r4, r1
	mov	r3, #3
	str	r3, [r2]
	ldr	r3, =0x7784
	add	r2, r4, r3
	ldr	r3, =0x4040404
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r3, [r5]
	mov	r1, sp
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	add	r1, #0x6c
	str	r1, [sp, #0x24]
	bl	GetBattleActorPos2
	ldr	r3, [sp, #0x24]
	ldr	r2, [r3]
	mov	r3, #0x40
	sub	r3, r2
	ldr	r2, =REG_BG2X
	str	r3, [sp, #0x28]
	lsl	r3, #8
	str	r3, [r2]
	mov	r0, #0x8e
	bl	_PlaySound
	mov	r4, #0
	str	r4, [sp, #0x3c]
	ldr	r3, [r5]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	mov	r5, #0x48
	lsl	r3, #2
	neg	r5, r5
	cmp	r3, r5
	bne	.Ld0bcc
	b	.Ld0e8a
.Ld0bcc:
	ldr	r1, [sp, #0x3c]
	cmp	r1, #0x40
	bne	.Ld0bd8
	mov	r0, #0
	bl	_Func_80bd7dc
.Ld0bd8:
	ldr	r2, [sp, #0x3c]
	cmp	r2, #0x2e
	bne	.Ld0bf4
	ldr	r4, [sp, #0x44]
	ldr	r5, =0x7828
	add	r3, r4, r5
	ldr	r3, [r3]
	mov	r2, #0x24
	ldrsh	r1, [r3, r2]
	ldr	r0, [r3, #8]
	mov	r2, #0x10
	mov	r3, #0
	bl	_Func_80b82c4
.Ld0bf4:
	ldr	r0, [sp, #0x3c]
	ldr	r1, =0xaaab
	ldr	r2, =0x5555
	mov	r3, #0
	bl	ColorCycleVFXPalette
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, =gPtrs
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r0, #0x2f
	str	r3, [sp, #0x34]
	mov	r1, #7
	mov	r3, #7
	mov	r2, #7
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, =iwram_3001f0c
	ldr	r4, [sp, #0x3c]
	ldr	r3, [r3]
	str	r3, [sp, #0x38]
	cmp	r4, #0x10
	ble	.Ld0c48
	mov	r3, #0xf
	and	r3, r4
	cmp	r3, #0
	bne	.Ld0c48
	ldr	r5, [sp, #0x44]
	ldr	r1, =0x7784
	add	r2, r5, r1
	ldr	r3, [r2]
	ldr	r4, =0x1010101
	add	r3, r4
	str	r3, [r2]
.Ld0c48:
	ldr	r1, [sp, #0x3c]
	lsl	r3, r1, #1
	add	r3, r1
	mov	r5, #0
	lsl	r3, #9
	str	r5, [sp, #0x30]
	str	r5, [sp, #0x10]
	str	r3, [sp, #0xc]
	mov	r11, r1
.Ld0c5a:
	ldr	r2, [sp, #0x44]
	ldr	r4, =0x7828
	ldr	r5, [sp, #0x30]
	add	r3, r2, r4
	ldr	r2, [r3]
	lsl	r3, r5, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_GetBattleActor
	mov	r2, r11
	ldr	r6, [r0]
	cmp	r2, #0x5f
	bls	.Ld0c78
	b	.Ld0e30
.Ld0c78:
	bl	InitMatrixStack
	ldr	r0, [sp, #0x2c]
	mov	r1, r0
	add	r1, #0xc
	bl	MatrixSetLook
	ldr	r3, [r6, #8]
	add	r5, sp, #0x60
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	add	r3, sp, #0x54
	mov	r10, r3
	mov	r1, r10
	mov	r0, r5
	bl	Func_80e3944
	ldr	r4, [sp, #0x24]
	ldr	r1, [sp, #0x28]
	ldr	r3, [r4]
	mov	r2, r10
	add	r3, r1
	str	r3, [r2]
	ldr	r3, [r2, #4]
	sub	r3, #0x18
	str	r3, [r2, #4]
	mov	r3, r11
	cmp	r3, #0x43
	ble	.Ld0cba
	b	.Ld0df6
.Ld0cba:
	ldr	r5, [sp, #0x10]
	lsl	r2, r5, #3
	sub	r2, r5
	ldr	r1, [sp, #0x44]
	mov	r4, #0
	lsl	r2, #2
	add	r2, r1
	mov	r3, #0xa8
	str	r4, [sp, #0x14]
	ldr	r1, [sp, #0xc]
	mov	r4, #0xe1
	lsl	r3, #10
	lsl	r4, #7
	sub	r1, r3, r1
	add	r5, r2, r4
	mov	r3, #0x40
	mov	r2, r11
	sub	r3, r2
	lsl	r3, #9
	mov	r7, #0
	add	r6, sp, #0x48
	mov	r8, r1
	mov	r9, r3
.Ld0ce8:
	bl	InitMatrixStack
	mov	r3, r11
	cmp	r3, #0x3f
	bgt	.Ld0d0c
	mov	r4, r8
	str	r4, [r6]
	str	r4, [r6, #4]
	str	r4, [r6, #8]
	mov	r0, r6
	bl	MatrixScalev
	mov	r0, r9
	bl	MatrixRoll
	mov	r0, r9
	bl	MatrixYaw
.Ld0d0c:
	ldr	r0, [sp, #0x14]
	bl	MatrixRoll
	add	r2, sp, #0x60
	mov	r1, r2
	ldr	r0, =.Lee134
	bl	Func_80e3944
	mov	r4, r10
	ldr	r3, [r4]
	ldr	r2, [sp, #0x60]
	add	r2, r3
	str	r2, [r5, #0xc]
	ldr	r3, [sp, #0x64]
	ldr	r2, [r4, #4]
	add	r3, r2
	add	r3, #0x10
	str	r3, [r5, #0x10]
	ldr	r1, [sp, #0x14]
	ldr	r2, =0x5555
	add	r7, #1
	add	r1, r2
	str	r1, [sp, #0x14]
	add	r5, #0x1c
	cmp	r7, #3
	bne	.Ld0ce8
	ldr	r3, [sp, #0x10]
	str	r3, [sp, #0x1c]
	mov	r7, #0
.Ld0d46:
	ldr	r4, [sp, #0x1c]
	add	r2, r7, r4
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r5, [sp, #0x44]
	lsl	r3, #2
	mov	r1, #0xe1
	lsl	r1, #7
	add	r7, #1
	add	r3, r5, r3
	add	r3, r1
	mov	r0, r7
	mov	r1, #3
	str	r3, [sp, #0x20]
	str	r7, [sp, #0x18]
	bl	__modsi3
	ldr	r2, [sp, #0x1c]
	add	r0, r2
	lsl	r3, r0, #3
	sub	r3, r0
	lsl	r3, #2
	mov	r4, #0xe1
	add	r3, r5, r3
	lsl	r4, #7
	add	r4, r3
	mov	r2, r11
	mov	r9, r4
	cmp	r2, #0
	bge	.Ld0d84
	add	r2, #0xf
.Ld0d84:
	asr	r2, #4
	mov	r3, #5
	sub	r4, r3, r2
	mov	r5, #0
	mov	r8, r5
	lsl	r7, r4, #1
.Ld0d90:
	ldr	r2, [sp, #0x20]
	mov	r1, r9
	ldr	r6, [r2, #0xc]
	ldr	r3, [r1, #0xc]
	sub	r3, r6
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0x18
	str	r4, [sp, #8]
	bl	__divsi3
	ldr	r1, [sp, #0x20]
	mov	r5, r9
	ldr	r3, [r5, #0x10]
	ldr	r5, [r1, #0x10]
	sub	r3, r5
	add	r6, r0
	mov	r1, #0x18
	mov	r0, r8
	mul	r0, r3
	bl	__divsi3
	ldr	r2, =Data_ede5c
	sub	r3, r7, #2
	ldrh	r1, [r2, r3]
	ldr	r4, [sp, #8]
	ldr	r3, [sp, #0x44]
	add	r5, r0
	mov	r2, #0x80
	sub	r5, r4
	sub	r6, r4
	add	r1, r3, r1
	lsl	r2, #5
	add	r1, r2
	mov	r3, r5
	mov	r2, r6
	str	r7, [sp]
	str	r7, [sp, #4]
	ldr	r0, [sp, #0x40]
	ldr	r5, [sp, #0x34]
	bl	_call_via_r5
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	ldr	r4, [sp, #8]
	cmp	r2, #0x18
	bne	.Ld0d90
	ldr	r7, [sp, #0x18]
	cmp	r7, #3
	bne	.Ld0d46
.Ld0df6:
	mov	r3, r11
	cmp	r3, #0x3f
	ble	.Ld0e30
	mov	r4, r10
	ldr	r2, [r4]
	ldr	r3, [r4, #4]
	mov	r5, #0x18
	str	r5, [sp]
	mov	r5, #0x30
	sub	r2, #0x18
	sub	r3, #0x18
	str	r5, [sp, #4]
	ldr	r1, [sp, #0x44]
	ldr	r4, [sp, #0x34]
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
	mov	r1, r10
	ldr	r3, [r1, #4]
	mov	r4, #0x18
	ldr	r2, [r1]
	sub	r3, #0x18
	str	r5, [sp, #4]
	str	r4, [sp]
	ldr	r0, [sp, #0x40]
	ldr	r1, [sp, #0x44]
	ldr	r5, [sp, #0x38]
	bl	_call_via_r5
.Ld0e30:
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0xc]
	ldr	r5, [sp, #0x30]
	ldr	r3, =0xffffd000
	mov	r4, #8
	add	r1, #0x20
	add	r2, r3
	neg	r4, r4
	add	r5, #1
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	add	r11, r4
	str	r5, [sp, #0x30]
	cmp	r5, #1
	beq	.Ld0e50
	b	.Ld0c5a
.Ld0e50:
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r2, =0x7824
	ldr	r1, [sp, #0x44]
	add	r3, r1, r2
	str	r5, [r3]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [sp, #0x3c]
	ldr	r4, [sp, #0x44]
	add	r3, #1
	ldr	r5, =0x7828
	str	r3, [sp, #0x3c]
	add	r3, r4, r5
	ldr	r3, [r3]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #2
	ldr	r1, [sp, #0x3c]
	add	r3, #0x48
	cmp	r1, r3
	beq	.Ld0e8a
	b	.Ld0bcc
.Ld0e8a:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	bl	AnimEnd
	add	sp, #0x78
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_PsyphonSeal

	.section .rodata
.Lee134:
	.incrom 0xee134, 0xee140
