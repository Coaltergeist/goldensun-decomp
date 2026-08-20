	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Task_Rain  @ 0x08094820
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r0, [r3]
	ldr	r3, [r3, #0x54]
	mov	r10, r0
	mov	r8, r3
	mov	r3, r10
	add	r3, #0xe4
	ldr	r1, [r3]
	sub	sp, #0xc
	str	r1, [sp, #8]
	ldr	r3, [r3, #4]
	mov	r7, r8
	str	r3, [sp, #4]
	mov	r2, #0
	mov	r3, #0x3f
	add	r7, #8
	mov	r9, r2
	mov	r11, r3
.L94852:
	ldrh	r3, [r7, #0x1c]
	ldr	r1, =0xffff
	add	r3, r1
	mov	r2, r1
	and	r2, r3
	strh	r3, [r7, #0x1c]
	cmp	r2, r1
	bne	.L94864
	b	.L94984
.L94864:
	mov	r0, #0xb3
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L94876
	ldrh	r3, [r7, #0x1c]
	add	r3, #1
	strh	r3, [r7, #0x1c]
.L94876:
	ldrh	r2, [r7, #0x1c]
	lsl	r3, r2, #2
	add	r3, r2
	ldr	r2, =gScript_0809ef84
	lsl	r3, #1
	add	r4, r3, r2
	ldr	r5, [sp, #8]
	ldr	r3, [r7, #0xc]
	sub	r2, r3, r5
	cmp	r2, #0
	bge	.L94890
	ldr	r0, =0xffff
	add	r2, r0
.L94890:
	mov	r1, #0
	ldrsh	r3, [r4, r1]
	asr	r2, #16
	add	r1, r2, r3
	ldr	r2, [r7, #0x10]
	ldr	r3, [r7, #0x14]
	sub	r3, r2
	ldr	r2, [sp, #4]
	sub	r3, r2
	add	r4, #2
	cmp	r3, #0
	bge	.L948ac
	ldr	r5, =0xffff
	add	r3, r5
.L948ac:
	mov	r0, #0
	ldrsh	r2, [r4, r0]
	asr	r3, #16
	add	r0, r3, r2
	mov	r3, r1
	add	r3, #0x10
	add	r4, #2
	cmp	r3, #0xff
	bhi	.L94946
	mov	r2, #0x20
	neg	r2, r2
	cmp	r0, r2
	blt	.L94946
	cmp	r0, #0x9f
	bgt	.L94946
	mov	r5, #0xd
	ldrb	r2, [r7, #9]
	neg	r5, r5
	mov	r3, r5
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	ldr	r3, .L9490c	@ 0x1ff
	strb	r2, [r7, #9]
	and	r1, r3
	ldr	r2, .L94910	@ 0xfffffe00
	ldrh	r3, [r7, #6]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #6]
	strb	r0, [r7, #4]
	mov	r0, r8
	ldrh	r3, [r4]
	ldr	r1, [r0, #4]
	add	r1, r3
	ldr	r3, .L94914	@ 0x3ff
	ldr	r2, .L94918	@ 0xfffffc00
	and	r1, r3
	ldrh	r3, [r7, #8]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #8]
	add	r4, #2
	ldrb	r2, [r4]
	ldrb	r1, [r7, #5]
	mov	r3, r11
	b	.L94928

	.align	2, 0
.L9490c:
	.word	0x1ff
.L94910:
	.word	0xfffffe00
.L94914:
	.word	0x3ff
.L94918:
	.word	0xfffffc00
	.pool

.L94928:
	lsl	r2, #6
	and	r3, r1
	orr	r3, r2
	strb	r3, [r7, #5]
	ldrb	r1, [r7, #7]
	ldrb	r2, [r4, #2]
	mov	r3, r11
	and	r3, r1
	lsl	r2, #6
	orr	r3, r2
	strb	r3, [r7, #7]
	mov	r0, r7
	mov	r1, #0xf0
	bl	Func_8003dec
.L94946:
	ldrh	r3, [r7, #0x1c]
	cmp	r3, #0
	bne	.L94984
	mov	r1, r10
	ldr	r6, [r1]
	bl	Random
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r5, =0xff800000
	add	r3, r0
	add	r1, r3, r5
	str	r1, [sp]
	bl	Random
	ldr	r3, [r6, #8]
	lsl	r0, #8
	add	r3, r0
	ldr	r1, [sp]
	add	r0, r3, r5
	str	r1, [r7, #0xc]
	str	r0, [r7, #0x14]
	asr	r2, r0, #16
	asr	r1, #16
	mov	r0, #0
	bl	_Func_8011f54
	mov	r3, #0x10
	lsl	r0, #16
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
.L94984:
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	add	r7, #0x20
	cmp	r3, #0x1f
	bhi	.L94992
	b	.L94852
.L94992:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Task_Rain

