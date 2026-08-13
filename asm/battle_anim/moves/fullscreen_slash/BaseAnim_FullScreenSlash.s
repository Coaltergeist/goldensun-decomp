	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BaseAnim_FullScreenSlash  @ 0x080ecef4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	ldmia	r3!, {r7}
	ldr	r2, =0x7828
	ldr	r3, [r3]
	mov	r5, r0
	mov	r8, r3
	add	r3, r7, r2
	str	r5, [r3]
	mov	r0, #0
	sub	sp, #0x10
	mov	r6, r1
	bl	AnimStart
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lecf30	@ 0
	strh	r3, [r2]
	cmp	r6, #0
	bne	.Lecf48
	ldr	r0, =_FILE_4f
	mov	r1, r7
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, =_FILE_50
	b	.Lecf5a

	.align	2, 0
.Lecf30:
	.word	0
	.pool

.Lecf48:
	cmp	r6, #1
	bne	.Lecf66
	ldr	r0, =_FILE_4d
	mov	r1, r7
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, =_FILE_4e
.Lecf5a:
	ldr	r1, =gBuffer
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	b	.Lecf7e
.Lecf66:
	ldr	r0, =_FILE_4b
	mov	r1, r7
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, =_FILE_4c
	ldr	r1, =gBuffer
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
.Lecf7e:
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r4, =0x7784
	add	r2, r7, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r1, #0x90
	add	r2, r7, r4
	mov	r3, #0
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	cmp	r6, #1
	bne	.Lecfb0
	mov	r3, #0x80
	mov	r2, #0x24
	ldrsh	r1, [r5, r2]
	ldr	r0, [r5, #8]
	lsl	r3, #12
	mov	r2, #0x10
	bl	_Func_80b82c4
	b	.Lecfbe
.Lecfb0:
	mov	r3, #0x24
	ldrsh	r1, [r5, r3]
	ldr	r0, [r5, #8]
	mov	r2, #0x10
	mov	r3, #0
	bl	_Func_80b82c4
.Lecfbe:
	mov	r0, #0x10
	bl	WaitFrames
	ldr	r4, =0x7828
	add	r3, r7, r4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Lecfe2
	mov	r3, #0
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	BuildDraw2DFuncEx
	b	.Lecff2
.Lecfe2:
	mov	r3, #0
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	bl	BuildDraw2DFuncEx
.Lecff2:
	ldr	r3, =gPtrs
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r0, #0xd4
	str	r3, [sp, #8]
	bl	_PlaySound
	mov	r5, #0
	mov	r6, #0x78
.Led004:
	cmp	r5, #3
	bgt	.Led012
	str	r6, [sp]
	str	r6, [sp, #4]
	mov	r0, r8
	mov	r1, r7
	b	.Led030
.Led012:
	cmp	r5, #7
	bgt	.Led024
	mov	r2, #0xe1
	lsl	r2, #6
	add	r1, r7, r2
	str	r6, [sp]
	str	r6, [sp, #4]
	mov	r0, r8
	b	.Led030
.Led024:
	cmp	r5, #0xb
	bgt	.Led03c
	str	r6, [sp]
	str	r6, [sp, #4]
	mov	r0, r8
	ldr	r1, =gBuffer
.Led030:
	mov	r2, #0
	mov	r3, #0
	ldr	r4, [sp, #8]
	bl	_call_via_r4
	b	.Led052
.Led03c:
	cmp	r5, #0xf
	bgt	.Led052
	str	r6, [sp]
	str	r6, [sp, #4]
	mov	r0, r8
	ldr	r1, =ewram_2013840
	mov	r2, #0
	mov	r3, #0
	ldr	r4, [sp, #8]
	bl	_call_via_r4
.Led052:
	mov	r3, r5
	sub	r3, #0x10
	cmp	r3, #3
	bhi	.Led068
	mov	r1, #0x80
	ldr	r3, =Func_80008d8
	mov	r0, r8
	lsl	r1, #7
	ldr	r2, =0x3f3f3f3f
	bl	_call_via_r3
.Led068:
	cmp	r5, #0x12
	bne	.Led072
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Led072:
	cmp	r5, #0x14
	bne	.Led08e
	ldr	r3, =0x77a8
	ldr	r4, =0x7828
	add	r2, r7, r3
	mov	r3, #8
	str	r3, [r2]
	add	r3, r7, r4
	ldr	r3, [r3]
	mov	r1, #4
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_SetBattleActorKnockback
.Led08e:
	mov	r0, #0x10
	mov	r1, #0x10
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r3, =0x7824
	add	r2, r7, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	add	r5, #1
	bl	WaitFrames
	cmp	r5, #0x15
	bne	.Led004
	mov	r0, #0x2e
	bl	gfree
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	bl	AnimEnd
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end BaseAnim_FullScreenSlash
