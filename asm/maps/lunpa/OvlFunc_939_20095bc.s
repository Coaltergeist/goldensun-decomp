	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_939_20095bc
	push	{lr}
	bl	__CutsceneStart
	bl	__MapTransitionIn
	mov	r2, #0xa8
	mov	r1, #0x98
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x92
	mov	r1, #1
	bl	__Func_8096fb0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_80970f8
	bl	__Func_809728c
	mov	r0, #1
	bl	__FieldMove
	bl	__Func_8097174
	mov	r1, #0x90
	mov	r2, #0xb8
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0x58
	mov	r2, #0xb8
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0x58
	mov	r2, #0xc8
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0x48
	mov	r2, #0xc8
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r2, #0x90
	mov	r1, #0x48
	lsl	r2, #1
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r2, #0x90
	mov	r1, #0x58
	lsl	r2, #1
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20095bc

