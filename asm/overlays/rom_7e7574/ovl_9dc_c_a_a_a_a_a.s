	.include "macros.inc"

.thumb_func_start OvlFunc_959_20090a8
	push	{lr}
	mov	r1, #0x84
	mov	r2, #0xc6
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xea
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #0xea
	bl	__Func_8091a58
	ldr	r0, =0xf2e
	bl	__SetFlag
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_20090a8

