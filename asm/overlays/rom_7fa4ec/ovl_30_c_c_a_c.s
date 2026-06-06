	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_200807c
	push	{lr}
	mov	r0, #0x80
	sub	sp, #0xc
	lsl	r0, #8
	str	r0, [sp, #4]
	mov	r0, #0x80
	lsl	r0, #7
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r3, #0x80
	lsl	r2, #9
	str	r0, [sp, #8]
	lsl	r1, #11
	lsl	r3, #6
	mov	r0, #0
	str	r2, [sp]
	bl	OvlFunc_970_20090d4
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_200807c

