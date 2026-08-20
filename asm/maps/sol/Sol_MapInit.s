	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Sol_MapInit
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.Lm895_90e
	bl	OvlFunc_895_200892c
	b	.Lm895_918
.Lm895_90e:
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.Lm895_918
	bl	OvlFunc_895_2008a24
.Lm895_918:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end Sol_MapInit

