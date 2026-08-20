	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_200a26c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x51
	str	r3, [sp, #4]
	mov	r5, #0x15
	mov	r0, #2
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0x22
	str	r3, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0x20
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a26c

