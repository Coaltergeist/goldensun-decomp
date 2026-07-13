	.include "macros.inc"
.thumb_func_start OvlFunc_930_20088a8
	push	{lr}
	sub	sp, #8
	mov	r3, #0x15
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0x15
	mov	r1, #0x49
	mov	r2, #1
	bl	__Func_8010704
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x64
	neg	r1, r1
	neg	r2, r2
	bl	__Func_808edac
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_20088a8
