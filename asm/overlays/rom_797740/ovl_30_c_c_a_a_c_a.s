	.include "macros.inc"

.thumb_func_start OvlFunc_900_2008094
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #9
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xa
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x138a
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_900_2008094

