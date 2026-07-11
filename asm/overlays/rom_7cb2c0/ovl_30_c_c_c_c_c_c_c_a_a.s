	.include "macros.inc"

.thumb_func_start OvlFunc_945_200d068
	push	{r5, r6, lr}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r6, r0
	bl	__CutsceneStart
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x19
	mov	r1, #2
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	bl	OvlFunc_945_200b7b4
	mov	r2, #0xc
	mov	r1, r6
	mov	r0, #0x13
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xa
	mov	r1, #6
	bl	__MapActor_SetAnim
	ldr	r5, =gScript_945__0200e840
	mov	r0, r6
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xb
	bl	__DeleteFieldActor
	mov	r1, r5
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	ldr	r5, =gScript_945__0200e8e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x25
	mov	r1, r5
	bl	__MapActor_SetBehavior
	bl	OvlFunc_945_200d0e4
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d068

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
	bl	__Func_8092158
	mov	r1, #0xcc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x98
	bl	__Func_8092158
	mov	r1, #0xd8
	mov	r2, #0xa6
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8092158
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
	beq	.L516a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L516a:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L517e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L517e:
	mov	r0, #1
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L5192
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.L5192:
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
	bl	__Func_809218c
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__Func_809218c
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
	bl	__Func_80921c4
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

.thumb_func_start OvlFunc_945_200d2f4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r6, #0xde
	lsl	r6, #1
	mov	r2, #0x96
	mov	r1, r6
	lsl	r2, #1
	mov	r0, #0
	mov	r3, #0
	mov	r5, #0x9b
	bl	OvlFunc_945_200c890
	lsl	r5, #1
	mov	r1, #0xe5
	mov	r2, r5
	lsl	r1, #1
	mov	r0, #1
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r2, #0xa5
	mov	r1, r6
	lsl	r2, #1
	mov	r0, #2
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r2, #0xd8
	lsl	r2, #1
	mov	r9, r2
	mov	r0, #3
	mov	r2, r5
	mov	r1, r9
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r1, #0xdc
	mov	r3, #0x80
	lsl	r1, #1
	lsl	r3, #8
	mov	r0, #0x1b
	mov	r2, #0x86
	bl	OvlFunc_945_200c890
	mov	r1, #0xe3
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r2, #0xf8
	lsl	r1, #1
	mov	r0, #0xa
	mov	r8, r3
	mov	r5, #0xdc
	bl	OvlFunc_945_200c890
	mov	r6, #1
	mov	r0, #0xa
	mov	r1, #6
	bl	__MapActor_SetAnim
	lsl	r5, #17
	neg	r6, r6
	mov	r2, #0x9a
	ldr	r3, =0x1000001
	lsl	r2, #17
	mov	r1, r6
	mov	r0, r5
	bl	OvlFunc_945_200c8ac
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #1
	mov	r2, #0x14
	mov	r0, #2
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x1e6e
	bl	__MessageID
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r2, #0xc0
	lsl	r2, #8
	mov	r10, r2
	mov	r0, #1
	mov	r2, #0
	mov	r1, r10
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r2, #0xb0
	mov	r3, #1
	mov	r0, r5
	mov	r1, r6
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #0x1b
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x86
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x98
	bl	__Func_80921c4
	mov	r1, #0xd4
	mov	r2, #0xa4
	mov	r0, #0x1b
	lsl	r1, #1
	bl	__Func_80921c4
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r2, #0x96
	mov	r3, #1
	mov	r0, r5
	mov	r1, r6
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r1, #0xd4
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0xde
	bl	__Func_80921c4
	mov	r1, #0xd4
	mov	r2, #0x83
	mov	r0, #0x1b
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0x14
	mov	r0, #0x1b
	mov	r1, r8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x1b
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x3c
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #1
	mov	r2, #0x3c
	bl	OvlFunc_945_200c8e8
	mov	r2, #0x28
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x1b
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0x86
	mov	r0, #0x1b
	mov	r1, r9
	lsl	r2, #1
	bl	__Func_8092158
	mov	r1, #0xe2
	mov	r2, #0x86
	lsl	r2, #1
	mov	r0, #0x1b
	lsl	r1, #1
	bl	__Func_8092158
	mov	r0, #0x1b
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x1b
	bl	OvlFunc_945_200c880
	mov	r0, #0x1b
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, r10
	bl	OvlFunc_945_200c8e8
	mov	r1, #4
	mov	r0, #0x1b
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x50
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x1b
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x1b
	bl	OvlFunc_945_200c880
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L556e
	mov	r0, #0x1b
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	b	.L55ac
.L556e:
	mov	r1, #4
	mov	r0, #0x1b
	bl	__MapActor_DoAnim
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #2
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x1b
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
.L55ac:
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	ldr	r5, =gScript_945__0200e7f0
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0xb0
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xd4
	mov	r2, #0x88
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd4
	lsl	r1, #1
	mov	r2, #0xa4
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x301
	bl	__ClearFlag
	ldr	r0, =0x927
	bl	__ClearFlag
	mov	r0, #4
	bl	__Func_8091e9c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d2f4

