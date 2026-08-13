	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_DeathPlunge  @ 0x080cb1a4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =iwram_3001eec
	mov	r3, r7
	ldmia	r3!, {r1}
	ldr	r2, =0x7828
	mov	r11, r1
	ldr	r3, [r3]
	sub	sp, #0x54
	add	r2, r11
	str	r3, [sp, #0x38]
	str	r0, [r2]
	mov	r0, #0
	mov	r10, r2
	bl	AnimStart
	ldr	r0, =_FILE_7d
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r11
	add	r2, r11
	str	r5, [r3]
	ldr	r7, [r7, #0x1c]
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	str	r7, [sp, #0x30]
	bl	StartTask
	mov	r4, r10
	ldr	r3, [r4]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	mov	r1, r10
	ldr	r3, [r1]
	mov	r5, r0
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_GetBattleActor
	ldr	r7, [r5]
	ldr	r0, [r0]
	mov	r3, #0x5a
	ldr	r5, [r7, #8]
	mov	r8, r3
	ldr	r3, [r0, #8]
	sub	r3, r5
	mov	r9, r0
	mov	r1, #0x64
	mov	r0, r8
	mul	r0, r3
	bl	__divsi3
	add	r5, r0
	str	r5, [sp, #0x2c]
	mov	r4, r9
	ldr	r3, [r4, #0x10]
	ldr	r5, [r7, #0x10]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0x64
	bl	__divsi3
	mov	r1, r10
	ldr	r3, [r1]
	add	r5, r0
	ldr	r0, [r3, #8]
	bl	_Func_80b8530
	str	r0, [sp, #0x28]
	mov	r2, r10
	ldr	r3, [r2]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	bl	_Func_80b8530
	str	r0, [sp, #0x24]
	mov	r0, r7
	bl	_Actor_Stop
	mov	r3, r5
	ldr	r1, [sp, #0x2c]
	mov	r2, #0
	mov	r0, r7
	bl	_Actor_TravelTo
	mov	r1, #2
	mov	r0, r7
	bl	_Actor_SetAnim
	mov	r3, r7
	mov	r2, #1
	add	r3, #0x58
	strb	r2, [r3]
	mov	r5, r7
	mov	r3, #0x80
	add	r5, #0x5a
	lsl	r3, #10
	str	r5, [sp, #0x20]
	strb	r2, [r5]
	str	r3, [r7, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r7, #0x30]
	mov	r0, #0x14
	bl	WaitFrames
	mov	r5, #0x2e
	mov	r2, sp
	mov	r3, sp
	mov	r4, #0x38
	add	r2, #0x48
	add	r3, #0x3c
	neg	r4, r4
	neg	r5, r5
	mov	r1, #0
	str	r2, [sp, #0x14]
	str	r3, [sp, #0x18]
	str	r4, [sp, #0x10]
	str	r5, [sp, #0xc]
	mov	r10, r1
.Lcb2c4:
	ldr	r3, =iwram_3001e80
	ldr	r5, [r3]
	mov	r6, r5
	add	r6, #0xc
	bl	InitMatrixStack
	mov	r1, r6
	mov	r0, r5
	bl	MatrixSetLook
	mov	r1, r10
	cmp	r1, #0
	bne	.Lcb2f0
	mov	r2, #0xf0
	lsl	r2, #12
	mov	r3, r9
	str	r2, [r3, #0x28]
	ldr	r3, =0x91eb
	mov	r4, r9
	str	r3, [r4, #0x48]
	str	r2, [r7, #0x28]
	str	r3, [r7, #0x48]
.Lcb2f0:
	mov	r1, r10
	cmp	r1, #0xb
	bne	.Lcb314
	mov	r2, r9
	ldr	r3, [r2, #0x1c]
	neg	r3, r3
	str	r3, [r2, #0x1c]
	ldr	r3, [r7, #0x1c]
	neg	r3, r3
	str	r3, [r7, #0x1c]
	ldr	r4, [sp, #0x28]
	ldr	r3, [r7, #0xc]
	add	r3, r4
	str	r3, [r7, #0xc]
	ldr	r1, [sp, #0x24]
	ldr	r3, [r2, #0xc]
	add	r3, r1
	str	r3, [r2, #0xc]
.Lcb314:
	mov	r2, r10
	cmp	r2, #0x36
	bne	.Lcb36c
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	mov	r3, #0xa
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	SetBattleActorState
	mov	r3, #0x80
	mov	r1, r9
	lsl	r3, #12
	str	r3, [r1, #0x28]
	ldr	r3, =0xab85
	str	r3, [r1, #0x48]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r7, #0x28]
	ldr	r3, =0x7851
	str	r3, [r7, #0x48]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x34]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r7, #0x30]
	ldr	r2, [sp, #0x20]
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r7
	bl	_Actor_Stop
	ldr	r3, [r7, #0x10]
	mov	r0, r7
	mov	r1, #0
	mov	r2, #0
	bl	_Actor_TravelTo
.Lcb36c:
	bl	InitMatrixStack
	mov	r0, r5
	mov	r1, r6
	bl	MatrixSetLook
	ldr	r3, [r7, #8]
	ldr	r4, [sp, #0x14]
	str	r3, [r4]
	ldr	r3, [r7, #0xc]
	str	r3, [r4, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r4, #8]
	ldr	r0, [sp, #0x14]
	ldr	r1, [sp, #0x18]
	bl	Func_80e3944
	ldr	r5, [sp, #0x18]
	ldr	r3, [r5]
	asr	r2, r3, #1
	mov	r3, r10
	sub	r3, #0x36
	str	r2, [r5]
	cmp	r3, #1
	bhi	.Lcb3b6
	ldr	r3, [r5, #4]
	mov	r1, #0x20
	str	r1, [sp]
	mov	r1, #0x40
	str	r1, [sp, #4]
	sub	r2, #0x10
	sub	r3, #0x10
	ldr	r0, [sp, #0x38]
	mov	r1, r11
	ldr	r4, [sp, #0x30]
	bl	_call_via_r4
.Lcb3b6:
	ldr	r5, [sp, #0x10]
	cmp	r5, #0xb
	bhi	.Lcb414
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	lsl	r3, #11
	ldr	r6, [sp, #0xc]
	mov	r4, #0
	mov	r8, r3
.Lcb3ca:
	lsl	r1, r4, #12
	mov	r0, r1
	str	r1, [sp, #0x1c]
	str	r4, [sp, #8]
	bl	sin
	mov	r3, r6
	mul	r3, r0
	ldr	r2, [sp, #0x18]
	ldr	r5, [r2]
	asr	r3, #16
	ldr	r0, [sp, #0x1c]
	add	r5, r3
	bl	cos
	mov	r3, r6
	mul	r3, r0
	mov	r1, r10
	mov	r2, #0x20
	asr	r3, #16
	sub	r3, r1
	sub	r5, #0x10
	str	r2, [sp]
	mov	r1, r11
	mov	r2, #0x40
	str	r2, [sp, #4]
	add	r3, #0x64
	mov	r2, r5
	ldr	r0, [sp, #0x38]
	add	r1, r8
	ldr	r5, [sp, #0x30]
	bl	_call_via_r5
	ldr	r4, [sp, #8]
	add	r4, #1
	cmp	r4, #0x10
	bne	.Lcb3ca
.Lcb414:
	mov	r1, r10
	cmp	r1, #0x40
	bne	.Lcb440
	mov	r2, r9
	ldr	r3, [r2, #0x1c]
	neg	r3, r3
	str	r3, [r2, #0x1c]
	ldr	r3, [r7, #0x1c]
	neg	r3, r3
	str	r3, [r7, #0x1c]
	ldr	r4, [sp, #0x28]
	ldr	r3, [r7, #0xc]
	sub	r3, r4
	str	r3, [r7, #0xc]
	ldr	r5, [sp, #0x24]
	ldr	r3, [r2, #0xc]
	sub	r3, r5
	str	r3, [r2, #0xc]
	mov	r0, r7
	mov	r1, #0
	bl	_Actor_SetAnim
.Lcb440:
	mov	r1, r10
	cmp	r1, #0x36
	bne	.Lcb44c
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Lcb44c:
	mov	r2, r10
	cmp	r2, #0
	bne	.Lcb460
	mov	r0, #0x88
	bl	_PlaySound
	ldr	r2, =0x77a8
	mov	r3, #6
	add	r2, r11
	str	r3, [r2]
.Lcb460:
	mov	r3, r10
	cmp	r3, #0x35
	bne	.Lcb46e
	ldr	r2, =0x77a8
	mov	r3, #6
	add	r2, r11
	str	r3, [r2]
.Lcb46e:
	mov	r1, #0x10
	mov	r0, #0x10
	bl	UpdateScreenShake
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #1
	ldr	r4, [sp, #0x10]
	ldr	r5, [sp, #0xc]
	add	r10, r1
	add	r4, #1
	add	r5, #1
	mov	r2, r10
	str	r4, [sp, #0x10]
	str	r5, [sp, #0xc]
	cmp	r2, #0x60
	beq	.Lcb49c
	b	.Lcb2c4
.Lcb49c:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
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
.func_end Anim_DeathPlunge
