	.include "macros.inc"
	.include "gba.inc"

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

