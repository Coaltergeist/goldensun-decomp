	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_949_200828c
	push	{lr}
	sub	sp, #8
	mov	r3, #3
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #2
	mov	r1, #0x19
	mov	r2, #1
	bl	__Func_8010704
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x66
	neg	r1, r1
	neg	r2, r2
	bl	__Func_808edac
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_200828c

