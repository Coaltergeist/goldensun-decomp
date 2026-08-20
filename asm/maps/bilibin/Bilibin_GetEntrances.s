	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Bilibin_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.Lm907_a0
	ldr	r0, =.Lm907_11ec
	b	.Lm907_b6
.Lm907_a0:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.Lm907_aa
	ldr	r0, =.Lm907_130c
	b	.Lm907_b6
.Lm907_aa:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.Lm907_b4
	ldr	r0, =.Lm907_136c
	b	.Lm907_b6
.Lm907_b4:
	ldr	r0, =.Lm907_11d4
.Lm907_b6:
	pop	{r1}
	bx	r1
.func_end Bilibin_GetEntrances

