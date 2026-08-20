	.include "macros.inc"

.thumb_func_start Kalay_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.Lm936_198
	ldr	r0, =.Lm936_4768
	b	.Lm936_1b8
.Lm936_198:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.Lm936_1a2
	ldr	r0, =.Lm936_4a20
	b	.Lm936_1b8
.Lm936_1a2:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.Lm936_1ac
	ldr	r0, =.Lm936_4a80
	b	.Lm936_1b8
.Lm936_1ac:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.Lm936_1b6
	ldr	r0, =.Lm936_4b58
	b	.Lm936_1b8
.Lm936_1b6:
	ldr	r0, =gScript_926__0200c750
.Lm936_1b8:
	pop	{r1}
	bx	r1
.func_end Kalay_GetActors

