	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80167e0  @ 0x080167e0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r6, =0x6002520
	lsl	r1, r3, #1
	lsl	r3, #3
	mov	r8, r3
	add	r5, r3, r6
	ldr	r3, =0x6002500
	sub	sp, #8
	str	r3, [sp]
	mov	r3, #0x20
	mov	r2, #0x18
	mov	r4, #0x84
	sub	r3, r1
	sub	r2, r1
	lsl	r4, #24
	lsl	r3, #2
	mov	r9, r2
	mov	r11, r4
	mov	r10, r3
	mov	r7, #0x1d
.L16818:
	mov	r2, r9
	mov	r4, r11
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, r6
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, [sp]
	ldr	r3, =Func_80008d8
	add	r0, r10
	mov	r1, r8
	mov	r2, #0
	bl	_call_via_r3
	ldr	r3, [sp]
	sub	r7, #1
	add	r3, #0x80
	add	r6, #0x80
	add	r5, #0x80
	str	r3, [sp]
	cmp	r7, #0
	bge	.L16818
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80167e0

.thumb_func_start Func_8016868  @ 0x08016868
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	mov	r2, #0xc4
	ldr	r3, [r3]
	lsl	r2, #3
	add	r5, r3, r2
	mov	r3, #1
	mov	r7, #0
	mov	r8, r3
