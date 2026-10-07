	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Atalanta  @ 0x080dc968
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =iwram_3001f00
	ldr	r1, [r7]
	sub	sp, #0x78
	str	r1, [sp, #0x38]
	mov	r3, r7
	sub	r3, #0x10
	ldr	r3, [r3]
	str	r3, [sp, #0x34]
	mov	r3, r7
	sub	r3, #0x14
	ldr	r3, [r3]
	mov	r11, r3
	mov	r3, r7
	sub	r3, #0xc
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	ldr	r3, =iwram_3001ad0
	ldr	r5, =0x7828
	ldrh	r3, [r3, #4]
	add	r5, r11
	str	r3, [sp, #0x20]
	str	r0, [r5]
	mov	r0, #0x80
	lsl	r0, #6
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldc9e8	@ 0x100
	mov	r9, r2
	mov	r0, r9
	strh	r3, [r0]
	bl	Func_80c9048
	mov	r1, #0xa0
	lsl	r1, #19
	ldr	r2, .Ldc9ec	@ 0
	mov	r8, r1
	mov	r3, r8
	strh	r2, [r3]
	ldr	r3, =0x5000002
	strh	r2, [r3]
	mov	r3, #0xef
	lsl	r3, #7
	add	r3, r11
	mov	r6, #0
	mov	r1, #0x90
	str	r6, [r3]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	mov	r10, r1
	bl	StartTask
	mov	r1, #0
	mov	r0, #0
	bl	AnimTransitionOut
	b	.Ldca08

	.align	2, 0
.Ldc9e8:
	.word	0x100
.Ldc9ec:
	.word	0
	.pool

.Ldca08:
	ldr	r0, [r5]
	bl	Func_80d6750
	mov	r1, #0xb9
	lsl	r1, #1
	mov	r0, #9
	mov	r2, #1
	bl	CreateSummonSprite
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	ldr	r0, =_FILE_6a
	bl	LoadVFXFile
	ldr	r0, =_FILE_a0
	bl	GetFile
	ldr	r3, =Func_8001af8
	mov	r1, r0
	mov	r2, #0x80
	mov	r0, r8
	bl	_call_via_r3
	mov	r2, #0
	ldr	r1, [sp, #0x24]
	mov	r3, #0
	ldr	r0, =_FILE_73
	bl	LoadVFXFile
	ldr	r0, =0xd2
	bl	GetFile
	mov	r3, #2
	str	r0, [sp, #0x30]
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r7, #8]
	str	r3, [sp, #0x3c]
	ldr	r3, [r7, #0xc]
	mov	r2, sp
	add	r2, #0x3c
	str	r2, [sp, #0x10]
	str	r3, [r2, #4]
	ldr	r2, =gPhysVec
	mov	r3, #0xf0
	str	r3, [r2, #0x10]
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =0x3b
	mov	r0, #1
	mov	r2, #0
	bl	_AnimTransitionIn
	ldr	r3, =0x7790
	ldr	r2, =0x7794
	add	r3, r11
	str	r6, [r3]
	add	r2, r11
	mov	r3, #4
	str	r3, [r2]
	ldr	r2, =0x7798
	sub	r3, #5
	add	r2, r11
	str	r3, [r2]
	ldr	r3, =0x779c
	add	r3, r11
	str	r6, [r3]
	mov	r1, r10
	ldr	r0, =Func_80c90e4
	bl	StartTask
	ldr	r0, [sp, #0x38]
	mov	r3, #1
	str	r3, [r0, #0x10]
	mov	r1, #1
	mov	r0, #0
	bl	AnimTransitionOut
	ldr	r3, .Ldcaf0	@ 0x7741
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, .Ldcaf4	@ 0x80
	mov	r1, r9
	strh	r3, [r1]
	ldr	r3, .Ldcaf8	@ 0x1010
	add	r2, #0x52
	strh	r3, [r2]
	ldr	r3, .Ldcafc	@ 0x3f44
	sub	r2, #2
	strh	r3, [r2]
	mov	r7, #0xe1
	mov	r2, #0
	ldr	r3, =0xffff
	lsl	r7, #7
	str	r2, [sp, #0x1c]
	str	r2, [sp, #0x18]
	str	r2, [sp, #0x2c]
	mov	r8, r3
	add	r7, r11
	b	.Ldcb34

	.align	2, 0
.Ldcaf0:
	.word	0x7741
.Ldcaf4:
	.word	0x80
.Ldcaf8:
	.word	0x1010
.Ldcafc:
	.word	0x3f44
	.pool

.Ldcb34:
	bl	Random
	mov	r1, #0x60
	bl	__umodsi3
	add	r0, #0xc
	lsl	r0, #16
	str	r0, [r7]
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x20
	lsl	r3, #16
	str	r3, [r7, #4]
	mov	r3, #0
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x10]
	str	r3, [r7, #0x18]
	ldr	r0, [sp, #0x2c]
	lsl	r2, r0, #1
	add	r2, r0
	mov	r9, r3
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, =ewram_2013800
	lsl	r3, #7
	add	r6, r3, r1
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r2, =gBuffer
	lsl	r3, #5
	add	r5, r3, r2
.Ldcb76:
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x30
	str	r3, [r5]
	bl	InitMatrixStack
	bl	Random
	mov	r3, r8
	and	r0, r3
	bl	MatrixRoll
	bl	Random
	mov	r1, r8
	and	r0, r1
	bl	MatrixPitch
	bl	Random
	mov	r2, r8
	and	r0, r2
	bl	MatrixYaw
	mov	r0, r6
	bl	MatrixStore
	mov	r3, #1
	add	r9, r3
	mov	r0, r9
	add	r5, #0x1c
	add	r6, #0x30
	cmp	r0, #0x18
	bne	.Ldcb76
	ldr	r1, [sp, #0x2c]
	add	r1, #1
	add	r7, #0x1c
	str	r1, [sp, #0x2c]
	cmp	r1, #0x10
	bne	.Ldcb34
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	add	r2, r11
	str	r3, [r2]
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Ldcbfc	@ 0x784
	strh	r3, [r2]
	mov	r2, #0
	str	r2, [sp, #0x28]
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Ldcbf4
	b	.Ldcfba
.Ldcbf4:
	mov	r3, sp
	add	r3, #0x6c
	str	r3, [sp, #0xc]
	b	.Ldcc14

	.align	2, 0
.Ldcbfc:
	.word	0x784
	.pool

.Ldcc14:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0xd1
	bgt	.Ldccc2
	cmp	r0, #0
	bne	.Ldcc3e
	ldr	r1, [sp, #0x30]
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r2, [r1, #1]
	lsl	r3, #8
	add	r3, r2
	str	r3, [sp, #0x1c]
	mov	r3, #2
	ldrsb	r3, [r1, r3]
	ldrb	r2, [r1, #3]
	lsl	r3, #8
	add	r3, r2
	add	r1, #4
	str	r3, [sp, #0x18]
	str	r1, [sp, #0x30]
	b	.Ldcc58
.Ldcc3e:
	ldr	r2, [sp, #0x30]
	ldr	r0, [sp, #0x1c]
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	add	r0, r3
	str	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x18]
	mov	r3, #1
	ldrsb	r3, [r2, r3]
	add	r2, #2
	add	r1, r3
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x30]
.Ldcc58:
	add	r2, sp, #0x50
	mov	r3, #0
	str	r3, [r2, #0xc]
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r2, #4]
	ldr	r0, [sp, #0x18]
	mov	r3, #0
	str	r3, [sp, #0x14]
	mov	r9, r3
	mov	r3, #0x80
	mov	r10, r2
	lsl	r3, #15
	lsl	r2, r0, #16
	sub	r7, r3, r2
.Ldcc76:
	ldr	r1, [sp, #0x1c]
	mov	r2, #0xa0
	lsl	r3, r1, #16
	lsl	r2, #15
	mov	r0, r9
	add	r5, r3, r2
	ldr	r1, =0x77d8
	lsl	r3, r0, #2
	add	r3, r11
	mov	r4, #0
	mov	r8, r7
	add	r6, r3, r1
.Ldcc8e:
	mov	r2, r10
	mov	r3, r8
	str	r5, [r2]
	str	r3, [r2, #8]
	ldmia	r6!, {r0}
	mov	r1, r10
	ldr	r2, =.Leeb40
	mov	r3, #0
	str	r4, [sp, #8]
	bl	_UpdateSprite
	ldr	r4, [sp, #8]
	mov	r0, #0x80
	lsl	r0, #14
	add	r4, #1
	add	r5, r0
	cmp	r4, #3
	bne	.Ldcc8e
	ldr	r2, [sp, #0x14]
	mov	r1, #3
	add	r2, #1
	add	r9, r1
	add	r7, r0
	str	r2, [sp, #0x14]
	cmp	r2, #3
	bne	.Ldcc76
.Ldccc2:
	ldr	r3, [sp, #0xc]
	mov	r1, #0
	str	r1, [r3, #4]
	str	r1, [r3, #8]
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x30
	bne	.Ldccde
	ldr	r3, =0x77b4
	mov	r2, #0x18
	add	r3, r11
	str	r2, [r3]
	ldr	r3, =0x77b8
	add	r3, r11
	str	r1, [r3]
.Ldccde:
	mov	r1, #0
	str	r1, [sp, #0x2c]
.Ldcce2:
	ldr	r2, [sp, #0x2c]
	lsl	r6, r2, #3
	mov	r7, r6
	ldr	r3, [sp, #0x28]
	add	r7, #0x40
	cmp	r3, r7
	bge	.Ldccf2
	b	.Ldcf88
.Ldccf2:
	sub	r3, r6, r2
	lsl	r3, #2
	mov	r0, #0xe1
	add	r3, r11
	lsl	r0, #7
	add	r5, r3, r0
	mov	r2, #2
	ldrsh	r1, [r5, r2]
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	mov	r8, r1
	mov	r10, r3
	ldr	r1, [sp, #0x28]
	mov	r3, r6
	add	r3, #0x54
	cmp	r1, r3
	bne	.Ldcd1a
	mov	r0, #0xd4
	bl	_PlaySound
.Ldcd1a:
	mov	r3, r6
	ldr	r2, [sp, #0x28]
	add	r3, #0x55
	cmp	r2, r3
	blt	.Ldcd8e
	ldr	r1, [r5, #0xc]
	ldr	r3, [r5]
	add	r3, r1
	ldr	r2, [r5, #0x10]
	str	r3, [r5]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, =0xffff0000
	mov	r0, #0x80
	add	r1, r3
	lsl	r0, #10
	str	r1, [r5, #0xc]
	add	r2, r0
	ldr	r1, =0x16ac
	str	r2, [r5, #0x10]
	mov	r0, #0x10
	mov	r5, #0x15
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp]
	ldr	r4, [sp, #0x3c]
	add	r1, r11
	add	r2, #4
	sub	r3, #0x28
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	mov	r0, #0x1d
	ldr	r1, =0x17fc
	str	r0, [sp]
	mov	r2, r8
	mov	r0, #0x23
	mov	r3, r10
	add	r1, r11
	sub	r2, #0x10
	sub	r3, #0x13
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	ldr	r1, =0x1bf3
	mov	r0, #0x18
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp, #4]
	add	r1, r11
	sub	r2, #0x14
	add	r3, #0x10
	str	r5, [sp]
	b	.Ldcebc
.Ldcd8e:
	mov	r3, r6
	ldr	r1, [sp, #0x28]
	add	r3, #0x50
	cmp	r1, r3
	bge	.Ldcd9a
	b	.Ldcf08
.Ldcd9a:
	sub	r3, r1, r7
	sub	r3, #0x10
	cmp	r3, #4
	bls	.Ldcda4
	b	.Ldcf88
.Ldcda4:
	ldr	r2, =.Ldcdac
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Ldcdac:
	.word	.Ldcdc0
	.word	.Ldcddc
	.word	.Ldcdf4
	.word	.Ldce26
	.word	.Ldce74
.Ldcdc0:
	mov	r1, #0xe
	mov	r2, r8
	mov	r3, r10
	str	r1, [sp]
	mov	r1, #0x1c
	str	r1, [sp, #4]
	sub	r2, #7
	sub	r3, #0xe
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	mov	r1, r11
	bl	_call_via_r4
	b	.Ldcf88
.Ldcddc:
	mov	r0, #0x17
	mov	r1, #0xc4
	lsl	r1, #1
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp]
	mov	r0, #0x2c
	str	r0, [sp, #4]
	add	r1, r11
	sub	r2, #0xb
	sub	r3, #0x16
	b	.Ldcebc
.Ldcdf4:
	mov	r0, #0x14
	ldr	r1, =0x57c
	str	r0, [sp]
	mov	r2, r8
	mov	r0, #0x1e
	mov	r3, r10
	add	r1, r11
	sub	r2, #4
	sub	r3, #0x1f
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	mov	r0, #0x16
	ldr	r1, =0x7d4
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp]
	mov	r0, #0x21
	str	r0, [sp, #4]
	add	r1, r11
	sub	r2, #0x10
	sub	r3, #1
	b	.Ldcebc
.Ldce26:
	mov	r0, #0x12
	ldr	r1, =0xaaa
	str	r0, [sp]
	mov	r2, r8
	mov	r0, #0x1b
	mov	r3, r10
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x3c]
	add	r1, r11
	add	r2, #1
	sub	r3, #0x26
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	mov	r1, #0xc9
	mov	r0, #0x16
	lsl	r1, #4
	mov	r2, r8
	mov	r3, r10
	add	r1, r11
	sub	r2, #0xb
	sub	r3, #0xb
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	mov	r0, #0x13
	ldr	r1, =0xe74
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp]
	mov	r0, #0x1c
	str	r0, [sp, #4]
	add	r1, r11
	sub	r2, #0x13
	add	r3, #0xb
	b	.Ldcebc
.Ldce74:
	ldr	r1, =0x1088
	mov	r5, #0x17
	mov	r0, #0x10
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp]
	str	r5, [sp, #4]
	ldr	r4, [sp, #0x3c]
	add	r1, r11
	add	r2, #4
	sub	r3, #0x28
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	ldr	r1, =0x11f8
	str	r5, [sp]
	mov	r2, r8
	mov	r5, #0x1c
	mov	r3, r10
	add	r1, r11
	sub	r2, #0xa
	sub	r3, #0x11
	ldr	r4, [sp, #0x3c]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	ldr	r1, =0x147c
	mov	r0, #0x14
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp]
	add	r1, r11
	sub	r2, #0x14
	add	r3, #0xb
	str	r5, [sp, #4]
.Ldcebc:
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	b	.Ldcf88

	.pool_aligned

.Ldcf08:
	ldr	r3, [sp, #0x2c]
	mov	r2, #0
	mov	r9, r2
	lsl	r2, r3, #1
	add	r3, r2, r3
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r0, =ewram_2013800
	lsl	r2, #7
	add	r7, r2, r0
	lsl	r2, r3, #3
	sub	r2, r3
	ldr	r1, =gBuffer
	lsl	r2, #5
	add	r6, sp, #0x60
	add	r5, r2, r1
.Ldcf28:
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.Ldcf7a
	mov	r0, r7
	bl	MatrixLoad
	ldr	r3, [r5]
	ldr	r2, [sp, #0xc]
	str	r3, [r2]
	mov	r1, r6
	ldr	r0, [sp, #0xc]
	bl	Func_80e3944
	ldr	r3, [r6]
	asr	r3, #1
	add	r3, r8
	str	r3, [r6]
	ldr	r3, [r6, #4]
	add	r3, r10
	add	r3, #0x10
	str	r3, [r6, #4]
	ldr	r3, [r5]
	sub	r3, #4
	str	r3, [r5]
	ldr	r3, =Data_ede48
	ldrh	r1, [r3, #8]
	ldr	r3, [sp, #0x24]
	mov	r0, #5
	ldr	r2, [r6]
	add	r1, r3, r1
	ldr	r3, [r6, #4]
	str	r0, [sp]
	mov	r0, #0xa
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x10]
	sub	r2, #2
	ldr	r4, [r0, #4]
	sub	r3, #5
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
.Ldcf7a:
	mov	r1, #1
	add	r9, r1
	mov	r2, r9
	add	r7, #0x30
	add	r5, #0x1c
	cmp	r2, #0x18
	bne	.Ldcf28
.Ldcf88:
	ldr	r3, [sp, #0x2c]
	add	r3, #1
	str	r3, [sp, #0x2c]
	cmp	r3, #0x10
	beq	.Ldcf94
	b	.Ldcce2
.Ldcf94:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	mov	r0, #1
	str	r3, [r2]
	bl	WaitFrames
	ldr	r0, [sp, #0x28]
	add	r0, #1
	str	r0, [sp, #0x28]
	cmp	r0, #0xdc
	beq	.Ldcfba
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Ldcfba
	b	.Ldcc14
.Ldcfba:
	ldr	r0, =Func_80c90e4
	bl	StopTask
	ldr	r1, [sp, #0x38]
	mov	r3, #0
	add	r2, sp, #0x20
	str	r3, [r1, #0x10]
	ldrh	r2, [r2]
	ldr	r3, =iwram_3001ad0
	strh	r2, [r3, #4]
	bl	Func_80d67dc
	ldr	r5, =0x77d8
	mov	r3, #0
	str	r3, [sp, #0x2c]
	add	r5, r11
.Ldcfda:
	ldmia	r5!, {r0}
	bl	_DeleteSprite
	ldr	r0, [sp, #0x2c]
	add	r0, #1
	str	r0, [sp, #0x2c]
	cmp	r0, #9
	bne	.Ldcfda
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldd024	@ 0x80
	strh	r3, [r2]
	ldr	r3, .Ldd028	@ 0x7741
	sub	r2, #0x20
	strh	r3, [r2]
	ldr	r1, =gBuffer
	ldr	r0, =_FILE_b4
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	mov	r5, #0xe1
	mov	r1, #0
	lsl	r5, #7
	str	r1, [sp, #0x2c]
	add	r6, sp, #0x44
	add	r5, r11
	mov	r7, #0x1f
.Ldd010:
	ldr	r0, [sp, #0x2c]
	mov	r1, #6
	bl	__modsi3
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r2, [r3]
	ldr	r3, [r2, #0x14]
	b	.Ldd058

	.align	2, 0
.Ldd024:
	.word	0x80
.Ldd028:
	.word	0x7741
	.pool

.Ldd058:
	cmp	r0, r3
	bge	.Ldd08c
	lsl	r3, r0, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	mov	r1, r6
	bl	GetBattleActorPos2
	bl	Random
	and	r0, r7
	add	r0, #0x28
	neg	r0, r0
	str	r0, [r5, #4]
	ldr	r1, [r6]
	lsr	r3, r1, #31
	add	r1, r3
	mov	r3, #0x50
	sub	r3, r0
	lsr	r2, r3, #31
	add	r3, r2
	asr	r1, #1
	asr	r3, #1
	add	r1, r3
	str	r1, [r5]
	b	.Ldd0a4
.Ldd08c:
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x50
	str	r3, [r5]
	bl	Random
	and	r0, r7
	add	r0, #0x28
	neg	r0, r0
	str	r0, [r5, #4]
.Ldd0a4:
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
	ldr	r2, [sp, #0x2c]
	add	r2, #1
	add	r5, #0x1c
	str	r2, [sp, #0x2c]
	cmp	r2, #0x20
	bne	.Ldd010
	mov	r3, #0
	str	r3, [sp, #0x28]
.Ldd0ba:
	mov	r0, #0
	mov	r7, #0xe1
	lsl	r7, #7
	str	r0, [sp, #0x2c]
	add	r7, r11
.Ldd0c4:
	ldr	r1, [sp, #0x2c]
	ldr	r2, [sp, #0x28]
	lsl	r3, r1, #1
	cmp	r2, r3
	bge	.Ldd0d4
	cmp	r2, #0x28
	bgt	.Ldd0d4
	b	.Ldd220
.Ldd0d4:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	blt	.Ldd168
	cmp	r3, #0x17
	bgt	.Ldd162
	mov	r6, r3
	cmp	r3, #0
	bge	.Ldd0e6
	add	r6, r3, #3
.Ldd0e6:
	ldr	r3, [sp, #0x2c]
	asr	r6, #2
	ldr	r2, =Data_edeb2
	mov	r4, #1
	and	r4, r3
	lsl	r3, r6, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =Data_ede9f
	ldrb	r5, [r3, r6]
	ldr	r2, [r7]
	lsr	r3, r5, #1
	ldr	r0, =gBuffer
	sub	r2, r3
	ldr	r3, =Data_edeab
	add	r1, r0
	ldrb	r0, [r3, r6]
	ldr	r3, [r7, #4]
	str	r5, [sp]
	add	r3, r0
	ldr	r0, =Data_edea5
	ldrb	r0, [r0, r6]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x10]
	lsl	r4, #2
	sub	r3, #0x28
	ldr	r4, [r4, r0]
	sub	r2, #8
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	ldr	r3, [r7, #0x18]
	cmp	r3, #0xb
	bgt	.Ldd162
	mov	r1, #0x10
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	str	r1, [sp]
	mov	r1, #0x15
	str	r1, [sp, #4]
	ldr	r1, =0x16ac
	ldr	r4, [sp, #0x3c]
	add	r2, #4
	sub	r3, #0x28
	ldr	r0, [sp, #0x34]
	add	r1, r11
	bl	_call_via_r4
	mov	r1, #0x1d
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	str	r1, [sp]
	mov	r1, #0x23
	str	r1, [sp, #4]
	ldr	r1, =0x17fc
	sub	r3, #0x13
	sub	r2, #0x10
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	add	r1, r11
	bl	_call_via_r4
	ldr	r3, [r7, #0x18]
.Ldd162:
	add	r3, #1
	str	r3, [r7, #0x18]
	b	.Ldd220
.Ldd168:
	ldr	r1, [r7, #4]
	mov	r5, #0x18
	cmp	r1, #0x38
	ble	.Ldd176
	sub	r3, r5, r1
	mov	r5, r3
	add	r5, #0x38
.Ldd176:
	mov	r3, r1
	mov	r1, #0x10
	ldr	r2, [r7]
	str	r1, [sp]
	ldr	r1, =0x16ac
	mov	r6, #0x15
	add	r2, #4
	sub	r3, #0x28
	ldr	r4, [sp, #0x3c]
	add	r1, r11
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	mov	r1, #0x1d
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	str	r1, [sp]
	mov	r1, #0x23
	str	r1, [sp, #4]
	ldr	r1, =0x17fc
	sub	r2, #0x10
	sub	r3, #0x13
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	add	r1, r11
	bl	_call_via_r4
	cmp	r5, #0
	ble	.Ldd1ca
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, =0x1bf3
	sub	r2, #0x14
	add	r3, #0x10
	str	r6, [sp]
	str	r5, [sp, #4]
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	add	r1, r11
	bl	_call_via_r4
.Ldd1ca:
	ldr	r3, [r7]
	sub	r3, #6
	str	r3, [r7]
	ldr	r3, [r7, #4]
	add	r3, #0xc
	str	r3, [r7, #4]
	cmp	r3, #0x4f
	ble	.Ldd220
	ldr	r2, =0x77a8
	mov	r3, #0
	add	r2, r11
	str	r3, [r7, #0x18]
	mov	r3, #2
	str	r3, [r2]
	mov	r0, #0x86
	bl	_PlaySound
	mov	r1, #6
	ldr	r0, [sp, #0x2c]
	bl	__modsi3
	ldr	r6, =0x7828
	add	r6, r11
	ldr	r2, [r6]
	ldr	r3, [r2, #0x14]
	mov	r4, r0
	cmp	r4, r3
	bge	.Ldd220
	lsl	r5, r4, #1
	add	r5, #0x24
	mov	r3, #8
	ldrsh	r0, [r2, r5]
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r4
	bl	SetBattleActorState
	ldr	r3, [r6]
	mov	r1, #1
	ldrsh	r0, [r3, r5]
	bl	_SetBattleActorKnockback
.Ldd220:
	ldr	r3, [sp, #0x2c]
	add	r3, #1
	add	r7, #0x1c
	str	r3, [sp, #0x2c]
	cmp	r3, #0x18
	beq	.Ldd22e
	b	.Ldd0c4
.Ldd22e:
	mov	r0, #4
	mov	r1, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	mov	r0, #1
	str	r3, [r2]
	bl	WaitFrames
	ldr	r0, [sp, #0x28]
	add	r0, #1
	str	r0, [sp, #0x28]
	cmp	r0, #0x58
	beq	.Ldd254
	b	.Ldd0ba
.Ldd254:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
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
.func_end Anim_Atalanta

	.section .rodata
.Leeb40:
	.incrom 0xeeb40, 0xeeb48
