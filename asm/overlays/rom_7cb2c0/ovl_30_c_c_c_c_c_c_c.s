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
	bl	__Func_8092924
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
	bl	__Func_8091750
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
	bl	__Func_8092064
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
	bl	__Func_8092064
	mov	r1, #0xd4
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x98
	bl	__Func_809218c
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
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
	bl	__Func_8092064
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
	bl	__Func_8092b94
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
	bl	__Func_8091e20
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
	bl	__Func_8092b94
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
	bl	__Func_8092064
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
	bl	__Func_8092548
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
	bl	__Func_8092548
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
	bl	__Func_8092548
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
	bl	__Func_8092548
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	b	.L55ac
.L556e:
	mov	r1, #4
	mov	r0, #0x1b
	bl	__Func_8092548
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
	bl	__Func_8092064
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

.thumb_func_start OvlFunc_945_200d684
	push	{r5, lr}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x19
	bl	OvlFunc_945_200c8e8
	mov	r0, #0
	bl	OvlFunc_945_200b7d8
	mov	r1, r5
	mov	r0, #0x13
	mov	r2, #0xc
	bl	OvlFunc_945_200c8e8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__MapActor_SetPos
	bl	OvlFunc_945_200d2f4
	ldr	r0, =0x929
	bl	__SetFlag
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d684

.thumb_func_start OvlFunc_945_200d6dc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r6, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r8, r0
	bl	__CutsceneStart
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x19
	mov	r1, #3
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	bl	OvlFunc_945_200b7b4
	mov	r2, r8
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
	bl	__Func_8092924
	mov	r1, r5
	mov	r0, r8
	bl	__MapActor_SetBehavior
	mov	r0, #0xc
	bl	__Func_8092924
	ldr	r5, =gScript_945__0200e8e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x25
	bl	__MapActor_SetBehavior
	mov	r0, #0x24
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x25
	mov	r1, #3
	bl	__Func_8092950
	bl	OvlFunc_945_200d0e4
	bl	__Func_8091750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d6dc

.thumb_func_start OvlFunc_945_200d780
	push	{r5, r6, lr}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r6, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x19
	bl	OvlFunc_945_200c8e8
	mov	r0, #0
	bl	OvlFunc_945_200b7d8
	mov	r1, r6
	mov	r2, r5
	mov	r0, #0x13
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_SetPos
	bl	OvlFunc_945_200d2f4
	ldr	r0, =0x92a
	bl	__SetFlag
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d780

.thumb_func_start OvlFunc_945_200d7ec
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r6, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r8, r0
	mov	r0, #2
	bl	OvlFunc_945_200cfa8
	mov	r10, r0
	bl	__CutsceneStart
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xec
	mov	r2, #0x98
	lsl	r2, #16
	mov	r0, #8
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xdc
	mov	r2, #0x86
	lsl	r2, #16
	mov	r0, #0x1b
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, #0xf
	mov	r0, #0x1b
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r5, #1
	mov	r0, #0x10
	bl	OvlFunc_945_200c670
	neg	r5, r5
	mov	r0, #0xdb
	mov	r2, #0xae
	ldr	r3, =0x1000001
	mov	r1, r5
	lsl	r0, #17
	lsl	r2, #16
	bl	OvlFunc_945_200c8ac
	mov	r1, #1
	mov	r2, #0x14
	mov	r0, #8
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x13
	bl	__PlaySound
	mov	r0, #0xb5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r5
	ldr	r2, =0xe666
	mov	r0, r5
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0xb5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, =0xe666
	mov	r1, r5
	mov	r0, r5
	bl	__Func_8012330
	mov	r0, #0x3f
	bl	__PlaySound
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__SetFlag
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	mov	r5, #0xc0
	bl	__MapActor_Surprise
	lsl	r5, #7
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #3
	bl	OvlFunc_945_200c880
	ldr	r0, =0x1ec1
	bl	__Func_8092b94
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #3
	bl	__Func_8093040
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
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
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #2
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #2
	bl	OvlFunc_945_200c86c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Func_800c528
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1b
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xd7
	mov	r2, #0x86
	mov	r0, #0x1b
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0x1b
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #0x1b
	bl	__Func_809259c
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r6
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, r8
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, r10
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x81
	mov	r0, r6
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, r8
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, r10
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xd
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, r6
	mov	r0, #0xc
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, r8
	mov	r0, #0xc
	mov	r2, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, r10
	mov	r0, #0xc
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xb
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
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
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x1b
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0x1b
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xdc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x86
	mov	r5, #0x80
	bl	__Func_80921c4
	lsl	r5, #8
	mov	r2, #0
	mov	r0, #0x1b
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r1, r5
	mov	r0, #1
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	OvlFunc_945_200c86c
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #3
	bl	OvlFunc_945_200c880
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #1
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #2
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #3
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r5, =gScript_945__0200e818
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	ldr	r0, =0x302
	bl	__SetFlag
	ldr	r2, =.L7f84
	mov	r3, #0
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_945_200dc48
	bl	__StartTask
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x17
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x1b
	bl	__Func_8092924
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r0, =0x927
	bl	__ClearFlag
	bl	__Func_8091750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d7ec

