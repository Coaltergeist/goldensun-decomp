	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start UpdateSprite  @ 0x0800b168
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	add	r0, #0x20
	ldrb	r0, [r0]
	sub	sp, #0x44
	lsr	r0, #1
	str	r0, [sp, #0x1c]
	mov	r0, r7
	add	r0, #0x21
	str	r0, [sp, #0x14]
	ldrb	r0, [r0]
	lsr	r0, #1
	str	r0, [sp, #0x18]
	mov	r4, #8
	mov	r0, #4
	str	r4, [sp, #0x10]
	str	r0, [sp, #0xc]
	ldmia	r2!, {r4}
	ldmia	r1!, {r0}
	ldr	r2, [r2]
	mov	r9, r2
	ldmia	r1!, {r2}
	str	r2, [sp, #4]
	mov	r8, r4
	lsl	r3, #16
	ldmia	r1!, {r4}
	lsr	r3, #16
	ldr	r6, [r1]
	mov	r10, r0
	mov	r1, r3
	mov	r0, r7
	mov	r11, r4
	bl	UpdateSpriteAnim
	mov	r5, r0
	cmp	r5, #0
	bne	.Lb1da
	mov	r0, #0x80
	lsl	r0, #9
	cmp	r8, r0
	bne	.Lb1da
	cmp	r9, r8
	bne	.Lb1da
	ldrh	r2, [r7, #0x1e]
	mov	r3, r2
	cmp	r3, #0
	bne	.Lb1dc
	mov	r1, #0
	str	r1, [sp, #8]
	str	r1, [sp, #0x20]
	b	.Lb222
.Lb1da:
	ldrh	r2, [r7, #0x1e]
.Lb1dc:
	mov	r3, #1
	str	r3, [sp, #8]
	add	r0, sp, #0x24
	ldr	r3, [r0, #4]
	ldr	r4, =0xffff0000
	and	r3, r4
	orr	r3, r2
	str	r3, [r0, #4]
	mov	r1, r8
	lsl	r3, r1, #8
	ldr	r1, [sp, #0x24]
	lsr	r3, #16
	mov	r2, r9
	and	r1, r4
	orr	r1, r3
	lsl	r3, r2, #8
	ldr	r2, =0xffff
	lsr	r3, #16
	lsl	r3, #16
	and	r1, r2
	orr	r1, r3
	str	r1, [sp, #0x24]
	cmp	r5, #0
	beq	.Lb21c
	ldrh	r3, [r0]
	neg	r3, r3
	lsl	r3, #16
	mov	r2, r4
	lsr	r3, #16
	and	r2, r1
	orr	r2, r3
	str	r2, [sp, #0x24]
.Lb21c:
	bl	Func_8003d28
	str	r0, [sp, #0x20]
.Lb222:
	mov	r3, #0x80
	lsl	r3, #9
	cmp	r8, r3
	bgt	.Lb22e
	cmp	r9, r3
	ble	.Lb246
.Lb22e:
	ldr	r4, [sp, #0x1c]
	ldr	r0, [sp, #0x18]
	mov	r3, #3
	lsl	r4, #1
	lsl	r0, #1
	mov	r1, #0x10
	mov	r2, #8
	str	r3, [sp, #8]
	str	r4, [sp, #0x1c]
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
.Lb246:
	ldr	r3, [sp, #4]
	ldr	r4, =0xff9c0000
	cmp	r3, r4
	bgt	.Lb256
	mov	r0, #1
	str	r0, [sp]
	mov	r4, #0
	b	.Lb260
.Lb256:
	mov	r1, r11
	asr	r3, r1, #17
	add	r3, #0xa
	str	r3, [sp]
	mov	r4, #2
.Lb260:
	mov	r2, r11
	sub	r3, r2, r6
	ldr	r0, [sp, #0xc]
	asr	r3, #16
	sub	r6, r3, r0
	mov	r3, r7
	add	r3, #0x26
	ldrb	r2, [r3]
	mov	r3, #1
	mov	r1, r10
	and	r3, r2
	asr	r5, r1, #16
	cmp	r3, #0
	beq	.Lb2dc
	cmp	r6, #0x9f
	bgt	.Lb2d8
	mov	r0, r7
	add	r0, #0xc
	ldrb	r2, [r0, #5]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	ldr	r2, [sp, #8]
	orr	r3, r2
	strb	r3, [r0, #5]
	ldr	r2, [sp, #0x20]
	mov	r3, #0x1f
	ldrb	r1, [r0, #7]
	and	r2, r3
	mov	r3, #0x3f
	neg	r3, r3
	lsl	r2, #1
	and	r3, r1
	orr	r3, r2
	strb	r3, [r0, #7]
	ldr	r1, [sp, #0x10]
	ldr	r3, .Lb2c4	@ 0x1ff
	sub	r2, r5, r1
	and	r2, r3
	ldrh	r1, [r0, #6]
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r0, #6]
	strb	r6, [r0, #4]
	mov	r1, r4
	bl	Func_8003dec
	b	.Lb2dc

	.align	2, 0
.Lb2c4:
	.word	0x1ff
	.pool

.Lb2d8:
	mov	r2, r10
	asr	r5, r2, #16
.Lb2dc:
	ldr	r3, [sp, #0x1c]
	sub	r2, r5, r3
	mov	r3, r7
	add	r3, #0x22
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r4, r8
	mul	r4, r3
	ldr	r0, =0xffff
	mov	r3, r4
	add	r3, r0
	asr	r3, #16
	add	r4, r2, r3
	ldr	r3, [sp, #4]
	mov	r2, r11
	sub	r1, r2, r3
	ldr	r2, [sp, #0x18]
	asr	r1, #16
	sub	r1, r2
	ldr	r2, [sp, #0x14]
	ldrb	r3, [r2]
	mov	r2, r7
	add	r2, #0x23
	ldrb	r2, [r2]
	lsl	r2, #24
	asr	r2, #24
	lsr	r3, #1
	sub	r3, r2
	mov	r2, r9
	mul	r2, r3
	mov	r3, r2
	add	r3, r0
	asr	r3, #16
	sub	r6, r1, r3
	cmp	r4, #0xef
	bgt	.Lb374
	cmp	r6, #0x9f
	bgt	.Lb374
	ldr	r3, .Lb364	@ 0x1ff
	mov	r0, r7
	ldrh	r2, [r0, #6]
	and	r4, r3
	ldr	r3, =0xfffffe00
	and	r3, r2
	orr	r3, r4
	strh	r3, [r0, #6]
	strb	r6, [r0, #4]
	ldrb	r2, [r0, #5]
	mov	r3, #4
	ldr	r4, [sp, #8]
	neg	r3, r3
	and	r3, r2
	orr	r3, r4
	strb	r3, [r0, #5]
	ldr	r1, [sp, #0x20]
	mov	r3, #0x1f
	and	r1, r3
	str	r1, [sp, #0x20]
	mov	r3, #0x3f
	ldrb	r2, [r0, #7]
	neg	r3, r3
	lsl	r1, #1
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #7]
	ldr	r1, [sp]
	b	.Lb370

	.align	2, 0
.Lb364:
	.word	0x1ff
	.pool

.Lb370:
	bl	Func_8003dec
.Lb374:
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end UpdateSprite

