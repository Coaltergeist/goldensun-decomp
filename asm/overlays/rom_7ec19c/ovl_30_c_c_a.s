	.include "macros.inc"

.thumb_func_start OvlFunc_962_2008240
	push	{lr}
	mov	r0, #0x9b
	lsl	r0, #4
	bl	__SetFlag
	ldr	r0, =0x98a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L256
	b	.La40
.L256:
	mov	r0, #0x1e
	bl	__PlaySound
	bl	__CutsceneStart
	mov	r0, #0xb8
	mov	r1, #1
	mov	r2, #0xd0
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r1, #0xb8
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xa0
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x10
	mov	r3, #0xc0
	lsl	r3, #8
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_809233c
	mov	r0, #0x13
	bl	__MapActor_WaitMovement
	bl	__Func_8093530
	ldr	r0, =0x25eb
	bl	__MessageID
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x13
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r2, #0x10
	mov	r0, #0x13
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x13
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x13
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r2, #0x18
	mov	r0, #0x13
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r0, #0x13
	mov	r1, #0x30
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x13
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x13
	ldr	r1, =0x107
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r1, #0xb8
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x68
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_8092304
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0x13
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x15
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x15
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	b	.L658

	.pool_aligned

.L658:
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r1, #0x15
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x13
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0x32
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x13
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_8092848
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0x13
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0x15
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092848
	mov	r1, #0xc
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L97c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x13
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
	b	.L99a
.L97c:
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
.L99a:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0x13
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x13
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x1e
	bl	__PlaySound
	mov	r0, #0x13
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0x13
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.La22
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x13
	bl	__MapActor_TravelTo
.La22:
	mov	r0, #0x13
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__PlayMapMusic
	bl	__CutsceneEnd
.La40:
	pop	{r0}
	bx	r0
.func_end OvlFunc_962_2008240

