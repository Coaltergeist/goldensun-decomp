	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_20096ec
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.Lm954_1706
	bl	OvlFunc_common1_2c4
	b	.Lm954_1884
.Lm954_1706:
	bl	__CutsceneStart
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_common1_4cc
	mov	r7, r0
	cmp	r7, #0
	beq	.Lm954_171a
	b	.Lm954_1864
.Lm954_171a:
	ldr	r0, =0x2099
	bl	__MessageID
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x88
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #19
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0x48
	mov	r0, #0x78
	bl	OvlFunc_common1_1490
	mov	r1, #0
	mov	r0, r6
	bl	__ActorMessage
	bl	OvlFunc_common1_1550
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #0xf6
	lsl	r1, #2
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r5, #0xfa
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	lsl	r5, #2
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r2, #0xc0
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, r5
	mov	r2, #0xb0
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0xfe
	lsl	r1, #2
	mov	r2, #0xa8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0x12
	bl	OvlFunc_954_200833c
	mov	r0, #0x88
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #19
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x95
	lsl	r1, #3
	mov	r2, #0xa8
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, r6
	bl	__ActorMessage
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	mov	r1, #0xfe
	mov	r2, #0xa8
	mov	r0, #0x12
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_common1_588
	b	.Lm954_1876
.Lm954_1864:
	cmp	r7, #1
	bne	.Lm954_1876
	ldr	r0, =0x2098
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
.Lm954_1876:
	mov	r1, r6
	mov	r2, #4
	mov	r0, r7
	bl	OvlFunc_common1_5e4
	bl	__CutsceneEnd
.Lm954_1884:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_20096ec

