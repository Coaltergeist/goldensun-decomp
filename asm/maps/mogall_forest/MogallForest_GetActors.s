	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MogallForest_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x44
	cmp	r2, r3
	bne	.Lm927_f58
	ldr	r0, =.Lm927_36a0
	b	.Lm927_f6e
.Lm927_f58:
	ldr	r3, =0x45
	cmp	r2, r3
	bne	.Lm927_f62
	ldr	r0, =.Lm927_3790
	b	.Lm927_f6e
.Lm927_f62:
	ldr	r3, =0x46
	cmp	r2, r3
	bne	.Lm927_f6c
	ldr	r0, =.Lm927_38b0
	b	.Lm927_f6e
.Lm927_f6c:
	ldr	r0, =.Lm927_3a30
.Lm927_f6e:
	pop	{r1}
	bx	r1
.func_end MogallForest_GetActors

