	.include "macros.inc"

.thumb_func_start OvlFunc_901_200852c
	push	{lr}
	bl	__CutsceneStart
	mov	r2, #2
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_809280c
	ldr	r0, =0x306
	bl	__SetFlag
	ldr	r0, =0x868
	bl	__SetFlag
	ldr	r0, =0x1caf
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_200852c

