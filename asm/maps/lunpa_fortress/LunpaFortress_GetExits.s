	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LunpaFortress_GetExits
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.Lm959_a4c
	ldr	r0, =.Lm959_6910
	b	.Lm959_a5e
.Lm959_a4c:
	ldr	r3, =0xa2
	cmp	r2, r3
	beq	.Lm959_a58
	ldr	r3, =0xa3
	cmp	r2, r3
	bne	.Lm959_a5c
.Lm959_a58:
	ldr	r0, =.Lm959_697c
	b	.Lm959_a5e
.Lm959_a5c:
	ldr	r0, =.Lm959_68a4
.Lm959_a5e:
	pop	{r1}
	bx	r1
.func_end LunpaFortress_GetExits

