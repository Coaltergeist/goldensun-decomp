	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801e7c0  @ 0x0801e7c0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r6, r3
	ldr	r3, =iwram_3001e8c
	mov	r10, r1
	ldr	r7, [r3]
	mov	r9, r2
	ldr	r1, =0x12b2
	mov	r2, #0
	mov	r8, r2
	add	r5, r7, r1
	mov	r3, r8
	strh	r3, [r5]
	mov	r1, #1
	bl	BufferString
	ldrh	r3, [r5]
	mov	r4, #0xeb
	lsl	r4, #4
	lsl	r3, #1
	add	r3, r4
	mov	r0, r8
	strh	r0, [r7, r3]
	ldrh	r3, [r5]
	ldr	r2, .L1e82c	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r5]
	mov	r1, r10
	ldrh	r3, [r1, #0xe]
	lsr	r6, #3
	ldrh	r2, [r1, #0xc]
	add	r3, r6
	mov	r4, r9
	lsr	r1, r4, #3
	add	r3, #1
	add	r2, r1
	lsl	r3, #5
	add	r3, r2
	mov	r0, #0xa0
	add	r1, r3, #1
	lsl	r0, #2
	cmp	r1, r0
	bcs	.L1e848
	ldr	r3, =0x6002000
	mov	r4, #0xeb
	lsl	r1, #1
	lsl	r4, #4
	add	r2, r1, r3
	add	r0, r7, r4
	b	.L1e83c

	.align	2, 0
.L1e82c:
	.word	0x1ff
	.pool

.L1e83c:
	mov	r3, #7
	mov	r4, r9
	add	r1, r7, r1
	and	r3, r4
	bl	Func_801de5c
.L1e848:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801e7c0

