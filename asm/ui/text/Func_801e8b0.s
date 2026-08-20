	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801e8b0  @ 0x0801e8b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0x80
	lsl	r0, #2
	mov	r10, r2
	mov	r8, r3
	mov	r7, r1
	bl	alloc_ewram
	ldr	r3, =iwram_3001e8c
	mov	r6, r0
	ldr	r0, [r3]
	ldrb	r3, [r5]
	mov	r2, r6
	cmp	r3, #0
	beq	.L1e8e4
.L1e8d6:
	ldrb	r3, [r5]
	strh	r3, [r2]
	add	r5, #1
	ldrb	r3, [r5]
	add	r2, #2
	cmp	r3, #0
	bne	.L1e8d6
.L1e8e4:
	ldr	r3, .L1e91c	@ 0
	strh	r3, [r2]
	mov	r1, r8
	ldrh	r3, [r7, #0xe]
	lsr	r2, r1, #3
	add	r3, r2
	mov	r4, r10
	ldrh	r2, [r7, #0xc]
	lsr	r1, r4, #3
	add	r3, #1
	add	r2, r1
	lsl	r3, #5
	add	r3, r2
	add	r1, r3, #1
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r1, r3
	bcs	.L1e932
	ldr	r4, =0x6002000
	lsl	r1, #1
	add	r2, r1, r4
	mov	r3, #7
	add	r1, r0, r1
	mov	r0, r10
	and	r3, r0
	mov	r0, r6
	b	.L1e928

	.align	2, 0
.L1e91c:
	.word	0
	.pool

.L1e928:
	bl	Func_801de5c
	mov	r0, r6
	bl	free
.L1e932:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801e8b0

