	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80165d8  @ 0x080165d8
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

