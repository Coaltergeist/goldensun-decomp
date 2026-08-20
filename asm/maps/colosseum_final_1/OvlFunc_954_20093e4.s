	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_20093e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.Lm954_1404
	bl	OvlFunc_common1_2c4
	b	.Lm954_15be
.Lm954_1404:
	bl	__CutsceneStart
	mov	r0, r7
	mov	r1, #2
	bl	OvlFunc_common1_4cc
	mov	r10, r0
	cmp	r0, #0
	beq	.Lm954_1418
	b	.Lm954_159c
.Lm954_1418:
	ldr	r0, =0x2090
	bl	__MessageID
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x94
	mov	r1, #1
	mov	r2, #0xf0
	lsl	r2, #15
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x40
	mov	r2, #0
	mov	r0, #0x38
	bl	OvlFunc_common1_1490
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r1, #0x60
	mov	r0, #0xa0
	bl	OvlFunc_common1_14f4
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, r7
	bl	__ActorMessage
	bl	OvlFunc_common1_1550
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	ldr	r6, =0xcccc
	ldr	r3, =0x6666
	mov	r2, #0x80
	mov	r8, r3
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x34]
	lsl	r2, #12
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x30]
	bl	__Actor_TravelTo
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r3, r8
	mov	r2, #0x80
	ldr	r1, [r5, #8]
	lsl	r2, #14
	str	r3, [r5, #0x34]
	str	r6, [r5, #0x30]
	ldr	r3, [r5, #0x10]
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r0, #0x2d
	bl	__CutsceneWait
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r3, r8
	mov	r2, #0xc0
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x34]
	lsl	r2, #13
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x30]
	bl	__Actor_TravelTo
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r3, r8
	mov	r2, #0
	ldr	r1, [r5, #8]
	str	r3, [r5, #0x34]
	str	r6, [r5, #0x30]
	ldr	r3, [r5, #0x10]
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x40
	mov	r2, #0
	mov	r0, #0x38
	bl	OvlFunc_common1_1490
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x60
	mov	r2, #0xa
	mov	r0, #0xa0
	bl	OvlFunc_common1_14f4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r1, #0x40
	mov	r0, #0x38
	bl	OvlFunc_common1_14f4
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, r7
	bl	__ActorMessage
	bl	OvlFunc_common1_1550
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	mov	r0, r7
	mov	r1, #2
	bl	OvlFunc_common1_588
	b	.Lm954_15b0
.Lm954_159c:
	mov	r2, r10
	cmp	r2, #1
	bne	.Lm954_15b0
	ldr	r0, =0x208f
	bl	__MessageID
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
.Lm954_15b0:
	mov	r1, r7
	mov	r2, #2
	mov	r0, r10
	bl	OvlFunc_common1_5e4
	bl	__CutsceneEnd
.Lm954_15be:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_20093e4

