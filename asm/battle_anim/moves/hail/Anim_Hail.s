	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Hail  @ 0x080e0c84
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	mov	r6, r0
	ldmia	r3!, {r0}
	ldr	r5, =0x7828
	mov	r11, r0
	ldr	r3, [r3]
	sub	sp, #0x30
	add	r5, r11
	str	r3, [sp, #0x10]
	mov	r0, #0
	str	r6, [r5]
	bl	AnimStart
	ldr	r3, [r5]
	ldr	r2, [r3, #4]
	add	r3, sp, #0x20
	str	r3, [sp]
	add	r3, sp, #0x1c
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #1
	mov	r3, #2
	bl	Anim_Djinni
	ldr	r3, [r5]
	mov	r1, sp
	ldr	r0, [r3, #4]
	add	r1, #0x14
	str	r1, [sp, #0xc]
	bl	BuildDraw2DFuncs
	ldr	r0, =_FILE_6e
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r3, [r5]
	add	r5, sp, #0x24
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r1, r5
	bl	GetBattleActorPos3
	ldr	r4, =gBuffer
	mov	r3, #0xf
	mov	r0, #0x7f
	mov	r7, #0
	mov	r9, r3
	mov	r8, r4
	mov	r10, r0
.Le0d14:
	bl	Random
	ldr	r6, =0x7fff
	mov	r1, #0x80
	lsl	r1, #7
	and	r6, r0
	add	r6, r1
	bl	Random
	ldr	r5, =0x1ff
	and	r5, r0
	bl	Random
	ldr	r3, [sp, #0x24]
	lsr	r2, r3, #31
	add	r3, r2
	mov	r2, r9
	and	r0, r2
	asr	r3, #1
	add	r3, r0
	sub	r3, #8
	mov	r4, r8
	lsl	r3, #16
	str	r3, [r4]
	ldr	r3, [sp, #0x28]
	add	r3, #8
	lsl	r3, #16
	str	r3, [r4, #4]
	mov	r0, r6
	bl	sin
	add	r5, #0x80
	mov	r3, r5
	mul	r3, r0
	mov	r0, r8
	asr	r3, #9
	str	r3, [r0, #0xc]
	mov	r0, r6
	bl	cos
	mov	r3, r5
	mul	r3, r0
	mov	r1, r8
	asr	r3, #6
	str	r3, [r1, #0x10]
	bl	Random
	mov	r2, r10
	mov	r3, r8
	and	r0, r2
	str	r0, [r3, #8]
	bl	Random
	mov	r4, r10
	and	r0, r4
	mov	r1, r8
	str	r0, [r1, #0x14]
	bl	Random
	mov	r2, r9
	and	r0, r2
	mov	r3, r8
	add	r0, #0x20
	mov	r4, #0x1c
	add	r7, #1
	str	r0, [r3, #0x18]
	add	r8, r4
	cmp	r7, #0x40
	bne	.Le0d14
	ldr	r1, =0x7828
	add	r1, r11
	mov	r0, #0
	str	r1, [sp, #8]
	mov	r10, r0
.Le0da8:
	mov	r2, r10
	cmp	r2, #0x2f
	ble	.Le0dbc
	ldr	r2, .Le0de4	@ 0x40
	mov	r4, r10
	ldr	r1, .Le0de8	@ 0x1000
	ldr	r3, =REG_BLDALPHA
	sub	r2, r4
	orr	r2, r1
	strh	r2, [r3]
.Le0dbc:
	mov	r0, r10
	cmp	r0, #1
	bne	.Le0e1c
	mov	r1, #0x80
	lsl	r1, #3
	ldr	r0, =_FILE_b8
	add	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	ldr	r1, =0x65c0
	ldr	r0, =_FILE_92
	add	r1, r11
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	b	.Le0e1c

	.align	2, 0
.Le0de4:
	.word	0x40
.Le0de8:
	.word	0x1000
	.pool

.Le0e1c:
	ldr	r1, [sp, #8]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x1c]
	cmp	r3, #1
	bne	.Le0e9e
	mov	r2, r10
	lsl	r5, r2, #11
	mov	r0, r5
	bl	sin
	ldr	r3, [sp, #0x20]
	neg	r0, r0
	lsr	r2, r3, #31
	add	r3, r2
	lsl	r0, #2
	asr	r3, #1
	asr	r0, #16
	add	r0, r3
	sub	r0, #0xa
	mov	r9, r0
	mov	r0, r5
	bl	cos
	ldr	r3, [sp, #0x1c]
	lsl	r0, #1
	asr	r0, #16
	add	r0, r3
	mov	r5, r0
	mov	r3, r10
	sub	r5, #0x16
	cmp	r3, #0x45
	ble	.Le0e64
	lsl	r3, #1
	sub	r3, r5, r3
	mov	r5, r3
	add	r5, #0x8a
.Le0e64:
	mov	r4, #0x14
	ldr	r6, =0x65c0
	mov	r7, #0x28
	ldr	r0, [sp, #0xc]
	str	r4, [sp]
	str	r7, [sp, #4]
	add	r6, r11
	mov	r1, r6
	mov	r8, r4
	mov	r2, r9
	ldr	r4, [r0, #4]
	mov	r3, r5
	ldr	r0, [sp, #0x10]
	bl	_call_via_r4
	mov	r1, r10
	cmp	r1, #3
	bgt	.Le0e9e
	mov	r2, r8
	str	r2, [sp]
	ldr	r3, [sp, #0xc]
	str	r7, [sp, #4]
	ldr	r0, [sp, #0x10]
	ldr	r4, [r3, #4]
	mov	r1, r6
	mov	r2, r9
	mov	r3, r5
	bl	_call_via_r4
.Le0e9e:
	ldr	r4, =gBuffer
	mov	r7, #0
	mov	r8, r4
.Le0ea4:
	mov	r3, r7
	cmp	r7, #0
	bge	.Le0eac
	add	r3, r7, #3
.Le0eac:
	asr	r3, #2
	add	r3, #4
	cmp	r10, r3
	blt	.Le0f10
	mov	r0, r8
	ldr	r4, [r0, #8]
	cmp	r4, #0
	bge	.Le0ebe
	add	r4, #0x7f
.Le0ebe:
	mov	r3, #3
	asr	r4, #7
	and	r4, r3
	ldr	r2, =.Leec68
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	mov	r2, #0x80
	lsl	r2, #3
	mov	r0, r8
	add	r1, r11
	add	r1, r2
	mov	r3, #2
	ldrsh	r2, [r0, r3]
	ldr	r3, =.Leec5f
	ldrb	r6, [r3, r4]
	lsr	r3, r6, #1
	sub	r2, r3
	mov	r3, #6
	ldrsh	r0, [r0, r3]
	mov	r12, r0
	ldr	r0, =.Leec63
	ldrb	r4, [r0, r4]
	mov	r3, r12
	lsr	r0, r4, #1
	mov	r5, #1
	sub	r3, r0
	str	r6, [sp]
	ldr	r0, [sp, #0xc]
	str	r4, [sp, #4]
	and	r5, r7
	lsl	r5, #2
	ldr	r4, [r5, r0]
	ldr	r0, [sp, #0x10]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r8
	mov	r1, #0x3f
	lsl	r2, #5
	bl	Func_80e38b8
.Le0f10:
	mov	r1, #0x1c
	add	r7, #1
	add	r8, r1
	cmp	r7, #0x40
	bne	.Le0ea4
	mov	r2, r10
	cmp	r2, #8
	bne	.Le0f50
	ldr	r3, =0x77a8
	add	r3, r11
	str	r2, [r3]
	mov	r0, #0x86
	bl	_Func_80bd7dc
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #0x10
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	SetBattleActorState
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	mov	r1, #3
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	bl	_SetBattleActorKnockback
.Le0f50:
	mov	r0, r10
	lsl	r5, r0, #2
	cmp	r5, #0x20
	ble	.Le0f5a
	mov	r5, #0x20
.Le0f5a:
	ldr	r1, [sp, #8]
	ldr	r3, [r1]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le0f9a
	mov	r2, #0x78
	mov	r7, #0
	mov	r6, #0x20
	mov	r8, r2
.Le0f6c:
	mov	r2, r10
	lsl	r1, r7, #5
	cmp	r2, #0
	bge	.Le0f76
	add	r2, #3
.Le0f76:
	mov	r3, #0x1f
	asr	r2, #2
	and	r2, r3
	ldr	r3, [sp, #0x14]
	mov	r4, r8
	sub	r2, r1, r2
	mov	r12, r3
	str	r6, [sp]
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x10]
	mov	r1, r11
	sub	r3, r4, r5
	add	r7, #1
	bl	_call_via_r12
	cmp	r7, #5
	bne	.Le0f6c
	b	.Le0fd0
.Le0f9a:
	mov	r0, #0x78
	mov	r7, #0
	mov	r6, #0x20
	mov	r8, r0
.Le0fa2:
	mov	r2, r10
	lsl	r1, r7, #5
	cmp	r2, #0
	bge	.Le0fac
	add	r2, #3
.Le0fac:
	mov	r3, #0x1f
	asr	r2, #2
	and	r2, r3
	add	r2, r1, r2
	ldr	r1, [sp, #0x14]
	mov	r4, r8
	mov	r12, r1
	sub	r2, #0x20
	str	r6, [sp]
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x10]
	mov	r1, r11
	sub	r3, r4, r5
	add	r7, #1
	bl	_call_via_r12
	cmp	r7, #5
	bne	.Le0fa2
.Le0fd0:
	mov	r1, #8
	mov	r0, #4
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	mov	r0, #1
	str	r3, [r2]
	bl	WaitFrames
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	cmp	r1, #0x40
	beq	.Le0ff6
	b	.Le0da8
.Le0ff6:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Hail

	.section .rodata
.Leec5f:
	.incrom 0xeec5f, 0xeec63
.Leec63:
	.incrom 0xeec63, 0xeec68
.Leec68:
	.incrom 0xeec68, 0xeec70
