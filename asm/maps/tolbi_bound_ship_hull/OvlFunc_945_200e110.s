	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200e110
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r8, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r6, r0
	mov	r0, #2
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r5, r0
	mov	r0, #3
	bl	OvlFunc_945_200cfa8
	mov	r10, r0
	bl	__CutsceneStart
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xec
	mov	r3, #0xa0
	lsl	r1, #1
	lsl	r3, #7
	mov	r0, #8
	mov	r2, #0x90
	bl	OvlFunc_945_200c890
	mov	r3, #0xcc
	lsl	r3, #1
	mov	r9, r3
	mov	r3, #0xc0
	mov	r1, r9
	mov	r0, #0x1b
	lsl	r3, #6
	mov	r2, #0x8e
	bl	OvlFunc_945_200c890
	ldr	r3, =iwram_3001ebc
	mov	r7, #0xe0
	ldr	r2, [r3]
	mov	r11, r3
	ldr	r3, =0x201
	lsl	r7, #1
	str	r3, [r2, r7]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	ldr	r0, =0x1f78
	bl	__MessageID
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r8
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r6
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r10
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, r6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r6
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xeb
	mov	r0, r8
	lsl	r1, #1
	mov	r2, #0xac
	bl	__MapActor_TravelToAnim
	mov	r1, #0xcd
	mov	r0, r6
	lsl	r1, #1
	mov	r2, #0xac
	bl	__MapActor_TravelToAnim
	mov	r1, #0xeb
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xcc
	bl	__MapActor_TravelToAnim
	mov	r1, #0xcd
	mov	r2, #0xcc
	mov	r0, r10
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, r8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r6
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xd0
	mov	r0, r6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, r8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, r5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, r6
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, r10
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, r6
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r5, #0x80
	mov	r0, r10
	mov	r1, #3
	bl	__MapActor_DoAnim
	lsl	r5, #8
	mov	r2, #0
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_945_200c880
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1b
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #0x1b
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, r9
	mov	r0, #0x1b
	mov	r2, #0x84
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xde
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, r11
	ldr	r2, [r3]
	ldr	r3, =0x202
	str	r3, [r2, r7]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x92c
	ldr	r1, =0x935
	bl	OvlFunc_945_200e3ac
	mov	r1, #0x99
	lsl	r1, #4
	ldr	r0, =0x917
	bl	OvlFunc_945_200e3ac
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__ClearFlag
	mov	r0, #0xa
	bl	__Func_8091e9c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200e110

