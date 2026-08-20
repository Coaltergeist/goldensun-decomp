	.include "macros.inc"

.thumb_func_start GomaCave_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1d
	cmp	r2, r3
	bne	.Lm906_368
	ldr	r0, =.Lm906_978
	b	.Lm906_36a
.Lm906_368:
	ldr	r0, =.Lm906_948
.Lm906_36a:
	pop	{r1}
	bx	r1
.func_end GomaCave_GetActors

