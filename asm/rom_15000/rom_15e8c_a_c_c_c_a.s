	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_65d8, "ax", %progbits

.thumb_func_start Func_8016670  @ 0x08016670
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
