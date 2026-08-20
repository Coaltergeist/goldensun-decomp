	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CrossboneIsleDungeon4_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x75
	cmp	r2, r3
	bne	.Lm948_a08
	ldr	r0, =.Lm948_2898
	b	.Lm948_a1e
.Lm948_a08:
	ldr	r3, =0x76
	cmp	r2, r3
	bne	.Lm948_a12
	ldr	r0, =.Lm948_28e0
	b	.Lm948_a1e
.Lm948_a12:
	ldr	r3, =0x78
	cmp	r2, r3
	bne	.Lm948_a1c
	ldr	r0, =gOvl_0200a928
	b	.Lm948_a1e
.Lm948_a1c:
	ldr	r0, =.Lm948_2868
.Lm948_a1e:
	pop	{r1}
	bx	r1
.func_end CrossboneIsleDungeon4_GetEntrances

