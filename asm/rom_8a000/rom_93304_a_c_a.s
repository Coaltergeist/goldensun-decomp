	.include "macros.inc"

.thumb_func_start Func_80935d4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	ldr	r1, =0xccc
	mov	r0, #0x1b
	ldr	r7, [r3]
	bl	Func_80048f4
	mov	r1, #0xf0
	lsl	r1, #1
	add	r0, r1
	ldr	r3, [r0]
	add	r3, #0x5b
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #0
	bne	.L9367c
	mov	r2, #0xd6
	lsl	r2, #2
	add	r2, r7
	mov	r0, #0
	ldrsh	r3, [r2, r0]
	mov	r8, r2
	cmp	r3, #0
	beq	.L9367c
	mov	r1, #0xd4
	mov	r2, #0xd5
	lsl	r1, #2
	lsl	r2, #2
	add	r6, r7, r1
	add	r3, r7, r2
	ldr	r2, [r3]
	ldr	r3, [r6]
	sub	r2, r3
	ldr	r3, =0x35a
	add	r5, r7, r3
	ldrh	r3, [r5]
	add	r3, #1
	strh	r3, [r5]
	lsl	r3, #16
	asr	r3, #16
	mov	r0, r3
	mul	r0, r2
	mov	r3, r8
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	bl	Func_af0_from_thumb
	mov	r2, r0
	mov	r0, #0xd2
	ldr	r1, [r6]
	lsl	r0, #2
	add	r3, r7, r0
	ldr	r4, =Func_8000888
	ldr	r0, [r3]
	add	r1, r2
	.call_via r4
	mov	r1, #0xd3
	lsl	r1, #2
	add	r3, r7, r1
	str	r0, [r3]
	mov	r0, #0x8c
	lsl	r0, #1
	add	r3, r7, r0
	ldrh	r3, [r3]
	ldr	r2, =iwram_3001af4
	add	r3, #1
	str	r3, [r2]
	mov	r1, #0
	ldrsh	r2, [r5, r1]
	mov	r1, r8
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	cmp	r2, r3
	bne	.L9367c
	mov	r2, r10
	mov	r3, r8
	strh	r2, [r3]
	ldr	r0, =Func_80935d4
	bl	Func_8004278
.L9367c:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80935d4

.thumb_func_start Func_80936a0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e70
	mov	r6, r0
	mov	r7, r1
	mov	r0, #0x1b
	ldr	r1, =0xccc
	ldr	r5, [r3]
	bl	Func_80048f4
	mov	r1, #0xcf
	lsl	r1, #1
	add	r3, r0, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L936f4
	mov	r1, #0x80
	ldr	r3, =Func_80008ac
	lsl	r1, #9
	mov	r0, r6
	bl	_call_via_r3
	mov	r3, #0xd4
	lsl	r3, #2
	add	r1, r5, r3
	add	r3, #4
	add	r2, r5, r3
	ldr	r3, [r2]
	str	r3, [r1]
	mov	r1, #0xd6
	lsl	r1, #2
	add	r3, r5, r1
	add	r1, #2
	str	r0, [r2]
	strh	r7, [r3]
	mov	r2, #0
	add	r3, r5, r1
	strh	r2, [r3]
	ldr	r0, =Func_80935d4
	ldr	r1, =0xc94
	bl	Func_80041d8
.L936f4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80936a0

.thumb_func_start Func_8093710
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e70
	ldr	r1, =0xccc
	mov	r0, #0x1b
	ldr	r6, [r3]
	bl	Func_80048f4
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r0, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L93758
	mov	r2, #0xd6
	lsl	r2, #2
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, #0
	cmp	r3, #0
	beq	.L93758
	mov	r3, #0xd6
	lsl	r3, #2
	add	r6, r3
.L93742:
	mov	r0, #1
	bl	Func_80030f8
	ldr	r2, =0x12b
	add	r5, #1
	cmp	r5, r2
	bgt	.L93758
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bne	.L93742
.L93758:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8093710

