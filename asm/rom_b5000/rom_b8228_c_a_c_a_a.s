	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b845c  @ 0x080b845c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #0xc
	mov	r8, r1
	mov	r10, r0
	bl	GetBattleActor
	ldr	r5, [r0]
	mov	r1, #0
	mov	r0, r5
	bl	Func_80b7f70
	add	r5, #8
	mov	r6, r0
	bl	Func_80b7ed8
	mov	r1, r8
	mov	r0, r5
	bl	PhysMove
	ldr	r5, =Func_8000888
	ldr	r1, [r6, #0x18]
	.call_via r5
	mov	r6, r0
	mov	r0, r10
	bl	Func_80b8530
	mov	r1, r0
	asr	r1, #16
	mov	r0, r6
	.call_via r5
	mov	r2, r8
	ldr	r3, [r2, #4]
	sub	r3, r0
	str	r3, [r2, #4]
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80b845c

.thumb_func_start Func_80b84c0  @ 0x080b84c0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	mov	r8, r0
	bl	GetBattleActor
	ldr	r5, [r0]
	mov	r1, #0
	mov	r0, r5
	bl	Func_80b7f70
	add	r5, #8
	mov	r6, r0
	bl	Func_80b7ed8
	mov	r1, r7
	mov	r0, r5
	bl	PhysMove
	ldr	r5, =Func_8000888
	ldr	r1, [r6, #0x18]
	.call_via r5
	mov	r6, r0
	mov	r0, r8
	bl	_GetUnit
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	Func_80c23c0
	cmp	r0, #0
	beq	.Lb850e
	mov	r0, r6
	mov	r1, #0x18
	b	.Lb8512
.Lb850e:
	mov	r0, r6
	mov	r1, #0x30
.Lb8512:
	.call_via r5
	ldr	r3, [r7, #4]
	sub	r3, r0
	str	r3, [r7, #4]
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b84c0

	.section .text.after_b8530, "ax", %progbits

.thumb_func_start Func_80b8574  @ 0x080b8574
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x3c
	add	r2, sp, #0x10
	mov	r1, #0
	mov	r10, r2
	str	r0, [sp, #0xc]
	mov	r9, r1
	mov	r0, #1
	mov	r1, r10
	bl	Func_80b6b40
	mov	r7, #0
	mov	r8, r0
.Lb859a:
	mov	r0, r7
	add	r7, #1
	bl	_GetUnit
	cmp	r7, #4
	bne	.Lb859a
	mov	r7, #0
	cmp	r7, r8
	bge	.Lb85e2
	ldr	r6, [sp, #0xc]
	mov	r1, #0
	mov	r2, r10
.Lb85b2:
	ldrh	r5, [r2]
	add	r2, #2
	mov	r0, r5
	str	r1, [sp, #4]
	str	r2, [sp]
	bl	_GetUnit
	mov	r3, r0
	add	r3, #0x40
	ldrh	r3, [r3]
	ldr	r1, [sp, #4]
	strh	r3, [r6, #4]
	mov	r3, #0x80
	strh	r3, [r6, #0xa]
	add	r7, #1
	mov	r3, #1
	strh	r5, [r6]
	strh	r1, [r6, #6]
	strh	r1, [r6, #8]
	add	r9, r3
	add	r6, #0x10
	ldr	r2, [sp]
	cmp	r7, r8
	blt	.Lb85b2
.Lb85e2:
	mov	r1, r10
	mov	r0, #2
	bl	Func_80b6b40
	mov	r1, r8
	ldr	r2, [sp, #0xc]
	lsl	r3, r1, #4
	mov	r5, r0
	mov	r1, #0
	mov	r0, #1
	add	r6, r2, r3
	bl	Func_80b6b40
	str	r0, [sp, #8]
	cmp	r5, #0
	ble	.Lb865c
	mov	r3, #0
	mov	r11, r3
	mov	r8, r10
	mov	r7, r5
.Lb860a:
	mov	r1, r8
	ldrh	r5, [r1]
	mov	r2, #2
	mov	r0, r5
	add	r8, r2
	bl	_GetUnit
	strh	r5, [r6]
	mov	r5, r0
	add	r5, #0x40
	ldrh	r3, [r5]
	lsr	r3, #1
	strh	r3, [r6, #4]
	cmp	r3, #0
	beq	.Lb863a
	bl	Random
	ldrh	r3, [r5]
	mov	r2, r3
	mul	r2, r0
	ldrh	r3, [r6, #4]
	lsr	r2, #16
	add	r3, r2
	strh	r3, [r6, #4]
.Lb863a:
	mov	r3, r11
	mov	r1, r11
	strh	r3, [r6, #6]
	strh	r1, [r6, #8]
	bl	Random
	ldr	r2, [sp, #8]
	mov	r3, r2
	mul	r3, r0
	lsr	r3, #16
	strh	r3, [r6, #0xa]
	sub	r7, #1
	mov	r3, #1
	add	r9, r3
	add	r6, #0x10
	cmp	r7, #0
	bne	.Lb860a
.Lb865c:
	mov	r7, r9
	sub	r7, #2
	cmp	r7, #0
	ble	.Lb86ce
	mov	r1, #1
	neg	r1, r1
	add	r1, r9
	mov	r8, r1
	ldr	r2, [sp, #0xc]
	lsl	r1, #4
	mov	r14, r1
	add	r2, r14
	mov	r10, r2
.Lb8676:
	mov	r3, #0
	mov	r6, r8
	mov	r12, r3
	cmp	r6, #0
	ble	.Lb86c2
	ldr	r5, [sp, #0xc]
	mov	r4, r10
	sub	r4, #0x10
	add	r5, r14
.Lb8688:
	mov	r1, #0x14
	ldrsh	r2, [r4, r1]
	mov	r1, #4
	ldrsh	r3, [r4, r1]
	cmp	r2, r3
	ble	.Lb86b8
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	add	r1, sp, #0x2c
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r4
	mov	r1, r5
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r0, sp, #0x2c
	mov	r1, r4
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #1
	add	r12, r2
.Lb86b8:
	sub	r6, #1
	sub	r4, #0x10
	sub	r5, #0x10
	cmp	r6, #0
	bgt	.Lb8688
.Lb86c2:
	mov	r3, r12
	cmp	r3, #0
	beq	.Lb86ce
	sub	r7, #1
	cmp	r7, #0
	bgt	.Lb8676
.Lb86ce:
	mov	r0, r9
	add	sp, #0x3c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b8574

.thumb_func_start Func_80b86ec  @ 0x080b86ec
	push	{lr}
	ldr	r3, =iwram_3001e80
	ldr	r0, =gKeyHeld
	ldr	r1, [r3]
	add	r3, #0x80
	ldr	r4, [r3]
	mov	r2, #0x80
	ldr	r3, [r0]
	lsl	r2, #2
	and	r3, r2
	sub	sp, #4
	cmp	r3, #0
	beq	.Lb870c
	ldrh	r3, [r1, #0x36]
	add	r3, r2
	strh	r3, [r1, #0x36]
.Lb870c:
	ldr	r3, [r0]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb8720
	ldrh	r3, [r1, #0x36]
	ldr	r2, =0xfffffe00
	add	r3, r2
	strh	r3, [r1, #0x36]
.Lb8720:
	ldr	r3, [r4, #0x14]
	cmp	r3, #0
	bne	.Lb873a
	mov	r1, #0xf0
	mov	r3, #0x80
	lsl	r3, #9
	lsl	r1, #15
	str	r3, [sp]
	mov	r0, r1
	mov	r2, #0
	mov	r3, #0
	bl	Func_80c0a24
.Lb873a:
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_80b86ec

.thumb_func_start Func_80b874c  @ 0x080b874c
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	bl	_GetUnit
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.Lb8766
	mov	r0, #1
	neg	r0, r0
	b	.Lb87f6
.Lb8766:
	mov	r0, r7
	bl	Func_80b8f08
	ldr	r3, =iwram_3001f00
	ldr	r2, [r3]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	strh	r0, [r7, #0xa]
	ldr	r1, =0xffffe000
	cmp	r3, #4
	bgt	.Lb8780
	mov	r1, #0x80
	lsl	r1, #6
.Lb8780:
	mov	r3, #0x3c
	str	r1, [r2]
	str	r3, [r2, #4]
	bl	_Func_80198dc
	mov	r2, #6
	ldrsh	r3, [r7, r2]
	cmp	r3, #2
	beq	.Lb87ca
	cmp	r3, #2
	bgt	.Lb87a0
	cmp	r3, #0
	beq	.Lb87d8
	cmp	r3, #1
	beq	.Lb87ea
	b	.Lb87d8
.Lb87a0:
	cmp	r3, #3
	beq	.Lb87bc
	cmp	r3, #0x63
	bne	.Lb87d8
	ldr	r0, =0x843
	bl	_Func_80175a0
	mov	r0, r7
	bl	Func_80b8824
	cmp	r0, #0
	beq	.Lb87f0
	mov	r0, #1
	b	.Lb87f6
.Lb87bc:
	mov	r0, #0x2d
	bl	WaitFrames
	mov	r0, r7
	bl	Func_80b8888
	b	.Lb87f0
.Lb87ca:
	mov	r0, #0x2d
	bl	WaitFrames
	mov	r0, r7
	bl	Func_80b8c1c
	b	.Lb87f0
.Lb87d8:
	ldr	r3, =iwram_3001f00
	ldr	r6, [r3]
	mov	r5, #0
	str	r5, [r6, #0x14]
	mov	r0, r7
	bl	Func_80b8c1c
	str	r5, [r6, #0x14]
	b	.Lb87f0
.Lb87ea:
	mov	r0, r7
	bl	Func_80b88d0
.Lb87f0:
	bl	_Func_8016758
	mov	r0, #0
.Lb87f6:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b874c
