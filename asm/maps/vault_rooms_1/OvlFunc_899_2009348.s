	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_2009348
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r2, =0x6666
	mov	r0, #2
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r1, #3
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r5, =0x12c5
	mov	r1, #1
	mov	r0, r5
	add	r5, #1
	bl	__Func_801776c
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc6
	mov	r2, #0xdc
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r1, #0xc6
	mov	r2, #0xdc
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc6
	mov	r2, #0xdc
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0xd8
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r1, #0xc6
	mov	r2, #0xe4
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #2
	bl	__MapActor_TravelToAnim
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #8
	mov	r2, #0x3c
	bl	OvlFunc_899_200c60c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xba
	mov	r2, #0xcc
	lsl	r2, #17
	lsl	r1, #18
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #0x3d
	bl	__PlaySound
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xa
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #8
	mov	r1, #0xa
	mov	r2, #0x28
	bl	OvlFunc_899_200c60c
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xba
	mov	r2, #0xcc
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xba
	mov	r2, #0xcc
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc6
	mov	r2, #0xd0
	mov	r0, #0xa
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xa
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0xa
	bl	__MapActor_Face
	ldr	r1, =gScript_899__0200d248
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r1, =gScript_899__0200d2ac
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #0xc
	bl	__MapActor_WaitScript
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #0x28
	bl	OvlFunc_899_200c5f4
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #8
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #2
	bl	OvlFunc_899_200c60c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x14
	b	.Lm899_1764

	.pool_aligned

.Lm899_1764:
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #0xa
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #0xc
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
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
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #0
	mov	r0, #0xa
	bl	__ShowActorMessage_NoWait
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm899_1854
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0xa
	bl	__MapActor_Face
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm899_1894
.Lm899_1854:
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #0xa
	mov	r0, #2
	bl	__MapActor_Face
	ldr	r5, =0x12dc
	mov	r0, r5
	bl	__MessageID
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	sub	r5, #3
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, r5
	bl	__MessageID
.Lm899_1894:
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #0xb
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #0xc
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xc
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #0xb
	bl	OvlFunc_899_200c624
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #0xc
	bl	OvlFunc_899_200c624
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	ldr	r0, =0x854
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	ldr	r5, =0x15
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	mov	r0, r5
	mov	r1, #0x11
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #0x10
	bl	__Func_8091fa8
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0xc
	mov	r1, #5
	bl	__StartMapBattle
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009348

