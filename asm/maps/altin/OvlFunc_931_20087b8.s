	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_931_20087b8
	push	{lr}
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, r0
	mov	r3, r1
	mov	r2, #0
	add	r3, #0x64
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r3, =0x6666
	str	r3, [r1, #0x48]
	ldr	r3, =OvlFunc_931_20086f0
	mov	r0, #0x12
	str	r3, [r1, #0x6c]
	ldr	r2, =0x9999
	ldr	r1, =0x13333
	bl	__MapActor_SetSpeed
	mov	r2, #0xe6
	mov	r0, #0x12
	mov	r1, #0x1c
	lsl	r2, #1
	bl	__MapActor_TravelToWait
	mov	r2, #0xe0
	mov	r1, #0x18
	lsl	r2, #1
	mov	r0, #0x12
	bl	__MapActor_TravelToWait
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x12
	bl	__DeleteFieldActor
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	mov	r0, #0
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #1
	bl	__MapActor_SetAnim
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_20087b8

