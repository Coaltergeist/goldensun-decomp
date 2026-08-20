	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200ba0c
	push	{r5, r6, lr}
	bl	__CutsceneStart
	ldr	r2, =.Lm943_5b50
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r2]
	ldr	r3, =0xffff8000
	ldr	r2, =.Lm943_5b60
	ldr	r0, =.Lm943_5160
	str	r3, [r2]
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xb6
	lsl	r1, #16
	ldr	r2, =0x26a0000
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r1, #0xda
	mov	r2, #0x81
	strh	r3, [r0, #6]
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r5, #0xb0
	lsl	r5, #8
	mov	r1, #0xcc
	strh	r5, [r0, #6]
	lsl	r1, #16
	ldr	r2, =0x20e0000
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r2, #0
	strh	r5, [r0, #6]
	mov	r1, #0
	mov	r0, #0x17
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
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x15
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x85
	mov	r0, #0x15
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x28
	mov	r1, r5
	mov	r0, #0x15
	bl	__Func_8092adc
	ldr	r0, =0x1f23
	bl	__MessageID
	mov	r0, #0x15
	bl	OvlFunc_943_200b9ec
	ldr	r6, =0x6014
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r1, #0xd0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #0x16
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x16
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xfa
	mov	r0, #0x15
	mov	r1, #0xc2
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, r5
	mov	r0, #0x15
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x16
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	mov	r1, #0xc0
	ldr	r2, =0x206
	bl	__MapActor_TravelToAnimWait
	mov	r1, r5
	mov	r0, #0x16
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xfe
	lsl	r2, #1
	mov	r0, #0x14
	mov	r1, #0xd2
	bl	__MapActor_TravelToAnimWait
	mov	r1, r5
	mov	r0, #0x14
	bl	OvlFunc_943_200ba00
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	ldr	r0, =0x5015
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x16
	bl	OvlFunc_943_200ba00
	ldr	r0, =0x9016
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x14
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	ldr	r0, =0xa014
	bl	OvlFunc_943_200b9ec
	mov	r2, #0x86
	mov	r0, #0x14
	mov	r1, #0xcc
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, r5
	mov	r0, #0x16
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x89
	mov	r0, #0x14
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x94
	mov	r0, #0x14
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xa6
	mov	r1, #0xb6
	lsl	r2, #2
	mov	r0, #0x14
	bl	__MapActor_TravelToAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x10
	bl	__Func_8091e9c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200ba0c

