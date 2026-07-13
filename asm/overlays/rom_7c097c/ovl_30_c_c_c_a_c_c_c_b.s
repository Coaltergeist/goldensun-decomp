	.include "macros.inc"
.thumb_func_start OvlFunc_936_2009f14
	push	{lr}
	ldr	r3, =.L5144
	ldr	r3, [r3]
	cmp	r3, #4
	bhi	.L1ff2
	ldr	r2, =.L1f28
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1f28:
	.word	.L1f3c
	.word	.L1f58
	.word	.L1f84
	.word	.L1fb0
	.word	.L1fdc
.L1f3c:
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_936__0200bec0
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	ldr	r2, =.L5144
	ldr	r3, [r2]
	add	r3, #1
	b	.L1ff0
.L1f58:
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L1ff2
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_936__0200bfb0
	mov	r0, #0x14
	bl	__MapActor_SetBehavior
	ldr	r2, =.L5144
	ldr	r3, [r2]
	add	r3, #1
	b	.L1ff0
.L1f84:
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L1ff2
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_936__0200bec0
	mov	r0, #0x14
	bl	__MapActor_SetBehavior
	ldr	r2, =.L5144
	ldr	r3, [r2]
	add	r3, #1
	b	.L1ff0
.L1fb0:
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L1ff2
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_936__0200bfb0
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	ldr	r2, =.L5144
	ldr	r3, [r2]
	add	r3, #1
	b	.L1ff0
.L1fdc:
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L1ff2
	ldr	r2, =.L5144
	mov	r3, #0
.L1ff0:
	str	r3, [r2]
.L1ff2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_2009f14

