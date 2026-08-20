	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ImilFallsCave_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x34
	cmp	r2, r3
	bne	.Lm922_110
	ldr	r0, =.Lm922_29bc
	b	.Lm922_144
.Lm922_110:
	ldr	r3, =0x3e
	cmp	r2, r3
	bne	.Lm922_11a
	ldr	r0, =.Lm922_29ec
	b	.Lm922_144
.Lm922_11a:
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.Lm922_124
	ldr	r0, =.Lm922_2a4c
	b	.Lm922_144
.Lm922_124:
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.Lm922_12e
	ldr	r0, =.Lm922_2ac4
	b	.Lm922_144
.Lm922_12e:
	ldr	r3, =0x41
	cmp	r2, r3
	bne	.Lm922_138
	ldr	r0, =.Lm922_2b3c
	b	.Lm922_144
.Lm922_138:
	ldr	r3, =0x43
	cmp	r2, r3
	bne	.Lm922_142
	ldr	r0, =.Lm922_2b9c
	b	.Lm922_144
.Lm922_142:
	ldr	r0, =.Lm922_29a4
.Lm922_144:
	pop	{r1}
	bx	r1
.func_end ImilFallsCave_GetActors

