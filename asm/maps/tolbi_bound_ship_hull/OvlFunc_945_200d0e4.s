	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200d0e4
	push	{r5, r6, r7, lr}
	mov	r6, #0xdc
	mov	r7, #1
	lsl	r6, #17
	neg	r7, r7
	mov	r2, #0xb0
	ldr	r3, =0x1000001
	lsl	r2, #16
	mov	r0, r6
	mov	r1, r7
	bl	OvlFunc_945_200c8ac
	mov	r2, #0x86
	mov	r0, #0
	mov	r1, r6
	lsl	r2, #16
	bl	__MapActor_SetPos
	bl	__MapTransitionIn
	ldr	r2, =0xcccc
	mov	r0, #0
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xcc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x86
	bl	__MapActor_TravelToWait
	mov	r1, #0xcc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x98
	bl	__MapActor_TravelToWait
	mov	r1, #0xd8
	mov	r2, #0xa6
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_TravelToWait
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_516a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm945_516a:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_517e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm945_517e:
	mov	r0, #1
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_5192
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lm945_5192:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #2
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xd4
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x98
	bl	__MapActor_TravelToAnim
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__MapActor_TravelToAnim
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xe5
	mov	r2, #0x98
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0x28
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_8093304
	ldr	r5, =0x1e46
	mov	r1, #1
	mov	r0, r5
	mov	r2, #0xa
	bl	__Func_8019aa0
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x28
	bl	OvlFunc_945_200c8e8
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x39999
	ldr	r1, =0x7333
	bl	__Func_80933d4
	mov	r2, #0xa0
	ldr	r3, =0x10000014
	lsl	r2, #17
	mov	r0, r6
	mov	r1, r7
	bl	OvlFunc_945_200c8ac
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #8
	add	r5, #1
	bl	OvlFunc_945_200c880
	mov	r0, r5
	bl	__MessageID
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x86
	mov	r3, #0x80
	lsl	r3, #21
	lsl	r2, #16
	mov	r0, r6
	mov	r1, r7
	bl	OvlFunc_945_200c8ac
	ldr	r5, =gScript_945__0200e7c8
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x301
	bl	__SetFlag
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x12f
	bl	__ClearFlag
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d0e4

