	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SuhallaDesert_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa4
	cmp	r2, r3
	bne	.Lm960_364
	ldr	r0, =gOvl_02009488
	b	.Lm960_37a
.Lm960_364:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lm960_36e
	ldr	r0, =.Lm960_14d0
	b	.Lm960_37a
.Lm960_36e:
	ldr	r3, =0xa6
	cmp	r2, r3
	bne	.Lm960_378
	ldr	r0, =.Lm960_1548
	b	.Lm960_37a
.Lm960_378:
	ldr	r0, =.Lm960_1458
.Lm960_37a:
	pop	{r1}
	bx	r1
.func_end SuhallaDesert_GetEntrances

