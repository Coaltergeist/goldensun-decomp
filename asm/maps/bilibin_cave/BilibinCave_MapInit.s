	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BilibinCave_MapInit
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x31
	cmp	r2, r3
	bne	.Lm920_486
	bl	OvlFunc_920_20084b4
	b	.Lm920_49c
.Lm920_486:
	ldr	r3, =0x30
	cmp	r2, r3
	bne	.Lm920_492
	bl	OvlFunc_920_20084e8
	b	.Lm920_49c
.Lm920_492:
	ldr	r3, =0x2f
	cmp	r2, r3
	bne	.Lm920_49c
	bl	OvlFunc_920_2008538
.Lm920_49c:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end BilibinCave_MapInit

