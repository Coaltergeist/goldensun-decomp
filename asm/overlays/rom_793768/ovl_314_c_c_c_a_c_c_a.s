	.include "macros.inc"

.thumb_func_start OvlFunc_898_20091b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r8, r2
	mov	r6, r1
	mov	r10, r3
	bl	__MapActor_GetActor
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r7, r0
	lsl	r1, #10
	mov	r0, r5
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r3, #0x80
	lsl	r3, #8
	mov	r2, r10
	str	r3, [r7, #0x48]
	mov	r3, #0
	str	r3, [r7, #0x44]
	str	r2, [r7, #0x28]
	mov	r0, r7
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, r6
	mov	r2, r8
	bl	__Func_8092158
	mov	r3, r8
	lsl	r3, #16
	mov	r8, r3
	lsl	r6, #16
	mov	r0, r5
	mov	r1, r6
	mov	r2, r8
	bl	__MapActor_SetPos
	mov	r5, #0x3c
	b	.L120c
.L120a:
	sub	r5, #1
.L120c:
	cmp	r5, #0
	beq	.L121e
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0x2a
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	bne	.L120a
.L121e:
	mov	r0, r7
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x48]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20091b0

.thumb_func_start OvlFunc_898_2009238
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x64
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x867
	bl	__GetFlag
	cmp	r0, #0
	bne	.L12b2
	mov	r1, #0x81
	mov	r0, #0x17
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0x17
	bl	__MapActor_Jump
	mov	r0, #0xc
	bl	__CutsceneWait
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0x17
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc4
	mov	r3, #0xe0
	lsl	r3, #11
	lsl	r1, #1
	mov	r2, #0x68
	mov	r0, #0x17
	bl	OvlFunc_898_20091b0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xcc
	mov	r0, #0x17
	lsl	r1, #1
	mov	r2, #0x68
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0x17
	lsl	r1, #1
	mov	r2, #0x78
	bl	__Func_80921c4
	ldr	r0, =0x867
	bl	__SetFlag
.L12b2:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2009238

.thumb_func_start OvlFunc_898_20092c0
	push	{lr}
	mov	r0, #0xe7
	bl	__Func_8078a08
	bl	__CutsceneStart
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xcc
	mov	r1, #0xd8
	lsl	r2, #1
	mov	r0, #0x13
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x13
	bl	__MapActor_Jump
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x13
	bl	__MapActor_Jump
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x13
	bl	__MapActor_Jump
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0xc4
	mov	r1, #0xd8
	lsl	r2, #1
	mov	r0, #0x13
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0x14
	mov	r0, #0x13
	bl	__Func_8092adc
	ldr	r0, =0x858
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20092c0

.thumb_func_start OvlFunc_898_200936c
	push	{r5, r6, r7, lr}
	ldr	r0, =0x87a
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1380
	mov	r0, #0xe
	bl	__Func_8091e9c
.L1380:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L13a0
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x37
	mov	r1, #0x1a
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
.L13a0:
	mov	r0, #0x80
	mov	r2, #0xd2
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_common0_70
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_898_2008314
	mov	r3, r0
	add	r3, #0x64
	mov	r7, #1
	strh	r7, [r3]
	str	r5, [r0, #0x6c]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r3, r0
	mov	r6, #0
	add	r3, #0x64
	strh	r6, [r3]
	str	r5, [r0, #0x6c]
	ldr	r0, =0x858
	bl	__GetFlag
	cmp	r0, #0
	beq	.L13ea
	mov	r1, #0xd8
	mov	r2, #0xc4
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
.L13ea:
	ldr	r0, =0x853
	bl	__GetFlag
	mov	r5, r0
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L140e
	mov	r3, r7
	and	r3, r5
	cmp	r3, #0
	beq	.L140e
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_898_20083ac
	str	r3, [r0, #0x6c]
.L140e:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	bgt	.L14fe
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L14fe
	ldr	r0, =0x867
	bl	__ClearFlag
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L14fe
	ldr	r0, =0x856
	bl	__GetFlag
	cmp	r0, #0
	beq	.L14fe
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L145a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L145a:
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #1
	bne	.L1472
	mov	r1, #0xc8
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	b	.L1480
.L1472:
	mov	r1, #0xe0
	mov	r2, #0xa2
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
.L1480:
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092848
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r0, =0x1328
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L14e2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.L14e2:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #0
	bl	__Func_80917d0
	bl	__CutsceneEnd
.L14fe:
	ldr	r0, =0x867
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1516
	mov	r1, #0xcc
	mov	r2, #0xf0
	mov	r0, #0x17
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
.L1516:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.L15dc
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L15d4
	ldr	r0, =0x856
	bl	__GetFlag
	cmp	r0, #0
	beq	.L15d4
	mov	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L15d4
	bl	__CutsceneStart
	mov	r1, #0xa0
	mov	r2, #0x9b
	mov	r0, #2
	lsl	r1, #14
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092848
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r0, =0x1328
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L15b8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.L15b8:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #0
	bl	__Func_80917d0
	bl	__CutsceneEnd
.L15d4:
	ldr	r0, =0x12f
	bl	__ClearFlag
	b	.L15f4
.L15dc:
	cmp	r3, #0xd
	bne	.L15f4
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	beq	.L15f4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L15f4:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_898_200936c