.thumb_func_start Func_809376c
	push	{r5, r6, lr}
	mov	r5, r0
	ldr	r6, [r5, #0x68]
	cmp	r6, #0
	beq	.L937b0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, [r6, #8]
	str	r3, [r5, #8]
	mov	r3, r5
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	Func_808d394
	mov	r3, #0
	ldrsh	r0, [r0, r3]
	bl	_Func_8185008
	mov	r2, #8
	ldrsb	r2, [r0, r2]
	ldr	r3, [r6, #0xc]
	lsl	r2, #16
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #0x14]
	str	r3, [r5, #0x14]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #0x10]
.L937b0:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_809376c

.thumb_func_start Func_80937b8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r1
	mov	r3, #0xff
	and	r3, r7
	mov	r8, r0
	mov	r10, r2
	cmp	r3, #6
	bne	.L937d4
	mov	r0, #0x6e
	bl	_Func_80f9080
.L937d4:
	mov	r0, r8
	bl	Func_808ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L93866
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x15
	bl	_Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L93860
	ldr	r1, =.L9fc2c
	bl	_Func_800c2d8
	mov	r1, #0xf
	and	r1, r7
	mov	r0, r5
	bl	_Func_800c300
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	add	r3, #2
	mov	r2, r8
	strh	r2, [r3]
	ldr	r3, =Func_809376c
	ldr	r0, [r5, #0x50]
	ldr	r1, .L93840	@ 0
	str	r3, [r5, #0x6c]
	mov	r3, r0
	add	r3, #0x26
	strb	r1, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r7
	str	r6, [r5, #0x68]
	cmp	r3, #0
	beq	.L9384c
	ldrb	r3, [r0, #9]
	mov	r2, #0xd
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r0, #9]
	b	.L93860

	.align	2, 0
.L93840:
	.word	0
	.pool

.L9384c:
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r0, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r0, #9]
.L93860:
	mov	r0, r10
	bl	Func_809163c
.L93866:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80937b8

.thumb_func_start Func_8093874
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r10, r0
	mov	r8, r1
	bl	Func_808ba1c
	mov	r7, r0
	mov	r5, #0
	mov	r6, #0
	cmp	r7, #0
	beq	.L93958
	mov	r3, #3
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.L938b2
	cmp	r3, #2
	beq	.L938a2
	ldr	r3, [r7, #0x68]
	cmp	r3, #0
	bne	.L938c2
.L938a2:
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0xd1
	bl	_Func_800c150
	mov	r5, r0
	b	.L938c2
.L938b2:
	ldr	r5, [r7, #0x68]
	cmp	r5, #0
	beq	.L93958
	mov	r0, r5
	bl	_Func_800c0f4
	str	r6, [r7, #0x68]
	b	.L93958
.L938c2:
	cmp	r5, #0
	beq	.L93958
	mov	r6, #3
	mov	r2, r8
	and	r6, r2
	cmp	r6, #1
	beq	.L938d6
	cmp	r6, #2
	beq	.L938e8
	b	.L93900
.L938d6:
	mov	r0, r5
	mov	r1, #1
	bl	_Func_800c300
	mov	r3, r5
	add	r3, #0x64
	str	r5, [r7, #0x68]
	strh	r6, [r3]
	b	.L93900
.L938e8:
	mov	r0, r5
	mov	r1, #2
	bl	_Func_800c300
	ldr	r1, =.L9fd38
	mov	r0, r5
	bl	_Func_800c2d8
	mov	r2, r5
	add	r2, #0x64
	mov	r3, #1
	strh	r3, [r2]
.L93900:
	mov	r3, r5
	ldr	r2, .L93938	@ 0
	add	r3, #0x66
	mov	r1, r10
	strh	r1, [r3]
	sub	r3, #0x11
	strb	r2, [r3]
	ldr	r3, =Func_809376c
	ldr	r6, [r5, #0x50]
	str	r3, [r5, #0x6c]
	mov	r3, r6
	add	r3, #0x26
	strb	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	mov	r2, r8
	and	r3, r2
	str	r7, [r5, #0x68]
	cmp	r3, #0
	beq	.L93944
	ldrb	r3, [r6, #9]
	mov	r2, #0xd
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r6, #9]
	b	.L93958

	.align	2, 0
.L93938:
	.word	0
	.pool

.L93944:
	ldr	r3, [r7, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r6, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r6, #9]
.L93958:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8093874

