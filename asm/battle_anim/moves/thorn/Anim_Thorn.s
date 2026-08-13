	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Thorn  @ 0x080dd9c0
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
	ldr	r6, =0x7828
	mov	r9, r1
	ldr	r3, [r3]
	sub	sp, #0x34
	add	r6, r9
	str	r3, [sp, #0x30]
	str	r0, [r6]
	mov	r0, #1
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldda18	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ldda1c	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	ldr	r3, .Ldda20	@ 0x1010
	add	r2, #2
	strh	r3, [r2]
	ldr	r0, =_FILE_7e
	mov	r3, #1
	mov	r1, r9
	mov	r2, #1
	bl	LoadVFXFile
	ldr	r3, [r6]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldda3c
	ldr	r2, =REG_BG2X
	ldr	r3, =0xffff9000
	str	r3, [r2]
	b	.Ldda3c

	.align	2, 0
.Ldda18:
	.word	0x100
.Ldda1c:
	.word	0
.Ldda20:
	.word	0x1010
	.pool

.Ldda3c:
	mov	r5, #1
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r2, [r7, #0x1c]
	mov	r1, #7
	str	r2, [sp, #0x24]
	mov	r3, #7
	mov	r2, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r9
	str	r5, [r3]
	add	r2, r9
	mov	r3, #0
	ldr	r7, [r7, #0x20]
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	str	r7, [sp, #0x28]
	bl	StartTask
	ldr	r3, [r6]
	ldr	r2, =.Leebb6
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	lsl	r3, #3
	add	r3, #0x38
	str	r3, [sp, #0x20]
	mov	r3, #0
	mov	r11, r3
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_2010018
	neg	r1, r1
	lsl	r2, #3
.Ldda98:
	mov	r4, #1
	add	r11, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r11, r2
	bne	.Ldda98
	ldr	r0, [sp, #0x20]
	mov	r6, #0
	str	r6, [sp, #0x2c]
	cmp	r0, #0
	bne	.Lddab0
	b	.Lddd90
.Lddab0:
	ldr	r1, [sp, #0x20]
	sub	r0, #0x40
	sub	r1, #0x10
	str	r0, [sp, #0x1c]
	str	r1, [sp, #0x18]
.Lddaba:
	ldr	r2, [sp, #0x2c]
	ldr	r3, [sp, #0x1c]
	cmp	r2, r3
	bne	.Lddac8
	mov	r0, #0x84
	bl	_Func_80bd7dc
.Lddac8:
	ldr	r4, [sp, #0x2c]
	ldr	r6, [sp, #0x18]
	cmp	r4, r6
	blt	.Lddae4
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lddb0c	@ 0x3f44
	strh	r3, [r2]
	ldr	r0, [sp, #0x20]
	ldr	r2, .Lddb10	@ 0x1000
	sub	r3, r0, r4
	ldr	r1, =REG_BLDALPHA
	sub	r3, #1
	orr	r3, r2
	strh	r3, [r1]
.Lddae4:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r2, =.Leebb6
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	mov	r1, #0
	mov	r11, r1
	cmp	r3, #0
	bne	.Lddafa
	b	.Lddcda
.Lddafa:
	ldr	r4, =.Leebae
	ldr	r6, [sp, #0x2c]
	mov	r3, #0xc
	mov	r0, #8
	sub	r6, #8
	str	r3, [sp, #0x14]
	str	r4, [sp, #0x10]
	str	r0, [sp, #0xc]
	b	.Lddb34

	.align	2, 0
.Lddb0c:
	.word	0x3f44
.Lddb10:
	.word	0x1000
	.pool

.Lddb34:
	mov	r8, r6
.Lddb36:
	ldr	r1, [sp, #0x2c]
	ldr	r2, [sp, #0xc]
	cmp	r1, r2
	bgt	.Lddb40
	b	.Lddc6c
.Lddb40:
	ldr	r3, =.Leeba6
	mov	r4, r11
	ldrb	r2, [r3, r4]
	mov	r3, r2
	cmp	r3, #1
	bhi	.Lddba6
	mov	r6, r8
	lsl	r3, r6, #1
	add	r3, r8
	lsl	r0, r6, #4
	lsl	r1, r3, #1
	cmp	r0, #0x50
	ble	.Lddb5c
	mov	r0, #0x50
.Lddb5c:
	cmp	r1, #0x1e
	ble	.Lddb62
	mov	r1, #0x1e
.Lddb62:
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lddb88
	ldr	r3, [sp, #0x10]
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	mov	r4, #0x6c
	sub	r2, r1
	mov	r1, #0x30
	sub	r3, r4, r0
	str	r1, [sp]
	str	r0, [sp, #4]
	mov	r1, r9
	ldr	r0, [sp, #0x30]
	ldr	r6, [sp, #0x28]
	bl	_call_via_r6
	b	.Lddc02
.Lddb88:
	ldr	r3, [sp, #0x10]
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	mov	r4, #0x6c
	add	r2, r1
	mov	r1, #0x30
	sub	r3, r4, r0
	str	r1, [sp]
	str	r0, [sp, #4]
	mov	r1, r9
	ldr	r0, [sp, #0x30]
	ldr	r6, [sp, #0x24]
	bl	_call_via_r6
	b	.Lddc02
.Lddba6:
	mov	r1, r8
	lsl	r0, r1, #3
	cmp	r0, #0x40
	ble	.Lddbb0
	mov	r0, #0x40
.Lddbb0:
	mov	r3, r8
	cmp	r3, #8
	ble	.Lddbb8
	mov	r1, #8
.Lddbb8:
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lddbe2
	ldr	r4, [sp, #0x10]
	mov	r2, #0
	ldrsb	r2, [r4, r2]
	sub	r2, r1
	mov	r1, #0x20
	str	r1, [sp]
	mov	r1, #0xf0
	mov	r6, #0x6c
	lsl	r1, #4
	sub	r3, r6, r0
	str	r0, [sp, #4]
	add	r1, r9
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x28]
	bl	_call_via_r4
	b	.Lddc02
.Lddbe2:
	ldr	r6, [sp, #0x10]
	mov	r2, #0
	ldrsb	r2, [r6, r2]
	add	r2, r1
	mov	r1, #0x6c
	sub	r3, r1, r0
	mov	r1, #0x20
	str	r1, [sp]
	mov	r1, #0xf0
	lsl	r1, #4
	str	r0, [sp, #4]
	add	r1, r9
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x24]
	bl	_call_via_r4
.Lddc02:
	ldr	r3, [sp, #0xc]
	ldr	r6, [sp, #0x2c]
	add	r3, #1
	cmp	r6, r3
	bne	.Lddc14
	ldr	r2, =0x77a8
	mov	r3, #3
	add	r2, r9
	str	r3, [r2]
.Lddc14:
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #0x2c]
	add	r3, #3
	cmp	r0, r3
	bge	.Lddc6c
	bl	Random
	mov	r3, #0x1f
	and	r3, r0
	mov	r1, r3
	ldr	r7, =gBuffer
	add	r1, #0x48
	mov	r6, #0
	b	.Lddc36
.Lddc30:
	mov	r7, r5
	add	r7, #0x1c
	add	r6, #1
.Lddc36:
	cmp	r6, #0x40
	beq	.Lddc6c
	mov	r5, r7
	mov	r2, #1
	ldr	r3, [r5, #0x18]
	neg	r2, r2
	cmp	r3, r2
	bne	.Lddc30
	str	r1, [sp, #8]
	bl	Random
	ldr	r3, [sp, #0x10]
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	mov	r3, #0x1f
	and	r3, r0
	add	r2, r3
	add	r2, #0x20
	str	r2, [r5]
	ldr	r1, [sp, #8]
	cmp	r2, #0x60
	ble	.Lddc66
	mov	r3, #0x60
	str	r3, [r5]
.Lddc66:
	mov	r3, #0
	str	r1, [r7, #4]
	str	r3, [r7, #0x18]
.Lddc6c:
	ldr	r2, =0x7828
	add	r2, r9
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Lddcac
	ldr	r4, [sp, #0x14]
	mov	r5, r2
	mov	r10, r4
	mov	r7, #0x24
.Lddc82:
	ldr	r0, [sp, #0x2c]
	cmp	r0, r10
	bne	.Lddca0
	mov	r0, #0x84
	bl	_PlaySound
	ldr	r3, [r5]
	ldrsh	r0, [r3, r7]
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r6
	bl	SetBattleActorState
.Lddca0:
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r7, #2
	cmp	r6, r3
	bne	.Lddc82
.Lddcac:
	ldr	r3, [sp, #0x10]
	ldr	r2, [sp, #0x14]
	ldr	r6, [sp, #0xc]
	add	r3, #1
	str	r3, [sp, #0x10]
	add	r2, #8
	add	r6, #8
	ldr	r3, =0x7828
	str	r2, [sp, #0x14]
	str	r6, [sp, #0xc]
	add	r3, r9
	ldr	r3, [r3]
	ldr	r1, =.Leebb6
	ldr	r3, [r3, #0x18]
	mov	r4, #8
	mov	r0, #1
	ldrb	r3, [r1, r3]
	neg	r4, r4
	add	r11, r0
	add	r8, r4
	cmp	r11, r3
	beq	.Lddcda
	b	.Lddb36
.Lddcda:
	ldr	r3, =.Leebc0
	mov	r2, #0
	ldr	r7, =gBuffer
	mov	r11, r2
	mov	r10, r3
.Lddce4:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	blt	.Lddd5c
	lsr	r5, r3, #31
	add	r5, r3, r5
	asr	r5, #1
	ldr	r6, =.Leebc8
	ldr	r0, =.Leebb9
	lsl	r4, r5, #1
	mov	r3, r10
	ldrh	r1, [r6, r4]
	ldrsb	r6, [r0, r5]
	ldrb	r0, [r3, r5]
	lsl	r0, #24
	mov	r8, r4
	asr	r4, r0, #24
	lsr	r0, #31
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	add	r0, r4, r0
	asr	r0, #1
	sub	r2, r6
	sub	r3, r0
	str	r6, [sp]
	str	r4, [sp, #4]
	add	r1, r9
	ldr	r4, [sp, #0x24]
	ldr	r0, [sp, #0x30]
	bl	_call_via_r4
	ldr	r6, =.Leebc8
	mov	r0, r8
	mov	r3, r10
	ldrh	r1, [r6, r0]
	ldrb	r0, [r3, r5]
	lsl	r0, #24
	asr	r4, r0, #24
	lsr	r0, #31
	ldr	r3, [r7, #4]
	add	r0, r4, r0
	ldr	r6, =.Leebb9
	asr	r0, #1
	sub	r3, r0
	ldrsb	r0, [r6, r5]
	ldr	r2, [r7]
	add	r1, r9
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x28]
	bl	_call_via_r4
	ldr	r3, [r7, #0x18]
	add	r3, #1
	str	r3, [r7, #0x18]
	cmp	r3, #0xe
	bne	.Lddd5c
	mov	r3, #1
	neg	r3, r3
	str	r3, [r7, #0x18]
.Lddd5c:
	mov	r6, #1
	add	r11, r6
	mov	r0, r11
	add	r7, #0x1c
	cmp	r0, #0x40
	bne	.Lddce4
	mov	r1, #8
	mov	r0, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, [sp, #0x2c]
	ldr	r2, [sp, #0x20]
	add	r1, #1
	str	r1, [sp, #0x2c]
	cmp	r1, r2
	beq	.Lddd90
	b	.Lddaba
.Lddd90:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Thorn

	.section .rodata
.Leeba6:
	.incrom 0xeeba6, 0xeebae
.Leebae:
	.incrom 0xeebae, 0xeebb6
.Leebb6:
	.incrom 0xeebb6, 0xeebb9
.Leebb9:
	.incrom 0xeebb9, 0xeebc0
.Leebc0:
	.incrom 0xeebc0, 0xeebc8
.Leebc8:
	.incrom 0xeebc8, 0xeebd6
