	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_953_2009298
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #0xf7
	bl	__PlaySound
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x11
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #0x12
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	ldr	r1, =iwram_3001ebc
	mov	r3, #0xe0
	lsl	r3, #1
	ldr	r2, [r1]
	mov	r10, r3
	mov	r8, r1
	add	r3, #0x40
	mov	r1, r10
	str	r3, [r2, r1]
	sub	r3, #0x38
	mov	r9, r3
	mov	r1, r9
	mov	r3, #0x20
	str	r3, [r2, r1]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x10
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xe2
	lsl	r2, #2
	mov	r1, #0xa4
	mov	r0, #0x10
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #9
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xe6
	mov	r0, #0x10
	mov	r1, #0xa4
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xe6
	mov	r0, #0x10
	mov	r1, #0xb9
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xe5
	lsl	r2, #2
	mov	r0, #0x10
	mov	r1, #0xb9
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xb
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r1, =gScript_953__0200af88
	mov	r0, #0x10
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x10
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0x11
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x12
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r6, #0xc0
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r6, #6
	mov	r0, #0x11
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, r6
	mov	r0, #0x12
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x10
	bl	__MapActor_SetIdle
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r5, #0x80
	mov	r3, #0xd0
	lsl	r3, #8
	lsl	r5, #9
	strh	r3, [r0, #6]
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #5
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r1, #8
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0x11
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #0x10
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	mov	r2, #0xe5
	mov	r0, #0x10
	mov	r1, #0xa2
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	ldr	r2, =0x37a
	mov	r0, #0x10
	mov	r1, #0xa2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x13
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	mov	r1, #0xb8
	ldr	r2, =0x35f
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xc7
	mov	r0, #0x10
	mov	r1, #0xb8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r3, =0x201
	mov	r1, r10
	str	r3, [r2, r1]
	mov	r1, r9
	mov	r3, #0x10
	str	r3, [r2, r1]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	mov	r1, r10
	str	r3, [r2, r1]
	mov	r0, #0x45
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2009298

