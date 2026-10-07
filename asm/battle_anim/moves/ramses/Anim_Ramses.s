	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Ramses  @ 0x080e823c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ef0
	ldr	r1, [r3]
	sub	sp, #0x54
	str	r1, [sp, #0x30]
	sub	r2, r3, #4
	ldr	r2, [r2]
	str	r2, [sp, #0x2c]
	ldr	r3, [r3, #4]
	str	r3, [sp, #0x24]
	ldr	r3, =0x7828
	add	r5, r2, r3
	str	r0, [r5]
	mov	r0, #0
	bl	AnimStart
	bl	Func_80c9048
	ldr	r2, .Le82ac	@ 0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r6, [sp, #0x2c]
	mov	r7, #0xef
	lsl	r7, #7
	add	r2, r6, r7
	mov	r3, #0
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r1, #0
	mov	r0, #1
	bl	AnimTransitionOut
	ldr	r0, [r5]
	bl	Func_80d6750
	ldr	r1, =0x17b
	mov	r0, #9
	mov	r2, #2
	bl	CreateSummonSprite
	mov	r1, #0xd
	b	.Le82c0

	.align	2, 0
.Le82ac:
	.word	0
	.pool

.Le82c0:
	mov	r0, #0
	neg	r1, r1
	ldr	r6, =0x77fc
	mov	r8, r0
	mov	r7, r1
.Le82ca:
	mov	r0, #0xc3
	lsl	r0, #1
	bl	_CreateSprite
	ldr	r2, [sp, #0x2c]
	mov	r5, r0
	str	r5, [r6, r2]
	cmp	r5, #0
	beq	.Le8302
	mov	r2, r5
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #3
	mov	r0, r8
	bl	__modsi3
	mov	r1, r0
	mov	r0, r5
	bl	_Sprite_SetAnim
	ldr	r3, [sp, #0x2c]
	ldr	r1, [r6, r3]
	ldrb	r3, [r1, #9]
	mov	r2, #4
	and	r3, r7
	orr	r3, r2
	strb	r3, [r1, #9]
.Le8302:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r6, #4
	cmp	r1, #6
	bne	.Le82ca
	mov	r6, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r6, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r5, =gPtrs
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r1, #7
	str	r3, [sp, #0x3c]
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	add	r5, #0xbc
	mov	r2, sp
	ldr	r3, [r5]
	add	r2, #0x3c
	str	r2, [sp, #0x10]
	str	r3, [r2, #4]
	ldr	r2, =REG_WININ
	ldr	r3, .Le8380	@ 0x2737
	strh	r3, [r2]
	ldr	r3, .Le8384	@ 0xf0
	sub	r2, #8
	strh	r3, [r2]
	ldr	r3, .Le8388	@ 0x1088
	add	r2, #6
	strh	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0
	ldr	r1, =0x3c
	mov	r0, #1
	bl	_AnimTransitionIn
	mov	r0, #1
	mov	r1, #1
	bl	AnimTransitionOut
	ldr	r0, =_FILE_73
	ldr	r1, [sp, #0x24]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, =_FILE_c0
	ldr	r1, [sp, #0x2c]
	b	.Le83a4

	.align	2, 0
.Le8380:
	.word	0x2737
.Le8384:
	.word	0xf0
.Le8388:
	.word	0x1088
	.pool

.Le83a4:
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	ldr	r3, =0x7741
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, =0x80
	add	r2, #0x20
	strh	r3, [r2]
	ldr	r3, =0x1010
	add	r2, #0x32
	strh	r3, [r2]
	ldr	r3, =0x3f44
	sub	r2, #2
	strh	r3, [r2]
	ldr	r7, [sp, #0x2c]
	mov	r0, #0xef
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r3, r7, r0
	str	r6, [r3]
	add	r2, r7, r1
	mov	r3, #0x32
	str	r3, [r2]
	mov	r2, #0xbc
	mov	r3, #0xb8
	lsl	r3, #15
	lsl	r2, #16
	mov	r6, #0xa0
	b	.Le83f8

	.pool_aligned

.Le83f8:
	ldr	r0, [sp, #0x2c]
	mov	r1, #0xe1
	lsl	r6, #16
	mov	r7, #0
	lsl	r1, #7
	str	r2, [sp, #0x1c]
	str	r3, [sp, #0x20]
	str	r3, [sp, #0x18]
	str	r6, [sp, #0x14]
	mov	r8, r7
	mov	r6, #0
	add	r5, r0, r1
.Le8410:
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	lsl	r3, #16
	str	r3, [r5]
	mov	r3, #1
	ldr	r2, =0xfff00000
	add	r8, r3
	mov	r0, r8
	str	r7, [r5, #4]
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x18]
	add	r7, r2
	add	r5, #0x1c
	cmp	r0, #6
	bne	.Le8410
	ldr	r6, [sp, #0x2c]
	ldr	r7, =0x7140
	mov	r1, #0
	mov	r8, r1
	mov	r2, #0x18
	add	r3, r6, r7
.Le8440:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r1, #0x3a
	bne	.Le8440
	mov	r2, #0
	mov	r8, r2
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_2010018
	neg	r1, r1
	lsl	r2, #3
.Le845c:
	mov	r6, #1
	add	r8, r6
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Le845c
	ldr	r7, [sp, #0x2c]
	ldr	r0, =0x77b4
	ldr	r1, =0x77b8
	add	r2, r7, r0
	mov	r3, #0x18
	str	r3, [r2]
	mov	r3, #0
	add	r2, r7, r1
	str	r3, [r2]
	str	r3, [sp, #0x28]
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Le848a
	b	.Le8968
.Le848a:
	mov	r2, sp
	mov	r3, sp
	add	r2, #0x44
	add	r3, #0x34
	str	r2, [sp, #8]
	str	r3, [sp, #0xc]
.Le8496:
	ldr	r6, [sp, #0x28]
	cmp	r6, #0x5e
	bne	.Le84a2
	mov	r0, #0x9c
	bl	_PlaySound
.Le84a2:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x88
	bne	.Le84ae
	mov	r0, #0x9c
	bl	_PlaySound
.Le84ae:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0xb2
	bne	.Le84ba
	mov	r0, #0x9c
	bl	_PlaySound
.Le84ba:
	mov	r2, #0x82
	ldr	r1, [sp, #0x28]
	lsl	r2, #1
	cmp	r1, r2
	bne	.Le84ca
	mov	r0, #0x91
	bl	_PlaySound
.Le84ca:
	ldr	r3, =Data_edac8
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	str	r3, [sp, #0x34]
	str	r4, [sp, #0x38]
	ldr	r3, [sp, #0x28]
	sub	r3, #0x60
	cmp	r3, #0x9b
	bhi	.Le84e4
	ldr	r3, [sp, #0x2c]
	ldr	r6, =0x77a8
	add	r2, r3, r6
	b	.Le84f4
.Le84e4:
	ldr	r7, [sp, #0x28]
	ldr	r0, =0xfffffefc
	add	r3, r7, r0
	cmp	r3, #3
	bhi	.Le84f8
	ldr	r1, [sp, #0x2c]
	ldr	r3, =0x77a8
	add	r2, r1, r3
.Le84f4:
	mov	r3, #1
	str	r3, [r2]
.Le84f8:
	mov	r3, #0
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x77d8
	str	r3, [sp, #0x50]
	str	r3, [sp, #0x48]
	ldr	r5, [sp, #8]
	ldr	r7, =0xffe00000
	mov	r8, r3
	add	r6, r0, r1
.Le850a:
	ldr	r3, =.Leeed8
	mov	r2, r8
	ldrb	r3, [r3, r2]
	ldr	r0, [sp, #0x1c]
	lsl	r3, #16
	add	r3, r0
	add	r3, r7
	str	r3, [r5]
	ldr	r3, =.Leeee1
	ldrb	r3, [r3, r2]
	ldr	r1, [sp, #0x20]
	lsl	r3, #16
	add	r3, r1
	add	r3, r7
	str	r3, [r5, #8]
	ldr	r2, [sp, #0xc]
	mov	r3, #0
	ldmia	r6!, {r0}
	mov	r1, r5
	bl	_UpdateSprite
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #7
	bne	.Le850a
	ldr	r6, [sp, #0x28]
	cmp	r6, #0x5a
	bgt	.Le8566
	lsl	r5, r6, #9
	mov	r0, r5
	bl	sin
	mov	r7, #0x9c
	lsl	r0, #4
	lsl	r7, #16
	add	r7, r0, r7
	mov	r0, r5
	str	r7, [sp, #0x14]
	bl	cos
	mov	r1, #0xb8
	lsl	r0, #4
	lsl	r1, #15
	add	r1, r0, r1
	str	r1, [sp, #0x18]
.Le8566:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0xc4
	bgt	.Le8600
	ldr	r7, [sp, #0x2c]
	mov	r3, #0
	mov	r8, r3
	mov	r6, #0x5b
	mov	r10, r7
.Le8576:
	ldr	r0, [sp, #0x28]
	cmp	r0, r6
	blt	.Le858c
	add	r3, r6, #4
	cmp	r0, r3
	bge	.Le858c
	ldr	r1, [sp, #0x18]
	mov	r2, #0x80
	lsl	r2, #12
	add	r2, r1, r2
	str	r2, [sp, #0x18]
.Le858c:
	ldr	r7, [sp, #0x28]
	add	r3, r6, #3
	cmp	r7, r3
	bne	.Le85d8
	ldr	r5, =0x7128
	mov	r0, #0xff
	mov	r7, #0
	mov	r9, r0
	add	r5, r10
.Le859e:
	mov	r3, #0x80
	lsl	r3, #15
	str	r3, [r5]
	mov	r3, #0xc0
	lsl	r3, #15
	str	r3, [r5, #4]
	bl	Random
	mov	r1, r9
	and	r0, r1
	sub	r0, #0x7f
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Random
	mov	r2, r9
	and	r0, r2
	sub	r0, #0x7f
	lsl	r0, #10
	str	r0, [r5, #0x10]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	add	r7, #1
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #4
	bne	.Le859e
.Le85d8:
	mov	r3, r6
	ldr	r7, [sp, #0x28]
	add	r3, #0x14
	cmp	r7, r3
	blt	.Le85f0
	add	r3, #0x10
	cmp	r7, r3
	bge	.Le85f0
	ldr	r0, [sp, #0x18]
	ldr	r1, =0xfffe0000
	add	r1, r0, r1
	str	r1, [sp, #0x18]
.Le85f0:
	mov	r3, #1
	add	r8, r3
	mov	r2, #0xe0
	mov	r7, r8
	add	r6, #0x28
	add	r10, r2
	cmp	r7, #3
	bne	.Le8576
.Le8600:
	ldr	r3, [sp, #0x28]
	sub	r3, #0xf4
	cmp	r3, #7
	bhi	.Le8610
	ldr	r0, [sp, #0x14]
	ldr	r1, =0xffff0000
	add	r1, r0, r1
	str	r1, [sp, #0x14]
.Le8610:
	ldr	r3, [sp, #0x28]
	sub	r3, #0xfc
	cmp	r3, #0x17
	bhi	.Le8624
	ldr	r3, [sp, #0x28]
	ldr	r2, [sp, #0x14]
	sub	r3, #0xfa
	lsl	r3, #16
	sub	r3, r2, r3
	str	r3, [sp, #0x14]
.Le8624:
	ldr	r3, [sp, #0x28]
	ldr	r6, =0x103
	cmp	r3, r6
	bgt	.Le866e
	ldr	r0, [sp, #0x18]
	mov	r3, #0xff
	ldr	r1, [sp, #0x2c]
	lsl	r3, #24
	ldr	r2, =0x77f4
	str	r3, [sp, #0x48]
	add	r3, r0, r3
	str	r3, [sp, #0x4c]
	add	r3, r1, r2
	ldr	r7, [sp, #0x14]
	ldr	r0, [r3]
	add	r3, sp, #0x44
	mov	r1, r3
	ldr	r2, [sp, #0xc]
	mov	r3, #0
	str	r7, [sp, #0x44]
	bl	_UpdateSprite
	mov	r7, #0x80
	ldr	r6, [sp, #0x14]
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x77f8
	lsl	r7, #14
	add	r3, r6, r7
	add	r2, sp, #0x44
	str	r3, [sp, #0x44]
	add	r3, r0, r1
	ldr	r0, [r3]
	mov	r1, r2
	mov	r3, #0
	ldr	r2, [sp, #0xc]
	bl	_UpdateSprite
.Le866e:
	ldr	r6, [sp, #8]
	mov	r3, #0
	str	r3, [r6, #4]
	ldr	r7, [sp, #0x2c]
	mov	r0, #0xe1
	lsl	r0, #7
	mov	r8, r3
	mov	r11, r6
	add	r5, r7, r0
	mov	r9, r7
.Le8682:
	ldr	r3, [r5, #0x18]
	cmp	r3, #2
	bne	.Le868a
	b	.Le8796
.Le868a:
	ldr	r3, [r5]
	mov	r1, r11
	str	r3, [r1]
	ldr	r3, [r5, #4]
	mov	r2, r8
	str	r3, [r1, #8]
	ldr	r6, =0x77fc
	lsl	r3, r2, #2
	ldr	r7, [sp, #0x2c]
	add	r3, r6
	ldr	r0, [r7, r3]
	ldr	r2, [sp, #0xc]
	mov	r3, #0
	bl	_UpdateSprite
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #0x10]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x60
	ble	.Le86c6
	mov	r1, #0x80
	lsl	r1, #7
	add	r3, r2, r1
	str	r3, [r5, #0x10]
.Le86c6:
	mov	r2, #0xf0
	ldr	r3, [r5, #4]
	lsl	r2, #15
	cmp	r3, r2
	ble	.Le8796
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	cmp	r3, #1
	bne	.Le8788
	ldr	r3, [r5, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	ldr	r6, =0x73c8
	str	r3, [r5, #0x10]
	mov	r3, #0xff
	mov	r7, #0
	mov	r10, r3
	add	r6, r9
.Le86f0:
	ldr	r3, [r5]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6]
	ldr	r0, =0xffe00000
	ldr	r3, [r5, #4]
	add	r3, r0
	str	r3, [r6, #4]
	bl	Random
	mov	r1, r10
	and	r0, r1
	sub	r0, #0x7f
	lsl	r0, #10
	str	r0, [r6, #0xc]
	bl	Random
	mov	r2, r10
	and	r0, r2
	sub	r0, #0x7f
	lsl	r0, #10
	str	r0, [r6, #0x10]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	add	r7, #1
	str	r3, [r6, #0x18]
	add	r6, #0x1c
	cmp	r7, #2
	bne	.Le86f0
	b	.Le8796

	.pool_aligned

.Le8788:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0xc7
	bgt	.Le8796
	mov	r3, #0
	str	r3, [r5, #4]
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x18]
.Le8796:
	mov	r7, #1
	add	r8, r7
	mov	r6, #0x38
	mov	r0, r8
	add	r5, #0x1c
	add	r9, r6
	cmp	r0, #6
	beq	.Le87a8
	b	.Le8682
.Le87a8:
	ldr	r2, [sp, #0x2c]
	ldr	r3, =0x7128
	mov	r1, #0
	mov	r8, r1
	add	r5, r2, r3
.Le87b2:
	ldr	r0, [r5, #0x18]
	cmp	r0, #0
	blt	.Le87fc
	cmp	r0, #0x17
	bhi	.Le87ec
	mov	r1, #6
	bl	__divsi3
	ldr	r3, =.Leeeea
	add	r0, #3
	lsl	r0, #1
	ldrh	r1, [r3, r0]
	ldr	r3, =.Leeef8
	ldr	r6, [sp, #0x2c]
	ldrh	r4, [r3, r0]
	mov	r7, #2
	ldrsh	r2, [r5, r7]
	add	r1, r6, r1
	mov	r6, #6
	ldrsh	r3, [r5, r6]
	lsr	r0, r4, #1
	sub	r2, r0
	sub	r3, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x3c]
	bl	_call_via_r4
.Le87ec:
	mov	r0, r5
	mov	r1, #0x3c
	ldr	r2, =0xffffc000
	bl	Func_80e3908
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
.Le87fc:
	mov	r7, #1
	add	r8, r7
	mov	r0, r8
	add	r5, #0x1c
	cmp	r0, #0x38
	bne	.Le87b2
	mov	r2, #0x82
	ldr	r1, [sp, #0x28]
	lsl	r2, #1
	cmp	r1, r2
	bne	.Le88c8
	mov	r3, #0
	mov	r8, r3
	ldr	r6, [sp, #0x2c]
	ldr	r3, =0x7828
	ldr	r3, [r6, r3]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Le8854
	ldr	r7, =0x7828
	add	r5, r6, r7
	mov	r6, #0x24
.Le8828:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r1, #4
	bl	_SetBattleActorKnockback
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #8
	mov	r2, #1
	str	r3, [sp]
	mov	r1, #7
	mov	r3, r8
	neg	r2, r2
	bl	SetBattleActorState
	mov	r3, #1
	add	r8, r3
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	cmp	r8, r3
	bne	.Le8828
.Le8854:
	ldr	r6, [sp, #0x2c]
	ldr	r7, =0x77a8
	mov	r3, #8
	add	r2, r6, r7
	str	r3, [r2]
	mov	r1, #0x82
	ldr	r0, [sp, #0x28]
	lsl	r1, #1
	cmp	r0, r1
	bne	.Le88c8
	mov	r2, #0
	ldr	r7, =gBuffer
	mov	r8, r2
.Le886e:
	bl	Random
	ldr	r5, =0x3ff
	and	r5, r0
	bl	Random
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r7]
	mov	r3, #0xb8
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r0, r6
	bl	sin
	add	r5, #0x20
	mov	r3, r5
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	cos
	mov	r3, r5
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #7
	str	r3, [r7, #0x10]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x20
	str	r3, [r7, #0x18]
	mov	r6, #0x80
	mov	r3, #1
	add	r8, r3
	lsl	r6, #2
	add	r7, #0x1c
	cmp	r8, r6
	bne	.Le886e
.Le88c8:
	ldr	r0, =Data_ede48
	mov	r7, #0
	ldr	r6, =gBuffer
	mov	r8, r7
	mov	r10, r0
.Le88d2:
	ldr	r0, [r6, #0x18]
	cmp	r0, #0
	blt	.Le8922
	asr	r0, #3
	add	r0, #1
	lsl	r5, r0, #1
	mov	r1, r8
	sub	r3, r5, #2
	mov	r2, r10
	mov	r4, #1
	and	r4, r1
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x24]
	add	r1, r3, r1
	lsr	r3, r0, #31
	mov	r7, #2
	ldrsh	r2, [r6, r7]
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	mov	r7, #6
	ldrsh	r3, [r6, r7]
	str	r0, [sp]
	sub	r3, r0
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x10]
	lsl	r4, #2
	ldr	r4, [r4, r0]
	ldr	r0, [sp, #0x30]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r6
	mov	r1, #0x3e
	lsl	r2, #5
	bl	Func_80e3908
	ldr	r3, [r6, #0x18]
	sub	r3, #1
	str	r3, [r6, #0x18]
.Le8922:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #2
	add	r6, #0x1c
	cmp	r8, r2
	bne	.Le88d2
	mov	r0, #8
	mov	r1, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r6, =0x7824
	ldr	r3, [sp, #0x2c]
	add	r2, r3, r6
	mov	r3, #1
	mov	r0, #1
	str	r3, [r2]
	bl	WaitFrames
	ldr	r7, [sp, #0x28]
	mov	r0, #0xa0
	add	r7, #1
	lsl	r0, #1
	str	r7, [sp, #0x28]
	cmp	r7, r0
	beq	.Le8968
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Le8968
	b	.Le8496
.Le8968:
	mov	r0, #0x86
	bl	_Func_80bd7dc
	bl	Func_80d67dc
	ldr	r3, =0x77d8
	ldr	r2, [sp, #0x2c]
	mov	r1, #0
	mov	r8, r1
	add	r5, r2, r3
.Le897c:
	mov	r6, #1
	add	r8, r6
	ldmia	r5!, {r0}
	mov	r7, r8
	bl	_DeleteSprite
	cmp	r7, #0xf
	bne	.Le897c
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
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
.func_end Anim_Ramses

	.section .rodata
.Leeed8:
	.incrom 0xeeed8, 0xeeee1
.Leeee1:
	.incrom 0xeeee1, 0xeeeea
.Leeeea:
	.incrom 0xeeeea, 0xeeef8
.Leeef8:
	.incrom 0xeeef8, 0xeef06
