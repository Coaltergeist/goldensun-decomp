	.include "macros.inc"
	.include "gba.inc"

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
