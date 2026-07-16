	.include "macros.inc"

.thumb_func_start OvlFunc_943_200ba0c
	push	{r5, r6, lr}
	bl	__CutsceneStart
	ldr	r2, =.L5b50
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r2]
	ldr	r3, =0xffff8000
	ldr	r2, =.L5b60
	ldr	r0, =.L5160
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
	bl	__Func_80921c4
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
	bl	__Func_80921c4
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
	bl	__Func_80921c4
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
	bl	__Func_80921c4
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
	bl	__Func_80921c4
	mov	r1, r5
	mov	r0, #0x16
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x89
	mov	r0, #0x14
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0x94
	mov	r0, #0x14
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xa6
	mov	r1, #0xb6
	lsl	r2, #2
	mov	r0, #0x14
	bl	__Func_809218c
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

.thumb_func_start OvlFunc_943_200bc88
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0xb4
	ldr	r2, =0x28e
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L3cc6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L3cc6:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L3cda
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L3cda:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L3cee
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.L3cee:
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r2, #0xa0
	mov	r0, #1
	mov	r1, #0xc2
	lsl	r2, #2
	bl	__Func_809218c
	mov	r0, #2
	mov	r1, #0xc6
	ldr	r2, =0x28e
	bl	__Func_809218c
	mov	r2, #0xa8
	lsl	r2, #2
	mov	r0, #3
	mov	r1, #0xc2
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_943_200ba00
	mov	r1, #0
	mov	r0, #0x16
	bl	OvlFunc_943_200ba00
	ldr	r0, =0x1f55
	bl	__MessageID
	mov	r0, #0x16
	bl	OvlFunc_943_200b9ec
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x15
	bl	OvlFunc_943_200ba00
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L3e1e
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #2
	bl	OvlFunc_943_200b9ec
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_943_200ba00
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_943_200b9ec
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_943_200ba00
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092c40
.L3dfa:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L3e1e
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r0, =0x1f53
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092c40
	b	.L3dfa
.L3e1e:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	ldr	r0, =0x1f5b
	bl	__MessageID
	mov	r0, #0x16
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0x15
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0xa2
	ldr	r2, =0x27a
	mov	r0, #0x16
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xa9
	and	r5, r3
	mov	r1, #0xa2
	lsl	r2, #2
	strb	r5, [r0]
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xc0
	orr	r6, r3
	mov	r2, #0
	strb	r6, [r0]
	lsl	r1, #6
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x15
	bl	OvlFunc_943_200ba00
	mov	r0, #0x16
	bl	OvlFunc_943_200b9ec
	mov	r0, #1
	mov	r1, #0xb4
	ldr	r2, =0x28e
	bl	__Func_809218c
	mov	r0, #2
	mov	r1, #0xb4
	ldr	r2, =0x28e
	bl	__Func_809218c
	mov	r1, #0xb4
	ldr	r2, =0x28e
	mov	r0, #3
	bl	__Func_80921c4
	mov	r0, #1
	bl	__DeleteFieldActor
	mov	r0, #2
	bl	__DeleteFieldActor
	mov	r0, #3
	bl	__DeleteFieldActor
	ldr	r0, =0x903
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200bc88

.thumb_func_start OvlFunc_943_200bf30
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	bl	__CutsceneStart
	ldr	r0, =.L51d8
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xa4
	mov	r0, #0
	mov	r1, #0x94
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x16
	lsl	r1, #1
	mov	r5, #0xa0
	bl	__MapActor_Emote
	lsl	r5, #7
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r5
	mov	r0, #0x16
	bl	OvlFunc_943_200ba00
	ldr	r0, =0x1f69
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x2016
	bl	__Func_8092c40
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L3fb6
	ldr	r0, =0x2016
	bl	OvlFunc_943_200b9ec
	bl	__CutsceneEnd
	b	.L41d4
.L3fb6:
	ldr	r2, =iwram_3001ebc
	mov	r3, #0xec
	mov	r8, r2
	ldr	r2, [r2]
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	ldr	r0, =0x2016
	bl	__Func_8093054
	bl	OvlFunc_943_2008bb8
	mov	r1, #0xd8
	mov	r2, #0x93
	mov	r0, #0x1a
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x1a
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r2, #0x95
	mov	r0, #0x1a
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0x9a
	mov	r0, #0x1a
	mov	r1, #0xbc
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0
	mov	r0, #0x16
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0x1a
	bl	OvlFunc_943_200ba00
	mov	r2, #0
	mov	r0, #0x1a
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r0, #0x1a
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0x1a
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xb4
	mov	r0, #0x14
	lsl	r1, #16
	ldr	r2, =0x3090000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xa6
	mov	r0, #0x14
	mov	r1, #0xb4
	lsl	r2, #2
	bl	__Func_80921c4
	ldr	r6, =0x2014
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x16
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #0x1a
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #0x15
	bl	OvlFunc_943_200b9ec
	mov	r2, #0x14
	mov	r1, r5
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	ldr	r0, =0x6014
	bl	OvlFunc_943_200b9ec
	mov	r2, #0x14
	mov	r0, #0x1a
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r1, #4
	mov	r0, #0x1a
	bl	__MapActor_SetAnim
	mov	r0, #0x1a
	bl	OvlFunc_943_200b9ec
	mov	r2, #0xa0
	mov	r0, #0x14
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_8092adc
	ldr	r0, =0x8014
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x1a
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x1a
	bl	__Func_809259c
	mov	r0, #0x1a
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x16
	mov	r1, #0
	bl	OvlFunc_943_200ba00
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x16
	bl	OvlFunc_943_200b9ec
	ldr	r2, =0xcccc
	mov	r0, #0x16
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_943__0200c918
	mov	r0, #0x16
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x9e
	lsl	r2, #2
	mov	r0, #0x15
	mov	r1, #0xa8
	bl	__Func_80921c4
	mov	r1, r5
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0x14
	bl	OvlFunc_943_200ba00
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_943_200ba00
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x11
	bl	__Func_8091e9c
