	.include "macros.inc"

.thumb_func_start OvlFunc_939_20083f4
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xe
	mov	r5, #4
	str	r3, [sp]
	mov	r0, #0x11
	mov	r1, #4
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #0xf
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xd
	str	r3, [sp]
	mov	r0, #0xf
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	cmp	r6, #0
	beq	.L458
	mov	r0, r6
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #1
	strb	r3, [r2]
.L458:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20083f4
