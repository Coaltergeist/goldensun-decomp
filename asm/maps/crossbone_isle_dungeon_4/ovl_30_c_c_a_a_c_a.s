	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_20099e8
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x28
	str	r3, [sp]
	mov	r5, #0x2a
	mov	r0, #0x39
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x29
	str	r3, [sp]
	mov	r0, #0x39
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x3a
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x25
	str	r3, [sp]
	mov	r1, #0x25
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0x3e
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x55
	strb	r3, [r0]
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20099e8

