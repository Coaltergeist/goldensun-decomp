	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8028ef0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r5, r1
	lsl	r5, #16
	asr	r5, #16
	mov	r6, r0
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	mov	r0, r5
	sub	sp, #4
	mov	r9, r2
	bl	_GetLocationName
	ldr	r3, =0x99b
	mov	r10, r0
	mov	r0, r6
	add	r10, r3
	bl	Func_8016478
	mov	r2, #0xe
	str	r2, [sp]
	mov	r8, r2
	mov	r0, r5
	mov	r2, r6
	mov	r3, #0
	mov	r1, #3
	bl	Func_801e9a0
	mov	r2, r9
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	mov	r3, r8
	str	r3, [sp]
	mov	r2, r6
	mov	r1, #3
	mov	r3, #0x52
	bl	Func_801e9a0
	ldr	r2, =.L37428
	mov	r8, r2
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0x4a
	mov	r3, #0
	bl	Func_801e858
	ldr	r3, =0xa07
	add	r5, r3
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	bl	DrawSmallText
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0x4a
	mov	r3, #0xe
	bl	Func_801e858
	mov	r0, r10
	mov	r1, r6
	mov	r2, #0x52
	mov	r3, #0
	bl	DrawSmallText
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8028ef0

.thumb_func_start Debug_WarpMenu
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x18
	add	r1, sp, #8
	mov	r9, r1
	mov	r7, #0
	mov	r2, r9
	strh	r7, [r2]
	mov	r1, #0xe4
	ldr	r2, =gState
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	mov	r1, #0xe5
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, #0xa
	add	r1, sp
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r10, r1
	mov	r2, r10
	strh	r3, [r2]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r3, #5
	mov	r2, #0x1e
	mov	r0, #0
	bl	CreateUIBox
	mov	r2, r10
	mov	r1, r6
	mov	r7, r0
	bl	Func_8028ef0
	add	r3, sp, #0xc
	mov	r8, r3
	add	r1, sp, #4
	mov	r0, r8
	bl	Func_801c0dc
	ldr	r2, =gKeyHeld
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L2900a
	mov	r5, r2
