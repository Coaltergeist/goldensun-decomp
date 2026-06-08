	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BaseAnim_SonicWave
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x54
	ldr	r6, =iwram_3001eec
	str	r1, [sp, #0x44]
	mov	r3, r6
	ldmia	r3!, {r1}
	str	r1, [sp, #0x40]
	ldr	r3, [r3]
	str	r3, [sp, #0x3c]
	mov	r3, r6
	ldr	r2, =0x7828
	sub	r3, #0x6c
	ldr	r3, [r3]
	add	r5, r1, r2
	str	r3, [sp, #0x2c]
	str	r0, [r5]
	mov	r0, #1
	bl	AnimStart
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Lc9d00
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xb
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r6, #0x1c]
	mov	r0, #0x2f
	str	r3, [sp, #0x30]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	b	.Lc9d1c
.Lc9d00:
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r4, [r6, #0x1c]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	str	r4, [sp, #0x30]
.Lc9d1c:
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r6, [r6, #0x20]
	str	r6, [sp, #0x34]
	ldr	r0, =_FILE_58
	ldr	r1, [sp, #0x40]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, [sp, #0x44]
	cmp	r0, #4
	bhi	.Lc9d84
	ldr	r3, =.Lc9d40
	lsl	r1, r0, #2
	ldr	r3, [r1, r3]
	mov	pc, r3
	.align	2, 0
.Lc9d40:
	.word	.Lc9d54
	.word	.Lc9d58
	.word	.Lc9d5c
	.word	.Lc9d60
	.word	.Lc9d84
.Lc9d54:
	ldr	r0, =_FILE_b4
	b	.Lc9d86
.Lc9d58:
	ldr	r0, =_FILE_a0
	b	.Lc9d86
.Lc9d5c:
	ldr	r0, =_FILE_cb
	b	.Lc9d86
.Lc9d60:
	ldr	r0, =_FILE_86
	b	.Lc9d86

	.pool_aligned

.Lc9d84:
	ldr	r0, =_FILE_a3
.Lc9d86:
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r4, #0xef
	ldr	r3, [sp, #0x40]
	lsl	r4, #7
	add	r2, r3, r4
	mov	r3, #2
	str	r3, [r2]
	ldr	r0, [sp, #0x40]
	ldr	r1, =0x7784
	mov	r3, #0x32
	add	r2, r0, r1
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r3, =0x7828
	ldr	r2, [sp, #0x40]
	add	r5, r2, r3
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r1, [r3, #0x14]
	mov	r4, #3
	mov	r2, r1
	mul	r2, r4
	lsl	r3, r2, #1
	ldr	r0, [r0]
	add	r3, r2
	lsl	r3, #1
	mov	r10, r0
	add	r3, #0x30
	mov	r0, #0
	str	r3, [sp, #0x28]
	str	r0, [sp, #0x38]
	cmp	r1, #0
	beq	.Lc9e84
	mov	r9, r0
.Lc9de8:
	ldr	r1, [sp, #0x40]
	ldr	r2, =0x7828
	ldr	r4, [sp, #0x38]
	add	r3, r1, r2
	ldr	r2, [r3]
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_GetBattleActor
	ldr	r0, [r0]
	mov	r4, r9
	mov	r8, r0
	ldr	r0, [sp, #0x40]
	lsl	r3, r4, #2
	mov	r1, #0xe1
	mov	r2, #0
	add	r3, r0
	lsl	r1, #7
	mov	r11, r2
	add	r7, r3, r1
.Lc9e12:
	mov	r2, r10
	ldr	r3, [r2, #8]
	str	r3, [r7]
	mov	r4, #0xa0
	ldr	r5, [r2, #0xc]
	lsl	r4, #13
	add	r5, r4
	str	r5, [r7, #4]
	ldr	r6, [r2, #0x10]
	str	r6, [r7, #8]
	mov	r1, r8
	ldr	r0, [r1, #8]
	mov	r1, #0x18
	sub	r0, r3
	bl	__divsi3
	str	r0, [r7, #0xc]
	mov	r2, r8
	ldr	r0, [r2, #0xc]
	mov	r3, #0xa0
	lsl	r3, #13
	add	r0, r3
	mov	r1, #0x18
	sub	r0, r5
	bl	__divsi3
	str	r0, [r7, #0x10]
	mov	r4, r8
	ldr	r0, [r4, #0x10]
	mov	r1, #0x18
	sub	r0, r6
	bl	__divsi3
	str	r0, [r7, #0x14]
	mov	r0, #1
	add	r11, r0
	mov	r3, #0
	mov	r1, r11
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r1, #3
	bne	.Lc9e12
	mov	r2, #3
	lsl	r3, r2, #3
	sub	r3, r2
	add	r9, r3
	ldr	r3, [sp, #0x38]
	ldr	r4, [sp, #0x40]
	add	r3, #1
	ldr	r0, =0x7828
	str	r3, [sp, #0x38]
	add	r3, r4, r0
	ldr	r3, [r3]
	ldr	r1, [sp, #0x38]
	ldr	r3, [r3, #0x14]
	cmp	r1, r3
	bne	.Lc9de8
.Lc9e84:
	ldr	r3, [sp, #0x28]
	mov	r2, #0
	mov	r10, r2
	cmp	r3, #0
	bne	.Lc9e90
	b	.Lca1a4
.Lc9e90:
	ldr	r4, [sp, #0x2c]
	sub	r3, #0x10
	add	r4, #0xc
	str	r3, [sp, #0x18]
	str	r4, [sp, #0x1c]
.Lc9e9a:
	ldr	r0, [sp, #0x40]
	mov	r1, #0xd3
	mov	r2, #0
	lsl	r1, #7
	mov	r7, #0x80
	mov	r3, r10
	str	r2, [sp, #0x38]
	add	r6, r0, r1
	lsl	r7, #12
	lsl	r5, r3, #12
.Lc9eae:
	mov	r0, r5
	bl	sin
	lsl	r0, #1
	sub	r0, r7, r0
	asr	r0, #10
	stmia	r6!, {r0}
	ldr	r0, [sp, #0x38]
	mov	r4, #0x80
	lsl	r4, #5
	add	r0, #1
	add	r5, r4
	str	r0, [sp, #0x38]
	cmp	r0, #0xa0
	bne	.Lc9eae
	ldr	r1, [sp, #0x18]
	cmp	r10, r1
	ble	.Lc9ee0
	ldr	r4, [sp, #0x28]
	mov	r0, r10
	ldr	r1, .Lc9f04	@ 0x1000
	ldr	r3, =REG_BLDALPHA
	sub	r2, r4, r0
	orr	r2, r1
	strh	r2, [r3]
.Lc9ee0:
	bl	InitMatrixStack
	ldr	r1, [sp, #0x1c]
	ldr	r0, [sp, #0x2c]
	bl	MatrixSetLook
	mov	r1, #0
	ldr	r3, [sp, #0x40]
	ldr	r4, =0x7828
	str	r1, [sp, #0x38]
	add	r2, r3, r4
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Lc9f00
	b	.Lca17c
.Lc9f00:
	b	.Lc9f20

	.align	2, 0
.Lc9f04:
	.word	0x1000
	.pool

.Lc9f20:
	mov	r1, r10
	str	r2, [sp, #0x24]
	mov	r0, #0x24
	mov	r2, #0
	sub	r1, #0x1e
	str	r0, [sp, #0x14]
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	str	r2, [sp, #8]
.Lc9f32:
	ldr	r3, [sp, #0xc]
	cmp	r10, r3
	bge	.Lc9f3a
	b	.Lca152
.Lc9f3a:
	ldr	r0, [sp, #0x44]
	lsl	r0, #2
	mov	r4, #0
	str	r0, [sp, #0x20]
	mov	r11, r4
	mov	r9, r3
.Lc9f46:
	cmp	r10, r9
	blt	.Lca040
	ldr	r3, [sp, #8]
	add	r3, r11
	lsl	r2, r3, #3
	ldr	r1, [sp, #0x40]
	sub	r2, r3
	lsl	r2, #2
	mov	r3, #0xe1
	add	r2, r1, r2
	lsl	r3, #7
	add	r3, r2
	mov	r8, r3
	add	r6, sp, #0x48
	mov	r0, r8
	mov	r1, r6
	bl	Func_80e3944
	ldr	r3, [r6]
	asr	r7, r3, #1
	str	r7, [r6]
	mov	r4, r8
	ldr	r5, [r4, #0x18]
	cmp	r5, #0
	bge	.Lc9f7a
	add	r5, #7
.Lc9f7a:
	asr	r2, r5, #3
	cmp	r2, #5
	ble	.Lc9f82
	mov	r2, #5
.Lc9f82:
	ldr	r3, =.Ledee8
	ldr	r0, [sp, #0x20]
	ldrsb	r3, [r3, r0]
	cmp	r3, #0
	beq	.Lc9fe8
	mov	r1, r10
	lsl	r5, r2, #1
	lsr	r0, r1, #31
	add	r5, r2
	add	r0, r10
	mov	r1, #3
	lsl	r5, #3
	asr	r0, #1
	add	r5, r2
	bl	__modsi3
	lsl	r2, r0, #2
	add	r2, r0
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #6
	ldr	r2, [sp, #0x40]
	lsl	r5, #5
	add	r5, r3
	ldr	r3, [r6, #4]
	add	r5, r2, r5
	mov	r4, #0x14
	mov	r0, #0x28
	mov	r2, r7
	sub	r2, #0xa
	sub	r3, #0x28
	str	r4, [sp]
	str	r0, [sp, #4]
	mov	r1, r5
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x3c]
	bl	_call_via_r4
	ldr	r2, [r6]
	mov	r0, #0x14
	mov	r1, #0x28
	ldr	r3, [r6, #4]
	sub	r2, #0xa
	str	r0, [sp]
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x3c]
	mov	r1, r5
	ldr	r4, [sp, #0x34]
	bl	_call_via_r4
	b	.Lca02e
.Lc9fe8:
	lsl	r5, r2, #1
	add	r5, r2
	lsl	r5, #3
	ldr	r0, [sp, #0x40]
	add	r5, r2
	lsl	r5, #5
	mov	r1, #0x96
	ldr	r3, [r6, #4]
	add	r5, r0, r5
	lsl	r1, #6
	add	r5, r1
	mov	r4, #0x14
	mov	r0, #0x28
	mov	r2, r7
	sub	r2, #0xa
	sub	r3, #0x28
	str	r4, [sp]
	str	r0, [sp, #4]
	mov	r1, r5
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x3c]
	bl	_call_via_r4
	ldr	r2, [r6]
	mov	r0, #0x14
	mov	r1, #0x28
	ldr	r3, [r6, #4]
	sub	r2, #0xa
	str	r0, [sp]
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x3c]
	mov	r1, r5
	ldr	r4, [sp, #0x34]
	bl	_call_via_r4
.Lca02e:
	mov	r0, r8
	mov	r1, #0x40
	mov	r2, #0
	bl	Func_80e38b8
	mov	r0, r8
	ldr	r3, [r0, #0x18]
	add	r3, #1
	str	r3, [r0, #0x18]
.Lca040:
	mov	r2, #1
	add	r11, r2
	mov	r1, #6
	mov	r3, r11
	add	r9, r1
	cmp	r3, #3
	beq	.Lca050
	b	.Lc9f46
.Lca050:
	ldr	r3, [sp, #0x20]
	ldr	r1, =.Ledee8
	add	r3, #3
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.Lca0ca
	ldr	r3, [sp, #0xc]
	add	r3, #0x1e
	cmp	r10, r3
	blt	.Lca0ca
	ldr	r3, [sp, #0xc]
	add	r3, #0x3e
	cmp	r10, r3
	bge	.Lca0ca
	ldr	r4, [sp, #0x24]
	ldr	r1, [sp, #0x14]
	ldr	r3, [r4]
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	ldr	r4, [sp, #0xc]
	mov	r3, r10
	sub	r2, r3, r4
	ldr	r3, [sp, #0x10]
	ldr	r0, [r0]
	ldr	r1, =.Ledefc
	cmp	r3, #0
	bge	.Lca08c
	mov	r3, r2
	sub	r3, #0x17
.Lca08c:
	ldr	r2, [sp, #0x10]
	asr	r3, #3
	lsl	r3, #3
	sub	r3, r2, r3
	ldrsb	r3, [r1, r3]
	ldr	r2, [r0, #8]
	lsl	r3, #16
	add	r2, r3
	str	r2, [r0, #8]
	cmp	r2, #0
	ble	.Lca0aa
	mov	r4, #0x80
	lsl	r4, #8
	add	r3, r2, r4
	b	.Lca0ae
.Lca0aa:
	ldr	r1, =0xffff8000
	add	r3, r2, r1
.Lca0ae:
	str	r3, [r0, #8]
	ldr	r2, [sp, #0x24]
	ldr	r3, [r2]
	ldr	r4, [sp, #0x14]
	ldrsh	r0, [r3, r4]
	mov	r3, #0
	mov	r1, #1
	str	r3, [sp]
	neg	r1, r1
	mov	r2, #5
	sub	r3, #1
	bl	Func_80d6888
	ldr	r1, =.Ledee8
.Lca0ca:
	ldr	r3, [sp, #0x20]
	add	r3, #1
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.Lca126
	ldr	r3, [sp, #0xc]
	add	r3, #0x18
	cmp	r10, r3
	bne	.Lca106
	mov	r0, #0x85
	bl	_PlaySound
	ldr	r2, [sp, #0x38]
	cmp	r2, #0
	bne	.Lca0f0
	mov	r0, #1
	neg	r0, r0
	bl	_Func_80bd7dc
.Lca0f0:
	ldr	r4, [sp, #0x24]
	ldr	r1, [sp, #0x14]
	ldr	r3, [r4]
	ldrsh	r0, [r3, r1]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	ldr	r3, [sp, #0x38]
	bl	Func_80d6888
.Lca106:
	ldr	r3, [sp, #0xc]
	add	r3, #0x28
	cmp	r10, r3
	bne	.Lca124
	ldr	r4, [sp, #0x24]
	ldr	r3, [r4]
	ldr	r1, [sp, #0x14]
	ldrsh	r0, [r3, r1]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	ldr	r3, [sp, #0x38]
	bl	Func_80d6888
.Lca124:
	ldr	r1, =.Ledee8
.Lca126:
	ldr	r3, [sp, #0x20]
	add	r3, #2
	ldrsb	r1, [r1, r3]
	mov	r3, #1
	neg	r3, r3
	cmp	r1, r3
	beq	.Lca152
	ldr	r3, [sp, #0xc]
	add	r3, #0x18
	cmp	r10, r3
	bne	.Lca152
	ldr	r4, [sp, #0x40]
	ldr	r0, =0x77a8
	mov	r3, #4
	add	r2, r4, r0
	str	r3, [r2]
	ldr	r2, [sp, #0x24]
	ldr	r4, [sp, #0x14]
	ldr	r3, [r2]
	ldrsh	r0, [r3, r4]
	bl	_SetBattleActorKnockback
.Lca152:
	ldr	r3, [sp, #0x14]
	ldr	r4, [sp, #0x10]
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x38]
	add	r3, #2
	sub	r4, #0x20
	add	r0, #0x20
	add	r1, #3
	add	r2, #1
	str	r4, [sp, #0x10]
	str	r3, [sp, #0x14]
	str	r0, [sp, #0xc]
	str	r1, [sp, #8]
	str	r2, [sp, #0x38]
	ldr	r4, [sp, #0x24]
	ldr	r3, [r4]
	ldr	r3, [r3, #0x14]
	cmp	r2, r3
	beq	.Lca17c
	b	.Lc9f32
.Lca17c:
	mov	r0, #8
	mov	r1, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r1, =0x7824
	ldr	r0, [sp, #0x40]
	mov	r3, #1
	add	r2, r0, r1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #1
	ldr	r3, [sp, #0x28]
	add	r10, r2
	cmp	r10, r3
	beq	.Lca1a4
	b	.Lc9e9a
.Lca1a4:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x54
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end BaseAnim_SonicWave

	.section .rodata
	.global .Leded6
	.global .Lededc

.Leded6:
	.incrom 0xeded6, 0xededc
.Lededc:
	.incrom 0xededc, 0xedee8
.Ledee8:
	.incrom 0xedee8, 0xedefc
.Ledefc:
	.incrom 0xedefc, 0xedf04
