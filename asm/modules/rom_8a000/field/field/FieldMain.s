	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start FieldMain  @ 0x0808c4f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =0xccc
	mov	r0, #0x1b
	sub	sp, #0x10
	bl	galloc_ewram
	mov	r7, #0
	mov	r8, r0
	add	r0, sp, #0xc
	str	r7, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r8
	ldr	r2, =0x85000333
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =0x103
	bl	_ClearFlag
	ldr	r5, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r4, #0xe4
	ldrh	r2, [r3]
	lsl	r4, #1
	add	r3, r5, r4
	strh	r2, [r3]
	add	r1, #2
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r4, #2
	add	r2, r5, r4
	strh	r3, [r2]
	add	r1, #0xc
	ldr	r3, =0xffff
	add	r2, r5, r1
	strh	r3, [r2]
	mov	r3, #0xe8
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #1
	neg	r3, r3
	add	r4, #8
	strh	r3, [r2]
	add	r1, #6
	add	r2, r5, r4
	strh	r3, [r2]
	add	r2, r5, r1
	strh	r3, [r2]
	bl	ClearTasks
	mov	r0, #0
	bl	Func_8095778
	mov	r2, #0xed
	lsl	r2, #1
	add	r3, r5, r2
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	ldr	r3, =1
	cmp	r0, r3
	bne	.L8c598
	bl	_InitWorldMap
	mov	r1, #0x89
	lsl	r1, #2
	add	r2, r5, r1
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0
	mov	r6, #3
	bl	InitEncounters
	b	.L8c5a4
.L8c598:
	bl	_LoadMapData
	mov	r0, #1
	mov	r6, #2
	bl	InitEncounters
