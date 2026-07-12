	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009c6c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x26
	str	r3, [sp]
	mov	r5, #0x37
	mov	r0, #0x26
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x2a
	str	r3, [sp]
	mov	r0, #0x2a
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009c6c
