	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200aee4
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	bl	OvlFunc_968_2008cc8
	cmp	r0, #0
	bne	.Lm968_2f20
	mov	r3, #5
	mov	r2, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x30
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
	mov	r3, #9
	mov	r2, #0x25
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x49
	mov	r1, #0x25
	mov	r2, #9
	mov	r3, #0xd
	bl	__Func_8010704
	bl	OvlFunc_968_2008374
.Lm968_2f20:
	bl	__CutsceneEnd
	bl	OvlFunc_968_200ab14
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200aee4

