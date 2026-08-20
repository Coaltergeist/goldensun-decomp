	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800b074  @ 0x0800b074
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r12, r0
	mov	r11, r3
	mov	r3, r12
	add	r3, #0x20
	ldrb	r3, [r3]
	lsr	r0, r3, #1
	mov	r3, #0x21
	add	r3, r12
	mov	r14, r3
	ldrb	r3, [r3]
	sub	sp, #8
	lsr	r4, r3, #1
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r3, #4
	str	r3, [sp]
	mov	r10, r2
	ldr	r2, [sp, #0x2c]
	mov	r3, #1
	mov	r9, r3
	ldmia	r2!, {r3}
	ldr	r5, [r2]
	mov	r2, #0x80
	lsl	r2, #9
	cmp	r3, r2
	bgt	.Lb0ba
	cmp	r5, r2
	ble	.Lb0ca
.Lb0ba:
	mov	r2, #3
	mov	r9, r2
	mov	r3, #0x10
	mov	r2, #8
	str	r3, [sp, #4]
	str	r2, [sp]
	lsl	r0, #1
	lsl	r4, #1
.Lb0ca:
	asr	r1, #16
	sub	r7, r1, r0
	mov	r3, r11
	mov	r0, r10
	mov	r2, r14
	mov	r8, r1
	sub	r1, r3, r0
	ldrb	r3, [r2]
	mov	r2, r12
	add	r2, #0x23
	ldrb	r2, [r2]
	lsl	r2, #24
	asr	r2, #24
	lsr	r3, #1
	sub	r3, r2
	mul	r3, r5
	asr	r1, #16
	sub	r1, r4
	ldr	r4, =0xffff
	add	r3, r4
	asr	r3, #16
	sub	r6, r1, r3
	mov	r0, r12
	mov	r1, #4
	ldrb	r2, [r0, #5]
	neg	r1, r1
	mov	r3, r1
	mov	r5, r9
	and	r3, r2
	orr	r3, r5
	ldr	r2, =0xfffffe00
	strb	r3, [r0, #5]
	ldr	r4, .Lb144	@ 0x1ff
	ldrh	r0, [r0, #6]
	mov	r3, r2
	and	r7, r4
	and	r3, r0
	orr	r3, r7
	mov	r0, r12
	strh	r3, [r0, #6]
	strb	r6, [r0, #4]
	ldr	r0, [sp, #4]
	mov	r3, r8
	sub	r7, r3, r0
	ldr	r3, [sp, #0x28]
	mov	r0, r11
	sub	r3, r0, r3
	ldr	r0, [sp]
	asr	r3, #16
	sub	r6, r3, r0
	mov	r3, r12
	add	r3, #0xc
	ldrb	r0, [r3, #5]
	and	r1, r0
	orr	r1, r5
	strb	r1, [r3, #5]
	ldrh	r1, [r3, #6]
	and	r7, r4
	and	r2, r1
	orr	r2, r7
	b	.Lb150

	.align	2, 0
.Lb144:
	.word	0x1ff
	.pool

.Lb150:
	strh	r2, [r3, #6]
	strb	r6, [r3, #4]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800b074

