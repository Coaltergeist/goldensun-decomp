	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_916_2008150
	push	{lr}
	ldr	r3, =.Lm916_12c4
	ldr	r3, [r3]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #1
	bne	.Lm916_174
	mov	r2, #9
	mov	r3, #4
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	str	r3, [sp]
	bl	__Func_8010704
	b	.Lm916_188
.Lm916_174:
	mov	r3, #6
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
.Lm916_188:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_916_2008150

