	.include "macros.inc"

.thumb_func_start GomaCave_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1d
	cmp	r2, r3
	bne	.Lm906_32c
	ldr	r0, =.Lm906_8d8
	b	.Lm906_32e
.Lm906_32c:
	ldr	r0, =.Lm906_818
.Lm906_32e:
	pop	{r1}
	bx	r1
.func_end GomaCave_GetEntrances

