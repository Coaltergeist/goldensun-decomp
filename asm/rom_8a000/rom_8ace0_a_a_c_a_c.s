	.include "macros.inc"

.thumb_func_start Func_808b090  @ 0x0808b090
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
	bl	_GetFlag
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
