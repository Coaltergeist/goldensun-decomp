	.include "macros.inc"

.thumb_func_start OvlFunc_942_2008144
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x8aa
	bl	__SetFlag
	mov	r1, #0xc4
	mov	r2, #0x94
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #8
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r1, #0xcc
	mov	r2, #0x94
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_2008144
