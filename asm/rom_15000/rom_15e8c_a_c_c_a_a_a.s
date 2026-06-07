	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8016418
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r7, r1
	cmp	r5, #0
	beq	.L16472
	bl	Func_8016478
	ldrh	r3, [r5, #0xc]
	strh	r3, [r5, #0x1c]
	ldrh	r3, [r5, #0xe]
	strh	r3, [r5, #0x1e]
	ldrh	r3, [r5, #8]
	strh	r3, [r5, #0x20]
	ldrh	r3, [r5, #0xa]
	mov	r6, #0
	strh	r6, [r5, #0x16]
	strh	r3, [r5, #0x22]
	cmp	r7, #0
	beq	.L1646c
	ldrh	r0, [r5, #0xc]
	ldrh	r1, [r5, #0xe]
	ldrh	r2, [r5, #8]
	ldrh	r3, [r5, #0xa]
	bl	Func_8016178
	str	r6, [r5]
	str	r6, [r5, #4]
	strh	r6, [r5, #8]
	strh	r6, [r5, #0xa]
	strh	r6, [r5, #0xc]
	strh	r6, [r5, #0xe]
	strh	r6, [r5, #0x10]
	strh	r6, [r5, #0x12]
	strh	r6, [r5, #0x14]
	strh	r6, [r5, #0x16]
	strh	r6, [r5, #0x18]
	strh	r6, [r5, #0x1a]
	strh	r6, [r5, #0x1c]
	strh	r6, [r5, #0x1e]
	strh	r6, [r5, #0x20]
	strh	r6, [r5, #0x22]
	b	.L16472
.L1646c:
	mov	r3, #4
	strh	r7, [r5, #0x18]
	strh	r3, [r5, #0x1a]
.L16472:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8016418

.thumb_func_start Func_8016478
	push	{r5, lr}
	mov	r5, r0
	ldrh	r2, [r5, #0x16]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L16490
	bl	Func_8016498
	mov	r0, r5
	bl	Func_80164ac
.L16490:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8016478

