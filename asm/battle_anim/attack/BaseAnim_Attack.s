	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BaseAnim_Attack  @ 0x080e3aa0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_3001eec
	mov	r3, r2
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x5c
	str	r3, [sp, #0x2c]
	ldr	r3, [r2, #8]
	str	r3, [sp, #0x24]
	sub	r2, #0x6c
	ldr	r2, [r2]
	str	r2, [sp, #0x20]
	ldr	r5, [r0]
	str	r5, [sp, #0x1c]
	ldr	r5, =0x7828
	mov	r11, r1
	add	r5, r11
	str	r0, [r5]
	ldr	r0, [r0, #8]
	bl	_GetUnit
	str	r0, [sp, #0x18]
	mov	r0, #1
	bl	WaitFrames
	bl	Func_80c9048
	bl	InitRenderTilemapBG1
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Le3b04	@ 0x1f80
	mov	r0, #1
	strh	r3, [r2]
	bl	WaitFrames
	ldr	r6, [sp, #0x1c]
	cmp	r6, #5
	bne	.Le3b58
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le3b36
	b	.Le3b14

	.align	2, 0
.Le3b04:
	.word	0x1f80
	.pool

.Le3b14:
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xb
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xb
	bl	BuildDraw2DFuncEx
	b	.Le3ba0
.Le3b36:
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	bl	BuildDraw2DFuncEx
	b	.Le3ba0
.Le3b58:
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le3b80
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	bl	BuildDraw2DFuncEx
	b	.Le3ba0
.Le3b80:
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	BuildDraw2DFuncEx
.Le3ba0:
	ldr	r3, =gPtrs
	mov	r2, r3
	add	r2, #0xb8
	ldr	r2, [r2]
	str	r2, [sp, #0x30]
	add	r3, #0xbc
	ldr	r3, [r3]
	mov	r0, sp
	add	r0, #0x30
	str	r0, [sp, #0x10]
	str	r3, [r0, #4]
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, [sp, #0x1c]
	cmp	r1, #4
	bne	.Le3bc6
	ldr	r0, =_FILE_6b
	b	.Le3bf2
.Le3bc6:
	ldr	r2, [sp, #0x1c]
	cmp	r2, #3
	bne	.Le3bda
	ldr	r0, =_FILE_c5
	mov	r1, r11
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	b	.Le3c0a
.Le3bda:
	ldr	r3, [sp, #0x1c]
	cmp	r3, #2
	beq	.Le3bfe
	cmp	r3, #2
	bgt	.Le3bea
	cmp	r3, #0
	blt	.Le3c0a
	b	.Le3bf0
.Le3bea:
	ldr	r5, [sp, #0x1c]
	cmp	r5, #5
	bne	.Le3c0a
.Le3bf0:
	ldr	r0, =_FILE_b5
.Le3bf2:
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	b	.Le3c0a
.Le3bfe:
	ldr	r0, =_FILE_b6
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
.Le3c0a:
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #7
	ble	.Le3c2c
	ldr	r0, =_FILE_8e
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
	b	.Le3c40
.Le3c2c:
	ldr	r0, =_FILE_4a
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Le3c40:
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, =_FILE_76
	ldr	r1, [sp, #0x24]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, =_FILE_99
	ldr	r1, =gBuffer
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r5, =0x7828
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Le3ca4	@ 0x1f81
	add	r5, r11
	strh	r3, [r2]
	ldr	r3, [r5]
	mov	r1, sp
	mov	r6, #0x24
	ldrsh	r0, [r3, r6]
	add	r1, #0x44
	str	r1, [sp, #0x14]
	bl	GetBattleActorPos
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le3ce4
	ldr	r3, [sp, #0x14]
	ldr	r2, [r3]
	mov	r3, #0x60
	b	.Le3cea

	.align	2, 0
.Le3ca4:
	.word	0x1f81
	.pool

.Le3ce4:
	ldr	r5, [sp, #0x14]
	ldr	r2, [r5]
	mov	r3, #0x20
.Le3cea:
	sub	r3, r2
	str	r3, [sp, #0x28]
	ldr	r6, [sp, #0x28]
	cmp	r6, #0
	ble	.Le3cf8
	mov	r0, #0
	str	r0, [sp, #0x28]
.Le3cf8:
	mov	r3, #0x80
	ldr	r1, [sp, #0x28]
	neg	r3, r3
	cmp	r1, r3
	bge	.Le3d04
	str	r3, [sp, #0x28]
.Le3d04:
	ldr	r2, [sp, #0x14]
	ldr	r5, [sp, #0x28]
	ldr	r3, [r2]
	add	r6, sp, #0x28
	add	r3, r5
	str	r3, [r2]
	ldrh	r6, [r6]
	ldr	r2, =iwram_3001ad0
	ldr	r5, =0x7828
	mov	r3, #0x50
	strh	r6, [r2, #4]
	strh	r3, [r2, #6]
	add	r5, r11
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r5]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r6, [r0]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_Func_80b8530
	lsr	r3, r0, #31
	add	r0, r3
	mov	r5, #0xe1
	asr	r0, #1
	mov	r3, #0
	lsl	r5, #7
	mov	r8, r0
	mov	r10, r3
	mov	r7, #0xff
	add	r5, r11
.Le3d4e:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	add	r3, r8
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	Random
	and	r0, r7
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r7
	sub	r0, #0x20
	lsl	r0, #10
	str	r0, [r5, #0x10]
	bl	Random
	and	r0, r7
	sub	r0, #0x7f
	ldr	r3, [r5]
	lsl	r0, #10
	str	r0, [r5, #0x14]
	cmp	r3, #0
	ble	.Le3d8a
	ldr	r3, [r5, #0xc]
	neg	r3, r3
	str	r3, [r5, #0xc]
.Le3d8a:
	ldr	r3, [r5, #0xc]
	mov	r0, #1
	neg	r3, r3
	str	r3, [r5, #0xc]
	mov	r3, r10
	add	r10, r0
	add	r3, #0x10
	mov	r1, r10
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r1, #0x40
	bne	.Le3d4e
	ldr	r5, [sp, #0x20]
	mov	r3, sp
	add	r3, #0x50
	add	r5, #0xc
	mov	r2, #0
	str	r3, [sp, #0xc]
	str	r5, [sp, #8]
	mov	r9, r2
.Le3db2:
	mov	r6, r9
	cmp	r6, #5
	bne	.Le3dd8
	ldr	r0, [sp, #0x18]
	mov	r1, #0x94
	lsl	r1, #1
	add	r3, r0, r1
	ldrb	r0, [r3]
	bl	_GetEnemyUnk
	cmp	r0, #0
	beq	.Le3dd2
	mov	r0, #0x86
	bl	_Func_80bd7dc
	b	.Le3dd8
.Le3dd2:
	mov	r0, #0x85
	bl	_Func_80bd7dc
.Le3dd8:
	mov	r2, r9
	cmp	r2, #4
	bne	.Le3dee
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r1, #0
	mov	r5, #0x24
	ldrsh	r0, [r3, r5]
	bl	_SetBattleActorKnockback
.Le3dee:
	ldr	r6, =0x7828
	add	r6, r11
	ldr	r3, [r6]
	ldr	r1, [sp, #0xc]
	ldr	r0, [r3, #8]
	bl	GetBattleActorPos2
	ldr	r1, [sp, #0xc]
	ldr	r0, [r1, #4]
	mov	r7, r0
	add	r7, #0x10
	str	r7, [r1, #4]
	ldr	r2, [sp, #0x1c]
	cmp	r2, #4
	bne	.Le3e7a
	mov	r3, r9
	cmp	r3, #0xb
	ble	.Le3e14
	b	.Le3f6e
.Le3e14:
	ldr	r3, [r6]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le3e4c
	mov	r5, r9
	lsr	r2, r5, #31
	add	r2, r9
	asr	r2, #1
	mov	r3, #5
	sub	r3, r2
	ldr	r6, [sp, #0xc]
	lsl	r1, r3, #1
	ldr	r2, [r6]
	add	r1, r3
	ldr	r3, [sp, #0x28]
	mov	r5, #0x30
	add	r2, r3
	mov	r3, r0
	mov	r0, #0x10
	str	r0, [sp, #4]
	str	r5, [sp]
	ldr	r6, [sp, #0x10]
	lsl	r1, #8
	add	r1, r11
	sub	r2, #0x30
	add	r3, #8
	ldr	r4, [r6, #4]
	b	.Le3f32
.Le3e4c:
	mov	r1, r9
	lsr	r2, r1, #31
	add	r2, r9
	asr	r2, #1
	mov	r3, #5
	sub	r3, r2
	lsl	r1, r3, #1
	add	r1, r3
	ldr	r3, [sp, #0xc]
	mov	r6, #0x30
	ldr	r2, [r3]
	mov	r3, r0
	mov	r0, #0x10
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x28]
	ldr	r0, [sp, #0x10]
	str	r6, [sp]
	lsl	r1, #8
	ldr	r4, [r0, #4]
	add	r1, r11
	add	r2, r5
	add	r3, #8
	b	.Le3f32
.Le3e7a:
	ldr	r1, [sp, #0x1c]
	cmp	r1, #2
	bls	.Le3e84
	cmp	r1, #5
	bne	.Le3eee
.Le3e84:
	mov	r2, r9
	cmp	r2, #0xb
	bgt	.Le3f6e
	ldr	r3, [r6]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le3ec0
	lsr	r3, r2, #31
	add	r3, r9
	asr	r3, #1
	lsl	r1, r3, #3
	sub	r1, r3
	lsl	r1, #2
	sub	r1, r3
	ldr	r3, [sp, #0xc]
	ldr	r5, [sp, #0x28]
	ldr	r2, [r3]
	mov	r6, #0x30
	mov	r3, r0
	mov	r0, #0x48
	str	r0, [sp, #4]
	str	r6, [sp]
	ldr	r0, [sp, #0x10]
	lsl	r1, #7
	add	r2, r5
	ldr	r4, [r0, #4]
	add	r1, r11
	sub	r2, #0x30
	sub	r3, #0x18
	b	.Le3f32
.Le3ec0:
	mov	r1, r9
	lsr	r3, r1, #31
	add	r3, r9
	asr	r3, #1
	lsl	r1, r3, #3
	sub	r1, r3
	lsl	r1, #2
	sub	r1, r3
	ldr	r3, [sp, #0xc]
	mov	r6, #0x30
	ldr	r2, [r3]
	mov	r3, r0
	mov	r0, #0x48
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x28]
	ldr	r0, [sp, #0x10]
	str	r6, [sp]
	lsl	r1, #7
	ldr	r4, [r0, #4]
	add	r1, r11
	add	r2, r5
	sub	r3, #0x18
	b	.Le3f32
.Le3eee:
	mov	r1, r9
	cmp	r1, #0x11
	bgt	.Le3f6e
	mov	r0, r9
	mov	r1, #3
	bl	__divsi3
	ldr	r3, [r6]
	ldr	r3, [r3, #4]
	mov	r5, r0
	cmp	r3, #0
	bne	.Le3f3a
	ldr	r2, =Xeedbe
	lsl	r3, r5, #1
	ldrh	r1, [r2, r3]
	ldr	r6, [sp, #0xc]
	ldr	r3, =Xeedca
	ldr	r2, [r6]
	ldrb	r3, [r3, r5]
	ldr	r0, [sp, #0x28]
	add	r2, r3
	add	r2, r0
	ldr	r3, =Xeedb8
	ldr	r0, =Xeedb2
	ldrb	r4, [r3, r5]
	ldrb	r0, [r0, r5]
	str	r4, [sp, #4]
	str	r0, [sp]
	ldr	r5, [sp, #0x10]
	lsr	r3, r4, #1
	add	r1, r11
	sub	r2, #0x3a
	sub	r3, r7, r3
	ldr	r4, [r5, #4]
.Le3f32:
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
	b	.Le3f6e
.Le3f3a:
	ldr	r2, =Xeedbe
	lsl	r3, r5, #1
	ldrh	r1, [r2, r3]
	ldr	r6, [sp, #0xc]
	ldr	r3, =Xeedca
	ldr	r2, [r6]
	ldrb	r3, [r3, r5]
	sub	r2, r3
	ldr	r3, =Xeedb2
	ldr	r0, [sp, #0x28]
	ldrb	r4, [r3, r5]
	ldr	r3, =Xeedb8
	add	r2, r0
	ldrb	r0, [r3, r5]
	str	r4, [sp]
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x10]
	sub	r2, r4
	lsr	r3, r0, #1
	add	r1, r11
	add	r2, #0x3a
	sub	r3, r7, r3
	ldr	r4, [r5, #4]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
.Le3f6e:
	mov	r5, r9
	sub	r5, #4
	cmp	r5, #0xb
	bhi	.Le3fa0
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	ldr	r0, [sp, #0x14]
	lsl	r1, r3, #4
	sub	r1, r3
	ldr	r6, =gBuffer
	ldr	r2, [r0]
	ldr	r3, [r0, #4]
	lsl	r1, #7
	mov	r0, #0x28
	add	r1, r6
	mov	r6, #0x30
	str	r0, [sp]
	sub	r2, #0x10
	sub	r3, #0x18
	str	r6, [sp, #4]
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
.Le3fa0:
	bl	InitMatrixStack
	ldr	r0, [sp, #0x20]
	ldr	r1, [sp, #8]
	bl	MatrixSetLook
	cmp	r5, #0x1b
	bhi	.Le402e
	mov	r1, #0x38
	mov	r0, #0
	add	r1, sp
	mov	r10, r0
	mov	r8, r1
.Le3fba:
	mov	r2, r10
	lsr	r3, r2, #31
	add	r3, r10
	asr	r6, r3, #1
	lsl	r3, r6, #3
	sub	r3, r6
	lsl	r3, #2
	mov	r5, #0xe1
	lsl	r5, #7
	add	r3, r11
	add	r7, r3, r5
	ldr	r5, [r7, #0x18]
	cmp	r5, #0
	ble	.Le4024
	mov	r1, r8
	mov	r0, r7
	bl	PhysMove
	mov	r0, r8
	ldr	r2, [r0]
	ldr	r1, [sp, #0x28]
	asr	r5, #3
	add	r5, #2
	lsl	r4, r5, #1
	add	r2, r1
	ldr	r1, =Data_ede5c
	str	r2, [r0]
	sub	r3, r4, #2
	ldrh	r1, [r1, r3]
	mov	r0, #1
	ldr	r3, [sp, #0x24]
	and	r0, r6
	mov	r6, r8
	add	r1, r3, r1
	ldr	r3, [r6, #4]
	sub	r2, r5
	sub	r3, r5
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r5, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r5]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
	mov	r0, r7
	mov	r1, #0x3c
	ldr	r2, =0xfffffc00
	bl	Func_80e38b8
	ldr	r3, [r7, #0x18]
	sub	r3, #1
	str	r3, [r7, #0x18]
.Le4024:
	mov	r6, #1
	add	r10, r6
	mov	r0, r10
	cmp	r0, #0x40
	bne	.Le3fba
.Le402e:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #1
	add	r9, r1
	mov	r2, r9
	cmp	r2, #0x20
	beq	.Le4048
	b	.Le3db2
.Le4048:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r3, =iwram_3001ad0
	mov	r5, r9
	strh	r5, [r3, #6]
	bl	Func_80cdd14
	add	sp, #0x5c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end BaseAnim_Attack