.L1687e:
	ldr	r2, [r5]
	cmp	r2, #0
	beq	.L168dc
	ldr	r3, [r2, #0x18]
	cmp	r3, #0
	bne	.L168dc
	ldrh	r3, [r2, #0x16]
	cmp	r3, #0
	bne	.L16894
	str	r3, [r5]
	b	.L168dc
.L16894:
	ldrh	r6, [r2, #0x12]
	cmp	r6, #0
	beq	.L168a2
	mov	r0, r5
	bl	Func_8019854
	b	.L168dc
.L168a2:
	mov	r0, r5
	bl	AdvanceMsgText
	cmp	r0, #8
	beq	.L168b2
	cmp	r0, #9
	beq	.L168b8
	b	.L168dc
.L168b2:
	ldr	r3, [r5]
	mov	r2, r8
	b	.L168da
.L168b8:
	ldr	r0, [r5]
	ldrh	r3, [r0, #0x16]
	mov	r1, #2
	and	r1, r3
	lsl	r1, #16
	lsr	r1, #16
	bl	CloseUIBox
	ldr	r3, [r5]
	mov	r2, r8
	strh	r6, [r5, #4]
	strh	r6, [r5, #6]
	strh	r6, [r5, #0x12]
	strh	r6, [r5, #0x14]
	strh	r6, [r5, #0x16]
	strh	r6, [r5, #0x18]
	strh	r6, [r5, #0x1a]
.L168da:
	strh	r2, [r3, #0x14]
.L168dc:
	add	r7, #1
	add	r5, #0x28
	cmp	r7, #3
	bne	.L1687e
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8016868

.thumb_func_start AdvanceMsgText  @ 0x080168f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	ldr	r1, =gKeyHeld
	ldr	r3, [r3]
	mov	r6, r0
	mov	r8, r3
	mov	r0, #0x83
	ldr	r3, [r1]
	ldr	r3, =gState
	lsl	r0, #2
	add	r3, r0
	ldrb	r3, [r3]
	ldr	r2, =.L7380b
	ldrb	r2, [r2, r3]
	sub	sp, #0x34
	ldr	r3, =0xea5
	str	r2, [sp, #0x20]
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L16944
	ldr	r3, =iwram_3001cd0
	ldrh	r3, [r3]
	mov	r2, r3
	cmp	r2, #0
	bge	.L16936
	mov	r2, #0
.L16936:
	cmp	r2, #2
	ble	.L1693c
	mov	r2, #2
.L1693c:
	lsl	r3, r2, #2
	add	r3, r2
	add	r3, #3
	str	r3, [sp, #0x20]
.L16944:
	ldrh	r3, [r6, #0x1c]
	cmp	r3, #0
	beq	.L16958
	mov	r0, #1
	bl	Func_80167e0
	ldrh	r3, [r6, #0x1c]
	sub	r3, #1
	strh	r3, [r6, #0x1c]
	b	.L16f18
.L16958:
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L16972
	ldrh	r2, [r6, #0x22]
	mov	r3, r2
	cmp	r3, #0
	beq	.L16972
	ldr	r1, =0xffff
	add	r3, r2, r1
	strh	r3, [r6, #0x22]
	b	.L16f18
.L1696e:
	mov	r0, #9
	b	.L16f1a
.L16972:
	ldrh	r3, [r6, #0x20]
	mov	r7, #0
	cmp	r3, #0
	bne	.L16988
	ldrh	r3, [r6, #0x12]
	mov	r2, #0xeb
	lsl	r3, #1
	lsl	r2, #4
	add	r3, r2
	mov	r4, r8
	ldrh	r7, [r4, r3]
.L16988:
	cmp	r7, #0x1e
	bls	.L1698e
	b	.L16d76
.L1698e:
	ldr	r2, =.L16998
	lsl	r3, r7, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L16998:
	.word	.L16d58
	.word	.L16a80
	.word	.L16c2c
	.word	.L16a14
	.word	.L16c7c
	.word	.L16c58
	.word	.L16c62
	.word	.L16d18
	.word	.L16c90
	.word	.L16cd4
	.word	.L16cfc
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d30
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d58

.L16a14:
	ldrh	r3, [r6, #0x1e]
	strh	r3, [r6, #4]
	ldr	r3, [r6]
	ldrh	r2, [r3, #0x16]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L16a42
	ldrh	r2, [r6, #6]
	ldr	r3, =0xcff
	cmp	r2, r3
	bls	.L16a38
	mov	r0, r6
	bl	Func_80167d8
	mov	r0, #1
	str	r0, [sp, #0x20]
	b	.L16d64
.L16a38:
	mov	r1, #0xd0
	lsl	r1, #4
	add	r3, r2, r1
	strh	r3, [r6, #6]
	b	.L16d64
.L16a42:
	ldrh	r3, [r6, #6]
	mov	r2, #0xf0
	lsl	r2, #4
	add	r3, r2
	ldrh	r2, [r6, #0x10]
	strh	r3, [r6, #6]
	mov	r3, r2
	cmp	r3, #2
	bls	.L16a56
	b	.L16d64
.L16a56:
	add	r3, r2, #1
	strh	r3, [r6, #0x10]
	b	.L16d64

	.pool_aligned

.L16a80:
	ldr	r3, =0xea4
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L16a9a
	mov	r4, #0xe1
	ldrh	r3, [r6, #0x14]
	lsl	r4, #2
	cmp	r3, r4
	bcs	.L16a9a
	ldr	r2, =iwram_3001af8
	mov	r3, #0
	str	r3, [r2]
.L16a9a:
	ldr	r3, =0x397
	mov	r0, r6
	ldr	r7, .L16acc	@ 0
	strh	r3, [r6, #0x14]
	bl	Func_80199ec
	cmp	r0, #0
	bne	.L16afa
	ldr	r0, [r6]
	ldrh	r3, [r0, #8]
	cmp	r3, #0
	bne	.L16ab4
	b	.L16d64
.L16ab4:
	ldrh	r3, [r0, #0xa]
	cmp	r3, #0
	bne	.L16abc
	b	.L16d64
.L16abc:
	ldr	r7, =0x12f8
	add	r7, r8
	ldrb	r3, [r7]
	cmp	r3, #0
	beq	.L16ac8
	b	.L16d64
.L16ac8:
	b	.L16ae0

	.align	2, 0
.L16acc:
	.word	0
	.pool

.L16ae0:
	ldrh	r2, [r0, #8]
	ldrh	r3, [r0, #0xa]
	lsl	r2, #2
	lsl	r3, #3
	mov	r5, #1
	sub	r2, #8
	sub	r3, #0x10
	mov	r1, #1
	str	r5, [sp]
	bl	DrawText
	strb	r5, [r7]
	b	.L16d64
.L16afa:
	ldr	r5, [r6]
	ldrh	r3, [r5, #0xc]
	ldrh	r0, [r5, #8]
	str	r3, [sp, #0x30]
	ldrh	r3, [r5, #0xe]
	str	r0, [sp, #0x1c]
	str	r3, [sp, #0x2c]
	ldr	r3, =0x12f8
	ldrh	r1, [r5, #0xa]
	ldrh	r4, [r6, #0x12]
	add	r3, r8
	str	r1, [sp, #0x18]
	mov	r0, r5
	strb	r7, [r3]
	str	r4, [sp, #0xc]
	bl	Func_8016478
	ldrh	r3, [r6, #0x24]
	ldr	r4, [sp, #0xc]
	cmp	r3, #0
	bne	.L16b3c
	ldrh	r2, [r5, #8]
	ldrh	r3, [r5, #0xa]
	orr	r3, r2
	cmp	r3, #0
	beq	.L16b3c
	ldrh	r0, [r5, #0xc]
	ldrh	r1, [r5, #0xe]
	ldrh	r2, [r5, #8]
	ldrh	r3, [r5, #0xa]
	bl	ClearUIRegion
	ldr	r4, [sp, #0xc]
.L16b3c:
	ldr	r3, =0x1ff
	add	r4, #1
	and	r4, r3
	mov	r2, #0xeb
	lsl	r3, r4, #1
	lsl	r2, #4
	add	r3, r2
	mov	r0, r8
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.L16c12
	ldrh	r2, [r5, #8]
	ldrh	r3, [r5, #0xa]
	orr	r3, r2
	cmp	r3, #0
	beq	.L16c12
	ldrh	r7, [r6, #0x24]
	cmp	r7, #0
	beq	.L16b70
	ldrh	r0, [r5, #0xc]
	ldrh	r1, [r5, #0xe]
	ldrh	r2, [r5, #8]
	ldrh	r3, [r5, #0xa]
	bl	ClearUIRegion
	b	.L16c06
.L16b70:
	add	r1, sp, #0x30
	mov	r11, r1
	mov	r0, #0x24
	mov	r1, #8
	add	r0, sp
	add	r1, r6
	mov	r2, sp
	mov	r3, sp
	add	r3, #0x28
	add	r2, #0x2c
	str	r0, [sp]
	str	r1, [sp, #4]
	mov	r9, r0
	mov	r10, r1
	mov	r0, r4
	mov	r1, r11
	str	r3, [sp, #0x10]
	str	r4, [sp, #0xc]
	str	r2, [sp, #0x14]
	str	r7, [sp, #8]
	bl	Func_801868c
	ldrh	r1, [r5, #0x16]
	mov	r3, #0x80
	and	r3, r1
	ldr	r4, [sp, #0xc]
	cmp	r3, #0
	beq	.L16bc0
	ldr	r2, [sp, #0x24]
	ldr	r3, [sp, #0x18]
	cmp	r3, r2
	beq	.L16bb8
	sub	r2, r3
	ldr	r3, [sp, #0x2c]
	sub	r3, r2
	str	r3, [sp, #0x2c]
.L16bb8:
	ldr	r3, [sp, #0x2c]
	cmp	r3, #0
	bge	.L16bc0
	str	r7, [sp, #0x2c]
.L16bc0:
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r1
	cmp	r3, #0
	bne	.L16bf6
	ldr	r3, [sp, #0x28]
	ldr	r0, [sp, #0x1c]
	sub	r3, r0, r3
	cmp	r3, #0
	bge	.L16bd6
	add	r3, #3
.L16bd6:
	ldr	r2, [sp, #0x30]
	asr	r3, #2
	add	r2, r3
	mov	r1, r9
	mov	r3, #2
	str	r2, [sp, #0x30]
	mov	r2, r10
	str	r1, [sp]
	str	r2, [sp, #4]
	str	r3, [sp, #8]
	mov	r0, r4
	mov	r1, r11
	ldr	r2, [sp, #0x14]
	ldr	r3, [sp, #0x10]
	bl	Func_801868c
.L16bf6:
	ldr	r3, [sp, #0x30]
	strh	r3, [r5, #0xc]
	ldr	r3, [sp, #0x2c]
	strh	r3, [r5, #0xe]
	ldr	r3, [sp, #0x28]
	strh	r3, [r5, #8]
	ldr	r3, [sp, #0x24]
	strh	r3, [r5, #0xa]
.L16c06:
	ldrh	r0, [r5, #0xc]
	ldrh	r1, [r5, #0xe]
	ldrh	r2, [r5, #8]
	ldrh	r3, [r5, #0xa]
	bl	Func_80170f8
.L16c12:
	ldrh	r3, [r6, #0x1e]
	mov	r2, #0
	ldr	r5, =0x12b6
	strh	r3, [r6, #4]
	strh	r2, [r6, #6]
	strh	r2, [r6, #0x10]
	add	r5, r8
	ldrh	r0, [r5]
	bl	Func_8003f3c
	mov	r3, #0x63
	strh	r3, [r5]
	b	.L16d64
.L16c2c:
	ldr	r3, =0xea4
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L16c46
	mov	r4, #0xe1
	ldrh	r3, [r6, #0x14]
	lsl	r4, #2
	cmp	r3, r4
	bcs	.L16c46
	ldr	r2, =iwram_3001af8
	mov	r3, #0
	str	r3, [r2]
.L16c46:
	mov	r0, r6
	bl	Func_80199ec
	cmp	r0, #0
	beq	.L16c52
	b	.L1696e
.L16c52:
	ldr	r3, =0x397
	strh	r3, [r6, #0x14]
	b	.L16d64
.L16c58:
	ldrh	r3, [r6, #0x14]
	cmp	r3, #0
	bne	.L16c6c
	mov	r3, #0x14
	b	.L16c6a
.L16c62:
	ldrh	r3, [r6, #0x14]
	cmp	r3, #0
	bne	.L16c6c
	mov	r3, #0x78
.L16c6a:
	strh	r3, [r6, #0x14]
.L16c6c:
	ldr	r2, =0x12f6
	mov	r3, #0
	add	r2, r8
	strh	r3, [r2]
	mov	r0, r6
	bl	Func_801999c
	b	.L16d64
.L16c7c:
	ldrh	r3, [r6, #0x14]
	cmp	r3, #0
	bne	.L16c86
	mov	r3, #0x3c
	strh	r3, [r6, #0x14]
.L16c86:
	ldr	r2, =0x12f6
	mov	r3, #0
	add	r2, r8
	strh	r3, [r2]
	b	.L16d64
.L16c90:
	ldrh	r3, [r6, #0x12]
	ldr	r2, .L16cb4	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r6, #0x12]
	ldrh	r3, [r6, #0x12]
	mov	r0, #0xeb
	lsl	r0, #4
	lsl	r3, #1
	add	r3, r0
	mov	r1, r8
	ldrh	r3, [r1, r3]
	mov	r0, r6
	strh	r3, [r6, #0x16]
	bl	Func_80167ac
	b	.L16d64

	.align	2, 0
.L16cb4:
	.word	0x1ff
	.pool

.L16cd4:
	ldrh	r3, [r6, #0x12]
	ldr	r2, =0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r6, #0x12]
	ldrh	r3, [r6, #0x12]
	mov	r2, #0xeb
	lsl	r3, #1
	lsl	r2, #4
	add	r3, r2
	mov	r4, r8
	ldrh	r3, [r4, r3]
	mov	r0, r6
	strh	r3, [r6, #0x18]
	bl	Func_80167ac
	b	.L16d64

	.pool_aligned

.L16cfc:
	ldrh	r3, [r6, #0x12]
	ldr	r2, =0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r6, #0x12]
	ldrh	r3, [r6, #0x12]
	mov	r0, #0xeb
	lsl	r0, #4
	lsl	r3, #1
	add	r3, r0
	mov	r1, r8
	ldrh	r3, [r1, r3]
	mov	r0, r6
	b	.L16d24
.L16d18:
	mov	r3, #0
	mov	r2, #0xf
	strh	r3, [r6, #0x18]
	mov	r0, r6
	mov	r3, #0xa
	strh	r2, [r6, #0x16]
.L16d24:
	strh	r3, [r6, #0x1a]
	bl	Func_80167ac
	b	.L16d64

	.pool_aligned

.L16d30:
	ldrh	r3, [r6, #0x12]
	ldr	r0, =0x1ff
	add	r3, #1
	and	r3, r0
	strh	r3, [r6, #0x12]
	ldrh	r2, [r6, #0x12]
	mov	r4, #0xeb
	lsl	r3, r2, #1
	lsl	r4, #4
	add	r3, r4
	mov	r4, r8
	ldrh	r3, [r4, r3]
	ldr	r1, [r6]
	add	r2, #1
	strh	r3, [r1, #0x12]
	and	r2, r0
	mov	r3, #0xa
	strh	r3, [r6, #0x14]
	strh	r2, [r6, #0x12]
	b	.L16d64
.L16d58:
	mov	r3, #1
	strh	r3, [r6, #0x20]
	mov	r0, #8
	b	.L16f1a

	.pool_aligned

.L16d64:
	ldr	r3, =0xea5
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L16d70
	b	.L16ede
.L16d70:
	mov	r0, #1
	str	r0, [sp, #0x20]
	b	.L16ede
.L16d76:
	ldrh	r3, [r6, #4]
	mov	r2, r3
	add	r2, #0x80
	cmp	r2, #0
	bge	.L16d84
	ldr	r1, =0x17f
	add	r2, r3, r1
.L16d84:
	asr	r5, r2, #8
	ldrh	r2, [r6, #6]
	mov	r3, r2
	add	r3, #0x80
	cmp	r3, #0
	bge	.L16d94
	ldr	r4, =0x17f
	add	r3, r2, r4
.L16d94:
	asr	r3, #8
	mov	r12, r3
	mov	r0, #0x83
	ldr	r3, =gState
	lsl	r0, #2
	add	r3, r0
	ldrb	r3, [r3]
	ldr	r2, =.L7380e
	ldrb	r2, [r2, r3]
	ldr	r3, =0xea4
	add	r3, r8
	ldrb	r3, [r3]
	mov	r10, r2
	ldrh	r2, [r6, #0x12]
	cmp	r3, #0
	beq	.L16db6
	add	r5, #8
.L16db6:
	add	r3, r2, #1
	ldr	r2, =0x1ff
	mov	r1, #0xeb
	and	r3, r2
	lsl	r3, #1
	lsl	r1, #4
	add	r3, r1
	mov	r0, r8
	ldrh	r4, [r0, r3]
	cmp	r4, #0xde
	bne	.L16dec
	mov	r3, #0x80
	lsl	r3, #7
	b	.L16df4

	.pool_aligned

.L16dec:
	cmp	r4, #0xdf
	bne	.L16dfe
	mov	r3, #0x80
	lsl	r3, #8
.L16df4:
	orr	r7, r3
	ldrh	r3, [r6, #0x12]
	add	r3, #1
	and	r3, r2
	strh	r3, [r6, #0x12]
.L16dfe:
	ldr	r0, [r6]
	ldrh	r2, [r0, #0x16]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L16e3e
	cmp	r7, #0x20
	bls	.L16e3e
	cmp	r4, #0x20
	bls	.L16e3e
	mov	r3, r7
	mov	r2, r4
	ldr	r1, =Data_32224
	sub	r3, #0x20
	sub	r2, #0x20
	lsl	r3, #5
	lsl	r2, #5
	ldrh	r3, [r1, r3]
	ldrh	r2, [r1, r2]
	mov	r1, #0xf0
	add	r3, r2
	lsl	r3, #16
	lsl	r1, #12
	cmp	r3, r1
	bhi	.L16e3e
	lsl	r3, r4, #8
	orr	r7, r3
	ldrh	r3, [r6, #0x12]
	ldr	r2, .L16e6c	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r6, #0x12]
.L16e3e:
	mov	r3, #0
	str	r3, [sp]
	mov	r2, r5
	mov	r3, r12
	mov	r1, r7
	bl	DrawText
	ldr	r3, =gState
	mov	r4, r0
	mov	r0, #0x83
	lsl	r0, #2
	add	r3, r0
	ldr	r2, =.L73808
	ldrb	r3, [r3]
	ldrb	r3, [r2, r3]
	strh	r3, [r6, #0x22]
	cmp	r4, #0
	beq	.L16ecc
	ldr	r1, =0x12f4
	add	r1, r8
	ldrh	r3, [r1]
	b	.L16e80

	.align	2, 0
.L16e6c:
	.word	0x1ff
	.pool

.L16e80:
	cmp	r3, #0
	beq	.L16eb6
	ldr	r5, =0x12f6
	add	r5, r8
	ldrh	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	bne	.L16eb0
	cmp	r7, #0x20
	beq	.L16eb6
	ldrh	r0, [r1]
	mov	r3, #3
	and	r3, r7
	add	r0, r3
	str	r4, [sp, #0xc]
	bl	_PlaySound
	mov	r1, r10
	strh	r1, [r5]
	ldr	r4, [sp, #0xc]
	b	.L16eb6

	.pool_aligned

.L16eb0:
	ldr	r0, =0xffff
	add	r3, r2, r0
	strh	r3, [r5]
.L16eb6:
	lsl	r0, r4, #8
	cmp	r7, #0x20
	bne	.L16ec6
	ldrh	r3, [r6, #0x10]
	lsl	r3, #1
	add	r3, #8
	ldrh	r3, [r6, r3]
	add	r0, r3
.L16ec6:
	ldrh	r3, [r6, #4]
	add	r3, r0
	strh	r3, [r6, #4]
.L16ecc:
	cmp	r7, #0x20
	bne	.L16ede
	ldr	r3, =0xea5
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L16ede
	mov	r1, #1
	str	r1, [sp, #0x20]
.L16ede:
	ldrh	r2, [r6, #0x14]
	mov	r3, r2
	cmp	r3, #0
	beq	.L16ef2
	ldr	r4, =0xffff
	add	r3, r2, r4
	strh	r3, [r6, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L16efc
.L16ef2:
	ldrh	r3, [r6, #0x12]
	ldr	r2, .L16f0c	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r6, #0x12]
.L16efc:
	ldr	r0, [sp, #0x20]
	sub	r0, #1
	str	r0, [sp, #0x20]
	cmp	r0, #0
	beq	.L16f08
	b	.L16972
.L16f08:
	b	.L16f18

	.align	2, 0
.L16f0c:
	.word	0x1ff
	.pool

.L16f18:
	mov	r0, #0
.L16f1a:
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end AdvanceMsgText

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

.thumb_func_start Func_8017004  @ 0x08017004
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r1, [sp]
	mov	r7, r0
	mov	r3, #0x18
	ldrsh	r6, [r7, r3]
	mov	r3, #0x1a
	ldrsh	r0, [r7, r3]
	sub	r3, r0, r6
	mov	r10, r3
	ldrh	r3, [r7, #8]
	mov	r1, r3
	mul	r1, r6
	ldr	r3, =Func_80008ac
	add	r5, sp, #4
	lsl	r1, #16
	lsl	r0, #17
	mov	r8, r3
	str	r1, [r5]
	str	r0, [r5, #4]
	bl	_call_via_r8
	ldrh	r3, [r7, #0xc]
	str	r0, [r5, #8]
	asr	r0, #16
	add	r0, r3
	ldrh	r3, [r7, #8]
	mov	r1, r10
	mul	r1, r3
	lsl	r1, #16
	str	r1, [r5]
	mov	r9, r0
	ldr	r0, [r5, #4]
	bl	_call_via_r8
	ldrh	r3, [r7, #0xa]
	mov	r1, r3
	mul	r1, r6
	str	r0, [r5, #8]
	asr	r0, #15
	mov	r11, r0
	mov	r3, #0x1a
	ldrsh	r0, [r7, r3]
	lsl	r1, #16
	lsl	r0, #17
	str	r1, [r5]
	str	r0, [r5, #4]
	bl	_call_via_r8
	ldrh	r3, [r7, #0xe]
	str	r0, [r5, #8]
	asr	r0, #16
	add	r6, r0, r3
	ldrh	r3, [r7, #0xa]
	mov	r1, r10
	mul	r1, r3
	lsl	r1, #16
	str	r1, [r5]
	ldr	r0, [r5, #4]
	bl	_call_via_r8
	str	r0, [r5, #8]
	asr	r5, r0, #15
	mov	r3, r5
	mov	r0, r9
	mov	r1, r6
	mov	r2, r11
	bl	Func_80170f8
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L170ac
	mov	r3, r9
	strh	r3, [r7, #0x1c]
	mov	r3, r11
	strh	r6, [r7, #0x1e]
	strh	r3, [r7, #0x20]
	strh	r5, [r7, #0x22]
.L170ac:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8017004

	.section .text.after_170c4, "ax", %progbits

.thumb_func_start Func_80170f8  @ 0x080170f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r3
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r11, r3
	lsl	r3, r1, #5
	add	r3, r0
	mov	r8, r2
	lsl	r3, #1
	mov	r2, r11
	add	r5, r3, r2
	mov	r3, r8
	cmp	r3, #1
	bhi	.L17122
	b	.L17230
.L17122:
	cmp	r7, #1
	bhi	.L17128
	b	.L17230
.L17128:
	cmp	r3, #0x1e
	bls	.L1712e
	b	.L17230
.L1712e:
	cmp	r7, #0x1e
	bls	.L17134
	b	.L17230
.L17134:
	mov	r3, r7
	mov	r2, r8
	bl	Func_801e260
	ldr	r3, =0xea4
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1714a
	ldr	r3, .L17170	@ 0xf01c
	b	.L1714c
.L1714a:
	ldr	r3, .L17174	@ 0xf010
.L1714c:
	strh	r3, [r5]
	add	r5, #2
	mov	r2, #2
	neg	r2, r2
	add	r2, r8
	mov	r0, r5
	ldr	r1, =0xf011f011
	mov	r10, r2
	bl	Func_80170c4
	ldr	r3, =0xea4
	add	r3, r11
	ldrb	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L17188
	ldr	r3, .L17178	@ 0xf41c
	b	.L1718a

	.align	2, 0
.L17170:
	.word	0xf01c
.L17174:
	.word	0xf010
.L17178:
	.word	0xf41c
	.pool

.L17188:
	ldr	r3, =0xf012
.L1718a:
	strh	r3, [r5]
	add	r5, #2
	mov	r3, #0x20
	mov	r2, r8
	sub	r3, r2
	lsl	r3, #1
	mov	r6, #1
	sub	r7, #1
	add	r5, r3
	cmp	r6, r7
	bcs	.L171d8
	mov	r9, r3
.L171a2:
	ldr	r3, =0xf016
	mov	r2, r8
	strh	r3, [r5]
	add	r5, #2
	cmp	r2, #2
	beq	.L171ca
	mov	r0, r5
	ldr	r1, =0xf020f020
	mov	r2, r10
	bl	Func_80170c4
	b	.L171c8

	.pool_aligned

.L171c8:
	mov	r5, r0
.L171ca:
	ldr	r3, .L171e8	@ 0xf017
	add	r6, #1
	strh	r3, [r5]
	add	r5, #2
	add	r5, r9
	cmp	r6, r7
	bcc	.L171a2
.L171d8:
	ldr	r3, =0xea4
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L171f4
	ldr	r3, .L171ec	@ 0xf81c
	b	.L171f6

	.align	2, 0
.L171e8:
	.word	0xf017
.L171ec:
	.word	0xf81c
	.pool

.L171f4:
	ldr	r3, .L17214	@ 0xf013
.L171f6:
	strh	r3, [r5]
	add	r5, #2
	mov	r0, r5
	ldr	r1, =0xf014f014
	mov	r2, r10
	bl	Func_80170c4
	ldr	r3, =0xea4
	add	r3, r11
	ldrb	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L17224
	ldr	r3, .L17218	@ 0xfc1c
	b	.L17226

	.align	2, 0
.L17214:
	.word	0xf013
.L17218:
	.word	0xfc1c
	.pool

.L17224:
	ldr	r3, =0xf015
.L17226:
	strh	r3, [r5]
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r11
	strb	r3, [r2]
.L17230:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80170f8

.thumb_func_start Func_8017248  @ 0x08017248
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r14, r3
	ldr	r3, =iwram_3001e8c
	lsl	r1, #5
	ldr	r3, [r3]
	add	r1, r0
	sub	sp, #4
	lsl	r1, #1
	mov	r6, r2
	ldr	r4, [sp, #0x24]
	str	r3, [sp]
	add	r1, r3
	cmp	r6, #1
	bls	.L17350
	mov	r2, r14
	cmp	r2, #1
	bls	.L17350
	cmp	r6, #0x1e
	bhi	.L17350
	cmp	r2, #0x1e
	bhi	.L17350
	add	r1, #0x40
	cmp	r4, #0
	bne	.L172e8
	mov	r3, #1
	neg	r3, r3
	add	r3, r14
	mov	r5, #1
	mov	r8, r3
	cmp	r5, r8
	bcs	.L17334
	mov	r3, #0x20
	sub	r3, r6
	lsl	r3, #1
	sub	r2, r6, #1
	mov	r10, r3
	ldr	r3, =0x127
	mov	r12, r2
	mov	r9, r12
	mov	r11, r3
.L172a4:
	mov	r4, #1
	add	r1, #2
	cmp	r4, r9
	bcs	.L172cc
	mov	r3, r14
	sub	r3, #2
	mov	r2, r3
	ldr	r7, .L172d8	@ 0xfff
	mov	r3, r11
	ldr	r6, .L172dc	@ 0xf000
	add	r0, r3, r5
.L172ba:
	mov	r3, r0
	and	r3, r7
	orr	r3, r6
	add	r4, #1
	strh	r3, [r1]
	add	r0, r2
	add	r1, #2
	cmp	r4, r12
	bcc	.L172ba
.L172cc:
	add	r1, #2
	add	r5, #1
	add	r1, r10
	cmp	r5, r8
	bcc	.L172a4
	b	.L17334

	.align	2, 0
.L172d8:
	.word	0xfff
.L172dc:
	.word	0xf000
	.pool

.L172e8:
	mov	r0, r14
	mov	r5, #1
	sub	r0, #1
	cmp	r5, r0
	bcs	.L17334
	mov	r3, #0x20
	sub	r3, r6
	ldr	r2, =0x127
	lsl	r3, #1
	mov	r10, r3
	mov	r9, r2
	mov	r8, r0
.L17300:
	mov	r4, #0
	cmp	r4, r6
	bcs	.L1732c
	mov	r3, #2
	neg	r3, r3
	add	r3, r14
	ldr	r2, =0xfff
	mov	r11, r3
	ldr	r7, .L17340	@ 0xf000
	mov	r3, r9
	mov	r12, r2
	add	r0, r5, r3
.L17318:
	mov	r3, r0
	mov	r2, r12
	and	r3, r2
	orr	r3, r7
	add	r4, #1
	strh	r3, [r1]
	add	r0, r11
	add	r1, #2
	cmp	r4, r6
	bcc	.L17318
.L1732c:
	add	r5, #1
	add	r1, r10
	cmp	r5, r8
	bcc	.L17300
.L17334:
	ldr	r3, [sp]
	ldr	r1, =0xea3
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
	b	.L17350

	.align	2, 0
.L17340:
	.word	0xf000
	.pool

.L17350:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8017248
