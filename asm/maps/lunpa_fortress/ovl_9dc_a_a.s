	.include "macros.inc"

.thumb_func_start LunpaFortress_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa0
	cmp	r2, r3
	bne	.Lm959_9f4
	ldr	r0, =.Lm959_62a4
	b	.Lm959_a0a
.Lm959_9f4:
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.Lm959_9fe
	ldr	r0, =.Lm959_64b4
	b	.Lm959_a0a
.Lm959_9fe:
	ldr	r3, =0xa2
	cmp	r2, r3
	bne	.Lm959_a08
	ldr	r0, =.Lm959_6754
	b	.Lm959_a0a
.Lm959_a08:
	ldr	r0, =.Lm959_6814
.Lm959_a0a:
	pop	{r1}
	bx	r1
.func_end LunpaFortress_GetEntrances

