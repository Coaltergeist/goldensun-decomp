	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b845c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #0xc
	mov	r8, r1
	mov	r10, r0
	bl	Func_80b7dd0
	ldr	r5, [r0]
	mov	r1, #0
	mov	r0, r5
	bl	Func_80b7f70
	add	r5, #8
	mov	r6, r0
	bl	Func_80b7ed8
	mov	r1, r8
	mov	r0, r5
	bl	Func_8005268
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

.thumb_func_start Func_80b84c0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	mov	r8, r0
	bl	Func_80b7dd0
	ldr	r5, [r0]
	mov	r1, #0
	mov	r0, r5
	bl	Func_80b7f70
	add	r5, #8
	mov	r6, r0
	bl	Func_80b7ed8
	mov	r1, r7
	mov	r0, r5
	bl	Func_8005268
	ldr	r5, =Func_8000888
	ldr	r1, [r6, #0x18]
	.call_via r5
	mov	r6, r0
	mov	r0, r8
	bl	_Func_8077394
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

.thumb_func_start Func_80b8530
	push	{r5, lr}
	mov	r5, r0
	bl	_Func_8077394
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	Func_80c2454
	lsl	r0, #24
	lsr	r3, r0, #8
	cmp	r3, #0
	bne	.Lb856a
	mov	r0, r5
	bl	_Func_8077394
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	Func_80c23c0
	mov	r3, #0xc0
	lsl	r3, #13
	cmp	r0, #0
	bne	.Lb856a
	mov	r3, #0xc0
	lsl	r3, #14
.Lb856a:
	mov	r0, r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80b8530

.thumb_func_start Func_80b8574
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
	bl	_Func_8077394
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
	bl	_Func_8077394
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
	bl	_Func_8077394
	strh	r5, [r6]
	mov	r5, r0
	add	r5, #0x40
	ldrh	r3, [r5]
	lsr	r3, #1
	strh	r3, [r6, #4]
	cmp	r3, #0
	beq	.Lb863a
	bl	Func_8004458
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
	bl	Func_8004458
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

.thumb_func_start Func_80b86ec
	push	{lr}
	ldr	r3, =iwram_3001e80
	ldr	r0, =iwram_3001ae8
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

.thumb_func_start Func_80b874c
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	bl	_Func_8077394
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
	bl	Func_80030f8
	mov	r0, r7
	bl	Func_80b8888
	b	.Lb87f0
.Lb87ca:
	mov	r0, #0x2d
	bl	Func_80030f8
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

.thumb_func_start Func_80b8808
	push	{lr}
	cmp	r0, #7
	bhi	.Lb8812
	mov	r0, #0
	b	.Lb8820
.Lb8812:
	mov	r3, r0
	sub	r3, #0x80
	mov	r0, #0
	cmp	r3, #5
	bls	.Lb8820
	mov	r0, #1
	neg	r0, r0
.Lb8820:
	pop	{r1}
	bx	r1
.func_end Func_80b8808

.thumb_func_start Func_80b8824
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	bl	Func_8004458
	lsl	r0, #4
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lb886e
	mov	r5, sp
	mov	r0, #1
	mov	r1, r5
	bl	Func_80b6b40
	mov	r6, r0
	mov	r7, #0
	cmp	r6, #0
	beq	.Lb8864
	mov	r8, r5
	mov	r5, #0
.Lb884e:
	mov	r2, r8
	ldrsh	r0, [r5, r2]
	bl	Func_80b8064
	add	r7, #1
	mov	r0, #8
	bl	Func_80030f8
	add	r5, #2
	cmp	r7, r6
	bne	.Lb884e
.Lb8864:
	mov	r0, #0x16
	bl	Func_80030f8
	mov	r0, #1
	b	.Lb8876
.Lb886e:
	ldr	r0, =0x844
	bl	_Func_80175a0
	mov	r0, #0
.Lb8876:
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b8824

.thumb_func_start Func_80b8888
	push	{r5, r6, lr}
	mov	r2, #0
	ldrsh	r5, [r0, r2]
	mov	r0, r5
	bl	_Func_8077394
	mov	r6, r0
	mov	r0, r5
	bl	Func_80b8808
	cmp	r0, #0
	bge	.Lb88a6
	mov	r0, #1
	neg	r0, r0
	b	.Lb88c4
.Lb88a6:
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	mov	r0, #0
	cmp	r3, #0
	ble	.Lb88c4
	bl	_Func_80198dc
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x816
	bl	_Func_80175a0
	mov	r0, #0
.Lb88c4:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80b8888

.thumb_func_start Func_80b88d0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x80
	str	r0, [sp, #0xc]
	ldr	r1, [sp, #0xc]
	mov	r2, #0
	ldrsh	r1, [r1, r2]
	mov	r0, #0
	mov	r9, r0
	mov	r0, r1
	str	r1, [sp, #8]
	bl	Func_80b8808
	cmp	r0, #0
	blt	.Lb890a
	ldr	r2, [sp, #0xc]
	mov	r3, #0xa
	ldrsh	r2, [r2, r3]
	mov	r0, r2
	str	r2, [sp, #4]
	bl	Func_80b8808
	cmp	r0, #0
	bge	.Lb8910
.Lb890a:
	mov	r0, #1
	neg	r0, r0
	b	.Lb8b36
.Lb8910:
	ldr	r3, =iwram_3001f00
	ldr	r1, [sp, #0xc]
	ldr	r2, [r3]
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	mov	r1, #0xa0
	lsl	r1, #7
	cmp	r3, #4
	bgt	.Lb8926
	mov	r1, #0x80
	lsl	r1, #6
.Lb8926:
	mov	r3, #0x3c
	str	r1, [r2]
	str	r3, [r2, #4]
	mov	r0, #0xa
	bl	Func_80030f8
	bl	Func_8004458
	ldr	r0, [sp, #8]
	bl	Func_80b7dd0
	ldr	r2, [sp, #4]
	ldr	r6, [r0]
	cmp	r2, #7
	bhi	.Lb895c
	add	r3, sp, #0x64
	mov	r10, r3
	mov	r0, #2
	mov	r1, r10
	bl	Func_80b6b40
	mov	r11, r0
	mov	r0, #0x80
	str	r0, [sp]
	b	.Lb896c

	.pool_aligned

.Lb895c:
	add	r1, sp, #0x64
	mov	r0, #1
	mov	r10, r1
	bl	Func_80b6b40
	mov	r2, #0
	str	r2, [sp]
	mov	r11, r0
.Lb896c:
	mov	r3, r11
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb898c
.Lb8974:
	ldr	r0, [sp]
	ldr	r1, [sp, #8]
	add	r3, r5, r0
	cmp	r3, r1
	bne	.Lb8986
	mov	r0, r6
	mov	r1, #3
	bl	_Func_800c300
.Lb8986:
	add	r5, #1
	cmp	r5, r11
	bne	.Lb8974
.Lb898c:
	mov	r0, #0x1e
	bl	Func_80030f8
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lb89bc	@ 0x3f40
	strh	r3, [r2]
	mov	r2, r11
	mov	r5, #0
	cmp	r2, #0
	beq	.Lb89b0
.Lb89a0:
	ldr	r3, [sp]
	mov	r1, #1
	add	r0, r5, r3
	add	r5, #1
	bl	Func_80c0f98
	cmp	r5, r11
	bne	.Lb89a0
.Lb89b0:
	ldr	r0, =REG_BLDALPHA
	ldr	r7, .Lb89c0	@ 0x10
	ldr	r6, .Lb89c4	@ 0x1000
	mov	r5, #0
	mov	r8, r0
	b	.Lb89d0

	.align	2, 0
.Lb89bc:
	.word	0x3f40
.Lb89c0:
	.word	0x10
.Lb89c4:
	.word	0x1000
	.pool

.Lb89d0:
	sub	r3, r7, r5
	orr	r3, r6
	mov	r1, r8
	strh	r3, [r1]
	mov	r0, #1
	add	r5, #1
	bl	Func_80030f8
	cmp	r5, #0x10
	bne	.Lb89d0
	mov	r0, #9
	bl	_Func_801f200
	ldr	r2, [sp, #4]
	cmp	r2, #0x7f
	ble	.Lb8a2a
	mov	r0, #2
	mov	r1, r10
	bl	Func_80b6b40
	mov	r8, r0
	mov	r5, #0
	cmp	r9, r8
	beq	.Lb8a5e
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r1, r10
	add	r7, r3, r1
.Lb8a08:
	mov	r6, r5
	add	r6, #0x80
	mov	r0, r6
	bl	_Func_8077394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	ble	.Lb8a22
	mov	r3, #1
	strh	r6, [r7]
	add	r9, r3
	add	r7, #2
.Lb8a22:
	add	r5, #1
	cmp	r9, r8
	bne	.Lb8a08
	b	.Lb8a5e
.Lb8a2a:
	mov	r0, #1
	mov	r1, r10
	bl	Func_80b6b40
	mov	r7, r0
	mov	r5, #0
	cmp	r9, r7
	beq	.Lb8a5e
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r1, r10
	add	r6, r3, r1
.Lb8a42:
	mov	r0, r5
	bl	_Func_8077394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	ble	.Lb8a58
	mov	r3, #1
	strh	r5, [r6]
	add	r9, r3
	add	r6, #2
.Lb8a58:
	add	r5, #1
	cmp	r9, r7
	bne	.Lb8a42
.Lb8a5e:
	ldr	r2, =0xff
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r1, r10
	strh	r2, [r1, r3]
	mov	r0, r10
	mov	r1, #0
	bl	Func_80b7b6c
	ldr	r1, [sp, #0xc]
	mov	r2, #8
	ldrsh	r3, [r1, r2]
	add	r0, sp, #0x10
	str	r3, [r0]
	ldr	r2, [sp, #8]
	mov	r3, r9
	str	r2, [r0, #8]
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb8aa2
	mov	r1, r10
	add	r2, sp, #0x34
	mov	r4, #0
	b	.Lb8a94

	.pool_aligned

.Lb8a94:
	ldrh	r3, [r4, r1]
	add	r5, #1
	strh	r3, [r2]
	add	r4, #2
	add	r2, #2
	cmp	r5, r9
	bne	.Lb8a94
.Lb8aa2:
	mov	r1, r9
	str	r1, [r0, #0x14]
	ldr	r2, [sp, #4]
	cmp	r2, #7
	bhi	.Lb8ab0
	mov	r3, #1
	b	.Lb8ab2
.Lb8ab0:
	mov	r3, #0
.Lb8ab2:
	str	r3, [r0, #4]
	bl	_Func_80d6578
	mov	r0, #0xa
	bl	Func_80030f8
	bl	Func_80b6c90
	ldr	r3, .Lb8ae8	@ 0x3f40
	ldr	r2, =REG_BLDCNT
	strh	r3, [r2]
	mov	r3, r11
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb8ae0
.Lb8ad0:
	ldr	r1, [sp]
	add	r0, r5, r1
	mov	r1, #1
	add	r5, #1
	bl	Func_80c0f98
	cmp	r5, r11
	bne	.Lb8ad0
.Lb8ae0:
	ldr	r7, =REG_BLDALPHA
	ldr	r6, .Lb8aec	@ 0x1000
	mov	r5, #0
	b	.Lb8af8

	.align	2, 0
.Lb8ae8:
	.word	0x3f40
.Lb8aec:
	.word	0x1000
	.pool

.Lb8af8:
	mov	r3, r5
	orr	r3, r6
	strh	r3, [r7]
	mov	r0, #1
	add	r5, #1
	bl	Func_80030f8
	cmp	r5, #0x10
	bne	.Lb8af8
	mov	r2, r11
	mov	r5, #0
	cmp	r2, #0
	beq	.Lb8b22
.Lb8b12:
	ldr	r3, [sp]
	mov	r1, #0
	add	r0, r5, r3
	add	r5, #1
	bl	Func_80c0f98
	cmp	r5, r11
	bne	.Lb8b12
.Lb8b22:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x64
	bl	Func_80c0cec
	mov	r0, #3
	bl	Func_80030f8
	mov	r0, #0
.Lb8b36:
	add	sp, #0x80
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b88d0

.thumb_func_start Func_80b8b48
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f00
	ldr	r2, [r3]
	mov	r1, #0x80
	ldr	r3, [r2]
	lsl	r1, #6
	sub	sp, #0x54
	mov	r6, r0
	cmp	r3, r1
	bne	.Lb8b66
	str	r1, [r2]
	mov	r0, #0xa
	bl	Func_80030f8
	b	.Lb8b6e
.Lb8b66:
	str	r1, [r2]
	mov	r0, #0x1e
	bl	Func_80030f8
.Lb8b6e:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	mov	r5, sp
	str	r0, [r5, #8]
	bl	Func_80b8808
	cmp	r0, #0
	blt	.Lb8b8e
	ldrh	r0, [r6, #0xa]
	strh	r0, [r5, #0x24]
	lsl	r0, #16
	asr	r0, #16
	bl	Func_80b8808
	cmp	r0, #0
	bge	.Lb8b94
.Lb8b8e:
	mov	r0, #1
	neg	r0, r0
	b	.Lb8c0a
.Lb8b94:
	ldr	r0, [r5, #8]
	bl	_Func_8077394
	mov	r3, #0x24
	ldrsh	r0, [r5, r3]
	bl	_Func_8077394
	bl	Func_8004458
	mov	r1, #1
	ldr	r0, [r5, #8]
	bl	_Func_8019908
	ldr	r0, =0x814
	bl	_Func_80175a0
	mov	r2, #0xd
	mov	r3, #0x24
	ldrsh	r1, [r5, r3]
	ldr	r0, [r5, #8]
	mov	r3, #0
	bl	Func_80b82c4
	ldr	r0, [r5, #8]
	bl	Func_80b7dd0
	mov	r1, #0x10
	ldr	r0, [r0]
	bl	_Func_800c344
	mov	r3, #0x24
	ldrsh	r0, [r5, r3]
	bl	Func_80b7dd0
	ldrh	r3, [r5, #0x24]
	mov	r2, #1
	str	r2, [r5, #0x14]
	cmp	r3, #7
	bhi	.Lb8be6
	str	r2, [r5, #4]
	b	.Lb8bea
.Lb8be6:
	mov	r3, #0
	str	r3, [r5, #4]
.Lb8bea:
	mov	r3, #0
	mov	r0, #4
	str	r3, [r5, #0x1c]
	bl	Func_80030f8
	mov	r0, r5
	bl	_Func_80e3a3c
	mov	r3, #0x24
	ldrsh	r0, [r5, r3]
	bl	Func_80b8000
	ldr	r0, [r5, #8]
	bl	Func_80b8000
	mov	r0, #0
.Lb8c0a:
	add	sp, #0x54
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80b8b48

.thumb_func_start Func_80b8c1c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f00
	mov	r5, r0
	ldr	r2, [r3]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	sub	sp, #0x5c
	ldr	r1, =0xffffe000
	cmp	r3, #4
	bgt	.Lb8c3a
	mov	r1, #0x80
	lsl	r1, #6
.Lb8c3a:
	ldr	r3, [r2]
	cmp	r3, r1
	bne	.Lb8c4c
	mov	r3, #0x28
	str	r3, [r2, #4]
	mov	r0, #0x28
	bl	Func_80030f8
	b	.Lb8c58
.Lb8c4c:
	mov	r3, #0x28
	str	r1, [r2]
	str	r3, [r2, #4]
	mov	r0, #0x28
	bl	Func_80030f8
.Lb8c58:
	mov	r2, #8
	ldrsh	r3, [r5, r2]
	add	r6, sp, #8
	str	r3, [r6]
	mov	r1, #0xc
	ldrsh	r3, [r5, r1]
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	str	r3, [r6, #0x10]
	mov	r1, #0xa
	ldrsh	r3, [r5, r1]
	str	r0, [r6, #8]
	str	r3, [r6, #0xc]
	bl	Func_80b8808
	cmp	r0, #0
	bge	.Lb8c80
	mov	r0, #1
	neg	r0, r0
	b	.Lb8d9c
.Lb8c80:
	ldr	r3, [r6, #0xc]
	cmp	r3, #0x7f
	ble	.Lb8c8c
	add	r7, sp, #0x2c
	mov	r0, #2
	b	.Lb8c90
.Lb8c8c:
	add	r7, sp, #0x2c
	mov	r0, #1
.Lb8c90:
	mov	r1, r7
	bl	Func_80b6b40
	str	r0, [r6, #0x14]
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	mov	r3, #2
	neg	r3, r3
	and	r0, r3
	bl	_Func_801f200
	ldr	r0, [r6, #8]
	bl	Func_80b7dd0
	ldr	r0, [r0]
	mov	r1, #3
	mov	r10, r0
	bl	_Func_800c300
	mov	r0, r10
	mov	r1, #0x10
	bl	_Func_800c344
	ldrh	r3, [r5, #0xa]
	cmp	r3, #7
	bhi	.Lb8cda
	mov	r2, #1
	mov	r8, r2
	str	r2, [r6, #4]
	mov	r0, #1
	mov	r1, r7
	bl	Func_80b6b40
	mov	r3, r8
	b	.Lb8ce8
.Lb8cda:
	mov	r3, #0
	str	r3, [r6, #4]
	mov	r0, #2
	mov	r1, r7
	bl	Func_80b6b40
	mov	r3, #1
.Lb8ce8:
	str	r3, [r6, #0x14]
	ldr	r3, [r6, #0x14]
	mov	r7, #0
	mov	r2, r6
	cmp	r3, #0
	beq	.Lb8d36
	mov	r5, #0
.Lb8cf6:
	lsl	r3, r7, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	Func_80b7dd0
	ldr	r3, [r0]
	ldr	r1, [r3, #0x50]
	mov	r3, r1
	add	r3, #0x27
	ldrb	r3, [r3]
	sub	r3, #1
	mov	r0, #0
	cmp	r3, #0
	beq	.Lb8d2a
	mov	r12, r3
	add	r3, r5, r6
	mov	r2, r3
	add	r2, #0x34
	add	r1, #0x28
.Lb8d1c:
	ldmia	r1!, {r3}
	ldrb	r3, [r3, #5]
	add	r0, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r0, r12
	bne	.Lb8d1c
.Lb8d2a:
	ldr	r3, [r6, #0x14]
	add	r7, #1
	add	r5, #4
	mov	r2, r6
	cmp	r7, r3
	bne	.Lb8cf6
.Lb8d36:
	mov	r7, #0
	mov	r0, r6
	str	r7, [r6]
	str	r7, [r6, #0x18]
	bl	_Func_80cb7f8
	mov	r3, #1
	str	r3, [r6]
	mov	r0, r6
	bl	_Func_80cb7f8
	mov	r3, #2
	str	r3, [r6]
	mov	r0, r6
	bl	_Func_80cb7f8
	mov	r3, #3
	str	r3, [r6]
	mov	r0, r6
	bl	_Func_80cb7f8
	mov	r0, r6
	str	r7, [r6]
	bl	_Func_80d6660
	mov	r0, r10
	mov	r1, #1
	bl	_Func_800c300
	add	r5, sp, #8
	ldr	r3, [r5, #0x14]
	mov	r2, r5
	cmp	r3, #0
	beq	.Lb8d94
	mov	r6, #0x24
.Lb8d7c:
	str	r2, [sp, #4]
	ldrsh	r0, [r2, r6]
	str	r2, [sp]
	bl	Func_80b8000
	ldr	r1, [sp, #4]
	ldr	r3, [r1, #0x14]
	add	r7, #1
	add	r6, #2
	ldr	r2, [sp]
	cmp	r7, r3
	bne	.Lb8d7c
.Lb8d94:
	ldr	r0, [r5, #8]
	bl	Func_80b8000
	mov	r0, #0
.Lb8d9c:
	add	sp, #0x5c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b8c1c

.thumb_func_start Func_80b8db8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r5, r0
	mov	r7, r1
	mov	r8, r2
	cmp	r3, #0
	bne	.Lb8dd6
	mov	r2, sp
	mov	r3, #0
	strb	r3, [r2]
	strb	r3, [r2, #1]
	strb	r3, [r2, #2]
	strb	r3, [r2, #3]
.Lb8dd6:
	mov	r0, r5
	bl	_Func_8077394
	mov	r6, r0
	ldrh	r3, [r6, #0x38]
	sub	r3, r7
	strh	r3, [r6, #0x38]
	lsl	r3, #16
	cmp	r3, #0
	bge	.Lb8dee
	mov	r3, #0
	strh	r3, [r6, #0x38]
.Lb8dee:
	mov	r0, r5
	bl	Func_80b7dd0
	mov	r1, #5
	ldr	r0, [r0]
	bl	_Func_800c300
	mov	r0, #0
	bl	_Func_801f200
	bl	_Func_80198dc
	cmp	r5, #7
	bhi	.Lb8e2e
	mov	r2, r8
	cmp	r2, #0
	beq	.Lb8e16
	ldr	r0, =0x823
	bl	_Func_80175a0
.Lb8e16:
	mov	r0, r7
	mov	r1, #5
	bl	_Func_8019908
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x827
	bl	_Func_80175a0
	b	.Lb8e58
.Lb8e2e:
	mov	r3, r8
	cmp	r3, #0
	beq	.Lb8e3a
	ldr	r0, =0x822
	bl	_Func_80175a0
.Lb8e3a:
	mov	r0, r7
	mov	r1, #5
	bl	_Func_8019908
	mov	r1, #1
	mov	r0, r5
	bl	_Func_8019908
	ldr	r0, =0x826
	bl	_Func_80175a0
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
.Lb8e58:
	mov	r0, r5
	bl	Func_80b8ec4
	cmp	r5, #7
	bhi	.Lb8e7a
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bgt	.Lb8e90
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x825
	bl	_Func_80175a0
	b	.Lb8e90
.Lb8e7a:
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bgt	.Lb8e90
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x838
	bl	_Func_80175a0
.Lb8e90:
	mov	r0, r5
	bl	Func_80b7dd0
	mov	r1, #1
	ldr	r0, [r0]
	bl	_Func_800c300
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b8db8

