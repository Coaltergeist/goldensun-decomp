	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_20090b8
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bne	.Lm948_1100
	mov	r3, #0x9c
	lsl	r3, #4
	add	r5, r6, r3
	mov	r0, r5
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_1100
	mov	r0, #0xf4
	bl	__CheckPartyItem
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.Lm948_1100
	mov	r0, r5
	bl	__SetFlag
	mov	r0, #0x80
	lsl	r0, #1
	orr	r0, r6
	bl	OvlFunc_948_2008f40
	mov	r0, #0xf4
	bl	__Func_80789dc
.Lm948_1100:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20090b8

