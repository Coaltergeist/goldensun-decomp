	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_CriticalHit  @ 0x080e40a4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	mov	r2, r3
	mov	r1, r0
	ldmia	r2!, {r0}
	ldr	r2, [r2]
	sub	sp, #0x70
	str	r2, [sp, #0x34]
	ldr	r2, [r3, #8]
	str	r2, [sp, #0x2c]
	sub	r3, #0x6c
	ldr	r3, [r3]
	str	r3, [sp, #0x28]
	ldr	r3, [r1]
	mov	r11, r0
	mov	r6, #1
	cmp	r3, #0xc7
	bgt	.Le40d6
	mov	r6, #0
.Le40d6:
	ldr	r5, =0x7828
	add	r5, r11
	mov	r2, #0x82
	ldr	r0, [r1, #8]
	str	r1, [r5]
	ldr	r1, [r1, #0xc]
	bl	_Func_80c0df4
	mov	r0, #1
	bl	WaitFrames
	bl	InitRenderTilemapBG1
	ldr	r3, .Le4120	@ 0x1f80
	ldr	r2, =REG_BG1CNT
	strh	r3, [r2]
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le4130
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
	b	.Le4150

	.align	2, 0
.Le4120:
	.word	0x1f80
	.pool

.Le4130:
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
.Le4150:
	ldr	r3, =gPtrs
	mov	r2, r3
	add	r2, #0xb8
	ldr	r2, [r2]
	str	r2, [sp, #0x38]
	add	r3, #0xbc
	mov	r5, sp
	ldr	r3, [r3]
	add	r5, #0x38
	str	r5, [sp, #0x10]
	str	r3, [r5, #4]
	ldr	r5, =0x7828
	add	r5, r11
	ldr	r3, [r5]
	mov	r2, #0x82
	ldr	r0, [r3, #8]
	ldr	r1, [r3, #0xc]
	bl	_Func_80c0df4
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, =_FILE_49
	mov	r1, r11
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r3, [r5]
	mov	r2, #0x82
	ldr	r0, [r3, #8]
	ldr	r1, [r3, #0xc]
	bl	_Func_80c0df4
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #1
	mov	r3, #1
	ldr	r0, =_FILE_4a
	ldr	r1, =gBuffer
	bl	LoadVFXFile
	ldr	r2, [r5]
	ldr	r3, [r2, #8]
	cmp	r3, #7
	ble	.Le41c4
	ldr	r0, =_FILE_8e
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	mov	r2, #0x80
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	bl	_call_via_r3
	ldr	r2, [r5]
.Le41c4:
	ldr	r1, [r2, #0xc]
	ldr	r0, [r2, #8]
	mov	r2, #0x82
	bl	_Func_80c0df4
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, =_FILE_76
	ldr	r1, [sp, #0x2c]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r3, [r5]
	mov	r2, #0x82
	ldr	r0, [r3, #8]
	ldr	r1, [r3, #0xc]
	bl	_Func_80c0df4
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #1
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	cmp	r6, #1
	beq	.Le4214
	b	.Le43cc
.Le4214:
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	ldr	r0, [r0]
	mov	r5, #0xe1
	mov	r8, r0
	lsl	r5, #7
	mov	r0, #0
	ldr	r6, =0xffff
	mov	r10, r0
	mov	r7, #0
	add	r5, r11
.Le422e:
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x10
	str	r3, [r5]
	str	r7, [r5, #4]
	str	r7, [r5, #8]
	bl	Random
	and	r0, r6
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r6
	str	r0, [r5, #0x10]
	bl	Random
	mov	r1, #1
	add	r10, r1
	and	r0, r6
	mov	r2, r10
	str	r0, [r5, #0x14]
	add	r5, #0x1c
	cmp	r2, #0x40
	bne	.Le422e
	mov	r0, r8
	mov	r1, #0
	bl	_Actor_SetAnimSpeed
	mov	r3, r8
	ldr	r3, [r3, #0x24]
	str	r3, [sp, #0x24]
	mov	r5, r8
	ldr	r5, [r5, #0x28]
	str	r5, [sp, #0x20]
	mov	r0, r8
	ldr	r0, [r0, #0x2c]
	str	r0, [sp, #0x1c]
	mov	r1, r8
	ldr	r1, [r1, #0x48]
	str	r1, [sp, #0x14]
	mov	r2, r8
	ldr	r2, [r2, #0x34]
	mov	r5, #0
	mov	r3, r8
	str	r2, [sp, #0x18]
	str	r5, [r3, #0x24]
	str	r5, [r3, #0x28]
	str	r5, [r3, #0x2c]
	str	r5, [r3, #0x34]
	str	r5, [r3, #0x48]
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r1, sp
	ldr	r0, [r3, #8]
	add	r1, #0x64
	str	r1, [sp, #0xc]
	bl	GetBattleActorPos2
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2]
	mov	r0, r10
	sub	r0, r3
	str	r0, [sp, #0x30]
	add	r1, sp, #0x30
	ldr	r2, =iwram_3001ad0
	ldrh	r1, [r1]
	mov	r3, #0x50
	strh	r1, [r2, #4]
	strh	r3, [r2, #6]
	ldr	r2, =0x77b4
	mov	r3, #0x18
	add	r2, r11
	str	r3, [r2]
	ldr	r3, =0x77b8
	mov	r1, #0xc8
	add	r3, r11
	str	r5, [r3]
	lsl	r1, #4
	ldr	r0, =Func_80cd4b4
	bl	StartTask
	mov	r0, #0xd4
	bl	_PlaySound
	mov	r9, r5
.Le42de:
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r2, #0x82
	ldr	r0, [r3, #8]
	ldr	r1, [r3, #0xc]
	mov	r6, #0xe1
	bl	_Func_80c0df4
	lsl	r6, #7
	mov	r2, #0
	mov	r10, r2
	add	r6, r11
.Le42f8:
	ldr	r3, [r6]
	cmp	r3, #0
	blt	.Le4384
	mov	r3, r10
	cmp	r3, #0
	bge	.Le4306
	add	r3, #3
.Le4306:
	asr	r3, #2
	cmp	r9, r3
	blt	.Le4384
	mov	r5, r10
	mov	r3, #1
	and	r3, r5
	add	r7, r3, #5
	bl	InitMatrixStack
	ldr	r0, [r6, #0x14]
	bl	MatrixRoll
	ldr	r0, [r6, #0xc]
	bl	MatrixPitch
	ldr	r0, [r6, #0x10]
	bl	MatrixYaw
	add	r5, sp, #0x4c
	mov	r0, r6
	mov	r1, r5
	bl	Func_80e3944
	ldr	r3, [r5]
	add	r3, #0x40
	str	r3, [r5]
	ldr	r2, [sp, #0x68]
	ldr	r3, [r5, #4]
	add	r3, r2
	add	r3, #0x18
	str	r3, [r5, #4]
	mov	r2, #0x3c
	ldr	r3, [r5, #8]
	neg	r2, r2
	cmp	r3, r2
	bge	.Le4352
	str	r2, [r5, #8]
	mov	r3, r2
.Le4352:
	cmp	r3, #0x3c
	ble	.Le435a
	mov	r3, #0x3c
	str	r3, [r5, #8]
.Le435a:
	lsl	r0, r7, #1
	ldr	r2, =Data_ede5c
	add	r3, #0x3c
	str	r3, [r5, #8]
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x2c]
	ldr	r3, [r5, #4]
	add	r1, r2, r1
	ldr	r2, [r5]
	sub	r3, r7
	str	r0, [sp]
	str	r0, [sp, #4]
	sub	r2, r7
	ldr	r4, [sp, #0x38]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	ldr	r3, [r6]
	sub	r3, #4
	str	r3, [r6]
.Le4384:
	mov	r3, #1
	add	r10, r3
	mov	r5, r10
	add	r6, #0x1c
	cmp	r5, #0x40
	bne	.Le42f8
	ldr	r2, =0x7824
	add	r2, r11
	mov	r0, #1
	str	r3, [r2]
	bl	WaitFrames
	mov	r0, #1
	add	r9, r0
	mov	r1, r9
	cmp	r1, #0x20
	bne	.Le42de
	ldr	r0, =Func_80cd4b4
	bl	StopTask
	mov	r0, r8
	mov	r1, #0x10
	bl	_Actor_SetAnimSpeed
	ldr	r2, [sp, #0x24]
	mov	r3, r8
	str	r2, [r3, #0x24]
	ldr	r5, [sp, #0x20]
	str	r5, [r3, #0x28]
	ldr	r0, [sp, #0x1c]
	str	r0, [r3, #0x2c]
	ldr	r1, [sp, #0x18]
	str	r1, [r3, #0x34]
	ldr	r2, [sp, #0x14]
	str	r2, [r3, #0x48]
	b	.Le43d2
.Le43cc:
	mov	r3, sp
	add	r3, #0x64
	str	r3, [sp, #0xc]
.Le43d2:
	mov	r1, #0x80
	ldr	r5, =Func_80008d4
	ldr	r0, [sp, #0x34]
	lsl	r1, #7
	bl	_call_via_r5
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r11
	ldr	r5, =0x7828
	str	r3, [r2]
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Le4420	@ 0x1f81
	add	r5, r11
	strh	r3, [r2]
	ldr	r3, [r5]
	add	r6, sp, #0x58
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r6
	bl	GetBattleActorPos2
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le4474
	ldr	r2, [r6]
	mov	r3, #0x20
	b	.Le4478

	.align	2, 0
.Le4420:
	.word	0x1f81
	.pool

.Le4474:
	ldr	r2, [r6]
	mov	r3, #0x60
.Le4478:
	sub	r3, r2
	str	r3, [sp, #0x30]
	ldr	r2, [sp, #0x30]
	cmp	r2, #0
	ble	.Le4486
	mov	r3, #0
	str	r3, [sp, #0x30]
.Le4486:
	mov	r3, #0x80
	ldr	r5, [sp, #0x30]
	neg	r3, r3
	cmp	r5, r3
	bge	.Le4492
	str	r3, [sp, #0x30]
.Le4492:
	ldr	r0, [sp, #0x30]
	ldr	r3, [r6]
	ldr	r5, =0x7828
	ldr	r2, =iwram_3001ad0
	add	r3, r0
	str	r3, [r6]
	add	r5, r11
	add	r1, sp, #0x30
	mov	r3, #0x50
	strh	r3, [r2, #6]
	ldrh	r1, [r1]
	ldr	r3, [r5]
	strh	r1, [r2, #4]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r6, [r0]
	mov	r5, #0x24
	ldrsh	r0, [r3, r5]
	bl	_Func_80b8530
	lsr	r3, r0, #31
	add	r0, r3
	asr	r0, #1
	mov	r5, #0xe1
	mov	r8, r0
	lsl	r5, #7
	mov	r0, #0
	mov	r10, r0
	mov	r7, #0xff
	add	r5, r11
.Le44d4:
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
	lsl	r0, #10
	str	r0, [r5, #0x10]
	bl	Random
	and	r0, r7
	sub	r0, #0x7f
	ldr	r3, [r5]
	lsl	r0, #10
	str	r0, [r5, #0x14]
	cmp	r3, #0
	ble	.Le450e
	ldr	r3, [r5, #0xc]
	neg	r3, r3
	str	r3, [r5, #0xc]
.Le450e:
	mov	r1, #1
	mov	r3, r10
	add	r10, r1
	add	r3, #0x10
	mov	r2, r10
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r2, #0x40
	bne	.Le44d4
	ldr	r5, [sp, #0x28]
	add	r5, #0xc
	mov	r3, #0
	str	r5, [sp, #8]
	mov	r9, r3
.Le452a:
	mov	r0, r9
	cmp	r0, #5
	bne	.Le4536
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Le4536:
	mov	r1, r9
	cmp	r1, #4
	bne	.Le454c
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r1, #0
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_SetBattleActorKnockback
.Le454c:
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r1, [sp, #0xc]
	ldr	r0, [r3, #8]
	bl	GetBattleActorPos2
	ldr	r5, [sp, #0xc]
	ldr	r3, [r5, #4]
	mov	r0, r9
	add	r3, #0x10
	str	r3, [r5, #4]
	cmp	r0, #1
	bgt	.Le4576
	mov	r1, #0x78
	str	r1, [sp]
	str	r1, [sp, #4]
	ldr	r4, [sp, #0x38]
	ldr	r0, [sp, #0x34]
	mov	r1, r11
	b	.Le45a0
.Le4576:
	mov	r2, r9
	cmp	r2, #3
	bgt	.Le458e
	mov	r1, #0xe1
	mov	r3, #0x78
	lsl	r1, #6
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x38]
	ldr	r0, [sp, #0x34]
	add	r1, r11
	b	.Le45a0
.Le458e:
	mov	r5, r9
	cmp	r5, #5
	bgt	.Le45aa
	mov	r0, #0x78
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x38]
	ldr	r0, [sp, #0x34]
	ldr	r1, =gBuffer
.Le45a0:
	mov	r2, #0
	mov	r3, #0
	bl	_call_via_r4
	b	.Le45c4
.Le45aa:
	mov	r1, r9
	cmp	r1, #7
	bgt	.Le45c4
	mov	r2, #0x78
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r4, [sp, #0x38]
	ldr	r0, [sp, #0x34]
	ldr	r1, =ewram_2013840
	mov	r2, #0
	mov	r3, #0
	bl	_call_via_r4
.Le45c4:
	bl	InitMatrixStack
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #8]
	bl	MatrixSetLook
	mov	r3, r9
	sub	r3, #4
	cmp	r3, #0x1b
	bhi	.Le465a
	mov	r5, #0x40
	mov	r3, #0
	add	r5, sp
	mov	r10, r3
	mov	r8, r5
.Le45e2:
	mov	r0, r10
	lsr	r3, r0, #31
	add	r3, r10
	asr	r5, r3, #1
	lsl	r3, r5, #3
	sub	r3, r5
	lsl	r3, #2
	mov	r1, #0xe1
	add	r3, r11
	lsl	r1, #7
	add	r7, r3, r1
	ldr	r6, [r7, #0x18]
	cmp	r6, #0
	ble	.Le4650
	mov	r1, r8
	mov	r0, r7
	bl	Func_80e3944
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r0, [sp, #0x30]
	add	r2, r0
	str	r2, [r3]
	asr	r6, #3
	ldr	r3, [r3, #4]
	add	r6, #2
	mov	r0, #1
	lsl	r4, r6, #1
	add	r3, #0x10
	mov	r1, r8
	and	r0, r5
	ldr	r5, =Data_ede5c
	str	r3, [r1, #4]
	sub	r1, r4, #2
	ldrh	r1, [r5, r1]
	ldr	r5, [sp, #0x2c]
	str	r4, [sp]
	add	r1, r5, r1
	str	r4, [sp, #4]
	ldr	r5, [sp, #0x10]
	lsl	r0, #2
	sub	r3, r6
	ldr	r4, [r0, r5]
	sub	r2, r6
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	mov	r0, r7
	mov	r1, #0x3c
	ldr	r2, =0xfffffc00
	bl	Func_80e38b8
	ldr	r3, [r7, #0x18]
	sub	r3, #1
	str	r3, [r7, #0x18]
.Le4650:
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	cmp	r1, #0x40
	bne	.Le45e2
.Le465a:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	cmp	r3, #0x20
	beq	.Le4674
	b	.Le452a
.Le4674:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r3, =iwram_3001ad0
	mov	r5, r9
	strh	r5, [r3, #6]
	ldr	r3, =iwram_3001e74
	mov	r1, #0xc9
	ldr	r3, [r3]
	mov	r0, #0
	lsl	r1, #3
	mov	r9, r0
	add	r5, r3, r1
	mov	r6, #6
.Le469c:
	mov	r2, r9
	ldrh	r0, [r5]
	sub	r1, r6, r2
	bl	_Func_80c0700
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #1
	add	r9, r3
	mov	r0, r9
	cmp	r0, #7
	bne	.Le469c
	bl	Func_80cdd14
	add	sp, #0x70
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_CriticalHit
