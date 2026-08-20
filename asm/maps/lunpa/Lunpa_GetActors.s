	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Lunpa_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x68
	cmp	r2, r3
	beq	.Lm939_3a6
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.Lm939_3a6
	ldr	r0, =.Lm939_1f64
	b	.Lm939_3a8
.Lm939_3a6:
	ldr	r0, =gOvl_02009e14
.Lm939_3a8:
	pop	{r1}
	bx	r1
.func_end Lunpa_GetActors

