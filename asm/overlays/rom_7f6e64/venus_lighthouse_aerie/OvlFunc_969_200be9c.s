	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_200be9c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ShowActorMessage_NoWait
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_969_20088a8
	mov	r0, #0
	mov	r1, #0
	mov	r5, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm969_3f08
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r5, #1
	b	.Lm969_3f26
.Lm969_3f08:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm969_3f26:
	mov	r0, #2
	bl	OvlFunc_969_2008894
	cmp	r5, #0
	beq	.Lm969_3f40
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm969_3f40:
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	mov	r6, #0x80
	bl	__MapActor_SetSpeed
	ldr	r5, =0x1001
	lsl	r6, #6
	mov	r2, #0xae
	mov	r0, #1
	ldr	r1, =0x141
	bl	__MapActor_TravelToAnimWait
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r10, r3
	mov	r1, r10
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	mov	r3, #0x80
	lsl	r3, #7
	mov	r8, r3
	mov	r1, r8
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, r6
	mov	r2, #0x14
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	ldr	r0, =0x8001
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r0, #0x11
	bl	__PlaySound
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r1, r8
	mov	r0, #1
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, r10
	mov	r0, #2
	bl	OvlFunc_969_20088a8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r2, #0x28
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x15
	mov	r1, #0xc8
	mov	r2, #0xbc
	bl	__MapActor_TravelTo
	mov	r2, #0xcc
	mov	r0, #6
	mov	r1, #0xc8
	bl	__MapActor_TravelTo
	ldr	r0, =0x33333
	ldr	r1, =0x6666
	bl	__Func_80933d4
	mov	r0, #0xfc
	mov	r2, #0xbe
	mov	r3, #1
	lsl	r2, #16
	mov	r1, #0
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x17
	bl	__PlaySound
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__MapActor_Surprise
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #6
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #6
	bl	__MapActor_Surprise
	ldr	r5, =0x2003
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	add	r6, #2
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #0x15
	bl	OvlFunc_969_20088a8
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage_Wait
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Surprise
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__MapActor_Emote
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200be9c

