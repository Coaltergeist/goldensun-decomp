	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_949_2008224
	push	{lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm949_238
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
.Lm949_238:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x88
	mov	r2, #0x90
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008224

