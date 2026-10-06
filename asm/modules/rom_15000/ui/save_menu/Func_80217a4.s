	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80217a4  @ 0x080217a4
	push	{r5, lr}
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #7
	lsr	r3, #1
	ldr	r1, =.L37230
	and	r3, r2
	lsl	r3, #2
	ldr	r1, [r1, r3]
	sub	sp, #8
	mov	r5, r0
	cmp	r1, #0
	bge	.L217c0
	add	r1, #0xff
.L217c0:
	asr	r1, #8
	cmp	r5, #0
	beq	.L21840
	ldr	r3, [sp]
	ldr	r4, =0xffff0000
	lsl	r1, #16
	ldr	r2, =0xffff
	lsr	r1, #16
	and	r3, r4
	orr	r3, r1
	and	r3, r2
	lsl	r1, #16
	orr	r3, r1
	str	r3, [sp]
	mov	r0, sp
	ldr	r3, [r0, #4]
	and	r3, r4
	str	r3, [r0, #4]
	bl	Func_8003d28
	mov	r3, #0x1f
	ldrb	r2, [r5, #0x17]
	and	r0, r3
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	lsl	r0, #1
	orr	r3, r0
	strb	r3, [r5, #0x17]
	ldrb	r3, [r5, #0x15]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r5, #0x15]
	ldrh	r2, [r5, #6]
	ldr	r3, =0xfff0
	add	r2, r3
	ldr	r3, .L21824	@ 0x1ff
	ldrh	r1, [r5, #0x16]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #0x16]
	ldrb	r3, [r5, #8]
	add	r3, #0xf0
	strb	r3, [r5, #0x14]
	mov	r3, #0xfc
	strb	r3, [r5, #0xf]
	b	.L21840

	.align	2, 0
.L21824:
	.word	0x1ff
	.pool

.L21840:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80217a4
