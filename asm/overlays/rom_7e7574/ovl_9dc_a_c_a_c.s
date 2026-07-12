	.include "macros.inc"

.thumb_func_start OvlFunc_959_2008b4c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #0xf
	mov	r0, #0xf
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb96
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
.Lb96:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008b4c
