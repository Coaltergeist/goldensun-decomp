	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200ca08
	push	{r5, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm924_4a1c
	ldr	r2, =0xfffff
	add	r3, r2
.Lm924_4a1c:
	asr	r3, #20
	cmp	r3, #0x30
	beq	.Lm924_4a24
	b	.Lm924_4c40
.Lm924_4a24:
	bl	__CutsceneStart
	ldr	r5, =0x1591
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x10
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #3
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm924_4b3e
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm924_4b3e
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #5
	b	.Lm924_4b26
.Lm924_4b10:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1639
.Lm924_4b26:
	bl	__MessageID
	mov	r1, #0
	mov	r0, #3
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	beq	.Lm924_4b10
.Lm924_4b3e:
	ldr	r0, =0x1597
	bl	__MessageID
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xb6
	mov	r2, #0x9e
	lsl	r1, #2
	lsl	r2, #2
	mov	r0, #3
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #3
	mov	r1, #0x10
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #3
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__MapActor_Face
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r2, #0x5a
	mov	r0, #3
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80917d0
	mov	r0, #0x44
	bl	__SetFlag
	mov	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__GiveDjinni
	mov	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__SetDjinni
	mov	r0, #3
	bl	__CalcStats
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm924_4c12
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.Lm924_4c12:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, #0x2e
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x27
	mov	r2, #5
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x873
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm924_4c40:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200ca08

