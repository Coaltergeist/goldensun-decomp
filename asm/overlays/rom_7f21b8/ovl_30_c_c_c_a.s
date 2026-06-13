	.include "macros.inc"

.thumb_func_start OvlFunc_967_2008468
	push	{lr}
	ldr	r0, =0x9bc
	bl	__SetFlag
	ldr	r0, =0x288b
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_2008468

