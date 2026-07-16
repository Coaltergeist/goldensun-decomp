	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_0, "ax", %progbits

	.section .text.after_148, "ax", %progbits
.thumb_func_start OvlFunc_common1_190
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r9, r3
	mov	r3, #0x80
	mov	r2, #8
	lsl	r3, #13
	mov	r10, r2
	mov	r8, r3
	mov	r2, #0xfa
	ldr	r3, =gState
	lsl	r2, #1
	add	r3, r2
	ldr	r7, [r3]
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__CutsceneStart
	mov	r5, #8
.L1c2:
	mov	r0, r5
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L21e
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L21e
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa5
	bne	.L21e
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	sub	r2, r3
	cmp	r2, #0
	bge	.L1f0
	ldr	r3, =0xffff
	add	r2, r3
.L1f0:
	asr	r1, r2, #16
	ldr	r3, [r0, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L200
	ldr	r2, =0xffff
	add	r0, r2
.L200:
	asr	r0, #16
	cmp	r0, #0
	bgt	.L21e
	mov	r2, r1
	cmp	r2, #0
	bge	.L20e
	neg	r2, r2
.L20e:
	cmp	r0, #0
	bge	.L214
	neg	r0, r0
.L214:
	add	r0, r2, r0
	cmp	r0, r8
	bge	.L21e
	mov	r10, r5
	mov	r8, r0
.L21e:
	add	r5, #1
	cmp	r5, #0x42
	ble	.L1c2
	ldr	r0, =0x2085
	bl	__MessageID
	mov	r1, #0
	mov	r0, r10
	bl	__ActorMessage
	mov	r3, #0xe0
	lsl	r3, #1
	add	r3, r9
	mov	r8, r3
	mov	r3, #0x80
	lsl	r3, #2
	mov	r2, r8
	str	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r2, r9
	mov	r3, #0xf
	str	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r1, [r6, #8]
	mov	r3, #0xdc
	lsl	r5, r7, #4
	lsl	r3, #2
	add	r0, r5, r3
	asr	r1, #20
	bl	__SetFlagByte
	ldr	r1, [r6, #0x10]
	mov	r2, #0xde
	lsl	r2, #2
	asr	r1, #20
	add	r0, r5, r2
	add	r7, #1
	bl	__SetFlagByte
	cmp	r7, #3
	ble	.L28e
	mov	r0, #0xa
	bl	__Func_8091e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__SetFlag
	b	.L2a2
.L28e:
	mov	r0, r7
	bl	OvlFunc_common1_78
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r3, #0
	mov	r2, r8
	str	r3, [r2]
.L2a2:
	bl	__CutsceneEnd
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_190

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
	bl	__Func_8092c40
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
	bne	.L3a8
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
	ble	.L394
	mov	r0, #0xa
	bl	__Func_8091e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__SetFlag
	b	.L3b8
.L394:
	mov	r0, r6
	bl	OvlFunc_common1_78
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r3, r10
	str	r3, [r7]
	b	.L3b8
.L3a8:
	mov	r0, r8
	add	r0, #2
	bl	__MessageID
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
.L3b8:
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
