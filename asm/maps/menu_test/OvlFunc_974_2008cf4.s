	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_974_2008cf4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x70
	sub	sp, #4
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
	mov	r2, #0xd
	mov	r3, #0xa
	mov	r0, #0
	str	r5, [sp]
	bl	__CreateUIBox
	mov	r6, #1
	mov	r10, r0
	mov	r8, r6
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
.Lm974_d46:
	mov	r3, r8
	cmp	r3, #0
	beq	.Lm974_de0
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0x87
	lsl	r3, #1
	mov	r1, #0x87
	add	r0, r6, r3
	lsl	r1, #1
	bl	_modsi3_RAM
	mov	r6, r0
	mov	r0, r7
	bl	__Func_8016498
	mov	r0, r7
	bl	__Func_80164ac
	ldr	r0, =gOvl_02009390
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0
	bl	__UIDrawText
	mov	r3, r8
	str	r3, [sp]
	mov	r0, r6
	mov	r1, #0
	mov	r2, r7
	mov	r3, #0x50
	bl	__Func_801e9d4
	bl	__Func_8078500
	cmp	r0, #0
	beq	.Lm974_dd4
	ldr	r5, =0x1ff
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x20
	and	r5, r6
	ldr	r0, =gScript_944__0200939c
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
	bl	__DrawSmallText
	mov	r0, r10
	bl	__Func_8016498
	mov	r0, r10
	mov	r1, r6
	bl	__Func_80a4924
	b	.Lm974_de0
.Lm974_dd4:
	ldr	r0, =gScript_960__020093b4
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x20
	bl	__UIDrawText
.Lm974_de0:
	ldr	r5, =gKeyPress
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lm974_e00
	mov	r0, r6
	bl	__GiveItem
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.Lm974_e0a
	mov	r0, #0xaf
	bl	__PlaySound
.Lm974_e00:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lm974_e12
.Lm974_e0a:
	mov	r0, #0x71
	bl	__PlaySound
	b	.Lm974_ea4
.Lm974_e12:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lm974_e2a
	mov	r3, #1
	mov	r0, #0x6f
	sub	r6, #1
	mov	r8, r3
	bl	__PlaySound
.Lm974_e2a:
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lm974_e40
	mov	r3, #1
	mov	r0, #0x6f
	add	r6, #1
	mov	r8, r3
	bl	__PlaySound
.Lm974_e40:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lm974_e56
	mov	r3, #1
	mov	r0, #0x6f
	add	r6, #0xa
	mov	r8, r3
	bl	__PlaySound
.Lm974_e56:
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lm974_e6c
	mov	r3, #1
	mov	r0, #0x6f
	sub	r6, #0xa
	mov	r8, r3
	bl	__PlaySound
.Lm974_e6c:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lm974_e84
	mov	r3, #1
	mov	r0, #0x6f
	add	r6, #0x1e
	mov	r8, r3
	bl	__PlaySound
.Lm974_e84:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lm974_e9c
	mov	r3, #1
	mov	r0, #0x6f
	sub	r6, #0x1e
	mov	r8, r3
	bl	__PlaySound
.Lm974_e9c:
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm974_d46
.Lm974_ea4:
	mov	r0, r7
	bl	__Func_8016498
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, r7
	mov	r1, #1
	bl	__CloseUIBox
	mov	r0, r10
	mov	r1, #1
	bl	__CloseUIBox
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_2008cf4

