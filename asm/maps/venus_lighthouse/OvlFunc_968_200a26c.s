	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200a26c
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	bl	OvlFunc_968_2008cc8
	cmp	r0, #0
	bne	.Lm968_2294
	mov	r3, #0x2c
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6c
	mov	r1, #0x27
	mov	r2, #0xd
	mov	r3, #7
	bl	__Func_8010704
	bl	OvlFunc_968_2008374
.Lm968_2294:
	bl	__CutsceneEnd
	bl	OvlFunc_968_2009f60
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200a26c

