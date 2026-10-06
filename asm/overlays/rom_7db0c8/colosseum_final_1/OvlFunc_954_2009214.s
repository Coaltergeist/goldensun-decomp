	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_2009214
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.Lm954_122e
	bl	OvlFunc_common1_2c4
	b	.Lm954_13d0
.Lm954_122e:
	bl	__CutsceneStart
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_common1_4cc
	mov	r7, r0
	cmp	r7, #0
	beq	.Lm954_1242
	b	.Lm954_13b0
.Lm954_1242:
	ldr	r0, =0x208c
	bl	__MessageID
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xa4
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x8c
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xb4
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r5, #0x94
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r5, #1
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r2, #0xb8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, r5
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0xf
	mov	r0, #0
	bl	__Func_8092adc
	bl	OvlFunc_common1_2060
	mov	r0, #0
	bl	OvlFunc_common1_1314
	bl	OvlFunc_common1_2060
	mov	r0, #0
	bl	OvlFunc_common1_1314
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x98
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xc0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xc8
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xf
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092adc
	bl	OvlFunc_common1_2060
	mov	r0, #0
	bl	OvlFunc_common1_1314
	bl	OvlFunc_common1_2060
	mov	r0, #0
	bl	OvlFunc_common1_1314
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, r6
	bl	__ActorMessage
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	mov	r1, #0x9c
	mov	r2, #0xa8
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_common1_588
	b	.Lm954_13c2
.Lm954_13b0:
	cmp	r7, #1
	bne	.Lm954_13c2
	ldr	r0, =0x208b
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
.Lm954_13c2:
	mov	r1, r6
	mov	r2, #1
	mov	r0, r7
	bl	OvlFunc_common1_5e4
	bl	__CutsceneEnd
.Lm954_13d0:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2009214

