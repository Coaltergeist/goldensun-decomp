	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_949_2008260
	push	{lr}
	sub	sp, #8
	mov	r3, #3
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #3
	mov	r1, #0x20
	mov	r2, #1
	bl	__Func_8010704
	mov	r1, #0xe0
	mov	r2, #0xd4
	mov	r0, #0x66
	lsl	r1, #14
	lsl	r2, #17
	bl	__Func_808edac
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008260

