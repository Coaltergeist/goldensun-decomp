	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200af30
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x82
	mov	r2, #0xb2
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0x82
	mov	r2, #0xc4
	mov	r3, #0xdf
	lsl	r2, #18
	mov	r1, #0
	lsl	r0, #18
	bl	OvlFunc_968_2008058
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092708
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200af30

