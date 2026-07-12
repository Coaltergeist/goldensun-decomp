	.include "macros.inc"

.thumb_func_start OvlFunc_906_2008380
	push	{lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L394
	ldr	r2, =0xfffff
	add	r3, r2
.L394:
	asr	r3, #20
	cmp	r3, #0x18
	bne	.L3d6
	mov	r0, #8
	bl	OvlFunc_906_20084f4
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r2, #0x11
	mov	r3, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x4a
	mov	r2, #9
	mov	r3, #3
	mov	r0, #0x13
	bl	__Func_8010704
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =0x864
	bl	__SetFlag
.L3d6:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_906_2008380
