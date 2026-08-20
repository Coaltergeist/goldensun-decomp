	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_963_2008334
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xc0
	mov	r0, #8
	mov	r1, #0x88
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r2, #0xc0
	mov	r0, #9
	mov	r1, #0x98
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #9
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r3, #0x1b
	str	r3, [sp, #4]
	mov	r5, #7
	mov	r0, #6
	mov	r1, #0x1b
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x1a
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #0x1a
	mov	r2, #2
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_963_2008334

