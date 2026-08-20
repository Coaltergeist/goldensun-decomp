	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200ab7c
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xc4
	mov	r2, #0xfb
	lsl	r1, #16
	lsl	r2, #17
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #8
	mov	r1, #0xb8
	mov	r2, #0x83
	strh	r3, [r0, #6]
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r5, #0xb0
	lsl	r5, #8
	strh	r5, [r0, #6]
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_8092b08
	mov	r1, #0xb8
	mov	r2, #0x9e
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	strh	r5, [r0, #6]
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #4
	mov	r2, #0xa
	bl	__MapActor_Jump
	mov	r2, #0x14
	mov	r1, #6
	mov	r0, #0x16
	bl	__MapActor_Jump
	ldr	r0, =0x1ee5
	bl	__MessageID
	mov	r0, #0x16
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0x15
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0x15
	mov	r1, #0xb4
	ldr	r2, =0x222
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x28
	mov	r1, r5
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x15
	bl	OvlFunc_943_200b9ec
	mov	r0, #0xf
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200ab7c

