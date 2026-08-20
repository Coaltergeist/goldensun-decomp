	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ValeRiverPrologue_MapInit
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
	beq	.Lm882_462
	ldr	r0, =0x205
	bl	__ClearFlag
	ldr	r0, =0x206
	bl	__ClearFlag
.Lm882_462:
	mov	r0, #0x83
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_480
	mov	r1, #0xa7
	mov	r2, #0xe9
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	bl	OvlFunc_882_2008ec4
.Lm882_480:
	ldr	r0, =0x831
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_49c
	mov	r1, #0xe0
	mov	r2, #0xda
	mov	r0, #0xc
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	bl	OvlFunc_882_20090a4
.Lm882_49c:
	ldr	r0, =0x832
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_4b6
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #15
	ldr	r2, =0x2bf0000
	bl	__MapActor_SetPos
	bl	OvlFunc_882_20092f0
.Lm882_4b6:
	ldr	r0, =0x833
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_4d0
	mov	r1, #0xd8
	mov	r0, #0xe
	lsl	r1, #17
	ldr	r2, =0x47b0000
	bl	__MapActor_SetPos
	bl	OvlFunc_882_2009498
.Lm882_4d0:
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
	beq	.Lm882_556
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm882_556:
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	ldr	r0, =0x838
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_57c
	mov	r1, #0xe4
	mov	r0, #0x13
	lsl	r1, #15
	ldr	r2, =0x14d0000
	bl	__MapActor_SetPos
	b	.Lm882_584
.Lm882_57c:
	ldr	r1, =gScript_882__0200c9f4
	mov	r0, #0x13
	bl	__MapActor_SetBehavior
.Lm882_584:
	ldr	r0, =0x841
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_590
	b	.Lm882_6e0
.Lm882_590:
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
	bne	.Lm882_6dc
	b	.Lm882_854
.Lm882_6dc:
	mov	r0, #0x16
	b	.Lm882_7de
.Lm882_6e0:
	ldr	r0, =0x83a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_6ec
	b	.Lm882_840
.Lm882_6ec:
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
.Lm882_7de:
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm882_854

	.pool_aligned

.Lm882_840:
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm882_854:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xf
	bne	.Lm882_86e
	ldr	r0, =0x87b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_876
.Lm882_86e:
	bl	__StartRain
	bl	__StartThunder
.Lm882_876:
	mov	r0, #0x84
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_886
	bl	OvlFunc_882_200810c
.Lm882_886:
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
	bne	.Lm882_930
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xf
	bne	.Lm882_930
	bl	OvlFunc_882_2008a10
	b	.Lm882_9de
.Lm882_930:
	mov	r0, #0x17
	mov	r1, #7
	bl	__MapActor_SetAnim
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_994
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
	bl	__MapActor_TravelToAnim
	mov	r1, #0xd4
	ldr	r2, =0x26b
	mov	r0, #0x15
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x15
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	__CutsceneEnd
	b	.Lm882_9bc
.Lm882_994:
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
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_SetAnim
	bl	__CutsceneEnd
.Lm882_9bc:
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
.Lm882_9de:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end ValeRiverPrologue_MapInit

