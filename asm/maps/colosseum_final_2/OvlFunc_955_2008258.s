	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_2008258
	push	{lr}
	ldr	r0, =0x331
	sub	sp, #8
	bl	__SetFlag
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r2, #0x11
	mov	r3, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008258

