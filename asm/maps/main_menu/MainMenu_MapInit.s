	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MainMenu_MapInit
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =0xfffffddc
	mov	r0, #0
	add	sp, r5
	str	r0, [sp, #0x14]
	bl	OvlFunc_880_2008054
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_880_20081fc
	bl	__StartTask
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, [sp, #0x14]
	add	r3, r1
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	ldr	r3, =gState
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #2
	bne	.L4a0
.L416:
	ldr	r5, =7
	mov	r1, #5
	mov	r0, r5
	bl	__Func_801776c
	mov	r0, #1
	bl	__Func_8091d84
	mov	r7, r0
	bl	__Func_8019a54
	cmp	r7, #0
	bne	.L450
	add	r0, r5, #1
	mov	r1, #1
	bl	__Func_801776c
	ldr	r3, =gState
	ldr	r2, =0x20f
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
	bl	__Menu_Save
	mov	r3, #1
	mov	r7, r0
	neg	r3, r3
	cmp	r7, r3
	beq	.L416
.L450:
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__MapTransitionOut
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0x96
	lsl	r0, #1
	bl	__CutsceneWait
	ldr	r0, =2
	mov	r1, #0x48
	bl	__SetDestMap
	bl	.Lcbe
.L474:
	mov	r0, #0x70
	bl	__PlaySound
	mov	r0, r10
	bl	__Func_8016478
	mov	r0, r10
	mov	r1, #2
	bl	__CloseUIBox
	mov	r1, #2
	ldr	r0, [sp, #0x10]
	bl	__CloseUIBox
	mov	r1, #2
	ldr	r0, [sp, #0xc]
	bl	__CloseUIBox
	mov	r0, #1
	bl	__WaitFrames
	b	.L4a8
.L4a0:
	add	r0, sp, #0x14
	ldr	r3, =iwram_3001ca0
	ldrb	r0, [r0]
	strb	r0, [r3]
.L4a8:
	bl	__Func_801f77c
	mov	r6, r0
	cmp	r6, #0
	bge	.L4d2
	ldr	r3, =gDebugMode
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L4d2
	ldr	r1, =0x22a
	ldr	r3, =gState
	mov	r2, #1
	add	r3, r1
	strb	r2, [r3]
	ldr	r3, =iwram_3001d08
	ldr	r0, =0xa
	strb	r2, [r3]
	mov	r1, #1
	mov	r2, #8
	bl	__Func_8019aa0
.L4d2:
	cmp	r6, #0
	bne	.L4f6
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	bne	.L4f6
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_880_2008154
	bl	__StartTask
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #1
	str	r3, [sp, #0x14]
.L4f6:
	cmp	r6, #0
	ble	.L502
	bl	__Func_80289e8
	mov	r6, r0
	b	.L504
.L502:
	mov	r6, #0
.L504:
	cmp	r6, #0
	bne	.L57a
	bl	__GameInit
	ldr	r2, =gState
	ldr	r0, =0x205
	ldr	r1, =0x206
	add	r3, r2, r0
	add	r2, r1
	ldrb	r0, [r3]
	ldrb	r1, [r2]
	bl	__SetUIColor
	mov	r5, #1
	mov	r7, #0
.L522:
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, r7
	bl	__UI_NameEntry
	mov	r2, #1
	mov	r6, r0
	neg	r2, r2
	cmp	r6, r2
	bne	.L540
	cmp	r7, #0
	beq	.L4a8
	sub	r7, #1
	b	.L522
.L540:
	ldr	r3, =.L16b2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	beq	.L54c
	mov	r5, #4
.L54c:
	ldr	r3, =.L16b4
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L558
	mov	r5, #7
.L558:
	add	r7, #1
	cmp	r7, r5
	blt	.L522
	bl	__Func_8077f40
	ldr	r1, =gState
	mov	r0, #0xe0
	ldr	r3, =8
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe1
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x14
	strh	r3, [r2]
	b	.Lc96
.L57a:
	cmp	r6, #1
	beq	.L580
	b	.L6a0
.L580:
	mov	r0, #1
	bl	__SystemMsgBox
	mov	r6, r0
	mov	r0, #1
	neg	r0, r0
	cmp	r6, r0
	beq	.L4a8
	ldr	r0, =0x109
	bl	__SetFlag
	ldr	r5, =gState
	ldr	r1, =0x205
	ldr	r2, =0x206
	add	r3, r5, r1
	ldrb	r0, [r3]
	add	r3, r5, r2
	ldrb	r1, [r3]
	bl	__SetUIColor
	bl	__Func_8077cb8
	ldr	r3, [r5]
	cmp	r3, r0
	beq	.L5d8
	mov	r0, #0xe2
	lsl	r0, #1
	add	r3, r5, r0
	mov	r1, #0xe0
	ldrh	r2, [r3]
	lsl	r1, #1
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r2, #0xe3
	lsl	r2, #1
	add	r3, r5, r2
	sub	r0, #2
	ldrh	r3, [r3]
	add	r2, r5, r0
	strh	r3, [r2]
	sub	r0, #0xb9
	bl	__ClearFlag
	b	.L696
.L5d8:
	ldr	r3, =gKeyHeld
	mov	r2, #0x82
	ldr	r3, [r3]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, r2
	bne	.L61e
	bl	OvlFunc_880_2008384
	cmp	r0, #0
	beq	.L5f2
	ldr	r0, =6
	b	.L664
.L5f2:
	mov	r1, #0xe2
	lsl	r1, #1
	add	r3, r5, r1
	mov	r0, #0xe0
	ldrh	r2, [r3]
	lsl	r0, #1
	add	r3, r5, r0
	strh	r2, [r3]
	add	r1, #2
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r0, #2
	add	r2, r5, r0
	strh	r3, [r2]
	sub	r0, #0xb9
	bl	__ClearFlag
	mov	r0, #0x9f
	lsl	r0, #1
	bl	__SetFlag
	b	.L696
.L61e:
	ldr	r3, =ewram_2001000
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r1
	ldr	r2, [r5, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L696
	ldr	r6, =4
	mov	r1, #9
	mov	r0, r6
	bl	__Func_801776c
	add	r0, r6, #1
	mov	r1, #0xd
	bl	__Func_801776c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	__YesNoMenu
	cmp	r0, #0
	beq	.L656
	bl	__Func_8019a54
	b	.L4a8
.L656:
	bl	__Func_8019a54
	bl	OvlFunc_880_2008384
	cmp	r0, #0
	beq	.L66c
	add	r0, r6, #2
.L664:
	mov	r1, #9
	bl	__Func_801776c
	b	.L4a8
.L66c:
	mov	r2, #0xe2
	lsl	r2, #1
	add	r3, r5, r2
	mov	r0, #0xe0
	ldrh	r2, [r3]
	lsl	r0, #1
	add	r3, r5, r0
	mov	r1, #0xe3
	strh	r2, [r3]
	lsl	r1, #1
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r0, #2
	add	r2, r5, r0
	strh	r3, [r2]
	sub	r0, #0xb9
	bl	__ClearFlag
	ldr	r0, =0x13f
	bl	__SetFlag
.L696:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__ClearFlag
	b	.Lc96
.L6a0:
	cmp	r6, #2
	bne	.L6aa
	bl	__Func_801fba8
	b	.L4a8
.L6aa:
	cmp	r6, #3
	bne	.L714
	bl	__Func_801fc84
	b	.L4a8

	.pool_aligned

.L714:
	cmp	r6, #4
	bne	.L7b2
	mov	r0, #4
	bl	__SystemMsgBox
	mov	r1, #1
	mov	r6, r0
	neg	r1, r1
	cmp	r6, r1
	bne	.L72a
	b	.L4a8
.L72a:
	ldr	r5, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	str	r2, [r3]
	ldr	r0, =0x952
	bl	__GetFlag
	cmp	r0, #0
	beq	.L774
	bl	__Func_807a7a0
	mov	r0, #0
	bl	__Func_8079664
	mov	r0, #1
	bl	__Func_8079664
	mov	r0, #2
	bl	__Func_8079664
	mov	r0, #3
	bl	__Func_8079664
	mov	r0, #0
	bl	__AddPartyMember
	mov	r0, #1
	bl	__AddPartyMember
	mov	r0, #2
	bl	__AddPartyMember
	mov	r0, #3
	bl	__AddPartyMember
.L774:
	ldr	r0, =0x205
	ldr	r1, =0x206
	add	r3, r5, r0
	ldrb	r0, [r3]
	add	r3, r5, r1
	ldrb	r1, [r3]
	bl	__SetUIColor
	ldr	r0, =0x109
	bl	__ClearFlag
	mov	r0, #0x83
	lsl	r0, #1
	bl	__ClearFlag
	mov	r0, #0xbf
	lsl	r0, #1
	bl	__SetFlag
	ldr	r2, =iwram_3001ca0
	mov	r3, #1
	strb	r3, [r2]
	ldr	r0, =0xbe
	mov	r1, #1
	bl	__SetDestMap
	b	.Lc96
.L7aa:
	mov	r7, #1
	b	.L8e0
.L7ae:
	mov	r4, #0
	b	.L95e
.L7b2:
	cmp	r6, #5
	beq	.L7b8
	b	.L4a8
.L7b8:
	mov	r0, #5
	bl	__SystemMsgBox
	mov	r2, #1
	mov	r6, r0
	neg	r2, r2
	cmp	r6, r2
	bne	.L7ca
	b	.L4a8
.L7ca:
	ldr	r2, =gState
	ldr	r0, =0x205
	ldr	r1, =0x206
	add	r3, r2, r0
	add	r2, r1
	ldrb	r0, [r3]
	ldrb	r1, [r2]
	bl	__SetUIColor
.L7dc:
	mov	r0, #0
	bl	__DataTransferMenu
	mov	r2, #1
	mov	r6, r0
	neg	r2, r2
	cmp	r6, r2
	beq	.L7b8
	cmp	r6, #1
	beq	.L7f2
	b	.L9cc
.L7f2:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #5
	mov	r2, #0x12
	mov	r3, #8
	mov	r0, #6
	bl	__CreateUIBox
	ldr	r5, =0xc83
	mov	r6, r0
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #4
	bl	__DrawSmallText
	add	r0, r5, #1
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x10
	add	r5, #3
	bl	__DrawSmallText
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x24
	bl	__DrawSmallText
	bl	__Func_8005d10
	mov	r0, #0xa
	bl	__WaitFrames
	ldr	r2, =ewram_2002224
	ldr	r3, .L860	@ 0x30
	strh	r3, [r2]
	strh	r3, [r2, #2]
	strh	r3, [r2, #4]
	strh	r3, [r2, #6]
	ldr	r2, .L860	@ 0x30
	ldr	r3, =ewram_2002024
	mov	r7, #0
	mov	r5, #3
	mov	r1, #0
.L84c:
	add	r1, #1
	strh	r2, [r3]
	strh	r2, [r3, #2]
	strh	r2, [r3, #4]
	strh	r2, [r3, #6]
	add	r3, #0x18
	cmp	r1, #4
	bne	.L84c
	b	.L8ce

	.align	2, 0
.L860:
	.word	0x30
	.pool

.L88c:
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, r5
	and	r3, r2
	cmp	r3, r5
	bne	.L8c8
	ldr	r3, =REG_SIOCNT
	ldr	r3, [r3]
	lsl	r3, #26
	mov	r2, #1
	lsr	r3, #30
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, =ewram_2002024
	lsl	r2, #3
	add	r2, r3
	ldrh	r3, [r2]
	cmp	r3, #0x55
	bne	.L8c8
	ldrh	r3, [r2, #2]
	cmp	r3, #0x56
	bne	.L8c8
	ldrh	r3, [r2, #4]
	cmp	r3, #0x54
	bne	.L8c8
	ldrh	r3, [r2, #6]
	cmp	r3, #0x53
	bne	.L8c8
	b	.L7aa
.L8c8:
	mov	r0, #1
	bl	__WaitFrames
.L8ce:
	ldr	r3, =gKeyPress
	ldr	r2, [r3]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.L88c
	mov	r0, #0x71
	bl	__PlaySound
.L8e0:
	mov	r0, r6
	mov	r1, #2
	bl	__CloseUIBox
	cmp	r7, #0
	bne	.L8ee
	b	.L7dc
.L8ee:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xa
	mov	r2, #0x14
	mov	r3, #4
	mov	r0, #5
	bl	__CreateUIBox
	mov	r6, r0
	mov	r2, #0
	mov	r3, #4
	mov	r1, r6
	ldr	r0, =0xc85
	bl	__DrawSmallText
	mov	r0, #0xa
	bl	__WaitFrames
	ldr	r1, =0x1004
	ldr	r0, =ewram_2000000
	bl	__Func_80063bc
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r5, #0
	mov	r1, #3
	mov	r4, #1
	mov	r7, #0
	b	.L93a
.L92a:
	mov	r0, #1
	str	r1, [sp, #8]
	str	r4, [sp, #4]
	bl	__WaitFrames
	ldr	r4, [sp, #4]
	ldr	r1, [sp, #8]
	add	r7, #1
.L93a:
	ldr	r3, =0x927bf
	cmp	r7, r3
	bgt	.L95e
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, r1
	and	r3, r2
	add	r5, #1
	cmp	r3, r1
	bne	.L950
	mov	r5, #0
.L950:
	cmp	r5, #0xa
	bne	.L956
	b	.L7ae
.L956:
	ldr	r3, =ewram_2002080
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L92a
.L95e:
	cmp	r4, #0
	bne	.L986
	mov	r0, r6
	bl	__Func_8016478
	ldr	r0, =0xc87
	mov	r1, r6
	mov	r2, #0
	mov	r3, #4
	bl	__DrawSmallText
	ldr	r7, =gKeyPress
	mov	r5, #1
.L978:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r7]
	and	r3, r5
	cmp	r3, #0
	beq	.L978
.L986:
	mov	r0, #0xa
	bl	__WaitFrames
	bl	__Func_8006358
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r0, r6
	bl	__Func_8016478
	mov	r0, r6
	mov	r1, #2
	bl	__CloseUIBox
	b	.L4a8
.L9a6:
	mov	r0, #0x71
	bl	__PlaySound
	mov	r0, r10
	bl	__Func_8016478
	mov	r0, r10
	mov	r1, #2
	bl	__CloseUIBox
	mov	r1, #2
	ldr	r0, [sp, #0x10]
	bl	__CloseUIBox
	mov	r1, #2
	ldr	r0, [sp, #0xc]
	bl	__CloseUIBox
	b	.L9d2
.L9cc:
	cmp	r6, #0
	beq	.L9d2
	b	.Lc8a
.L9d2:
	mov	r0, #1
	bl	__DataTransferMenu
	mov	r6, r0
	mov	r0, #1
	neg	r0, r0
	cmp	r6, r0
	bne	.L9e4
	b	.L7dc
.L9e4:
	add	r5, sp, #0x15c
	mov	r2, r5
	mov	r1, r6
	mov	r0, #0
	bl	OvlFunc_880_2008de4
	mov	r1, r5
	mov	r9, r0
	bl	OvlFunc_880_20092c8
	mov	r3, r9
	lsl	r0, #16
	add	r3, #1
	asr	r2, r0, #16
	mov	r1, r9
	lsr	r0, #24
	strb	r0, [r5, r1]
	strb	r2, [r5, r3]
	mov	r2, #2
	add	r9, r2
	mov	r1, r9
	add	r2, sp, #0x1c
	mov	r0, r5
	bl	OvlFunc_880_20091e4
	mov	r9, r0
	bl	__LoadStaticUIGFX
	mov	r6, #2
	mov	r2, #0x14
	mov	r1, #4
	mov	r3, #0xc
	mov	r0, #5
	str	r6, [sp]
	bl	__CreateUIBox
	mov	r3, #0
	mov	r1, #0x32
	mov	r10, r0
	mov	r0, r9
	mov	r11, r3
	bl	_divsi3_RAM
	add	r0, #1
	mov	r8, r0
	mov	r1, #0
	mov	r2, #0xa
	mov	r3, #4
	mov	r0, #0xa
	str	r6, [sp]
	bl	__CreateUIBox
	ldr	r5, =0xc82
	str	r0, [sp, #0xc]
	ldr	r1, [sp, #0xc]
	mov	r0, r5
	mov	r2, #6
	mov	r3, #4
	bl	__DrawSmallText
	mov	r0, r8
	mov	r7, #1
	cmp	r0, #1
	bne	.La82
	mov	r1, #0x10
	mov	r2, #0x14
	mov	r3, #3
	mov	r0, #5
	str	r6, [sp]
	bl	__CreateUIBox
	str	r0, [sp, #0x10]
	ldr	r1, [sp, #0x10]
	sub	r0, r5, #2
	mov	r2, #0x50
	mov	r3, #0
	bl	__Func_801e7c0
	b	.La9e
.La82:
	mov	r1, #0x10
	mov	r2, #0x1c
	mov	r3, #3
	mov	r0, #1
	str	r6, [sp]
	bl	__CreateUIBox
	str	r0, [sp, #0x10]
	ldr	r1, [sp, #0x10]
	sub	r0, r5, #1
	mov	r2, #0
	mov	r3, #0
	bl	__Func_801e7c0
.La9e:
	ldr	r0, =0x6006000
	bl	__Func_8021a18
	mov	r0, r10
	bl	__Func_8016478
.Laaa:
	ldr	r0, =0x6002500
	bl	__Func_80219c8
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.Labe
	b	.L9a6
.Labe:
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lada
	add	r11, r3
	mov	r7, #1
	cmp	r11, r8
	bne	.Lad2
	b	.L474
.Lad2:
	mov	r0, #0x6f
	bl	__PlaySound
	b	.Lb58
.Lada:
	ldr	r3, =gKeyPress
	ldr	r2, [r3]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.Lb30
	mov	r0, r8
	cmp	r0, #1
	ble	.Lb30
	mov	r0, #0x6f
	bl	__PlaySound
	mov	r0, r11
	add	r0, r8
	sub	r0, #1
	b	.Lb4e

	.pool_aligned

.Lb30:
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.Lb58
	mov	r2, r8
	cmp	r2, #1
	ble	.Lb58
	mov	r0, #0x6f
	bl	__PlaySound
	mov	r0, r11
	add	r0, r8
	add	r0, #1
.Lb4e:
	mov	r1, r8
	bl	_modsi3_RAM
	mov	r7, #1
	mov	r11, r0
.Lb58:
	cmp	r7, #1
	beq	.Lb5e
	b	.Lc82
.Lb5e:
	mov	r0, r10
	bl	__Func_8016478
	mov	r7, #0
	mov	r5, #2
.Lb68:
	mov	r2, r5
	mov	r0, r10
	mov	r1, #0
	mov	r3, #0x12
	add	r7, #1
	str	r5, [sp]
	bl	__Func_801e41c
	add	r5, #2
	cmp	r7, #4
	bne	.Lb68
	mov	r3, r8
	cmp	r3, #1
	ble	.Lbf2
	mov	r7, #0
	cmp	r3, #0
	beq	.Lbb4
	neg	r3, r3
	mov	r5, r3
	mov	r6, #0
	add	r5, #0x12
.Lb92:
	ldr	r0, =0xf301
	add	r1, r7, r0
	cmp	r7, r11
	bne	.Lb9e
	ldr	r2, =0xf30b
	add	r1, r7, r2
.Lb9e:
	mov	r3, #1
	mov	r2, r5
	mov	r0, r10
	neg	r3, r3
	add	r7, #1
	str	r6, [sp]
	add	r5, #1
	bl	__Func_8019000
	cmp	r7, r8
	bne	.Lb92
.Lbb4:
	mov	r3, r8
	mov	r2, #0x11
	sub	r2, r3
	mov	r3, #1
	mov	r5, #0
	mov	r0, r10
	ldr	r1, =0xf128
	neg	r3, r3
	str	r5, [sp]
	bl	__Func_8019000
	mov	r3, #1
	mov	r0, r10
	ldr	r1, =0xf129
	mov	r2, #0x12
	neg	r3, r3
	str	r5, [sp]
	bl	__Func_8019000
	ldr	r3, =iwram_3001e8c
	mov	r2, r10
	ldr	r1, [r3]
	ldr	r0, =0xea3
	ldrh	r3, [r2, #0xe]
	add	r1, r0
	lsr	r3, #2
	mov	r2, #2
	lsl	r2, r3
	ldrb	r3, [r1]
	orr	r2, r3
	strb	r2, [r1]
.Lbf2:
	mov	r3, #0x32
	mov	r0, r11
	mul	r0, r3
	mov	r6, r0
	add	r6, #0x32
	cmp	r6, r9
	ble	.Lc02
	mov	r6, r9
.Lc02:
	mov	r7, r0
	mov	r4, #0
	cmp	r7, r6
	beq	.Lc80
.Lc0a:
	add	r3, sp, #0x1c
	ldrb	r3, [r3, r7]
	mov	r0, #0x3f
	and	r0, r3
	add	r1, sp, #0x18
	str	r4, [sp, #4]
	bl	OvlFunc_880_20082f4
	mov	r0, r7
	mov	r1, #0xa
	bl	_modsi3_RAM
	ldr	r4, [sp, #4]
	cmp	r0, #4
	ble	.Lc4a
	mov	r0, r4
	mov	r1, #0xa
	bl	_modsi3_RAM
	ldr	r4, [sp, #4]
	mov	r5, r0
	mov	r1, #0xa
	mov	r0, r4
	bl	_divsi3_RAM
	lsl	r2, r5, #1
	mov	r3, r0
	add	r2, r5
	lsl	r2, #2
	lsl	r3, #4
	add	r2, #0x12
	b	.Lc6c
.Lc4a:
	mov	r0, r4
	mov	r1, #0xa
	str	r4, [sp, #4]
	bl	_modsi3_RAM
	ldr	r4, [sp, #4]
	mov	r5, r0
	mov	r1, #0xa
	mov	r0, r4
	bl	_divsi3_RAM
	lsl	r2, r5, #1
	mov	r3, r0
	add	r2, r5
	lsl	r2, #2
	lsl	r3, #4
	add	r2, #8
.Lc6c:
	add	r3, #2
	add	r0, sp, #0x18
	mov	r1, r10
	bl	__Func_801e858
	ldr	r4, [sp, #4]
	add	r7, #1
	add	r4, #1
	cmp	r7, r6
	bne	.Lc0a
.Lc80:
	mov	r7, #0
.Lc82:
	mov	r0, #1
	bl	__WaitFrames
	b	.Laaa
.Lc8a:
	mov	r0, #0x96
	lsl	r0, #1
	bl	__WaitFrames
	bl	.L4a8
.Lc96:
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xb8
	ldr	r3, [r3]
	ldr	r2, =0x3e7
	lsl	r0, #1
	add	r3, r0
	strh	r2, [r3]
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x11
	bl	__PlaySound
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x3c
	bl	__CutsceneWait
.Lcbe:
	mov	r0, #0
	mov	r3, #0x89
	lsl	r3, #2
	add	sp, r3
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end MainMenu_MapInit

