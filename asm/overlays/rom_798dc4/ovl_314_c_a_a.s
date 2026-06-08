	.include "macros.inc"

.thumb_func_start OvlFunc_903_20084d4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x866
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_903_20084d4

