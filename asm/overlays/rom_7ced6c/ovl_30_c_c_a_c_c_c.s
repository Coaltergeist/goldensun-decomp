	.include "macros.inc"

.thumb_func_start OvlFunc_946_2009624
	push	{lr}
	ldr	r0, =0x8c4
	sub	sp, #8
	bl	__SetFlag
	mov	r3, #8
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009624

