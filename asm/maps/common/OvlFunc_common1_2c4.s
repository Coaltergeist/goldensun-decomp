	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_2c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_3001ebc
	mov	r7, r0
	ldr	r0, [r5]
	mov	r9, r0
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r0, r7
	bl	__MapActor_GetActor
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r6, [r3]
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r11, r0
	bl	__CutsceneStart
	ldr	r3, =0x2086
	mov	r8, r3
	mov	r0, r8
	bl	__MessageID
	mov	r1, #0
	mov	r0, r7
	bl	__ShowActorMessage_NoWait
	ldr	r2, [r5]
	ldr	r0, =0xcc2
	ldr	r1, =0x2089
	add	r3, r2, r0
	strh	r1, [r3]
	ldr	r3, =0xcc4
	add	r2, r3
	mov	r3, #4
	strh	r3, [r2]
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8091c7c
	mov	r10, r0
	cmp	r0, #0
	bne	.Lc1_3a8
	mov	r0, r8
	add	r0, #1
	bl	__MessageID
	mov	r0, r7
	mov	r1, #0
	mov	r7, #0xe0
	bl	__ActorMessage
	lsl	r7, #1
	mov	r3, #0x80
	mov	r2, #0xe4
	lsl	r3, #2
	add	r7, r9
	lsl	r2, #1
	add	r2, r9
	str	r3, [r7]
	mov	r3, #0xf
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, r11
	ldr	r1, [r0, #8]
	mov	r2, #0xdc
	lsl	r5, r6, #4
	lsl	r2, #2
	add	r0, r5, r2
	asr	r1, #20
	bl	__SetFlagByte
	mov	r3, r11
	ldr	r1, [r3, #0x10]
	mov	r2, #0xde
	lsl	r2, #2
	asr	r1, #20
	add	r0, r5, r2
	add	r6, #1
	bl	__SetFlagByte
	cmp	r6, #3
	ble	.Lc1_394
	mov	r0, #0xa
	bl	__Func_8091e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__SetFlag
	b	.Lc1_3b8
.Lc1_394:
	mov	r0, r6
	bl	OvlFunc_common1_78
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r3, r10
	str	r3, [r7]
	b	.Lc1_3b8
.Lc1_3a8:
	mov	r0, r8
	add	r0, #2
	bl	__MessageID
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
.Lc1_3b8:
	bl	__CutsceneEnd
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_2c4

