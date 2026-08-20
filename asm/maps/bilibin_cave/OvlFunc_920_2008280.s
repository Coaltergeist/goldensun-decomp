	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_920_2008280
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092950
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xd2
	bl	__PlaySound
	mov	r0, #0xf
	mov	r1, #6
	bl	__MapActor_DoAnim
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008280

