	.include "macros.inc"

.thumb_func_start CrossboneIsleDungeon2_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x73
	cmp	r2, r3
	bne	.Lm947_1458
	ldr	r0, =.Lm947_2eac
	b	.Lm947_1482
.Lm947_1458:
	ldr	r3, =0x74
	cmp	r2, r3
	bne	.Lm947_1462
	ldr	r0, =.Lm947_2ef4
	b	.Lm947_1482
.Lm947_1462:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.Lm947_146c
	ldr	r0, =.Lm947_2f3c
	b	.Lm947_1482
.Lm947_146c:
	ldr	r3, =0x79
	cmp	r2, r3
	bne	.Lm947_1476
	ldr	r0, =.Lm947_2f84
	b	.Lm947_1482
.Lm947_1476:
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.Lm947_1480
	ldr	r0, =.Lm947_2fcc
	b	.Lm947_1482
.Lm947_1480:
	ldr	r0, =.Lm947_2e7c
.Lm947_1482:
	pop	{r1}
	bx	r1
.func_end CrossboneIsleDungeon2_GetEntrances

