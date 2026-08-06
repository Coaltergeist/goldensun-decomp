	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CrossboneIsleDungeon4_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x75
	cmp	r2, r3
	bne	.Lm948_a68
	ldr	r0, =.Lm948_29b0
	b	.Lm948_a7e
.Lm948_a68:
	ldr	r3, =0x76
	cmp	r2, r3
	bne	.Lm948_a72
	ldr	r0, =.Lm948_2a40
	b	.Lm948_a7e
.Lm948_a72:
	ldr	r3, =0x78
	cmp	r2, r3
	bne	.Lm948_a7c
	ldr	r0, =.Lm948_2ad0
	b	.Lm948_a7e
.Lm948_a7c:
	ldr	r0, =gScript_884__0200a998
.Lm948_a7e:
	pop	{r1}
	bx	r1
.func_end CrossboneIsleDungeon4_GetActors

