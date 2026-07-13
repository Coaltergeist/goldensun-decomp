	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80209d0  @ 0x080209d0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	ldr	r3, =iwram_3001e8c
	mov	r0, #0xc0
	lsl	r0, #2
	ldr	r6, [r3]
	mov	r8, r1
	bl	Func_8004970
	mov	r10, r0
	mov	r1, r10
	mov	r0, r8
	bl	DecompressLZ
	ldrh	r3, [r5, #0xe]
	ldrh	r2, [r5, #0xc]
	lsl	r3, #5
	add	r3, r2
	ldr	r1, =0x6002000
	mov	r2, #0
	ldrh	r4, [r5, #0xa]
	lsl	r3, #1
	mov	r12, r2
	mov	r7, r10
	add	r0, r3, r1
	add	r6, r3
	cmp	r12, r4
	bge	.L20a44
	mov	r3, #0x20
	ldrh	r2, [r5, #8]
	mov	r14, r3
.L20a14:
	mov	r1, #0
	cmp	r1, r2
	bge	.L20a32
.L20a1a:
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	strh	r3, [r0]
	strh	r3, [r6]
	ldrh	r2, [r5, #8]
	add	r1, #1
	add	r7, #2
	add	r0, #2
	add	r6, #2
	cmp	r1, r2
	blt	.L20a1a
	ldrh	r4, [r5, #0xa]
.L20a32:
	mov	r1, r14
	sub	r3, r1, r2
	lsl	r3, #1
	add	r0, r3
	add	r6, r3
	mov	r3, #1
	add	r12, r3
	cmp	r12, r4
	blt	.L20a14
.L20a44:
	mov	r0, r10
	bl	free
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80209d0
