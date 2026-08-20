	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SuhallaDesert_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa4
	cmp	r2, r3
	bne	.Lm960_3c4
	ldr	r0, =.Lm960_1610
	b	.Lm960_3da
.Lm960_3c4:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lm960_3ce
	ldr	r0, =gScript_930__020096b8
	b	.Lm960_3da
.Lm960_3ce:
	ldr	r3, =0xa6
	cmp	r2, r3
	bne	.Lm960_3d8
	ldr	r0, =.Lm960_1790
	b	.Lm960_3da
.Lm960_3d8:
	ldr	r0, =.Lm960_15f8
.Lm960_3da:
	pop	{r1}
	bx	r1
.func_end SuhallaDesert_GetActors

