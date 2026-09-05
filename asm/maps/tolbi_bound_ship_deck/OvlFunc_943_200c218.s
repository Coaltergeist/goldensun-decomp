	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200c218
	push	{lr}
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0xa9
	mov	r3, #0
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r1, #0xe8
	mov	r2, #0xa9
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__WaitFrames
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200c218

