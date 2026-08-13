	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Debug_IconTest  @ 0x08029554
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	mov	r2, #1
	mov	r1, #0
	str	r2, [sp, #4]
	ldr	r3, =iwram_3001e68
	mov	r10, r1
	mov	r11, r1
	mov	r9, r1
	add	r1, sp, #4
	ldr	r3, [r3]
	ldrh	r1, [r1]
	mov	r0, #1
	strh	r1, [r3, #4]
	bl	WaitFrames
.L29580:
	ldr	r2, =gKeyRepeat
	ldr	r3, [r2]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L29596
	mov	r3, #1
	mov	r1, #1
	neg	r3, r3
	str	r1, [sp, #4]
	add	r11, r3
.L29596:
	ldr	r2, =gKeyRepeat
	ldr	r3, [r2]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L295a8
	mov	r3, #1
	str	r3, [sp, #4]
	add	r11, r3
.L295a8:
	ldr	r1, =gKeyRepeat
	mov	r2, #0x80
	ldr	r3, [r1]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L295c0
	mov	r2, #1
	mov	r3, #1
	neg	r2, r2
	str	r3, [sp, #4]
	add	r9, r2
.L295c0:
	ldr	r1, =gKeyRepeat
	mov	r2, #0x80
	ldr	r3, [r1]
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L295d4
	mov	r2, #1
	str	r2, [sp, #4]
	add	r9, r2
.L295d4:
	ldr	r1, =gKeyRepeat
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L295e2
	b	.L2973c
.L295e2:
	ldr	r3, [r1]
	mov	r5, #2
	and	r3, r5
	cmp	r3, #0
	beq	.L295ee
	b	.L2973c
.L295ee:
	ldr	r2, [sp, #4]
	cmp	r2, #0
	bne	.L295f6
	b	.L29734
.L295f6:
	mov	r2, r11
	mov	r3, #0
	add	r2, #8
	str	r3, [sp, #4]
	mov	r3, r2
	cmp	r2, #0
	bge	.L29608
	mov	r3, r11
	add	r3, #0xf
.L29608:
	asr	r3, #3
	lsl	r3, #3
	mov	r0, r9
	sub	r2, r3
	mov	r1, #3
	add	r0, #3
	mov	r11, r2
	bl	__modsi3
	mov	r1, #2
	mov	r9, r0
	mov	r0, r10
	bl	CloseUIBox
	mov	r1, #0
	mov	r0, #0xa
	mov	r2, #0x12
	mov	r3, #0xc
	str	r5, [sp]
	bl	CreateUIBox
	mov	r1, r9
	mov	r10, r0
	cmp	r1, #0
	bne	.L2963e
	ldr	r0, =.L37440
	b	.L29646
.L2963e:
	mov	r2, r9
	cmp	r2, #1
	bne	.L29652
	ldr	r0, =.L37448
.L29646:
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	UIDrawText
	b	.L2965e
.L29652:
	ldr	r0, =.L37450
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	UIDrawText
.L2965e:
	ldr	r0, =.L37458
	mov	r1, r10
	mov	r2, #0
	mov	r3, #8
	bl	UIDrawText
	mov	r3, #8
	str	r3, [sp]
	mov	r0, r11
	mov	r1, #0
	mov	r2, r10
	mov	r3, #0x28
	bl	Func_801ea08
	mov	r1, r11
	lsl	r1, #5
	mov	r8, r1
	mov	r2, #8
	str	r2, [sp]
	mov	r0, r8
	mov	r1, #3
	mov	r2, r10
	mov	r3, #0x40
	bl	Func_801ea08
	ldr	r0, =.L37460
	mov	r1, r10
	mov	r2, #0x58
	mov	r3, #8
	bl	UIDrawText
	mov	r3, #8
	mov	r0, r8
	str	r3, [sp]
	add	r0, #0x1f
	mov	r1, #3
	mov	r2, r10
	mov	r3, #0x60
	bl	Func_801ea08
	mov	r5, #0
.L296b0:
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #0xc]
	mov	r2, r5
	cmp	r5, #0
	bge	.L296be
	add	r2, r5, #7
.L296be:
	asr	r2, #3
	lsl	r3, r2, #3
	lsl	r2, #4
	sub	r3, r5, r3
	mov	r6, r2
	mov	r1, r9
	lsl	r7, r3, #4
	add	r6, #0x10
	cmp	r1, #0
	bne	.L296e4
	mov	r2, r8
	add	r0, r2, r5
	str	r1, [sp]
	add	r2, sp, #0xc
	mov	r1, #1
	add	r3, sp, #8
	bl	LoadItemIconID
	b	.L296fc
.L296e4:
	mov	r3, r9
	cmp	r3, #1
	bne	.L2970e
	mov	r1, r8
	mov	r3, #0
	add	r0, r1, r5
	str	r3, [sp]
	mov	r1, #1
	add	r2, sp, #0xc
	add	r3, sp, #8
	bl	LoadMoveIconID
.L296fc:
	mov	r1, #0x80
	ldr	r0, [sp, #0xc]
	lsl	r1, #23
	mov	r2, r10
	mov	r3, r7
	str	r6, [sp]
	bl	Func_801eadc
	b	.L2972e
.L2970e:
	bl	AllocSpriteSlot
	mov	r1, #0
	mov	r2, r0
	mov	r0, r5
	str	r2, [sp, #0xc]
	bl	LoadStatusIcon
	mov	r1, #0x80
	ldr	r0, [sp, #0xc]
	lsl	r1, #23
	mov	r2, r10
	mov	r3, r7
	str	r6, [sp]
	bl	Func_801eadc
.L2972e:
	add	r5, #1
	cmp	r5, #0x1f
	ble	.L296b0
.L29734:
	mov	r0, #1
	bl	WaitFrames
	b	.L29580
.L2973c:
	mov	r0, r10
	mov	r1, #2
	bl	CloseUIBox
	ldr	r3, =iwram_3001e68
	ldr	r2, [r3]
	mov	r3, #0
	mov	r0, #0
	strh	r3, [r2, #4]
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Debug_IconTest
