	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_28ef0, "ax", %progbits

.thumb_func_start Debug_WarpMenu  @ 0x08028f98
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

.thumb_func_start Debug_WarpMenu_UI  @ 0x08029094
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



	.section .text.after, "ax", %progbits
	.section .text.after_292c4, "ax", %progbits

.thumb_func_start Func_802938c  @ 0x0802938c
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
