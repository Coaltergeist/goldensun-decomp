	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Bolt  @ 0x080ddde0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_3001eec
	mov	r3, r5
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x40
	str	r3, [sp, #0x30]
	ldr	r3, =0x7828
	mov	r11, r1
	ldr	r2, [r5, #8]
	add	r3, r11
	str	r2, [sp, #0x1c]
	str	r0, [r3]
	mov	r0, #1
	bl	AnimStart
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	ldr	r5, [r5, #0x1c]
	ldr	r0, =_FILE_ce
	mov	r1, r11
	mov	r2, #1
	mov	r3, #0
	str	r5, [sp, #0x20]
	bl	LoadVFXFile
	ldr	r1, =0xc56
	ldr	r0, =_FILE_c4
	add	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r2, #0
	ldr	r1, [sp, #0x1c]
	mov	r3, #0
	ldr	r0, =_FILE_73
	bl	LoadVFXFile
	mov	r3, #0
	mov	r10, r3
	mov	r2, #0x80
	ldr	r3, =ewram_2010018
	mov	r1, #0
	lsl	r2, #3
.Ldde52:
	mov	r4, #1
	add	r10, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r10, r2
	bne	.Ldde52
	ldr	r3, =0x7098
	mov	r0, #0
	mov	r2, #1
	mov	r10, r0
	neg	r2, r2
	add	r3, r11
.Ldde6a:
	mov	r1, #1
	add	r10, r1
	mov	r4, r10
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r4, #0x40
	bne	.Ldde6a
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
	mov	r0, #0x8a
	bl	_PlaySound
	mov	r0, #0
	ldr	r3, =0x7828
	str	r0, [sp, #0x28]
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r1, #0x28
	lsl	r3, #3
	neg	r1, r1
	cmp	r3, r1
	bne	.Lddeb2
	b	.Lde2a0
.Lddeb2:
	ldr	r2, =0x7828
	add	r2, r11
	str	r2, [sp, #0x14]
.Lddeb8:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x18
	bne	.Lddec4
	mov	r0, #0x85
	bl	_Func_80bd7dc
.Lddec4:
	mov	r4, #0
	str	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Lddefc
	ldr	r5, =Func_80008d8
.Ldded4:
	ldr	r1, [sp, #0x2c]
	ldr	r2, [sp, #0x28]
	lsl	r3, r1, #3
	cmp	r2, r3
	bne	.Lddeea
	mov	r1, #0x80
	ldr	r0, [sp, #0x30]
	lsl	r1, #7
	ldr	r2, =0x10101010
	bl	_call_via_r5
.Lddeea:
	ldr	r3, [sp, #0x2c]
	add	r3, #1
	str	r3, [sp, #0x2c]
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r0, [sp, #0x2c]
	ldr	r3, [r3, #0x14]
	cmp	r0, r3
	bne	.Ldded4
.Lddefc:
	mov	r1, #0
	str	r1, [sp, #0x2c]
	ldr	r2, =0x7828
	mov	r4, r11
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Lddf0e
	b	.Lde1f0
.Lddf0e:
	mov	r0, sp
	add	r0, #0x34
	mov	r1, #0x24
	mov	r3, #0
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x10]
	str	r3, [sp, #0xc]
.Lddf1c:
	mov	r0, r11
	add	r5, r0, r2
	ldr	r3, [r5]
	ldr	r1, [sp, #0x10]
	ldr	r4, [sp, #0x2c]
	ldrsh	r0, [r3, r1]
	lsl	r4, #3
	ldr	r1, [sp, #0x18]
	mov	r8, r4
	bl	GetBattleActorPos3
	ldr	r4, [sp, #0x18]
	ldr	r3, [r4]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r4]
	ldr	r0, [sp, #0x28]
	mov	r3, r8
	add	r3, #1
	cmp	r0, r3
	bne	.Lddf50
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r11
	str	r3, [r2]
.Lddf50:
	mov	r3, r8
	ldr	r1, [sp, #0x28]
	add	r3, #4
	cmp	r1, r3
	bne	.Lddf7a
	ldr	r3, [r5]
	ldr	r2, [sp, #0x10]
	ldrsh	r0, [r3, r2]
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	ldr	r3, [sp, #0x2c]
	bl	SetBattleActorState
	ldr	r3, [r5]
	ldr	r1, [sp, #0x10]
	ldrsh	r0, [r3, r1]
	mov	r1, #6
	bl	_SetBattleActorKnockback
.Lddf7a:
	mov	r3, #2
	ldr	r4, [sp, #0x28]
	add	r3, r8
	mov	r9, r3
	cmp	r4, r8
	bge	.Lddf88
	b	.Lde0da
.Lddf88:
	mov	r3, r8
	add	r3, #0x10
	cmp	r4, r3
	blt	.Lddf92
	b	.Lde0d4
.Lddf92:
	mov	r0, r8
	sub	r3, r4, r0
	lsl	r6, r3, #6
	cmp	r6, #0x68
	ble	.Lddf9e
	mov	r6, #0x68
.Lddf9e:
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	ldr	r7, =.Leebd6
	lsl	r3, #2
	add	r3, #3
	mov	r2, r7
	ldrb	r3, [r2, r3]
	mov	r1, #0
	mov	r10, r1
	cmp	r3, #0
	beq	.Lde004
	ldr	r3, [sp, #0x2c]
	ldr	r4, [sp, #0x28]
	mov	r9, r7
	add	r5, r3, r4
.Lddfbc:
	mov	r0, r10
	add	r3, r5, r0
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r2, #3
	and	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r1, r2, #4
	sub	r1, r2
	lsl	r1, #6
	ldr	r2, =0xc56
	add	r1, r11
	add	r1, r2
	ldr	r2, [sp, #0x34]
	mov	r3, #0x18
	sub	r2, #0xc
	str	r3, [sp]
	str	r6, [sp, #4]
	mov	r3, #0
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x20]
	bl	_call_via_r4
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	lsl	r3, #2
	add	r3, #3
	mov	r2, r9
	mov	r0, #1
	ldrb	r3, [r2, r3]
	add	r10, r0
	cmp	r10, r3
	bne	.Lddfbc
.Lde004:
	mov	r3, #2
	add	r3, r8
	ldr	r4, [sp, #0x28]
	mov	r9, r3
	cmp	r4, r9
	bne	.Lde0da
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	lsl	r3, #2
	ldrb	r3, [r7, r3]
	mov	r0, #0
	mov	r10, r0
	cmp	r3, #0
	beq	.Lde0da
	ldr	r2, [sp, #0xc]
	ldr	r3, =gBuffer
	add	r7, r2, r3
.Lde028:
	bl	Random
	ldr	r6, =0x1ff
	and	r6, r0
	bl	Random
	ldr	r3, [sp, #0x34]
	ldr	r5, =0x7fff
	ldr	r4, =0xffffc000
	lsl	r3, #16
	str	r3, [r7]
	and	r5, r0
	mov	r3, #0xd0
	add	r5, r4
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r0, r5
	bl	sin
	add	r6, #0x40
	mov	r3, r6
	mul	r3, r0
	asr	r3, #5
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	cos
	mov	r3, r6
	mul	r3, r0
	neg	r3, r3
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Random
	mov	r3, #7
	and	r3, r0
	add	r3, #0x20
	str	r3, [r7, #0x18]
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Leebd6
	lsl	r3, #2
	mov	r0, #1
	ldrb	r3, [r2, r3]
	add	r10, r0
	add	r7, #0x1c
	cmp	r10, r3
	bne	.Lde028
	b	.Lde0da

	.pool_aligned

.Lde0d4:
	mov	r3, #2
	add	r3, r8
	mov	r9, r3
.Lde0da:
	ldr	r4, [sp, #0x28]
	cmp	r4, r9
	blt	.Lde1ca
	mov	r3, r8
	add	r3, #0x18
	cmp	r4, r3
	bge	.Lde1ca
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Leebd6
	lsl	r3, #2
	add	r3, #1
	ldrb	r3, [r2, r3]
	mov	r0, #0
	mov	r10, r0
	cmp	r3, #0
	beq	.Lde1ca
	ldr	r7, =0x7828
	mov	r3, #3
	mov	r9, r3
	add	r7, r11
.Lde106:
	mov	r4, r10
	mov	r0, r9
	and	r4, r0
	str	r4, [sp, #8]
	bl	Random
	ldr	r3, [r7]
	ldr	r3, [r3, #0x18]
	ldr	r1, =.Leebd6
	lsl	r3, #2
	add	r3, #2
	ldrb	r5, [r1, r3]
	mov	r1, r5
	bl	__umodsi3
	ldr	r2, [sp, #0x18]
	ldr	r2, [r2, #4]
	mov	r8, r2
	mov	r3, r8
	ldr	r4, [sp, #8]
	sub	r3, r0
	sub	r5, r0
	ldr	r0, =Data_eded0
	mov	r8, r3
	ldrb	r3, [r0, r4]
	mov	r1, r8
	lsr	r3, #1
	sub	r1, r3
	mov	r2, #8
	mov	r8, r1
	add	r8, r2
	bl	Random
	add	r5, #1
	ldr	r3, [sp, #0x18]
	mov	r1, r5
	ldr	r6, [r3]
	bl	__umodsi3
	ldr	r4, [sp, #8]
	add	r6, r0
	ldr	r0, =Data_edeca
	lsr	r3, r5, #31
	add	r5, r3
	ldrb	r3, [r0, r4]
	asr	r5, #1
	lsr	r3, #1
	sub	r6, r5
	sub	r6, r3
	bl	Random
	ldr	r3, =.Leebe2
	mov	r1, r9
	and	r0, r1
	ldrb	r2, [r3, r0]
	mov	r3, r9
	orr	r3, r2
	ldr	r2, [r7]
	ldr	r1, =.Leebe6
	ldr	r2, [r2, #0x18]
	ldrb	r2, [r1, r2]
	mov	r0, #0x2f
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #7
	bl	BuildDraw2DFuncEx
	ldr	r4, [sp, #8]
	ldr	r2, =Data_edebe
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldr	r2, =Data_edeca
	ldrb	r3, [r2, r4]
	ldr	r0, =Data_eded0
	str	r3, [sp]
	ldrb	r3, [r0, r4]
	ldr	r2, =iwram_3001f0c
	str	r3, [sp, #4]
	add	r1, r11
	ldr	r4, [r2]
	mov	r3, r8
	ldr	r0, [sp, #0x30]
	mov	r2, r6
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	gfree
	mov	r3, #1
	add	r10, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #0x18]
	ldr	r4, =.Leebd6
	lsl	r3, #2
	add	r3, #1
	ldrb	r3, [r4, r3]
	cmp	r10, r3
	bne	.Lde106
.Lde1ca:
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0xc]
	ldr	r3, [sp, #0x2c]
	mov	r2, #0xe0
	lsl	r2, #4
	add	r0, #2
	add	r1, r2
	add	r3, #1
	str	r0, [sp, #0x10]
	str	r3, [sp, #0x2c]
	str	r1, [sp, #0xc]
	ldr	r2, =0x7828
	mov	r4, r11
	ldr	r3, [r4, r2]
	ldr	r0, [sp, #0x2c]
	ldr	r3, [r3, #0x14]
	cmp	r0, r3
	beq	.Lde1f0
	b	.Lddf1c
.Lde1f0:
	mov	r1, #0
	ldr	r6, =gBuffer
	mov	r10, r1
.Lde1f6:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	ble	.Lde262
	sub	r3, #1
	mov	r2, #0x80
	str	r3, [r6, #0x18]
	lsl	r2, #5
	mov	r0, r6
	mov	r1, #0x3c
	bl	Func_80e3908
	mov	r2, #0xd0
	ldr	r3, [r6, #4]
	lsl	r2, #15
	cmp	r3, r2
	ble	.Lde224
	ldr	r3, [r6, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6, #0x10]
	b	.Lde262
.Lde224:
	ldr	r2, [r6]
	ldr	r4, =0x7effff
	cmp	r2, r4
	bhi	.Lde262
	cmp	r3, #0
	blt	.Lde262
	ldr	r4, [r6, #0x18]
	cmp	r4, #0
	bge	.Lde238
	add	r4, #0xf
.Lde238:
	asr	r4, #4
	add	r4, #1
	lsl	r5, r4, #1
	ldr	r0, =Data_ede48
	sub	r1, r5, #2
	ldrh	r1, [r0, r1]
	ldr	r0, [sp, #0x1c]
	add	r1, r0, r1
	lsr	r0, r4, #31
	add	r0, r4, r0
	asr	r0, #1
	asr	r2, #16
	asr	r3, #16
	sub	r2, r0
	sub	r3, r4
	str	r4, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x20]
	bl	_call_via_r4
.Lde262:
	mov	r0, #1
	mov	r1, #0x80
	add	r10, r0
	lsl	r1, #3
	add	r6, #0x1c
	cmp	r10, r1
	bne	.Lde1f6
	mov	r0, #2
	mov	r1, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, [sp, #0x28]
	add	r2, #1
	str	r2, [sp, #0x28]
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x28
	cmp	r2, r3
	beq	.Lde2a0
	b	.Lddeb8
.Lde2a0:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
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
.func_end Anim_Bolt

	.section .rodata
.Leebd6:
	.incrom 0xeebd6, 0xeebe2
.Leebe2:
	.incrom 0xeebe2, 0xeebe6
.Leebe6:
	.incrom 0xeebe6, 0xeebe9
