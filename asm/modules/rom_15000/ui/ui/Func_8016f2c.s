	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8016f2c  @ 0x08016f2c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	mov	r1, #0xa0
	ldr	r7, [r3]
	lsl	r1, #3
	mov	r2, #0
	add	r5, r7, r1
	mov	r8, r2
.L16f40:
	ldrh	r6, [r5, #0x16]
	cmp	r6, #0
	beq	.L16f6e
	mov	r4, #0x18
	ldrsh	r3, [r5, r4]
	cmp	r3, #0
	beq	.L16f5e
	mov	r0, r5
	mov	r1, #0
	bl	Func_8017004
	ldrh	r3, [r5, #0x18]
	sub	r3, #1
	strh	r3, [r5, #0x18]
	b	.L16fe6
.L16f5e:
	mov	r1, #0x1a
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L16fe6
	mov	r0, r5
	bl	Func_8016230
	b	.L16fe6
.L16f6e:
	mov	r3, #0x1a
	ldrsh	r2, [r5, r3]
	cmp	r2, #0
	beq	.L16fe6
	mov	r4, #0x18
	ldrsh	r3, [r5, r4]
	cmp	r3, r2
	beq	.L16faa
	mov	r1, #0x1c
	ldrsh	r0, [r5, r1]
	mov	r2, #0x1e
	ldrsh	r1, [r5, r2]
	mov	r3, #0x20
	ldrsh	r2, [r5, r3]
	mov	r4, #0x22
	ldrsh	r3, [r5, r4]
	bl	ClearUIRegion
	mov	r1, #1
	mov	r0, r5
	bl	Func_8017004
	ldrh	r3, [r5, #0x18]
	ldr	r1, =0xea3
	add	r3, #1
	strh	r3, [r5, #0x18]
	mov	r2, #1
	add	r3, r7, r1
	strb	r2, [r3]
	b	.L16fe6
.L16faa:
	mov	r3, #0x1e
	ldrsh	r1, [r5, r3]
	mov	r2, #0x1c
	ldrsh	r0, [r5, r2]
	mov	r4, #0x22
	ldrsh	r3, [r5, r4]
	mov	r4, #0x20
	ldrsh	r2, [r5, r4]
	bl	ClearUIRegion
	ldr	r1, =0xea3
	mov	r3, #1
	add	r2, r7, r1
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
	strb	r3, [r2]
.L16fe6:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	add	r5, #0x24
	cmp	r3, #8
	bne	.L16f40
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8016f2c

