	.include "macros.inc"

.thumb_func_start HeightTile_9
	push	{lr}
	cmp	r2, #7
	bhi	.L11e7a
	ldrb	r0, [r0]
	lsl	r0, #24
	asr	r0, #24
	b	.L11e80
.L11e7a:
	ldrb	r0, [r0, #1]
	lsl	r0, #24
	asr	r0, #24
.L11e80:
	lsl	r0, #19
	pop	{r1}
	bx	r1
.func_end HeightTile_9

.thumb_func_start HeightTile_A
	push	{lr}
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	add	r0, #1
	lsl	r2, r3, #19
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	add	r0, #1
	lsl	r4, r3, #19
	cmp	r1, #7
	bhi	.L11eb0
	sub	r3, r4, r2
	mov	r0, r1
	mul	r0, r3
	cmp	r0, #0
	bge	.L11eaa
	add	r0, #7
.L11eaa:
	asr	r0, #3
	add	r0, r2, r0
	b	.L11eca
.L11eb0:
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	lsl	r2, r3, #19
	mov	r3, r1
	sub	r2, r4
	sub	r3, #8
	mov	r0, r3
	mul	r0, r2
	cmp	r0, #0
	bge	.L11ec6
	add	r0, #7
.L11ec6:
	asr	r0, #3
	add	r0, r4, r0
.L11eca:
	pop	{r1}
	bx	r1
.func_end HeightTile_A

.thumb_func_start HeightTile_B
	push	{lr}
	ldrb	r3, [r0]
	add	r0, #1
	mov	r4, r2
	lsl	r2, r3, #19
	ldrb	r3, [r0]
	add	r0, #1
	lsl	r1, r3, #19
	cmp	r4, #7
	bhi	.L11ef6
	sub	r3, r1, r2
	mov	r0, r4
	mul	r0, r3
	cmp	r0, #0
	bge	.L11ef0
	add	r0, #7
.L11ef0:
	asr	r0, #3
	add	r0, r2, r0
	b	.L11f0e
.L11ef6:
	ldrb	r3, [r0]
	lsl	r2, r3, #19
	mov	r3, r4
	sub	r2, r1
	sub	r3, #8
	mov	r0, r3
	mul	r0, r2
	cmp	r0, #0
	bge	.L11f0a
	add	r0, #7
.L11f0a:
	asr	r0, #3
	add	r0, r1, r0
.L11f0e:
	pop	{r1}
	bx	r1
.func_end HeightTile_B