.thumb_func_start OvlFunc_945_200dc48
	push	{r5, lr}
	ldr	r5, =.L7f84
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L5c6a
	sub	r3, #1
	str	r3, [r5]
	cmp	r3, #0x46
	bne	.L5c94
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	b	.L5c94
.L5c6a:
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	cmp	r3, #0
	bne	.L5c94
	mov	r0, #0xb5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r3, #0x50
	str	r3, [r5]
.L5c94:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200dc48

.thumb_func_start OvlFunc_945_200dca4
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0xf
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xea
	mov	r2, #0x9a
	mov	r3, #0x80
	lsl	r3, #8
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #9
	bl	OvlFunc_945_200c890
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0x15
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200dca4

.thumb_func_start OvlFunc_945_200dd10
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r5, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r8, r0
	mov	r0, #2
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r10, r0
	mov	r0, #3
	bl	OvlFunc_945_200cfa8
	mov	r7, r0
	bl	__CutsceneStart
	bl	OvlFunc_945_200b7b4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xec
	mov	r2, #0x98
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xdc
	mov	r2, #0x86
	lsl	r2, #16
	mov	r0, #0x1b
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, #0xf
	mov	r0, #0x1b
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x10
	bl	OvlFunc_945_200c670
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0xdb
	mov	r1, #1
	mov	r2, #0xae
	ldr	r3, =0x1000001
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	OvlFunc_945_200c8ac
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Func_800c528
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1b
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x8e
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x1b
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x1b
	bl	__Func_809259c
	ldr	r0, =0x1f29
	bl	__Func_8092b94
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, r8
	mov	r2, #1
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, r10
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, r7
	mov	r2, #1
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xd0
	mov	r0, r5
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
	mov	r0, r7
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_8092adc
	ldr	r0, =0x934
	mov	r6, #0
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5e88
	mov	r6, #2
	b	.L5e9e
.L5e88:
	ldr	r0, =0x933
	bl	__GetFlag
	cmp	r0, #0
	bne	.L5e9c
	ldr	r0, =0x92f
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5e9e
.L5e9c:
	mov	r6, #1
.L5e9e:
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80925cc
	cmp	r6, #1
	bne	.L5eba
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	b	.L5ecc
.L5eba:
	cmp	r6, #2
	bne	.L5ece
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
.L5ecc:
	strh	r3, [r2]
