	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80040e8
	push	{lr}
	ldr	r3, =iwram_3001d34
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, =iwram_3001a10
	ldr	r1, =iwram_3001a20
	ldr	r4, .L4118	@ 0xffff
	strb	r2, [r3]
	mov	r0, #0
	mov	r2, #0x13
.L40fc:
	ldrh	r3, [r1, #4]
	sub	r2, #1
	orr	r3, r4
	str	r0, [r1]
	strh	r3, [r1, #4]
	strb	r0, [r1, #6]
	add	r1, #8
	cmp	r2, #0
	bge	.L40fc
	ldr	r2, =iwram_3001d34
	mov	r3, #1
	strb	r3, [r2]
	b	.L4128

	.align	2, 0
.L4118:
	.word 0xffff
	.pool

.L4128:
	pop	{r0}
	bx	r0
.func_end Func_80040e8

