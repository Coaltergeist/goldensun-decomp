	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_2009538
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.Lm955_1556
	bl	OvlFunc_common1_2c4
	b	.Lm955_16be
.Lm955_1556:
	bl	__CutsceneStart
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_common1_4cc
	mov	r8, r0
	cmp	r0, #0
	beq	.Lm955_156a
	b	.Lm955_169c
.Lm955_156a:
	ldr	r0, =0x20a6
	bl	__MessageID
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xbc
	mov	r1, #1
	mov	r2, #0xc0
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xbc
	mov	r1, #1
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	mov	r5, #0xd6
	mov	r6, #0x84
	bl	__Func_80933f8
	lsl	r5, #2
	bl	__Func_8093530
	lsl	r6, #1
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r2, #0xe8
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xd2
	lsl	r1, #2
	mov	r2, #0xe8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x40
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0x21
	bl	OvlFunc_955_2008310
	mov	r0, #0xbc
	mov	r1, #1
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
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
	mov	r1, #0xbe
	lsl	r1, #2
	mov	r2, #0xe8
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, r7
	bl	__ActorMessage
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	mov	r1, #0xd2
	mov	r2, #0xe8
	mov	r0, #0x21
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_common1_588
	b	.Lm955_16b0
.Lm955_169c:
	mov	r3, r8
	cmp	r3, #1
	bne	.Lm955_16b0
	ldr	r0, =0x20a5
	bl	__MessageID
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
.Lm955_16b0:
	mov	r1, r7
	mov	r2, #3
	mov	r0, r8
	bl	OvlFunc_common1_5e4
	bl	__CutsceneEnd
.Lm955_16be:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2009538

