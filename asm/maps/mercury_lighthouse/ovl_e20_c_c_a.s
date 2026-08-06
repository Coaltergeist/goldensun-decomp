	.include "macros.inc"

.thumb_func_start MercuryLighthouse_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x36
	cmp	r2, r3
	bne	.Lm924_e98
	ldr	r0, =.Lm924_6700
	b	.Lm924_eb8
.Lm924_e98:
	ldr	r3, =0x37
	cmp	r2, r3
	bne	.Lm924_ea2
	ldr	r0, =.Lm924_67a8
	b	.Lm924_eb8
.Lm924_ea2:
	ldr	r3, =0x38
	cmp	r2, r3
	bne	.Lm924_eac
	ldr	r0, =.Lm924_6838
	b	.Lm924_eb8
.Lm924_eac:
	ldr	r3, =0x39
	cmp	r2, r3
	bne	.Lm924_eb6
	ldr	r0, =.Lm924_6988
	b	.Lm924_eb8
.Lm924_eb6:
	ldr	r0, =.Lm924_66e8
.Lm924_eb8:
	pop	{r1}
	bx	r1
.func_end MercuryLighthouse_GetActors

