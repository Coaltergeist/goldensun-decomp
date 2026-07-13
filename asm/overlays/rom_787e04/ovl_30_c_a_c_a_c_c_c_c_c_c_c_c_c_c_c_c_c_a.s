	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_2008f90
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x239
	ldr	r2, =0x189
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1c66
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x50
	bl	__Func_8093040
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0x3c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0x92
	mov	r2, #0xcb
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #8
	bl	__MapActor_TravelTo
	mov	r0, #0xb
	bl	__Func_80118c0
	mov	r0, #0xc
	bl	__Func_80118a8
	mov	r1, #0xc
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x84
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #0xd
	bl	__MapActor_DoAnim
	mov	r2, #0
	mov	r0, #8
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #0xb
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0xc
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #0xd
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L10ea
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L10ea:
	ldr	r0, =0x81c
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1100
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
.L1100:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	ldr	r1, =0x107
	mov	r2, #0x3c
	mov	r0, #8
	bl	__MapActor_Emote
	ldr	r5, =0x1c6f
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L1144
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1144:
	ldr	r0, =0x81c
	bl	__GetFlag
	cmp	r0, #0
	beq	.L115a
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
.L115a:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x3c
	ldr	r1, =0x107
	mov	r0, #8
	bl	__MapActor_Emote
	add	r0, r5, #3
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0xc2
	strb	r3, [r0]
	ldr	r1, =0x22e
	mov	r0, #0
	lsl	r2, #1
	bl	__MapActor_TravelTo
	ldr	r2, =0x9999
	mov	r0, #8
	ldr	r1, =0x13333
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #0xe
	bl	__MapActor_SetAnim
	mov	r2, #0xc8
	ldr	r1, =0x24a
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_8092158
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x91
	mov	r2, #0xbf
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0x28
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0xc0
	strb	r3, [r0]
	lsl	r1, #8
	mov	r0, #8
	mov	r2, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #8
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #8
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0x28
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r1, #0x8f
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	ldr	r0, =0x81e
	bl	__SetFlag
	ldr	r0, =0x203
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008f90

.thumb_func_start OvlFunc_887_200933c
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	beq	.L136e
	mov	r1, #0x80
	lsl	r1, #9
	ldr	r2, =gScript_887__02009e6c
	mov	r0, #8
	bl	__Func_8092a1c
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1c77
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L1398
.L136e:
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r5, =0x1c79
	mov	r0, r5
	bl	__MessageID
	add	r5, #1
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r0, r5
	mov	r1, #1
	bl	__Func_801776c
.L1398:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_200933c