.L41d4:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200bf30

	.section .data
	.global ActorCmd_ARRAY_943__0200c464
	.global gScript_943__0200c49c
	.global gScript_943__0200c4d8
	.global gScript_943__0200c4ec
	.global gScript_943__0200c58c
	.global gScript_943__0200c628
	.global gScript_943__0200c764
	.global gScript_943__0200c7a8
	.global gScript_943__0200c7ec
	.global gScript_943__0200c80c
	.global gScript_943__0200c814
	.global gScript_943__0200c888
	.global gScript_943__0200c8b0
	.global gScript_943__0200c8c4
	.global gScript_943__0200c8d8
	.global gScript_943__0200c8e0
	.global gScript_943__0200c980
	.global .L4ba8
	.global .L4cf8
	.global .L4ef0
	.global .L5028
	.global .L5160
	.global .L5208
	.global .L5268
	.global .L5340
	.global .L5418
	.global gScript_968__0200d508
	.global .L5778
	.global .L5958
	.global .L59d0
	.global .L5a54
	.global .L5b08

ActorCmd_ARRAY_943__0200c464:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4464, (0x449c-0x4464)
gScript_943__0200c49c:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x449c, (0x44d8-0x449c)
gScript_943__0200c4d8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x44d8, (0x44ec-0x44d8)
gScript_943__0200c4ec:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x44ec, (0x458c-0x44ec)
gScript_943__0200c58c:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x458c, (0x4628-0x458c)
gScript_943__0200c628:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4628, (0x4764-0x4628)
gScript_943__0200c764:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4764, (0x47a8-0x4764)
gScript_943__0200c7a8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x47a8, (0x47ec-0x47a8)
gScript_943__0200c7ec:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x47ec, (0x480c-0x47ec)
gScript_943__0200c80c:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x480c, (0x4814-0x480c)
gScript_943__0200c814:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4814, (0x4888-0x4814)
gScript_943__0200c888:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4888, (0x48b0-0x4888)
gScript_943__0200c8b0:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x48b0, (0x48c4-0x48b0)
gScript_943__0200c8c4:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x48c4, (0x48d8-0x48c4)
gScript_943__0200c8d8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x48d8, (0x48e0-0x48d8)
gScript_943__0200c8e0:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x48e0, (0x4918-0x48e0)
	.global gScript_943__0200c918
gScript_943__0200c918:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4918, (0x4980-0x4918)
gScript_943__0200c980:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4980, (0x4994-0x4980)
	.global gOvl_0200c994
gOvl_0200c994:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4994, (0x4b44-0x4994)
	.global gOvl_0200cb44
gOvl_0200cb44:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4b44, (0x4b64-0x4b44)
	.global gOvl_0200cb64
gOvl_0200cb64:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4b64, (0x4ba8-0x4b64)
.L4ba8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4ba8, (0x4cf8-0x4ba8)
.L4cf8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4cf8, (0x4ef0-0x4cf8)
.L4ef0:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4ef0, (0x5028-0x4ef0)
.L5028:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5028, (0x5160-0x5028)
.L5160:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5160, (0x51d8-0x5160)
.L51d8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x51d8, (0x5208-0x51d8)
.L5208:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5208, (0x5268-0x5208)
.L5268:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5268, (0x5340-0x5268)
.L5340:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5340, (0x5418-0x5340)
.L5418:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5418, (0x5508-0x5418)
gScript_968__0200d508:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5508, (0x5778-0x5508)
.L5778:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5778, (0x5958-0x5778)
.L5958:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5958, (0x59d0-0x5958)
.L59d0:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x59d0, (0x5a54-0x59d0)
.L5a54:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5a54, (0x5b08-0x5a54)
	.global gOvl943FlagResults
gOvl943FlagResults:
.L5b08:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5b08

	.section .bss
	.global .L5b30
	.global .L5b38
	.global .L5b40
	.global .L5b50
	.global .L5b58
	.global .L5b60
	.global .L5b70
	.global gOvl943ActorXPositions

	.lcomm	.L5b30, 8
	.lcomm	.L5b38, 4
	.lcomm	.Lunused_5b3c, 4
	.lcomm	.L5b40, 0x10
	.lcomm	.L5b50, 8
	.lcomm	.L5b58, 4
	.lcomm	.Lunused_5b5c, 4
	.lcomm	.L5b60, 8
	.lcomm	.Lunused_5b68, 4
	.lcomm	.Lunused_5b6c, 4
	.lcomm	.L5b70, 0x20
	.lcomm	gOvl943ActorXPositions, 0x20
