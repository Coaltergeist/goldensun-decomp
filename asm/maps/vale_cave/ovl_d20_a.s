	.include "macros.inc"

.thumb_func_start ValeCave_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5d
	cmp	r2, r3
	bne	.Lm934_d38
	ldr	r0, =.Lm934_1f9c
	b	.Lm934_d4e
.Lm934_d38:
	ldr	r3, =0x5e
	cmp	r2, r3
	bne	.Lm934_d42
	ldr	r0, =.Lm934_2014
	b	.Lm934_d4e
.Lm934_d42:
	ldr	r3, =0x5f
	cmp	r2, r3
	bne	.Lm934_d4c
	ldr	r0, =.Lm934_2134
	b	.Lm934_d4e
.Lm934_d4c:
	ldr	r0, =.Lm934_1f6c
.Lm934_d4e:
	pop	{r1}
	bx	r1
.func_end ValeCave_GetEntrances