.L8c5a4:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	strh	r6, [r3]
	mov	r0, r6
	bl	_InitActors
	bl	_Func_8015f30
	bl	Func_808bc44
	ldr	r5, =__start_overlay
	ldr	r0, [r5, #0x24]
	bl	_call_via_r0
	mov	r2, r8
	str	r0, [r2, #0x10]
	bl	InitPlayerPos
	ldr	r0, [r5, #0x1c]
	bl	_call_via_r0
	bl	InitMapActors
	ldr	r0, =0x109
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8c5e2
	bl	Func_808bb2c
.L8c5e2:
	ldr	r5, =gState
	mov	r4, #0x8d
	lsl	r4, #2
	add	r3, r5, r4
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L8c5f6
	bl	Func_8095680
.L8c5f6:
	cmp	r6, #3
	bne	.L8c614
	bl	_Func_80113e4
	mov	r2, #0xee
	lsl	r2, #1
	mov	r4, #0xf2
	add	r3, r5, r2
	lsl	r4, #1
	ldr	r0, [r3]
	add	r3, r5, r4
	ldr	r1, [r3]
	bl	_Func_8010e14
	b	.L8c618
.L8c614:
	bl	_Func_800fe9c
.L8c618:
	bl	Func_808e9c0
	bl	Func_8091174
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	Func_8091200
	mov	r2, #0xe0
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0x80
	mov	r1, r2
	lsl	r3, #1
	str	r1, [sp, #8]
	str	r3, [r2]
	add	r3, #0xc8
	add	r3, r8
	mov	r4, #0x10
	mov	r7, #0xe3
	mov	r2, #0xd8
	str	r4, [r3]
	mov	r10, r3
	lsl	r7, #1
	ldr	r3, =0x199
	lsl	r2, #1
	mov	r6, #0
	add	r7, r8
	add	r2, r8
	strh	r6, [r7]
	str	r3, [r2]
	add	r3, #0x1b
	add	r3, r8
	ldr	r5, =gState
	ldr	r1, =0x23e
	str	r6, [r3]
	add	r3, r5, r1
	mov	r11, r4
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	cmp	r3, #2
	bne	.L8c678
	mov	r0, #0xa2
	str	r6, [r2]
	lsl	r0, #1
	bl	_SetFlag
.L8c678:
	mov	r3, #0xde
	ldr	r1, =0x109
	lsl	r3, #1
	ldr	r2, =gBuffer
	add	r3, r8
	mov	r9, r1
	str	r2, [r3]
	mov	r0, r9
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8c6bc
	bl	UpdateRespawnMap
	mov	r2, #0x8b
	lsl	r2, #2
	ldr	r1, =0x22e
	add	r3, r5, r2
	mov	r4, r11
	strh	r4, [r3]
	add	r3, r5, r1
	strh	r6, [r3]
	mov	r3, #0x8c
	lsl	r3, #2
	add	r2, r5, r3
	ldr	r4, =0x24a
	mov	r3, #1
	strh	r3, [r2]
	ldr	r3, =0xffff
	add	r2, r5, r4
	add	r1, #0x1e
	strh	r3, [r2]
	add	r3, r5, r1
	strh	r6, [r3]
.L8c6bc:
	bl	Func_8099810
	ldr	r2, =0xcc8
	ldr	r3, =0xffff
	add	r2, r8
	strh	r3, [r2]
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #4]
	bl	_call_via_r0
	mov	r3, #0xb8
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.L8c6ec
	mov	r7, r0
	strh	r6, [r3]
	b	.L8ce1c
.L8c6e4:
	mov	r3, #0
	mov	r7, r5
	strh	r3, [r1]
	b	.L8ce1c
.L8c6ec:
	mov	r0, r9
	bl	_ClearFlag
	bl	Func_808bc9c
	cmp	r0, #0
	bne	.L8c794
	ldrh	r5, [r7]
	cmp	r5, #0
	bne	.L8c72e
	ldr	r3, [sp, #8]
	mov	r4, r10
	ldr	r0, [r3]
	ldr	r1, [r4]
	bl	ScreenTransitionIn
	mov	r3, #1
	strh	r3, [r7]
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r5, [r3]
	bl	Func_8094428
	cmp	r0, #0
	bne	.L8c72e
	mov	r1, r10
	ldr	r0, [r1]
	add	r0, #1
	lsr	r3, r0, #31
	add	r0, r3
	asr	r0, #1
	bl	WaitFrames
.L8c72e:
	ldr	r5, =0x12f
	mov	r0, r5
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8c750
	mov	r0, r5
	bl	_ClearFlag
	ldr	r3, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	bl	_Func_801c34c
.L8c750:
	ldr	r5, =gState
	mov	r1, #0x8d
	lsl	r1, #2
	add	r6, r5, r1
	mov	r2, #0
	ldrsh	r0, [r6, r2]
	cmp	r0, #0
	beq	.L8c76a
	mov	r1, #1
	bl	Func_8095778
	mov	r3, #0
	strh	r3, [r6]
.L8c76a:
	mov	r3, #0x8f
	lsl	r3, #2
	add	r5, r3
	ldrh	r3, [r5]
	cmp	r3, #0
	beq	.L8c794
	bl	Func_808c44c
	ldrh	r0, [r5]
	bl	Func_80919d8
	cmp	r0, #0
	bne	.L8c78c
	ldrh	r0, [r5]
	mov	r1, #0
	bl	Func_8091a58
.L8c78c:
	bl	Func_808c4c0
	mov	r3, #0
	strh	r3, [r5]
.L8c794:
	ldr	r4, =gState
	mov	r1, #0
	mov	r9, r4
	mov	r11, r1
.L8c79c:
	mov	r0, #0x82
	lsl	r0, #1
	bl	_SetFlag
	ldr	r2, =ewram_2000434
	ldr	r3, [r2]
	lsl	r3, #2
	mov	r4, r8
	add	r3, #0x14
	ldr	r3, [r4, r3]
	mov	r10, r3
	mov	r0, r10
	bl	_Actor_Stop
	mov	r1, r10
	mov	r2, #0xee
	ldr	r3, [r1, #8]
	lsl	r2, #1
	add	r2, r9
	str	r3, [r2]
	mov	r3, #0xf0
	lsl	r3, #1
	add	r3, r9
	mov	r2, r11
	str	r2, [r3]
	mov	r2, #0xf2
	ldr	r3, [r1, #0x10]
	lsl	r2, #1
	add	r2, r9
	str	r3, [r2]
	mov	r2, #0xf4
	ldrh	r3, [r1, #6]
	lsl	r2, #1
	add	r2, r9
	str	r3, [r2]
	mov	r3, r10
	add	r3, #0x22
	ldrb	r3, [r3]
	ldr	r4, =ewram_200042c
	strh	r3, [r4]
	b	.L8cd76

	.pool_aligned

.L8c838:
	mov	r1, #0xb8
	lsl	r1, #1
	add	r1, r8
	mov	r2, #0
	ldrsh	r5, [r1, r2]
	cmp	r5, #0
	beq	.L8c848
	b	.L8c6e4
.L8c848:
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0
	ldrsh	r6, [r2, r3]
	cmp	r6, #0
	bne	.L8c858
	b	.L8ca0e
.L8c858:
	ldr	r3, =0xcb6
	ldr	r4, .L8c88c	@ 1
	add	r3, r8
	strh	r4, [r3]
	mov	r1, #0
	ldrsh	r0, [r2, r1]
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L8c86e
	b	.L8c9d4
.L8c86e:
	bl	ResetPlayerSpeed
	bl	Func_808c44c
	mov	r3, #0xc2
	lsl	r3, #1
	add	r3, r8
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	mov	r6, #0
	cmp	r5, r3
	bcs	.L8c8c0
	mov	r5, #0xc4
	lsl	r5, #1
	b	.L8c894

	.align	2, 0
.L8c88c:
	.word	1
	.pool

.L8c894:
	mov	r0, r10
	mov	r1, #0x16
	bl	_Actor_SetAnim
	mov	r1, r8
	ldrsh	r0, [r5, r1]
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x91a
	mov	r1, #1
	bl	_Func_801776c
	mov	r3, #0xc2
	lsl	r3, #1
	add	r3, r8
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r6, #1
	add	r5, #2
	cmp	r6, r3
	bcc	.L8c894
.L8c8c0:
	mov	r3, #0xc3
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L8c8d0
	b	.L8c9c0
.L8c8d0:
	ldr	r2, =ewram_2000434
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L8c900
	mov	r0, #0x20
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8c8ec
	mov	r0, r10
	mov	r1, #0x15
	bl	_Actor_SetAnim
	b	.L8c908
.L8c8ec:
	mov	r0, r10
	mov	r1, #0x25
	bl	_Actor_SetAnim
	b	.L8c908

	.pool_aligned

.L8c900:
	mov	r0, r10
	mov	r1, #0x13
	bl	_Actor_SetAnim
.L8c908:
	mov	r0, #0x3b
	bl	_PlaySound
	mov	r1, #1
	ldr	r0, =0x91b
	bl	_Func_801776c
	ldr	r3, =ewram_2000434
	ldr	r0, [r3]
	bl	_GetUnit
	ldr	r4, .L8c944	@ 1
	mov	r6, r0
	strh	r4, [r6, #0x38]
	mov	r1, #1
	lsl	r5, r1, #14
	mov	r0, r5
	mov	r2, #0x34
	ldrsh	r1, [r6, r2]
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L8c950
	mov	r5, #0
	cmp	r0, #0
	blt	.L8c950
	mov	r5, r0
	b	.L8c950

	.align	2, 0
.L8c944:
	.word	1
	.pool

.L8c950:
	lsl	r3, r5, #16
	strh	r5, [r6, #0x14]
	cmp	r3, #0
	bne	.L8c964
	mov	r4, #0x38
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	beq	.L8c964
	ldr	r1, =1
	strh	r1, [r6, #0x14]
.L8c964:
	mov	r2, #0x3a
	ldrsh	r0, [r6, r2]
	mov	r3, #0x36
	ldrsh	r1, [r6, r3]
	lsl	r0, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L8c988
	mov	r3, #0
	cmp	r0, #0
	blt	.L8c988
	mov	r3, r0
	b	.L8c988

	.pool_aligned

.L8c988:
	strh	r3, [r6, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L8c99c
	mov	r4, #0x3a
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	beq	.L8c99c
	ldr	r1, =1
	strh	r1, [r6, #0x16]
.L8c99c:
	mov	r3, #0xe2
	lsl	r3, #1
	add	r3, r9
	ldrh	r2, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r3, r9
	strh	r2, [r3]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	ldr	r2, =ewram_2000402
	strh	r3, [r2]
	bl	Func_808c4c0
	ldr	r7, =0x3e7
	b	.L8ce1c
.L8c9c0:
	bl	Func_808c4c0
	b	.L8c9fa

	.pool_aligned

.L8c9d4:
	ldr	r3, =0xfffffc88
	cmp	r0, r3
	bne	.L8c9e6
	bl	ResetPlayerSpeed
	ldr	r0, =0x1b
	bl	Func_809c138
	b	.L8c9fa
.L8c9e6:
	ldr	r4, =0xfffffc87
	cmp	r0, r4
	bne	.L8c9f6
	bl	ResetPlayerSpeed
	bl	Func_809c3a4
	b	.L8c9fa
.L8c9f6:
	bl	CallMapEventType6
.L8c9fa:
	ldr	r3, =0xcb6
	mov	r1, r11
	add	r3, r8
	strh	r1, [r3]
	mov	r3, #0xc1
	lsl	r3, #1
	add	r3, r8
	mov	r2, r11
	strh	r2, [r3]
	b	.L8cd76
.L8ca0e:
	mov	r5, #0xbe
	lsl	r5, #1
	add	r5, r8
	mov	r3, #0
	ldrsh	r7, [r5, r3]
	cmp	r7, #0
	beq	.L8ca5e
	str	r1, [sp, #4]
	bl	ResetPlayerSpeed
	bl	Func_808ba38
	ldr	r2, =0x21e
	ldr	r3, =0xffff
	add	r2, r9
	strh	r3, [r2]
	mov	r2, #0xe0
	lsl	r2, #1
	mov	r3, #0xff
	add	r2, r9
	lsl	r3, #1
	strh	r3, [r2]
	ldr	r4, =ewram_2000402
	ldrh	r3, [r5]
	ldr	r1, [sp, #4]
	strh	r3, [r4]
	ldr	r3, =0x3e7
	strh	r3, [r1]
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	bl	BattleIntro
	mov	r3, #0xd4
	lsl	r3, #1
	ldr	r2, =ewram_2000478
	add	r3, r8
	str	r6, [r3]
	strh	r6, [r5]
	str	r6, [r2]
	b	.L8cd76
.L8ca5e:
	mov	r3, #0xb6
	lsl	r3, #1
	add	r3, r8
	mov	r4, #0
	ldrsh	r6, [r3, r4]
	cmp	r6, #0
	beq	.L8ca86
	ldr	r5, =0xcb6
	ldr	r1, .L8ca9c	@ 1
	add	r5, r8
	strh	r1, [r5]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	str	r3, [sp]
	bl	Func_808d828
	ldr	r3, [sp]
	strh	r7, [r5]
	strh	r7, [r3]
	b	.L8cd76
.L8ca86:
	mov	r5, #0xb7
	lsl	r5, #1
	add	r5, r8
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	cmp	r0, #0
	beq	.L8cac4
	bl	Func_808d8f0
	strh	r6, [r5]
	b	.L8cd76

	.align	2, 0
.L8ca9c:
	.word	1
	.pool

.L8cac4:
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r8
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	cmp	r3, #0
	beq	.L8cb4c
	bl	_Func_801c428
	ldr	r1, =ewram_2000434
	ldr	r0, [r1]
	bl	Func_808ddec
	mov	r2, #1
	mov	r5, r0
	neg	r2, r2
	mov	r6, #0
	cmp	r5, r2
	beq	.L8caf6
	bl	FindSpeakEvent
	cmp	r0, #0
	beq	.L8caf4
	mov	r0, #1
.L8caf4:
	mov	r6, r0
.L8caf6:
	cmp	r6, #0
	beq	.L8cb1c
	ldr	r3, .L8cb14	@ 0x1000
	orr	r5, r3
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r8
	strh	r5, [r3]
	mov	r3, #0xb9
	lsl	r3, #1
	add	r3, r8
	mov	r4, r11
	strh	r4, [r3]
	b	.L8cb44

	.align	2, 0
.L8cb14:
	.word	0x1000
	.pool

.L8cb1c:
	bl	Func_808ce74
	mov	r6, r0
	cmp	r6, #0
	beq	.L8cb3a
	mov	r3, #0xbd
	lsl	r3, #1
	add	r3, r8
	strh	r6, [r3]
	mov	r3, #0xb9
	lsl	r3, #1
	add	r3, r8
	mov	r1, r11
	strh	r1, [r3]
	b	.L8cb44
.L8cb3a:
	mov	r3, #0xb9
	lsl	r3, #1
	ldr	r2, =1
	add	r3, r8
	strh	r2, [r3]
.L8cb44:
	mov	r3, #0xba
	b	.L8cd6e

	.pool_aligned

.L8cb4c:
	mov	r3, #0xb9
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r7, [r3, r1]
	cmp	r7, #0
	beq	.L8cbe4
	bl	_Func_801c428
	bl	ResetPlayerSpeed
	mov	r0, #0x6f
	bl	_PlaySound
	bl	Func_808c44c
	mov	r0, #0x83
	lsl	r0, #1
	bl	_SetFlag
	ldr	r3, =gDebugMode
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L8cb98
	ldr	r1, =gKeyHeld
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L8cb98
	ldr	r3, [r1]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.L8cb98
	bl	_Debug_FlagEditor
	b	.L8cbbe
.L8cb98:
	ldr	r0, =0x107
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8cbae
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0xfa
	strh	r3, [r2]
	b	.L8cbbe
.L8cbae:
	mov	r5, #0xcc
	lsl	r5, #4
	add	r5, r8
	strh	r0, [r5]
	bl	_Func_801c244
	ldr	r2, .L8cbd4	@ 1
	strh	r2, [r5]
.L8cbbe:
	bl	Func_808c4c0
	mov	r0, #0x83
	lsl	r0, #1
	bl	_ClearFlag
	bl	_CheckLure
	mov	r3, #0xb9
	b	.L8cd6e

	.align	2, 0
.L8cbd4:
	.word	1
	.pool

.L8cbe4:
	mov	r5, #0xbc
	lsl	r5, #1
	add	r5, r8
	mov	r1, #0
	ldrsh	r6, [r5, r1]
	cmp	r6, #0
	beq	.L8cc02
	bl	Func_808c44c
	ldrh	r3, [r5]
	ldr	r0, =0xfff
	and	r0, r3
	bl	HandleActorEvents
	b	.L8cc42
.L8cc02:
	mov	r5, #0xbd
	lsl	r5, #1
	add	r5, r8
	mov	r2, #0
	ldrsh	r7, [r5, r2]
	cmp	r7, #0
	beq	.L8cc24
	bl	Func_808c44c
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	Func_808d9a4
	b	.L8cc6e

	.pool_aligned

.L8cc24:
	mov	r5, #0xbf
	lsl	r5, #1
	add	r5, r8
	mov	r4, #0
	ldrsh	r6, [r5, r4]
	cmp	r6, #0
	beq	.L8cc4a
	bl	_Func_801c428
	bl	Func_808c44c
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	bl	UseFieldMove
.L8cc42:
	bl	Func_808c4c0
	strh	r7, [r5]
	b	.L8cd76
.L8cc4a:
	mov	r5, #0xc0
	lsl	r5, #1
	add	r5, r8
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L8cc76
	bl	Func_808c44c
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	mov	r3, #0xcd
	lsl	r3, #1
	add	r3, r8
	mov	r4, #0
	ldrsh	r1, [r3, r4]
	bl	Func_808e23c
.L8cc6e:
	bl	Func_808c4c0
	strh	r6, [r5]
	b	.L8cd76
.L8cc76:
	mov	r3, #0xbb
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L8cd76
	mov	r0, #0x6f
	bl	_PlaySound
	bl	ResetPlayerSpeed
	bl	Func_808c44c
	mov	r0, #0x83
	lsl	r0, #1
	bl	_SetFlag
	ldr	r1, =gDebugMode
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.L8ccb4
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L8ccb4
	bl	_Debug_WarpMenu
	b	.L8cd60
.L8ccb4:
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.L8ccce
	ldr	r3, =gKeyHeld
	mov	r2, #0x80
	ldr	r3, [r3]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L8ccce
	bl	Debug_PaletteEditor
	b	.L8cd60
.L8ccce:
	ldr	r0, =0x107
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8cce4
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0xfa
	strh	r3, [r2]
	b	.L8cd60
.L8cce4:
	bl	Func_808e118
	bl	_Func_801c428
	bl	_Func_80f9594
	ldr	r3, =0x21e
	add	r3, r9
	strh	r0, [r3]
	mov	r0, #0xbf
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8cd58
	ldr	r3, =iwram_3001e68
	mov	r2, #0x80
	ldr	r5, [r3]
	ldr	r1, =gSpriteAllocTable
	mov	r0, #0
	lsl	r2, #2
.L8cd0e:
	ldrb	r3, [r1]
	add	r1, #1
	cmp	r3, #0xff
	bne	.L8cd18
	add	r0, #1
.L8cd18:
	sub	r2, #1
	cmp	r2, #0
	bne	.L8cd0e
	mov	r3, r0
	sub	r3, #0x88
	cmp	r3, #0
	bge	.L8cd30
	ldr	r2, .L8cd3c	@ 1
	mov	r0, #1
	strh	r2, [r5, #4]
	bl	WaitFrames
.L8cd30:
	mov	r0, #0
	bl	_StartMenu
	mov	r3, r11
	strh	r3, [r5, #4]
	b	.L8cd60

	.align	2, 0
.L8cd3c:
	.word	1
	.pool

.L8cd58:
	ldr	r0, =0xc2f
	mov	r1, #1
	bl	_Func_801776c
.L8cd60:
	bl	Func_808c4c0
	mov	r0, #0x83
	lsl	r0, #1
	bl	_ClearFlag
	mov	r3, #0xbb
.L8cd6e:
	lsl	r3, #1
	add	r3, r8
	mov	r4, r11
	strh	r4, [r3]
.L8cd76:
	bl	Func_808bc9c
	cmp	r0, #0
	beq	.L8cd80
	b	.L8c838
.L8cd80:
	mov	r0, #0x82
	lsl	r0, #1
	bl	_ClearFlag
	ldr	r1, =ewram_2000434
	ldr	r3, [r1]
	lsl	r3, #2
	add	r3, #0x14
	mov	r4, r8
	ldr	r3, [r4, r3]
	ldr	r2, =gState
	mov	r10, r3
	cmp	r3, #0
	beq	.L8cdd8
	mov	r1, #0xf9
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #2
	bne	.L8cdb0
	mov	r0, r10
	bl	_Func_800c46c
	b	.L8cdd8
.L8cdb0:
	cmp	r3, #1
	bne	.L8cdbc
	mov	r0, r10
	bl	_Func_800c47c
	b	.L8cdd8
.L8cdbc:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L8cdd2
	mov	r0, r10
	bl	_Func_800c49c
	b	.L8cdd8
.L8cdd2:
	mov	r0, r10
	bl	_Func_800c48c
.L8cdd8:
	ldr	r5, =ewram_2000434
.L8cdda:
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r5]
	lsl	r3, #2
	add	r3, #0x14
	mov	r4, r8
	ldr	r3, [r4, r3]
	mov	r10, r3
	ldr	r3, =gDebugMode
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L8cdfe
	ldr	r0, =0x163
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8ce12
.L8cdfe:
	mov	r3, r10
	add	r3, #0x22
	mov	r2, r10
	mov	r4, r10
	ldrb	r0, [r3]
	ldr	r1, [r2, #8]
	ldr	r3, [r4, #0x10]
	ldr	r2, [r2, #0xc]
	bl	Func_808bec0
.L8ce12:
	bl	Func_808bc9c
	cmp	r0, #0
	beq	.L8cdda
	b	.L8c79c
.L8ce1c:
	mov	r6, #0xe3
	lsl	r6, #1
	add	r6, r8
	ldrh	r3, [r6]
	cmp	r3, #0
	beq	.L8ce46
	mov	r3, #0xe0
	mov	r5, #0xe4
	lsl	r3, #1
	lsl	r5, #1
	add	r3, r8
	add	r5, r8
	ldr	r0, [r3]
	ldr	r1, [r5]
	bl	ScreenTransitionOut
	mov	r3, #0
	strh	r3, [r6]
	ldr	r0, [r5]
	bl	WaitFrames
.L8ce46:
	mov	r0, #0x1b
	bl	gfree
	mov	r0, r7
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end FieldMain
