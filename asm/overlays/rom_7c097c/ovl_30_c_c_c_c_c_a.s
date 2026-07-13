	.include "macros.inc"

.thumb_func_start OvlFunc_936_200b970
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0xe
	mov	r6, r0
	mov	r5, #9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	cmp	r6, #0
	beq	.L39be
	mov	r0, r6
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r6
	str	r3, [r6, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L39be:
	ldr	r0, =0x201
	bl	__SetFlag
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b970

