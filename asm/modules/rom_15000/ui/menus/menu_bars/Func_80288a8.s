	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80288a8  @ 0x080288a8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	ldr	r1, =iwram_3001f38
	ldr	r5, [r1]
	mov	r1, #0x90
	add	r1, r5
	mov	r14, r1
	add	r2, #2
	mov	r4, r14
	strh	r2, [r4]
	mov	r2, r5
	add	r2, #0x92
	strh	r3, [r2]
	mov	r3, r5
	add	r3, #0x94
	strh	r6, [r3]
	mov	r7, #0x8e
	add	r7, r5
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	mov	r1, #0
	sub	sp, #4
	mov	r12, r7
	cmp	r1, r3
	bge	.L288fc
	lsl	r3, r6, #3
	mov	r8, r3
	mov	r2, r5
.L288e4:
	lsl	r3, r0, #3
	mov	r4, r8
	strh	r4, [r2, #0xe]
	strh	r3, [r2, #0xc]
	mov	r4, r12
	mov	r7, #0
	ldrsh	r3, [r4, r7]
	add	r1, #1
	add	r0, #3
	add	r2, #0x14
	cmp	r1, r3
	blt	.L288e4
.L288fc:
	mov	r1, r14
	mov	r3, #2
	mov	r7, #0
	ldrsh	r2, [r1, r7]
	str	r3, [sp]
	mov	r1, r6
	mov	r3, #3
	bl	CreateUIBox
	str	r0, [r5, #0x78]
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80288a8
