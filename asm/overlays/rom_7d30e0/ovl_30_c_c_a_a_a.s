	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009984
	push	{r5, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x28
	mov	r2, #0x37
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x36
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L19bc
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L19bc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009984

