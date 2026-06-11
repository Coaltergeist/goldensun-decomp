	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800655c  @ 0x0800655c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =REG_SIOCNT
	ldr	r3, [r3]
	lsl	r3, #26
	lsr	r3, #30
	mov	r2, #1
	bic	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r2, =ewram_2002020
	lsl	r3, #3
	add	r3, r2
	mov	r12, r3
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	ldr	r1, .L65a4	@ 1
	mov	r3, #3
	and	r3, r2
	mov	r8, r1
	ldr	r6, =ewram_2002220
	cmp	r3, #3
	beq	.L658e
	b	.L676e
.L658e:
	ldr	r7, =ewram_20023ac
	ldr	r5, [r7]
	cmp	r5, #0
	bne	.L6598
	b	.L669a
.L6598:
	ldrb	r3, [r6, #2]
	cmp	r3, #1
	beq	.L65a0
	b	.L6696
.L65a0:
	b	.L65bc

	.align	2, 0
.L65a4:
	.word	1
	.pool

.L65bc:
	mov	r2, r12
	ldrb	r3, [r2, #3]
	mov	r1, #0x80
	add	r3, #0xff
	lsl	r3, #24
	lsl	r1, #17
	cmp	r3, r1
	bhi	.L6696
	ldr	r0, =ewram_20023a4
	mov	r2, #0x7f
	mov	r14, r2
	mov	r3, r12
	ldrb	r1, [r0]
	ldrb	r2, [r3]
	mov	r3, r14
	and	r3, r1
	cmp	r2, r3
	bne	.L6650
	mov	r1, #0
	mov	r14, r1
	mov	r2, r14
	strb	r2, [r6]
	mov	r3, r12
	ldrb	r4, [r3, #3]
	cmp	r4, #1
	beq	.L65f6
	cmp	r4, #2
	beq	.L6622
	b	.L6642
.L65f6:
	mov	r0, r12
	ldr	r3, =REG_DMA3SAD
	add	r0, #4
	mov	r1, r5
	ldr	r2, =0x84000005
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, [r7]
	ldr	r2, =ewram_2002238
	add	r3, #0x14
	str	r3, [r7]
	ldrh	r3, [r2]
	add	r3, #0x14
	strh	r3, [r2]
	mov	r1, #0x80
	ldrb	r3, [r6, #1]
	neg	r1, r1
	add	r3, #1
	mov	r2, r1
	orr	r3, r2
	strb	r3, [r6, #1]
	b	.L6642
.L6622:
	mov	r0, r12
	ldr	r3, =REG_DMA3SAD
	add	r0, #4
	mov	r1, r5
	ldr	r2, =0x84000005
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =ewram_2002238
	ldrh	r3, [r2]
	add	r3, #0x14
	strh	r3, [r2]
	mov	r2, r14
	mov	r3, r8
	strb	r4, [r6, #2]
	strb	r2, [r6, #1]
	strb	r3, [r6]
.L6642:
	ldr	r3, =ewram_20023a4
	ldrb	r2, [r3]
	mov	r1, #0x7f
	add	r2, #1
	and	r2, r1
	strb	r2, [r3]
	b	.L669a
.L6650:
	ldrb	r2, [r0]
	mov	r4, #0x80
	mov	r3, r4
	and	r3, r2
	mov	r1, #0x80
	cmp	r3, #0
	beq	.L6688
	ldrb	r1, [r6]
	mov	r3, r4
	and	r3, r1
	lsl	r3, #24
	lsr	r2, r3, #24
	cmp	r2, #0
	beq	.L6672
	mov	r1, r8
	strb	r1, [r6]
	b	.L669a
.L6672:
	lsl	r3, r1, #24
	mov	r1, #0x80
	lsl	r1, #17
	cmp	r3, r1
	bne	.L669a
	strb	r2, [r6]
	ldrb	r2, [r0]
	mov	r3, r14
	and	r3, r2
	strb	r3, [r0]
	b	.L669a
.L6688:
	ldrb	r3, [r0]
	orr	r3, r1
	strb	r3, [r6]
	ldrb	r3, [r0]
	orr	r3, r1
	strb	r3, [r0]
	b	.L669a
.L6696:
	mov	r3, #0
	strb	r3, [r6]
.L669a:
	ldr	r7, =ewram_2002080
	ldr	r0, [r7]
	cmp	r0, #0
	beq	.L6748
	mov	r2, r12
	ldrb	r2, [r2, #2]
	mov	r14, r2
	cmp	r2, #1
	bne	.L672e
	mov	r3, r12
	ldrb	r2, [r3]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L66e4
	ldr	r5, =ewram_20023a4
	mov	r2, r12
	ldrb	r1, [r5]
	ldrb	r3, [r2]
	mov	r4, #0x7f
	sub	r1, r3
	and	r1, r4
	lsl	r2, r1, #2
	add	r2, r1
	lsl	r2, #2
	sub	r3, r0, r2
	ldr	r0, =ewram_2002008
	str	r3, [r7]
	ldrh	r3, [r0]
	add	r3, r2
	strh	r3, [r0]
	ldrb	r3, [r5]
	sub	r3, r1
	strb	r3, [r5]
	ldrb	r3, [r5]
	and	r4, r3
	strb	r4, [r5]
.L66e4:
	ldr	r4, =ewram_2002008
	ldrh	r3, [r4]
	cmp	r3, #0
	beq	.L672e
	ldr	r3, =REG_DMA3SAD
	ldr	r0, [r7]
	add	r1, r6, #4
	ldr	r2, =0x84000005
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r3, [r4]
	ldr	r1, =0xffec
	add	r3, r1
	strh	r3, [r4]
	ldrh	r3, [r4]
	cmp	r3, #0
	beq	.L670e
	mov	r2, r14
	ldr	r3, =ewram_20023a4
	strb	r2, [r6, #3]
	b	.L6714
.L670e:
	mov	r3, #2
	strb	r3, [r6, #3]
	ldr	r3, =ewram_20023a4
.L6714:
	ldrb	r2, [r3]
	mov	r3, #0x7f
	and	r3, r2
	strb	r3, [r6]
	ldr	r3, [r7]
	add	r3, #0x14
	str	r3, [r7]
	ldr	r3, =ewram_20023a4
	ldrb	r2, [r3]
	mov	r1, #0x7f
	add	r2, #1
	and	r2, r1
	strb	r2, [r3]
.L672e:
	ldrb	r3, [r6, #3]
	cmp	r3, #2
	bne	.L6748
	mov	r1, r12
	ldrb	r3, [r1, #2]
	cmp	r3, #2
	bne	.L6748
	ldr	r2, =ewram_2002080
	mov	r3, #0
	str	r3, [r2]
	strb	r3, [r6, #3]
	mov	r3, #1
	strb	r3, [r6]
.L6748:
	ldrb	r3, [r6, #2]
	cmp	r3, #2
	bne	.L675e
	mov	r2, r12
	ldrb	r3, [r2, #3]
	cmp	r3, #2
	beq	.L676e
	ldr	r2, =ewram_20023ac
	mov	r3, #0
	str	r3, [r2]
	b	.L676c
.L675e:
	mov	r3, #0
	strb	r3, [r6, #2]
	ldr	r3, =ewram_20023ac
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L676e
	mov	r3, #1
.L676c:
	strb	r3, [r6, #2]
.L676e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800655c

