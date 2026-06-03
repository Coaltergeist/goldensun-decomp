	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_2008410
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x50
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5a
	mov	r1, #9
	mov	r2, #2
	mov	r3, #3
	bl	__Func_80105d4
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r5, #0x11
	mov	r0, #0x1b
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008410

