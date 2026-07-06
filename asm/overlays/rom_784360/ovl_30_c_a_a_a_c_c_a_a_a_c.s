	.include "macros.inc"

.thumb_func_start OvlFunc_884_20081c4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0xf3c
	bl	__MessageID
	mov	r2, #2
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_8093054
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20081c4