.L28ffe:
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L28ffe
.L2900a:
	mov	r1, r6
	mov	r0, r7
	mov	r2, r10
	mov	r3, r9
	bl	Debug_WarpMenu_UI
	mov	r1, #1
	lsl	r0, #16
	asr	r5, r0, #16
	neg	r1, r1
	cmp	r5, r1
	bne	.L29040
	ldr	r0, [sp, #4]
	bl	Func_801c17c
	mov	r0, r7
	mov	r1, #2
	bl	CloseUIBox
	mov	r3, r10
	mov	r0, r6
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	bl	_SetDestMap
	mov	r0, r5
	b	.L2907a
.L29040:
	mov	r1, #2
	neg	r1, r1
	cmp	r5, r1
	bne	.L2905a
	ldr	r0, [sp, #4]
	bl	Func_801c17c
	mov	r0, r7
	mov	r1, #2
	bl	CloseUIBox
	mov	r0, r5
	b	.L2907a
.L2905a:
	mov	r1, r9
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	lsl	r2, r3, #3
	sub	r2, r3
	lsl	r2, #1
	mov	r0, r8
	add	r2, #0x3c
	mov	r1, #0x4a
	bl	Func_801c154
	mov	r0, #1
	mov	r6, r5
	bl	WaitFrames
	b	.L2900a
.L2907a:
	add	sp, #0x18
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Debug_WarpMenu

.thumb_func_start Debug_WarpMenu_UI
	push	{r5, r6, r7, lr}
	ldr	r6, =gKeyRepeat
	mov	r7, r0
	mov	r0, r3
	ldr	r3, [r6]
	mov	r4, r2
	mov	r2, #1
	lsl	r1, #16
	and	r3, r2
	asr	r5, r1, #16
	cmp	r3, #0
	beq	.L290b2
	mov	r0, #1
	neg	r0, r0
	b	.L291dc
.L290b2:
	ldr	r3, [r6]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L290c2
	mov	r0, #2
	neg	r0, r0
	b	.L291dc
.L290c2:
	ldr	r3, [r6]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	bne	.L290d6
	ldr	r1, [r6]
	mov	r3, #0x40
	and	r1, r3
	cmp	r1, #0
	beq	.L290e0
.L290d6:
	ldrh	r3, [r0]
	ldr	r2, .L290f8	@ 1
	eor	r3, r2
	strh	r3, [r0]
	b	.L291da
.L290e0:
	ldr	r3, [r6]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L29114
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.L29100
	add	r3, r5, #1
	b	.L29160

	.align	2, 0
.L290f8:
	.word	1
	.pool

.L29100:
	ldrh	r3, [r4]
	mov	r2, #0xc6
	add	r3, #1
	strh	r3, [r4]
	lsl	r2, #15
	lsl	r3, #16
	cmp	r3, r2
	ble	.L29184
	strh	r1, [r4]
	b	.L29184
.L29114:
	ldr	r3, [r6]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L29146
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	bne	.L2912e
	sub	r3, r5, #1
	lsl	r3, #16
	asr	r5, r3, #16
	b	.L2913e
.L2912e:
	ldrh	r3, [r4]
	sub	r3, #1
	strh	r3, [r4]
	lsl	r3, #16
	cmp	r3, #0
	bge	.L2913e
	ldr	r3, =0x63
	strh	r3, [r4]
.L2913e:
	cmp	r5, #0
	bge	.L2918a
	mov	r5, #0xc8
	b	.L2918a
.L29146:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L29196
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.L2916c
	strh	r3, [r4]
	mov	r3, r5
	add	r3, #0xa
.L29160:
	lsl	r3, #16
	asr	r5, r3, #16
	b	.L29184

	.pool_aligned

.L2916c:
	ldrh	r2, [r4]
	mov	r3, r2
	add	r3, #0xa
	mov	r1, #0xc6
	strh	r3, [r4]
	lsl	r1, #15
	lsl	r3, #16
	cmp	r3, r1
	ble	.L29184
	mov	r3, r2
	sub	r3, #0x59
	strh	r3, [r4]
.L29184:
	cmp	r5, #0xc8
	ble	.L2918a
	mov	r5, #0
.L2918a:
	mov	r0, r7
	mov	r1, r5
	mov	r2, r4
	bl	Func_8028ef0
	b	.L291da
.L29196:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L291da
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.L291b6
	strh	r3, [r4]
	mov	r3, r5
	sub	r3, #0xa
	lsl	r3, #16
	asr	r5, r3, #16
	b	.L291ca
.L291b6:
	ldrh	r2, [r4]
	mov	r3, r2
	sub	r3, #0xa
	strh	r3, [r4]
	lsl	r3, #16
	cmp	r3, #0
	bge	.L291ca
	mov	r3, r2
	add	r3, #0x59
	strh	r3, [r4]
.L291ca:
	cmp	r5, #0
	bge	.L291d0
	mov	r5, #0xc8
.L291d0:
	mov	r0, r7
	mov	r1, r5
	mov	r2, r4
	bl	Func_8028ef0
.L291da:
	mov	r0, r5
.L291dc:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Debug_WarpMenu_UI

.thumb_func_start Debug_FlagEditor
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	mov	r3, #8
	str	r3, [sp, #4]
	add	r6, sp, #0xc
	mov	r5, #0
	mov	r3, #2
	str	r5, [sp, #0xc]
	mov	r2, #0x1c
	str	r5, [r6, #4]
	mov	r1, #0
	str	r3, [sp]
	mov	r0, #1
	mov	r3, #0x14
	bl	CreateUIBox
	ldr	r1, [sp, #4]
	mov	r5, r0
	bl	Func_80292c4
	add	r7, sp, #0x14
	add	r1, sp, #8
	mov	r0, r7
	bl	Func_801c0dc
	add	r3, sp, #4
	mov	r8, r3
	b	.L2923e
.L29220:
	cmp	r0, #1
	bne	.L2922c
	ldr	r1, [sp, #4]
	mov	r0, r5
	bl	Func_80292c4
.L2922c:
	ldr	r1, [sp, #0xc]
	ldr	r2, [r6, #4]
	lsl	r1, #3
	lsl	r2, #3
	add	r1, #0x3a
	add	r2, #0x14
	mov	r0, r7
	bl	Func_801c154
.L2923e:
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r5
	mov	r1, r8
	mov	r2, r6
	bl	Func_802938c
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.L29220
	ldr	r0, [sp, #8]
	bl	Func_801c17c
	mov	r0, r5
	mov	r1, #2
	bl	CloseUIBox
	mov	r0, #0
	add	sp, #0x20
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Debug_FlagEditor

.thumb_func_start Func_8029274
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r5, r2
	cmp	r1, #5
	bls	.L29280
	mov	r1, #5
.L29280:
	mov	r2, #0
	cmp	r1, #0
	beq	.L292a4
	mov	r6, #0xf
	mov	r4, sp
.L2928a:
	mov	r3, r0
	and	r3, r6
	cmp	r3, #9
	bhi	.L29296
	add	r3, #0x30
	b	.L29298
.L29296:
	add	r3, #0x37
.L29298:
	strb	r3, [r4]
	add	r2, #1
	lsr	r0, #4
	add	r4, #1
	cmp	r2, r1
	bne	.L2928a
.L292a4:
	sub	r2, r1, #1
	cmp	r2, #0
	blt	.L292bc
	mov	r3, sp
	add	r1, r2, r3
	mov	r12, r3
.L292b0:
	ldrb	r3, [r1]
	sub	r1, #1
	strb	r3, [r5]
	add	r5, #1
	cmp	r1, r12
	bge	.L292b0
.L292bc:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8029274

.thumb_func_start Func_80292c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r0
	sub	sp, #0x24
	mov	r5, r1
	bl	Func_8016478
	mov	r1, r10
	mov	r2, #0x30
	mov	r3, #0
	ldr	r0, =.L3742c
	bl	UIDrawText
	add	r2, sp, #8
	mov	r8, r2
	mov	r2, sp
	mov	r1, #0
	mov	r3, #0x1c
	add	r2, #0x21
	str	r1, [sp, #4]
	add	r3, sp
	mov	r1, #0x10
	str	r2, [sp]
	lsl	r7, r5, #8
	mov	r11, r3
	mov	r9, r1
.L29302:
	mov	r3, r11
.L29304:
	mov	r1, #0
	strb	r1, [r3]
	ldr	r2, [sp]
	add	r3, #1
	cmp	r3, r2
	bne	.L29304
	mov	r0, r7
	mov	r1, #3
	mov	r2, r11
	bl	Func_8029274
	mov	r0, r11
	mov	r1, r10
	mov	r2, #0
	mov	r3, r9
	bl	UIDrawText
	ldr	r0, =.L37428
	mov	r1, r10
	mov	r2, #0x20
	mov	r3, r9
	bl	UIDrawText
	mov	r6, r8
	mov	r5, r8
	add	r6, #0xf
.L29338:
	mov	r0, r7
	bl	_GetFlag
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	add	r3, #0x30
	strb	r3, [r5]
	add	r5, #1
	add	r7, #1
	cmp	r5, r6
	ble	.L29338
	mov	r3, #0x10
	mov	r2, #0
	mov	r1, r8
	strb	r2, [r1, r3]
	mov	r0, r8
	mov	r3, r9
	mov	r1, r10
	mov	r2, #0x30
	bl	UIDrawText
	ldr	r1, [sp, #4]
	mov	r3, #8
	add	r1, #1
	add	r9, r3
	str	r1, [sp, #4]
	cmp	r1, #0x10
	bne	.L29302
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80292c4

.thumb_func_start Func_802938c
	push    {r5, r6, lr}
	ldr	r6, =gKeyRepeat
	ldr	r3, [r6]
	mov	r5, r2
	mov	r2, #1
	and	r3, r2
	add	r4, r5, #4
	cmp	r3, #0
	beq	.L293c6
	ldr	r3, [r1]
	ldr	r2, [r4]
	lsl	r3, #4
	add	r3, r2
	ldr	r2, [r5]
	lsl	r3, #4
	add	r5, r3, r2
	mov	r0, r5
	bl	_GetFlag
	cmp	r0, #0
	beq	.L293be
	mov	r0, r5
	bl	_ClearFlag
	b	.L294bc
.L293be:
	mov	r0, r5
	bl	_SetFlag
	b	.L294bc
.L293c6:
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.L293dc
	ldr	r3, [r6]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.L293e2
.L293dc:
	mov	r0, #1
	neg	r0, r0
	b	.L294c2
.L293e2:
	ldr	r0, [r6]
	mov	r3, #0x40
	and	r0, r3
	cmp	r0, #0
	beq	.L293fc
	ldr	r3, [r4]
	sub	r3, #1
	str	r3, [r4]
	cmp	r3, #0
	bge	.L294c0
	mov	r3, #0xf
	str	r3, [r4]
	b	.L294c0
.L293fc:
	ldr	r3, [r6]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L29414
	ldr	r3, [r4]
	add	r3, #1
	str	r3, [r4]
	cmp	r3, #0xf
	ble	.L294c0
	str	r0, [r4]
	b	.L294c0
.L29414:
	ldr	r0, [r6]
	mov	r3, #0x20
	and	r0, r3
	cmp	r0, #0
	beq	.L2942e
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
	cmp	r3, #0
	bge	.L294c0
	mov	r3, #0xf
	str	r3, [r5]
	b	.L294c0
.L2942e:
	ldr	r3, [r6]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L29446
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0xf
	ble	.L294c0
	str	r0, [r5]
	b	.L294c0
.L29446:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L29462
	ldr	r3, [r6]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L29462
	ldr	r3, [r1]
	sub	r3, #0xa
	b	.L29498
.L29462:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L29488
	ldr	r3, [r6]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L29488
	ldr	r3, [r1]
	add	r3, #0xa
	str	r3, [r1]
	cmp	r3, #0xf
	ble	.L294bc
	mov	r3, #0
	str	r3, [r1]
	b	.L294bc
.L29488:
	ldr	r0, [r6]
	mov	r3, #0x80
	lsl	r3, #2
	and	r0, r3
	cmp	r0, #0
	beq	.L294a4
	ldr	r3, [r1]
	sub	r3, #1
.L29498:
	str	r3, [r1]
	cmp	r3, #0
	bge	.L294bc
	mov	r3, #0xf
	str	r3, [r1]
	b	.L294bc
.L294a4:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L294c0
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	cmp	r3, #0xf
	ble	.L294bc
	str	r0, [r1]
.L294bc:
	mov	r0, #1
	b	.L294c2
.L294c0:
	mov	r0, #0
.L294c2:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_802938c

