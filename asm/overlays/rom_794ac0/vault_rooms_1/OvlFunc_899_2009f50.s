	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_2009f50
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	sub	sp, #8
	ldr	r5, [r3]
	bl	__CutsceneStart
	ldr	r0, =OvlFunc_899_200c8c8
	bl	__StopTask
	ldr	r0, =0x107
	bl	__ClearFlag
	mov	r0, #0x94
	lsl	r0, #2
	bl	__ClearFlag
	mov	r0, #0x18
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x19
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x18
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r0, #0x19
	mov	r1, #2
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0xc1
	lsl	r2, #1
	add	r5, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r6, #0x18
	cmp	r3, #0xc9
	beq	.Lm899_2008
	cmp	r3, #0xc9
	blt	.Lm899_202a
	cmp	r3, #0xcb
	bgt	.Lm899_202a
	ldr	r0, =0x12a4
	bl	__MessageID
	mov	r1, #0x81
	mov	r0, #0x19
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x19
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r6, #0x19
	cmp	r3, #0xca
	beq	.Lm899_202a
.Lm899_2008:
	ldr	r0, =0x12a3
	bl	__MessageID
	mov	r1, #0x81
	mov	r0, #0x18
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x18
	mov	r1, #0x14
	mov	r6, #0x18
	bl	OvlFunc_899_200c5f4
.Lm899_202a:
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, r6
	mov	r0, #2
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_Face
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x12a5
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, r6
	mov	r0, #2
	bl	OvlFunc_899_200c658
	bl	__Func_8097adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x18
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x19
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	bl	OvlFunc_899_200c684
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0
	mov	r1, #1
	mov	r0, #2
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	mov	r5, #0xd
	ldrb	r2, [r1, #9]
	neg	r5, r5
	mov	r3, r5
	mov	r6, #4
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #1
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #2
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	and	r5, r3
	orr	r5, r6
	ldr	r6, =iwram_3001ebc
	mov	r3, #0xe4
	ldr	r1, [r6]
	lsl	r3, #1
	strb	r5, [r2, #9]
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r5, #0xe0
	ldr	r3, =0x201
	lsl	r5, #1
	str	r3, [r1, r5]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	OvlFunc_899_200a1c8
	mov	r3, #0xe
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0xe
	bl	__Func_8010704
	ldr	r0, =0x853
	bl	__SetFlag
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r3, #5
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r3, #4
	add	r0, #0x64
	mov	r1, #0xc8
	strh	r3, [r0]
	lsl	r1, #4
	ldr	r0, =OvlFunc_899_200aba0
	bl	__StartTask
	ldr	r2, [r6]
	ldr	r3, =0x209
	str	r3, [r2, r5]
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009f50