.thumb_func_start OvlFunc_936_200a008
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
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
	mov	r1, #0xc0
	mov	r2, #0xab
	lsl	r2, #17
	lsl	r1, #16
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x3333
	ldr	r1, =0x666
	bl	__Func_80933d4
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xfc
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	ldr	r2, =iwram_3001ebc
	ldr	r3, [r2]
	mov	r8, r2
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x28
	str	r2, [r3]
	bl	__MapTransitionIn
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x8b
	mov	r0, #0
	mov	r1, #0xc0
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #9
	bl	__MapActor_SetSpeed
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r7, #0xc0
	lsl	r7, #6
	strh	r7, [r0, #6]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r6, #0xa0
	lsl	r6, #7
	strh	r6, [r0, #6]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #0xb8
	mov	r0, #8
	mov	r2, #0xe8
	bl	__Func_809218c
	mov	r2, #0xe8
	mov	r0, #9
	mov	r1, #0xc6
	bl	__Func_80921c4
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	ldr	r0, =0x1b05
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, r6
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L217c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L217c:
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x86
	mov	r0, #2
	mov	r1, #0xd4
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, =0x4002
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xfe
	mov	r1, #0xca
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, r7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	ldr	r0, =0x4002
	bl	__Func_8093054
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, r7
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L23c0
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_8093040
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L23e2

	.pool_aligned

.L23c0:
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, =0x4002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
.L23e2:
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	ldr	r0, =0x4002
	bl	__Func_8093054
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #9
	bl	__MapActor_SetSpeed
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0
	strh	r3, [r0, #6]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #0xa8
	mov	r0, #8
	mov	r2, #0xe8
	bl	__Func_809218c
	mov	r2, #0xe8
	mov	r0, #9
	mov	r1, #0xd4
	bl	__Func_80921c4
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #0xc0
	mov	r0, #2
	mov	r2, #0xe8
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r5, #2
	mov	r1, #0x17
	mov	r2, #0x2b
	mov	r3, #0xc
	mov	r0, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #5
	bl	__WaitFrames
	mov	r3, #0xc
	mov	r1, #0x17
	mov	r2, #0x2b
	mov	r0, #0x27
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #5
	bl	__WaitFrames
	mov	r0, #2
	mov	r1, #0xc0
	mov	r2, #0xde
	bl	__Func_80921c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0xc0
	mov	r2, #0xde
	bl	__Func_80921c4
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #0xb8
	mov	r2, #0xe8
	bl	__Func_809218c
	mov	r0, #9
	mov	r1, #0xc6
	mov	r2, #0xe8
	bl	__Func_80921c4
	mov	r0, #8
	mov	r1, #0xbc
	mov	r2, #0xd4
	bl	__Func_809218c
	mov	r0, #9
	mov	r1, #0xc2
	mov	r2, #0xd4
	bl	__Func_80921c4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #5
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200a008

.thumb_func_start OvlFunc_936_200a6c0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #8
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
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xdc
	ldr	r2, =0x20a0000
	lsl	r1, #17
	mov	r0, #9
	bl	__MapActor_SetPos
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xdc
	mov	r1, #1
	ldr	r2, =0x20a0000
	mov	r3, #0
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #9
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xdc
	mov	r2, #0xc8
	lsl	r2, #1
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0x96
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xdc
	mov	r2, #0x96
	lsl	r2, #1
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_SetAnim
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xb
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x99
	mov	r0, #0xb
	ldr	r1, =0x1b70000
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0xb
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r2, #0x9c
	mov	r0, #0xb
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r2, #0x9c
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc8
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #0xcd
	mov	r1, #1
	mov	r2, #0x8c
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r0, #0xa
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x99
	mov	r0, #0xa
	ldr	r1, =0x1b70000
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r2, #0x9c
	mov	r0, #0xa
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r2, #0x9c
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc2
	mov	r2, #0x87
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x99
	mov	r0, #0
	ldr	r1, =0x1b70000
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r2, #0x9c
	mov	r0, #0
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r2, #0x9c
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc2
	mov	r2, #0x96
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r6, =gScript_936__0200c21c
	lsr	r3, #12
	add	r5, #0x66
	strh	r3, [r5]
	mov	r0, #0
	mov	r1, r6
	bl	__MapActor_SetBehavior
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	ldr	r0, =0x256f
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2920
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L2920:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2934
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L2934:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2948
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.L2948:
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xbd
	mov	r2, #0x9b
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xc8
	mov	r2, #0x90
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xcd
	mov	r2, #0x9a
	lsl	r2, #1
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
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
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #12
	add	r5, #0x66
	strh	r3, [r5]
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #12
	add	r5, #0x66
	strh	r3, [r5]
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #12
	add	r5, #0x66
	strh	r3, [r5]
	mov	r0, #1
	mov	r1, r6
	bl	__MapActor_SetBehavior
	mov	r0, #2
	mov	r1, r6
	bl	__MapActor_SetBehavior
	mov	r0, #3
	mov	r1, r6
	bl	__MapActor_SetBehavior
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x2002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0xa
	bl	__Func_8093040
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__MapActor_SetIdle
	mov	r0, #2
	bl	__MapActor_SetIdle
	mov	r0, #3
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
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
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xa
	ldr	r0, =0x2003
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	b	.L2b1c

	.pool_aligned

.L2b1c:
	bl	__Func_8093040
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
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
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x2002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	ldr	r0, =0x2003
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x84
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #3
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092c40
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2da4
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xec
	ldr	r2, [r3]
	lsl	r1, #1
	add	r2, r1
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
	b	.L2de8

	.pool_aligned

.L2da4:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x83
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, =0x2003
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
.L2de8:
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
	mov	r2, #0xa
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #0xa
	ldr	r1, =0x14d
	mov	r2, #0xde
	bl	__Func_80921c4
	mov	r1, #0x8e
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0xc6
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0x86
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0xc6
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x7d
	bl	__PlaySound
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x47
	mov	r1, #0x3c
	mov	r2, #0x4c
	mov	r3, #0xb
	bl	__CopyMapTiles
	mov	r3, #0x10
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #0x3c
	mov	r2, #2
	mov	r0, #0x47
	bl	__Func_8010704
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0xf6
	mov	r2, #0xc6
	bl	__Func_80921c4
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092adc
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x1333
	ldr	r0, =0x9999
	bl	__Func_80933d4
	mov	r0, #0xf8
	mov	r1, #1
	mov	r2, #0xaa
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x87
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0xc6
	bl	__Func_80921c4
	mov	r1, #0x87
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0xae
	bl	__Func_80921c4
	mov	r0, #0xa
	mov	r1, #0xe0
	mov	r2, #0xaa
	bl	__Func_80921c4
	mov	r0, #0xa
	mov	r1, #0xd2
	mov	r2, #0x9e
	bl	__Func_80921c4
	mov	r0, #0xa
	mov	r1, #0xf6
	mov	r2, #0x94
	bl	__Func_80921c4
	mov	r0, #0xa
	mov	r1, #0xf6
	mov	r2, #0x8e
	bl	__Func_80921c4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r2, =iwram_3001ebc
	mov	r3, #0xe0
	lsl	r3, #1
	mov	r10, r3
	mov	r8, r2
	ldr	r2, [r2]
	add	r3, #0x42
	mov	r1, r10
	str	r3, [r2, r1]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r1, #0xdc
	mov	r2, #0xaa
	lsl	r1, #17
	lsl	r2, #17
	mov	r0, #9
	bl	__MapActor_SetPos
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r6, #0x80
	lsl	r6, #7
	strh	r6, [r0, #6]
	mov	r1, #1
	mov	r0, #0xbe
	mov	r2, #0x8c
	mov	r3, #0
	lsl	r2, #17
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #0xa
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
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
	bl	__MapActor_DoAnim
	mov	r1, #0xd2
	mov	r2, #0x8d
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd2
	mov	r2, #0x9c
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0x9c
	mov	r0, #0xb
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0x99
	mov	r0, #0xb
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0
	mov	r0, #0xb
	mov	r1, #0
	bl	__MapActor_SetPos
	ldr	r5, =gScript_936__0200c230
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	mov	r0, #0xcd
	mov	r1, #1
	mov	r2, #0x96
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r1, #0xd0
	mov	r2, #0x9c
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0x9c
	mov	r0, #0
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0x99
	mov	r0, #0
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #0x8d
	bl	__PlaySound
	ldr	r2, =0x6666
	mov	r0, #9
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0xd2
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r1, #0xdc
	mov	r2, #0xd2
	lsl	r2, #1
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0x80
	mov	r1, r6
	lsl	r0, #10
	bl	__Func_80933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0x96
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r0, #9
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xdc
	mov	r2, #0xfa
	mov	r0, #9
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xdc
	mov	r2, #0x96
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #9
	bl	__Func_809218c
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r2, r8
	ldr	r1, [r2]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	add	r3, #0xe8
	mov	r2, r10
	str	r3, [r1, r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xa
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200a6c0
