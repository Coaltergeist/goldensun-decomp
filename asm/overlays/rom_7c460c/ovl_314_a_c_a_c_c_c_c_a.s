	.include "macros.inc"

.thumb_func_start OvlFunc_939_20088a4
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_80925cc
	ldr	r0, =0x24d1
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20088a4

