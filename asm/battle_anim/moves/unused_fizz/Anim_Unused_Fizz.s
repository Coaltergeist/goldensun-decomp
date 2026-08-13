	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Unused_Fizz  @ 0x080d5e54
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
	sub	sp, #0xac
	str	r1, [sp, #0x4c]
	ldr	r3, [r3]
	str	r3, [sp, #0x48]
	ldr	r2, [r2, #8]
	str	r2, [sp, #0x40]
	ldr	r2, =0x7828
	add	r5, r1, r2
	str	r0, [r5]
	mov	r0, #0
	bl	AnimStart
	ldr	r0, =_FILE_92
	ldr	r1, [sp, #0x4c]
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r2, #0
	ldr	r1, [sp, #0x40]
	ldr	r0, =_FILE_73
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r3, [r5]
	ldr	r0, [r3, #4]
	mov	r3, #1
	eor	r0, r3
	mov	r3, sp
	add	r3, #0x50
	mov	r1, r3
	str	r3, [sp, #0x3c]
	bl	BuildDraw2DFuncs
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r0, [r0]
	mov	r9, r0
	mov	r5, #0x24
	ldrsh	r0, [r3, r5]
	bl	_GetBattleActor
	ldr	r0, [r0]
	ldr	r7, =gBuffer
	str	r0, [sp, #0x38]
	mov	r0, #0
	mov	r10, r0
	mov	r8, r0
.Ld5ece:
	bl	Random
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	bl	Random
	mov	r1, r8
	str	r1, [r7]
	mov	r5, #0xff
	and	r5, r0
	bl	Random
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x14
	lsl	r3, #16
	mov	r2, r8
	str	r3, [r7, #4]
	str	r2, [r7, #8]
	mov	r0, r6
	bl	sin
	add	r5, #0x80
	mov	r3, r5
	mul	r3, r0
	asr	r3, #5
	str	r3, [r7, #0xc]
	mov	r3, r8
	str	r3, [r7, #0x10]
	mov	r0, r6
	bl	cos
	mov	r3, r5
	mul	r3, r0
	mov	r0, #1
	add	r10, r0
	asr	r3, #5
	mov	r5, r8
	mov	r1, r10
	str	r3, [r7, #0x14]
	str	r5, [r7, #0x18]
	add	r7, #0x1c
	cmp	r1, #0x40
	bne	.Ld5ece
	ldr	r3, [sp, #0x4c]
	mov	r5, #0xef
	lsl	r5, #7
	add	r2, r3, r5
	mov	r3, #2
	str	r3, [r2]
	ldr	r0, [sp, #0x4c]
	ldr	r1, =0x7784
	mov	r3, #0x4b
	add	r2, r0, r1
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r5, r9
	mov	r2, #0xa0
	ldr	r3, [r5, #8]
	add	r2, sp
	mov	r11, r2
	str	r3, [r2]
	mov	r0, r11
	mov	r2, #0
	str	r2, [r0, #4]
	ldr	r3, [r5, #0x10]
	mov	r1, sp
	str	r3, [r0, #8]
	add	r1, #0x94
	ldr	r3, [sp, #0x38]
	str	r1, [sp, #0x34]
	mov	r5, sp
	ldr	r0, [r3, #8]
	mov	r3, #0xb4
	add	r5, #0x88
	lsl	r3, #15
	str	r0, [r1]
	str	r3, [r1, #4]
	str	r2, [r1, #8]
	str	r5, [sp, #0x30]
	mov	r1, r11
	ldr	r3, [r1]
	mov	r1, #0x28
	sub	r0, r3
	bl	__divsi3
	str	r0, [r5]
	ldr	r2, [sp, #0x34]
	mov	r5, r11
	ldr	r3, [r5, #4]
	ldr	r0, [r2, #4]
	mov	r1, #0x28
	sub	r0, r3
	bl	__divsi3
	ldr	r1, [sp, #0x30]
	str	r0, [r1, #4]
	ldr	r2, [sp, #0x34]
	ldr	r3, [r5, #8]
	ldr	r0, [r2, #8]
	mov	r1, #0x28
	sub	r0, r3
	bl	__divsi3
	ldr	r3, [sp, #0x30]
	mov	r5, #0
	str	r0, [r3, #8]
	mov	r9, r5
.Ld5fb0:
	ldr	r3, =iwram_3001e80
	mov	r0, r9
	ldr	r5, [r3]
	cmp	r0, #8
	bne	.Ld5fc0
	mov	r0, #0xd4
	bl	_PlaySound
.Ld5fc0:
	mov	r1, r9
	cmp	r1, #0x50
	bne	.Ld5fcc
	mov	r0, #0x8e
	bl	_PlaySound
.Ld5fcc:
	bl	InitMatrixStack
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	MatrixSetLook
	mov	r3, r9
	sub	r3, #0x1e
	cmp	r3, #0x27
	bhi	.Ld6000
	ldr	r5, [sp, #0x30]
	mov	r2, r11
	ldr	r3, [r2]
	ldr	r2, [r5]
	mov	r0, r11
	add	r3, r2
	str	r3, [r0]
	ldr	r3, [r0, #4]
	ldr	r2, [r5, #4]
	add	r3, r2
	str	r3, [r0, #4]
	ldr	r3, [r0, #8]
	ldr	r2, [r5, #8]
	add	r3, r2
	str	r3, [r0, #8]
.Ld6000:
	mov	r0, r11
	bl	MatrixTranslatev
	mov	r1, r9
	cmp	r1, #0
	bne	.Ld6026
	ldr	r2, [sp, #0x4c]
	ldr	r5, =0x7828
	add	r3, r2, r5
	ldr	r3, [r3]
	mov	r2, #1
	ldr	r0, [r3, #8]
	mov	r3, #1
	str	r1, [sp]
	neg	r2, r2
	mov	r1, #7
	neg	r3, r3
	bl	SetBattleActorState
.Ld6026:
	mov	r0, r9
	cmp	r0, #0x18
	bne	.Ld6046
	ldr	r1, [sp, #0x4c]
	ldr	r2, =0x7828
	add	r3, r1, r2
	ldr	r3, [r3]
	mov	r2, #1
	ldr	r0, [r3, #8]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0
	neg	r2, r2
	sub	r3, #1
	bl	SetBattleActorState
.Ld6046:
	mov	r0, r9
	neg	r0, r0
	mov	r1, r9
	mov	r5, #0
	lsl	r1, #8
	str	r0, [sp, #0x2c]
	ldr	r6, =gBuffer
	mov	r10, r5
	lsl	r7, r0, #8
	mov	r8, r1
.Ld605a:
	cmp	r9, r10
	bgt	.Ld6060
	b	.Ld616a
.Ld6060:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	beq	.Ld6068
	b	.Ld616a
.Ld6068:
	bl	MatrixPush
	mov	r3, #3
	mov	r2, r10
	and	r3, r2
	cmp	r3, #1
	beq	.Ld6092
	cmp	r3, #1
	bgt	.Ld6080
	cmp	r3, #0
	beq	.Ld608a
	b	.Ld60d4
.Ld6080:
	cmp	r3, #2
	beq	.Ld609a
	cmp	r3, #3
	beq	.Ld60c8
	b	.Ld60d4
.Ld608a:
	mov	r0, r8
	bl	MatrixYaw
	b	.Ld60d4
.Ld6092:
	mov	r0, r7
	bl	MatrixPitch
	b	.Ld60d4
.Ld609a:
	mov	r0, r7
	bl	MatrixRoll
	b	.Ld60d4

	.pool_aligned

.Ld60c8:
	mov	r0, r7
	bl	MatrixPitch
	mov	r0, r7
	bl	MatrixRoll
.Ld60d4:
	add	r5, sp, #0x70
	mov	r1, r5
	mov	r0, r6
	bl	Func_80e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	bl	MatrixPop
	ldr	r2, [r5, #8]
	cmp	r2, #0xf9
	bgt	.Ld60f4
	mov	r3, #0xfa
	str	r3, [r5, #8]
	mov	r2, #0xfa
.Ld60f4:
	ldr	r3, =0x27a
	cmp	r2, r3
	ble	.Ld60fe
	str	r3, [r5, #8]
	mov	r2, r3
.Ld60fe:
	mov	r3, r2
	sub	r3, #0xfa
	cmp	r3, #0
	bge	.Ld6108
	add	r3, #0x3f
.Ld6108:
	asr	r3, #6
	mov	r0, #9
	sub	r0, r3
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x40]
	add	r1, r3, r1
	lsr	r3, r0, #31
	ldr	r2, [r5]
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r5, #4]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x48]
	ldr	r4, [sp, #0x50]
	bl	_call_via_r4
	mov	r0, r6
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_80e38b8
	mov	r3, r10
	add	r3, #0x1e
	cmp	r9, r3
	ble	.Ld616a
	ldr	r2, [r6]
	ldr	r3, [r6, #0xc]
	neg	r2, r2
	asr	r2, #8
	ldr	r1, [r6, #4]
	add	r3, r2
	neg	r1, r1
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	asr	r1, #8
	ldr	r0, [r6, #8]
	add	r3, r1
	neg	r0, r0
	str	r3, [r6, #0x10]
	ldr	r3, [r6, #0x14]
	asr	r0, #8
	add	r3, r0
	str	r3, [r6, #0x14]
.Ld616a:
	ldr	r5, [sp, #0x2c]
	mov	r1, #1
	lsl	r3, r5, #5
	mov	r0, r9
	add	r10, r1
	add	r7, r3
	mov	r2, r10
	lsl	r3, r0, #5
	add	r8, r3
	add	r6, #0x1c
	cmp	r2, #0x20
	beq	.Ld6184
	b	.Ld605a
.Ld6184:
	cmp	r0, #0x52
	ble	.Ld61c6
	add	r6, sp, #0x7c
	mov	r3, #0
	str	r3, [r6]
	lsl	r0, #10
	bl	sin
	mov	r5, #0
	lsl	r0, #2
	str	r5, [r6, #8]
	add	r5, sp, #0x70
	str	r0, [r6, #4]
	mov	r1, r5
	mov	r0, r6
	bl	Func_80e3944
	ldr	r2, [r5]
	mov	r1, #0x14
	asr	r2, #1
	str	r2, [r5]
	ldr	r3, [r5, #4]
	str	r1, [sp]
	mov	r1, #0x22
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x3c]
	sub	r2, #0xa
	ldr	r4, [r0, #4]
	sub	r3, #0x11
	ldr	r0, [sp, #0x48]
	ldr	r1, [sp, #0x4c]
	bl	_call_via_r4
.Ld61c6:
	ldr	r1, [sp, #0x4c]
	ldr	r3, =0x7824
	mov	r5, #1
	add	r2, r1, r3
	mov	r3, #1
	mov	r0, #1
	str	r3, [r2]
	add	r9, r5
	bl	WaitFrames
	mov	r0, r9
	cmp	r0, #0x62
	beq	.Ld61e2
	b	.Ld5fb0
.Ld61e2:
	mov	r1, #0
	ldr	r5, =gBuffer
	mov	r10, r1
	mov	r6, #0xff
.Ld61ea:
	bl	Random
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5]
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	add	r3, #0x40
	lsl	r3, #15
	str	r3, [r5, #4]
	bl	Random
	mov	r3, #0
	and	r0, r6
	str	r3, [r5, #0x18]
	sub	r0, #0x7f
	mov	r2, #1
	mov	r3, #0x80
	lsl	r0, #15
	add	r10, r2
	lsl	r3, #2
	str	r0, [r5, #8]
	add	r5, #0x1c
	cmp	r10, r3
	bne	.Ld61ea
	ldr	r0, =_FILE_ba
	ldr	r1, [sp, #0x40]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r1, =0x7828
	ldr	r0, [sp, #0x4c]
	add	r3, r0, r1
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r2, #0x48
	mov	r5, #0
	lsl	r3, #3
	neg	r2, r2
	mov	r9, r5
	cmp	r3, r2
	bne	.Ld6248
	b	.Ld64d6
.Ld6248:
	mov	r3, sp
	mov	r5, sp
	ldr	r2, [sp, #0x34]
	add	r3, #0x64
	add	r5, #0x58
	add	r1, r0, r1
	str	r3, [sp, #0x10]
	str	r5, [sp, #0x14]
	str	r1, [sp, #0x20]
	str	r2, [sp, #0x1c]
.Ld625c:
	ldr	r3, =iwram_3001e80
	ldr	r3, [r3]
	str	r3, [sp, #0x28]
	bl	InitMatrixStack
	ldr	r3, [sp, #0x28]
	add	r3, #0xc
	mov	r1, r3
	ldr	r0, [sp, #0x28]
	str	r3, [sp, #0x24]
	bl	MatrixSetLook
	ldr	r5, [sp, #0x20]
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x28
	cmp	r9, r3
	blt	.Ld628e
	ldr	r0, [sp, #0x1c]
	mov	r1, #0x80
	ldr	r3, [r0, #4]
	lsl	r1, #11
	add	r3, r1
	str	r3, [r0, #4]
.Ld628e:
	ldr	r2, [sp, #0x1c]
	ldr	r5, [sp, #0x10]
	ldr	r3, [r2]
	str	r3, [r5]
	ldr	r3, [r2, #4]
	mov	r1, r9
	str	r3, [r5, #4]
	lsl	r0, r1, #11
	bl	sin
	ldr	r5, [sp, #0x1c]
	lsl	r2, r0, #2
	ldr	r3, [r5, #8]
	add	r2, r0
	lsl	r2, #3
	ldr	r0, [sp, #0x10]
	add	r3, r2
	str	r3, [r0, #8]
	add	r2, sp, #0x58
	mov	r1, r2
	ldr	r0, [sp, #0x10]
	bl	Func_80e3944
	ldr	r2, [sp, #0x58]
	ldr	r3, [sp, #0x5c]
	mov	r1, #0x14
	asr	r2, #1
	str	r1, [sp]
	mov	r1, #0x22
	str	r2, [sp, #0x58]
	sub	r3, #0x11
	str	r1, [sp, #4]
	sub	r2, #0xa
	ldr	r4, [sp, #0x50]
	ldr	r0, [sp, #0x48]
	ldr	r1, [sp, #0x4c]
	bl	_call_via_r4
	mov	r3, #0
	str	r3, [sp, #0x44]
	ldr	r5, [sp, #0x20]
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ld62ea
	b	.Ld6484
.Ld62ea:
	ldr	r1, =0x7828
	ldr	r0, [sp, #0x4c]
	mov	r2, #0x24
	add	r1, r0, r1
	mov	r3, #0
	str	r1, [sp, #0x18]
	str	r2, [sp, #0xc]
	str	r3, [sp, #8]
.Ld62fa:
	ldr	r5, [sp, #0x18]
	ldr	r1, [sp, #0xc]
	ldr	r3, [r5]
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	ldr	r3, [sp, #0x44]
	lsl	r3, #3
	ldr	r5, [r0]
	mov	r8, r3
	bl	InitMatrixStack
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #0x24]
	bl	MatrixSetLook
	ldr	r3, [r5, #8]
	mov	r0, r11
	str	r3, [r0]
	mov	r3, #0xa0
	lsl	r3, #14
	str	r3, [r0, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r0, #8]
	bl	MatrixTranslatev
	mov	r3, r8
	add	r3, #0x1e
	cmp	r9, r3
	bne	.Ld633c
	mov	r0, #0x7e
	bl	_PlaySound
.Ld633c:
	mov	r3, r8
	add	r3, #0x28
	cmp	r9, r3
	bne	.Ld635c
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0xc]
	ldr	r3, [r1]
	ldrsh	r0, [r3, r2]
	mov	r3, #0
	mov	r2, #1
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	sub	r3, #1
	bl	SetBattleActorState
.Ld635c:
	mov	r3, r8
	add	r3, #0x40
	cmp	r9, r3
	bne	.Ld637c
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0xc]
	ldr	r3, [r0]
	ldrsh	r0, [r3, r1]
	mov	r3, #0
	mov	r2, #1
	str	r3, [sp]
	mov	r1, #0
	neg	r2, r2
	sub	r3, #1
	bl	SetBattleActorState
.Ld637c:
	cmp	r9, r8
	ble	.Ld6462
	mov	r3, r9
	mov	r5, r8
	sub	r0, r3, r5
	lsl	r0, #9
	bl	MatrixYaw
	ldr	r2, =gBuffer
	ldr	r1, [sp, #8]
	mov	r0, #0
	mov	r10, r0
	add	r6, r1, r2
.Ld6396:
	mov	r5, r10
	lsr	r3, r5, #31
	add	r3, r10
	asr	r3, #1
	add	r3, r8
	cmp	r9, r3
	ble	.Ld6456
	ldr	r3, [r6]
	asr	r3, #8
	mov	r0, r3
	mul	r0, r3
	ldr	r3, [r6, #4]
	asr	r3, #8
	mov	r2, r3
	mul	r2, r3
	ldr	r3, [r6, #8]
	asr	r3, #8
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	asr	r7, r0, #9
	cmp	r7, #0
	beq	.Ld6456
	add	r2, sp, #0x58
	mov	r0, r6
	mov	r1, r2
	bl	Func_80e3944
	ldr	r3, [sp, #0x58]
	asr	r3, #1
	str	r3, [sp, #0x58]
	ldr	r5, =0x139
	ldr	r3, [sp, #0x60]
	cmp	r3, r5
	bgt	.Ld63ee
	mov	r3, #0x9d
	ldr	r0, [sp, #0x14]
	lsl	r3, #1
	str	r3, [r0, #8]
.Ld63ee:
	ldr	r2, =0x27a
	cmp	r3, r2
	ble	.Ld63f8
	ldr	r1, [sp, #0x14]
	str	r2, [r1, #8]
.Ld63f8:
	mov	r3, r10
	lsl	r0, r3, #2
	mov	r1, #9
	add	r0, r9
	bl	__modsi3
	ldr	r2, =Data_ede84
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =Data_ede96
	ldr	r5, [sp, #0x40]
	ldrb	r0, [r3, r0]
	ldr	r3, [sp, #0x14]
	add	r1, r5, r1
	ldr	r2, [r3]
	ldr	r5, [sp, #0x3c]
	ldr	r3, [r3, #4]
	str	r0, [sp]
	str	r0, [sp, #4]
	lsr	r4, r0, #1
	sub	r2, r4
	sub	r3, r4
	ldr	r0, [sp, #0x48]
	ldr	r4, [r5, #4]
	bl	_call_via_r4
	ldr	r5, [r6]
	mov	r1, r7
	mov	r0, r5
	bl	__divsi3
	sub	r5, r0
	str	r5, [r6]
	ldr	r5, [r6, #4]
	mov	r1, r7
	mov	r0, r5
	bl	__divsi3
	sub	r5, r0
	str	r5, [r6, #4]
	ldr	r5, [r6, #8]
	mov	r1, r7
	mov	r0, r5
	bl	__divsi3
	sub	r5, r0
	str	r5, [r6, #8]
.Ld6456:
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	add	r6, #0x1c
	cmp	r1, #0x40
	bne	.Ld6396
.Ld6462:
	ldr	r2, [sp, #0xc]
	ldr	r3, [sp, #8]
	ldr	r0, [sp, #0x44]
	mov	r5, #0xe0
	lsl	r5, #3
	add	r3, r5
	add	r2, #2
	add	r0, #1
	str	r2, [sp, #0xc]
	str	r3, [sp, #8]
	str	r0, [sp, #0x44]
	ldr	r1, [sp, #0x18]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x14]
	cmp	r0, r3
	beq	.Ld6484
	b	.Ld62fa
.Ld6484:
	ldr	r3, [sp, #0x4c]
	ldr	r5, =0x7824
	add	r2, r3, r5
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, [sp, #0x20]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x14]
	mov	r0, #1
	lsl	r3, #3
	b	.Ld64cc

	.pool_aligned

.Ld64cc:
	add	r9, r0
	add	r3, #0x48
	cmp	r9, r3
	beq	.Ld64d6
	b	.Ld625c
.Ld64d6:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0xac
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Unused_Fizz
