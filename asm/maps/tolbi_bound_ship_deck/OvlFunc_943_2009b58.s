	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2009b58
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xe8
	mov	r2, #0x9f
	lsl	r2, #18
	mov	r0, #0
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #0
	bl	__SetCameraTarget
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x16
	bl	__MapActor_SetIdle
	mov	r0, #0x15
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r1, #0xe8
	strh	r3, [r0, #6]
	lsl	r1, #16
	ldr	r2, =0x28a0000
	mov	r0, #0x17
	bl	__MapActor_SetPos
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r3, #0xb0
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x14
	mov	r1, #0x17
	bl	OvlFunc_943_2009c14
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009b58

