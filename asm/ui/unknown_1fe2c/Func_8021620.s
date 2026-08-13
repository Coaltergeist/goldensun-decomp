	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8021620  @ 0x08021620
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r5, r0
	mov	r9, r1
	mov	r6, r2
	mov	r10, r3
	bl	AllocSpriteSlot
	mov	r7, r0
	mov	r0, #0
	cmp	r7, #0x5f
	bgt	.L216a0
	mov	r0, r5
	mov	r1, r7
	bl	Func_80215e0
	ldr	r2, =0x80004000
	mov	r3, r10
	mov	r11, r2
	str	r3, [sp]
	mov	r1, r11
	mov	r2, r9
	mov	r3, r6
	mov	r0, r7
	bl	Func_801eadc
	mov	r5, #0xfd
	mov	r2, r10
	mov	r3, r6
	strb	r5, [r0, #0xf]
	mov	r8, r0
	add	r3, #0x20
	str	r2, [sp]
	mov	r1, r11
	mov	r2, r9
	mov	r0, r7
	bl	Func_801eadc
	ldrh	r1, [r0, #0x18]
	lsl	r2, r1, #22
	ldr	r3, .L21694	@ 0x3ff
	lsr	r2, #22
	add	r2, #8
	and	r2, r3
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	strb	r5, [r0, #0xf]
	strh	r3, [r0, #0x18]
	mov	r0, r8
	b	.L216a0

	.align	2, 0
.L21694:
	.word	0x3ff
	.pool

.L216a0:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8021620
