	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2008594
	push	{lr}
	mov	r3, r0
	add	r3, #0x64
	ldrh	r3, [r3]
	mov	r1, #0xf
	and	r1, r3
	bl	__Func_80929d8
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_2008594

