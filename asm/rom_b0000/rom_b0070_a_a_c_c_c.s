	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b11c4  @ 0x080b11c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r11, r1
	mov	r9, r2
	ldr	r7, [r3]
	cmp	r0, #0
	beq	.Lb1244
	ldr	r1, =0x3a7
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r6, #0
	cmp	r6, r3
	bge	.Lb1244
	mov	r3, #0xdb
	mov	r1, #0x8a
	add	r2, r7, #2
	lsl	r3, #2
	lsl	r1, #1
	mov	r10, r2
	mov	r8, r3
	add	r5, r7, r1
.Lb11fe:
	cmp	r6, r11
	bne	.Lb120c
	ldr	r0, [r5]
	mov	r1, #0x1e
	bl	_Sprite_SetAnim
	b	.Lb1214
.Lb120c:
	ldr	r0, [r5]
	mov	r1, #1
	bl	_Sprite_SetAnim
.Lb1214:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x40]
	mov	r1, r8
	mov	r2, r10
	ldrsh	r0, [r2, r1]
	mov	r1, r9
	bl	_Func_807845c
	cmp	r0, #0
	bne	.Lb122e
	ldr	r3, =0xcccc
	str	r3, [r5, #0x40]
.Lb122e:
	ldr	r1, =0x3a7
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #2
	add	r6, #1
	add	r8, r2
	add	r5, #4
	cmp	r6, r3
	blt	.Lb11fe
.Lb1244:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b11c4

.thumb_func_start Func_80b1260  @ 0x080b1260
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	str	r1, [sp, #0x14]
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r10, r0
	mov	r0, r1
	mov	r9, r2
	str	r3, [sp, #0x10]
	bl	_GetUnit
	mov	r7, r0
	mov	r0, r9
	bl	_GetItemInfo
	mov	r5, r0
	mov	r0, #1
	neg	r0, r0
	mov	r1, r10
	str	r0, [sp, #0xc]
	cmp	r1, #0
	bne	.Lb129a
	b	.Lb1450
.Lb129a:
	mov	r0, r10
	bl	_Func_8016478
	mov	r1, r9
	ldr	r0, [sp, #0x14]
	bl	_CanEquipItem
	cmp	r0, #0
	bne	.Lb12ba
	ldr	r0, =0xc8e
	mov	r1, r10
	mov	r2, #8
	mov	r3, #0x18
	bl	_DrawSmallText
	b	.Lb1450
.Lb12ba:
	ldrb	r1, [r5, #2]
	ldr	r0, [sp, #0x14]
	bl	_GetEquippedItem
	ldr	r2, [sp, #0xc]
	cmp	r0, r2
	bne	.Lb1324
	mov	r3, #0xd8
	mov	r1, #0x80
	ldrh	r2, [r7, r3]
	lsl	r1, #2
	mov	r3, r1
	and	r3, r2
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb12f2
	mov	r12, r1
	mov	r1, r7
	add	r1, #0xd8
.Lb12e0:
	add	r5, #1
	cmp	r5, #0xe
	bgt	.Lb12f2
	add	r1, #2
	ldrh	r2, [r1]
	mov	r3, r12
	and	r3, r2
	cmp	r3, #0
	bne	.Lb12e0
.Lb12f2:
	cmp	r5, #0xf
	bne	.Lb1318
	mov	r6, r7
	mov	r5, #0
	add	r6, #0xd8
	b	.Lb1300
.Lb12fe:
	add	r5, #1
.Lb1300:
	cmp	r5, #0xe
	bgt	.Lb1312
	ldrh	r0, [r6]
	bl	_GetItemInfo
	ldrb	r3, [r0, #2]
	add	r6, #2
	cmp	r3, #6
	bne	.Lb12fe
.Lb1312:
	cmp	r5, #0xf
	bne	.Lb1318
	mov	r5, #0
.Lb1318:
	lsl	r0, r5, #1
	b	.Lb1332

	.pool_aligned

.Lb1324:
	lsl	r0, #1
	mov	r3, r0
	add	r3, #0xd8
	ldrh	r3, [r7, r3]
	ldr	r1, =0x1ff
	and	r1, r3
	str	r1, [sp, #0xc]
.Lb1332:
	ldr	r3, .Lb1368	@ 0x200
	mov	r5, r0
	mov	r0, r9
	orr	r0, r3
	mov	r9, r0
	mov	r1, r9
	add	r5, #0xd8
	ldrh	r2, [r7, r5]
	strh	r1, [r7, r5]
	ldr	r0, [sp, #0x14]
	mov	r8, r2
	bl	_CalcStats
	ldrh	r3, [r7, #0x3c]
	add	r2, sp, #0x18
	str	r3, [r2]
	ldrh	r3, [r7, #0x3e]
	mov	r6, r7
	str	r3, [r2, #4]
	add	r6, #0x40
	ldrh	r3, [r6]
	str	r3, [r2, #8]
	mov	r3, r7
	add	r3, #0x42
	str	r3, [sp, #8]
	b	.Lb1370

	.align	2, 0
.Lb1368:
	.word	0x200
	.pool

.Lb1370:
	ldrb	r3, [r3]
	mov	r0, r8
	str	r3, [r2, #0xc]
	strh	r0, [r7, r5]
	ldr	r0, [sp, #0x14]
	mov	r11, r2
	bl	_CalcStats
	ldrh	r3, [r7, #0x3c]
	add	r1, sp, #0x28
	str	r3, [r1]
	ldrh	r3, [r7, #0x3e]
	str	r3, [r1, #4]
	ldrh	r3, [r6]
	str	r3, [r1, #8]
	ldr	r2, [sp, #8]
	ldrb	r3, [r2]
	str	r3, [r1, #0xc]
	mov	r3, #2
	mov	r5, #0
	str	r3, [sp, #4]
	mov	r9, r1
	mov	r8, r5
	mov	r7, #0
.Lb13a0:
	mov	r0, r8
	mov	r1, r9
	ldr	r2, [r0, r1]
	mov	r1, r11
	ldr	r3, [r0, r1]
	cmp	r2, r3
	ble	.Lb13b6
	ldr	r2, [sp, #0x10]
	ldr	r0, =0x39a
	add	r3, r2, r0
	b	.Lb13c2
.Lb13b6:
	cmp	r2, r3
	bge	.Lb13dc
	ldr	r1, [sp, #0x10]
	mov	r2, #0xe6
	lsl	r2, #2
	add	r3, r1, r2
.Lb13c2:
	ldrh	r0, [r3]
	mov	r1, #0x80
	sub	r3, r7, #4
	str	r3, [sp]
	lsl	r1, #23
	mov	r3, #0x38
	mov	r2, r10
	bl	_Func_801eadc
	mov	r3, #0
	mov	r6, r7
	strb	r3, [r0, #4]
	b	.Lb13de
.Lb13dc:
	lsl	r6, r5, #4
.Lb13de:
	add	r1, sp, #0x28
	mov	r3, r8
	ldr	r0, [r3, r1]
	mov	r2, r10
	mov	r1, #3
	mov	r3, #0x20
	str	r7, [sp]
	bl	_Func_801ea08
	mov	r2, r8
	add	r0, sp, #0x28
	mov	r1, r11
	ldr	r3, [r2, r0]
	ldr	r0, [r2, r1]
	cmp	r3, r0
	beq	.Lb140a
	mov	r1, #3
	mov	r2, r10
	mov	r3, #0x48
	str	r6, [sp]
	bl	_Func_801ea08
.Lb140a:
	ldr	r0, =0xc98
	mov	r1, r10
	add	r0, r5, r0
	mov	r2, #0
	mov	r3, r6
	bl	_Func_801e7c0
	ldr	r2, [sp, #4]
	mov	r0, r10
	mov	r3, #0xd
	mov	r1, #0
	str	r2, [sp]
	bl	_Func_801e41c
	ldr	r3, [sp, #4]
	mov	r0, #4
	add	r3, #2
	add	r5, #1
	str	r3, [sp, #4]
	add	r8, r0
	add	r7, #0x10
	cmp	r5, #2
	ble	.Lb13a0
	mov	r2, #1
	ldr	r1, [sp, #0xc]
	neg	r2, r2
	cmp	r1, r2
	beq	.Lb1450
	ldr	r0, =0x182
	mov	r2, #0
	add	r0, r1, r0
	mov	r3, #0x30
	mov	r1, r10
	bl	_Func_801e7c0
.Lb1450:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b1260

.thumb_func_start Func_80b1470  @ 0x080b1470
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r1
	mov	r10, r0
	mov	r0, r5
	sub	sp, #4
	mov	r9, r2
	bl	_GetUnit
	mov	r1, r10
	mov	r8, r0
	mov	r6, #8
	mov	r7, #8
	cmp	r1, #0
	beq	.Lb1522
	mov	r0, r10
	bl	_Func_8016478
	mov	r0, r5
	mov	r1, r9
	bl	_CheckItem
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.Lb14ca
	lsl	r3, r0, #1
	add	r3, #0xd8
	mov	r1, r8
	ldrh	r0, [r1, r3]
	lsr	r0, #11
	add	r0, #1
	mov	r1, #5
	bl	_Func_8019908
	ldr	r0, =0xc90
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	b	.Lb14d6
.Lb14ca:
	ldr	r0, =0xc8f
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
.Lb14d6:
	mov	r3, #0xd8
	mov	r2, r8
	ldrh	r3, [r2, r3]
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb1522
	mov	r2, #0
.Lb14e4:
	mov	r3, r2
	add	r3, #0xd8
	mov	r1, r8
	ldrh	r0, [r1, r3]
	mov	r2, r10
	mov	r3, r6
	mov	r1, #0x1b
	str	r7, [sp]
	bl	_Func_801eb90
	mov	r3, #0xfc
	strb	r3, [r0, #0xf]
	add	r6, #0x10
	cmp	r5, #4
	bne	.Lb1506
	mov	r6, #8
	add	r7, #0x10
.Lb1506:
	cmp	r5, #9
	bne	.Lb150e
	mov	r6, #8
	add	r7, #0x10
.Lb150e:
	add	r5, #1
	cmp	r5, #0xe
	bgt	.Lb1522
	lsl	r3, r5, #1
	mov	r2, r3
	mov	r1, r8
	add	r3, #0xd8
	ldrh	r3, [r1, r3]
	cmp	r3, #0
	bne	.Lb14e4
.Lb1522:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b1470

.thumb_func_start Func_80b153c  @ 0x080b153c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r6, r1
	mov	r10, r3
	mov	r5, r0
	bl	_GetUnit
	mov	r7, r0
	mov	r0, r6
	bl	_GetItemInfo
	mov	r8, r0
	mov	r1, r8
	ldrb	r2, [r1, #3]
	mov	r3, #0x10
	and	r3, r2
	mov	r0, #1
	cmp	r3, #0
	beq	.Lb15f6
	ldr	r0, =0xca0
	bl	Func_80b04dc
	mov	r0, r5
	mov	r1, r6
	bl	_CheckItem
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.Lb158c
	lsl	r3, r0, #1
	add	r3, #0xd8
	ldrh	r3, [r7, r3]
	lsr	r3, #11
	add	r7, r3, #1
	b	.Lb158e
.Lb158c:
	mov	r7, #0
.Lb158e:
	mov	r2, r8
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	mov	r5, #0x1e
	cmp	r1, #0
	beq	.Lb15a4
	ldr	r3, =gState
	ldr	r0, [r3, #0x10]
	bl	__udivsi3
	mov	r5, r0
.Lb15a4:
	ldr	r3, =0x3aa
	add	r3, r10
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #2
	bne	.Lb15cc
	mov	r0, r6
	mov	r1, #0
	bl	_Func_8078ad0
	cmp	r5, r0
	ble	.Lb15c8
	mov	r0, r6
	mov	r1, #0
	bl	_Func_8078ad0
	b	.Lb15ca
.Lb15c8:
	mov	r0, r5
.Lb15ca:
	mov	r5, r0
.Lb15cc:
	add	r5, r7
	cmp	r5, #0x1e
	ble	.Lb15d4
	mov	r5, #0x1e
.Lb15d4:
	mov	r3, #0xea
	lsl	r3, #2
	add	r3, r10
	mov	r2, #0xc
	strb	r2, [r3]
	mov	r0, #0
	mov	r1, #0x80
	mov	r2, #0x30
	bl	Func_80b0a6c
	mov	r1, r8
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r0, r7
	mov	r1, r5
	bl	Func_80b1614
.Lb15f6:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b153c

.thumb_func_start Func_80b1614  @ 0x080b1614
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r9, r1
	mov	r1, #0x80
	sub	sp, #0x10
	mov	r11, r0
	lsl	r1, #3
	mov	r0, #0xe
	str	r2, [sp, #0xc]
	bl	galloc_ewram
	mov	r2, #1
	str	r2, [sp, #8]
	mov	r3, r9
	mov	r2, r11
	sub	r3, r2
	mov	r9, r3
	mov	r3, #2
	str	r3, [sp]
	mov	r8, r0
	mov	r1, #4
	mov	r0, #7
	mov	r2, #0x17
	mov	r3, #3
	bl	_CreateUIBox
	mov	r5, #1
	neg	r5, r5
	mov	r7, #0
	mov	r10, r0
	cmp	r0, #0
	bne	.Lb1660
	b	.Lb17b0
.Lb1660:
	bl	AllocSpriteSlot
	str	r0, [sp, #4]
	cmp	r0, #0x60
	bne	.Lb166c
	b	.Lb17b0
.Lb166c:
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	bl	UploadSpriteGFX
	ldr	r5, =0x40004000
	ldr	r0, [sp, #4]
	mov	r1, r5
	mov	r2, r10
	mov	r3, #0
	str	r7, [sp]
	bl	_Func_801eadc
	mov	r1, r5
	mov	r2, r10
	mov	r3, #0x20
	ldr	r0, [sp, #4]
	str	r7, [sp]
	bl	_Func_801eadc
	ldrh	r1, [r0, #0x18]
	lsl	r2, r1, #22
	ldr	r3, .Lb16ac	@ 0x3ff
	lsr	r2, #22
	add	r2, #4
	and	r2, r3
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r0, #0x18]
	b	.Lb1776

	.align	2, 0
.Lb16ac:
	.word	0x3ff
	.pool

.Lb16b8:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb16d0
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, #1
	str	r3, [sp, #8]
	sub	r7, #1
.Lb16d0:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb16e6
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	str	r2, [sp, #8]
	add	r7, #1
.Lb16e6:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.Lb1770
	mov	r3, r9
	mov	r2, #0
	add	r0, r7, r3
	mov	r1, r9
	str	r2, [sp, #8]
	bl	__modsi3
	ldr	r3, =REG_DMA3SAD
	mov	r7, r0
	mov	r1, r8
	ldr	r0, =.Lb3f80
	ldr	r2, =0x84000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r8
	mov	r0, #0x1e
	mov	r1, #0xe
	bl	Func_80b06c0
	mov	r0, r11
	add	r0, r9
	mov	r1, #0
	mov	r2, r8
	bl	Func_80b06c0
	mov	r2, r11
	add	r0, r2, r7
	add	r0, #1
	mov	r1, #0xa
	mov	r2, r8
	bl	Func_80b06c0
	mov	r0, r11
	mov	r1, #2
	mov	r2, r8
	bl	Func_80b06c0
	mov	r1, #0x80
	ldr	r0, [sp, #4]
	lsl	r1, #1
	mov	r2, r8
	bl	UploadSpriteGFX
	add	r5, r7, #1
	mov	r0, r5
	mov	r1, #2
	mov	r2, r10
	mov	r3, #0x48
	str	r6, [sp]
	bl	_Func_801ea08
	ldr	r3, [sp, #0xc]
	mov	r1, #6
	mov	r0, r5
	mul	r0, r3
	mov	r2, r10
	mov	r3, #0x58
	str	r6, [sp]
	bl	_Func_801ea08
	ldr	r0, =0xc88
	mov	r1, r10
	mov	r2, #0x88
	mov	r3, #0
	bl	_Func_801e7c0
.Lb1770:
	mov	r0, #1
	bl	WaitFrames
.Lb1776:
	ldr	r2, =gKeyPress
	ldr	r3, [r2]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb178c
	mov	r0, #0x70
	bl	_PlaySound
	add	r5, r7, #1
	b	.Lb17a2
.Lb178c:
	ldr	r3, =gKeyPress
	ldr	r6, [r3]
	mov	r3, #2
	and	r6, r3
	cmp	r6, #0
	beq	.Lb16b8
	mov	r0, #0x71
	bl	_PlaySound
	mov	r5, #1
	neg	r5, r5
.Lb17a2:
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r10
	mov	r1, #2
	bl	_CloseUIBox
.Lb17b0:
	mov	r0, #0xe
	bl	gfree
	mov	r0, r5
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b1614

.thumb_func_start Func_80b17e4  @ 0x080b17e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r7, r0
	mov	r0, r8
	mov	r5, r2
	bl	_GetItemInfo
	mov	r6, r0
	mov	r3, #0
	ldrb	r1, [r6, #2]
	mov	r0, r7
	mov	r10, r3
	bl	_GetEquippedItem
	mov	r9, r0
	mov	r0, #0x65
	bl	_PlaySound
	cmp	r10, r5
	bge	.Lb183a
.Lb1814:
	mov	r1, r8
	mov	r0, r7
	bl	_GiveItemTo
	mov	r10, r0
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	neg	r0, r0
	bl	_AddCoins
	sub	r5, #1
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	_AddCoinsSpent
	bl	Func_80b10cc
	cmp	r5, #0
	bne	.Lb1814
.Lb183a:
	ldr	r0, =0xca1
	bl	Func_80b0574
	mov	r0, r7
	mov	r1, r10
	bl	Func_80b1868
	cmp	r0, #0
	beq	.Lb1854
	mov	r0, r7
	mov	r1, r9
	bl	Func_80b196c
.Lb1854:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b17e4

.thumb_func_start Func_80b1868  @ 0x080b1868
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r9, r1
	mov	r11, r3
	mov	r8, r0
	bl	_GetUnit
	mov	r3, r9
	lsl	r5, r3, #1
	mov	r7, r0
	add	r5, #0xd8
	ldrh	r3, [r7, r5]
	ldr	r6, =0x1ff
	and	r6, r3
	mov	r0, r6
	bl	_GetItemInfo
	ldrh	r2, [r7, r5]
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	mov	r10, r0
	mov	r0, #0
	cmp	r3, #0
	bne	.Lb1948
	mov	r0, r8
	mov	r1, r6
	bl	_CanEquipItem
	cmp	r0, #0
	beq	.Lb18f4
	mov	r3, r10
	ldrb	r1, [r3, #2]
	mov	r0, r8
	bl	_GetEquippedItem
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.Lb18dc
	lsl	r3, r0, #1
	add	r3, #0xd8
	ldrh	r0, [r7, r3]
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #2
	and	r3, r2
	mov	r0, #0
	cmp	r3, #0
	bne	.Lb1948
.Lb18dc:
	mov	r0, r8
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0xca2
	bl	Func_80b04dc
	mov	r0, #0
	bl	Func_80b0634
	cmp	r0, #0
	beq	.Lb18f8
.Lb18f4:
	mov	r0, #0
	b	.Lb1948
.Lb18f8:
	mov	r0, r8
	mov	r1, r9
	bl	_EquipItem
	mov	r3, r11
	ldr	r0, [r3, #0x20]
	cmp	r0, #0
	beq	.Lb190e
	mov	r1, r8
	bl	Func_80b1dec
.Lb190e:
	mov	r3, r10
	ldrb	r2, [r3, #3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1940
	mov	r0, #0x67
	bl	_PlaySound
	bl	_Func_8019a54
	mov	r1, #8
	mov	r2, #4
	mov	r3, #2
	ldr	r0, =0xad0
	bl	_Func_8017658
	b	.Lb1938
.Lb1932:
	mov	r0, #1
	bl	WaitFrames
.Lb1938:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb1932
.Lb1940:
	ldr	r0, =0xca3
	bl	Func_80b0574
	mov	r0, #1
.Lb1948:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b1868

.thumb_func_start Func_80b196c  @ 0x080b196c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r6, r1
	bl	_GetUnit
	mov	r3, #1
	neg	r3, r3
	mov	r8, r3
	cmp	r6, r8
	bne	.Lb1988
	mov	r0, #0
	b	.Lb19be
.Lb1988:
	lsl	r3, r6, #1
	add	r3, #0xd8
	ldrh	r3, [r0, r3]
	ldr	r5, =0x1ff
	and	r5, r3
	mov	r0, r5
	bl	_GetItemInfo
	ldrb	r3, [r0, #2]
	mov	r0, #0
	cmp	r3, #6
	beq	.Lb19be
	mov	r0, r5
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #8
	and	r3, r2
	mov	r0, #0
	cmp	r3, #0
	bne	.Lb19be
	mov	r0, r7
	mov	r1, r6
	mov	r2, r8
	bl	Func_80b1f4c
	mov	r0, #1
.Lb19be:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b196c

	.section .text.after_19cc, "ax", %progbits

.thumb_func_start Func_80b1a14  @ 0x080b1a14
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r0, #1
	mov	r2, #0
	sub	sp, #4
	ldr	r6, [r3]
	mov	r5, #2
	mov	r1, #9
	mov	r3, #4
	mov	r9, r0
	mov	r10, r2
	mov	r0, #0
	mov	r2, #0xc
	str	r5, [sp]
	bl	_CreateUIBox
	str	r0, [r6, #0xc]
	bl	Func_80b10cc
	mov	r1, #0xc
	mov	r2, #0xe
	mov	r3, #8
	mov	r0, #0x10
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r1, #0xe
	str	r0, [r6, #0x20]
	mov	r2, #0xd
	mov	r3, #3
	mov	r0, #0
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r4, #0xe0
	lsl	r4, #2
	add	r3, r6, r4
	ldr	r2, [r3]
	mov	r8, r0
	mov	r0, #0xea
	mov	r3, #4
	lsl	r0, #2
	strb	r3, [r2, #5]
	add	r2, r6, r0
	mov	r3, #0xc
	strb	r3, [r2]
	mov	r7, #0
	mov	r2, #0
	mov	r0, r8
	mov	r1, #2
	mov	r3, #8
	str	r7, [sp]
	bl	_Func_80a1870
	mov	r2, #0xea
	lsl	r2, #2
	add	r2, r6
	mov	r11, r2
.Lb1a94:
	mov	r3, r9
	cmp	r3, #0
	beq	.Lb1ae2
	ldr	r0, =0x3a7
	add	r3, r6, r0
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r4, #0
	add	r0, r7, r1
	mov	r9, r4
	bl	__modsi3
	mov	r3, #0xdb
	mov	r7, r0
	lsl	r1, r7, #1
	lsl	r3, #2
	add	r2, r1, r3
	add	r3, r6, #2
	add	r1, r7
	ldrsh	r4, [r3, r2]
	lsl	r1, #3
	sub	r1, #0xc
	mov	r0, r8
	mov	r2, #0
	mov	r10, r4
	bl	Func_80b0a6c
	mov	r3, #3
	mov	r2, r11
	strb	r3, [r2]
	mov	r0, r8
	mov	r1, r7
	mov	r2, #0
	bl	Func_80b11c4
	ldr	r0, [r6, #0x20]
	mov	r1, r10
	bl	Func_80b1dec
.Lb1ae2:
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb1b40
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r10
	bl	_FindEmptyInventorySlot
	cmp	r0, #0
	bne	.Lb1b06
	mov	r0, #0x71
	bl	_PlaySound
	b	.Lb1a94
.Lb1b06:
	mov	r0, #0x70
	bl	_PlaySound
	ldr	r4, =0x3aa
	add	r3, r6, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #1
	bne	.Lb1b22
	mov	r0, r10
	bl	Func_80b1bd0
	b	.Lb1b28
.Lb1b22:
	mov	r0, r10
	bl	Func_80b211c
.Lb1b28:
	mov	r0, #0xe0
	lsl	r0, #2
	add	r3, r6, r0
	ldr	r2, [r3]
	mov	r3, #4
	strb	r3, [r2, #5]
	mov	r3, #0xc
	mov	r2, r11
	strb	r3, [r2]
	mov	r3, #1
	mov	r9, r3
	b	.Lb1a94
.Lb1b40:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1b86
	mov	r0, #0x71
	bl	_PlaySound
	bl	_Func_80a195c
	mov	r0, r8
	mov	r1, #2
	bl	_CloseUIBox
	ldr	r0, [r6, #0x20]
	mov	r1, #2
	bl	_CloseUIBox
	ldr	r0, [r6, #0xc]
	mov	r1, #2
	bl	_CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.Lb1b86:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1b9e
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r4, #1
	sub	r7, #1
	mov	r9, r4
.Lb1b9e:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1bb4
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, #1
	add	r7, #1
	mov	r9, r0
.Lb1bb4:
	mov	r0, #1
	bl	WaitFrames
	b	.Lb1a94
.func_end Func_80b1a14

.thumb_func_start Func_80b1bd0  @ 0x080b1bd0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x18
	str	r0, [sp, #0x14]
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r11, r3
	bl	_GetUnit
	mov	r2, #1
	mov	r3, #2
	str	r0, [sp, #8]
	str	r3, [sp]
	mov	r9, r2
	mov	r0, #0xf
	mov	r1, #8
	mov	r2, #0xf
	mov	r3, #4
	bl	_CreateUIBox
	str	r0, [sp, #0xc]
	mov	r7, #0
.Lb1c06:
	mov	r3, #2
	str	r3, [sp]
	mov	r2, #0x1e
	mov	r3, #3
	mov	r0, #0
	mov	r1, #5
	bl	_CreateUIBox
	mov	r3, #0xe0
	str	r0, [sp, #0x10]
	lsl	r3, #2
	add	r3, r11
	ldr	r2, [r3]
	mov	r3, #0x12
	strb	r3, [r2, #5]
	mov	r2, #0xea
	lsl	r2, #2
	mov	r3, #0xc
	add	r2, r11
	strb	r3, [r2]
	mov	r3, #1
	mov	r10, r3
.Lb1c32:
	mov	r2, r10
	cmp	r2, #0
	beq	.Lb1cba
	mov	r3, #0
	ldr	r0, [sp, #0x14]
	mov	r10, r3
	bl	_FindEmptyInventorySlot
	mov	r9, r0
	mov	r3, r9
	sub	r3, #1
	cmp	r7, r3
	ble	.Lb1c4e
	mov	r7, r3
.Lb1c4e:
	ldr	r2, [sp, #8]
	lsl	r4, r7, #1
	add	r4, #0xd8
	ldrh	r3, [r2, r4]
	ldr	r6, .Lb1c94	@ 0x1ff
	and	r6, r3
	mov	r3, r11
	ldr	r3, [r3, #0x20]
	mov	r1, #5
	mov	r0, r7
	str	r4, [sp, #4]
	mov	r8, r3
	bl	__modsi3
	mov	r1, #5
	mov	r5, r0
	mov	r0, r7
	bl	__divsi3
	mov	r2, r0
	lsl	r5, #4
	lsl	r2, #4
	mov	r1, r5
	add	r2, #8
	mov	r0, r8
	bl	Func_80b0a6c
	mov	r2, #0xea
	lsl	r2, #2
	mov	r3, #3
	add	r2, r11
	strb	r3, [r2]
	ldr	r2, [sp, #8]
	ldr	r4, [sp, #4]
	b	.Lb1c9c

	.align	2, 0
.Lb1c94:
	.word	0x1ff
	.pool

.Lb1c9c:
	ldrh	r0, [r2, r4]
	bl	Func_80b19cc
	mov	r1, r6
	mov	r2, r0
	mov	r3, #1
	ldr	r0, [sp, #0xc]
	bl	Func_80b110c
	ldr	r3, =0x75
	add	r6, r3
	ldr	r0, [sp, #0x10]
	mov	r1, r6
	bl	Func_80b11a4
.Lb1cba:
	ldr	r1, =gKeyPress
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1cd0
	mov	r0, #0x70
	bl	_PlaySound
	mov	r5, #0
	b	.Lb1d82
.Lb1cd0:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1ce6
	mov	r0, #0x71
	mov	r5, #1
	bl	_PlaySound
	neg	r5, r5

	b	.Lb1d82
.Lb1ce6:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1d0a
	mov	r0, #0x6f
	bl	_PlaySound
	sub	r7, #1
	mov	r3, r9
	add	r0, r7, r3
	mov	r1, r9
	bl	__modsi3
	mov	r2, #1
	mov	r7, r0
	mov	r10, r2
.Lb1d0a:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1d2c
	mov	r0, #0x6f
	bl	_PlaySound
	add	r7, #1
	mov	r3, r9
	add	r0, r7, r3
	mov	r1, r9
	bl	__modsi3
	mov	r2, #1
	mov	r7, r0
	mov	r10, r2
.Lb1d2c:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1d52
	sub	r7, #5
	cmp	r7, #0
	bge	.Lb1d3e
	add	r7, #0xf
.Lb1d3e:
	cmp	r7, r9
	blt	.Lb1d48
.Lb1d42:
	sub	r7, #5
	cmp	r7, r9
	bge	.Lb1d42
.Lb1d48:
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, #1
	mov	r10, r3
.Lb1d52:
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1d7a
	add	r7, #5
	cmp	r7, r9
	blt	.Lb1d66
	sub	r7, #0xf
.Lb1d66:
	cmp	r7, #0
	bge	.Lb1d70
.Lb1d6a:
	add	r7, #5
	cmp	r7, #0
	blt	.Lb1d6a
.Lb1d70:
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	mov	r10, r2
.Lb1d7a:
	mov	r0, #1
	bl	WaitFrames
	b	.Lb1c32
.Lb1d82:
	ldr	r0, [sp, #0x10]
	mov	r1, #2
	bl	_CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	cmp	r5, #0
	bne	.Lb1dc0
	ldr	r0, [sp, #0x14]
	mov	r1, r7
	bl	Func_80b1e80
	mov	r3, #1
	mov	r2, r0
	neg	r3, r3
	cmp	r2, r3
	beq	.Lb1dae
	ldr	r0, [sp, #0x14]
	mov	r1, r7
	bl	Func_80b1f4c
.Lb1dae:
	ldr	r0, =0xcaa
	bl	Func_80b04dc
	ldr	r0, [sp, #0x14]
	bl	_FindEmptyInventorySlot
	cmp	r0, #0
	beq	.Lb1dc0
	b	.Lb1c06
.Lb1dc0:
	ldr	r0, [sp, #0xc]
	mov	r1, #2
	bl	_CloseUIBox
	mov	r0, r5
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b1bd0

.thumb_func_start Func_80b1dec  @ 0x080b1dec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r1
	mov	r9, r0
	mov	r0, r5
	sub	sp, #4
	bl	_GetUnit
	mov	r2, #0
	mov	r3, r9
	mov	r10, r0
	mov	r7, #8
	mov	r8, r2
	cmp	r3, #0
	beq	.Lb1e6c
	mov	r0, r9
	bl	_Func_8016478
	mov	r0, r5
	bl	_FindEmptyInventorySlot
	cmp	r0, #0
	bne	.Lb1e2e
	ldr	r0, =0xc91
	mov	r1, r9
	mov	r2, #8
	mov	r3, #0x14
	bl	_DrawSmallText
	b	.Lb1e6c
.Lb1e2e:
	mov	r5, #0
	mov	r6, #0xd8
.Lb1e32:
	mov	r2, r10
	ldrh	r3, [r6, r2]
	cmp	r3, #0
	beq	.Lb1e4e
	mov	r0, r3
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0x1b
	mov	r3, r7
	mov	r2, r9
	bl	_Func_801eb90
	mov	r3, #0xfc
	strb	r3, [r0, #0xf]
.Lb1e4e:
	add	r7, #0x10
	cmp	r5, #4
	bne	.Lb1e5a
	mov	r2, #0x10
	mov	r7, #8
	add	r8, r2
.Lb1e5a:
	cmp	r5, #9
	bne	.Lb1e64
	mov	r3, #0x10
	mov	r7, #8
	add	r8, r3
.Lb1e64:
	add	r5, #1
	add	r6, #2
	cmp	r5, #0xe
	ble	.Lb1e32
.Lb1e6c:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b1dec

.thumb_func_start Func_80b1e80  @ 0x080b1e80
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	sub	sp, #4
	ldr	r7, [r3]
	mov	r10, r0
	mov	r9, r1
	bl	_GetUnit
	mov	r1, r9
	lsl	r5, r1, #1
	mov	r6, r0
	add	r5, #0xd8
	ldrh	r0, [r6, r5]
	bl	_GetItemInfo
	mov	r2, #1
	str	r2, [sp]
	mov	r8, r0
	ldrh	r0, [r6, r5]
	bl	Func_80b19cc
	mov	r1, r9
	mov	r11, r0
	mov	r0, r10
	bl	_GetInventoryItem
	mov	r3, r8
	ldrb	r2, [r3, #3]
	mov	r3, #0x10
	and	r3, r2
	mov	r10, r0
	cmp	r3, #0
	beq	.Lb1f2c
	cmp	r0, #1
	ble	.Lb1f2c
	ldr	r0, =0xcad
	bl	Func_80b04dc
	mov	r1, #0xe2
	lsl	r1, #2
	add	r3, r7, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	mov	r8, r2
	ldr	r2, =0x38a
	add	r3, r7, r2
	sub	r2, #0xa
	add	r5, r7, r2
	ldr	r2, [r5]
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	mov	r3, #4
	strb	r3, [r2, #5]
	mov	r3, #0xea
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #0xc
	strb	r3, [r2]
	mov	r0, #0
	mov	r1, #0x80
	mov	r2, #0x30
	bl	Func_80b0a6c
	mov	r1, r10
	mov	r2, r11
	mov	r0, #0
	bl	Func_80b1614
	str	r0, [sp]
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [r5]
	bl	_Func_80a17c4
	mov	r0, #0
	mov	r1, r8
	mov	r2, r6
	bl	Func_80b0a6c
.Lb1f2c:
	ldr	r0, [sp]
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b1e80

.thumb_func_start Func_80b1f4c  @ 0x080b1f4c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r7, r2
	str	r3, [sp, #8]
	bl	_GetUnit
	ldr	r2, [sp, #0xc]
	lsl	r2, #1
	str	r2, [sp, #4]
	mov	r5, r2
	mov	r6, r0
	add	r5, #0xd8
	ldrh	r3, [r6, r5]
	ldr	r2, =0x1ff
	and	r2, r3
	mov	r10, r2
	mov	r0, r10
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #4
	and	r3, r2
	lsl	r3, #24
	lsr	r3, #24
	mov	r2, #1
	mov	r11, r3
	neg	r2, r2
	mov	r3, #0
	mov	r9, r0
	str	r3, [sp]
	cmp	r7, r2
	bne	.Lb1fa6
	mov	r3, #1
	str	r3, [sp]
	mov	r7, #1
.Lb1fa6:
	ldrh	r0, [r6, r5]
	bl	Func_80b19cc
	mov	r2, r7
	mul	r2, r0
	mov	r8, r2
	cmp	r2, #0
	bne	.Lb1fc6
	mov	r0, r10
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0xcac
	bl	Func_80b0574
	b	.Lb20a0
.Lb1fc6:
	ldrh	r2, [r6, r5]
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1fee
	mov	r3, r9
	ldrb	r2, [r3, #3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1fee
	mov	r0, r10
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0xcab
	bl	Func_80b0574
	b	.Lb20a0
.Lb1fee:
	ldr	r2, [sp]
	cmp	r2, #0
	beq	.Lb1ff8
	ldr	r5, =0xcb2
	b	.Lb2020
.Lb1ff8:
	ldr	r3, [sp, #4]
	add	r3, #0xd8
	ldrh	r2, [r6, r3]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Lb200c
	ldr	r5, =0xcb1
	b	.Lb2020
.Lb200c:
	cmp	r7, #1
	ble	.Lb2014
	ldr	r5, =0xcb0
	b	.Lb2020
.Lb2014:
	mov	r3, r11
	cmp	r3, #0
	beq	.Lb201e
	ldr	r5, =0xcaf
	b	.Lb2020
.Lb201e:
	ldr	r5, =0xcae
.Lb2020:
	mov	r0, r10
	mov	r1, #2
	bl	_Func_8019908
	mov	r0, r8
	mov	r1, #5
	bl	_Func_8019908
	mov	r0, r5
	bl	Func_80b0574
	mov	r0, #0
	bl	Func_80b0634
	cmp	r0, #0
	beq	.Lb205a
	mov	r2, r11
	cmp	r2, #0
	bne	.Lb204c
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.Lb2050
.Lb204c:
	ldr	r5, =0xcb6
	b	.Lb2052
.Lb2050:
	ldr	r5, =0xcb4
.Lb2052:
	mov	r0, r5
	bl	Func_80b0574
	b	.Lb20a0
.Lb205a:
	mov	r0, #0x66
	bl	_PlaySound
	cmp	r7, #0
	ble	.Lb2074
	mov	r5, r7
.Lb2066:
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0xc]
	sub	r5, #1
	bl	_Func_8078948
	cmp	r5, #0
	bne	.Lb2066
.Lb2074:
	mov	r0, r8
	bl	_AddCoins
	bl	Func_80b10cc
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #0x10]
	ldr	r0, [r2, #0x20]
	bl	Func_80b1dec
	mov	r3, r11
	cmp	r3, #0
	bne	.Lb2094
	ldr	r2, [sp]
	cmp	r2, #0
	beq	.Lb2098
.Lb2094:
	ldr	r5, =0xcb5
	b	.Lb209a
.Lb2098:
	ldr	r5, =0xcb3
.Lb209a:
	mov	r0, r5
	bl	Func_80b0574
.Lb20a0:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b1f4c
