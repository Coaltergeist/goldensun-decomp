	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200a81c
	push	{lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x37
	bl	__MapActor_Face
	ldr	r0, =0x2642
	bl	__MessageID
	ldr	r3, =.Lm881_679c
	mov	r1, #0
	ldr	r0, [r3]
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0x37
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a81c

