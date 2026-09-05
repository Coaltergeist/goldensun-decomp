	.include "macros.inc"

.thumb_func_start CrossboneIsleDungeon2_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x73
	cmp	r2, r3
	bne	.Lm947_14dc
	ldr	r0, =gOvl_0200b06c
	b	.Lm947_14fc
.Lm947_14dc:
	ldr	r3, =0x74
	cmp	r2, r3
	bne	.Lm947_14e6
	ldr	r0, =gOvl_0200b0e4
	b	.Lm947_14fc
.Lm947_14e6:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.Lm947_14f0
	ldr	r0, =.Lm947_3174
	b	.Lm947_14fc
.Lm947_14f0:
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.Lm947_14fa
	ldr	r0, =.Lm947_32dc
	b	.Lm947_14fc
.Lm947_14fa:
	ldr	r0, =.Lm947_3264
.Lm947_14fc:
	pop	{r1}
	bx	r1
.func_end CrossboneIsleDungeon2_GetActors

