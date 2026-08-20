	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_200d928
	push	{lr}
	sub	sp, #8
	mov	r3, #0x16
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	bl	OvlFunc_883_20080c4
	bl	OvlFunc_883_200d950
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d928

