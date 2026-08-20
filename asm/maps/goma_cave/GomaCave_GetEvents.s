	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GomaCave_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1d
	cmp	r2, r3
	bne	.Lm906_3fc
	ldr	r0, =.Lm906_9f0
	b	.Lm906_3fe
.Lm906_3fc:
	ldr	r0, =.Lm906_990
.Lm906_3fe:
	pop	{r1}
	bx	r1
.func_end GomaCave_GetEvents

