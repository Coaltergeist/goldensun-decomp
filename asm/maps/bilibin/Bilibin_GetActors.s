	.include "macros.inc"

.thumb_func_start Bilibin_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.Lm907_134
	ldr	r0, =.Lm907_1498
	b	.Lm907_14a
.Lm907_134:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.Lm907_13e
	ldr	r0, =.Lm907_1600
	b	.Lm907_14a
.Lm907_13e:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.Lm907_148
	ldr	r0, =.Lm907_16f0
	b	.Lm907_14a
.Lm907_148:
	ldr	r0, =gScript_944__02009480
.Lm907_14a:
	pop	{r1}
	bx	r1
.func_end Bilibin_GetActors

