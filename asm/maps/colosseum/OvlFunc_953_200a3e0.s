	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_953_200a3e0
	push	{lr}
	mov	r0, #5
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm953_23fe
	ldr	r0, =0x16d
	bl	__SetFlag
	mov	r0, #5
	bl	__Func_8079664
	mov	r0, #3
	bl	__AddPartyMember
.Lm953_23fe:
	bl	__CutsceneStart
	mov	r1, #0xb2
	mov	r2, #0x93
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0xb
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xb
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r0, #0xb
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0xcccc
	ldr	r1, =0x19999
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #0
	strh	r3, [r0, #6]
	bl	__MapTransitionIn
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0xc3
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r1, #0xcb
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelToWait
	mov	r1, #0xdc
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r1, #0xe4
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelToWait
	mov	r1, #0xf5
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r1, #0xfd
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelTo
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x90f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm953_24be
	mov	r0, #0x1f
	bl	__Func_8091e9c
	b	.Lm953_24c4
.Lm953_24be:
	mov	r0, #0x41
	bl	__Func_8091e9c
.Lm953_24c4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200a3e0