.L5ece:
	mov	r1, #2
	mov	r0, r5
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	ldr	r0, =0x1f2d
	bl	__Func_8092b94
	mov	r1, #4
	mov	r0, #0x1b
	bl	__Func_8092548
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, r8
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, r10
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, r7
	bl	__MapActor_Emote
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r1, #0xde
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r0, #0x1b
	bl	__Func_8092924
	mov	r0, #0x28
	bl	__CutsceneWait
	cmp	r6, #0
	bne	.L5f78
	ldr	r0, =0x92c
	bl	__GetFlag
	cmp	r0, #0
	bne	.L5f62
	ldr	r0, =0x92d
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5f64
.L5f62:
	mov	r6, #3
.L5f64:
	cmp	r6, #0
	bne	.L5f78
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	b	.L5f9e
.L5f78:
	cmp	r6, #1
	bne	.L5f8c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	b	.L5f9e
.L5f8c:
	cmp	r6, #2
	bne	.L5fa0
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
.L5f9e:
	strh	r3, [r2]
.L5fa0:
	mov	r0, r5
	mov	r1, #0
	bl	OvlFunc_945_200c880
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r2, #8
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r6, =gScript_945__0200e904
	mov	r0, r5
	mov	r1, r6
	bl	__MapActor_RunScript
	mov	r1, #0xa0
	mov	r0, r8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, r10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, r7
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, r8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, r7
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, r7
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, r6
	mov	r0, r10
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r5, =gScript_945__0200e938
	mov	r0, r8
	mov	r1, r5
	bl	__MapActor_RunScript
	mov	r0, r8
	mov	r1, r6
	bl	__MapActor_SetBehavior
	mov	r0, r7
	mov	r1, r5
	bl	__MapActor_RunScript
	mov	r0, r7
	mov	r1, r6
	bl	__MapActor_RunScript
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
	bl	__Func_8092064
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
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x17
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x927
	bl	__ClearFlag
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__SetFlag
	ldr	r0, =0x12f
	bl	__ClearFlag
	bl	__Func_8091750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200dd10

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
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	ldr	r0, =0x1f78
	bl	__Func_8092b94
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
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r6
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xeb
	mov	r0, r8
	lsl	r1, #1
	mov	r2, #0xac
	bl	__Func_809218c
	mov	r1, #0xcd
	mov	r0, r6
	lsl	r1, #1
	mov	r2, #0xac
	bl	__Func_809218c
	mov	r1, #0xeb
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xcc
	bl	__Func_809218c
	mov	r1, #0xcd
	mov	r2, #0xcc
	mov	r0, r10
	lsl	r1, #1
	bl	__Func_80921c4
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
	bl	__Func_8092548
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
	bl	__Func_8092548
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
	bl	__Func_8092548
	mov	r0, #0x1b
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #0x1b
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, r9
	mov	r0, #0x1b
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r1, #0xde
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, r11
	ldr	r2, [r3]
	ldr	r3, =0x202
	str	r3, [r2, r7]
	bl	__MapTransitionOut
	bl	__Func_8091e20
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

.thumb_func_start OvlFunc_945_200e3ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r3, #0
	mov	r8, r0
	mov	r7, r1
	mov	r10, r3
	mov	r9, r3
	mov	r6, #0
	b	.L63ca
.L63c4:
	mov	r3, #1
	add	r10, r3
	add	r6, #1
.L63ca:
	cmp	r6, #8
	bhi	.L63e2
	mov	r3, r8
	add	r5, r3, r6
	mov	r0, r5
	bl	__GetFlag
	cmp	r0, #0
	beq	.L63c4
	mov	r0, r5
	bl	__ClearFlag
.L63e2:
	mov	r6, #0
	b	.L63ec
.L63e6:
	mov	r3, #1
	add	r9, r3
	add	r6, #1
.L63ec:
	cmp	r6, #8
	bhi	.L6402
	add	r5, r7, r6
	mov	r0, r5
	bl	__GetFlag
	cmp	r0, #0
	beq	.L63e6
	mov	r0, r5
	bl	__ClearFlag
