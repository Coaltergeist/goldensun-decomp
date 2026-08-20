	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_200a69c
	push	{lr}
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0x247c
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xec
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0xb4
	bl	__MapActor_TravelToAnim
	mov	r1, #0xec
	mov	r2, #0xb4
	mov	r0, #0xf
	lsl	r1, #1
	bl	__MapActor_TravelToAnim
	mov	r1, #1
	mov	r0, #0xb
	bl	__SetCameraTarget
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r0, #0xb
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a69c

