	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_908_20081a8
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x13ed
	bl	__MessageID
	mov	r2, #0
	mov	r0, #0x15
	mov	r1, #0
	bl	__MapActor_Face
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_908_20081a8

