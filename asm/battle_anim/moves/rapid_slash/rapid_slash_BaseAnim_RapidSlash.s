	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BaseAnim_RapidSlash  @ 0x080e2974
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x8c
	ldr	r2, =iwram_3001eec
	str	r1, [sp, #0x54]
	mov	r3, r2
	mov	r6, r0
	ldmia	r3!, {r0}
	str	r0, [sp, #0x50]
	ldr	r3, [r3]
	str	r3, [sp, #0x4c]
	ldr	r1, [r2, #8]
	str	r1, [sp, #0x44]
	sub	r2, #0x6c
	ldr	r2, [r2]
	str	r2, [sp, #0x40]
	ldr	r2, =0x7828
	add	r5, r0, r2
	str	r6, [r5]
	mov	r0, #0
	bl	AnimStart
	ldr	r3, .Le29e4	@ 0x1010
	ldr	r2, =REG_BLDALPHA
	ldr	r5, [r5]
	strh	r3, [r2]
	ldr	r3, [r5, #0x1c]
	cmp	r3, #1
	bne	.Le29cc
	add	r3, sp, #0x64
	ldr	r2, [r5, #4]
	str	r3, [sp]
	add	r3, sp, #0x60
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #7
	mov	r3, #2
	bl	Anim_Djinni
.Le29cc:
	ldr	r1, [sp, #0x44]
	ldr	r0, =_FILE_73
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	mov	r3, #0
	ldr	r0, =_FILE_99
	ldr	r1, [sp, #0x50]
	mov	r2, #1
	b	.Le29fc

	.align	2, 0
.Le29e4:
	.word	0x1010
	.pool

.Le29fc:
	bl	LoadVFXFile
	mov	r3, #0xa2
	mov	r4, #0x90
	lsl	r3, #7
	lsl	r4, #1
	mov	r5, #0
	mov	r12, r3
	mov	r14, r4
	mov	r7, #0
	mov	r6, #0
.Le2a12:
	add	r3, r6, r5
	ldr	r2, [sp, #0x50]
	lsl	r3, #3
	mov	r0, #0
	mov	r8, r7
	add	r1, r3, r2
.Le2a1e:
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	ldrb	r2, [r1]
	add	r3, r8
	ldr	r4, [sp, #0x50]
	add	r3, r12
	add	r0, #1
	add	r1, #1
	strb	r2, [r4, r3]
	cmp	r0, #0x28
	bne	.Le2a1e
	add	r5, #1
	add	r7, #0x14
	add	r6, #4
	cmp	r5, r14
	bne	.Le2a12
	ldr	r5, [sp, #0x54]
	ldr	r0, [sp, #0x54]
	lsl	r5, #3
	ldr	r3, =.Leed3e
	str	r5, [sp, #0x3c]
	sub	r2, r5, r0
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	bne	.Le2a60
	ldr	r0, =_FILE_b5
	ldr	r1, [sp, #0x50]
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	b	.Le2a6c
.Le2a60:
	ldr	r0, =_FILE_b6
	ldr	r1, [sp, #0x50]
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
.Le2a6c:
	ldr	r1, =ewram_2015e00
	mov	r2, #1
	mov	r3, #0
	ldr	r0, =_FILE_6b
	bl	LoadVFXFile
	ldr	r1, [sp, #0x3c]
	ldr	r4, [sp, #0x54]
	ldr	r2, =.Leed3e
	sub	r3, r1, r4
	add	r3, #1
	ldrb	r3, [r2, r3]
	cmp	r3, #1
	beq	.Le2a9c
	cmp	r3, #1
	bgt	.Le2a92
	cmp	r3, #0
	beq	.Le2a98
	b	.Le2aa4
.Le2a92:
	cmp	r3, #2
	beq	.Le2aa0
	b	.Le2aa4
.Le2a98:
	ldr	r0, =_FILE_8d
	b	.Le2aa6
.Le2a9c:
	ldr	r0, =_FILE_a0
	b	.Le2aa6
.Le2aa0:
	ldr	r0, =_FILE_b6
	b	.Le2aa6
.Le2aa4:
	ldr	r0, =_FILE_b4
.Le2aa6:
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	mov	r2, #0x80
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	bl	_call_via_r3
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =0x7828
	ldr	r0, [sp, #0x50]
	add	r5, r0, r1
	ldr	r3, [r5]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, sp
	add	r3, #0x74
	mov	r1, r3
	str	r3, [sp, #0x38]
	bl	GetBattleActorPos2
	mov	r0, #0xef
	ldr	r4, [sp, #0x50]
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r2, r4, r0
	mov	r3, #2
	str	r3, [r2]
	add	r2, r4, r1
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r3, [r5]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_GetBattleActor
	ldr	r5, =gBuffer
	mov	r3, #0
	ldr	r6, [r0]
	mov	r8, r3
	mov	r7, #0xff
.Le2b08:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	mov	r4, #0xc8
	ldr	r3, [r6, #0xc]
	lsl	r4, #13
	add	r3, r4
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	Random
	and	r0, r7
	lsl	r0, #12
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r7
	sub	r0, #0x7f
	lsl	r0, #12
	str	r0, [r5, #0x10]
	bl	Random
	and	r0, r7
	sub	r0, #0x7f
	ldr	r3, [r5]
	lsl	r0, #12
	str	r0, [r5, #0x14]
	cmp	r3, #0
	ble	.Le2b48
	ldr	r3, [r5, #0xc]
	neg	r3, r3
	str	r3, [r5, #0xc]
.Le2b48:
	mov	r3, #1
	mov	r0, #1
	mov	r1, #0xc0
	neg	r3, r3
	add	r8, r0
	lsl	r1, #2
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r8, r1
	bne	.Le2b08
	ldr	r2, [sp, #0x50]
	ldr	r4, =0x7828
	add	r3, r2, r4
	ldr	r3, [r3]
	mov	r2, #4
	ldr	r0, [r3, #8]
	mov	r5, #0x24
	ldrsh	r1, [r3, r5]
	mov	r3, #0
	bl	_Func_80b82c4
	ldr	r2, [sp, #0x3c]
	ldr	r4, [sp, #0x54]
	mov	r0, #0
	str	r0, [sp, #0x48]
	ldr	r1, =.Leed3e
	sub	r3, r2, r4
	add	r3, #5
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	bne	.Le2b88
	b	.Le2fe6
.Le2b88:
	mov	r5, sp
	add	r5, #0x80
	mov	r0, sp
	add	r0, #0x58
	str	r5, [sp, #0x18]
	ldr	r3, [sp, #0x40]
	ldr	r5, =0x7828
	ldr	r4, [sp, #0x50]
	str	r0, [sp, #0x1c]
	ldr	r0, =gPtrs
	add	r3, #0xc
	add	r5, r4, r5
	str	r3, [sp, #0x14]
	str	r5, [sp, #0x30]
	str	r0, [sp, #0x2c]
.Le2ba6:
	ldr	r4, [sp, #0x54]
	sub	r3, r2, r4
	add	r3, #2
	ldrb	r1, [r1, r3]
	ldr	r5, [sp, #0x30]
	str	r1, [sp, #0x34]
	ldr	r3, [r5]
	ldr	r1, [sp, #0x18]
	ldr	r0, [r3, #8]
	bl	GetBattleActorPos2
	ldr	r0, [sp, #0x18]
	ldr	r3, [r0]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r0]
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le2bf2
	mov	r1, #2
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	mov	r2, #2
	str	r2, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xb
	bl	BuildDraw2DFuncEx
	b	.Le2c12
.Le2bf2:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	mov	r4, #2
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	str	r4, [sp]
	bl	BuildDraw2DFuncEx
.Le2c12:
	ldr	r3, [sp, #0x2c]
	add	r3, #0xb8
	ldr	r3, [r3]
	ldr	r5, =iwram_3001f0c
	str	r3, [sp, #0x58]
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r5]
	str	r3, [r0, #4]
	ldr	r2, [sp, #0x34]
	mov	r1, #0
	mov	r8, r1
	cmp	r2, #0
	bne	.Le2c2e
	b	.Le2ed6
.Le2c2e:
	ldr	r3, [sp, #0x3c]
	ldr	r4, [sp, #0x54]
	sub	r3, r4
	str	r3, [sp, #0x28]
	ldr	r0, [sp, #0x28]
	ldr	r5, [sp, #0x38]
	add	r3, #6
	add	r0, #3
	str	r3, [sp, #0x24]
	str	r0, [sp, #0x20]
	str	r1, [sp, #0x10]
	mov	r11, r5
.Le2c46:
	ldr	r3, [sp, #0x28]
	ldr	r1, =.Leed3e
	add	r3, #4
	ldrb	r3, [r1, r3]
	mov	r2, r8
	mul	r2, r3
	ldr	r3, [sp, #0x48]
	mov	r10, r2
	cmp	r3, r10
	bge	.Le2c5c
	b	.Le2d66
.Le2c5c:
	mov	r3, r10
	ldr	r4, [sp, #0x48]
	add	r3, #6
	cmp	r4, r3
	bge	.Le2d66
	mov	r3, #3
	mov	r0, r8
	mov	r5, r10
	and	r3, r0
	sub	r2, r4, r5
	cmp	r3, #1
	ble	.Le2c7c
	ldr	r4, [sp, #0x28]
	ldrb	r3, [r1, r4]
	cmp	r3, #1
	bne	.Le2cee
.Le2c7c:
	ldr	r5, [sp, #0x30]
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le2cba
	lsl	r1, r2, #3
	sub	r1, r2
	lsl	r1, #2
	sub	r1, r2
	ldr	r2, [sp, #0x50]
	mov	r3, r11
	lsl	r1, #7
	add	r1, r2, r1
	ldr	r2, [r3]
	mov	r0, #1
	mov	r4, r8
	and	r4, r0
	lsr	r3, r2, #31
	mov	r5, r11
	mov	r0, #0x30
	add	r2, r3
	ldr	r3, [r5, #4]
	str	r0, [sp]
	mov	r0, #0x48
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x1c]
	lsl	r4, #2
	asr	r2, #1
	sub	r2, #0x10
	sub	r3, #0x28
	b	.Le2d26
.Le2cba:
	lsl	r1, r2, #3
	sub	r1, r2
	lsl	r1, #2
	sub	r1, r2
	ldr	r2, [sp, #0x50]
	mov	r3, r11
	lsl	r1, #7
	add	r1, r2, r1
	ldr	r2, [r3]
	mov	r0, #1
	mov	r4, r8
	and	r4, r0
	lsr	r3, r2, #31
	mov	r5, r11
	mov	r0, #0x30
	add	r2, r3
	ldr	r3, [r5, #4]
	str	r0, [sp]
	mov	r0, #0x48
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x1c]
	lsl	r4, #2
	asr	r2, #1
	sub	r2, #0x20
	sub	r3, #0x28
	b	.Le2d26
.Le2cee:
	ldr	r0, [sp, #0x30]
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le2d30
	mov	r1, #1
	mov	r4, r8
	and	r4, r1
	lsl	r1, r2, #1
	add	r1, r2
	ldr	r3, [sp, #0x38]
	ldr	r2, =ewram_2015e00
	lsl	r1, #8
	add	r1, r2
	ldr	r2, [r3]
	ldr	r5, [sp, #0x18]
	lsr	r3, r2, #31
	mov	r0, #0x30
	add	r2, r3
	ldr	r3, [r5, #4]
	str	r0, [sp]
	mov	r0, #0x10
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x1c]
	lsl	r4, #2
	asr	r2, #1
	sub	r2, #0x10
	sub	r3, #8
.Le2d26:
	ldr	r4, [r4, r5]
	ldr	r0, [sp, #0x4c]
	bl	_call_via_r4
	b	.Le2d66
.Le2d30:
	lsl	r1, r2, #1
	add	r1, r2
	ldr	r3, [sp, #0x38]
	ldr	r2, =ewram_2015e00
	lsl	r1, #8
	add	r1, r2
	ldr	r2, [r3]
	mov	r0, #1
	ldr	r5, [sp, #0x18]
	mov	r4, r8
	and	r4, r0
	lsr	r3, r2, #31
	mov	r0, #0x30
	add	r2, r3
	ldr	r3, [r5, #4]
	str	r0, [sp]
	mov	r0, #0x10
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x1c]
	lsl	r4, #2
	asr	r2, #1
	sub	r2, #0x20
	sub	r3, #8
	ldr	r4, [r4, r5]
	ldr	r0, [sp, #0x4c]
	bl	_call_via_r4
.Le2d66:
	mov	r0, #2
	add	r0, r10
	ldr	r1, [sp, #0x48]
	mov	r9, r0
	cmp	r1, r9
	beq	.Le2d74
	b	.Le2e72
.Le2d74:
	ldr	r2, =.Leed3e
	ldr	r4, [sp, #0x24]
	ldrb	r3, [r2, r4]
	cmp	r3, #1
	bne	.Le2d8c
	mov	r1, #0x80
	ldr	r3, =Func_80008d8
	ldr	r0, [sp, #0x4c]
	lsl	r1, #7
	ldr	r2, =0x2f2f2f2f
	bl	_call_via_r3
.Le2d8c:
	ldr	r0, [sp, #0x50]
	ldr	r1, =0x7828
	add	r5, r0, r1
	ldr	r3, [r5]
	mov	r6, #4
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r1, #7
	mov	r3, #0
	mov	r2, #5
	str	r6, [sp]
	bl	SetBattleActorState
	ldr	r3, [sp, #0x34]
	sub	r3, #1
	cmp	r8, r3
	bne	.Le2e14
	ldr	r3, [r5]
	mov	r1, #4
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	bl	_SetBattleActorKnockback
	ldr	r0, =0x77a8
	ldr	r5, [sp, #0x50]
	mov	r3, #8
	add	r2, r5, r0
	str	r3, [r2]
	mov	r0, #0x86
	bl	_Func_80bd7dc
	b	.Le2e38

	.pool_aligned

.Le2e14:
	mov	r3, r8
	mov	r1, #1
	and	r3, r1
	cmp	r3, #0
	beq	.Le2e2a
	ldr	r3, [r5]
	mov	r1, #7
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_SetBattleActorKnockback
.Le2e2a:
	ldr	r4, [sp, #0x50]
	ldr	r5, =0x77a8
	add	r3, r4, r5
	str	r6, [r3]
	mov	r0, #0x86
	bl	_PlaySound
.Le2e38:
	ldr	r0, =.Leed3e
	ldr	r1, [sp, #0x20]
	ldrb	r3, [r0, r1]
	mov	r6, #0
	cmp	r3, #0
	beq	.Le2e72
	ldr	r2, [sp, #0x3c]
	ldr	r4, [sp, #0x54]
	mov	r1, r0
	sub	r3, r2, r4
	ldr	r0, [sp, #0x10]
	ldr	r2, =ewram_2010018
	add	r7, r3, #3
	add	r5, r0, r2
	mov	r2, #7
.Le2e56:
	str	r1, [sp, #0xc]
	str	r2, [sp, #8]
	bl	Random
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #0xc]
	and	r0, r2
	ldrb	r3, [r1, r7]
	add	r0, #0xf
	add	r6, #1
	str	r0, [r5]
	add	r5, #0x1c
	cmp	r6, r3
	bne	.Le2e56
.Le2e72:
	ldr	r3, [sp, #0x48]
	cmp	r3, r9
	blt	.Le2ec0
	mov	r3, r10
	ldr	r4, [sp, #0x48]
	add	r3, #0xe
	cmp	r4, r3
	bge	.Le2ec0
	mov	r5, r10
	sub	r3, r4, r5
	sub	r3, #2
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	lsl	r1, r3, #4
	sub	r1, r3
	ldr	r0, [sp, #0x50]
	lsl	r1, #6
	mov	r2, #0xa2
	add	r1, r0, r1
	lsl	r2, #7
	mov	r3, r11
	add	r1, r2
	ldr	r2, [r3]
	mov	r4, r11
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r4, #4]
	mov	r0, #0x14
	asr	r2, #1
	mov	r5, #0x30
	str	r0, [sp]
	sub	r2, #0xa
	sub	r3, #0x18
	str	r5, [sp, #4]
	ldr	r4, [sp, #0x58]
	ldr	r0, [sp, #0x4c]
	bl	_call_via_r4
.Le2ec0:
	ldr	r0, [sp, #0x10]
	mov	r1, #0xe0
	lsl	r1, #2
	mov	r2, #1
	ldr	r3, [sp, #0x34]
	add	r0, r1
	add	r8, r2
	str	r0, [sp, #0x10]
	cmp	r8, r3
	beq	.Le2ed6
	b	.Le2c46
.Le2ed6:
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	InitMatrixStack
	ldr	r0, [sp, #0x40]
	ldr	r1, [sp, #0x14]
	bl	MatrixSetLook
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	mov	r4, #2
	mov	r1, #7
	mov	r3, #3
	mov	r0, #0x2f
	mov	r2, #7
	str	r4, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [sp, #0x2c]
	add	r3, #0xb8
	ldr	r3, [r3]
	ldr	r5, =iwram_3001f0c
	str	r3, [sp, #0x58]
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r5]
	mov	r1, #0
	str	r3, [r0, #4]
	ldr	r6, =gBuffer
	mov	r8, r1
	add	r7, sp, #0x68
.Le2f24:
	ldr	r5, [r6, #0x18]
	cmp	r5, #0
	ble	.Le2f98
	mov	r1, r7
	mov	r0, r6
	bl	Func_80e3944
	ldr	r2, [r7]
	lsr	r3, r2, #31
	add	r2, r3
	mov	r3, r8
	lsr	r0, r3, #31
	asr	r5, #3
	add	r5, #1
	add	r0, r8
	lsl	r4, r5, #1
	asr	r2, #1
	mov	r3, #1
	ldr	r1, =Data_ede48
	asr	r0, #1
	str	r2, [r7]
	and	r0, r3
	sub	r3, r4, #2
	ldrh	r1, [r1, r3]
	ldr	r3, [sp, #0x44]
	add	r1, r3, r1
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r7, #4]
	str	r5, [sp]
	sub	r3, r5
	str	r4, [sp, #4]
	ldr	r5, [sp, #0x1c]
	lsl	r0, #2
	ldr	r4, [r0, r5]
	ldr	r0, [sp, #0x4c]
	bl	_call_via_r4
	mov	r0, r6
	mov	r1, #0x3c
	ldr	r2, =0xfffffc00
	bl	Func_80e38b8
	ldr	r3, [r6, #4]
	ldr	r0, =0x7ffff
	cmp	r3, r0
	bgt	.Le2f92
	ldr	r3, [r6, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6, #0x10]
.Le2f92:
	ldr	r3, [r6, #0x18]
	sub	r3, #1
	str	r3, [r6, #0x18]
.Le2f98:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #2
	add	r6, #0x1c
	cmp	r8, r2
	bne	.Le2f24
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	mov	r1, #8
	mov	r0, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r4, =0x7824
	ldr	r3, [sp, #0x50]
	add	r2, r3, r4
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r5, [sp, #0x48]
	ldr	r2, [sp, #0x3c]
	ldr	r0, [sp, #0x54]
	add	r5, #1
	str	r5, [sp, #0x48]
	ldr	r1, =.Leed3e
	sub	r3, r2, r0
	add	r3, #5
	ldrb	r3, [r1, r3]
	cmp	r5, r3
	beq	.Le2fe6
	b	.Le2ba6
.Le2fe6:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	bl	AnimEnd
	add	sp, #0x8c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end BaseAnim_RapidSlash
