	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_960_2008838
	push	{lr}
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm960_848
	b	.Lm960_9ae
.Lm960_848:
	ldr	r0, =0x1b7
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_854
	b	.Lm960_9ae
.Lm960_854:
	mov	r0, #0x9b
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm960_862
	b	.Lm960_9ae
.Lm960_862:
	ldr	r0, =0x9b5
	bl	__SetFlag
	bl	__CutsceneStart
	ldr	r0, =0x2633
	bl	__MessageID
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm960_886
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xd
	bl	__MapActor_SetPos
.Lm960_886:
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0xdc
	mov	r2, #0x9d
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xde
	mov	r2, #0x9b
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #0xd
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8093054
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x83
	mov	r2, #0x3c
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xd
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__MapActor_SetSpeed
	mov	r1, #0xdc
	mov	r2, #0x9d
	lsl	r2, #3
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xd
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm960_99a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xd
	bl	__MapActor_TravelTo
.Lm960_99a:
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
.Lm960_9ae:
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008838

