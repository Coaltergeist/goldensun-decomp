	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200a274
	push	{r5, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r5, #6]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =0x15680000
	ldr	r2, =0x8380000
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x8d
	bl	__PlaySound
	ldr	r2, =0x6666
	mov	r0, #0xa
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #2
	bl	__MapActor_SetAnim
	ldr	r2, =0x858
	mov	r0, #0xa
	ldr	r1, =0x156d
	bl	__MapActor_TravelToWait
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x15b80000
	neg	r1, r1
	ldr	r2, =0x8580000
	bl	__Func_80933f8
	mov	r0, #0xa
	ldr	r1, =0x159e
	ldr	r2, =0x858
	bl	__MapActor_TravelToWait
	mov	r0, #0xa
	ldr	r1, =0x15a8
	ldr	r2, =0x86e
	bl	__MapActor_TravelToWait
	ldr	r2, =0x878
	mov	r0, #0xa
	ldr	r1, =0x15e8
	bl	__MapActor_TravelToWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =0x15d80000
	ldr	r2, =0x8780000
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x15c8
	ldr	r2, =0x878
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x28
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0xa
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	ldr	r1, =0x15f8
	ldr	r2, =0x878
	bl	__MapActor_TravelToWait
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x15f8
	ldr	r2, =0x838
	bl	__MapActor_TravelToWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x15bd
	ldr	r2, =0x838
	bl	__MapActor_TravelToWait
	mov	r0, #0xa
	ldr	r1, =0x15b8
	ldr	r2, =0x853
	bl	__MapActor_TravelToWait
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x1572
	ldr	r2, =0x858
	bl	__MapActor_TravelToWait
	mov	r0, #0xa
	ldr	r1, =0x1568
	ldr	r2, =0x838
	bl	__MapActor_TravelToWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__MapActor_SetPos
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x15d80000
	neg	r1, r1
	ldr	r2, =0x8580000
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r1, =0x15d8
	ldr	r2, =0x858
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a274

