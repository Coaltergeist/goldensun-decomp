	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Kolima_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x24
	cmp	r2, r3
	bne	.Lm911_204
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm911_200
	ldr	r0, =.Lm911_3098
	bl	OvlFunc_911_20080a0
.Lm911_200:
	ldr	r0, =.Lm911_3098
	b	.Lm911_210
.Lm911_204:
	ldr	r3, =0x27
	cmp	r2, r3
	bne	.Lm911_20e
	ldr	r0, =.Lm911_3368
	b	.Lm911_210
.Lm911_20e:
	ldr	r0, =.Lm911_3080
.Lm911_210:
	pop	{r1}
	bx	r1
.func_end Kolima_GetActors

