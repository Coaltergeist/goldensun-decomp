	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_905_20089dc
	push	{lr}
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xd
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0xc
	mov	r1, #0x28
	bl	__Func_8091f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_20089dc