.L6402:
	mov	r3, r10
	add	r0, r7, r3
	bl	__SetFlag
	mov	r0, r8
	add	r0, r9
	bl	__SetFlag
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200e3ac

	.section .data
	.global gScript_945__0200e6a8
	.global gScript_883__0200e6e4
	.global gScript_945__0200e6e4
	.global gScript_945__0200e738
	.global gScript_945__0200e840
	.global gScript_945__0200e8e4
	.global gScript_945__0200e958
	.global .L6968
	.global .L72a0
	.global .L7300
	.global .L7360
	.global .L73c0
	.global .L7f84
	.global .L6668
	.global .L6be0
	.global .L6bf8
	.global .L6c58
	.global .L6d48
	.global .L6d78
	.global .L6da8
	.global .L6eb0
	.global .L6fe8
	.global .L7420
	.global .L7444
	.global .L7570
	.global .L76fc
	.global .L781c
	.global .L7930
	.global .L7984
	.global .L79c0
	.global .L7b58
	.global .L7d44
	.global .L7edc
	.global .L696c
	.global .L6984

.L6668:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6668, (0x66a8-0x6668)
gScript_945__0200e6a8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x66a8, (0x66e4-0x66a8)
gScript_883__0200e6e4:
gScript_945__0200e6e4:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x66e4, (0x6738-0x66e4)
gScript_945__0200e738:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6738, (0x67c8-0x6738)
	.global gScript_945__0200e7c8
gScript_945__0200e7c8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x67c8, (0x67f0-0x67c8)
	.global gScript_945__0200e7f0
gScript_945__0200e7f0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x67f0, (0x6818-0x67f0)
	.global gScript_945__0200e818
gScript_945__0200e818:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6818, (0x6840-0x6818)
gScript_945__0200e840:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6840, (0x68e4-0x6840)
gScript_945__0200e8e4:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x68e4, (0x6904-0x68e4)
	.global gScript_945__0200e904
gScript_945__0200e904:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6904, (0x6938-0x6904)
	.global gScript_945__0200e938
gScript_945__0200e938:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6938, (0x6958-0x6938)
gScript_945__0200e958:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6958, (0x6968-0x6958)
.L6968:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6968, (0x696c-0x6968)
.L696c:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x696c, (0x6984-0x696c)
.L6984:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6984, (0x6b94-0x6984)
	.global gOvl_0200eb94
gOvl_0200eb94:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6b94, (0x6be0-0x6b94)
.L6be0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6be0, (0x6bf8-0x6be0)
.L6bf8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6bf8, (0x6c58-0x6bf8)
.L6c58:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6c58, (0x6d48-0x6c58)
.L6d48:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6d48, (0x6d78-0x6d48)
.L6d78:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6d78, (0x6da8-0x6d78)
.L6da8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6da8, (0x6eb0-0x6da8)
.L6eb0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6eb0, (0x6fe8-0x6eb0)
.L6fe8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6fe8, (0x72a0-0x6fe8)
.L72a0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x72a0, (0x7300-0x72a0)
.L7300:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7300, (0x7360-0x7300)
.L7360:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7360, (0x73c0-0x7360)
.L73c0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x73c0, (0x7420-0x73c0)
.L7420:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7420, (0x7444-0x7420)
.L7444:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7444, (0x7570-0x7444)
.L7570:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7570, (0x76fc-0x7570)
.L76fc:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x76fc, (0x781c-0x76fc)
.L781c:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x781c, (0x7930-0x781c)
.L7930:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7930, (0x7984-0x7930)
.L7984:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7984, (0x79c0-0x7984)
.L79c0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x79c0, (0x7b58-0x79c0)
.L7b58:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7b58, (0x7d44-0x7b58)
.L7d44:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7d44, (0x7edc-0x7d44)
.L7edc:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7edc, (0x7f84-0x7edc)
.L7f84:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7f84
