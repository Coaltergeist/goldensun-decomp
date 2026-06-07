	.include "macros.inc"

.thumb_func_start OvlFunc_958_20090fc
	push	{lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	bl	__Func_80916b0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1e
	bgt	.L1138
	mov	r0, #8
	bl	OvlFunc_958_20091f8
	mov	r3, #0x1b
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x9a2
	bl	__Func_8079358
.L1138:
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_20090fc

