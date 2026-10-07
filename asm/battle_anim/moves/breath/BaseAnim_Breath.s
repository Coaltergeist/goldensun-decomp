	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BaseAnim_Breath  @ 0x080dbc30
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_3001ef0
	mov	r11, r1
	ldr	r1, [r6]
	sub	sp, #0xa8
	str	r1, [sp, #0x24]
	sub	r3, r6, #4
	ldr	r3, [r3]
	ldr	r5, =0x7828
	mov	r9, r3
	add	r5, r9
	str	r0, [r5]
	mov	r0, #0
	ldr	r7, [r6, #4]
	bl	AnimStart
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ldbc6c	@ 0x1010
	strh	r3, [r2]
	mov	r2, r11
	cmp	r2, #7
	bne	.Ldbcaa
	b	.Ldbc7c

	.align	2, 0
.Ldbc6c:
	.word	0x1010
	.pool

.Ldbc7c:
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r6, #0x18]
	mov	r0, #0x2f
	str	r3, [sp, #0x28]
	mov	r1, #7
	mov	r3, #7
	mov	r2, #7
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r6, #0x1c]
	mov	r0, sp
	add	r0, #0x28
	str	r0, [sp, #0x14]
	str	r3, [r0, #4]
	b	.Ldbcb8
.Ldbcaa:
	ldr	r3, [r5]
	mov	r1, sp
	ldr	r0, [r3, #4]
	add	r1, #0x28
	str	r1, [sp, #0x14]
	bl	BuildDraw2DFuncs
.Ldbcb8:
	mov	r2, #1
	ldr	r0, =_FILE_ce
	mov	r1, r9
	mov	r3, #0
	bl	LoadVFXFile
	mov	r2, r11
	cmp	r2, #5
	bne	.Ldbcd0
	ldr	r1, =0xc56
	ldr	r0, =_FILE_5a
	b	.Ldbcda
.Ldbcd0:
	mov	r3, r11
	cmp	r3, #7
	bne	.Ldbce6
	ldr	r1, =0xc56
	ldr	r0, =_FILE_54
.Ldbcda:
	add	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	b	.Ldbda0
.Ldbce6:
	ldr	r1, =0xc56
	ldr	r0, =_FILE_7d
	add	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	ldr	r0, =_FILE_73
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	mov	r0, r11
	cmp	r0, #6
	bne	.Ldbd30
	mov	r0, #0xa0
	mov	r6, #0
	lsl	r0, #19
.Ldbd0c:
	mov	r3, r6
	cmp	r6, #0
	bge	.Ldbd14
	add	r3, r6, #3
.Ldbd14:
	asr	r3, #2
	lsl	r2, r3, #10
	lsl	r1, r3, #5
	orr	r2, r1
	orr	r2, r3
	add	r6, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r6, #0x40
	bne	.Ldbd0c
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Ldbd5c	@ 0
	strh	r3, [r2]
	b	.Ldbda0
.Ldbd30:
	mov	r1, r11
	cmp	r1, #4
	bhi	.Ldbd8c
	ldr	r2, =.Ldbd40
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Ldbd40:
	.word	.Ldbd54
	.word	.Ldbd58
	.word	.Ldbd84
	.word	.Ldbd88
	.word	.Ldbd8c
.Ldbd54:
	ldr	r0, =_FILE_7d
	b	.Ldbd8e
.Ldbd58:
	ldr	r0, =_FILE_b9
	b	.Ldbd8e

	.align	2, 0
.Ldbd5c:
	.word	0
	.pool

.Ldbd84:
	ldr	r0, =_FILE_6e
	b	.Ldbd8e
.Ldbd88:
	ldr	r0, =_FILE_a1
	b	.Ldbd8e
.Ldbd8c:
	ldr	r0, =_FILE_8d
.Ldbd8e:
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Ldbda0:
	mov	r2, r11
	cmp	r2, #7
	bne	.Ldbdb6
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	b	.Ldbdc4
.Ldbdb6:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
.Ldbdc4:
	add	r2, r9
	str	r3, [r2]
	mov	r1, #0x90
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	ldr	r3, =0x7098
	mov	r2, #1
	mov	r6, #0
	neg	r2, r2
	add	r3, r9
.Ldbddc:
	add	r6, #1
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r6, #0x40
	bne	.Ldbddc
	ldr	r5, =0x7828
	add	r5, r9
	ldr	r3, [r5]
	add	r7, sp, #0x9c
	ldr	r0, [r3, #8]
	mov	r1, r7
	bl	GetBattleActorPos
	mov	r3, r11
	cmp	r3, #3
	bne	.Ldbe02
	ldr	r3, [r7, #4]
	sub	r3, #0x10
	str	r3, [r7, #4]
.Ldbe02:
	mov	r0, r11
	cmp	r0, #4
	bne	.Ldbe1c
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldbe16
	ldr	r3, [r7]
	add	r3, #0x1c
	b	.Ldbe1a
.Ldbe16:
	ldr	r3, [r7]
	sub	r3, #0x1c
.Ldbe1a:
	str	r3, [r7]
.Ldbe1c:
	mov	r1, r11
	cmp	r1, #7
	bne	.Ldbe5a
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldbe54
	ldr	r3, [r7]
	add	r3, #0x10
	b	.Ldbe58

	.pool_aligned

.Ldbe54:
	ldr	r3, [r7]
	sub	r3, #0x10
.Ldbe58:
	str	r3, [r7]
.Ldbe5a:
	mov	r2, r11
	cmp	r2, #5
	bne	.Ldbe70
	ldr	r0, [r7]
	mov	r1, #3
	bl	__divsi3
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldbe84	@ 0x55
	str	r0, [r7]
	strh	r3, [r2]
.Ldbe70:
	ldr	r2, =0x7828
	add	r2, r9
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Ldbeb0
	add	r5, sp, #0x3c
	mov	r4, #0x24
	b	.Ldbe90

	.align	2, 0
.Ldbe84:
	.word	0x55
	.pool

.Ldbe90:
	ldr	r3, [r2]
	ldrsh	r0, [r3, r4]
	mov	r1, r5
	str	r2, [sp, #0xc]
	str	r4, [sp, #8]
	bl	GetBattleActorPos2
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2]
	ldr	r4, [sp, #8]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r5, #0xc
	add	r4, #2
	cmp	r6, r3
	bne	.Ldbe90
.Ldbeb0:
	ldr	r3, =0x7828
	mov	r0, #0xe1
	lsl	r0, #7
	mov	r2, #0
	add	r3, r9
	add	r0, r9
	str	r2, [sp, #0x20]
	str	r3, [sp, #0x1c]
	str	r7, [sp, #0x18]
	str	r0, [sp, #0x10]
.Ldbec4:
	ldr	r1, [sp, #0x1c]
	ldr	r3, [r1]
	ldr	r0, [sp, #0x20]
	ldr	r1, [r3, #0x14]
	bl	__modsi3
	ldr	r2, [sp, #0x20]
	mov	r8, r0
	cmp	r2, #4
	bne	.Ldbede
	mov	r0, #0x88
	bl	_PlaySound
.Ldbede:
	mov	r3, r11
	cmp	r3, #6
	beq	.Ldbef2
	ldr	r0, [sp, #0x20]
	cmp	r0, #0x18
	bne	.Ldbefe
	mov	r0, #0x86
	bl	_Func_80bd7dc
	b	.Ldbefe
.Ldbef2:
	ldr	r1, [sp, #0x20]
	cmp	r1, #0x3c
	bne	.Ldbefe
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Ldbefe:
	mov	r2, r11
	cmp	r2, #5
	bne	.Ldbf70
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldbf3a
	ldr	r0, [sp, #0x20]
	mov	r1, #3
	bl	__divsi3
	mov	r1, #3
	bl	__modsi3
	lsl	r1, r0, #3
	add	r1, r0
	ldr	r2, =0xc56
	ldr	r3, [sp, #0x18]
	lsl	r1, #9
	add	r1, r9
	mov	r0, #0x48
	add	r1, r2
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	str	r0, [sp]
	mov	r0, #0x3e
	str	r0, [sp, #4]
	sub	r2, #2
	b	.Ldbf64
.Ldbf3a:
	ldr	r0, [sp, #0x20]
	mov	r1, #3
	bl	__divsi3
	mov	r1, #3
	bl	__modsi3
	lsl	r1, r0, #3
	add	r1, r0
	ldr	r3, [sp, #0x18]
	ldr	r0, =0xc56
	lsl	r1, #9
	add	r1, r9
	ldr	r2, [r3]
	add	r1, r0
	ldr	r3, [r3, #4]
	mov	r0, #0x48
	str	r0, [sp]
	mov	r0, #0x3e
	str	r0, [sp, #4]
	sub	r2, #0x46
.Ldbf64:
	sub	r3, #0x20
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	b	.Ldbfcc
.Ldbf70:
	bl	Random
	mov	r1, r8
	lsl	r5, r1, #1
	add	r5, r8
	add	r6, sp, #0x3c
	lsl	r5, #2
	ldr	r3, [r6, r5]
	mov	r2, #0x1f
	and	r2, r0
	add	r3, r2
	add	r7, sp, #0x30
	sub	r3, #0x10
	str	r3, [r7]
	bl	Random
	add	r5, #4
	ldr	r3, [r6, r5]
	mov	r2, #0x3f
	and	r2, r0
	add	r3, r2
	sub	r3, #0x10
	str	r3, [r7, #4]
	ldr	r2, [sp, #0x20]
	cmp	r2, #0x2f
	bgt	.Ldbfcc
	ldr	r0, [sp, #0x18]
	ldr	r3, [r0]
	ldr	r1, [sp, #0x10]
	lsl	r3, #15
	str	r3, [r1]
	ldr	r3, [r0, #4]
	lsl	r3, #16
	str	r3, [r1, #4]
	ldr	r3, [r7]
	ldr	r2, [r0]
	sub	r3, r2
	lsl	r3, #11
	str	r3, [r1, #0xc]
	ldr	r3, [r7, #4]
	ldr	r2, [r0, #4]
	sub	r3, r2
	lsl	r3, #11
	str	r3, [r1, #0x10]
	mov	r3, #0
	str	r3, [r1, #0x18]
.Ldbfcc:
	mov	r5, #0xe1
	mov	r2, #0x20
	lsl	r5, #7
	mov	r6, #0
	mov	r8, r2
	mov	r7, #0x40
	add	r5, r9
.Ldbfda:
	ldr	r1, [r5, #0x18]
	cmp	r1, #0
	blt	.Ldc0a0
	mov	r3, r11
	cmp	r3, #7
	bne	.Ldc014
	cmp	r1, #5
	ble	.Ldc080
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0]
	ldr	r1, [r3, #4]
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	mov	r0, r8
	str	r0, [sp]
	str	r7, [sp, #4]
	ldr	r0, [sp, #0x14]
	lsl	r1, #2
	ldr	r4, [r1, r0]
	ldr	r1, =0xc56
	sub	r2, #0x10
	sub	r3, #0x20
	ldr	r0, [sp, #0x24]
	add	r1, r9
	bl	_call_via_r4
	b	.Ldc080
.Ldc014:
	mov	r2, r11
	cmp	r2, #4
	bne	.Ldc04c
	cmp	r1, #5
	ble	.Ldc080
	mov	r3, r1
	cmp	r1, #0
	bge	.Ldc026
	add	r3, r1, #3
.Ldc026:
	asr	r1, r3, #2
	lsl	r1, #11
	ldr	r3, =0xc56
	add	r1, r9
	mov	r0, #2
	ldrsh	r2, [r5, r0]
	add	r1, r3
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	mov	r0, r8
	str	r0, [sp]
	sub	r2, #0x10
	sub	r3, #0x20
	str	r7, [sp, #4]
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	b	.Ldc080
.Ldc04c:
	mov	r2, r11
	cmp	r2, #5
	beq	.Ldc080
	cmp	r1, #1
	ble	.Ldc080
	cmp	r1, #0
	bge	.Ldc05c
	add	r1, #3
.Ldc05c:
	asr	r1, #2
	ldr	r3, =0xc56
	lsl	r1, #11
	add	r1, r9
	mov	r0, #2
	ldrsh	r2, [r5, r0]
	add	r1, r3
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	mov	r0, r8
	str	r0, [sp]
	sub	r2, #0x10
	sub	r3, #0x20
	str	r7, [sp, #4]
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
.Ldc080:
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #0x10]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	cmp	r3, #0x18
	bne	.Ldc0a0
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
.Ldc0a0:
	add	r6, #1
	add	r5, #0x1c
	cmp	r6, #0x40
	bne	.Ldbfda
	mov	r1, r11
	cmp	r1, #5
	bne	.Ldc106
	ldr	r2, [sp, #0x1c]
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Ldc17e
	ldr	r0, [sp, #0x20]
	ldr	r1, =0x77a8
	mov	r3, #7
	ldr	r5, =0x7828
	and	r0, r3
	add	r1, r9
	mov	r8, r0
	add	r5, r9
	mov	r4, #0x24
	mov	r7, #2
	mov	r10, r1
.Ldc0d0:
	ldr	r2, [sp, #0x20]
	cmp	r2, r7
	blt	.Ldc0f6
	cmp	r8, r6
	bne	.Ldc0f6
	mov	r3, #8
	mov	r0, r10
	str	r3, [r0]
	ldr	r3, [r5]
	ldrsh	r0, [r3, r4]
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r6
	str	r4, [sp, #8]
	bl	SetBattleActorState
	ldr	r4, [sp, #8]
.Ldc0f6:
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r4, #2
	add	r7, #4
	cmp	r6, r3
	bne	.Ldc0d0
	b	.Ldc17e
.Ldc106:
	ldr	r1, =0x7828
	mov	r2, r9
	ldr	r3, [r2, r1]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Ldc17e
	ldr	r3, [sp, #0x20]
	mov	r7, #7
	mov	r5, #0x24
	and	r7, r3
.Ldc11c:
	lsl	r3, r6, #2
	ldr	r0, [sp, #0x20]
	add	r3, #0x10
	cmp	r0, r3
	blt	.Ldc16e
	cmp	r7, r6
	bne	.Ldc16e
	ldr	r2, =0x77a8
	mov	r3, #8
	add	r2, r9
	str	r3, [r2]
	mov	r2, r11
	cmp	r2, #6
	bne	.Ldc14e
	mov	r0, r9
	ldr	r3, [r0, r1]
	ldrsh	r0, [r3, r5]
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #0xe
	mov	r2, #5
	mov	r3, r6
	bl	SetBattleActorState
	b	.Ldc162
.Ldc14e:
	ldr	r2, [sp, #0x1c]
	ldr	r3, [r2]
	ldrsh	r0, [r3, r5]
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r6
	bl	SetBattleActorState
.Ldc162:
	ldr	r2, [sp, #0x1c]
	ldr	r3, [r2]
	ldrsh	r0, [r3, r5]
	mov	r1, #4
	bl	_SetBattleActorKnockback
.Ldc16e:
	ldr	r1, =0x7828
	mov	r2, r9
	ldr	r3, [r2, r1]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r5, #2
	cmp	r6, r3
	bne	.Ldc11c
.Ldc17e:
	mov	r0, #4
	mov	r1, #4
	bl	UpdateScreenShake
	mov	r3, r11
	cmp	r3, #6
	beq	.Ldc190
	bl	Func_80cd52c
.Ldc190:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	mov	r0, #1
	str	r3, [r2]
	bl	WaitFrames
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0x20]
	add	r0, #0x1c
	add	r1, #1
	str	r0, [sp, #0x10]
	str	r1, [sp, #0x20]
	cmp	r1, #0x40
	beq	.Ldc1b0
	b	.Ldbec4
.Ldc1b0:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0xa8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end BaseAnim_Breath
