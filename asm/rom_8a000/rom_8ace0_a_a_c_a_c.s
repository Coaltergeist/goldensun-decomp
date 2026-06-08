	.include "macros.inc"

.thumb_func_start Func_808b090
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r4, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r4, r2
	mov	r1, #0x12
	mov	r10, r1
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	mov	r11, r1
	mov	r1, #0xe1
	lsl	r1, #1
	ldr	r5, =.L9d9f0
	add	r3, r4, r1
	add	r1, #0xa
	mov	r2, #0
	ldrsh	r7, [r3, r2]
	ldrh	r0, [r5]
	add	r3, r4, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	mov	r1, r0
	mov	r9, r2
	lsl	r3, r1, #16
	mov	r2, #1
	asr	r3, #16
	neg	r2, r2
	cmp	r3, r2
	beq	.L8b132
	ldr	r6, =0x7fff
	mov	r8, r2
.L8b0da:
	ldrb	r2, [r5, #3]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L8b0ee
	lsl	r3, r1, #16
	asr	r3, #16
	cmp	r3, r11
	bne	.L8b122
	b	.L8b0f6
.L8b0ee:
	lsl	r3, r0, #16
	asr	r3, #16
	cmp	r3, r9
	bne	.L8b122
.L8b0f6:
	ldrh	r2, [r5, #2]
	mov	r3, r6
	and	r3, r2
	cmp	r3, r6
	beq	.L8b108
	lsl	r3, r2, #17
	asr	r3, #17
	cmp	r3, r7
	bne	.L8b122
.L8b108:
	mov	r2, #4
	ldrsh	r0, [r5, r2]
	cmp	r0, r8
	beq	.L8b118
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L8b122
.L8b118:
	mov	r1, #6
	ldrsh	r3, [r5, r1]
	ldr	r4, =gState
	mov	r10, r3
	b	.L8b132
.L8b122:
	add	r5, #8
	ldrh	r1, [r5]
	lsl	r3, r1, #16
	asr	r3, #16
	mov	r0, r1
	cmp	r3, r8
	bne	.L8b0da
	ldr	r4, =gState
.L8b132:
	mov	r2, #0xf8
	lsl	r2, #1
	add	r3, r4, r2
	mov	r1, r10
	strh	r1, [r3]
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808b090

.thumb_func_start Func_808b158
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	mov	r6, r1
	ldr	r5, =.L9ddd8
	mov	r8, r3
	mov	r7, r0
	bl	Func_808a8d0
	ldrh	r4, [r5]
	mov	r1, r4
	lsl	r3, r1, #16
	mov	r2, #1
	asr	r3, #16
	neg	r2, r2
	mov	r12, r0
	cmp	r3, r2
	beq	.L8b1c4
	ldr	r0, =0x7fff
	mov	r14, r2
.L8b182:
	ldrb	r2, [r5, #3]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L8b196
	lsl	r3, r1, #16
	asr	r3, #16
	cmp	r3, r7
	bne	.L8b1b6
	b	.L8b19e
.L8b196:
	lsl	r3, r4, #16
	asr	r3, #16
	cmp	r3, r12
	bne	.L8b1b6
.L8b19e:
	ldrh	r2, [r5, #2]
	mov	r3, r0
	and	r3, r2
	cmp	r3, r0
	beq	.L8b1b0
	lsl	r3, r2, #17
	asr	r3, #17
	cmp	r3, r6
	bne	.L8b1b6
.L8b1b0:
	ldr	r5, [r5, #4]
	mov	r8, r5
	b	.L8b1c4
.L8b1b6:
	add	r5, #8
	ldrh	r1, [r5]
	lsl	r3, r1, #16
	asr	r3, #16
	mov	r4, r1
	cmp	r3, r14
	bne	.L8b182
.L8b1c4:
	mov	r0, r8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808b158

.thumb_func_start Func_808b1d8
	push	{r5, r6, r7, lr}
	ldr	r0, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r0, r1
	mov	r4, #0xe1
	lsl	r4, #1
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	ldr	r2, =.L9e1d8
	add	r3, r0, r4
	mov	r7, #0
	ldrsh	r5, [r3, r7]
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	mov	r4, #1
	neg	r4, r4
	ldrh	r1, [r2]
	cmp	r3, r4
	beq	.L8b238
	mov	r7, #0xe2
	mov	r3, #0xe3
	lsl	r7, #1
	lsl	r3, #1
	mov	r12, r4
	add	r4, r0, r7
	add	r0, r3
.L8b20e:
	lsl	r3, r1, #16
	asr	r3, #16
	cmp	r3, r6
	bne	.L8b22c
	mov	r7, #2
	ldrsh	r3, [r2, r7]
	cmp	r3, r12
	beq	.L8b222
	cmp	r3, r5
	bne	.L8b22c
.L8b222:
	ldrh	r3, [r2, #4]
	strh	r3, [r4]
	ldrh	r3, [r2, #6]
	strh	r3, [r0]
	b	.L8b238
.L8b22c:
	add	r2, #8
	mov	r7, #0
	ldrsh	r3, [r2, r7]
	ldrh	r1, [r2]
	cmp	r3, r12
	bne	.L8b20e
.L8b238:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808b1d8

