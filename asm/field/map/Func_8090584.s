	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8090584  @ 0x08090584
	push	{lr}
	ldr	r3, =REG_VCOUNT
	ldrh	r3, [r3]
	mov	r4, r3
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r12, r3
.L90592:
	mov	r0, #0x84
	lsl	r0, #1
	add	r0, r12
	ldrh	r3, [r0]
	cmp	r3, #1
	beq	.L905fc
	cmp	r3, #1
	bgt	.L905a8
	cmp	r3, #0
	beq	.L90648
	b	.L90652
.L905a8:
	cmp	r3, #2
	beq	.L905cc
	cmp	r3, #3
	bne	.L90652
	mov	r3, #0x82
	lsl	r3, #1
	add	r3, r12
	ldrh	r3, [r3]
	cmp	r4, r3
	bcc	.L90652
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xfff8
	and	r3, r2
	ldr	r2, .L905ec
	orr	r3, r2
	b	.L905e2
.L905cc:
	mov	r3, #0x83
	lsl	r3, #1
	add	r3, r12
	ldrh	r3, [r3]
	cmp	r4, r3
	bcc	.L90652
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xfff8
	and	r3, r2
.L905e2:
	strh	r3, [r1]
	mov	r3, #9
	strh	r3, [r0]
	b	.L90652

	.align	2, 0
.L905ec:
	.word	2
	.pool

.L905fc:
	mov	r3, #0x82
	lsl	r3, #1
	add	r3, r12
	ldrh	r3, [r3]
	cmp	r4, r3
	bcc	.L90620
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xfff8
	and	r3, r2
	ldr	r2, .L90640	@ 2
	orr	r3, r2
	strh	r3, [r1]
	ldrh	r3, [r0]
	add	r3, #1
	strh	r3, [r0]
	b	.L90592
.L90620:
	mov	r3, #0x83
	lsl	r3, #1
	add	r3, r12
	ldrh	r3, [r3]
	cmp	r4, r3
	bcc	.L90652
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xfff8
	and	r3, r2
	strh	r3, [r1]
	mov	r3, #3
	strh	r3, [r0]
	b	.L90592

	.align	2, 0
.L90640:
	.word	2
	.pool

.L90648:
	cmp	r4, #0x9e
	bhi	.L90652
	mov	r3, #1
	strh	r3, [r0]
	b	.L90592
.L90652:
	pop	{r0}
	bx	r0
.func_end Func_8090584

