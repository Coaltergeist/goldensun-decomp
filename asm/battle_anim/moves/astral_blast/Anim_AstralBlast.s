	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_AstralBlast  @ 0x080d0ee0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_3001eec
	mov	r3, r6
	mov	r5, r0
	ldmia	r3!, {r0}
	sub	sp, #0x74
	str	r0, [sp, #0x4c]
	ldr	r3, [r3]
	str	r3, [sp, #0x48]
	ldr	r1, [r6, #8]
	mov	r3, r6
	str	r1, [sp, #0x34]
	sub	r3, #0x6c
	ldr	r3, [r3]
	str	r3, [sp, #0x30]
	ldr	r0, [r5, #8]
	bl	_GetBattleActor
	ldr	r3, =0x7828
	ldr	r2, [sp, #0x4c]
	ldr	r0, [r0]
	add	r2, r3
	str	r5, [r2]
	mov	r10, r0
	mov	r0, #1
	mov	r8, r2
	bl	AnimStart
	ldr	r0, =_FILE_79
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	ldr	r0, =_FILE_73
	bl	GetFile
	ldr	r1, [sp, #0x34]
	bl	DecompressLZ
	mov	r0, r10
	mov	r1, #2
	bl	_Actor_SetAnim
	mov	r0, r10
	mov	r1, #0x30
	bl	_Actor_SetAnimSpeed
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	mov	r0, #0xef
	ldr	r4, [sp, #0x4c]
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r3, r4, r0
	add	r2, r4, r1
	str	r5, [r3]
	ldr	r6, [r6, #0x1c]
	mov	r3, #0x4b
	mov	r1, #0x90
	lsl	r1, #3
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	str	r6, [sp, #0x3c]
	bl	StartTask
	mov	r2, r8
	ldr	r3, [r2]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	mov	r4, r8
	ldr	r3, [r4]
	ldr	r6, [r0]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	mov	r2, #0
	ldr	r0, [r0]
	ldr	r3, [sp, #0x4c]
	mov	r4, #0xe1
	lsl	r4, #7
	str	r2, [sp, #0x38]
	mov	r11, r0
	add	r5, r3, r4
.Ld0fac:
	ldr	r2, [r6, #8]
	str	r2, [r5]
	mov	r0, #0xa0
	ldr	r3, [r6, #0xc]
	lsl	r0, #14
	add	r3, r0
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	ldr	r1, [sp, #0x38]
	cmp	r1, #0
	bne	.Ld0fce
	mov	r3, r11
	ldr	r0, [r3, #8]
	mov	r1, #0xc
	sub	r0, r2
	b	.Ld0fd8
.Ld0fce:
	mov	r4, r11
	ldr	r0, [r4, #8]
	lsl	r0, #1
	sub	r0, r2
	mov	r1, #0xc
.Ld0fd8:
	bl	__divsi3
	str	r0, [r5, #0xc]
	mov	r1, r11
	ldr	r0, [r1, #0xc]
	ldr	r3, [r5, #4]
	mov	r2, #0xa0
	sub	r0, r3
	lsl	r2, #14
	add	r0, r2
	mov	r1, #0xc
	bl	__divsi3
	str	r0, [r5, #0x10]
	mov	r3, r11
	ldr	r0, [r3, #0x10]
	ldr	r3, [r5, #8]
	mov	r1, #0xc
	sub	r0, r3
	bl	__divsi3
	mov	r3, #0
	str	r0, [r5, #0x14]
	str	r3, [r5, #0x18]
	ldr	r4, [sp, #0x38]
	add	r4, #1
	add	r5, #0x1c
	str	r4, [sp, #0x38]
	cmp	r4, #3
	bne	.Ld0fac
	str	r3, [sp, #0x44]
.Ld1016:
	ldr	r0, [sp, #0x44]
	cmp	r0, #0x2f
	bgt	.Ld104a
	ldr	r3, =iwram_3001e80
	mov	r2, #0x80
	ldr	r1, [r3]
	cmp	r0, #0x27
	ble	.Ld1030
	ldr	r3, [sp, #0x44]
	lsl	r2, r3, #4
	mov	r3, #0xc0
	lsl	r3, #2
	sub	r2, r3, r2
.Ld1030:
	ldr	r4, [sp, #0x4c]
	ldr	r0, =0x7828
	add	r3, r4, r0
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Ld1044
	ldrh	r3, [r1, #0x36]
	sub	r3, r2
	b	.Ld1048
.Ld1044:
	ldrh	r3, [r1, #0x36]
	add	r3, r2
.Ld1048:
	strh	r3, [r1, #0x36]
.Ld104a:
	mov	r3, #0xe1
	ldr	r2, [sp, #0x4c]
	lsl	r3, #7
	mov	r1, #0
	add	r3, r2, r3
	str	r1, [sp, #0x38]
	str	r1, [sp, #0x18]
	str	r3, [sp, #0x14]
	str	r1, [sp, #0x10]
.Ld105c:
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x10]
	cmp	r4, r0
	bge	.Ld1066
	b	.Ld12d2
.Ld1066:
	ldr	r1, [sp, #0x14]
	sub	r5, r4, r0
	mov	r10, r1
	mov	r3, r5
	cmp	r5, #0
	bge	.Ld1074
	add	r3, r5, #3
.Ld1074:
	asr	r3, #2
	add	r3, #2
	mov	r8, r3
	cmp	r3, #0xa
	ble	.Ld1082
	mov	r2, #0xa
	mov	r8, r2
.Ld1082:
	bl	InitMatrixStack
	ldr	r0, [sp, #0x30]
	mov	r1, r0
	add	r1, #0xc
	bl	MatrixSetLook
	ldr	r0, [sp, #0x14]
	bl	MatrixTranslatev
	mov	r3, #0
	ldr	r2, [sp, #0x18]
	mov	r0, #0x80
	str	r3, [sp, #0x2c]
	lsl	r0, #5
	lsl	r3, r5, #12
	add	r0, r3, r0
	lsl	r3, r2, #3
	str	r0, [sp, #0x24]
	mov	r1, #0x5c
	sub	r3, r2
	ldr	r0, =gBuffer
	add	r1, sp
	lsl	r3, #2
	str	r5, [sp, #0x28]
	mov	r4, #0
	add	r7, sp, #0x50
	add	r6, sp, #0x68
	mov	r9, r1
	add	r5, r3, r0
.Ld10be:
	str	r4, [sp, #0xc]
	bl	MatrixPush
	ldr	r1, [sp, #0x28]
	lsl	r0, r1, #10
	bl	MatrixRoll
	mov	r0, #0x80
	lsl	r0, #7
	bl	MatrixYaw
	mov	r3, #0x80
	ldr	r2, [sp, #0x24]
	lsl	r3, #9
	str	r2, [r7]
	ldr	r4, [sp, #0xc]
	cmp	r2, r3
	ble	.Ld10e4
	str	r3, [r7]
.Ld10e4:
	ldr	r3, [r7]
	mov	r0, r7
	str	r3, [r7, #4]
	str	r3, [r7, #8]
	str	r4, [sp, #0xc]
	bl	MatrixScalev
	ldr	r3, =0x199a
	ldr	r4, [sp, #0xc]
	mov	r0, r4
	mul	r0, r3
	bl	MatrixRoll
	ldr	r4, [sp, #0xc]
	mov	r3, #1
	and	r3, r4
	lsl	r0, r3, #1
	add	r0, r3
	ldr	r3, =.Lee140
	lsl	r0, #2
	add	r0, r3
	mov	r1, r6
	bl	Func_80e3944
	ldr	r3, [sp, #0x2c]
	ldr	r4, [sp, #0xc]
	cmp	r3, r0
	bge	.Ld111e
	str	r0, [sp, #0x2c]
.Ld111e:
	ldr	r2, [r6]
	asr	r2, #1
	str	r2, [r6]
	mov	r0, r9
	ldr	r3, [r0]
	add	r2, r3
	str	r2, [r5, #0xc]
	ldr	r3, [r0, #4]
	ldr	r2, [r6, #4]
	add	r2, r3
	str	r2, [r5, #0x10]
	ldr	r3, [r6]
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #4]
	str	r3, [r5, #0x10]
	str	r4, [sp, #0xc]
	bl	MatrixPop
	ldr	r4, [sp, #0xc]
	add	r4, #1
	add	r5, #0x1c
	cmp	r4, #0xa
	bne	.Ld10be
	ldr	r1, [sp, #0x2c]
	ldr	r2, =0x61a7f
	cmp	r1, r2
	bgt	.Ld11ea
	ldr	r3, [sp, #0x18]
	mov	r1, r8
	str	r3, [sp, #0x20]
	lsr	r3, r1, #31
	add	r3, r8
	mov	r0, r8
	asr	r3, #1
	lsl	r0, #1
	str	r3, [sp, #0x1c]
	mov	r4, #0
	mov	r9, r0
.Ld116a:
	ldr	r3, [sp, #0x20]
	add	r2, r4, r3
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r0, =gBuffer
	lsl	r3, #2
	add	r4, #1
	add	r7, r3, r0
	mov	r1, #0xa
	mov	r0, r4
	str	r4, [sp, #8]
	bl	__modsi3
	ldr	r1, [sp, #0x20]
	add	r0, r1
	lsl	r3, r0, #3
	sub	r3, r0
	ldr	r2, =gBuffer
	lsl	r3, #2
	add	r6, r3, r2
	mov	r5, #0
.Ld1194:
	ldr	r3, [r6, #0xc]
	ldr	r2, [r7, #0xc]
	sub	r3, r2
	mul	r3, r5
	cmp	r3, #0
	bge	.Ld11a2
	add	r3, #0xf
.Ld11a2:
	asr	r3, #4
	add	r0, r2, r3
	ldr	r3, [r6, #0x10]
	ldr	r2, [r7, #0x10]
	sub	r3, r2
	mul	r3, r5
	cmp	r3, #0
	bge	.Ld11b4
	add	r3, #0xf
.Ld11b4:
	asr	r3, #4
	add	r2, r3
	mov	r12, r2
	ldr	r3, =Data_ede48
	mov	r2, r9
	sub	r2, #2
	ldrh	r1, [r3, r2]
	ldr	r4, [sp, #0x34]
	ldr	r3, [sp, #0x1c]
	add	r1, r4, r1
	sub	r2, r0, r3
	mov	r4, r12
	mov	r0, r8
	sub	r3, r4, r0
	mov	r4, r9
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x48]
	ldr	r4, [sp, #0x3c]
	add	r5, #1
	bl	_call_via_r4
	cmp	r5, #0x10
	bne	.Ld1194
	ldr	r4, [sp, #8]
	cmp	r4, #0xa
	bne	.Ld116a
.Ld11ea:
	mov	r0, r10
	ldr	r3, [r0]
	ldr	r2, [r0, #0xc]
	add	r3, r2
	str	r3, [r0]
	ldr	r2, [r0, #0x10]
	ldr	r3, [r0, #4]
	add	r3, r2
	str	r3, [r0, #4]
	ldr	r2, [r0, #0x14]
	ldr	r3, [r0, #8]
	add	r3, r2
	str	r3, [r0, #8]
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0x38]
	ldr	r4, [sp, #0x44]
	add	r3, r1, r2
	add	r3, #0xa
	cmp	r4, r3
	bne	.Ld12d2
	mov	r3, #0x80
	mov	r0, r11
	lsl	r3, #10
	str	r3, [r0, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x30]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	ldr	r3, =0xab85
	mov	r2, r11
	str	r3, [r0, #0x48]
	add	r2, #0x5a
	mov	r3, #0
	strb	r3, [r2]
	bl	_Actor_Stop
	mov	r2, r11
	ldr	r1, [r2, #8]
	cmp	r1, #0
	bge	.Ld124e
	ldr	r3, =0xffd80000
	mov	r0, r11
	add	r1, r3
	ldr	r3, [r2, #0x10]
	mov	r2, #0
	bl	_Actor_TravelTo
	b	.Ld125e
.Ld124e:
	mov	r4, #0xa0
	lsl	r4, #14
	mov	r0, r11
	add	r1, r4
	ldr	r3, [r0, #0x10]
	mov	r2, #0
	bl	_Actor_TravelTo
.Ld125e:
	ldr	r1, [sp, #0x38]
	cmp	r1, #2
	bne	.Ld12a8
	mov	r0, #0x86
	bl	_Func_80bd7dc
	b	.Ld12c8

	.pool_aligned

.Ld12a8:
	mov	r0, #0x86
	bl	_PlaySound
	ldr	r4, =0x7828
	ldr	r2, [sp, #0x4c]
	add	r3, r2, r4
	ldr	r3, [r3]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	SetBattleActorState
.Ld12c8:
	ldr	r3, [sp, #0x4c]
	ldr	r4, =0x77a8
	add	r2, r3, r4
	mov	r3, #4
	str	r3, [r2]
.Ld12d2:
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	ldr	r2, [sp, #0x10]
	ldr	r3, [sp, #0x38]
	add	r0, #0xa
	add	r1, #0x1c
	add	r2, #0xc
	add	r3, #1
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x14]
	str	r2, [sp, #0x10]
	str	r3, [sp, #0x38]
	cmp	r3, #3
	beq	.Ld12f0
	b	.Ld105c
.Ld12f0:
	mov	r1, #8
	mov	r0, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r0, =0x7824
	ldr	r4, [sp, #0x4c]
	mov	r3, #1
	add	r2, r4, r0
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, [sp, #0x44]
	add	r1, #1
	str	r1, [sp, #0x44]
	cmp	r1, #0x3c
	beq	.Ld1318
	b	.Ld1016
.Ld1318:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x74
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_AstralBlast

	.section .rodata
.Lee140:
	.incrom 0xee140, 0xee158
