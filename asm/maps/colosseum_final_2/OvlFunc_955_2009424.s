	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_2009424
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.Lm955_143e
	bl	OvlFunc_common1_2c4
	b	.Lm955_1524
.Lm955_143e:
	bl	__CutsceneStart
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_common1_4cc
	mov	r7, r0
	cmp	r7, #0
	bne	.Lm955_1504
	ldr	r0, =0x20a2
	bl	__MessageID
	bl	OvlFunc_955_20088ec
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xf6
	mov	r1, #1
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0
	mov	r0, r6
	bl	__ActorMessage
	mov	r5, #0x87
	bl	OvlFunc_955_2008950
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	lsl	r5, #3
	mov	r2, #0x84
	lsl	r2, #1
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r2, #0xd8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x85
	lsl	r1, #3
	mov	r2, #0xd8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	bl	OvlFunc_955_2008970
	bl	__Func_8093c00
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
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
	mov	r1, #2
	bl	OvlFunc_common1_588
	b	.Lm955_1516
.Lm955_1504:
	cmp	r7, #1
	bne	.Lm955_1516
	ldr	r0, =0x20a1
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
.Lm955_1516:
	mov	r1, r6
	mov	r2, #2
	mov	r0, r7
	bl	OvlFunc_common1_5e4
	bl	__CutsceneEnd
.Lm955_1524:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2009424

