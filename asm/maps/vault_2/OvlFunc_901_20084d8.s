	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_901_20084d8
	push	{lr}
	bl	__CutsceneStart
	mov	r2, #2
	mov	r1, #0
	mov	r0, #8
	bl	__MapActor_Face
	ldr	r0, =0x305
	bl	__SetFlag
	ldr	r0, =0x1cab
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_20084d8

