	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_200a76c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x10c7
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a76c

