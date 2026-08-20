	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_200a2a0
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r5, #6
	mov	r0, #2
	mov	r1, #0x54
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r0, #5
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a2a0

