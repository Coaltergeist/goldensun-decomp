	.include "macros.inc"

.thumb_func_start OvlFunc_882_2008434
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0xaa
	sub	sp, #8
	bl	__Func_8091ff0
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L462
	ldr	r0, =0x205
	bl	__ClearFlag
	ldr	r0, =0x206
	bl	__ClearFlag
.L462:
	mov	r0, #0x83
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L480
	mov	r1, #0xa7
	mov	r2, #0xe9
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	bl	OvlFunc_882_2008ec4
.L480:
	ldr	r0, =0x831
	bl	__GetFlag
	cmp	r0, #0
	beq	.L49c
	mov	r1, #0xe0
	mov	r2, #0xda
	mov	r0, #0xc
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	bl	OvlFunc_882_20090a4
.L49c:
	ldr	r0, =0x832
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4b6
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #15
	ldr	r2, =0x2bf0000
	bl	__MapActor_SetPos
	bl	OvlFunc_882_20092f0
.L4b6:
	ldr	r0, =0x833
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4d0
	mov	r1, #0xd8
	mov	r0, #0xe
	lsl	r1, #17
	ldr	r2, =0x47b0000
	bl	__MapActor_SetPos
	bl	OvlFunc_882_2009498
.L4d0:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #4
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	beq	.L556
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L556:
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	ldr	r0, =0x838
	bl	__GetFlag
	cmp	r0, #0
	beq	.L57c
	mov	r1, #0xe4
	mov	r0, #0x13
	lsl	r1, #15
	ldr	r2, =0x14d0000
	bl	__MapActor_SetPos
	b	.L584
.L57c:
	ldr	r1, =gScript_882__0200c9f4
	mov	r0, #0x13
	bl	__MapActor_SetBehavior
.L584:
	ldr	r0, =0x841
	bl	__GetFlag
	cmp	r0, #0
	bne	.L590
	b	.L6e0
