	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_888_200a660
	push	{lr}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #0
	str	r3, [r0, #0x6c]
	mov	r1, #0
	mov	r0, #0xe
	mov	r2, #0
	bl	__MapActor_SetPos
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a660

