	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_20082c0
	push	{lr}
	ldr	r0, =0x333
	sub	sp, #8
	bl	__SetFlag
	mov	r3, #0x20
	mov	r2, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0x25
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20082c0

