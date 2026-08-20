	.include "macros.inc"

.thumb_func_start KalayDocks_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.Lm942_58
	ldr	r0, =.Lm942_1738
	b	.Lm942_6e
.Lm942_58:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.Lm942_62
	ldr	r0, =.Lm942_17c8
	b	.Lm942_6e
.Lm942_62:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.Lm942_6c
	ldr	r0, =.Lm942_1840
	b	.Lm942_6e
.Lm942_6c:
	ldr	r0, =.Lm942_1708
.Lm942_6e:
	pop	{r1}
	bx	r1
.func_end KalayDocks_GetEntrances

