	.include "macros.inc"

.thumb_func_start OvlFunc_891_2009ad4
	push	{lr}
	sub	sp, #4
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #0xc
	mov	r1, #0x15
	mov	r2, #7
	mov	r3, #0x16
	bl	OvlFunc_891_2009b44
	bl	OvlFunc_891_200a2f4
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009ad4

