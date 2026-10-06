	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a3354  @ 0x080a3354
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r7, [r3]
	mov	r0, r7
	sub	sp, #4
	bl	Func_80a1814
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	bl	Func_80a1870
	mov	r0, #0xa5
	lsl	r0, #1
	ldr	r1, .La33b0	@ 0x1e
	mov	r2, #3
	add	r3, r7, r0
.La337a:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La337a
	mov	r5, #0
	str	r5, [r7, #0x28]
	str	r5, [r7, #0x24]
	mov	r6, #2
	mov	r1, #0x11
	mov	r2, #0x1e
	mov	r3, #3
	mov	r0, #0
	str	r6, [sp]
	bl	_CreateUIBox
	mov	r2, #0x88
	str	r0, [r7, #0x2c]
	lsl	r2, #1
	ldr	r0, =0x111
	add	r3, r7, r2
	str	r5, [r7, #0x20]
	strb	r5, [r3]
	add	r3, r7, r0
	strb	r5, [r3]
	b	.La33bc

	.align	2, 0
.La33b0:
	.word	0x1e
	.pool

.La33bc:
	mov	r3, #0x89
	lsl	r3, #1
	add	r2, r7, r3
	add	r0, #2
	mov	r3, #8
	strb	r3, [r2]
	add	r3, r7, r0
	strb	r6, [r3]
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a3354

