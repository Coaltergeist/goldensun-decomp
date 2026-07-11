	.include "macros.inc"

.thumb_func_start OvlFunc_929_2008524
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1a64
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_929_2008524

