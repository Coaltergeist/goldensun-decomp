	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CrossboneIsleDungeon2_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x73
	cmp	r2, r3
	bne	.Lm947_2598
	ldr	r0, =.Lm947_33a8
	b	.Lm947_25c2
.Lm947_2598:
	ldr	r3, =0x74
	cmp	r2, r3
	bne	.Lm947_25a2
	ldr	r0, =.Lm947_3438
	b	.Lm947_25c2
.Lm947_25a2:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.Lm947_25ac
	ldr	r0, =.Lm947_3498
	b	.Lm947_25c2
.Lm947_25ac:
	ldr	r3, =0x79
	cmp	r2, r3
	bne	.Lm947_25b6
	ldr	r0, =.Lm947_351c
	b	.Lm947_25c2
.Lm947_25b6:
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.Lm947_25c0
	ldr	r0, =.Lm947_3618
	b	.Lm947_25c2
.Lm947_25c0:
	ldr	r0, =.Lm947_339c
.Lm947_25c2:
	pop	{r1}
	bx	r1
.func_end CrossboneIsleDungeon2_GetEvents

