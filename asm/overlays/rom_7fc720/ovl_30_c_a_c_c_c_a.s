	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_973_20080c0
	push	{r5, r6, r7, lr}
	sub	sp, #0x20
	mov	r7, r0
	mov	r0, sp
	bl	__Func_80796c4
	cmp	r0, #0
	ble	.Le4
	mov	r6, sp
	mov	r5, r0
.Ld4:
	ldrh	r0, [r6]
	mov	r1, r7
	sub	r5, #1
	add	r6, #2
	bl	OvlFunc_973_20080a0
	cmp	r5, #0
	bne	.Ld4
.Le4:
	add	sp, #0x20
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_973_20080c0

.thumb_func_start OvlFunc_973_20080ec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #4
	bl	__GetUnit
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #9
	mov	r8, r0
	mov	r0, #0
	bl	__CreateUIBox
	ldr	r5, =0xc20
	mov	r6, r0
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	__DrawSmallText
	add	r0, r5, #1
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x10
	add	r5, #2
	bl	__DrawSmallText
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x20
	mov	r7, #1
	bl	__DrawSmallText
.L140:
	cmp	r7, #0
	beq	.L176
	mov	r0, r6
	bl	__Func_8016498
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x30
	bl	__Func_801e8b0
	ldr	r0, =s_Lv_973__020088d0
	mov	r1, r6
	mov	r2, #0x30
	mov	r3, #0x30
	bl	__UIDrawText
	mov	r3, r8
	ldrb	r0, [r3, #0xf]
	mov	r3, #0x30
	str	r3, [sp]
	mov	r1, #0
	mov	r2, r6
	mov	r3, #0x48
	mov	r7, #0
	bl	__Func_801ea08
.L176:
	ldr	r5, =gKeyPress
	ldr	r3, [r5]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L18c
	ldr	r3, [r5]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.L19a
.L18c:
	mov	r0, #5
	bl	OvlFunc_973_20080c0
	mov	r0, #0x5d
	bl	__PlaySound
	mov	r7, #1
.L19a:
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1b2
	mov	r0, #1
	bl	OvlFunc_973_20080c0
	mov	r0, #0x5b
	bl	__PlaySound
	mov	r7, #1
.L1b2:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1fa
	mov	r0, #0x71
	bl	__PlaySound
	mov	r0, r6
	bl	__Func_8016498
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #1
	mov	r0, r6
	bl	__CloseUIBox
	mov	r0, #0
	bl	__CalcStats
	mov	r0, #1
	bl	__CalcStats
	mov	r0, #3
	bl	__CalcStats
	mov	r0, #2
	bl	__CalcStats
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.L1fa:
	mov	r0, #1
	bl	__WaitFrames
	b	.L140
.func_end OvlFunc_973_20080ec

.thumb_func_start OvlFunc_973_2008214
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r2, #0
	mov	r0, #0x70
	sub	sp, #4
	mov	r8, r2
	bl	__PlaySound
	mov	r5, #2
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #7
	mov	r0, #0
	str	r5, [sp]
	bl	__CreateUIBox
	mov	r1, #8
	mov	r7, r0
	mov	r2, #0x1c
	mov	r3, #0xa
	mov	r0, #0
	str	r5, [sp]
	bl	__CreateUIBox
	mov	r6, #1
	mov	r9, r0
	mov	r10, r6
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	ldr	r1, =0x50001c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001e8
	ldr	r2, =0x80000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	bl	__WaitFrames
.L26c:
	mov	r3, r10
	cmp	r3, #0
	beq	.L306
	mov	r3, #0x87
	lsl	r3, #1
	mov	r1, #0x87
	mov	r2, #0
	add	r0, r6, r3
	lsl	r1, #1
	mov	r10, r2
	bl	_modsi3_RAM
	mov	r6, r0
	mov	r0, r7
	bl	__Func_8016498
	mov	r0, r7
	bl	__Func_80164ac
	ldr	r0, =.L8d4
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0
	bl	__UIDrawText
	mov	r2, r10
	str	r2, [sp]
	mov	r0, r6
	mov	r1, #0
	mov	r2, r7
	mov	r3, #0x50
	bl	__Func_801e9d4
	bl	__Func_8078500
	cmp	r0, #0
	beq	.L2fa
	ldr	r5, =0x1ff
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x20
	and	r5, r6
	ldr	r0, =.L8e0
	bl	__UIDrawText
	mov	r0, r5
	bl	__GetItemInfo
	ldr	r0, =0x182
	mov	r1, r7
	add	r0, r5, r0
	mov	r2, #0x78
	mov	r3, #0
	bl	__Func_801e7c0
	ldr	r3, =0x75
	add	r5, r3
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0x10
	bl	__Func_801e7c0
	mov	r0, r9
	bl	__Func_8016498
	mov	r0, r9
	mov	r1, r6
	bl	__Func_80a4924
	b	.L306
.L2fa:
	ldr	r0, =.L8f8
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x20
	bl	__UIDrawText
.L306:
	ldr	r5, =gKeyPress
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L326
	mov	r0, r6
	bl	__GiveItem
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L330
	mov	r0, #0xaf
	bl	__PlaySound
.L326:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L338
.L330:
	mov	r0, #0x71
	bl	__PlaySound
	b	.L442
.L338:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L354
	mov	r2, #0xff
	mov	r3, #1
	mov	r0, #0x6f
	mov	r8, r2
	sub	r6, #1
	mov	r10, r3
	bl	__PlaySound
.L354:
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L36c
	mov	r2, #1
	mov	r0, #0x6f
	mov	r8, r2
	add	r6, #1
	mov	r10, r2
	bl	__PlaySound
.L36c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L384
	mov	r3, #1
	mov	r0, #0x6f
	mov	r8, r3
	add	r6, #0xa
	mov	r10, r3
	bl	__PlaySound
.L384:
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L39e
	mov	r2, #0xff
	mov	r3, #1
	mov	r0, #0x6f
	mov	r8, r2
	sub	r6, #0xa
	mov	r10, r3
	bl	__PlaySound
.L39e:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L3b8
	mov	r2, #1
	mov	r0, #0x6f
	mov	r8, r2
	add	r6, #0x1e
	mov	r10, r2
	bl	__PlaySound
.L3b8:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L3d4
	mov	r3, #0xff
	mov	r2, #1
	mov	r0, #0x6f
	mov	r8, r3
	sub	r6, #0x1e
	mov	r10, r2
	bl	__PlaySound
.L3d4:
	mov	r3, r8
	lsl	r5, r3, #24
	mov	r2, #1
	asr	r3, r5, #24
	neg	r2, r2
	cmp	r3, r2
	bne	.L408
	mov	r3, #0x87
	lsl	r3, #1
	mov	r1, #0x87
	add	r0, r6, r3
	b	.L3f2
.L3ec:
	ldr	r2, =0x10d
	mov	r1, #0x87
	add	r0, r6, r2
.L3f2:
	lsl	r1, #1
	bl	_modsi3_RAM
	mov	r6, r0
	ldr	r0, =0x1ff
	and	r0, r6
	bl	__GetItemInfo
	ldrh	r3, [r0, #6]
	cmp	r3, #0
	beq	.L3ec
.L408:
	mov	r3, #0x80
	lsl	r3, #17
	cmp	r5, r3
	bne	.L436
	mov	r2, #0x87
	lsl	r2, #1
	mov	r1, #0x87
	add	r0, r6, r2
	b	.L420
.L41a:
	ldr	r3, =0x10f
	mov	r1, #0x87
	add	r0, r6, r3
.L420:
	lsl	r1, #1
	bl	_modsi3_RAM
	mov	r6, r0
	ldr	r0, =0x1ff
	and	r0, r6
	bl	__GetItemInfo
	ldrh	r3, [r0, #6]
	cmp	r3, #0
	beq	.L41a
.L436:
	mov	r2, #0
	mov	r0, #1
	mov	r8, r2
	bl	__WaitFrames
	b	.L26c
.L442:
	mov	r0, r7
	bl	__Func_8016498
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, r7
	mov	r1, #1
	bl	__CloseUIBox
	mov	r0, r9
	mov	r1, #1
	bl	__CloseUIBox
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_973_2008214

.thumb_func_start OvlFunc_973_20084b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r2, #0
	mov	r0, #0x70
	sub	sp, #4
	mov	r8, r2
	bl	__PlaySound
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0xc
	mov	r0, #0
	bl	__CreateUIBox
	mov	r6, #1
	mov	r7, r0
	mov	r10, r6
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	ldr	r1, =0x50001c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001e8
	ldr	r2, =0x80000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	bl	__WaitFrames
.L4f8:
	mov	r3, r10
	cmp	r3, #0
	beq	.L574
	mov	r3, #0x87
	lsl	r3, #1
	mov	r1, #0x87
	mov	r2, #0
	add	r0, r6, r3
	lsl	r1, #1
	mov	r10, r2
	bl	_modsi3_RAM
	mov	r6, r0
	mov	r0, r7
	bl	__Func_8016498
	mov	r0, r7
	bl	__Func_80164ac
	ldr	r0, =.L90c
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0
	bl	__UIDrawText
	mov	r2, r10
	str	r2, [sp]
	mov	r0, r6
	mov	r1, #0
	mov	r2, r7
	mov	r3, #0x50
	bl	__Func_801e9d4
	ldr	r5, =0x3fff
	ldr	r0, =.L914
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x48
	bl	__UIDrawText
	ldr	r0, =0x333
	and	r5, r6
	add	r0, r5, r0
	mov	r1, r7
	mov	r2, #0x78
	mov	r3, #0
	bl	__Func_801e7c0
	ldr	r3, =0x53a
	add	r5, r3
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x18
	bl	__Func_801e7c0
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x30
	bl	__DrawSmallText
.L574:
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L5b2
	mov	r0, #0x71
	bl	__PlaySound
	mov	r0, r7
	bl	__Func_8016498
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, r7
	mov	r1, #1
	bl	__CloseUIBox
	mov	r0, r9
	mov	r1, #1
	bl	__CloseUIBox
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.L5b2:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L5ce
	mov	r3, #0xff
	mov	r2, #1
	mov	r0, #0x6f
	mov	r8, r3
	sub	r6, #1
	mov	r10, r2
	bl	__PlaySound
.L5ce:
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L5e6
	mov	r3, #1
	mov	r0, #0x6f
	mov	r8, r3
	add	r6, #1
	mov	r10, r3
	bl	__PlaySound
.L5e6:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L5fe
	mov	r2, #1
	mov	r0, #0x6f
	mov	r8, r2
	add	r6, #0xa
	mov	r10, r2
	bl	__PlaySound
.L5fe:
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L618
	mov	r3, #0xff
	mov	r2, #1
	mov	r0, #0x6f
	mov	r8, r3
	sub	r6, #0xa
	mov	r10, r2
	bl	__PlaySound
.L618:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L632
	mov	r3, #1
	mov	r0, #0x6f
	mov	r8, r3
	add	r6, #0x1e
	mov	r10, r3
	bl	__PlaySound
.L632:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L64e
	mov	r2, #0xff
	mov	r3, #1
	mov	r0, #0x6f
	mov	r8, r2
	sub	r6, #0x1e
	mov	r10, r3
	bl	__PlaySound
.L64e:
	mov	r2, r8
	lsl	r5, r2, #24
	mov	r2, #1
	asr	r3, r5, #24
	neg	r2, r2
	cmp	r3, r2
	bne	.L682
	mov	r3, #0x87
	lsl	r3, #1
	mov	r1, #0x87
	add	r0, r6, r3
	b	.L66c
.L666:
	ldr	r2, =0x10d
	mov	r1, #0x87
	add	r0, r6, r2
.L66c:
	lsl	r1, #1
	bl	_modsi3_RAM
	mov	r6, r0
	ldr	r0, =0x3fff
	and	r0, r6
	bl	__GetMoveInfo
	ldrb	r3, [r0, #4]
	cmp	r3, #0
	beq	.L666
.L682:
	mov	r3, #0x80
	lsl	r3, #17
	cmp	r5, r3
	bne	.L6b0
	mov	r2, #0x87
	lsl	r2, #1
	mov	r1, #0x87
	add	r0, r6, r2
	b	.L69a
.L694:
	ldr	r3, =0x10f
	mov	r1, #0x87
	add	r0, r6, r3
.L69a:
	lsl	r1, #1
	bl	_modsi3_RAM
	mov	r6, r0
	ldr	r0, =0x3fff
	and	r0, r6
	bl	__GetMoveInfo
	ldrb	r3, [r0, #4]
	cmp	r3, #0
	beq	.L694
.L6b0:
	mov	r2, #0
	mov	r0, #1
	mov	r8, r2
	bl	__WaitFrames
	b	.L4f8
.func_end OvlFunc_973_20084b0

