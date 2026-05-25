	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_1e41c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r10, r3
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	mov	r7, r1
	mov	r5, r0
	mov	r8, r2
	ldr	r6, [sp, #0x1c]
	mov	r9, r3
	cmp	r7, r10
	beq	.L1e43c
	b	.L1e572
.L1e43c:
	cmp	r8, r6
	bne	.L1e442
	b	.L1e6c2
.L1e442:
	cmp	r8, r6
	bls	.L1e44c
	mov	r4, r8
	mov	r8, r6
	mov	r6, r4
.L1e44c:
	ldrh	r0, [r5, #0xc]
	ldrh	r1, [r5, #0xe]
	mov	r2, r8
	sub	r3, r6, r2
	add	r0, r10
	mov	r2, #1
	add	r1, r8
	bl	Func_1e260
	ldrh	r3, [r5, #0xe]
	ldrh	r2, [r5, #0xc]
	add	r3, r8
	lsl	r3, #5
	add	r3, r2
	add	r3, r10
	lsl	r3, #1
	mov	r2, r9
	mov	r4, r8
	add	r0, r3, r2
	cmp	r4, r6
	bls	.L1e478
	b	.L1e6c2
.L1e478:
	ldrh	r1, [r0]
	cmp	r4, r8
	bne	.L1e4d8
	ldr	r2, =0xffff0ff7
	add	r3, r1, r2
	cmp	r3, #0xf
	bhi	.L1e564
	ldr	r2, =.L1e490
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1e490:
	.word	.L1e566
	.word	.L1e560
	.word	.L1e566
	.word	.L1e566
	.word	.L1e566
	.word	.L1e4d4
	.word	.L1e564
	.word	.L1e564
	.word	.L1e4d0
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e566
.L1e4d0:
	ldr	r1, =0xf018
	b	.L1e566
.L1e4d4:
	ldr	r1, =0xf009
	b	.L1e566
.L1e4d8:
	cmp	r4, r6
	bne	.L1e538
	ldr	r2, =0xffff0ff7
	add	r3, r1, r2
	cmp	r3, #0x10
	bhi	.L1e564
	ldr	r2, =.L1e4ec
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1e4ec:
	.word	.L1e560
	.word	.L1e566
	.word	.L1e566
	.word	.L1e566
	.word	.L1e566
	.word	.L1e534
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e530
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e566
.L1e530:
	ldr	r1, =0xf019
	b	.L1e566
.L1e534:
	ldr	r1, =0xf00a
	b	.L1e566
.L1e538:
	ldr	r2, =0xffff0ff7
	add	r3, r1, r2
	cmp	r3, #5
	bhi	.L1e564
	ldr	r2, =.L1e548
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1e548:
	.word	.L1e560
	.word	.L1e560
	.word	.L1e566
	.word	.L1e566
	.word	.L1e566
	.word	.L1e560
.L1e560:
	ldr	r1, =0xf00d
	b	.L1e566
.L1e564:
	ldr	r1, =0xf00f
.L1e566:
	add	r4, #1
	strh	r1, [r0]
	add	r0, #0x40
	cmp	r4, r6
	bls	.L1e478
	b	.L1e6c2
.L1e572:
	cmp	r8, r6
	beq	.L1e578
	b	.L1e6c2
.L1e578:
	cmp	r7, r10
	bne	.L1e57e
	b	.L1e6c2
.L1e57e:
	cmp	r7, r10
	bls	.L1e588
	mov	r4, r7
	mov	r7, r10
	mov	r10, r4
.L1e588:
	ldrh	r0, [r5, #0xc]
	ldrh	r1, [r5, #0xe]
	mov	r3, r10
	sub	r2, r3, r7
	add	r0, r7
	mov	r3, #1
	add	r1, r8
	bl	Func_1e260
	ldrh	r3, [r5, #0xe]
	ldrh	r2, [r5, #0xc]
	add	r3, r8
	lsl	r3, #5
	add	r3, r2
	add	r3, r7
	lsl	r3, #1
	mov	r2, r9
	mov	r4, r7
	add	r0, r3, r2
	cmp	r4, r10
	bls	.L1e5b4
	b	.L1e6c2
.L1e5b4:
	ldrh	r1, [r0]
	cmp	r4, r7
	bne	.L1e61c
	ldr	r2, =0xffff0ff7
	add	r3, r1, r2
	cmp	r3, #0x11
	bhi	.L1e6b4
	ldr	r2, =.L1e5cc
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1e5cc:
	.word	.L1e6b6
	.word	.L1e6b6
	.word	.L1e6b6
	.word	.L1e6b0
	.word	.L1e6b6
	.word	.L1e6b4
	.word	.L1e618
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e614
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b6
.L1e614:
	ldr	r1, =0xf01a
	b	.L1e6b6
.L1e618:
	ldr	r1, =0xf00b
	b	.L1e6b6
.L1e61c:
	cmp	r4, r10
	bne	.L1e684
	ldr	r2, =0xffff0ff7
	add	r3, r1, r2
	cmp	r3, #0x12
	bhi	.L1e6b4
	ldr	r2, =.L1e630
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1e630:
	.word	.L1e6b6
	.word	.L1e6b6
	.word	.L1e6b0
	.word	.L1e6b6
	.word	.L1e6b6
	.word	.L1e6b4
	.word	.L1e680
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e67c
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b6
.L1e67c:
	ldr	r1, =0xf01b
	b	.L1e6b6
.L1e680:
	ldr	r1, =0xf00c
	b	.L1e6b6
.L1e684:
	ldr	r2, =0xffff0ff7
	add	r3, r1, r2
	cmp	r3, #6
	bhi	.L1e6b4
	ldr	r2, =.L1e694
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1e694:
	.word	.L1e6b6
	.word	.L1e6b6
	.word	.L1e6b0
	.word	.L1e6b0
	.word	.L1e6b6
	.word	.L1e6b4
	.word	.L1e6b0
.L1e6b0:
	ldr	r1, =0xf00d
	b	.L1e6b6
.L1e6b4:
	ldr	r1, =0xf00e
.L1e6b6:
	add	r4, #1
	strh	r1, [r0]
	add	r0, #2
	cmp	r4, r10
	bhi	.L1e6c2
	b	.L1e5b4
.L1e6c2:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1e41c

.thumb_func_start Func_1e71c
	ldr	r3, =iwram_1e8c
	ldr	r2, .L1e72c	@ 0xf
	ldr	r3, [r3]
	and	r0, r2
	ldr	r2, =0xeae
	add	r3, r2
	strh	r0, [r3]
	bx	lr
	.align	2, 0
.L1e72c:
	.word	0xf
.func_end Func_1e71c

