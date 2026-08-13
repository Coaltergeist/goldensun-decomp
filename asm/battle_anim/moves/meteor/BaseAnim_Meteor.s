	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BaseAnim_Meteor  @ 0x080e7404
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x11c
	str	r1, [sp, #0x4c]
	ldr	r3, =iwram_3001ef0
	mov	r2, sp
	ldr	r1, [r3]
	add	r2, #0x94
	str	r2, [sp, #0x3c]
	str	r1, [sp, #0x48]
	sub	r3, #4
	ldr	r3, [r3]
	ldr	r4, =0x7828
	str	r3, [r2]
	add	r3, r4
	str	r0, [r3]
	mov	r0, #0x80
	lsl	r0, #6
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Le7474	@ 0x100
	strh	r3, [r2]
	ldr	r0, [sp, #0x4c]
	cmp	r0, #1
	bne	.Le74b8
	ldr	r1, [sp, #0x3c]
	ldr	r2, =0x7828
	ldr	r3, [r1]
	add	r3, r2
	ldr	r3, [r3]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	mov	r3, #0xa0
	ldr	r2, [r0]
	lsl	r3, #12
	str	r3, [r2, #0x28]
	ldr	r3, =0x91eb
	str	r3, [r2, #0x48]
	ldr	r4, [sp, #0x3c]
	ldr	r0, =0x7828
	ldr	r3, [r4]
	add	r3, r0
	ldr	r3, [r3]
	mov	r5, #1
	ldr	r0, [r3, #8]
	neg	r5, r5
	mov	r3, #0
	b	.Le7488

	.align	2, 0
.Le7474:
	.word	0x100
	.pool

.Le7488:
	str	r3, [sp]
	mov	r1, r5
	mov	r2, #2
	mov	r3, r5
	bl	SetBattleActorState
	mov	r0, #0x91
	bl	_PlaySound
	ldr	r1, [sp, #0x3c]
	ldr	r2, =0x7828
	ldr	r3, [r1]
	add	r3, r2
	ldr	r3, [r3]
	ldr	r4, [sp, #0x4c]
	ldr	r3, [r3, #4]
	str	r4, [sp, #0x40]
	cmp	r3, #1
	beq	.Le74be
	str	r5, [sp, #0x40]
	b	.Le74be

	.pool_aligned

.Le74b8:
	mov	r0, #1
	neg	r0, r0
	str	r0, [sp, #0x40]
.Le74be:
	bl	Func_80c9048
	ldr	r2, =0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r1, [sp, #0x3c]
	mov	r2, #0xef
	ldr	r3, [r1]
	ldr	r5, =Task_BlitAnim
	lsl	r2, #7
	add	r3, r2
	mov	r1, #0x90
	mov	r2, #0
	str	r2, [r3]
	lsl	r1, #3
	mov	r0, r5
	bl	StartTask
	mov	r0, #0
	mov	r1, #0
	bl	AnimTransitionOut
	mov	r0, r5
	bl	StopTask
	ldr	r3, [sp, #0x4c]
	b	.Le7504

	.pool_aligned

.Le7504:
	cmp	r3, #1
	bne	.Le755c
	mov	r4, #0
	ldr	r5, =0x77d8
	ldr	r6, =0x1e3
	mov	r8, r4
.Le7510:
	mov	r0, r6
	bl	_CreateSprite
	ldr	r1, [sp, #0x3c]
	ldr	r3, [r1]
	str	r0, [r3, r5]
	cmp	r0, #0
	beq	.Le753c
	mov	r2, r0
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #2
	bl	_Sprite_SetAnim
	ldr	r2, [sp, #0x3c]
	ldr	r3, [r2]
	ldr	r1, [r3, r5]
	ldrb	r3, [r1, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r1, #9]
.Le753c:
	mov	r4, #1
	ldr	r3, =0x2001
	add	r8, r4
	mov	r0, r8
	add	r5, #4
	add	r6, r3
	cmp	r0, #2
	bne	.Le7510
	b	.Le7566

	.pool_aligned

.Le755c:
	ldr	r1, =0x17d
	mov	r0, #1
	mov	r2, #3
	bl	CreateSummonSprite
.Le7566:
	ldr	r2, [sp, #0x3c]
	mov	r3, #1
	ldr	r1, [r2]
	ldr	r0, =_FILE_c1
	mov	r2, #1
	bl	LoadVFXFile
	ldr	r3, [sp, #0x4c]
	cmp	r3, #1
	bne	.Le758e
	ldr	r0, =_FILE_c4
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Le758e:
	mov	r4, #0x8c
	lsl	r4, #1
	add	r4, sp
	ldr	r3, =0x1010101
	mov	r9, r4
	str	r3, [r4]
	mov	r0, r9
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =gBuffer
	ldr	r2, =0x85002000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xf0
	ldr	r3, =Func_8001af8
	lsl	r2, #7
	ldr	r0, =0x6008000
	bl	_call_via_r3
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Le75dc	@ 0
	strh	r3, [r2]
	ldr	r3, .Le75e0	@ 0x100
	sub	r2, #0x30
	strh	r3, [r2]
	ldr	r3, .Le75e4	@ 0x1f80
	sub	r2, #0x16
	strh	r3, [r2]
	ldr	r3, .Le75e8	@ 0x2787
	add	r2, #2
	ldr	r1, =0x5000100
	mov	r0, #0
	strh	r3, [r2]
	mov	r8, r0
	mov	r7, #0xf
	mov	r10, r1
	b	.Le7618

	.align	2, 0
.Le75dc:
	.word	0
.Le75e0:
	.word	0x100
.Le75e4:
	.word	0x1f80
.Le75e8:
	.word	0x2787
	.pool

.Le7618:
	bl	Random
	mov	r6, r0
	bl	Random
	mov	r5, r0
	bl	Random
	and	r5, r7
	and	r0, r7
	add	r5, #0x10
	add	r0, #0x10
	and	r6, r7
	lsl	r0, #10
	lsl	r5, #5
	add	r6, #0x10
	orr	r0, r5
	mov	r4, #1
	orr	r0, r6
	mov	r2, r10
	add	r8, r4
	strh	r0, [r2]
	mov	r3, #2
	mov	r0, r8
	add	r10, r3
	cmp	r0, #0x3f
	bne	.Le7618
	mov	r1, r9
	mov	r3, #0
	str	r3, [r1]
	mov	r0, r9
	ldr	r3, =REG_DMA3SAD
	ldr	r1, [sp, #0x48]
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0
	mov	r3, #0x7f
	mov	r8, r2
	mov	r10, r3
	mov	r7, #7
.Le766a:
	bl	Random
	mov	r4, r10
	mov	r6, r0
	and	r6, r4
	bl	Random
	mov	r5, r0
	mov	r0, r10
	and	r5, r0
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	mov	r1, r3
	add	r1, #0x40
	mov	r3, r5
	cmp	r5, #0
	bge	.Le7692
	add	r3, r5, #7
.Le7692:
	asr	r3, #3
	mov	r2, r6
	cmp	r6, #0
	bge	.Le769c
	add	r2, r6, #7
.Le769c:
	asr	r2, #3
	lsl	r3, #4
	add	r3, r2
	and	r5, r7
	lsl	r3, #3
	add	r3, r5
	and	r6, r7
	lsl	r3, #3
	ldr	r2, [sp, #0x48]
	add	r3, r6
	strb	r1, [r2, r3]
	mov	r4, #0x80
	mov	r3, #1
	add	r8, r3
	lsl	r4, #1
	cmp	r8, r4
	bne	.Le766a
	mov	r2, #0x80
	ldr	r1, [sp, #0x48]
	ldr	r3, =Func_8001af8
	lsl	r2, #7
	ldr	r0, =0x6004000
	bl	_call_via_r3
	ldr	r2, =gPhysVec
	mov	r3, #0xf0
	str	r3, [r2, #0x10]
	ldr	r0, [sp, #0x3c]
	ldr	r1, =0x7828
	ldr	r3, [r0]
	add	r3, r1
	ldr	r0, [r3]
	bl	Func_80d6750
	ldr	r3, [sp, #0x3c]
	ldr	r4, =0x77d0
	ldr	r2, [r3]
	ldr	r0, =0x77d4
	add	r3, r2, r4
	mov	r1, #0
	str	r1, [r3]
	sub	r4, #0x40
	add	r3, r2, r0
	str	r1, [r3]
	sub	r0, #0x40
	add	r3, r2, r4
	str	r1, [r3]
	add	r1, r2, r0
	mov	r3, #2
	str	r3, [r1]
	ldr	r4, [sp, #0x40]
	ldr	r3, =0x7798
	add	r0, #8
	add	r1, r2, r3
	lsl	r3, r4, #7
	add	r2, r0
	str	r3, [r1]
	mov	r1, r8
	str	r1, [r2]
	ldr	r0, =Func_80c9138
	ldr	r1, =0x4ff
	bl	StartTask
	mov	r1, #0x90
	ldr	r0, =Task_BlitAnim_BG1Wide
	lsl	r1, #3
	bl	StartTask
	add	r2, sp, #0x98
	mov	r10, r2
	mov	r7, #0x3f
	mov	r5, r10
	add	r6, sp, #0x118
.Le772e:
	bl	Random
	and	r0, r7
	strb	r0, [r5]
	add	r5, #1
	cmp	r5, r6
	bne	.Le772e
	mov	r3, #1
	mov	r6, #0
	mov	r8, r3
	mov	r5, #0
.Le7744:
	mov	r4, r8
	lsr	r3, r4, #31
	add	r3, r8
	asr	r3, #1
	mov	r0, #4
	add	r6, r3
	add	r8, r0
	cmp	r5, r6
	beq	.Le77b4
	mov	r1, #0x7f
	mov	r2, #0
	mov	r7, r10
	mov	r4, #7
	mov	r14, r1
	mov	r12, r2
.Le7762:
	mov	r0, #0
.Le7764:
	mov	r1, r14
	mov	r3, r0
	and	r3, r1
	ldrb	r3, [r7, r3]
	sub	r1, r5, r3
	cmp	r1, #0
	blt	.Le77a4
	cmp	r1, #0x7f
	bgt	.Le77a4
	mov	r2, r1
	cmp	r1, #0
	bge	.Le777e
	add	r2, r1, #7
.Le777e:
	asr	r2, #3
	mov	r3, r0
	cmp	r0, #0
	bge	.Le7788
	add	r3, r0, #7
.Le7788:
	asr	r3, #3
	lsl	r2, #5
	add	r2, r3
	and	r1, r4
	lsl	r2, #3
	add	r2, r1
	mov	r3, r0
	and	r3, r4
	lsl	r2, #3
	add	r2, r3
	ldr	r3, =gBuffer
	mov	r1, r12
	add	r2, r3
	strb	r1, [r2]
.Le77a4:
	mov	r2, #0x80
	add	r0, #1
	lsl	r2, #1
	cmp	r0, r2
	bne	.Le7764
	add	r5, #1
	cmp	r5, r6
	bne	.Le7762
.Le77b4:
	ldr	r4, [sp, #0x3c]
	ldr	r0, =0x7824
	ldr	r3, [r4]
	mov	r2, #1
	add	r3, r0
	str	r2, [r3]
	mov	r0, #1
	bl	WaitFrames
	cmp	r6, #0xbf
	ble	.Le7744
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Le7804	@ 0x3f42
	strh	r3, [r2]
	ldr	r3, .Le7808	@ 0x1010
	add	r2, #2
	strh	r3, [r2]
	ldr	r2, =iwram_3001ad0
	ldrh	r1, [r2, #4]
	str	r1, [sp, #0x38]
	ldrh	r3, [r2, #6]
	ldr	r5, =iwram_3001f00
	str	r3, [sp, #0x34]
	ldr	r4, [r5]
	mov	r3, #0
	str	r4, [sp, #0x30]
	strh	r3, [r2, #4]
	mov	r3, #0x20
	strh	r3, [r2, #6]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	ldr	r5, [r5, #8]
	ldr	r0, [sp, #0x3c]
	b	.Le7850

	.align	2, 0
.Le7804:
	.word	0x3f42
.Le7808:
	.word	0x1010
	.pool

.Le7850:
	str	r5, [sp, #0x44]
	mov	r3, #0xef
	ldr	r2, [r0]
	lsl	r3, #7
	add	r1, r2, r3
	ldr	r4, =0x7784
	mov	r3, #3
	str	r3, [r1]
	ldr	r3, =ewram_2020202
	add	r2, r4
	str	r3, [r2]
	ldr	r1, =0x4fe
	ldr	r0, =Func_80e72e0
	bl	StartTask
	ldr	r1, [sp, #0x3c]
	ldr	r4, =0x7098
	ldr	r3, [r1]
	mov	r0, #0
	mov	r2, #1
	mov	r8, r0
	neg	r2, r2
	add	r3, r4
.Le787e:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r1, #0x40
	bne	.Le787e
	ldr	r2, [sp, #0x30]
	mov	r3, #1
	str	r3, [r2, #0x10]
	ldr	r4, [sp, #0x3c]
	ldr	r0, =0x778c
	ldr	r3, [r4]
	mov	r2, #0
	add	r3, r0
	str	r2, [r3]
	mov	r11, r2
	mov	r1, sp
	mov	r2, sp
	add	r1, #0x84
	add	r2, #0x58
	mov	r3, #0
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x2c]
	str	r4, [sp, #0x28]
	str	r3, [sp, #0x10]
.Le78b2:
	ldr	r4, [sp, #0x3c]
	ldr	r1, =0x778c
	ldr	r0, [r4]
	add	r3, r0, r1
	ldr	r2, [r3]
	mov	r3, r2
	cmp	r3, #0
	bge	.Le78c4
	add	r3, #3
.Le78c4:
	asr	r4, r3, #2
	mov	r2, #0xfc
	ldr	r3, [sp, #0x4c]
	lsl	r2, #5
	add	r5, r0, r2
	cmp	r3, #1
	bne	.Le78e6
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Le78fa
	mov	r0, r11
	cmp	r0, #0x10
	ble	.Le78fa
	b	.Le7cba
.Le78e6:
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Le78fa
	mov	r1, r11
	cmp	r1, #4
	ble	.Le78fa
	b	.Le7cba
.Le78fa:
	mov	r2, r11
	cmp	r2, #0
	bne	.Le790a
	mov	r0, #0x8d
	str	r4, [sp, #8]
	bl	_PlaySound
	ldr	r4, [sp, #8]
.Le790a:
	mov	r3, #0
	mov	r8, r3
.Le790e:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	strh	r3, [r5]
	add	r5, #2
	cmp	r1, #0xf
	bne	.Le790e
.Le791c:
	mov	r1, r8
	sub	r1, #0x10
	mov	r3, r1
	cmp	r1, #0
	bge	.Le792a
	mov	r3, r8
	sub	r3, #0xd
.Le792a:
	asr	r3, #2
	add	r2, r3, r4
	mov	r3, r2
	mov	r1, r2
	sub	r3, #0x20
	sub	r1, #0x50
	cmp	r3, #0
	bge	.Le793c
	mov	r3, #0
.Le793c:
	cmp	r3, #0x1f
	ble	.Le7942
	mov	r3, #0x1f
.Le7942:
	cmp	r1, #0
	bge	.Le7948
	mov	r1, #0
.Le7948:
	cmp	r1, #0x1f
	ble	.Le794e
	mov	r1, #0x1f
.Le794e:
	lsl	r2, r1, #5
	lsl	r3, #10
	orr	r3, r2
	asr	r2, r1, #1
	orr	r3, r2
	mov	r2, #1
	add	r8, r2
	strh	r3, [r5]
	mov	r3, r8
	add	r5, #2
	cmp	r3, #0x87
	bne	.Le791c
	ldr	r3, .Le7988	@ 0
.Le7968:
	mov	r4, #1
	add	r8, r4
	mov	r0, r8
	strh	r3, [r5]
	add	r5, #2
	cmp	r0, #0xa0
	bne	.Le7968
	ldr	r1, [sp, #0x40]
	cmp	r1, #1
	bne	.Le79a8
	mov	r3, r11
	cmp	r3, #0
	bge	.Le7984
	add	r3, #3
.Le7984:
	asr	r7, r3, #2
	b	.Le79b6

	.align	2, 0
.Le7988:
	.word	0
	.pool

.Le79a8:
	mov	r2, r11
	cmp	r2, #0
	bge	.Le79b0
	add	r2, #3
.Le79b0:
	asr	r2, #2
	mov	r3, #0x40
	sub	r7, r3, r2
.Le79b6:
	mov	r2, #0x60
	mov	r3, r11
	sub	r3, r2, r3
	ldr	r4, [sp, #0x18]
	mov	r10, r3
	mov	r3, #0
	str	r3, [r4, #0xc]
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r4, #4]
	ldr	r0, [sp, #0x4c]
	cmp	r0, #1
	bne	.Le7a1e
	ldr	r1, [sp, #0x10]
	mov	r2, #0xa0
	ldr	r3, [sp, #0x2c]
	lsl	r2, #8
	add	r6, r1, r2
	str	r6, [sp, #0x58]
	mov	r4, #0xa0
	str	r6, [r3, #4]
	ldr	r0, [sp, #0x18]
	lsl	r4, #15
	lsl	r3, r7, #16
	add	r3, r4
	str	r3, [r0]
	mov	r1, r10
	mov	r3, #0x40
	sub	r3, r1
	lsl	r3, #16
	str	r3, [r0, #8]
	ldr	r2, [sp, #0x28]
	ldr	r4, =0x77d8
	ldr	r3, [r2]
	add	r3, r4
	ldr	r0, [r3]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x2c]
	mov	r3, #0
	bl	_UpdateSprite
	ldr	r0, [sp, #0x28]
	ldr	r1, =0x77dc
	ldr	r3, [r0]
	add	r3, r1
	ldr	r0, [r3]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x2c]
	mov	r3, #0
	bl	_UpdateSprite
	b	.Le7a54
.Le7a1e:
	ldr	r3, [sp, #0x10]
	mov	r4, #0x80
	ldr	r0, [sp, #0x2c]
	lsl	r4, #9
	add	r6, r3, r4
	str	r6, [sp, #0x58]
	mov	r1, #0xc0
	str	r6, [r0, #4]
	lsl	r1, #15
	ldr	r4, [sp, #0x18]
	lsl	r3, r7, #16
	add	r3, r1
	mov	r0, r10
	str	r3, [r4]
	sub	r3, r2, r0
	lsl	r3, #16
	str	r3, [r4, #8]
	ldr	r1, [sp, #0x3c]
	ldr	r2, =0x77d8
	ldr	r3, [r1]
	add	r3, r2
	ldr	r0, [r3]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x2c]
	mov	r3, #0
	bl	_UpdateSprite
.Le7a54:
	mov	r3, #0
	mov	r4, r10
	mov	r8, r3
	mov	r3, #0x20
	sub	r4, r3, r4
	mov	r10, r4
	mov	r2, #0
.Le7a62:
	ldr	r0, [sp, #0x3c]
	ldr	r3, [r0]
	mov	r1, #0xe1
	add	r3, r2
	lsl	r1, #7
	add	r5, r3, r1
	mov	r4, #1
	ldr	r3, [r5, #0x18]
	neg	r4, r4
	cmp	r3, r4
	bne	.Le7ad2
	bl	Random
	ldr	r3, =0x7fff
	and	r3, r0
	mov	r0, #0x80
	lsl	r0, #7
	add	r1, r3, r0
	mov	r3, #0
	str	r3, [r5, #0x18]
	mov	r0, r1
	str	r1, [sp, #0xc]
	bl	sin
	mov	r3, r7
	add	r3, #0x60
	lsl	r2, r3, #16
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #1
	ldr	r1, [sp, #0xc]
	cmp	r3, #0
	bge	.Le7aa8
	ldr	r4, =0xffff
	add	r3, r4
.Le7aa8:
	asr	r3, #16
	mul	r3, r6
	add	r3, r2, r3
	str	r3, [r5]
	mov	r0, r1
	bl	cos
	lsl	r3, r0, #4
	sub	r3, r0
	mov	r1, r10
	lsl	r3, #1
	lsl	r2, r1, #16
	cmp	r3, #0
	bge	.Le7ac8
	ldr	r4, =0xffff
	add	r3, r4
.Le7ac8:
	asr	r3, #16
	mul	r3, r6
	sub	r3, r2, r3
	str	r3, [r5, #4]
	b	.Le7ade
.Le7ad2:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r2, #0x1c
	cmp	r1, #0x20
	bne	.Le7a62
.Le7ade:
	add	r5, sp, #0x60
	mov	r3, #0
	str	r3, [r5]
	str	r3, [r5, #4]
	mov	r3, #0x80
	lsl	r3, #18
	str	r3, [r5, #8]
	bl	InitMatrixStack
	mov	r0, r5
	bl	MatrixTranslatev
	mov	r0, #0x80
	lsl	r0, #4
	bl	MatrixRoll
	ldr	r0, [sp, #0x10]
	bl	MatrixYaw
	mov	r2, #0
	ldr	r7, =.Leee76
	mov	r8, r2
	add	r6, sp, #0x78
	add	r5, sp, #0x6c
.Le7b0e:
	ldrh	r3, [r7]
	lsl	r3, #16
	asr	r2, r3, #16
	lsr	r3, #31
	add	r2, r3
	mov	r4, #2
	ldrsh	r3, [r7, r4]
	add	r3, r11
	lsl	r3, #16
	str	r3, [r6, #4]
	ldrh	r3, [r7, #4]
	asr	r2, #1
	lsl	r2, #16
	lsl	r3, #16
	str	r2, [r6]
	asr	r2, r3, #16
	lsr	r3, #31
	add	r2, r3
	asr	r2, #1
	lsl	r2, #16
	mov	r1, r5
	str	r2, [r6, #8]
	mov	r0, r6
	bl	Func_80e3944
	mov	r0, #2
	ldrsh	r2, [r5, r0]
	mov	r3, r2
	add	r3, #0x80
	str	r3, [r5]
	mov	r1, #6
	ldrsh	r3, [r5, r1]
	mov	r1, r3
	add	r1, #0x3c
	str	r1, [r5, #4]
	ldr	r4, [sp, #0x3c]
	mov	r0, #0xfa
	ldr	r1, [r4]
	lsl	r0, #5
	add	r1, r0
	mov	r0, #8
	str	r0, [sp]
	str	r0, [sp, #4]
	add	r2, #0x7c
	add	r3, #0x38
	ldr	r0, =gBuffer
	ldr	r4, [sp, #0x44]
	bl	_call_via_r4
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r7, #6
	cmp	r1, #7
	bne	.Le7b0e
	ldr	r2, [sp, #0x40]
	cmp	r2, #1
	bne	.Le7b92
	mov	r3, r11
	cmp	r3, #0
	bge	.Le7b8a
	add	r3, #3
.Le7b8a:
	asr	r3, #2
	mov	r7, r3
	sub	r7, #0x10
	b	.Le7ba0
.Le7b92:
	mov	r2, r11
	cmp	r2, #0
	bge	.Le7b9a
	add	r2, #3
.Le7b9a:
	asr	r2, #2
	mov	r3, #0x10
	sub	r7, r3, r2
.Le7ba0:
	mov	r3, #0x60
	neg	r3, r3
	add	r3, r11
	mov	r4, #0
	ldr	r5, =.Leeea0
	mov	r10, r3
	mov	r8, r4
.Le7bae:
	mov	r0, #2
	ldrsh	r3, [r5, r0]
	add	r3, r10
	cmp	r3, #0x5d
	bgt	.Le7bf8
	ldr	r2, [sp, #0x3c]
	ldr	r1, [r2]
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	mov	r4, #0xe4
	mov	r0, #0x18
	lsl	r4, #5
	add	r2, r7
	add	r1, r4
	str	r0, [sp]
	str	r0, [sp, #4]
	sub	r2, #0xc
	sub	r3, #0xc
	ldr	r0, =gBuffer
	ldr	r4, [sp, #0x44]
	bl	_call_via_r4
	b	.Le7c10

	.pool_aligned

.Le7bf8:
	cmp	r3, #0x5f
	bgt	.Le7c10
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	add	r2, sp, #0x11c
	add	r0, r7
	mov	r9, r2
	lsl	r0, #16
	lsl	r1, r3, #16
	mov	r2, #1
	bl	Func_80e7338
.Le7c10:
	mov	r3, #1
	add	r8, r3
	mov	r4, r8
	add	r5, #4
	cmp	r4, #7
	bne	.Le7bae
	ldr	r1, [sp, #0x40]
	lsl	r3, r1, #2
	mov	r0, #0
	add	r3, r1
	mov	r8, r0
	lsl	r7, r3, #14
	mov	r6, #0
.Le7c2a:
	ldr	r3, [sp, #0x3c]
	ldr	r2, [r3]
	mov	r4, #0xe1
	add	r3, r2, r6
	lsl	r4, #7
	add	r5, r3, r4
	ldr	r1, [r5, #0x18]
	cmp	r1, #0
	blt	.Le7c78
	lsl	r1, #10
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	add	r1, r2, r1
	mov	r0, #2
	ldrsh	r2, [r5, r0]
	mov	r0, #0x20
	sub	r3, #0x10
	str	r0, [sp]
	str	r0, [sp, #4]
	sub	r2, #0x10
	ldr	r0, =gBuffer
	ldr	r4, [sp, #0x44]
	bl	_call_via_r4
	ldr	r3, [r5]
	sub	r3, r7
	str	r3, [r5]
	ldr	r0, =0xfffb0000
	ldr	r3, [r5, #4]
	add	r3, r0
	str	r3, [r5, #4]
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	cmp	r3, #6
	bne	.Le7c78
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
.Le7c78:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r6, #0x1c
	cmp	r2, #0x20
	bne	.Le7c2a
	ldr	r4, [sp, #0x28]
	ldr	r0, =0x7824
	ldr	r3, [r4]
	mov	r2, #1
	add	r3, r0
	str	r2, [r3]
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0x80
	ldr	r1, [sp, #0x10]
	lsl	r2, #1
	add	r1, r2
	str	r1, [sp, #0x10]
	ldr	r4, [sp, #0x28]
	ldr	r0, =0x778c
	ldr	r2, [r4]
	mov	r3, #1
	add	r2, r0
	add	r11, r3
	ldr	r3, [r2]
	mov	r1, r11
	add	r3, #1
	str	r3, [r2]
	cmp	r1, #0xc0
	beq	.Le7cba
	b	.Le78b2
.Le7cba:
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, [sp, #0x30]
	mov	r5, #0
	str	r5, [r2, #0x10]
	ldr	r0, =Func_80c9138
	bl	StopTask
	ldr	r0, =Func_80e72e0
	bl	StopTask
	ldr	r0, =Task_BlitAnim_BG1Wide
	bl	StopTask
	add	r4, sp, #0x38
	add	r0, sp, #0x34
	ldr	r3, =iwram_3001ad0
	ldrh	r4, [r4]
	ldrh	r0, [r0]
	strh	r4, [r3, #4]
	strh	r0, [r3, #6]
	mov	r0, #0x2e
	bl	gfree
	bl	Func_80d67dc
	ldr	r2, =REG_BG2PA
	ldr	r3, .Le7d2c	@ 0x80
	strh	r3, [r2]
	ldr	r3, =REG_BG2X
	str	r5, [r3]
	ldr	r3, =0xfffff000
	add	r2, #0xc
	str	r3, [r2]
	ldr	r3, .Le7d30	@ 0x1010
	add	r2, #0x26
	strh	r3, [r2]
	ldr	r3, .Le7d34	@ 0xae0
	sub	r2, #0x46
	strh	r3, [r2]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	ldr	r3, =gPtrs
	add	r3, #0xb8
	ldr	r3, [r3]
	ldr	r2, [sp, #0x3c]
	str	r3, [sp, #0x44]
	ldr	r0, =_FILE_c0
	ldr	r1, [r2]
	b	.Le7d6c

	.align	2, 0
.Le7d2c:
	.word	0x80
.Le7d30:
	.word	0x1010
.Le7d34:
	.word	0x2784
	.pool

.Le7d6c:
	mov	r3, #0
	mov	r2, #1
	bl	LoadVFXFile
	mov	r3, #0
	mov	r8, r3
	mov	r7, #0x7f
	mov	r6, #0
.Le7d7c:
	ldr	r4, [sp, #0x3c]
	ldr	r5, [r4]
	mov	r0, #0xe1
	add	r5, r6
	lsl	r0, #7
	add	r5, r0
	bl	Random
	and	r0, r7
	str	r0, [r5]
	bl	Random
	mov	r1, #1
	and	r0, r7
	add	r8, r1
	add	r0, #0x7f
	mov	r2, r8
	str	r0, [r5, #4]
	add	r6, #0x1c
	cmp	r2, #0x20
	bne	.Le7d7c
	mov	r3, #0
	ldr	r5, =gBuffer
	mov	r8, r3
	mov	r6, #0
	mov	r7, #0xff
.Le7db0:
	str	r6, [r5]
	str	r6, [r5, #4]
	str	r6, [r5, #8]
	bl	Random
	and	r0, r7
	sub	r0, #0x7f
	lsl	r0, #12
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r7
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Random
	and	r0, r7
	sub	r0, #0x7f
	mov	r4, #1
	lsl	r0, #12
	add	r8, r4
	str	r0, [r5, #0x14]
	mov	r0, r8
	str	r6, [r5, #0x18]
	add	r5, #0x1c
	cmp	r0, #0x80
	bne	.Le7db0
	mov	r1, #0
	ldr	r5, =ewram_2010e00
	mov	r8, r1
	mov	r6, #0
	mov	r7, #0xff
.Le7df0:
	str	r6, [r5]
	str	r6, [r5, #4]
	str	r6, [r5, #8]
	bl	Random
	and	r0, r7
	sub	r0, #0x80
	lsl	r0, #13
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r7
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Random
	and	r0, r7
	sub	r0, #0x80
	mov	r2, #1
	mov	r3, #0x80
	lsl	r0, #13
	add	r8, r2
	lsl	r3, #2
	str	r0, [r5, #0x14]
	str	r6, [r5, #0x18]
	add	r5, #0x1c
	cmp	r8, r3
	bne	.Le7df0
	ldr	r4, [sp, #0x3c]
	mov	r0, #0xef
	ldr	r2, [r4]
	lsl	r0, #7
	add	r1, r2, r0
	mov	r3, #1
	str	r3, [r1]
	ldr	r1, =0x7784
	ldr	r3, =0x10101010
	add	r2, r1
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	mov	r0, #0xe8
	ldr	r3, [sp, #0x3c]
	mov	r4, sp
	add	r4, #0x50
	lsl	r0, #9
	mov	r2, #0
	str	r3, [sp, #0x20]
	str	r4, [sp, #0x1c]
	str	r0, [sp, #0x14]
	mov	r11, r2
.Le7e5c:
	ldr	r3, =iwram_3001e80
	mov	r1, r11
	sub	r1, #0x10
	ldr	r5, [r3]
	str	r1, [sp, #0x24]
	cmp	r1, #0x13
	ble	.Le7e74
	mov	r0, #2
	mov	r1, #2
	mov	r2, #2
	bl	Func_80e727c
.Le7e74:
	mov	r2, r11
	cmp	r2, #0
	bne	.Le7e80
	mov	r0, #0x9c
	bl	_PlaySound
.Le7e80:
	mov	r3, r11
	cmp	r3, #0x28
	bne	.Le7e8c
	mov	r0, #0x91
	bl	_PlaySound
.Le7e8c:
	mov	r4, r11
	cmp	r4, #0x30
	bne	.Le7ebe
	ldr	r0, [sp, #0x4c]
	cmp	r0, #1
	bne	.Le7eb8
	ldr	r1, [sp, #0x20]
	ldr	r2, =0x77d8
	ldr	r3, [r1]
	add	r3, r2
	ldr	r0, [r3]
	bl	_DeleteSprite
	ldr	r4, [sp, #0x20]
	ldr	r0, =0x77dc
	ldr	r3, [r4]
	add	r3, r0
	ldr	r0, [r3]
	bl	_DeleteSprite
	bl	_Func_80b6c90
.Le7eb8:
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Le7ebe:
	bl	InitMatrixStack
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	MatrixSetLook
	ldr	r7, =ewram_2010e00
	mov	r1, #0
	mov	r2, #0x3f
	mov	r8, r1
	mov	r10, r2
.Le7ed6:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.Le7f96
	add	r6, sp, #0x60
	mov	r0, r7
	mov	r1, r6
	bl	Func_80e3944
	ldr	r3, [r6]
	ldr	r2, [r6, #8]
	asr	r3, #1
	str	r3, [r6]
	cmp	r2, #0x9f
	bgt	.Le7ef8
	mov	r3, #0xa0
	str	r3, [r6, #8]
	mov	r2, #0xa0
.Le7ef8:
	ldr	r3, =0x31f
	cmp	r2, r3
	ble	.Le7f02
	str	r3, [r6, #8]
	mov	r2, r3
.Le7f02:
	mov	r3, r2
	sub	r3, #0xa0
	cmp	r3, #0
	bge	.Le7f0c
	add	r3, #0x3f
.Le7f0c:
	asr	r3, #6
	mov	r0, #9
	sub	r0, r3
	ldr	r2, =Data_ede48
	lsl	r5, r0, #1
	sub	r3, r5, #2
	ldrh	r4, [r2, r3]
	mov	r3, #1
	mov	r2, r8
	and	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #7
	add	r3, r2
	ldr	r2, [sp, #0x3c]
	lsl	r3, #1
	ldr	r1, [r2]
	add	r4, r3
	mov	r3, #0xc8
	add	r1, r4
	lsl	r3, #6
	add	r1, r3
	lsr	r3, r0, #31
	ldr	r2, [r6]
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r6, #4]
	ldr	r4, [sp, #0x44]
	sub	r3, r0
	str	r0, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x48]
	bl	_call_via_r4
	ldr	r2, =0xffffe000
	mov	r0, r7
	mov	r1, #0x40
	bl	Func_80e38b8
	mov	r2, #0xa0
	ldr	r3, [r7, #4]
	lsl	r2, #13
	cmp	r3, r2
	bgt	.Le7f96
	mov	r3, #0
	str	r3, [r7]
	str	r3, [r7, #8]
	str	r2, [r7, #4]
	bl	Random
	mov	r1, r10
	and	r0, r1
	sub	r0, #0x20
	lsl	r0, #15
	str	r0, [r7, #0xc]
	bl	Random
	mov	r2, r10
	and	r0, r2
	lsl	r0, #13
	str	r0, [r7, #0x10]
	bl	Random
	mov	r3, r10
	and	r0, r3
	sub	r0, #0x20
	lsl	r0, #15
	str	r0, [r7, #0x14]
.Le7f96:
	mov	r4, #1
	add	r8, r4
	mov	r0, r8
	add	r7, #0x1c
	cmp	r0, #0x40
	bne	.Le7ed6
	mov	r1, #0
	mov	r8, r1
	mov	r10, r1
.Le7fa8:
	ldr	r2, [sp, #0x3c]
	mov	r5, #7
	ldr	r1, [r2]
	mov	r2, r8
	and	r5, r2
	mov	r4, r10
	add	r3, r1, r4
	mov	r0, #0xe1
	add	r4, r5, #3
	ldr	r2, =Data_ede48
	lsl	r6, r4, #1
	lsl	r0, #7
	add	r7, r3, r0
	sub	r3, r6, #2
	ldrh	r0, [r2, r3]
	mov	r3, #1
	mov	r2, r8
	and	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #7
	add	r3, r2
	lsl	r3, #1
	ldr	r2, [r7]
	add	r0, r3
	lsr	r3, r4, #1
	add	r1, r0
	sub	r2, r3
	mov	r0, #0xc8
	ldr	r3, [r7, #4]
	lsl	r0, #6
	sub	r3, r4
	add	r1, r0
	str	r4, [sp]
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x48]
	ldr	r4, [sp, #0x44]
	bl	_call_via_r4
	ldr	r3, [r7, #4]
	mov	r0, #0xa
	sub	r3, r5
	sub	r3, #8
	neg	r0, r0
	str	r3, [r7, #4]
	cmp	r3, r0
	bge	.Le800a
	mov	r3, #0x80
	str	r3, [r7, #4]
.Le800a:
	mov	r2, #1
	add	r8, r2
	mov	r1, #0x1c
	mov	r3, r8
	add	r10, r1
	cmp	r3, #0x40
	bne	.Le7fa8
	mov	r4, #0
	mov	r0, #0xff
	ldr	r7, =gBuffer
	mov	r8, r4
	mov	r10, r4
	mov	r9, r0
.Le8024:
	mov	r1, #3
	mov	r0, r8
	bl	__divsi3
	ldr	r1, [sp, #0x24]
	cmp	r0, r1
	bge	.Le80bc
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.Le80bc
	add	r5, sp, #0x60
	mov	r0, r7
	mov	r1, r5
	bl	Func_80e3944
	ldr	r3, [r5]
	asr	r6, r3, #1
	str	r6, [r5]
	ldr	r2, [r7, #0x18]
	cmp	r2, #0xd
	bhi	.Le807a
	lsr	r3, r2, #31
	add	r3, r2, r3
	ldr	r4, [sp, #0x3c]
	ldr	r2, =.Leeebc
	asr	r3, #1
	lsl	r3, #1
	ldrh	r2, [r2, r3]
	ldr	r1, [r4]
	add	r1, r2
	ldr	r2, =.Leeeca
	ldrh	r4, [r2, r3]
	ldr	r3, [r5, #4]
	lsr	r0, r4, #1
	sub	r2, r6, r0
	sub	r3, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x48]
	ldr	r4, [sp, #0x44]
	bl	_call_via_r4
	ldr	r2, [r7, #0x18]
.Le807a:
	add	r3, r2, #1
	str	r3, [r7, #0x18]
	cmp	r3, #0xe
	bne	.Le80b2
	mov	r3, #0xa0
	lsl	r3, #13
	mov	r0, r10
	str	r3, [r7, #4]
	str	r0, [r7]
	bl	Random
	mov	r1, r9
	and	r0, r1
	sub	r0, #0x7f
	lsl	r0, #16
	mov	r2, r10
	str	r0, [r7, #8]
	str	r2, [r7, #0xc]
	bl	Random
	mov	r3, r9
	and	r0, r3
	mov	r4, r10
	lsl	r0, #11
	str	r0, [r7, #0x10]
	str	r4, [r7, #0x14]
	str	r4, [r7, #0x18]
	b	.Le80bc
.Le80b2:
	mov	r0, r7
	mov	r1, #0x40
	mov	r2, #1
	bl	Func_80e38b8
.Le80bc:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r7, #0x1c
	cmp	r1, #0x40
	bne	.Le8024
	ldr	r2, [sp, #0x40]
	cmp	r2, #1
	bne	.Le8110
	mov	r4, r11
	lsr	r3, r4, #31
	add	r3, r11
	asr	r3, #1
	mov	r1, r3
	add	r1, #0x18
	b	.Le811c

	.pool_aligned

.Le8110:
	mov	r0, r11
	lsr	r3, r0, #31
	add	r3, r11
	asr	r3, #1
	mov	r2, #0x38
	sub	r1, r2, r3
.Le811c:
	mov	r3, r11
	lsl	r2, r3, #1
	mov	r4, r11
	mov	r3, #0x40
	sub	r0, r3, r2
	lsl	r3, r4, #8
	mov	r4, #0x80
	lsl	r4, #10
	add	r2, r3, r4
	ldr	r4, [sp, #0x18]
	mov	r3, #0
	str	r3, [r4, #0xc]
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r4, #4]
	ldr	r3, [sp, #0x4c]
	cmp	r3, #1
	bne	.Le8186
	ldr	r4, [sp, #0x14]
	ldr	r2, [sp, #0x1c]
	str	r4, [sp, #0x50]
	str	r4, [r2, #4]
	mov	r4, #0xc0
	lsl	r3, r1, #16
	lsl	r4, #15
	ldr	r1, [sp, #0x18]
	add	r3, r4
	str	r3, [r1]
	mov	r3, #0x60
	sub	r3, r0
	lsl	r3, #16
	str	r3, [r1, #8]
	ldr	r2, [sp, #0x20]
	ldr	r4, =0x77d8
	ldr	r3, [r2]
	add	r3, r4
	ldr	r0, [r3]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	mov	r3, #0
	bl	_UpdateSprite
	ldr	r0, [sp, #0x20]
	ldr	r1, =0x77dc
	ldr	r3, [r0]
	add	r3, r1
	ldr	r0, [r3]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	mov	r3, #0
	bl	_UpdateSprite
	b	.Le81b4
.Le8186:
	ldr	r3, [sp, #0x1c]
	str	r2, [sp, #0x50]
	mov	r4, #0xc0
	str	r2, [r3, #4]
	lsl	r4, #15
	lsl	r3, r1, #16
	ldr	r1, [sp, #0x18]
	add	r3, r4
	str	r3, [r1]
	mov	r3, #0x60
	sub	r3, r0
	lsl	r3, #16
	str	r3, [r1, #8]
	ldr	r2, [sp, #0x3c]
	ldr	r4, =0x77d8
	ldr	r3, [r2]
	add	r3, r4
	ldr	r0, [r3]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	mov	r3, #0
	bl	_UpdateSprite
.Le81b4:
	ldr	r0, [sp, #0x20]
	ldr	r1, =0x77a8
	ldr	r3, [r0]
	mov	r2, #1
	add	r3, r1
	str	r2, [r3]
	mov	r0, #8
	mov	r1, #8
	bl	UpdateScreenShake
	ldr	r4, [sp, #0x20]
	ldr	r0, =0x7824
	ldr	r3, [r4]
	mov	r1, #1
	add	r3, r0
	str	r1, [r3]
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #0x80
	ldr	r2, [sp, #0x14]
	mov	r4, #1
	lsl	r3, #1
	add	r11, r4
	add	r2, r3
	mov	r0, r11
	str	r2, [sp, #0x14]
	cmp	r0, #0x36
	beq	.Le81f0
	b	.Le7e5c
.Le81f0:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2e
	bl	gfree
	ldr	r1, [sp, #0x4c]
	cmp	r1, #0
	bne	.Le8210
	ldr	r2, [sp, #0x3c]
	ldr	r4, =0x77d8
	ldr	r3, [r2]
	add	r3, r4
	ldr	r0, [r3]
	bl	_DeleteSprite
.Le8210:
	bl	AnimEnd
	add	sp, #0x11c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end BaseAnim_Meteor

	.section .rodata
.Leee76:
	.incrom 0xeee76, 0xeeea0
.Leeea0:
	.incrom 0xeeea0, 0xeeebc
.Leeebc:
	.incrom 0xeeebc, 0xeeeca
.Leeeca:
	.incrom 0xeeeca, 0xeeed8
