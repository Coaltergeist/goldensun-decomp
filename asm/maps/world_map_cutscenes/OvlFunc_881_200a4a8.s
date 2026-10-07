	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200a4a8
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	bl	__CutsceneStart
	ldr	r6, =.Lm881_679c
	mov	r3, #0x37
	str	r3, [r6]
	mov	r0, #0x37
	bl	OvlFunc_881_200a768
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_808c44c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, r0
	cmp	r3, #0
	beq	.Lm881_24e0
	ldr	r0, [r6]
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #0x10]
	bl	__MapActor_SetPos
.Lm881_24e0:
	ldr	r0, [r6]
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r0, [r6]
	ldr	r1, =0x1768
	ldr	r2, =0xd78
	bl	__MapActor_TravelToAnimWait
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x3c
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__MapActor_Emote
	ldr	r0, [r6]
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x263c
	bl	__MessageID
	ldr	r0, [r6]
	mov	r3, #0x80
	lsl	r3, #5
	orr	r0, r3
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	bl	__Func_808c4c0
	ldr	r0, =0x16666
	mov	r1, #0xa
	bl	__Func_80936a0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #12
	lsl	r1, #9
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r2, =0xd680000
	neg	r1, r1
	ldr	r0, =0x17880000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	__Func_808c44c
	mov	r1, #0x81
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	mov	r5, #0xc0
	ldr	r0, [r6]
	lsl	r5, #6
	orr	r0, r5
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	ldr	r0, [r6]
	ldr	r1, =0x1768
	ldr	r2, =0xd48
	bl	__MapActor_TravelToAnimWait
	ldr	r0, [r6]
	ldr	r1, =0x1794
	ldr	r2, =0xd48
	bl	__MapActor_TravelToAnimWait
	ldr	r0, [r6]
	mov	r1, r5
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r2, =0x6666
	mov	r0, #0
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_881__0200cf20
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	b	.Lm881_25de
.Lm881_25d8:
	mov	r0, #1
	bl	__WaitFrames
.Lm881_25de:
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lm881_25d8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r6, =.Lm881_679c
	mov	r1, #0x83
	ldr	r0, [r6]
	mov	r2, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	ldr	r0, [r6]
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	ldr	r0, [r6]
	mov	r2, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, [r6]
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_8092adc
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	ldr	r1, =0x178c
	ldr	r2, =0xd48
	ldr	r0, [r6]
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	mov	r2, #1
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r8, r2
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	ldr	r1, =0x1794
	ldr	r2, =0xd48
	ldr	r0, [r6]
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r2, r3
	strb	r2, [r0]
	mov	r1, #3
	mov	r0, #0xf2
	mov	r8, r2
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xf2
	bl	__Func_8091a58
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x2642
	bl	__MessageID
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r2, #0
	ldr	r0, [r6]
	lsl	r1, #6
	bl	__Func_8092adc
	bl	__Func_808c4c0
	mov	r0, #0x80
	mov	r1, #0xa
	lsl	r0, #9
	bl	__Func_80936a0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x9bf
	bl	__SetFlag
	ldr	r1, =gState
	mov	r0, #0xe2
	ldr	r2, =2
	lsl	r0, #1
	add	r3, r1, r0
	strh	r2, [r3]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x4e
	strh	r3, [r2]
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a4a8

