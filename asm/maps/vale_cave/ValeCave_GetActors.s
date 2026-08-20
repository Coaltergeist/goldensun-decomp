	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ValeCave_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5d
	cmp	r2, r3
	beq	.Lm934_da8
	ldr	r3, =0x5e
	cmp	r2, r3
	bne	.Lm934_d9e
	ldr	r0, =.Lm934_22c4
	b	.Lm934_daa
.Lm934_d9e:
	ldr	r3, =0x5f
	cmp	r2, r3
	bne	.Lm934_da8
	ldr	r0, =.Lm934_239c
	b	.Lm934_daa
.Lm934_da8:
	ldr	r0, =.Lm934_2234
.Lm934_daa:
	pop	{r1}
	bx	r1
.func_end ValeCave_GetActors

