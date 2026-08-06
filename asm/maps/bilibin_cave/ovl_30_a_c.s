	.include "macros.inc"

.thumb_func_start BilibinCave_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x31
	cmp	r2, r3
	bne	.Lm920_58
	ldr	r0, =.Lm920_9ec
	b	.Lm920_6e
.Lm920_58:
	ldr	r3, =0x30
	cmp	r2, r3
	bne	.Lm920_62
	ldr	r0, =.Lm920_a64
	b	.Lm920_6e
.Lm920_62:
	ldr	r3, =0x2f
	cmp	r2, r3
	bne	.Lm920_6c
	ldr	r0, =.Lm920_b24
	b	.Lm920_6e
.Lm920_6c:
	ldr	r0, =.Lm920_9bc
.Lm920_6e:
	pop	{r1}
	bx	r1
.func_end BilibinCave_GetEntrances

