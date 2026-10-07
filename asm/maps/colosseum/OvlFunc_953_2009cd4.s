	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_953_2009cd4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__CutsceneStart
	mov	r1, #0xc6
	mov	r2, #0x88
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xce
	mov	r2, #0x88
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0x98
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #3
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	bl	__Func_80933f8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r9, r3
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x43
	str	r3, [r2]
	sub	r3, #0x3b
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	ldr	r0, =0x10002
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r0, #8
	mov	r1, r8
	bl	OvlFunc_953_2009c5c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x20f8
	bl	__MessageID
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #8
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, r8
	bl	OvlFunc_953_2009c5c
	ldr	r1, =0x105
	mov	r2, #0x14
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r0, #9
	bl	OvlFunc_953_2009c48
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	OvlFunc_953_2009c48
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0xb
	bl	OvlFunc_953_2009c48
	mov	r3, #0xa0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #2
	mov	r1, r10
	bl	OvlFunc_953_2009c5c
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	mov	r5, #0xc0
	mov	r1, #2
	mov	r0, #1
	lsl	r5, #7
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_953_2009c48
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_953_2009c5c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_953_2009c5c
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r6, #0x80
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	lsl	r6, #6
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_953_2009c5c
	mov	r0, #1
	bl	OvlFunc_953_2009c48
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0x83
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #1
	mov	r7, #0xc0
	lsl	r7, #8
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r7
	mov	r0, #2
	bl	OvlFunc_953_2009c5c
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, r7
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, r8
	bl	OvlFunc_953_2009c5c
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #8
	bl	OvlFunc_953_2009c48
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
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #9
	bl	OvlFunc_953_2009c48
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	OvlFunc_953_2009c48
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #2
	mov	r1, r7
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, r7
	bl	OvlFunc_953_2009c5c
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0xb
	bl	OvlFunc_953_2009c48
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #3
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0x83
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #1
	mov	r5, #0xe0
	bl	__MapActor_Emote
	lsl	r5, #8
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r5
	mov	r0, #2
	bl	OvlFunc_953_2009c5c
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #0xb
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #1
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	mov	r5, #0
	bl	__Func_8091c7c
	b	.Lm953_2154

	.pool_aligned

.Lm953_2154:
	cmp	r0, #1
	bne	.Lm953_2162
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r5, #1
	b	.Lm953_2188
.Lm953_2162:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, r7
	bl	OvlFunc_953_2009c5c
	mov	r0, #2
	bl	OvlFunc_953_2009c48
.Lm953_2188:
	cmp	r5, #0
	beq	.Lm953_219c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm953_219c:
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #9
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r5, #0xc0
	mov	r2, #0x3c
	mov	r0, #0xb
	ldr	r1, =0x105
	bl	__MapActor_Emote
	lsl	r5, #6
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_953_2009c5c
	mov	r0, #8
	bl	OvlFunc_953_2009c48
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
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r5
	mov	r0, #9
	bl	OvlFunc_953_2009c5c
	mov	r0, #9
	bl	OvlFunc_953_2009c48
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0xa
	mov	r6, #0x80
	bl	OvlFunc_953_2009c5c
	lsl	r6, #8
	mov	r0, #0xa
	bl	OvlFunc_953_2009c48
	mov	r1, r6
	mov	r0, #0xb
	bl	OvlFunc_953_2009c5c
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0xb
	bl	OvlFunc_953_2009c48
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #1
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #2
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #3
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_953__0200adac
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0xb
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	ldr	r1, =0x33e
	mov	r2, #0x98
	bl	__MapActor_TravelToWait
	mov	r1, #0xca
	mov	r0, #0xb
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__MapActor_TravelToWait
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0xb
	bl	__MapActor_TravelTo
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xca
	mov	r1, #1
	mov	r2, #0x9c
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r1, #0xca
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x28
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x40
	bl	__Func_8091e9c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2009cd4

