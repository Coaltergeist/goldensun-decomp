	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8028808  @ 0x08028808
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001f38
	ldr	r7, [r3]
	mov	r3, #0x90
	add	r3, r7
	mov	r8, r3
	mov	r3, r7
	mov	r10, r0
	add	r1, #2
	mov	r5, r8
	add	r3, #0x92
	strh	r1, [r5]
	mov	r6, r10
	strh	r2, [r3]
	add	r3, #2
	strh	r6, [r3]
	mov	r1, #0x8e
	add	r1, r7
	mov	r2, #0
	ldrsh	r6, [r1, r2]
	mov	r9, r1
	mov	r1, r8
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	mov	r1, #3
	lsl	r0, #1
	sub	sp, #4
	bl	__divsi3
	lsl	r5, r6, #1
	add	r5, r6
	add	r5, r0
	lsr	r3, r5, #31
	add	r5, r3
	asr	r5, #1
	mov	r3, #0xf
	mov	r1, #0
	sub	r0, r3, r5
	cmp	r1, r6
	bge	.L2887e
	mov	r2, r10
	lsl	r4, r2, #3
	mov	r12, r9
	mov	r2, r7
.L28868:
	lsl	r3, r0, #3
	strh	r3, [r2, #0xc]
	strh	r4, [r2, #0xe]
	mov	r6, r12
	mov	r5, #0
	ldrsh	r3, [r6, r5]
	add	r1, #1
	add	r0, #3
	add	r2, #0x14
	cmp	r1, r3
	blt	.L28868
.L2887e:
	mov	r3, r8
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, r10
	mov	r3, #3
	bl	CreateUIBox
	str	r0, [r7, #0x78]
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8028808
