	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_20096d4
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.Lm955_16ee
	bl	OvlFunc_common1_2c4
	b	.Lm955_1884
.Lm955_16ee:
	bl	__CutsceneStart
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_common1_4cc
	mov	r7, r0
	cmp	r7, #0
	beq	.Lm955_1702
	b	.Lm955_1864
.Lm955_1702:
	ldr	r0, =0x20aa
	bl	__MessageID
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x86
	mov	r1, #1
	mov	r2, #0xf0
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x2d
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0x86
	mov	r1, #1
	mov	r2, #0xc0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	mov	r5, #0x84
	bl	__Func_8093530
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	lsl	r5, #1
	mov	r1, #0x9e
	lsl	r1, #2
	mov	r2, r5
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x9a
	mov	r0, #0
	lsl	r1, #2
	mov	r2, r5
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	bl	__Func_8093fa0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #7
	lsl	r1, #4
	bl	__Func_80933d4
	mov	r0, #0x86
	mov	r1, #1
	mov	r2, #0xa0
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xa
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r2, [r0, #0xc]
	lsl	r3, #15
	ldr	r1, [r0, #8]
	add	r2, r3
	ldr	r3, [r0, #0x10]
	bl	__Actor_TravelTo
	mov	r0, #0
	bl	__MapActor_WaitMovement
	bl	__Func_8093fa0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r0, r0
	neg	r1, r1
	bl	__Func_80933f8
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xf4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092708
	mov	r0, #0x86
	mov	r1, #1
	mov	r2, #0xa0
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, #0
	mov	r0, r6
	bl	__ActorMessage
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_common1_588
	b	.Lm955_1876
.Lm955_1864:
	cmp	r7, #1
	bne	.Lm955_1876
	ldr	r0, =0x20a9
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
.Lm955_1876:
	mov	r1, r6
	mov	r2, #4
	mov	r0, r7
	bl	OvlFunc_common1_5e4
	bl	__CutsceneEnd
.Lm955_1884:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20096d4

