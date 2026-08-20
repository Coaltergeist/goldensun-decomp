	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_20084cc
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x11
	mov	r2, #0xd
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #1
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.Lm932_4f8
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
.Lm932_4f8:
	ldr	r0, =0x201
	bl	__SetFlag
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20084cc

