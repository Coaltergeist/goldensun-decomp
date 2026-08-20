	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LuckyFountain_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xbd
	cmp	r2, r3
	bne	.Lm951_5c
	ldr	r0, =.Lm951_1aec
	b	.Lm951_5e
.Lm951_5c:
	ldr	r0, =.Lm951_1cfc
.Lm951_5e:
	pop	{r1}
	bx	r1
.func_end LuckyFountain_GetActors

