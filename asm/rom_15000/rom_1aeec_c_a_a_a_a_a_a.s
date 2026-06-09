	.include "macros.inc"

.thumb_func_start Func_801c0dc  @ 0x0801c0dc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =.L342f8
	mov	r5, r0
	mov	r8, r3
	mov	r6, r1
	bl	AllocSpriteSlot
	mov	r2, r8
	str	r0, [r6]
	mov	r1, #0x80
	bl	UploadSpriteGFX
	ldr	r3, .L1c134	@ 0x3ff
	ldrh	r2, [r5, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	mov	r0, #0xd
	strh	r3, [r5, #8]
	neg	r0, r0
	ldrb	r3, [r5, #5]
	mov	r2, r0
	and	r2, r3
	mov	r3, #0x11
	neg	r3, r3
	and	r2, r3
	mov	r3, #0x20
	orr	r2, r3
	mov	r3, #4
	ldrb	r1, [r5, #7]
	neg	r3, r3
	and	r2, r3
	sub	r3, #0x3b
	and	r3, r1
	mov	r1, #0x3f
	and	r3, r1
	strb	r3, [r5, #7]
	and	r2, r1
	mov	r3, #0x80
	orr	r2, r3
	b	.L1c140

	.align	2, 0
.L1c134:
	.word	0x3ff
	.pool

.L1c140:
	ldrb	r3, [r5, #9]
	and	r0, r3
	strb	r2, [r5, #5]
	strb	r0, [r5, #9]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_801c0dc

.thumb_func_start Func_801c154  @ 0x0801c154
	push	{lr}
	ldr	r3, =0x1ff
	ldrh	r4, [r0, #6]
	and	r1, r3
	ldr	r3, =0xfffffe00
	and	r3, r4
	orr	r3, r1
	mov	r1, #0xfc
	strh	r3, [r0, #6]
	strb	r2, [r0, #4]
	bl	Func_8003dec
	b	.L1c178

	.pool_aligned

.L1c178:
	pop	{r0}
	bx	r0
.func_end Func_801c154

