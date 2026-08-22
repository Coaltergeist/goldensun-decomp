	.include "macros.inc"
	.include "gba.inc"

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
	ldr	r0, =GFX_BuyCountMeter
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

