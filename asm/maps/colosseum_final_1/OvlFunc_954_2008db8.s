	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_2008db8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	bl	__MapActor_GetActor
	mov	r3, #0xa
	ldrsh	r2, [r0, r3]
	mov	r9, r2
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r10, r2
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r7
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r3, r10
	lsl	r5, r3, #16
	mov	r2, r9
	ldr	r3, =0xffd00000
	lsl	r6, r2, #16
	mov	r0, #0
	add	r2, r5, r3
	mov	r1, r6
	bl	__MapActor_SetPos
	ldr	r3, =0xffd80000
	ldr	r2, =0xfff00000
	add	r3, r5
	mov	r8, r3
	add	r1, r6, r2
	mov	r0, #1
	mov	r2, r8
	bl	__MapActor_SetPos
	mov	r2, #0x80
	lsl	r2, #13
	add	r1, r6, r2
	mov	r0, #2
	mov	r2, r8
	bl	__MapActor_SetPos
	ldr	r3, =0xffe00000
	mov	r0, #3
	add	r2, r5, r3
	mov	r1, r6
	bl	__MapActor_SetPos
	ldr	r2, =0xffb00000
	add	r5, r2
	mov	r2, r5
	mov	r1, r6
	mov	r0, r7
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r1, #0
	mov	r0, #0
	bl	__SetCameraTarget
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	ldr	r0, =0x20cb
	bl	__MessageID
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x3c
	mov	r0, #3
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, r7
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x3c
	mov	r0, #2
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #2
	mov	r0, r7
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r7
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x3c
	mov	r0, #3
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r0, r7
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8093054
	cmp	r0, #0
	beq	.Lm954_f28
	b	.Lm954_1088
.Lm954_f28:
	ldr	r0, =0x20d5
	bl	__MessageID
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, r7
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, r7
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x9c
	mov	r1, #1
	mov	r2, #0xd0
	lsl	r2, #15
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xc2
	mov	r1, #1
	mov	r2, #0xd0
	lsl	r2, #15
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_8093530
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x9b
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r0, #19
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, r7
	lsl	r1, #7
	bl	__MapActor_Face
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xa3
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r0, #19
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r2, #0
	mov	r0, r7
	mov	r1, #0
	bl	__MapActor_Face
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	mov	r0, r7
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8093054
	cmp	r0, #0
	beq	.Lm954_1072
	b	.Lm954_f28
.Lm954_1072:
	mov	r1, #2
	mov	r0, r7
	bl	__Func_80925cc
	ldr	r0, =0x20d4
	bl	__MessageID
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
.Lm954_1088:
	ldr	r0, =0x20e1
	bl	__MessageID
	mov	r0, r7
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm954_1148
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm954_1148:
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm954_1168
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm954_1168:
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm954_1188
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.Lm954_1188:
	mov	r5, r9
	sub	r5, #0x10
	mov	r2, r10
	mov	r0, r7
	mov	r1, r5
	sub	r2, #0x40
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, r10
	mov	r0, r7
	mov	r1, r5
	sub	r2, #0x10
	bl	__MapActor_TravelToAnimWait
	mov	r0, r7
	mov	r1, r9
	mov	r2, r10
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r0, r7
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008db8

