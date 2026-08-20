	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BilibinCave_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x31
	cmp	r2, r3
	bne	.Lm920_10c
	ldr	r0, =.Lm920_ea8
	b	.Lm920_122
.Lm920_10c:
	ldr	r3, =0x30
	cmp	r2, r3
	bne	.Lm920_116
	ldr	r0, =.Lm920_efc
	b	.Lm920_122
.Lm920_116:
	ldr	r3, =0x2f
	cmp	r2, r3
	bne	.Lm920_120
	ldr	r0, =gOvl_02008f80
	b	.Lm920_122
.Lm920_120:
	ldr	r0, =.Lm920_e9c
.Lm920_122:
	pop	{r1}
	bx	r1
.func_end BilibinCave_GetEvents

