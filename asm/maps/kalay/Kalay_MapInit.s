	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Kalay_MapInit
	push	{lr}
	ldr	r0, =0x87a
	bl	__SetFlag
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.Lm936_166c
	bl	OvlFunc_936_20096bc
	b	.Lm936_169a
.Lm936_166c:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.Lm936_1678
	bl	OvlFunc_936_20097e8
	b	.Lm936_169a
.Lm936_1678:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.Lm936_1684
	bl	OvlFunc_936_2009858
	b	.Lm936_169a
.Lm936_1684:
	ldr	r3, =0x9b
	cmp	r2, r3
	bne	.Lm936_1690
	bl	OvlFunc_936_20098a4
	b	.Lm936_169a
.Lm936_1690:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.Lm936_169a
	bl	OvlFunc_936_2009930
.Lm936_169a:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end Kalay_MapInit

