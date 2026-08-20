	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_2008398
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x50
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x32
	mov	r2, #2
	mov	r3, #4
	bl	__Func_80105d4
	mov	r3, #0x34
	str	r3, [sp, #4]
	mov	r5, #0x10
	mov	r0, #0x17
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0x35
	str	r3, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008398

