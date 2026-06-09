	.include "macros.inc"

.thumb_func_start OvlFunc_942_2008af8
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0xe
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r0, [r0, #8]
	mov	r8, r0
	mov	r3, r8
	asr	r3, #20
	mov	r0, #0xf
	mov	r8, r3
	bl	__MapActor_GetActor
	mov	r3, #5
	ldr	r5, [r0, #8]
	mov	r6, #0xb
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #0xc
	mov	r2, #5
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_8010704
	asr	r5, #20
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	mov	r0, #1
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xe
	bl	OvlFunc_942_2008b68
	mov	r0, #0xf
	bl	OvlFunc_942_2008b68
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_2008af8

.thumb_func_start OvlFunc_942_2008b68
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #3
	bl	__Func_8092b08
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	add	r6, #0x23
	ldrb	r2, [r6]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_2008b68

.thumb_func_start OvlFunc_942_2008ba0
	push	{lr}
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r1, #0xa4
	mov	r2, #0xb2
	lsl	r1, #17
	lsl	r2, #19
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x10
	mov	r3, #0x80
	lsl	r3, #8
	neg	r1, r1
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809233c
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1f89
	bl	__MessageID
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xb2
	mov	r0, #1
	mov	r1, #0xe8
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xb8
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #19
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0xf
	bl	__MapActor_Jump
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #6
	bl	__MapActor_Jump
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x84
	mov	r1, #1
	mov	r2, #0xb5
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #19
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r0, #8
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r1, #0x84
	mov	r2, #0xb2
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x84
	mov	r2, #0xb7
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Ldcc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Ldcc:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r2, [r0, #8]
	cmp	r2, #0
	bge	.Le06
	ldr	r3, =0xffff
	add	r2, r3
.Le06:
	mov	r3, r0
	asr	r2, #16
	add	r3, #0x64
	strh	r2, [r3]
	ldr	r2, [r0, #0x10]
	cmp	r2, #0
	bge	.Le18
	ldr	r3, =0xffff
	add	r2, r3
.Le18:
	mov	r3, r0
	asr	r2, #16
	add	r3, #0x66
	strh	r2, [r3]
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_2008ba0

.thumb_func_start OvlFunc_942_2008e40
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x8ab
	bl	__SetFlag
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x23eb
	bl	__MessageID
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r10, r1
	mov	r3, r0
	mov	r2, r10
	add	r3, #0x23
	strb	r2, [r3]
	ldr	r2, [r0, #0x50]
	mov	r1, #0xc
	ldrb	r3, [r2, #9]
	mov	r8, r1
	mov	r1, r8
	orr	r3, r1
	strb	r3, [r2, #9]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #0x15]
	orr	r3, r1
	strb	r3, [r2, #0x15]
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0x98
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x88
	mov	r0, #0
	mov	r1, #0xd8
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	ldr	r1, =0x107
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #4
	mov	r2, #0xd
	bl	__MapActor_Jump
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	ldr	r1, =0x103
	mov	r2, #0x37
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xa
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_8092304
	mov	r0, #0xa
	mov	r1, #7
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x18
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0x10
	strb	r3, [r0]
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_80922c4
	mov	r0, #0x99
	bl	__PlaySound
	mov	r0, #0xd
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__MapActor_SetSpeed
	mov	r2, #0
	mov	r1, #0x10
	mov	r0, #0xd
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	mov	r1, #0x81
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #0xd
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x9b
	bl	__PlaySound
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x9b
	bl	__PlaySound
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x9b
	bl	__PlaySound
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xd
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0xd
	bl	__MapActor_Jump
	mov	r0, #0x9f
	bl	__PlaySound
	mov	r1, #8
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x46
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #8
	mov	r0, #0x10
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x10
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x23
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r0, #0x37
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x10
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0xb
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xa
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #8
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #8
	mov	r0, #0x10
	neg	r1, r1
	mov	r2, #0x10
	bl	__Func_8092304
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x10
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x32
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0xa
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #8
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0xa
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	b	.L126c

	.pool_aligned

.L126c:
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x10
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0xa
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0x10
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #8
	mov	r2, #0
	bl	__Func_8092304
	mov	r0, #0xa
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x18
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092304
	mov	r0, #0x85
	bl	__PlaySound
	mov	r2, #0
	mov	r0, #0x10
	mov	r1, #6
	bl	__MapActor_Jump
	ldr	r1, =gScript_942__020096e4
	mov	r0, #0x10
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #6
	mov	r0, #0xa
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc
	neg	r1, r1
	mov	r2, #4
	mov	r0, #0xa
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, r0
	mov	r3, r1
	mov	r2, r10
	add	r3, #0x59
	strb	r2, [r3]
	mov	r2, r1
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	ldr	r2, [r1, #0x50]
	ldrb	r3, [r2, #9]
	mov	r0, r8
	orr	r3, r0
	strb	r3, [r2, #9]
	ldr	r3, [r1, #0x50]
	mov	r2, r10
	add	r3, #0x26
	strb	r2, [r3]
	mov	r5, #0xc0
	ldr	r3, [r1, #0x50]
	lsl	r5, #8
	mov	r1, #0xc
	strh	r5, [r3, #0x1e]
	mov	r0, #0xa
	neg	r1, r1
	mov	r2, #4
	bl	__Func_8092304
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0x9f
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r2, r5
	mov	r0, #0xb
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0xb
	mov	r1, #0x18
	mov	r2, #0
	bl	__Func_8092304
	mov	r2, #0
	mov	r1, r5
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x10
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x10
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #8
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0x10
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x10
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x18
	mov	r0, #0x10
	mov	r1, #0x18
	neg	r2, r2
	bl	__Func_8092304
	mov	r0, #0x10
	mov	r1, #8
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #8
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0xd
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__CutsceneEnd
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_2008e40

	.section .data
	.global gScript_930__020096b8
	.global .L16ce
	.global .L18d4
	.global gOvl_020098ec
	.global .L19c4
	.global .L1acc
	.global gOvl_02009ba4
	.global .L1c7c
	.global .L1d24
	.global .L1dcc
	.global .L1e74
	.global .L1e80
	.global GFX_Thermometer
	.global .L2018
	.global .L2120
	.global .L224c
	.global .L230c
	.global .L2390
	.global .L1708
	.global .L1738
	.global .L17c8
	.global .L1840

gScript_930__020096b8:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x16b8, (0x16ce-0x16b8)
.L16ce:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x16ce, (0x16e4-0x16ce)
	.global gScript_942__020096e4
gScript_942__020096e4:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x16e4, (0x1708-0x16e4)
.L1708:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1708, (0x1738-0x1708)
.L1738:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1738, (0x17c8-0x1738)
.L17c8:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x17c8, (0x1840-0x17c8)
.L1840:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1840, (0x18a0-0x1840)
	.global gOvl_020098a0
gOvl_020098a0:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x18a0, (0x18d4-0x18a0)
.L18d4:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x18d4, (0x18ec-0x18d4)
gOvl_020098ec:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x18ec, (0x19c4-0x18ec)
.L19c4:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x19c4, (0x1acc-0x19c4)
.L1acc:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1acc, (0x1ba4-0x1acc)
gOvl_02009ba4:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1ba4, (0x1c7c-0x1ba4)
.L1c7c:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1c7c, (0x1d24-0x1c7c)
.L1d24:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1d24, (0x1dcc-0x1d24)
.L1dcc:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1dcc, (0x1e74-0x1dcc)
.L1e74:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1e74, (0x1e80-0x1e74)
.L1e80:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1e80, (0x1fa0-0x1e80)
GFX_Thermometer:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1fa0, (0x2018-0x1fa0)
.L2018:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x2018, (0x2120-0x2018)
.L2120:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x2120, (0x224c-0x2120)
.L224c:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x224c, (0x230c-0x224c)
.L230c:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x230c, (0x2390-0x230c)
.L2390:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x2390
