	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BattleMain  @ 0x080b63c8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x44
	str	r0, [sp, #0xc]
	mov	r1, #0x4c
	mov	r0, #0xc
	bl	galloc_ewram
	ldr	r1, =0x82c
	mov	r10, r0
	mov	r0, #9
	bl	galloc_ewram
	mov	r5, #0xf9
	lsl	r5, #3
	mov	r1, r5
	mov	r8, r0
	mov	r0, #0x36
	bl	galloc_ewram
	mov	r1, #0x20
	mov	r6, r0
	mov	r0, #0x2c
	bl	galloc_ewram
	mov	r1, #0xa0
	str	r0, [sp, #8]
	lsl	r1, #2
	mov	r0, #0xb
	bl	galloc_ewram
	mov	r1, #0xc
	add	r1, r10
	ldr	r3, =Func_80008d4
	mov	r9, r1
	mov	r0, r6
	mov	r1, r5
	bl	_call_via_r3
	bl	ClearTasks
	mov	r3, #0x80
	ldr	r2, [sp, #8]
	mov	r7, #0
	lsl	r3, #6
	str	r7, [r2, #4]
	str	r3, [r2]
	ldr	r3, [sp, #8]
	mov	r2, #1
	str	r2, [r3, #0x14]
	str	r7, [r3, #0x18]
	str	r7, [r3, #0x1c]
	mov	r3, #0x80
	lsl	r3, #19
	strh	r2, [r3]
	ldr	r0, =0x103
	bl	_SetFlag
	ldr	r0, =0x169
	bl	_SetFlag
	bl	InitMatrixStack
	add	r5, sp, #0x10
	str	r7, [r5]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, r10
	ldr	r2, =0x85000013
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r7, [r5]
	mov	r0, r5
	mov	r1, r8
	ldr	r2, =0x8500020b
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #1
	neg	r3, r3
	str	r3, [r1, #0x54]
	ldr	r2, [sp, #0xc]
	mov	r0, #0x25
	str	r2, [r1]
	mov	r1, #0xc
	bl	galloc_ewram
	str	r7, [r5]
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r2, =0x85000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	_Func_808b248
	mov	r3, #0xc9
	lsl	r3, #3
	add	r3, r8
	mov	r1, #0xe0
	strh	r0, [r3]
	lsl	r1, #4
	mov	r0, #4
	bl	galloc_ewram
	mov	r1, #0xc0
	lsl	r1, #3
	mov	r0, #3
	bl	galloc_ewram
	mov	r0, #4
	bl	_InitActors
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lb64c6
	mov	r0, #1
	bl	_Func_8016018
	b	.Lb64cc
.Lb64c6:
	mov	r0, #0
	bl	_Func_8016018
.Lb64cc:
	mov	r2, #0x80
	mov	r3, r9
	mov	r5, #0
	lsl	r2, #15
	str	r2, [r3, #4]
	str	r5, [r3]
	str	r5, [r3, #8]
	mov	r3, #0xb4
	mov	r1, r10
	lsl	r3, #16
	str	r3, [r1, #4]
	mov	r3, #0xa0
	str	r2, [r1, #8]
	lsl	r3, #6
	mov	r2, r10
	str	r5, [r1]
	strh	r3, [r2, #0x36]
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r1, #0x34]
	mov	r3, #0x80
	lsl	r3, #17
	str	r3, [r1, #0x20]
	mov	r2, r8
	ldr	r0, [r2]
	bl	Func_80c1ffc
	mov	r6, r0
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lb6528
	mov	r3, r8
	add	r3, #0x44
	str	r3, [sp, #4]
	ldr	r1, [sp, #4]
	mov	r3, #1
	strb	r3, [r1]
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #4
	strb	r2, [r3]
	b	.Lb652e
.Lb6528:
	mov	r3, r8
	add	r3, #0x44
	str	r3, [sp, #4]
.Lb652e:
	ldr	r1, [sp, #4]
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.Lb65a2
	ldr	r3, =sRPGRNGState
	str	r5, [r3]
	mov	r5, #0
	ldr	r2, =iwram_3001f64
	mov	r6, r8
	mov	r3, #1
	mov	r10, r2
	add	r6, #0x52
	mov	r7, #3
	mov	r9, r3
.Lb654a:
	mov	r1, r10
	ldrh	r2, [r1]
	mov	r3, r7
	and	r3, r2
	cmp	r3, #3
	beq	.Lb6566
	mov	r0, #1
	add	r5, #1
	bl	WaitFrames
	cmp	r5, #0x18
	ble	.Lb654a
	mov	r2, r9
	strb	r2, [r6]
.Lb6566:
	ldr	r3, =REG_SIOCNT
	ldr	r3, [r3]
	mov	r2, r8
	lsl	r3, #26
	lsr	r3, #30
	add	r2, #0x50
	strb	r3, [r2]
	ldr	r3, =iwram_3001f28
	ldr	r4, =0x7c7
	ldr	r2, [r3]
	ldr	r1, =ewram_2018000
	mov	r0, #0
.Lb657e:
	ldrb	r3, [r1]
	add	r0, #1
	strb	r3, [r2]
	add	r1, #1
	add	r2, #1
	cmp	r0, r4
	bls	.Lb657e
	mov	r0, #0xfc
	lsl	r0, #2
	bl	_GetFlagByte
	mov	r6, r0
	bl	Func_80b6378
	mov	r2, r8
	add	r2, #0x42
	mov	r3, #0
	strb	r3, [r2]
.Lb65a2:
	ldr	r1, =0xc7f
	ldr	r0, =Func_80b5864
	bl	StartTask
	ldr	r3, =gState
	mov	r1, #0xf7
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lb65d8
	bl	_PlaySound
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lb65e4
	mov	r0, #0x37
	bl	_PlaySound
	mov	r0, #4
	bl	SetSoundFXMode
	b	.Lb65e4
.Lb65d8:
	mov	r0, #0x33
	bl	_PlaySound
	mov	r0, #0x4c
	bl	_PlaySound
.Lb65e4:
	bl	Func_80b5a0c
	bl	Func_80b75dc
	bl	Func_80b5c08
	bl	Func_80b5d3c
	mov	r0, #0
	bl	_Func_8077330
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.Lb6658
	mov	r3, #0x41
	add	r3, r8
	mov	r9, r3
	mov	r1, r9
	mov	r3, #3
	strb	r3, [r1]
	b	.Lb6662

	.pool_aligned

.Lb6658:
	mov	r2, #0x41
	add	r2, r8
	mov	r3, #1
	strb	r3, [r2]
	mov	r9, r2
.Lb6662:
	mov	r0, #9
	bl	_Func_801ef08
	bl	Func_80b7f9c
	bl	Func_80b6c90
	bl	Func_80c08a8
	mov	r3, #0xc9
	lsl	r3, #3
	add	r3, r8
	ldrh	r1, [r3]
	mov	r0, #1
	mov	r2, #0
	bl	AnimTransitionIn
	mov	r3, #0x80
	lsl	r3, #10
	mov	r0, #0xa0
	mov	r1, #0xa0
	str	r3, [sp]
	lsl	r0, #16
	lsl	r1, #15
	mov	r2, #0
	mov	r3, #0
	bl	Func_80c0a24
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0xbe
	mov	r0, #0
	bl	Func_80c0cec
	mov	r0, #1
	bl	Func_80b5b14
	ldr	r5, =0
	ldr	r3, =REG_BLDCNT
	strh	r5, [r3]
	bl	Func_80c24b0
	mov	r0, #0x80
	bl	AllocUploadSpriteGFX
	mov	r3, r8
	mov	r1, #0x45
	str	r0, [r3, #0x54]
	add	r1, r8
	mov	r0, #0xb7
	strb	r5, [r1]
	lsl	r0, #1
	mov	r11, r1
	bl	_GetFlag
	cmp	r0, #0
	bne	.Lb6700
	ldr	r3, =gState
	ldr	r1, =0x22b
	add	r3, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb671a
	b	.Lb66f4

	.pool_aligned

.Lb66f4:
	bl	_RPGRandom
	mov	r3, #0xf
	and	r0, r3
	cmp	r0, #0
	bne	.Lb6708
.Lb6700:
	mov	r3, #1
	mov	r2, r11
	strb	r3, [r2]
	b	.Lb671a
.Lb6708:
	bl	_RPGRandom
	mov	r3, #0x1f
	and	r0, r3
	cmp	r0, #0
	bne	.Lb671a
	mov	r3, #2
	mov	r1, r11
	strb	r3, [r1]
.Lb671a:
	mov	r0, r6
	ldr	r1, [sp, #0xc]
	bl	Func_80c02a4
	ldr	r3, [sp, #8]
	mov	r2, #0
	str	r2, [r3, #0x14]
	ldr	r3, =iwram_3001f58
	mov	r1, #0xc8
	strb	r2, [r3]
	ldr	r0, =Func_80b7738
	lsl	r1, #4
	bl	StartTask
.Lb6736:
	bl	Func_80b9b2c
	bl	Func_80b5d3c
	mov	r0, #0
	bl	_Func_8077330
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.Lb6752
	mov	r3, #3
	mov	r1, r9
	strb	r3, [r1]
	b	.Lb6758
.Lb6752:
	mov	r3, #1
	mov	r2, r9
	strb	r3, [r2]
.Lb6758:
	ldr	r1, [sp, #8]
	mov	r3, #0xa0
	lsl	r3, #6
	str	r3, [r1]
	mov	r3, #0x3c
	str	r3, [r1, #4]
	mov	r2, r9
	mov	r5, #0xbb
	ldrb	r0, [r2]
	lsl	r5, #2
	bl	_Func_801f200
	add	r5, r8
	mov	r1, #0xa0
	ldr	r3, =Func_80008d4
	lsl	r1, #1
	mov	r0, r5
	bl	_call_via_r3
	mov	r3, r8
	ldr	r0, [r3, #0x54]
	bl	Func_8003f3c
	mov	r0, #0xb5
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.Lb67ac
	bl	Func_800488c
	bl	Func_80048a0
	mov	r0, r5
	bl	Func_80b9934
	mov	r5, r0
	bl	Func_800488c
	bl	Func_80048a0
	b	.Lb67b4
.Lb67ac:
	mov	r0, r5
	bl	Func_80b8574
	mov	r5, r0
.Lb67b4:
	mov	r0, #0x80
	bl	AllocUploadSpriteGFX
	mov	r1, r8
	str	r0, [r1, #0x54]
	mov	r2, r9
	ldrb	r0, [r2]
	bl	_Func_801f200
	cmp	r5, #0
	bge	.Lb67cc
	b	.Lb696e
.Lb67cc:
	mov	r7, #0
	cmp	r7, r5
	bge	.Lb6862
	mov	r6, #0xbb
	lsl	r6, #2
.Lb67d6:
	mov	r3, r8
	ldrsh	r3, [r6, r3]
	mov	r10, r3
	bl	Func_800488c
	bl	Func_80048a0
	mov	r0, #0xb5
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.Lb6806
	mov	r2, r8
	add	r0, r6, r2
	mov	r1, #0xa
	cmp	r7, #0
	beq	.Lb67fc
	mov	r1, #0
.Lb67fc:
	bl	Func_80b9b30
	cmp	r0, #1
	bne	.Lb6814
	b	.Lb6a00
.Lb6806:
	mov	r3, r8
	add	r0, r6, r3
	bl	Func_80b874c
	cmp	r0, #1
	bne	.Lb6814
	b	.Lb6a00
.Lb6814:
	bl	Func_800488c
	bl	Func_80048a0
	mov	r0, #1
	mov	r1, #0
	bl	Func_80b6b40
	cmp	r0, #0
	bne	.Lb682a
	b	.Lb69b0
.Lb682a:
	mov	r0, #2
	mov	r1, #0
	bl	Func_80b6b40
	cmp	r0, #0
	bne	.Lb6850
	mov	r1, r10
	cmp	r1, #7
	bhi	.Lb68ec
	mov	r3, #0xa7
	lsl	r3, #3
	add	r3, r8
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lb68ec
	mov	r3, #3
	mov	r2, r8
	strh	r3, [r2, #0x3e]
	b	.Lb68ec
.Lb6850:
	bl	Func_80b6148
	cmp	r0, #0
	bge	.Lb685a
	b	.Lb696e
.Lb685a:
	add	r7, #1
	add	r6, #0x10
	cmp	r7, r5
	blt	.Lb67d6
.Lb6862:
	mov	r3, #0
	mov	r1, r11
	strb	r3, [r1]
	bl	Func_80bf674
	bl	Func_80bf678
	bl	Func_80b7e7c
	ldr	r2, [sp, #4]
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lb6886
	bl	Func_80b6148
	cmp	r0, #0
	bge	.Lb688c
	b	.Lb696e
.Lb6886:
	mov	r0, #0x14
	bl	WaitFrames
.Lb688c:
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.Lb689a
	b	.Lb6736
.Lb689a:
	ldr	r0, =0xc47
	mov	r1, #0
	mov	r2, #4
	mov	r3, #1
	bl	_Func_8017658
	mov	r5, r0
	b	.Lb68b0
.Lb68aa:
	mov	r0, #1
	bl	WaitFrames
.Lb68b0:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb68aa
	mov	r0, r5
	mov	r1, #1
	bl	_CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #4
	mov	r3, #1
	mov	r1, #0xa
	ldr	r0, =0xc48
	bl	_Func_8017658
	mov	r1, #0x18
	mov	r5, r0
	mov	r0, #0x5c
	bl	Func_80bb7c0
	mov	r0, r5
	mov	r1, #1
	bl	_CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	b	.Lb6736
.Lb68ec:
	bl	Func_80b63b0
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.Lb6954
	ldr	r1, [sp, #4]
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.Lb690a
	mov	r0, #0x3a
	bl	_PlaySound
.Lb690a:
	mov	r3, #0xa7
	lsl	r3, #3
	add	r3, r8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lb6950
	mov	r0, #0x3a
	bl	_PlaySound
	mov	r2, r8
	ldrh	r3, [r2, #0x3e]
	cmp	r3, #1
	bhi	.Lb6950
	ldrh	r3, [r2, #0x3c]
	lsl	r3, #1
	add	r3, #0x10
	ldrh	r1, [r2, r3]
	mov	r0, #0x80
	mov	r2, #0x1a
	bl	_InitEnemyUnit
	bl	_Func_80198dc
	mov	r0, #0x80
	mov	r1, #1
	bl	_Func_8019908
	mov	r3, r8
	ldrh	r0, [r3, #0x3e]
	ldr	r3, =0x838
	add	r0, r3
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lb6950:
	bl	Func_80c2724
.Lb6954:
	mov	r0, #0x11
	bl	_PlaySound
	mov	r0, #0x1e
	bl	Func_8003b70
	bl	Func_8003ce0
	mov	r3, #0xa7
	lsl	r3, #3
	add	r3, r8
	ldr	r7, [r3]
	b	.Lb6a12
.Lb696e:
	bl	Func_80b63b0
	mov	r0, #0
	bl	Func_80042c8
	ldr	r3, .Lb6994	@ 1
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	mov	r3, #0xa7
	lsl	r3, #3
	mov	r0, #0xfa
	add	r3, r8
	lsl	r0, #2
	ldr	r7, [r3]
	bl	_SetFlag
	b	.Lb6a12

	.align	2, 0
.Lb6994:
	.word	1
	.pool

.Lb69b0:
	bl	Func_80b63b0
	mov	r0, #0x3b
	bl	_PlaySound
	bl	_Func_80198dc
	ldr	r3, =gState
	mov	r1, #0xfc
	lsl	r1, #1
	add	r3, r1
	ldrb	r0, [r3]
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, #0
	bl	Func_80b6a60
	cmp	r0, #1
	bne	.Lb69e0
	ldr	r0, =0x83d
	bl	_Func_80175a0
	b	.Lb69e6
.Lb69e0:
	ldr	r0, =0x837
	bl	_Func_80175a0
.Lb69e6:
	bl	WaitTextPrompt
	mov	r0, #0x11
	bl	_PlaySound
	mov	r7, #1
	mov	r0, #0x1e
	bl	Func_8003b70
	neg	r7, r7
	bl	Func_8003ce0
	b	.Lb6a12
.Lb6a00:
	mov	r0, #0x11
	bl	_PlaySound
	mov	r0, #0x1e
	bl	Func_8003b70
	bl	Func_8003ce0
	ldr	r7, =0x3e7
.Lb6a12:
	bl	Func_80b5b18
	bl	Func_80bf674
	bl	Func_80bf5a8
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #0
	strb	r2, [r3]
	ldr	r0, =Func_80b7738
	bl	StopTask
	bl	Func_80c08e0
	mov	r0, r7
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end BattleMain

.thumb_func_start Func_80b6a60  @ 0x080b6a60
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x44
	ldrb	r3, [r3]
	sub	sp, #4
	mov	r5, r0
	mov	r6, #4
	cmp	r3, #0
	beq	.Lb6a7a
	mov	r6, #3
.Lb6a7a:
	bl	_GetPartySize
	mov	r7, r0
	cmp	r7, r6
	ble	.Lb6a86
	mov	r7, r6
.Lb6a86:
	cmp	r7, #0
	ble	.Lb6abc
	ldr	r3, =gState
	mov	r1, #0xfc
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #2
	mov	r8, r3
	mov	r6, r7
.Lb6a98:
	ldrb	r0, [r2]
	add	r2, #1
	cmp	r5, #0
	beq	.Lb6aa4
	strh	r0, [r5]
	add	r5, #2
.Lb6aa4:
	str	r2, [sp]
	bl	_GetUnit
	mov	r1, #0x95
	lsl	r1, #1
	add	r3, r0, r1
	sub	r6, #1
	mov	r1, r8
	strb	r1, [r3]
	ldr	r2, [sp]
	cmp	r6, #0
	bne	.Lb6a98
.Lb6abc:
	cmp	r5, #0
	beq	.Lb6ac4
	ldr	r3, .Lb6ad4	@ 0xff
	strh	r3, [r5]
.Lb6ac4:
	mov	r0, r7
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lb6ad4:
	.word	0xff
.func_end Func_80b6a60

.thumb_func_start Func_80b6ae0  @ 0x080b6ae0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r2, #0
	mov	r8, r2
	mov	r7, #6
	mov	r0, #0
	cmp	r6, #0
	beq	.Lb6b30
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lb6b02
	mov	r7, #3
.Lb6b02:
	mov	r5, #0x80
	add	r7, #0x80
	cmp	r5, r7
	bge	.Lb6b2a
.Lb6b0a:
	mov	r0, r5
	bl	_GetUnit
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb6b24
	mov	r3, #1
	strh	r5, [r6]
	add	r8, r3
	add	r6, #2
.Lb6b24:
	add	r5, #1
	cmp	r5, r7
	blt	.Lb6b0a
.Lb6b2a:
	ldr	r3, =0xff
	strh	r3, [r6]
	mov	r0, r8
.Lb6b30:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b6ae0

.thumb_func_start Func_80b6b40  @ 0x080b6b40
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r10, r0
	mov	r0, #0xb6
	mov	r6, r1
	mov	r2, #6
	mov	r1, #0
	lsl	r0, #1
	sub	sp, #0x14
	mov	r8, r1
	mov	r9, r2
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lb6b68
	mov	r3, #3
	mov	r9, r3
.Lb6b68:
	mov	r3, #1
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.Lb6baa
	add	r5, sp, #4
	mov	r0, r5
	bl	Func_80b6a60
	cmp	r8, r0
	bge	.Lb6baa
	mov	r2, r5
	mov	r5, r0
.Lb6b82:
	ldrh	r7, [r2]
	add	r2, #2
	mov	r0, r7
	str	r2, [sp]
	bl	_GetUnit
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	ldr	r2, [sp]
	cmp	r3, #0
	ble	.Lb6ba4
	cmp	r6, #0
	beq	.Lb6ba0
	strh	r7, [r6]
	add	r6, #2
.Lb6ba0:
	mov	r3, #1
	add	r8, r3
.Lb6ba4:
	sub	r5, #1
	cmp	r5, #0
	bne	.Lb6b82
.Lb6baa:
	mov	r3, #2
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.Lb6bea
	mov	r7, r9
	mov	r5, #0x80
	add	r7, #0x80
	cmp	r5, r7
	bge	.Lb6bea
.Lb6bbe:
	mov	r0, r5
	bl	_GetUnit
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb6be4
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	ble	.Lb6be4
	cmp	r6, #0
	beq	.Lb6be0
	strh	r5, [r6]
	add	r6, #2
.Lb6be0:
	mov	r2, #1
	add	r8, r2
.Lb6be4:
	add	r5, #1
	cmp	r5, r7
	blt	.Lb6bbe
.Lb6bea:
	cmp	r6, #0
	beq	.Lb6bf2
	ldr	r3, =0xff
	strh	r3, [r6]
.Lb6bf2:
	mov	r0, r8
	add	sp, #0x14
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b6b40

.thumb_func_start Func_80b6c08  @ 0x080b6c08
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e74
	mov	r6, r0
	ldr	r0, [r3]
	mov	r3, #1
	and	r3, r6
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb6c44
	mov	r3, #0x58
	ldrsh	r3, [r0, r3]
	cmp	r3, #0xff
	beq	.Lb6c44
	mov	r2, r0
	add	r2, #0x58
.Lb6c26:
	mov	r7, #0
	ldrsh	r3, [r2, r7]
	ldrh	r4, [r2]
	cmp	r3, #0xfe
	beq	.Lb6c3a
	cmp	r1, #0
	beq	.Lb6c38
	strh	r4, [r1]
	add	r1, #2
.Lb6c38:
	add	r5, #1
.Lb6c3a:
	add	r2, #2
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	cmp	r3, #0xff
	bne	.Lb6c26
.Lb6c44:
	mov	r3, #2
	and	r3, r6
	cmp	r3, #0
	beq	.Lb6c76
	add	r2, r0, #2
	mov	r3, #0x64
	ldrsh	r3, [r2, r3]
	mov	r12, r2
	cmp	r3, #0xff
	beq	.Lb6c76
	mov	r0, #0x64
.Lb6c5a:
	ldrsh	r3, [r2, r0]
	ldrh	r4, [r2, r0]
	cmp	r3, #0xfe
	beq	.Lb6c6c
	cmp	r1, #0
	beq	.Lb6c6a
	strh	r4, [r1]
	add	r1, #2
.Lb6c6a:
	add	r5, #1
.Lb6c6c:
	add	r0, #2
	mov	r2, r12
	ldrsh	r3, [r2, r0]
	cmp	r3, #0xff
	bne	.Lb6c5a
.Lb6c76:
	cmp	r1, #0
	beq	.Lb6c7e
	ldr	r3, .Lb6c88	@ 0xff
	strh	r3, [r1]
.Lb6c7e:
	mov	r0, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lb6c88:
	.word	0xff
.func_end Func_80b6c08

