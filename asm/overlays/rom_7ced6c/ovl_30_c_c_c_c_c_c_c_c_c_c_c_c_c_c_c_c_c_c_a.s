	.include "macros.inc"

.thumb_func_start OvlFunc_946_2009b68
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldr	r2, =0xffe00000
	ldr	r3, [r0, #8]
	mov	r1, sp
	add	r3, r2
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r1, #8]
	bl	OvlFunc_946_2009a44
	add	sp, #0xc
	pop	{r1}
	bx	r1
.func_end OvlFunc_946_2009b68

