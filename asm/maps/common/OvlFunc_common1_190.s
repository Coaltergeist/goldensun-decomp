	.include "macros.inc"
	.include "gba.inc"

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
.Lc1_1c2:
	mov	r0, r5
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lc1_21e
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lc1_21e
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa5
	bne	.Lc1_21e
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	sub	r2, r3
	cmp	r2, #0
	bge	.Lc1_1f0
	ldr	r3, =0xffff
	add	r2, r3
.Lc1_1f0:
	asr	r1, r2, #16
	ldr	r3, [r0, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.Lc1_200
	ldr	r2, =0xffff
	add	r0, r2
.Lc1_200:
	asr	r0, #16
	cmp	r0, #0
	bgt	.Lc1_21e
	mov	r2, r1
	cmp	r2, #0
	bge	.Lc1_20e
	neg	r2, r2
.Lc1_20e:
	cmp	r0, #0
	bge	.Lc1_214
	neg	r0, r0
.Lc1_214:
	add	r0, r2, r0
	cmp	r0, r8
	bge	.Lc1_21e
	mov	r10, r5
	mov	r8, r0
.Lc1_21e:
	add	r5, #1
	cmp	r5, #0x42
	ble	.Lc1_1c2
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
	ble	.Lc1_28e
	mov	r0, #0xa
	bl	__Func_8091e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__SetFlag
	b	.Lc1_2a2
.Lc1_28e:
	mov	r0, r7
	bl	OvlFunc_common1_78
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r3, #0
	mov	r2, r8
	str	r3, [r2]
.Lc1_2a2:
	bl	__CutsceneEnd
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_190

