	.include "macros.inc"

.thumb_func_start OvlFunc_899_200afd4
	push	{r5, r6, lr}
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r5, [r0, #0x50]
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
	mov	r2, #0xc4
	lsl	r2, #17
	lsl	r1, #18
	mov	r0, #0xc
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	mov	r1, #9
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #9
	bl	__MapActor_SetAnim
	mov	r1, #9
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r3, [r5, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r5, #9]
	ldr	r5, =gScript_899__0200d17c
	mov	r0, #0xa
	mov	r1, r5
	bl	__MapActor_SetBehavior
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
	mov	r1, #0xc2
	mov	r2, #0xdc
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
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xb0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r6, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r6]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	bl	__Func_8093530
	bl	__Func_800fe9c
	bl	OvlFunc_899_200c5cc
	mov	r1, r5
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x12e4
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xca
	mov	r2, #0xe4
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc6
	mov	r2, #0xd8
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xca
	mov	r2, #0xcc
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xca
	mov	r2, #0xd8
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xc0
	mov	r2, #0xcc
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x28
	mov	r0, #2
	mov	r1, #8
	bl	OvlFunc_899_200c60c
	mov	r0, #8
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r1, #0xba
	mov	r2, #0xcc
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0xb
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0xb
	bl	OvlFunc_899_200c60c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xc
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r0, #0xc
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0
	mov	r1, #1
	bl	OvlFunc_899_200c624
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_899_200c658
	bl	__Func_8097adc
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #2
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0xa
	bl	OvlFunc_899_200c60c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L33e4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #2
	bl	OvlFunc_899_200c60c
	bl	OvlFunc_899_200c684
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	b	.L343a

	.pool_aligned

.L33e4:
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	mov	r1, #0x81
	add	r3, #1
	strh	r3, [r2]
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #2
	bl	OvlFunc_899_200c60c
	bl	OvlFunc_899_200c684
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
.L343a:
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r1, #4
	mov	r0, #2
	bl	OvlFunc_899_200c63c
	ldr	r0, =0x12f2
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r1, #0xca
	mov	r2, #0xcc
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #8
	bl	OvlFunc_899_200c60c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xd
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xe
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xba
	mov	r2, #0xcc
	mov	r0, #9
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0xcc
	mov	r0, #9
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #9
	mov	r1, #0xa
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r1, #0xba
	mov	r2, #0xcc
	mov	r0, #0xd
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0xcc
	mov	r0, #0xd
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xba
	mov	r2, #0xcc
	mov	r0, #0xe
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc4
	mov	r2, #0xc8
	mov	r0, #0xe
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xc2
	mov	r2, #0xd4
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0xd
	bl	__Func_80921c4
	mov	r0, #0xe
	bl	__MapActor_WaitMovement
	mov	r0, #0xd
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0xa
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #9
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0xc
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0xd
	bl	OvlFunc_899_200c624
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #9
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0xe
	mov	r2, #0x14
	bl	OvlFunc_899_200c624
	mov	r0, #9
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_899_200c60c
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r2, #0x14
	mov	r0, #0xd
	mov	r1, #0xe
	bl	OvlFunc_899_200c624
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc6
	mov	r2, #0xc4
	mov	r0, #0xe
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xc4
	mov	r2, #0xc8
	mov	r0, #0xd
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_809280c
	mov	r0, #0xe
	bl	__MapActor_WaitMovement
	mov	r2, #0x14
	mov	r0, #0xe
	mov	r1, #0xb
	bl	OvlFunc_899_200c60c
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #0xe
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xe
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #0xd
	mov	r1, #0
	bl	OvlFunc_899_200c624
	mov	r0, #0xd
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0x32
	bl	OvlFunc_899_200c63c
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	str	r3, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200afd4

.thumb_func_start OvlFunc_899_200b6f8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r1, =iwram_3001ebc
	ldr	r0, =0x855
	mov	r10, r1
	ldr	r7, [r1]
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0xda
	strb	r3, [r0]
	lsl	r1, #2
	mov	r0, #0xf
	ldr	r2, =0x1a9
	bl	__Func_8092158
	mov	r1, #0xda
	mov	r0, #0x10
	lsl	r1, #2
	ldr	r2, =0x199
	bl	__Func_8092158
	mov	r1, #0xda
	mov	r0, #0x11
	lsl	r1, #2
	ldr	r2, =0x179
	bl	__Func_8092158
	mov	r1, #0xc2
	mov	r2, #0xc4
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc6
	mov	r2, #0xc4
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0xc4
	lsl	r2, #17
	mov	r0, #0xc
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xc0
	mov	r2, #0xcc
	mov	r0, #0xd
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0xd4
	mov	r0, #0xe
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc4
	mov	r2, #0xd4
	mov	r0, #9
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_8092158
	mov	r1, #0xca
	mov	r2, #0xcc
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #8
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc6
	mov	r2, #0xdc
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0xdc
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc2
	mov	r2, #0xdc
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r3, r10
	ldr	r2, [r3]
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r3, #0x1e
	str	r3, [r2, r1]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r3
	add	r3, #0x41
	str	r3, [r2]
	mov	r9, r1
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	ldr	r6, =0x12fc
	mov	r0, r6
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xd
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xcc
	mov	r0, #0xd
	ldr	r1, =0x2ea
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xb0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r5, =gScript_899__0200d354
	mov	r0, #0xb
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #0x23
	bl	__CutsceneWait
	ldr	r1, =gScript_899__0200d2fc
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xd
	bl	__MapActor_SetPos
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xe
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc4
	mov	r2, #0xcc
	mov	r0, #9
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc0
	mov	r2, #0xcc
	mov	r0, #0xe
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0xe
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0xe
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x32
	bl	OvlFunc_899_200c624
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0x32
	bl	OvlFunc_899_200c624
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #9
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0x32
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	ldr	r1, =gScript_899__0200d3ac
	mov	r0, #0xe
	bl	__MapActor_SetBehavior
	mov	r0, #0x32
	bl	__CutsceneWait
	ldr	r1, =gScript_899__0200d444
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc6
	mov	r0, #1
	lsl	r1, #2
	mov	r2, r9
	bl	__Func_80921c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xc6
	mov	r2, #0xcc
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xca
	mov	r0, #1
	lsl	r1, #2
	mov	r2, r9
	bl	__Func_80921c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #9
	mov	r2, #0x3c
	bl	OvlFunc_899_200c60c
	mov	r0, #9
	mov	r1, #0xe
	mov	r2, #0x28
	bl	OvlFunc_899_200c60c
	mov	r0, #9
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x14
	b	.L3b30

	.pool_aligned

.L3b30:
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x7c
	bl	__PlaySound
	mov	r0, #0xf
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r1, #0xda
	mov	r2, #0xd4
	lsl	r2, #17
	mov	r0, #0x12
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x12
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #8
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_809228c
	mov	r0, #0x12
	bl	__MapActor_WaitMovement
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	add	r0, r6, #5
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0xf
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, r10
	mov	r3, #0xec
	ldr	r2, [r1]
	lsl	r3, #1
	mov	r8, r3
	add	r2, r8
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xe
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x28
	bl	OvlFunc_899_200c624
	mov	r0, #9
	mov	r1, #0xe
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xe
	mov	r2, #0x28
	bl	OvlFunc_899_200c60c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x7c
	bl	__PlaySound
	mov	r1, #4
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r5, .L3c6c	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_8092b08
	mov	r1, #0xda
	mov	r2, #0xcc
	mov	r0, #0x13
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #8
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_809228c
	mov	r0, #0x13
	bl	__MapActor_WaitMovement
	mov	r1, #2
	mov	r0, #0x13
	b	.L3c78

	.align	2, 0
.L3c6c:
	.word	0
	.pool

.L3c78:
	bl	__Func_80925cc
	add	r6, #8
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r6
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0x10
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, r10
	ldr	r2, [r1]
	add	r2, r8
	ldrh	r3, [r2]
	mov	r1, #0x81
	add	r3, #1
	strh	r3, [r2]
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #3
	mov	r2, #0x32
	bl	OvlFunc_899_200c63c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r0, #9
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xe
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xd6
	mov	r2, #0xbc
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0xe
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xe
	mov	r1, #9
	bl	OvlFunc_899_200c60c
	mov	r0, #0xe
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #9
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0xe
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r0, #9
	mov	r1, #2
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #9
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #2
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r2, #0x1e
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #9
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #3
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #0
	mov	r1, #1
	bl	OvlFunc_899_200c624
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #4
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc8
	mov	r2, #0xcc
	lsl	r2, #1
	mov	r0, #2
	lsl	r1, #2
	bl	__Func_80921c4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #9
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0x28
	bl	OvlFunc_899_200c5f4
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xd2
	mov	r2, #0xd4
	mov	r0, #9
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_899_200c624
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #9
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0xe
	bl	OvlFunc_899_200c624
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xd6
	mov	r2, #0xcc
	lsl	r2, #1
	mov	r0, #0xe
	lsl	r1, #2
	bl	__Func_80921c4
	ldr	r5, =gScript_899__0200d4c8
	mov	r0, #9
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xe
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, #0xc6
	mov	r0, #1
	lsl	r1, #2
	mov	r2, r9
	bl	__Func_809218c
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc2
	mov	r2, #0xd8
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #9
	bl	__MapActor_WaitScript
	mov	r1, #9
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #24
	mov	r1, #0x80
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	mov	r2, #0
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xca
	mov	r2, #0xdc
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x32
	bl	OvlFunc_899_200c624
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #9
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r0, #9
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r1, #0xba
	mov	r2, #0xcc
	mov	r0, #9
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xba
	mov	r2, #0xcc
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0xe
	bl	__Func_809218c
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r0, #0xe
	bl	__MapActor_WaitMovement
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xc6
	mov	r2, #0xcc
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x1e
	bl	OvlFunc_899_200c624
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #2
	bl	OvlFunc_899_200c60c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x28
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0x28
	mov	r0, #0
	mov	r1, #1
	bl	OvlFunc_899_200c624
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #2
	bl	OvlFunc_899_200c60c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x28
	bl	OvlFunc_899_200c5f4
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L4334
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #4
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	b	.L4334

	.pool_aligned

.L4334:
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc8
	mov	r2, #0xe4
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xd6
	mov	r2, #0xe4
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xd6
	mov	r2, #0xbc
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x41
	mov	r1, #0x11
	mov	r0, #2
	bl	__Func_808e078
	mov	r6, r0
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r5, =0x1324
	mov	r1, #1
	mov	r0, r5
	bl	__Func_801776c
	mov	r0, r6
	bl	__DeleteActor
	mov	r1, #2
	mov	r0, #0x11
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r1, #0xd6
	mov	r2, #0xe4
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc8
	mov	r2, #0xe4
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc2
	mov	r2, #0xd4
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	add	r5, #1
	mov	r2, #0x14
	mov	r1, #3
	mov	r0, #2
	bl	OvlFunc_899_200c63c
	mov	r0, r5
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0xec
	lsl	r2, #1
	add	r5, r7, r2
	mov	r3, #0
	ldrsh	r6, [r5, r3]
	bl	OvlFunc_899_200af84
	cmp	r0, #0
	beq	.L44a2
	ldr	r0, =0x132a
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	bl	OvlFunc_899_200af98
.L44a2:
	mov	r0, #2
	bl	__Func_8091890
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x32
	strh	r6, [r5]
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc2
	mov	r2, #0xcc
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xba
	mov	r2, #0xcc
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0
	mov	r1, #1
	bl	OvlFunc_899_200c624
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L4534
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L4534:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, =0x209
	add	r3, r1
	str	r2, [r3]
	bl	__CutsceneEnd
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200b6f8

