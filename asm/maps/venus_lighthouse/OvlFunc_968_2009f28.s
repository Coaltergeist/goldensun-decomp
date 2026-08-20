	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2009f28
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	bl	OvlFunc_968_2008cc8
	cmp	r0, #0
	bne	.Lm968_1f50
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6d
	mov	r1, #0x2b
	mov	r2, #7
	mov	r3, #5
	bl	__Func_8010704
	bl	OvlFunc_968_2008374
.Lm968_1f50:
	bl	__CutsceneEnd
	bl	OvlFunc_968_2009d48
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009f28

