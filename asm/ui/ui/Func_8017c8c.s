	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8017c8c  @ 0x08017c8c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r4, r3
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r7, r2
	mov	r8, r3
	lsl	r3, r7, #16
	asr	r3, #16
	mov	r6, r0
	sub	sp, #8
	mov	r9, r1
	mov	r10, r3
	cmp	r6, #0
	bne	.L17cd0
	ldr	r1, =0x12b2
	add	r1, r8
	ldrh	r3, [r1]
	mov	r2, #0xeb
	lsl	r2, #4
	mov	r0, r8
	lsl	r3, #1
	add	r3, r2
	add	r6, r0, r2
	ldr	r2, .L17cf0	@ 0
	strh	r2, [r0, r3]
	ldrh	r3, [r1]
	ldr	r2, .L17cf4	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r1]
.L17cd0:
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	lsl	r1, r3, #16
	add	r6, #2
	cmp	r1, #0
	beq	.L17db2
.L17cdc:
	lsr	r5, r1, #16
	cmp	r5, #0x1e
	bhi	.L17d80
	sub	r1, r5, #3
	cmp	r1, #0x1a
	bhi	.L17da4
	ldr	r2, =.L17d08
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	b	.L17d04

	.align	2, 0
.L17cf0:
	.word	0
.L17cf4:
	.word	0x1ff
	.pool

.L17d04:
	mov	pc, r3
	.align	2, 0
.L17d08:
	.word	.L17d74
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17d7c
	.word	.L17d7c
	.word	.L17d7c
	.word	.L17d7c
	.word	.L17d7c
	.word	.L17d7c
	.word	.L17da4
	.word	.L17d7a
	.word	.L17d7a
	.word	.L17da4
	.word	.L17d7c
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17d7a
	.word	.L17d7c

.L17d74:
	mov	r7, r10
	add	r4, #1
	b	.L17da4
.L17d7a:
	add	r6, #2
.L17d7c:
	add	r6, #2
	b	.L17da4
.L17d80:
	mov	r3, #0
	str	r3, [sp]
	mov	r2, r7
	mov	r3, r4
	mov	r0, r9
	mov	r1, r5
	str	r4, [sp, #4]
	bl	Func_8018efc
	ldr	r0, =0xff22
	mov	r2, #0x80
	add	r3, r5, r0
	lsl	r3, #16
	lsl	r2, #9
	ldr	r4, [sp, #4]
	cmp	r3, r2
	bls	.L17da4
	add	r7, #1
.L17da4:
	mov	r0, #0
	ldrsh	r3, [r6, r0]
	lsl	r3, #16
	add	r6, #2
	mov	r1, r3
	cmp	r3, #0
	bne	.L17cdc
.L17db2:
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r8
	strb	r3, [r2]
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8017c8c

