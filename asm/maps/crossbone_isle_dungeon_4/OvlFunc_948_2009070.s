	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009070
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bne	.Lm948_10ae
	ldr	r0, =0x9c4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_10ae
	mov	r0, #0xf3
	bl	__CheckPartyItem
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.Lm948_10ae
	ldr	r0, =0x9c4
	bl	__SetFlag
	mov	r0, #0x80
	lsl	r0, #1
	bl	OvlFunc_948_2008fdc
	mov	r0, #0xf3
	bl	__Func_80789dc
.Lm948_10ae:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009070

