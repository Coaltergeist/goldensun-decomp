	.include "macros.inc"

.thumb_func_start OvlFunc_966_2008218
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x2694
	bl	__MessageID
	mov	r1, #0xf8
	mov	r2, #0xd4
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_SetAnim
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x10
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r1, #8
	neg	r2, r2
	mov	r0, #0x16
	bl	__Func_809233c
	mov	r0, #0x16
	bl	__MapActor_WaitMovement
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0x16
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #8
	mov	r2, #0x28
	bl	__Func_809280c
	mov	r0, #0x16
	mov	r1, #9
	mov	r2, #0x28
	bl	__Func_809280c
	mov	r2, #0x28
	mov	r1, #8
	mov	r0, #0x16
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8092c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #0x16
	mov	r1, #8
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #9
	bl	__Func_809280c
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #0x16
	mov	r1, #9
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r0, #0x16
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0x16
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x16
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0xc0
	mov	r0, #0x16
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	b	.L62c

	.pool_aligned

.L62c:
	mov	r0, #0x16
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r0, #0x16
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r0, #0x16
	mov	r1, #8
	mov	r2, #0x28
	bl	__Func_809280c
	mov	r0, #0x16
	mov	r1, #9
	mov	r2, #0x28
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x1e
	mov	r1, #9
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0x46
	bl	__Func_809280c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x16
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L79a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__MapActor_TravelTo
.L79a:
	mov	r0, #0x16
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_2008218

.thumb_func_start OvlFunc_966_20087c4
	push	{r5, r6, lr}
	ldr	r0, =0x9ba
	sub	sp, #8
	bl	__SetFlag
	bl	__CutsceneStart
	ldr	r0, =0x288e
	bl	__MessageID
	mov	r2, #0xbc
	mov	r0, #0
	mov	r1, #0x68
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x20
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	mov	r3, #0
	bl	__Func_809233c
	mov	r1, #0x10
	mov	r3, #0xe0
	mov	r0, #3
	neg	r1, r1
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #2
	bl	__Func_809233c
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L88c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L8b8

	.pool_aligned

.L88c:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
.L8b8:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x10
	mov	r0, #0
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r2, #0x10
	mov	r0, #2
	mov	r1, #0
	neg	r2, r2
	bl	__Func_80922c4
	mov	r2, #8
	mov	r0, #3
	mov	r1, #0
	neg	r2, r2
	bl	__Func_80922c4
	mov	r2, #0x10
	neg	r2, r2
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092304
	mov	r0, #3
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r2, =0x6666
	ldr	r1, =0xcccc
	mov	r0, #0x16
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_8092b08
	mov	r5, #4
	mov	r3, #2
	mov	r1, #0
	mov	r2, #1
	mov	r6, #0x12
	mov	r0, #0x22
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r2, #0x9c
	lsl	r1, #15
	lsl	r2, #17
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_8092304
	mov	r3, #2
	mov	r2, #1
	mov	r1, #0
	mov	r0, #0x20
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x9f
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
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
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092848
	mov	r0, #0x3c
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
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lc1c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lc48

	.pool_aligned

.Lc1c:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
.Lc48:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x83
	mov	r2, #0x32
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r2, #0xa6
	lsl	r2, #17
	mov	r0, #0x19
	lsl	r1, #15
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0xd
	bl	__MapActor_Jump
	mov	r2, #0x1e
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x9bf
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lcfe
	bl	OvlFunc_966_2009090
.Lcfe:
	ldr	r0, =0x28a5
	bl	__MessageID
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x19
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_809228c
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0x16
	bl	__Func_8092304
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	mov	r0, #0xf2
	bl	__Func_8091a58
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0x10
	strb	r3, [r0]
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0x16
	bl	__Func_8092304
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0x82
	strb	r3, [r0]
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
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
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x10
	mov	r0, #0x16
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r5, #4
	mov	r3, #2
	mov	r1, #0
	mov	r2, #1
	mov	r6, #0x12
	mov	r0, #0x22
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x10
	mov	r0, #0x16
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, #2
	mov	r1, #0
	mov	r2, #1
	mov	r0, #0x20
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x9f
	bl	__PlaySound
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L100c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
	b	.L100c

	.pool_aligned

.L100c:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L103c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.L103c:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L106c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.L106c:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_20087c4

.thumb_func_start OvlFunc_966_2009090
	push	{lr}
	ldr	r0, =0x28b0
	bl	__MessageID
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x37
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x41
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_2009090

.thumb_func_start OvlFunc_966_20091bc
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x28b7
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_20091bc

