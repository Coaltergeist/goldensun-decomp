	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_2008f8c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0x3d
	bl	__PlaySound
	mov	r1, #4
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	ldr	r0, =0x107d
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xb
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0xa
	bl	__MapActor_Jump
	mov	r2, #0x1e
	mov	r0, #9
	mov	r1, #6
	bl	__MapActor_Jump
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #5
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r1, #0xa
	mov	r0, #9
	bl	OvlFunc_896_200c248
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r6, #0x50]
	mov	r5, #0
	add	r3, #0x26
	strb	r5, [r3]
	mov	r9, r3
	ldr	r3, =0x1999
	mov	r1, #0x80
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	lsl	r1, #1
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r8, r0
	mov	r0, #0xc
	bl	__Func_8092950
	mov	r2, #0x91
	ldr	r1, =0x1d70000
	mov	r0, #0xc
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r2, #0x55
	mov	r3, #0xa0
	lsl	r3, #14
	add	r2, r6
	strb	r5, [r2]
	mov	r0, #1
	str	r3, [r6, #0xc]
	mov	r10, r2
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1d70000
	neg	r1, r1
	ldr	r2, =0x1350000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r2, #0x91
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #0xbe
	bl	__PlaySound
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_8092b08
	ldr	r7, =0x28f
.Lm896_1148:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffffe667
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x18]
	add	r3, r7
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r7
	str	r3, [r6, #0x1c]
	mov	r2, r8
	ldr	r3, [r2, #0x18]
	add	r3, r7
	str	r3, [r2, #0x18]
	ldr	r3, [r2, #0x1c]
	add	r3, r7
	str	r3, [r2, #0x1c]
	mov	r0, #1
	add	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0x5a
	bne	.Lm896_1148
	mov	r3, #5
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r5, #0
.Lm896_1184:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffff8000
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0x3c
	bne	.Lm896_1184
	mov	r3, #3
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r3, #1
	mov	r2, r9
	strb	r3, [r2]
	mov	r0, #8
	mov	r2, #0
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_8092b08
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092950
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r2, #0x99
	lsl	r2, #1
	ldr	r1, =0x1d7
	mov	r0, #0xc
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x400c
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r2, #0
	mov	r1, #9
	mov	r0, #5
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #0xd0
	mov	r2, #0x1e
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #5
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x84
	mov	r1, #1
	mov	r2, #0xe6
	lsl	r2, #17
	mov	r3, #0
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r0, #0
	mov	r1, #3
	bl	__Func_809259c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm896_1364
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm896_1364:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r1, #1
	mov	r2, #0xa7
	mov	r3, #0
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1dd0000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm896_13c0

	.pool_aligned

.Lm896_13c0:
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xb0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x108d
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x5009
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #5
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_2008f8c

