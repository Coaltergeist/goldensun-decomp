	.include "macros.inc"

.thumb_func_start OvlFunc_899_200abf0
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #0xc6
	mov	r2, #0xd0
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc8
	mov	r2, #0xc8
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc2
	mov	r2, #0xd0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xb
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc4
	mov	r2, #0xe0
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0xd8
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc2
	mov	r2, #0xd8
	lsl	r2, #17
	mov	r0, #2
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #0x13
	bl	__MapActor_SetAnim
	mov	r1, #0x13
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #2
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xb0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	mov	r1, #0
	mov	r0, #0
	bl	__SetCameraTarget
	bl	__Func_8093530
	bl	__Func_800fe9c
	bl	OvlFunc_899_200c5cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r1, #3
	mov	r0, #0xa
	bl	OvlFunc_899_200c63c
	ldr	r0, =0x12dd
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r0, #8
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xca
	mov	r2, #0xe4
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xc6
	mov	r2, #0xe4
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x1e
	mov	r0, #0xc
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r0, #0xc
	mov	r1, #0x3c
	bl	OvlFunc_899_200c5f4
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200abf0

.thumb_func_start OvlFunc_899_200adb4
	push	{r5, r6, lr}
	mov	r1, #0xc6
	mov	r2, #0xd0
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc8
	mov	r2, #0xc8
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc2
	mov	r2, #0xd0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc6
	mov	r2, #0xdc
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0xd8
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc6
	mov	r2, #0xe4
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	ldr	r5, =iwram_3001ebc
	ldr	r3, =0x209
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	mov	r1, #0
	str	r3, [r2, r6]
	mov	r0, #0
	bl	__SetCameraTarget
	bl	__Func_8093530
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r5]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x20
	str	r2, [r3]
	bl	OvlFunc_899_200c5cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0x12e1
	bl	__MessageID
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #0xb
	bl	OvlFunc_899_200c624
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #0xc
	bl	OvlFunc_899_200c624
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	ldr	r2, [r5]
	mov	r3, #0x80
	ldr	r5, =0x15
	lsl	r3, #2
	str	r3, [r2, r6]
	mov	r0, r5
	mov	r1, #0x11
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #0x10
	bl	__Func_8091fa8
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0xc
	mov	r1, #5
	bl	__Func_8091eb0
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200adb4

