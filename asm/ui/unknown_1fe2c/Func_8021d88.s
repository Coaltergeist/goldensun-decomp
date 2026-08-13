	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8021d88  @ 0x08021d88
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r3, r1
	lsl	r5, r3, #3
	sub	r5, r3
	mov	r4, r0
	mov	r8, r2
	lsl	r5, #2
	mov	r2, #0x82
	add	r6, r4, r5
	lsl	r3, #4
	lsl	r2, #1
	sub	sp, #4
	add	r6, r2
	mov	r1, r8
	mov	r2, r3
	str	r4, [sp]
	bl	Func_8021cb8
	mov	r2, #0x8e
	lsl	r2, #1
	ldr	r4, [sp]
	add	r3, r5, r2
	mov	r2, r8
	str	r2, [r4, r3]
	ldr	r3, =0x80002000
	str	r3, [r6, #4]
	mov	r3, #0
	str	r3, [r6, #8]
	mov	r3, #0x88
	lsl	r3, #1
	add	r5, r3
	ldrh	r0, [r4, r5]
	mov	r1, r8
	bl	Func_8021c64
	ldr	r3, .L21de4	@ 0x3ff
	ldrh	r2, [r6, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r6, #8]
	add	sp, #4
	b	.L21df0

	.align	2, 0
.L21de4:
	.word	0x3ff
	.pool

.L21df0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8021d88
