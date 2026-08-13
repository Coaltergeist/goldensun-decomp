	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start HeightTile_B  @ 0x08011ed0
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
