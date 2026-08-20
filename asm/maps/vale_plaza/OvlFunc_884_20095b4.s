	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_884_20095b4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x11
	bl	__PlaySound
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x90
	mov	r2, #0xaf
	mov	r3, #0
	lsl	r1, #16
	lsl	r2, #17
	lsl	r0, #15
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xc0
	mov	r2, #0xad
	mov	r0, #0
	lsl	r1, #14
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x9c
	mov	r2, #0xb3
	mov	r0, #0x19
	lsl	r1, #15
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xce
	mov	r2, #0xab
	mov	r0, #0x17
	lsl	r1, #15
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xe0
	mov	r2, #0xb4
	mov	r0, #0x18
	lsl	r1, #15
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0x17
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x18
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x10
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #7
	mov	r0, #0x19
	bl	__MapActor_SetAnim
	mov	r0, #0x19
	bl	__MapActor_GetActor
	ldr	r3, =0x1555
	ldr	r2, [r0, #0x50]
	mov	r0, #0x19
	strh	r3, [r2, #0x1e]
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r2, =iwram_3001ebc
	mov	r8, r2
	ldr	r3, [r2]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__Func_8095268
	bl	__WaitMapTransition
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0x17
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0x18
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x17
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x18
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r0, #0x17
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x18
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_8092b08
	ldr	r2, =0x13333
	ldr	r1, =0x26666
	mov	r0, #0x17
	bl	__MapActor_SetSpeed
	mov	r0, #0x17
	bl	__MapActor_GetActor
	ldr	r6, =0x28f
	mov	r5, #0x80
	lsl	r5, #8
	str	r6, [r0, #0x44]
	str	r5, [r0, #0x48]
	ldr	r1, =gScript_884__0200aa48
	mov	r0, #0x17
	bl	__MapActor_SetBehavior
	mov	r0, #0x18
	bl	__CutsceneWait
	ldr	r2, =0x13333
	ldr	r1, =0x26666
	mov	r0, #0x18
	bl	__MapActor_SetSpeed
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r1, =gScript_884__0200ab2c
	str	r6, [r0, #0x44]
	str	r5, [r0, #0x48]
	mov	r0, #0x18
	bl	__MapActor_RunScript
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	__Func_8095214
	bl	__Func_8095240
	mov	r0, #0x14
	bl	__WaitFrames
	bl	__Func_8095240
	mov	r0, #0x3c
	bl	__WaitFrames
	bl	__Func_8095240
	mov	r0, #0x14
	bl	__WaitFrames
	bl	__Func_8095214
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x78
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x834
	bl	__ClearFlag
	mov	r0, #9
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20095b4

