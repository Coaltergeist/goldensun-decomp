	.include "macros.inc"

.thumb_func_start MccoysPalaceExt_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x22
	cmp	r2, r3
	bne	.Lm910_16c
	ldr	r0, =.Lm910_d30
	b	.Lm910_16e
.Lm910_16c:
	ldr	r0, =.Lm910_d24
.Lm910_16e:
	pop	{r1}
	bx	r1
.func_end MccoysPalaceExt_GetEvents

