	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LunpaFortress_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6a
	cmp	r2, r3
	bne	.Lm959_a98
	ldr	r0, =.Lm959_69d0
	b	.Lm959_ac2
.Lm959_a98:
	ldr	r3, =0xa2
	cmp	r2, r3
	bne	.Lm959_aa2
	ldr	r0, =.Lm959_6e08
	b	.Lm959_ac2
.Lm959_aa2:
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.Lm959_aac
	ldr	r0, =.Lm959_6c28
	b	.Lm959_ac2
.Lm959_aac:
	ldr	r3, =0xa0
	cmp	r2, r3
	bne	.Lm959_ab6
	ldr	r0, =.Lm959_6ac0
	b	.Lm959_ac2
.Lm959_ab6:
	ldr	r3, =0xa3
	cmp	r2, r3
	bne	.Lm959_ac0
	ldr	r0, =.Lm959_6e98
	b	.Lm959_ac2
.Lm959_ac0:
	ldr	r0, =.Lm959_69b8
.Lm959_ac2:
	pop	{r1}
	bx	r1
.func_end LunpaFortress_GetActors

