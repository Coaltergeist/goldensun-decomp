	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80da24c  @ 0x080da24c
	push	{r5, r6, r7, lr}
	mov	r14, r1
	ldr	r1, [r0, #0x10]
	lsl	r3, r1, #1
	mov	r6, #0
	add	r5, r3, #1
	mov	r12, r6
	mov	r4, #0
	cmp	r5, #0
	beq	.Lda2a4
	mov	r2, #0x24
	ldrsh	r3, [r0, r2]
	ldr	r2, [r0, #0xc]
	cmp	r2, r3
	beq	.Lda27c
.Lda26a:
	add	r4, #1
	cmp	r4, r5
	beq	.Lda27c
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r3, [r0, r3]
	cmp	r2, r3
	bne	.Lda26a
	mov	r12, r4
.Lda27c:
	mov	r4, #0
	cmp	r5, #0
	beq	.Lda2a4
	b	.Lda286
.Lda284:
	ldr	r1, [r0, #0x10]
.Lda286:
	mov	r2, r12
	add	r3, r2, r4
	sub	r2, r3, r1
	cmp	r2, #0
	blt	.Lda29e
	ldr	r3, [r0, #0x14]
	cmp	r2, r3
	bge	.Lda29e
	lsl	r3, r6, #1
	mov	r7, r14
	strh	r2, [r3, r7]
	add	r6, #1
.Lda29e:
	add	r4, #1
	cmp	r4, r5
	bne	.Lda284
.Lda2a4:
	mov	r0, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80da24c
