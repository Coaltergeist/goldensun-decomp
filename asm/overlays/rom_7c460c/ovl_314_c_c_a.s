	.include "macros.inc"

	.section .text.after_9240, "ax", %progbits

.thumb_func_start OvlFunc_939_20092a4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0x1c
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #0xf
	and	r7, r3
	mov	r8, r0
	cmp	r7, #0
	bne	.L130c
	bl	__Random
	mov	r3, #0x34
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #6
	mov	r5, r3
	add	r5, #0xe6
	mov	r0, r5
	bl	__cos
	add	r6, sp, #0x10
	cmp	r0, #0
	bge	.L12de
	add	r0, #3
.L12de:
	asr	r3, r0, #2
	mov	r0, r5
	str	r3, [r6]
	str	r7, [r6, #4]
	bl	__sin
	lsr	r3, r0, #31
	add	r0, r3
	asr	r0, #1
	str	r0, [r6, #8]
	mov	r3, r8
	ldr	r5, [r3, #8]
	ldr	r4, [r6, #4]
	ldr	r1, [r3, #0xc]
	ldr	r2, [r3, #0x10]
	ldr	r3, [r6]
	str	r0, [sp, #4]
	mov	r0, r5
	str	r4, [sp]
	str	r7, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L130c:
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20092a4

.thumb_func_start OvlFunc_939_200931c
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x98
	mov	r2, #0xe0
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0xa8
	mov	r2, #0xe0
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0
	bl	__SetCameraTarget
	bl	__MapTransitionIn
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__MapActor_SetSpeed
	mov	r0, #8
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__MapActor_SetSpeed
	mov	r0, #9
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__MapActor_SetSpeed
	mov	r2, #0x90
	mov	r0, #8
	mov	r1, #0x98
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x90
	lsl	r2, #1
	mov	r0, #9
	mov	r1, #0xa8
	bl	__Func_809218c
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0x94
	lsl	r2, #1
	mov	r0, #0
	mov	r1, #0xa0
	bl	__MapActor_TravelTo
	ldr	r6, =OvlFunc_939_20092a4
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r6
	bl	__StartTask
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x79
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092b08
	mov	r0, #0x79
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	mov	r1, #4
	strb	r5, [r0]
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x79
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, r6
	bl	__StopTask
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #0xc0
	lsl	r5, #11
	str	r5, [r0, #0x28]
	mov	r0, #0
	bl	__MapActor_GetActor
	str	r5, [r0, #0x2c]
	mov	r0, #1
	bl	__CutsceneWait
	b	.L1480
.L147a:
	mov	r0, #1
	bl	__CutsceneWait
.L1480:
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.L147a
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x13
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x7f
	bl	__PlaySound
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_939_20092a4
	bl	__StartTask
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r0, #0x28]
	mov	r0, #1
	bl	__CutsceneWait
	b	.L14da
.L14d4:
	mov	r0, #1
	bl	__CutsceneWait
.L14da:
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.L14d4
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	ldr	r0, =OvlFunc_939_20092a4
	bl	__StopTask
	mov	r0, #0x32
	bl	__CutsceneWait
	ldr	r0, =0x2410
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, #0x80
	orr	r5, r3
	mov	r2, #0x80
	strb	r5, [r0]
	lsl	r1, #9
	mov	r0, #8
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #0x90
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r2, #0xc8
	mov	r1, #0xb0
	mov	r0, #9
	bl	__Func_809218c
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_200931c

.thumb_func_start OvlFunc_939_20095bc
	push	{lr}
	bl	__CutsceneStart
	bl	__MapTransitionIn
	mov	r2, #0xa8
	mov	r1, #0x98
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x92
	mov	r1, #1
	bl	__Func_8096fb0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_80970f8
	bl	__Func_809728c
	mov	r0, #1
	bl	__FieldMove
	bl	__Func_8097174
	mov	r1, #0x90
	mov	r2, #0xb8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0x58
	mov	r2, #0xb8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0x58
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0x48
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r2, #0x90
	mov	r1, #0x48
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r2, #0x90
	mov	r1, #0x58
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20095bc

.thumb_func_start OvlFunc_939_2009668
	push	{r5, lr}
	ldr	r5, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x68
	cmp	r2, r3
	bne	.L16b4
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	OvlFunc_939_20085f0
	ldr	r0, =0xfd1
	bl	__GetFlag
	cmp	r0, #0
	bne	.L169e
	mov	r0, #0x14
	bl	OvlFunc_939_2009840
.L169e:
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L16ae
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.L16ae:
	ldr	r0, =0x201
	bl	__SetFlag
.L16b4:
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L1778
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	ldr	r3, =0x242
	mov	r1, #0xe1
	add	r2, r5, r3
	mov	r3, #0xa
	strh	r3, [r2]
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.L16f6
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L16f6
	bl	OvlFunc_939_200931c
.L16f6:
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L1714
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1714
	bl	OvlFunc_939_20095bc
.L1714:
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1732
	ldr	r0, =0x94d
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1732
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_939_2008ac4
	lsl	r1, #4
	bl	__StartTask
.L1732:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_939_2009240
	bl	__StartTask
	ldr	r0, =0x944
	bl	__ClearFlag
	ldr	r0, =0x945
	bl	__ClearFlag
	ldr	r0, =0x946
	bl	__ClearFlag
	ldr	r0, =0x947
	bl	__ClearFlag
	ldr	r0, =0x948
	bl	__ClearFlag
	ldr	r0, =0x943
	bl	__ClearFlag
	ldr	r0, =0x949
	bl	__ClearFlag
	ldr	r0, =0x94a
	bl	__ClearFlag
	ldr	r0, =0x94b
	bl	__ClearFlag
	ldr	r0, =0x94c
	bl	__ClearFlag
.L1778:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_939_2009668
