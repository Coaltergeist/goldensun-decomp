	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8017aa4  @ 0x08017aa4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r3
	ldr	r3, =iwram_3001e8c
	mov	r7, r2
	ldr	r6, [r3]
	lsl	r3, r7, #16
	asr	r3, #16
	mov	r5, r0
	sub	sp, #4
	mov	r10, r1
	mov	r4, #0
	mov	r9, r3
	cmp	r5, #0
	beq	.L17aca
	b	.L17be6
.L17aca:
	ldr	r3, =0x12b2
	add	r1, r6, r3
	ldrh	r3, [r1]
	mov	r2, #0xeb
	lsl	r2, #4
	lsl	r3, #1
	add	r3, r2
	strh	r4, [r6, r3]
	ldrh	r3, [r1]
	add	r5, r6, r2
	ldr	r2, .L17ae8	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r1]
	b	.L17be6

	.align	2, 0
.L17ae8:
	.word	0x1ff
	.pool

.L17af4:
	cmp	r4, #0x1e
	bhi	.L17b9a
	sub	r1, r4, #3
	cmp	r1, #0x1a
	bhi	.L17be6
	ldr	r2, =.L17b08
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L17b08:
	.word	.L17b8e
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17b88
	.word	.L17b74
	.word	.L17b78
	.word	.L17b7c
	.word	.L17b84
	.word	.L17b84
	.word	.L17be6
	.word	.L17b96
	.word	.L17b96
	.word	.L17be6
	.word	.L17b84
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17b96
	.word	.L17b84

.L17b74:
	ldr	r1, =0xeae
	b	.L17b7e
.L17b78:
	ldr	r1, =0xeac
	b	.L17b7e
.L17b7c:
	ldr	r1, =0xea8
.L17b7e:
	ldrh	r2, [r5]
	add	r3, r6, r1
	strh	r2, [r3]
.L17b84:
	add	r5, #2
	b	.L17be6
.L17b88:
	bl	Func_80173ac
	b	.L17be6
.L17b8e:
	mov	r2, #0xf
	mov	r7, r9
	add	r8, r2
	b	.L17be6
.L17b96:
	add	r5, #2
	b	.L17b84
.L17b9a:
	mov	r3, r10
	ldrh	r2, [r3, #0x16]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L17bd4
	ldrh	r0, [r5]
	cmp	r4, #0x20
	bls	.L17bd4
	cmp	r0, #0x20
	bls	.L17bd4
	mov	r3, r4
	mov	r2, r0
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
	bhi	.L17bd4
	lsl	r3, r0, #8
	orr	r4, r3
	add	r5, #2
.L17bd4:
	mov	r3, #0
	str	r3, [sp]
	mov	r2, r7
	mov	r0, r10
	mov	r1, r4
	mov	r3, r8
	bl	DrawText
	add	r7, r0
.L17be6:
	ldrh	r4, [r5]
	add	r5, #2
	cmp	r4, #0xff
	bls	.L17bf0
	mov	r4, #0x40
.L17bf0:
	cmp	r4, #0
	beq	.L17bf6
	b	.L17af4
.L17bf6:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8017aa4

