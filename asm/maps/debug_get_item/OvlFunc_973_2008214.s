	.include "macros.inc"
	.include "gba.inc"

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
