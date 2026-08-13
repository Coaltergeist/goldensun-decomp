	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_ShiningStar  @ 0x080d1350
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
	sub	sp, #0x40
	str	r1, [sp, #0x30]
	ldr	r3, [r3]
	str	r3, [sp, #0x2c]
	ldr	r2, [r6, #8]
	mov	r3, r6
	str	r2, [sp, #0x18]
	sub	r3, #0x6c
	ldr	r3, [r3]
	str	r3, [sp, #0x14]
	ldr	r3, =0x7828
	add	r1, r3
	str	r0, [r1]
	mov	r0, #1
	mov	r8, r1
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
	ldr	r1, [sp, #0x18]
	bl	DecompressLZ
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	mov	r1, #0xef
	ldr	r0, [sp, #0x30]
	lsl	r1, #7
	add	r3, r0, r1
	str	r5, [r3]
	ldr	r3, =0x7784
	ldr	r6, [r6, #0x1c]
	add	r2, r0, r3
	mov	r1, #0x90
	mov	r3, #0x32
	str	r3, [r2]
	lsl	r1, #3
	mov	r5, r8
	ldr	r0, =Task_BlitAnim
	str	r6, [sp, #0x20]
	bl	StartTask
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r0, [r0]
	mov	r10, r0
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	mov	r5, #0xe1
	mov	r2, #0
	ldr	r3, [sp, #0x30]
	ldr	r7, [r0]
	lsl	r5, #7
	str	r2, [sp, #0x1c]
	add	r6, r3, r5
.Ld13fc:
	mov	r1, r10
	ldr	r3, [r1, #8]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	ldr	r0, [sp, #0x1c]
	str	r3, [r6]
	mov	r2, #0xf0
	ldr	r3, [r1, #0xc]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r3, [r1, #0x10]
	str	r3, [r6, #8]
	lsl	r5, r0, #3
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	sub	r3, #0x40
	ldr	r0, [r7, #8]
	lsl	r3, #16
	add	r0, r3
	ldr	r3, [r6]
	mov	r1, #0xc
	sub	r0, r3
	bl	__divsi3
	str	r0, [r6, #0xc]
	ldr	r0, [r7, #0xc]
	ldr	r3, [r6, #4]
	sub	r0, r3
	mov	r3, #0xa0
	lsl	r3, #13
	add	r0, r3
	mov	r1, #0xc
	bl	__divsi3
	str	r0, [r6, #0x10]
	ldr	r3, [r6, #8]
	ldr	r0, [r7, #0x10]
	mov	r1, #0xc
	sub	r0, r3
	bl	__divsi3
	str	r0, [r6, #0x14]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	add	r3, r5
	str	r3, [r6, #0x18]
	ldr	r5, [sp, #0x1c]
	add	r5, #1
	add	r6, #0x1c
	str	r5, [sp, #0x1c]
	cmp	r5, #8
	bne	.Ld13fc
	mov	r0, #0
	str	r0, [sp, #0x28]
.Ld1474:
	ldr	r1, =0xaaab
	ldr	r0, [sp, #0x28]
	ldr	r2, =0x5555
	mov	r3, #0
	bl	ColorCycleVFXPalette
	ldr	r1, [sp, #0x28]
	cmp	r1, #0x60
	bne	.Ld148c
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Ld148c:
	mov	r2, #0
	ldr	r3, [sp, #0x30]
	mov	r5, #0xe1
	lsl	r5, #7
	str	r2, [sp, #0x1c]
	str	r2, [sp, #0x10]
	add	r7, r3, r5
.Ld149a:
	ldr	r3, [r7, #0x18]
	ldr	r0, [sp, #0x28]
	cmp	r0, r3
	bge	.Ld14a4
	b	.Ld166e
.Ld14a4:
	bl	InitMatrixStack
	ldr	r0, [sp, #0x14]
	mov	r1, r0
	add	r1, #0xc
	bl	MatrixSetLook
	add	r5, sp, #0x34
	mov	r0, r7
	mov	r1, r5
	bl	Func_80e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	add	r3, #8
	cmp	r3, #0x87
	bls	.Ld14ca
	b	.Ld15ee
.Ld14ca:
	ldr	r3, [r5, #4]
	cmp	r3, #0x7f
	ble	.Ld14d2
	b	.Ld15ee
.Ld14d2:
	mov	r1, #8
	neg	r1, r1
	cmp	r3, r1
	bge	.Ld14dc
	b	.Ld15ee
.Ld14dc:
	ldr	r3, [sp, #0x1c]
	lsl	r2, r3, #2
	add	r2, r3
	lsl	r3, r2, #3
	mov	r10, r5
	sub	r3, r2
	ldr	r5, =.Lee158
	ldr	r0, =gBuffer
	lsl	r3, #3
	mov	r4, #0
	mov	r8, r5
	add	r1, r3, r0
.Ld14f4:
	ldr	r3, =0x199a
	mov	r6, r4
	mul	r6, r3
	ldr	r2, [sp, #0x28]
	ldr	r0, [r7, #0x18]
	sub	r0, r2, r0
	lsl	r0, #11
	sub	r0, r6, r0
	str	r1, [sp, #0xc]
	str	r4, [sp, #8]
	bl	sin
	ldr	r4, [sp, #8]
	mov	r5, #1
	and	r5, r4
	mov	r2, r8
	ldrb	r3, [r2, r5]
	mov	r2, r3
	mul	r2, r0
	mov	r0, r10
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r0]
	ldr	r1, [sp, #0xc]
	asr	r2, #17
	add	r3, r2
	str	r3, [r1, #0xc]
	ldr	r2, [sp, #0x28]
	ldr	r3, [r7, #0x18]
	sub	r3, r2, r3
	lsl	r3, #11
	sub	r6, r3
	mov	r0, r6
	bl	cos
	mov	r2, r8
	ldrb	r3, [r2, r5]
	mov	r2, r3
	mul	r2, r0
	mov	r5, r10
	ldr	r3, [r5, #4]
	ldr	r4, [sp, #8]
	ldr	r1, [sp, #0xc]
	asr	r2, #16
	sub	r3, r2
	add	r4, #1
	str	r3, [r1, #0x10]
	add	r1, #0x1c
	cmp	r4, #0xa
	bne	.Ld14f4
	ldr	r0, [sp, #0x10]
	mov	r4, #0
	mov	r11, r0
.Ld155e:
	mov	r1, r11
	add	r2, r4, r1
	lsl	r3, r2, #3
	add	r4, #1
	sub	r3, r2
	ldr	r2, =gBuffer
	lsl	r3, #2
	mov	r9, r4
	add	r2, r3
	mov	r0, r9
	mov	r1, #0xa
	mov	r10, r2
	bl	__modsi3
	add	r0, r11
	lsl	r3, r0, #3
	sub	r3, r0
	ldr	r5, =gBuffer
	lsl	r3, #2
	add	r5, r3
	mov	r8, r5
	mov	r4, #0
.Ld158a:
	mov	r0, r8
	mov	r1, r10
	ldr	r6, [r1, #0xc]
	ldr	r3, [r0, #0xc]
	sub	r3, r6
	mov	r0, r4
	mul	r0, r3
	mov	r1, #0xc
	str	r4, [sp, #8]
	bl	__divsi3
	mov	r2, r8
	add	r6, r0
	mov	r0, r10
	ldr	r3, [r2, #0x10]
	ldr	r5, [r0, #0x10]
	ldr	r4, [sp, #8]
	sub	r3, r5
	mov	r0, r4
	mul	r0, r3
	mov	r1, #0xc
	bl	__divsi3
	ldr	r2, =Data_ede48
	mov	r3, #4
	sub	r3, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x18]
	add	r5, r0
	mov	r0, #1
	add	r1, r3, r1
	sub	r6, r0
	sub	r5, #2
	mov	r2, #2
	mov	r3, #4
	str	r2, [sp]
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x2c]
	mov	r3, r5
	mov	r2, r6
	ldr	r5, [sp, #0x20]
	bl	_call_via_r5
	ldr	r4, [sp, #8]
	add	r4, #1
	cmp	r4, #0xc
	bne	.Ld158a
	mov	r4, r9
	cmp	r4, #0xa
	bne	.Ld155e
.Ld15ee:
	ldr	r3, [r7, #4]
	ldr	r0, =0x1dffff
	cmp	r3, r0
	bgt	.Ld1656
	ldr	r3, [r7, #0x10]
	neg	r3, r3
	str	r3, [r7, #0x10]
	ldr	r3, [r7, #0xc]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r7, #0x14]
	ldr	r1, [sp, #0x30]
	ldr	r3, =0x77a8
	add	r2, r1, r3
	mov	r3, #4
	str	r3, [r2]
	mov	r0, #0x86
	bl	_PlaySound
	ldr	r3, =0x7828
	ldr	r5, [sp, #0x30]
	ldr	r3, [r5, r3]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Ld1656
	ldr	r0, =0x7828
	mov	r6, #0x24
	add	r5, r0
.Ld1634:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	mov	r3, r4
	mov	r2, #5
	str	r4, [sp, #8]
	bl	SetBattleActorState
	ldr	r3, [r5]
	ldr	r4, [sp, #8]
	ldr	r3, [r3, #0x14]
	add	r4, #1
	add	r6, #2
	cmp	r4, r3
	bne	.Ld1634
.Ld1656:
	ldr	r3, [r7]
	ldr	r2, [r7, #0xc]
	add	r3, r2
	str	r3, [r7]
	ldr	r2, [r7, #0x10]
	ldr	r3, [r7, #4]
	add	r3, r2
	str	r3, [r7, #4]
	ldr	r2, [r7, #0x14]
	ldr	r3, [r7, #8]
	add	r3, r2
	str	r3, [r7, #8]
.Ld166e:
	ldr	r2, [sp, #0x10]
	ldr	r3, [sp, #0x1c]
	add	r2, #0xa
	add	r3, #1
	str	r2, [sp, #0x10]
	add	r7, #0x1c
	str	r3, [sp, #0x1c]
	cmp	r3, #8
	beq	.Ld1682
	b	.Ld149a
.Ld1682:
	mov	r1, #4
	mov	r0, #4
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r0, =0x7824
	ldr	r5, [sp, #0x30]
	mov	r3, #1
	add	r2, r5, r0
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, [sp, #0x28]
	add	r1, #1
	str	r1, [sp, #0x28]
	cmp	r1, #0x80
	beq	.Ld16aa
	b	.Ld1474
.Ld16aa:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_ShiningStar

	.section .rodata
.Lee158:
	.incrom 0xee158, 0xee15a
