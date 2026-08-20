	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2008ca0
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_cba
	b	.Lm943_1046
.Lm943_cba:
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #0x14
	bl	__MapActor_Face
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0xbe
	mov	r1, #1
	mov	r2, #0xb1
	mov	r3, #1
	lsl	r2, #18
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	ldr	r5, =0x4016
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_80925cc
	ldr	r0, =0x1d26
	bl	__MessageID
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_80925cc
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r11, r3
	mov	r1, r11
	mov	r0, #0x14
	bl	OvlFunc_943_200ba00
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r9, r3
	ldr	r6, =0x4017
	mov	r0, #0x17
	mov	r1, r9
	bl	OvlFunc_943_200ba00
	mov	r1, #3
	mov	r0, #0x17
	bl	__MapActor_SetAnim
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x16
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x17
	mov	r1, #0
	bl	OvlFunc_943_200ba00
	mov	r1, #4
	mov	r0, #0x17
	bl	__MapActor_DoAnim
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #0x14
	mov	r1, r10
	bl	OvlFunc_943_200ba00
	mov	r0, #0x17
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x83
	mov	r2, #0x28
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r8, r3
	mov	r1, r8
	mov	r0, #0x16
	bl	OvlFunc_943_200ba00
	ldr	r0, =_MSG_1d40
	bl	__MessageID
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x84
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0x17
	bl	__MapActor_Emote
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0x16
	bl	OvlFunc_943_200ba00
	mov	r0, #0x16
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x16
	mov	r1, r8
	bl	OvlFunc_943_200ba00
	mov	r1, #4
	mov	r0, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x14
	mov	r1, r11
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x17
	mov	r1, r9
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, r10
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x81
	mov	r0, #0x17
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x14
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xb6
	mov	r1, #1
	mov	r2, #0xbe
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	ldr	r2, =0x6666
	mov	r0, #0x17
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r1, =ActorCmd_ARRAY_943__0200c464
	mov	r0, #0x17
	bl	__MapActor_SetBehavior
	ldr	r2, =0x6666
	mov	r0, #0x16
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_943__0200c49c
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xbe
	lsl	r2, #2
	mov	r0, #0x14
	mov	r1, #0xb6
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x14
	mov	r1, r10
	bl	OvlFunc_943_200ba00
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, r9
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xd8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x3160000
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r1, =0x13333
	mov	r0, #0x14
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	mov	r1, #0xb6
	ldr	r2, =0x30e
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xca
	mov	r0, #0x14
	mov	r1, #0xc0
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xca
	lsl	r2, #2
	mov	r0, #0x14
	mov	r1, #0xd8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	mov	r1, r10
	bl	OvlFunc_943_200ba00
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_80925cc
	bl	OvlFunc_943_2008bf0
	mov	r0, #0x14
	mov	r1, #0xd8
	ldr	r2, =0x31e
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	mov	r0, #0x92
	lsl	r0, #4
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm943_1046:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2008ca0

