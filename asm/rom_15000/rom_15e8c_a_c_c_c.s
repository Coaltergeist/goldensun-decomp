	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80165d8
	push	{r5, r6, r7, lr}
	mov	r7, r3
	ldr	r3, =iwram_3001e8c
	mov	r12, r1
	ldr	r3, [r3]
	mov	r1, #0xc4
	lsl	r1, #3
	add	r4, r3, r1
	ldr	r3, [r4]
	mov	r6, r0
	ldr	r5, [sp, #0x10]
	mov	r0, #0
	mov	r1, #0
	b	.L165fe
.L165f4:
	add	r1, #1
	add	r4, #0x28
	cmp	r1, #3
	beq	.L16604
	ldr	r3, [r4]
.L165fe:
	cmp	r3, #0
	bne	.L165f4
	mov	r0, r4
.L16604:
	cmp	r0, #0
	beq	.L16668
	lsl	r3, r2, #8
	strh	r3, [r0, #0x1e]
	strh	r3, [r0, #4]
	lsl	r3, r7, #8
	strh	r3, [r0, #6]
	mov	r3, r12
	strh	r3, [r0, #0x12]
	mov	r3, #0xf
	strh	r3, [r0, #0x16]
	mov	r3, #0xa
	strh	r3, [r0, #0x1a]
	ldr	r3, [sp, #0x14]
	mov	r2, #0
	str	r6, [r0]
	strh	r2, [r0, #0x14]
	strh	r2, [r0, #0x18]
	strh	r2, [r0, #0x20]
	strh	r3, [r0, #0x24]
	cmp	r5, #0
	beq	.L1664c
	mov	r2, r0
	mov	r1, #0
	add	r2, #8
.L16636:
	ldrh	r3, [r5]
	add	r1, #1
	strh	r3, [r2]
	add	r5, #2
	add	r2, #2
	cmp	r1, #3
	bls	.L16636
	b	.L16664

	.pool_aligned

.L1664c:
	mov	r3, r0
	ldr	r2, =0
	mov	r1, #0
	add	r3, #8
.L16654:
	add	r1, #1
	strh	r2, [r3]
	add	r3, #2
	cmp	r1, #3
	bls	.L16654
	b	.L16664

	.pool_aligned

.L16664:
	mov	r3, #0
	strh	r3, [r0, #0x10]
.L16668:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80165d8

.thumb_func_start Func_8016670
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e8c
	mov	r4, #0xc4
	ldr	r3, [r3]
	lsl	r4, #3
	mov	r6, r1
	mov	r5, #0
	add	r1, r3, r4
	mov	r4, #0
	b	.L16688
.L16684:
	add	r1, #0x28
	add	r4, #1
.L16688:
	cmp	r4, #3
	beq	.L1669a
	ldr	r3, [r1]
	cmp	r3, #0
	beq	.L16698
	ldrh	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.L16684
.L16698:
	mov	r5, r1
.L1669a:
	cmp	r5, #0
	beq	.L1670e
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L166b2
	mov	r3, #0xa0
	lsl	r3, #4
	strh	r3, [r5, #6]
	mov	r3, #0xc0
	lsl	r3, #2
	str	r0, [r5]
	b	.L166de
.L166b2:
	cmp	r2, #0
	bne	.L166e0
	ldrh	r3, [r5, #6]
	mov	r2, r3
	cmp	r2, #0
	bne	.L166c6
	mov	r3, #0xa0
	lsl	r3, #4
	strh	r3, [r5, #6]
	b	.L166da
.L166c6:
	mov	r1, #0xd0
	lsl	r1, #4
	cmp	r2, r1
	bcs	.L166d4
	add	r3, r1
	strh	r3, [r5, #6]
	b	.L166da
.L166d4:
	mov	r0, r5
	bl	Func_80167d8
.L166da:
	mov	r3, #0xc0
	lsl	r3, #2
.L166de:
	strh	r3, [r5, #4]
.L166e0:
	mov	r3, #0xc0
	lsl	r3, #2
	strh	r3, [r5, #0x1e]
	ldr	r3, [r5]
	mov	r2, #0
	strh	r2, [r3, #0x14]
	mov	r3, #0xf
	strh	r3, [r5, #0x16]
	mov	r3, #0xa
	strh	r3, [r5, #0x1a]
	strh	r6, [r5, #0x12]
	mov	r3, r5
	strh	r2, [r5, #0x14]
	strh	r2, [r5, #0x18]
	strh	r2, [r5, #0x10]
	strh	r2, [r5, #0x20]
	mov	r4, #0
	add	r3, #8
.L16704:
	add	r4, #1
	strh	r2, [r3]
	add	r3, #2
	cmp	r4, #3
	bls	.L16704
.L1670e:
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8016670

.thumb_func_start Func_801671c
	push	{lr}
	mov	r1, #0xf0
	ldr	r3, =Func_80008d8
	lsl	r1, #4
	mov	r2, #0
	ldr	r0, =0x6002500
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end Func_801671c

.thumb_func_start Func_8016738
	push	{lr}
	mov	r1, #0xf0
	ldr	r3, =Func_80008d8
	lsl	r1, #4
	ldr	r2, =0x44444444
	ldr	r0, =0x6002500
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end Func_8016738

.thumb_func_start Func_8016758
	push	{r5, lr}
	ldr	r3, =iwram_3001e8c
	mov	r1, #0xc4
	ldr	r3, [r3]
	lsl	r1, #3
	add	r2, r3, r1
	mov	r5, #0
	mov	r1, #0
	b	.L1676e
.L1676a:
	add	r2, #0x28
	add	r1, #1
.L1676e:
	cmp	r1, #3
	beq	.L16780
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L1677e
	ldrh	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.L1676a
.L1677e:
	mov	r5, r2
.L16780:
	cmp	r5, #0
	beq	.L167a2
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L16792
	bl	Func_801671c
	mov	r3, #0
	strh	r3, [r5, #6]
.L16792:
	mov	r3, #0
	strh	r3, [r5, #4]
	strh	r3, [r5, #0x14]
	mov	r2, #0xf
	strh	r3, [r5, #0x18]
	mov	r3, #0xa
	strh	r2, [r5, #0x16]
	strh	r3, [r5, #0x1a]
.L167a2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8016758

.thumb_func_start Func_80167ac
	ldr	r3, =iwram_3001e8c
	ldr	r4, =0xeae
	ldr	r2, [r3]
	ldrh	r1, [r0, #0x16]
	add	r3, r2, r4
	strh	r1, [r3]
	sub	r4, #2
	ldrh	r1, [r0, #0x18]
	add	r3, r2, r4
	strh	r1, [r3]
	ldr	r1, =0xea8
	ldrh	r3, [r0, #0x1a]
	add	r2, r1
	strh	r3, [r2]
	bx	lr
.func_end Func_80167ac