.L590:
	bl	OvlFunc_882_200c0f0
	mov	r1, #0xa5
	ldr	r2, =0x4cd0000
	lsl	r1, #16
	mov	r0, #9
	bl	__MapActor_SetPos
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r6, #0xe0
	mov	r5, r0
	lsl	r6, #8
	strh	r6, [r5, #6]
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	ldr	r2, =gScript_882__0200cec8
	mov	r3, r5
	add	r0, #0x3c
	add	r3, #0x64
	mov	r8, r2
	strh	r0, [r3]
	add	r5, #0x66
	mov	r3, #1
	strh	r3, [r5]
	mov	r0, #9
	mov	r1, r8
	bl	__MapActor_SetBehavior
	mov	r1, #0xa5
	ldr	r2, =0x4e60000
	lsl	r1, #16
	mov	r0, #0x1a
	bl	__MapActor_SetPos
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r5, r0
	strh	r6, [r5, #6]
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	mov	r3, r5
	add	r0, #0x3c
	add	r3, #0x64
	strh	r0, [r3]
	add	r5, #0x66
	mov	r3, #2
	strh	r3, [r5]
	mov	r0, #0x1a
	mov	r1, r8
	bl	__MapActor_SetBehavior
	mov	r1, #0x98
	ldr	r2, =0x5050000
	lsl	r1, #16
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r5, r0
	strh	r6, [r5, #6]
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	mov	r3, r5
	add	r0, #0x3c
	add	r3, #0x64
	strh	r0, [r3]
	add	r5, #0x66
	mov	r3, #3
	strh	r3, [r5]
	mov	r0, #0x16
	mov	r1, r8
	bl	__MapActor_SetBehavior
	mov	r1, #0xb8
	mov	r2, #0xa3
	lsl	r2, #19
	lsl	r1, #16
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	strh	r6, [r5, #6]
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	mov	r3, r5
	add	r0, #0x3c
	add	r3, #0x64
	strh	r0, [r3]
	add	r5, #0x66
	mov	r3, #4
	strh	r3, [r5]
	mov	r0, #8
	mov	r1, r8
	bl	__MapActor_SetBehavior
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, #0xc8
	and	r5, r3
	strb	r5, [r0]
	lsl	r1, #4
	ldr	r0, =OvlFunc_882_200c5b8
	bl	__StartTask
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x842
	bl	__GetFlag
	cmp	r0, #0
	bne	.L6dc
	b	.L854
.L6dc:
	mov	r0, #0x16
	b	.L7de
.L6e0:
	ldr	r0, =0x83a
	bl	__GetFlag
	cmp	r0, #0
	bne	.L6ec
	b	.L840
.L6ec:
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #16
	ldr	r2, =0x4be0000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #5
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	ldr	r6, =gScript_882__0200cec8
	add	r0, #0x3c
	add	r5, #0x64
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	mov	r1, #0xe3
	mov	r0, #0x18
	lsl	r1, #16
	ldr	r2, =0x4be0000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x18
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #6
	mov	r0, #0x18
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	mov	r1, #0xf7
	mov	r0, #0x19
	lsl	r1, #16
	ldr	r2, =0x4be0000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x19
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #6
	mov	r0, #0x19
	bl	__MapActor_SetAnim
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r1, #0xf3
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x4fd0000
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x17
	bl	__Func_8092adc
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x12
.L7de:
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L854

	.pool_aligned

.L840:
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L854:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xf
	bne	.L86e
	ldr	r0, =0x87b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L876
.L86e:
	bl	__StartRain
	bl	__StartThunder
.L876:
	mov	r0, #0x84
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L886
	bl	OvlFunc_882_200810c
.L886:
	ldr	r0, =0x834
	bl	__SetFlag
	mov	r3, #0x1a
	str	r3, [sp]
	mov	r5, #0x2e
	mov	r0, #0x1d
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x1b
	str	r3, [sp]
	mov	r0, #0x1d
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x1c
	str	r3, [sp]
	mov	r0, #0x1d
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x58
	str	r3, [sp, #4]
	mov	r5, #0x14
	mov	r0, #0x13
	mov	r1, #0x5a
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x59
	str	r3, [sp, #4]
	mov	r1, #0x5a
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x13
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r3, #0xc0
	lsl	r3, #16
	str	r3, [r0, #0xc]
	add	r2, #4
	mov	r3, #8
	strb	r3, [r2]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x87b
	bl	__GetFlag
	cmp	r0, #0
	bne	.L930
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xf
	bne	.L930
	bl	OvlFunc_882_2008a10
	b	.L9de
.L930:
	mov	r0, #0x17
	mov	r1, #7
	bl	__MapActor_SetAnim
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	bne	.L994
	bl	__CutsceneStart
	mov	r0, #0x16
	ldr	r1, =0x101
	bl	__MapActor_Surprise
	mov	r1, #0xc8
	mov	r0, #0x16
	lsl	r1, #17
	ldr	r2, =0x2630000
	bl	__MapActor_SetPos
	mov	r1, #0xd4
	mov	r0, #0x15
	lsl	r1, #17
	ldr	r2, =0x2730000
	bl	__MapActor_SetPos
	mov	r1, #0xc8
	mov	r0, #0x16
	lsl	r1, #1
	ldr	r2, =0x26b
	bl	__Func_809218c
	mov	r1, #0xd4
	ldr	r2, =0x26b
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0x15
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	__CutsceneEnd
	b	.L9bc
.L994:
	bl	__CutsceneStart
	mov	r1, #0xd4
	mov	r0, #0x15
	lsl	r1, #17
	ldr	r2, =0x2730000
	bl	__MapActor_SetPos
	mov	r1, #0xd4
	mov	r0, #0x15
	lsl	r1, #1
	ldr	r2, =0x26b
	bl	__Func_80921c4
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_SetAnim
	bl	__CutsceneEnd
.L9bc:
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_8095268
.L9de:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_882_2008434

.thumb_func_start OvlFunc_882_2008a10
	push	{r5, lr}
	bl	__CutsceneStart
	bl	__StartRain
	bl	__StartThunder
	bl	__Func_8095240
	mov	r0, #0x3c
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #7
	lsl	r1, #4
	bl	__Func_80933d4
	mov	r0, #0x9e
	mov	r1, #0xa0
	mov	r2, #0xdc
	mov	r3, #1
	lsl	r0, #17
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r1, #0x93
	mov	r2, #0xd9
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_8095268
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r2, #0x2c
	ldr	r0, =.L578a
	mov	r1, #0x32
	bl	__Func_8010560
	mov	r0, #0x16
	ldr	r1, =0x101
	bl	__MapActor_Surprise
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xab
	mov	r0, #9
	lsl	r1, #17
	ldr	r2, =0x37a0000
	bl	__MapActor_SetPos
	mov	r1, #0xab
	mov	r0, #9
	lsl	r1, #1
	ldr	r2, =0x389
	bl	__Func_80921c4
	bl	__Func_809202c
	mov	r1, #0x94
	mov	r0, #9
	lsl	r1, #1
	ldr	r2, =0x389
	bl	__Func_809218c
	mov	r1, #0xab
	mov	r0, #0
	lsl	r1, #17
	ldr	r2, =0x37a0000
	bl	__MapActor_SetPos
	mov	r1, #0xab
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x37a
	bl	__Func_809218c
	mov	r1, #0xab
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x389
	bl	__Func_80921c4
	mov	r1, #0x9f
	ldr	r2, =0x389
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #9
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r2, #0x3c
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_8092adc
	ldr	r5, =0xe5c
	mov	r0, r5
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x93
	ldr	r2, =0x346
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #9
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__MapActor_Surprise
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #9
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #9
	ldr	r1, =0x121
	ldr	r2, =0x373
	bl	__Func_80921c4
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #6
	mov	r0, #9
	add	r5, #8
	bl	__Func_8092adc
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092c40
	mov	r1, #0x97
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x389
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.Lc72
.Lc5c:
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	ldr	r0, =0xe65
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092c40
.Lc72:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	beq	.Lc5c
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	ldr	r0, =0xe66
	bl	__MessageID
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	ldr	r1, =0x129
	ldr	r2, =0x2ee
	mov	r0, #0xa
	bl	__Func_809218c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #9
	ldr	r1, =0x129
	ldr	r2, =0x2ee
	bl	__Func_80921c4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r0, #0xa
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #5
	mov	r0, #0x16
	bl	__MapActor_SetAnim
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r0, =0x87b
	bl	__SetFlag
	ldr	r0, =0x205
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2008a10

.thumb_func_start OvlFunc_882_2008d5c
	push	{r5, r6, r7, lr}
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld6c
	b	.Le96
.Ld6c:
	bl	__CutsceneStart
	mov	r0, #0x83
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Le2e
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0x80
	mov	r5, r0
	mov	r2, #0x80
	mov	r0, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	ldr	r6, [r5, #0x50]
	bl	__Func_8012330
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r7, r5
	mov	r0, #0x28
	bl	__WaitFrames
	add	r7, #0x23
	mov	r0, #0x91
	bl	__PlaySound
	ldrb	r2, [r7]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r7]
	ldrb	r2, [r6, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r2, #0xe9
	strb	r3, [r6, #9]
	mov	r0, #0xb
	ldr	r1, =0x1d90000
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r2, #0xf0
	ldr	r3, [r5, #0xc]
	lsl	r2, #16
	add	r3, r2
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	ldr	r3, =0x6666
	mov	r1, #0xac
	mov	r2, #0xe9
	lsl	r1, #1
	str	r3, [r5, #0x44]
	mov	r0, #0xb
	lsl	r2, #2
	bl	__Func_80921c4
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	ldrb	r2, [r7]
	strb	r3, [r6, #9]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r7]
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	bl	__Func_809202c
	mov	r0, #0x83
	lsl	r0, #4
	bl	__SetFlag
.Le2e:
	bl	OvlFunc_882_2008ec4
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le92
	ldr	r0, =0x841
	bl	__GetFlag
	cmp	r0, #0
	bne	.Le92
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Le92
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #16
	cmp	r3, r2
	ble	.Le82
	ldr	r5, =0x396
	mov	r0, #0xa3
	lsl	r0, #1
	mov	r1, r5
	bl	OvlFunc_882_2009a64
	mov	r0, #0
	ldr	r1, =0x123
	mov	r2, r5
	bl	__Func_80921c4
	b	.Le8a
.Le82:
	ldr	r0, =0x14f
	ldr	r1, =0x3bd
	bl	OvlFunc_882_2009a64
.Le8a:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__SetFlag
.Le92:
	bl	__CutsceneEnd
.Le96:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2008d5c

.thumb_func_start OvlFunc_882_2008ec4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0x39
	str	r3, [sp, #4]
	mov	r6, #0x15
	mov	r8, r3
	mov	r0, #0x1d
	mov	r1, #0x40
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	mov	r5, #0x3a
	mov	r0, #0x1d
	mov	r1, #0x40
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x16
	str	r3, [sp]
	mov	r0, #0x1d
	mov	r1, #0x40
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r6, #0x14
	mov	r0, #0x1d
	mov	r1, #0x40
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2008ec4

.thumb_func_start OvlFunc_882_2008f38
	push	{r5, lr}
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lf46
	b	.L1070
.Lf46:
	bl	__CutsceneStart
	ldr	r0, =0x831
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1002
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0x80
	mov	r5, r0
	mov	r2, #0x80
	mov	r0, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r0, #0x91
	bl	__PlaySound
	mov	r2, #0xca
	mov	r0, #0xc
	ldr	r1, =0x17d0000
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r2, #0x80
	ldr	r3, [r5, #0xc]
	lsl	r2, #17
	add	r3, r2
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #0x80
	lsl	r3, #8
	mov	r1, #0x91
	str	r3, [r5, #0x44]
	ldr	r2, =0x341
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #0x81
	mov	r2, #0xd5
	lsl	r2, #2
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_8092b08
	mov	r2, #0xda
	mov	r1, #0xe0
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	bl	__Func_809202c
	ldr	r0, =0x831
	bl	__SetFlag
.L1002:
	bl	OvlFunc_882_20090a4
	ldr	r0, =0x311
	bl	__SetFlag
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	beq	.L106c
	ldr	r0, =0x841
	bl	__GetFlag
	cmp	r0, #0
	bne	.L106c
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L106c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #16
	cmp	r3, r2
	ble	.L1050
	ldr	r1, =0x34b
	mov	r0, #0xdb
	bl	OvlFunc_882_2009a64
	mov	r0, #0
	mov	r1, #0xb3
	ldr	r2, =0x33d
	bl	__Func_80921c4
	b	.L1064
.L1050:
	mov	r1, #0xe3
	lsl	r1, #2
	mov	r0, #0xd6
	bl	OvlFunc_882_2009a64
	mov	r0, #0
	mov	r1, #0xdb
	ldr	r2, =0x38f
	bl	__Func_80921c4
.L1064:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__SetFlag
.L106c:
	bl	__CutsceneEnd
.L1070:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2008f38

.thumb_func_start OvlFunc_882_20090a4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #8
	mov	r2, #0xf
	str	r2, [sp]
	mov	r10, r2
	mov	r5, #0x35
	mov	r0, #0x1d
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r6, #0xe
	mov	r0, #0x1d
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xd
	str	r3, [sp]
	mov	r8, r3
	mov	r0, #0x1d
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x34
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp]
	mov	r5, #0x36
	mov	r0, #0x19
	mov	r1, #0x15
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, r10
	str	r3, [sp]
	mov	r0, #0x19
	mov	r1, #0x15
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xe
	mov	r1, #0x35
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, r10
	mov	r3, #0x37
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0xd
	mov	r1, #0x37
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_20090a4

.thumb_func_start OvlFunc_882_2009154
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x312
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1168
	b	.L12b0
.L1168:
	bl	__CutsceneStart
	ldr	r0, =0x832
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1246
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x23
	ldr	r3, [r0, #0x50]
	mov	r8, r0
	add	r8, r2
	ldrb	r5, [r3, #9]
	mov	r3, r8
	ldrb	r3, [r3]
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #11
	lsl	r0, #11
	mov	r10, r3
	bl	__Func_8012330
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r0, #0x91
	bl	__PlaySound
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0xd
	ldr	r2, =0x2bf0000
	bl	__MapActor_SetPos
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r6, #0x30]
	str	r3, [r6, #0x34]
	mov	r2, #0xa0
	ldr	r3, [r6, #0xc]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x3c]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #0x44]
	mov	r1, #0x40
	ldr	r2, =0x2bf
	mov	r0, #0xd
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	lsl	r5, #28
	bl	__Func_8012330
	lsr	r5, #30
	bl	__Func_8012350
	bl	__Func_809202c
	ldr	r0, =0x832
	bl	__SetFlag
	mov	r0, #0
	mov	r1, r5
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r2, r8
	mov	r3, r10
	strb	r3, [r2]
.L1246:
	bl	OvlFunc_882_20092f0
	ldr	r0, =0x312
	bl	__SetFlag
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	beq	.L12ac
	ldr	r0, =0x841
	bl	__GetFlag
	cmp	r0, #0
	bne	.L12ac
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L12ac
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0x2b4ffff
	ldr	r3, [r0, #0x10]
	cmp	r3, r2
	bgt	.L1292
	ldr	r1, =0x29d
	mov	r0, #0x3e
	bl	OvlFunc_882_2009a64
	mov	r0, #0
	mov	r1, #0x1b
	ldr	r2, =0x273
	bl	__Func_80921c4
	b	.L12a4
.L1292:
	ldr	r1, =0x2cb
	mov	r0, #0x4b
	bl	OvlFunc_882_2009a64
	mov	r0, #0
	mov	r1, #0x43
	ldr	r2, =0x2f5
	bl	__Func_80921c4
.L12a4:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__SetFlag
.L12ac:
	bl	__CutsceneEnd
.L12b0:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2009154

	.section .text.after_92f0, "ax", %progbits

.thumb_func_start OvlFunc_882_2009348
	push	{r5, lr}
	ldr	r0, =0x313
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1356
	b	.L1458
.L1356:
	bl	__CutsceneStart
	ldr	r0, =0x833
	bl	__GetFlag
	cmp	r0, #0
	bne	.L13e8
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0x80
	mov	r5, r0
	mov	r2, #0x80
	mov	r0, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r0, #0x91
	bl	__PlaySound
	mov	r1, #0xed
	mov	r0, #0xe
	lsl	r1, #17
	ldr	r2, =0x47b0000
	bl	__MapActor_SetPos
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r2, #0x90
	ldr	r3, [r5, #0xc]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #0x80
	lsl	r3, #8
	mov	r1, #0xd8
	str	r3, [r5, #0x44]
	lsl	r1, #1
	ldr	r2, =0x47b
	mov	r0, #0xe
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	bl	__Func_809202c
	ldr	r0, =0x833
	bl	__SetFlag
.L13e8:
	bl	OvlFunc_882_2009498
	ldr	r0, =0x313
	bl	__SetFlag
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1454
	ldr	r0, =0x841
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1454
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1454
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0x479ffff
	ldr	r3, [r0, #0x10]
	cmp	r3, r2
	bgt	.L143a
	mov	r0, #0xce
	mov	r1, #0x8c
	lsl	r0, #1
	lsl	r1, #3
	bl	OvlFunc_882_2009a64
	mov	r1, #0xcf
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x42c
	bl	__Func_80921c4
	b	.L144c
.L143a:
	ldr	r0, =0x1bd
	ldr	r1, =0x494
	bl	OvlFunc_882_2009a64
	mov	r0, #0
	ldr	r1, =0x1bf
	ldr	r2, =0x4cb
	bl	__Func_80921c4
.L144c:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__SetFlag
.L1454:
	bl	__CutsceneEnd
.L1458:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2009348

.thumb_func_start OvlFunc_882_2009498
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0x47
	str	r3, [sp, #4]
	mov	r5, #0x1a
	mov	r8, r3
	mov	r0, #0x1d
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r6, #0x46
	mov	r0, #0x1d
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r5, #0x1b
	mov	r0, #0x1d
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x1c
	str	r3, [sp]
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x15
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0x48
	str	r3, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x16
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2009498

.thumb_func_start OvlFunc_882_200950c
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x32a
	bl	__Func_80921c4
	mov	r1, #0x83
	mov	r0, #0x14
	lsl	r1, #17
	ldr	r2, =0x3250000
	bl	__MapActor_SetPos
	mov	r1, #0x83
	mov	r0, #0x14
	lsl	r1, #1
	ldr	r2, =0x339
	bl	__Func_809218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x8d
	ldr	r2, =0x357
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0x14
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r2, #0
	mov	r1, #0x14
	mov	r0, #0
	bl	__Func_8092848
	bl	__Func_809202c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #1
	mov	r0, #0x14
	bl	__MapActor_Emote
	ldr	r5, =0xe67
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8093054
	add	r5, #4
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8093040
	ldr	r1, =gScript_882__0200c8c0
	mov	r0, #0x14
	bl	__MapActor_RunScript
	ldr	r0, =0x835
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200950c

.thumb_func_start OvlFunc_882_2009600
	push	{lr}
	ldr	r0, =0x836
	bl	__GetFlag
	cmp	r0, #0
	bne	.L166a
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	bne	.L166a
	bl	__CutsceneStart
	ldr	r0, =0xe6c
	bl	__MessageID
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xbf
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x26b
	bl	__Func_80921c4
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0x16
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x836
	bl	__SetFlag
	bl	__CutsceneEnd
.L166a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2009600
