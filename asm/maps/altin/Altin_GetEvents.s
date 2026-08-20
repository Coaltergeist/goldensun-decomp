	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Altin_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4b
	cmp	r2, r3
	bne	.Lm931_134
	ldr	r0, =gScript_930__02009730
	b	.Lm931_140
.Lm931_134:
	ldr	r3, =0x4c
	cmp	r2, r3
	bne	.Lm931_13e
	ldr	r0, =.Lm931_19f4
	b	.Lm931_140
.Lm931_13e:
	ldr	r0, =.Lm931_1724
.Lm931_140:
	pop	{r1}
	bx	r1
.func_end Altin_GetEvents

