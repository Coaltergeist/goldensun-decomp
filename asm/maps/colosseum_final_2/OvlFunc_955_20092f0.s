	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_20092f0
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.Lm955_130a
	bl	OvlFunc_common1_2c4
	b	.Lm955_1412
.Lm955_130a:
	bl	__CutsceneStart
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_common1_4cc
	mov	r7, r0
	cmp	r7, #0
	bne	.Lm955_13f2
	ldr	r0, =0x209e
	bl	__MessageID
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x99
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #19
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x9f
	lsl	r1, #3
	mov	r2, #0xa8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r5, #0xa1
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r5, #3
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r2, #0xb8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, r5
	mov	r2, #0xd8
	sub	r5, #0x40
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r2, #0xd8
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, r5
	mov	r2, #0xf8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x95
	mov	r2, #0xf8
	lsl	r1, #3
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, #3
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r1, #0x1c
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, r6
	bl	__ActorMessage
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_common1_588
	b	.Lm955_1404
.Lm955_13f2:
	cmp	r7, #1
	bne	.Lm955_1404
	ldr	r0, =0x209d
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
.Lm955_1404:
	mov	r1, r6
	mov	r2, #1
	mov	r0, r7
	bl	OvlFunc_common1_5e4
	bl	__CutsceneEnd
.Lm955_1412:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20092f0

