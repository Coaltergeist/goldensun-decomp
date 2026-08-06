	.include "macros.inc"

.thumb_func_start Gondowan_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	cmp	r2, r3
	bne	.Lm958_cd8
	ldr	r0, =.Lm958_17b4
	b	.Lm958_cee
.Lm958_cd8:
	ldr	r3, =0x9d
	cmp	r2, r3
	bne	.Lm958_ce2
	ldr	r0, =.Lm958_17fc
	b	.Lm958_cee
.Lm958_ce2:
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.Lm958_cec
	ldr	r0, =.Lm958_1874
	b	.Lm958_cee
.Lm958_cec:
	ldr	r0, =.Lm958_1784
.Lm958_cee:
	pop	{r1}
	bx	r1
.func_end Gondowan_GetEntrances

