	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Bind  @ 0x080d05fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_3001eec
	mov	r3, r6
	ldmia	r3!, {r1}
	sub	sp, #0x84
	str	r1, [sp, #0x40]
	ldr	r3, [r3]
	str	r3, [sp, #0x3c]
	mov	r3, r6
	sub	r3, #0x6c
	ldr	r3, [r3]
	ldr	r2, [r6, #8]
	str	r3, [sp, #0x30]
	ldr	r3, =0x7828
	mov	r5, r0
	add	r7, r1, r3
	str	r5, [r7]
	mov	r0, #1
	mov	r8, r2
	bl	AnimStart
	ldr	r2, [r7]
	ldr	r3, [r2, #0x1c]
	cmp	r3, #1
	bne	.Ld064e
	add	r3, sp, #0x50
	ldr	r2, [r2, #4]
	str	r3, [sp]
	add	r3, sp, #0x4c
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #3
	mov	r3, #0
	bl	Anim_Djinni
.Ld064e:
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ld0690	@ 0x100
	ldr	r0, =_FILE_79
	strh	r3, [r2]
	bl	GetFile
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	mov	r1, r5
	lsl	r0, #19
	bl	_call_via_r3
	add	r5, #0x80
	ldr	r1, [sp, #0x40]
	mov	r0, r5
	bl	DecompressLZ
	ldr	r0, =_FILE_73
	bl	GetFile
	mov	r1, r8
	bl	DecompressLZ
	ldr	r0, =_FILE_76
	bl	GetFile
	mov	r3, #0x80
	ldr	r2, [sp, #0x40]
	lsl	r3, #5
	b	.Ld06b0

	.align	2, 0
.Ld0690:
	.word	0x100
	.pool

.Ld06b0:
	add	r1, r2, r3
	bl	DecompressLZ
	ldr	r0, =_FILE_8f
	bl	GetFile
	mov	r3, #0x80
	ldr	r2, [sp, #0x40]
	mov	r5, r0
	lsl	r3, #6
	add	r5, #0x80
	add	r1, r2, r3
	mov	r0, r5
	bl	DecompressLZ
	mov	r3, #0xef
	ldr	r1, [sp, #0x40]
	lsl	r3, #7
	add	r2, r1, r3
	mov	r3, #3
	str	r3, [r2]
	ldr	r3, =0x7784
	add	r2, r1, r3
	ldr	r3, =0x4040404
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r3, [r7]
	mov	r2, sp
	add	r2, #0x78
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r2
	str	r2, [sp, #0x28]
	bl	GetBattleActorPos2
	ldr	r3, [sp, #0x28]
	ldr	r2, [r3]
	mov	r3, #0x40
	sub	r3, r2
	ldr	r2, =REG_BG2X
	str	r3, [sp, #0x2c]
	lsl	r3, #8
	str	r3, [r2]
	mov	r0, #0x8e
	bl	_PlaySound
	mov	r1, #0
	str	r1, [sp, #0x38]
	ldr	r3, [r7]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	mov	r2, #0x48
	lsl	r3, #2
	neg	r2, r2
	cmp	r3, r2
	bne	.Ld072c
	b	.Ld0ab2
.Ld072c:
	mov	r3, sp
	add	r3, #0x44
	str	r3, [sp, #0x14]
.Ld0732:
	ldr	r1, [sp, #0x38]
	cmp	r1, #0x40
	bne	.Ld073e
	mov	r0, #0
	bl	_Func_80bd7dc
.Ld073e:
	ldr	r2, =0x5555
	mov	r3, #0
	ldr	r0, [sp, #0x38]
	ldr	r1, =0xaaab
	bl	ColorCycleVFXPalette
	ldr	r3, =0x7828
	ldr	r2, [sp, #0x40]
	add	r7, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #0x1c]
	cmp	r3, #1
	bne	.Ld07e2
	ldr	r1, [sp, #0x38]
	lsl	r5, r1, #11
	mov	r0, r5
	bl	sin
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r2, [sp, #0x50]
	lsl	r3, #2
	asr	r3, #16
	add	r3, r2
	ldr	r2, [sp, #0x2c]
	add	r3, r2
	sub	r3, #0x14
	mov	r0, r5
	mov	r8, r3
	bl	cos
	ldr	r3, [sp, #0x4c]
	lsl	r0, #2
	asr	r0, #16
	add	r0, r3
	ldr	r3, [r7]
	mov	r6, r0
	ldr	r1, [sp, #0x14]
	ldr	r0, [r3, #4]
	bl	BuildDraw2DFuncs
	ldr	r3, [sp, #0x38]
	sub	r6, #0x18
	cmp	r3, #0x20
	ble	.Ld07a0
	lsl	r3, #1
	sub	r3, r6, r3
	mov	r6, r3
	add	r6, #0x40
.Ld07a0:
	ldr	r1, [sp, #0x40]
	mov	r2, #0x80
	lsl	r2, #6
	add	r7, r1, r2
	mov	r5, #0x28
	mov	r3, r6
	str	r5, [sp]
	str	r5, [sp, #4]
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x3c]
	mov	r1, r7
	mov	r2, r8
	bl	_call_via_r4
	ldr	r3, [sp, #0x38]
	cmp	r3, #3
	bgt	.Ld07d6
	ldr	r1, [sp, #0x14]
	str	r5, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x3c]
	ldr	r4, [r1, #4]
	mov	r2, r8
	mov	r1, r7
	mov	r3, r6
	bl	_call_via_r4
.Ld07d6:
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
.Ld07e2:
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
	mov	r1, #7
	str	r3, [sp, #0x44]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r2, =iwram_3001f0c
	ldr	r1, [sp, #0x14]
	ldr	r3, [r2]
	str	r3, [r1, #4]
	ldr	r2, [sp, #0x38]
	cmp	r2, #0x10
	ble	.Ld082c
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.Ld082c
	ldr	r3, [sp, #0x40]
	ldr	r1, =0x7784
	add	r2, r3, r1
	ldr	r3, [r2]
	ldr	r1, =0x1010101
	add	r3, r1
	str	r3, [r2]
.Ld082c:
	ldr	r1, [sp, #0x38]
	lsl	r3, r1, #1
	add	r3, r1
	mov	r2, #0
	lsl	r3, #9
	str	r2, [sp, #0x34]
	str	r2, [sp, #0xc]
	str	r3, [sp, #8]
	mov	r11, r1
.Ld083e:
	ldr	r2, [sp, #0x40]
	ldr	r1, =0x7828
	add	r3, r2, r1
	ldr	r1, [sp, #0x34]
	ldr	r2, [r3]
	lsl	r3, r1, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_GetBattleActor
	mov	r2, r11
	ldr	r6, [r0]
	cmp	r2, #0x5f
	bls	.Ld085c
	b	.Ld0a18
.Ld085c:
	bl	InitMatrixStack
	ldr	r0, [sp, #0x30]
	mov	r1, r0
	add	r1, #0xc
	bl	MatrixSetLook
	ldr	r3, [r6, #8]
	add	r5, sp, #0x6c
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	add	r3, sp, #0x60
	mov	r9, r3
	mov	r1, r9
	mov	r0, r5
	bl	Func_80e3944
	ldr	r1, [sp, #0x28]
	ldr	r2, [sp, #0x2c]
	ldr	r3, [r1]
	mov	r1, r9
	add	r3, r2
	str	r3, [r1]
	ldr	r3, [r1, #4]
	mov	r2, r11
	sub	r3, #0x18
	str	r3, [r1, #4]
	cmp	r2, #0x43
	ble	.Ld089e
	b	.Ld09dc
.Ld089e:
	mov	r1, #0
	str	r1, [sp, #0x10]
	ldr	r1, [sp, #0xc]
	lsl	r2, r1, #3
	sub	r2, r1
	ldr	r1, [sp, #0x40]
	lsl	r2, #2
	add	r2, r1
	mov	r1, #0xe1
	lsl	r1, #7
	add	r5, r2, r1
	mov	r3, #0xa8
	ldr	r2, [sp, #8]
	lsl	r3, #10
	sub	r2, r3, r2
	mov	r1, r11
	mov	r3, #0x40
	sub	r3, r1
	lsl	r3, #9
	mov	r7, #0
	add	r6, sp, #0x54
	mov	r8, r2
	mov	r10, r3
.Ld08cc:
	bl	InitMatrixStack
	mov	r2, r11
	cmp	r2, #0x3f
	bgt	.Ld08f0
	mov	r3, r8
	str	r3, [r6]
	str	r3, [r6, #4]
	str	r3, [r6, #8]
	mov	r0, r6
	bl	MatrixScalev
	mov	r0, r10
	bl	MatrixRoll
	mov	r0, r10
	bl	MatrixYaw
.Ld08f0:
	ldr	r0, [sp, #0x10]
	bl	MatrixRoll
	add	r2, sp, #0x6c
	mov	r1, r2
	ldr	r0, =.Lee128
	bl	Func_80e3944
	mov	r1, r9
	ldr	r3, [r1]
	ldr	r2, [sp, #0x6c]
	add	r2, r3
	str	r2, [r5, #0xc]
	ldr	r3, [sp, #0x70]
	ldr	r2, [r1, #4]
	add	r3, r2
	add	r3, #0x10
	str	r3, [r5, #0x10]
	ldr	r2, [sp, #0x10]
	ldr	r3, =0x5555
	add	r7, #1
	add	r2, r3
	str	r2, [sp, #0x10]
	add	r5, #0x1c
	cmp	r7, #3
	bne	.Ld08cc
	ldr	r1, [sp, #0xc]
	str	r1, [sp, #0x20]
	mov	r7, #0
.Ld092a:
	ldr	r3, [sp, #0x20]
	add	r2, r7, r3
	lsl	r3, r2, #3
	ldr	r1, [sp, #0x40]
	sub	r3, r2
	lsl	r3, #2
	mov	r2, #0xe1
	lsl	r2, #7
	add	r3, r1, r3
	add	r7, #1
	add	r3, r2
	mov	r1, #3
	mov	r0, r7
	str	r3, [sp, #0x24]
	str	r7, [sp, #0x18]
	bl	__modsi3
	ldr	r3, [sp, #0x20]
	add	r0, r3
	lsl	r3, r0, #3
	sub	r3, r0
	ldr	r1, [sp, #0x40]
	lsl	r3, #2
	mov	r2, #0xe1
	lsl	r2, #7
	add	r3, r1, r3
	add	r3, r2
	mov	r2, r11
	str	r3, [sp, #0x1c]
	cmp	r2, #0
	bge	.Ld096a
	add	r2, #0xf
.Ld096a:
	asr	r2, #4
	mov	r3, #5
	sub	r3, r2
	mov	r8, r3
	mov	r1, r8
	mov	r3, #0
	mov	r10, r3
	lsl	r7, r1, #1
.Ld097a:
	ldr	r2, [sp, #0x1c]
	ldr	r1, [sp, #0x24]
	ldr	r3, [r2, #0xc]
	ldr	r6, [r1, #0xc]
	sub	r3, r6
	mov	r0, r10
	mul	r0, r3
	mov	r1, #0x18
	bl	__divsi3
	ldr	r2, [sp, #0x1c]
	ldr	r1, [sp, #0x24]
	ldr	r3, [r2, #0x10]
	ldr	r5, [r1, #0x10]
	sub	r3, r5
	add	r6, r0
	mov	r1, #0x18
	mov	r0, r10
	mul	r0, r3
	bl	__divsi3
	ldr	r2, =Data_ede5c
	sub	r3, r7, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x40]
	add	r5, r0
	add	r1, r3, r1
	mov	r2, #0x80
	mov	r3, r8
	lsl	r2, #5
	sub	r6, r3
	sub	r5, r3
	add	r1, r2
	str	r7, [sp]
	mov	r2, r6
	str	r7, [sp, #4]
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x3c]
	mov	r3, r5
	bl	_call_via_r4
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #0x18
	bne	.Ld097a
	ldr	r7, [sp, #0x18]
	cmp	r7, #3
	bne	.Ld092a
.Ld09dc:
	mov	r3, r11
	cmp	r3, #0x3f
	ble	.Ld0a18
	mov	r1, r9
	ldr	r2, [r1]
	ldr	r3, [r1, #4]
	mov	r5, #0x30
	mov	r1, #0x18
	sub	r2, #0x18
	sub	r3, #0x18
	str	r1, [sp]
	ldr	r4, [sp, #0x44]
	ldr	r1, [sp, #0x40]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x3c]
	bl	_call_via_r4
	mov	r3, r9
	mov	r1, #0x18
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	str	r1, [sp]
	str	r5, [sp, #4]
	ldr	r1, [sp, #0x14]
	sub	r3, #0x18
	ldr	r4, [r1, #4]
	ldr	r0, [sp, #0x3c]
	ldr	r1, [sp, #0x40]
	bl	_call_via_r4
.Ld0a18:
	ldr	r3, [sp, #8]
	ldr	r1, =0xffffd000
	ldr	r2, [sp, #0xc]
	add	r3, r1
	add	r2, #0x20
	str	r3, [sp, #8]
	ldr	r3, [sp, #0x34]
	str	r2, [sp, #0xc]
	mov	r2, #8
	neg	r2, r2
	add	r3, #1
	add	r11, r2
	str	r3, [sp, #0x34]
	cmp	r3, #1
	beq	.Ld0a38
	b	.Ld083e
.Ld0a38:
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r2, =0x7824
	ldr	r1, [sp, #0x40]
	add	r3, r1, r2
	ldr	r1, [sp, #0x34]
	mov	r0, #1
	str	r1, [r3]
	bl	WaitFrames
	ldr	r2, [sp, #0x38]
	add	r2, #1
	str	r2, [sp, #0x38]
	ldr	r1, [sp, #0x40]
	ldr	r2, =0x7828
	add	r3, r1, r2
	ldr	r3, [r3]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #2
	ldr	r1, [sp, #0x38]
	add	r3, #0x48
	b	.Ld0aac

	.pool_aligned

.Ld0aac:
	cmp	r1, r3
	beq	.Ld0ab2
	b	.Ld0732
.Ld0ab2:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	bl	AnimEnd
	add	sp, #0x84
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Bind

	.section .rodata
.Lee128:
	.incrom 0xee128, 0xee134
