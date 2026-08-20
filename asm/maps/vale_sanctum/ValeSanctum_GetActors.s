	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ValeSanctum_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x22
	bhi	.Lm888_128
	ldr	r2, =.Lm888_8c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm888_8c:
	.word	.Lm888_118
	.word	.Lm888_118
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_11c
	.word	.Lm888_11c
	.word	.Lm888_11c
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_120
	.word	.Lm888_120
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_124
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_124
	.word	.Lm888_128
	.word	.Lm888_128
	.word	.Lm888_11c
.Lm888_118:
	ldr	r0, =.Lm888_3c0c
	b	.Lm888_12a
.Lm888_11c:
	ldr	r0, =.Lm888_3ccc
	b	.Lm888_12a
.Lm888_120:
	ldr	r0, =.Lm888_3d2c
	b	.Lm888_12a
.Lm888_124:
	ldr	r0, =.Lm888_3e04
	b	.Lm888_12a
.Lm888_128:
	ldr	r0, =.Lm888_3bf4
.Lm888_12a:
	pop	{r1}
	bx	r1
.func_end ValeSanctum_GetActors

