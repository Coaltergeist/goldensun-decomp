	.include "macros.inc"

.thumb_func_start OvlFunc_959_200a504
	push	{lr}
	ldr	r0, =0x946
	bl	__SetFlag
	mov	r0, #0x86
	lsl	r0, #2
	bl	__ClearFlag
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a504

