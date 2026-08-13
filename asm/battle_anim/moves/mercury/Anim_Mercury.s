	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Mercury  @ 0x080dfe2c
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
	sub	sp, #0x24
	str	r3, [sp, #0x18]
	ldr	r3, =0x7828
	mov	r9, r1
	ldr	r2, [r2, #8]
	add	r3, r9
	str	r2, [sp, #0x10]
	str	r0, [r3]
	mov	r0, #0
	bl	AnimStart
	mov	r2, sp
	add	r2, #0x1c
	mov	r1, r2
	mov	r0, #0
	str	r2, [sp, #0xc]
	bl	BuildDraw2DFuncs
	ldr	r5, =gBuffer
	ldr	r1, [sp, #0x10]
	ldr	r0, =_FILE_73
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, =_FILE_92
	mov	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	mov	r1, r5
	ldr	r0, =_FILE_6f
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r1, #0xaa
	lsl	r1, #2
	mov	r0, r5
	add	r1, r9
	mov	r2, #0x11
	mov	r3, #0x68
	bl	Func_80dfddc
	mov	r3, #0xdd
	lsl	r3, #3
	mov	r1, #0x99
	add	r5, r3
	lsl	r1, #4
	add	r1, r9
	mov	r0, r5
	mov	r2, #0x22
	mov	r3, #0x41
	bl	Func_80dfddc
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r9
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	ldr	r3, =0x7098
	mov	r7, #0
	mov	r2, #1
	mov	r10, r7
	neg	r2, r2
	add	r3, r9
.Ldfeda:
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r1, #8
	bne	.Ldfeda
	mov	r2, #0
	mov	r10, r2
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_2010018
	neg	r1, r1
	lsl	r2, #2
.Ldfef6:
	mov	r7, #1
	add	r10, r7
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r10, r2
	bne	.Ldfef6
	mov	r0, #0xa2
	bl	_PlaySound
	mov	r0, #0
	str	r0, [sp, #0x14]
.Ldff0c:
	ldr	r1, [sp, #0x14]
	cmp	r1, #0x38
	bne	.Ldff18
	mov	r0, #0x85
	bl	_Func_80bd7dc
.Ldff18:
	mov	r3, #0xe1
	lsl	r3, #7
	mov	r2, #0
	add	r3, r9
	mov	r10, r2
	mov	r8, r3
	mov	r11, r2
.Ldff26:
	mov	r7, r8
	mov	r0, #1
	ldr	r3, [r7, #0x18]
	neg	r0, r0
	cmp	r3, r0
	beq	.Ldffce
	mov	r1, #0x41
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	str	r1, [sp]
	mov	r1, #0x22
	str	r1, [sp, #4]
	mov	r1, #0x99
	lsl	r1, #4
	sub	r3, #0x11
	sub	r2, #0x10
	ldr	r4, [sp, #0x1c]
	ldr	r0, [sp, #0x18]
	add	r1, r9
	bl	_call_via_r4
	ldr	r3, [r7]
	sub	r3, #0xc
	str	r3, [r7]
	ldr	r3, [r7, #0x18]
	add	r3, #1
	str	r3, [r7, #0x18]
	cmp	r3, #5
	bne	.Ldffce
	mov	r0, #0x85
	bl	_PlaySound
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r9
	ldr	r7, =gBuffer
	str	r3, [r2]
	mov	r4, #0
	add	r7, r11
.Ldff74:
	str	r4, [sp, #8]
	bl	Random
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	bl	Random
	mov	r2, r8
	ldr	r3, [r2]
	lsl	r3, #16
	str	r3, [r7]
	ldr	r3, [r2, #4]
	ldr	r5, =0x1ff
	lsl	r3, #16
	mov	r1, #0x80
	lsl	r1, #1
	str	r3, [r7, #4]
	and	r5, r0
	mov	r0, r6
	add	r5, r1
	bl	sin
	mov	r3, r5
	mul	r3, r0
	asr	r3, #8
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	cos
	mov	r3, r5
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0x10]
	bl	Random
	mov	r3, #0xf
	ldr	r4, [sp, #8]
	and	r3, r0
	add	r3, #0x20
	add	r4, #1
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r4, #0x20
	bne	.Ldff74
.Ldffce:
	mov	r0, #1
	mov	r7, #0xe0
	add	r10, r0
	mov	r3, #0x1c
	lsl	r7, #2
	mov	r1, r10
	add	r8, r3
	add	r11, r7
	cmp	r1, #5
	bne	.Ldff26
	ldr	r2, [sp, #0x14]
	cmp	r2, #0x5f
	ble	.Ldffea
	b	.Le00f0
.Ldffea:
	lsl	r6, r2, #11
	mov	r0, r6
	bl	sin
	ldr	r7, [sp, #0x14]
	mov	r5, #0x40
	lsl	r3, r7, #1
	sub	r5, r3
	mov	r3, r5
	mul	r3, r0
	mov	r0, #0x60
	asr	r7, r3, #17
	add	r0, r7
	mov	r8, r0
	mov	r0, r6
	bl	cos
	mov	r3, r5
	mul	r3, r0
	mov	r1, #0x3c
	asr	r3, #16
	add	r1, r3
	mov	r11, r1
	mov	r1, #0x14
	str	r1, [sp]
	mov	r1, #0x22
	str	r1, [sp, #4]
	ldr	r0, [sp, #0xc]
	mov	r2, r7
	add	r2, #0x56
	add	r3, #0x2b
	ldr	r4, [r0, #4]
	mov	r1, r9
	ldr	r0, [sp, #0x18]
	bl	_call_via_r4
	ldr	r0, =.Leec5a
	mov	r1, #0
	ldrb	r3, [r0, r1]
	ldr	r2, [sp, #0x14]
	mov	r10, r1
	cmp	r2, r3
	bne	.Le0064
	mov	r1, #0xe1
	lsl	r1, #7
	add	r1, r9
	mov	r2, #1
	ldr	r3, [r1, #0x18]
	neg	r2, r2
	cmp	r3, r2
	bne	.Le0064
	mov	r3, r7
	add	r3, #0x58
	str	r3, [r1]
	mov	r7, r11
	mov	r3, r8
	mov	r0, r10
	str	r3, [r1, #0xc]
	str	r7, [r1, #4]
	str	r0, [r1, #0x18]
	b	.Le00f0
.Le0064:
	mov	r1, r10
	ldrb	r3, [r0, r1]
	ldr	r2, [sp, #0x14]
	add	r3, #6
	cmp	r2, r3
	bne	.Le00b0
	ldr	r3, =0x7828
	mov	r7, r9
	ldr	r3, [r7, r3]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Le00b0
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r9
.Le0084:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #6
	str	r3, [sp]
	mov	r2, #5
	mov	r3, r4
	mov	r1, #7
	str	r4, [sp, #8]
	bl	SetBattleActorState
	ldr	r3, [r5]
	mov	r1, #6
	ldrsh	r0, [r3, r6]
	bl	_SetBattleActorKnockback
	ldr	r3, [r5]
	ldr	r4, [sp, #8]
	ldr	r3, [r3, #0x14]
	add	r4, #1
	add	r6, #2
	cmp	r4, r3
	bne	.Le0084
.Le00b0:
	mov	r3, #1
	add	r10, r3
	mov	r7, r10
	cmp	r7, #5
	beq	.Le00f0
	ldr	r3, =.Leec5a
	mov	r0, r3
	ldrb	r3, [r0, r7]
	ldr	r1, [sp, #0x14]
	cmp	r1, r3
	bne	.Le0064
	lsl	r3, r7, #3
	sub	r3, r7
	lsl	r3, #2
	mov	r7, #0xe1
	add	r3, r9
	lsl	r7, #7
	add	r2, r3, r7
	mov	r1, #1
	ldr	r3, [r2, #0x18]
	neg	r1, r1
	cmp	r3, r1
	bne	.Le0064
	mov	r3, r8
	sub	r3, #8
	str	r3, [r2]
	mov	r3, r8
	str	r3, [r2, #0xc]
	mov	r7, r11
	mov	r3, #0
	str	r7, [r2, #4]
	str	r3, [r2, #0x18]
.Le00f0:
	mov	r0, #0
	ldr	r5, =gBuffer
	ldr	r6, =Data_ede48
	mov	r10, r0
.Le00f8:
	mov	r1, #1
	ldr	r0, [r5, #0x18]
	neg	r1, r1
	cmp	r0, r1
	beq	.Le0148
	cmp	r0, #0
	bge	.Le0108
	add	r0, #0xf
.Le0108:
	asr	r0, #4
	add	r0, #2
	lsl	r4, r0, #1
	sub	r3, r4, #2
	ldrh	r1, [r6, r3]
	ldr	r2, [sp, #0x10]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0xc]
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x18]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r5
	mov	r1, #0x3e
	lsl	r2, #6
	bl	Func_80e3908
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Le0148:
	mov	r1, #1
	mov	r2, #0x80
	add	r10, r1
	lsl	r2, #1
	add	r5, #0x1c
	cmp	r10, r2
	bne	.Le00f8
	mov	r0, #4
	mov	r1, #4
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [sp, #0x14]
	add	r3, #1
	str	r3, [sp, #0x14]
	cmp	r3, #0x60
	beq	.Le017c
	b	.Ldff0c
.Le017c:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Mercury

	.section .rodata
.Leec5a:
	.incrom 0xeec5a, 0xeec5f
