	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_0
	push	{r5, r6, lr}
	mov	r0, #0xe0
	lsl	r0, #2
	bl	__GetFlagByte
	mov	r5, r0
	mov	r0, #0xe2
	lsl	r0, #2
	bl	__GetFlagByte
	mov	r6, #0x80
	lsl	r6, #12
	mov	r2, r0
	lsl	r5, #20
	add	r5, r6
	lsl	r2, #20
	add	r2, r6
	mov	r1, r5
	mov	r0, #1
	bl	__MapActor_SetPos
	mov	r0, #0xe4
	lsl	r0, #2
	bl	__GetFlagByte
	mov	r5, r0
	mov	r0, #0xe6
	lsl	r0, #2
	bl	__GetFlagByte
	lsl	r5, #20
	mov	r2, r0
	add	r5, r6
	lsl	r2, #20
	add	r2, r6
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetPos
	mov	r0, #0xe8
	lsl	r0, #2
	bl	__GetFlagByte
	mov	r5, r0
	mov	r0, #0xea
	lsl	r0, #2
	bl	__GetFlagByte
	lsl	r5, #20
	mov	r2, r0
	add	r5, r6
	lsl	r2, #20
	add	r2, r6
	mov	r0, #3
	mov	r1, r5
	bl	__MapActor_SetPos
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_0

.thumb_func_start OvlFunc_common1_78
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_8079664
	mov	r0, #1
	bl	__Func_8079664
	mov	r0, #2
	bl	__Func_8079664
	mov	r0, #3
	bl	__Func_8079664
	mov	r0, #5
	bl	__Func_8079664
	mov	r0, r5
	bl	__AddPartyMember
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	str	r5, [r3]
	mov	r0, r5
	mov	r1, #0
	bl	__SetCameraTarget
	mov	r0, r5
	bl	__GetUnit
	mov	r5, r0
	ldrh	r3, [r5, #0x34]
	ldr	r1, =0x131
	strh	r3, [r5, #0x38]
	ldrh	r3, [r5, #0x36]
	ldr	r2, .Lec	@ 0
	strh	r3, [r5, #0x3a]
	add	r3, r5, r1
	strb	r2, [r3]
	mov	r2, #0x38
	ldrsh	r0, [r5, r2]
	mov	r3, #0x34
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	_divsi3_RAM
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.Lf8
	mov	r3, #0
	cmp	r0, #0
	blt	.Lf8
	mov	r3, r0
	b	.Lf8

	.align	2, 0
.Lec:
	.word	0
	.pool

.Lf8:
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L10c
	mov	r1, #0x38
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L10c
	mov	r3, #1
	strh	r3, [r5, #0x14]
.L10c:
	mov	r2, #0x3a
	ldrsh	r0, [r5, r2]
	mov	r3, #0x36
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	_divsi3_RAM
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L12a
	mov	r3, #0
	cmp	r0, #0
	blt	.L12a
	mov	r3, r0
.L12a:
	strh	r3, [r5, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L13e
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L13e
	mov	r3, #1
	strh	r3, [r5, #0x16]
.L13e:
	bl	__Func_8091858
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_78

.thumb_func_start OvlFunc_common1_148
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xfa
	ldr	r5, [r3]
	ldr	r3, =gState
	lsl	r1, #1
	add	r3, r1
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L17e
	sub	r1, #0x76
	add	r3, r5, r1
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r3, #26
	cmp	r3, r2
	bne	.L17e
	ldr	r0, =0x141
	bl	__GetFlag
	cmp	r0, #0
	beq	.L17e
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x63
	strh	r3, [r2]
.L17e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_148

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

.thumb_func_start OvlFunc_common1_3e4
	push	{r5, r6, r7, lr}
	mov	r5, r0
	bl	__MapActor_GetActor
	mov	r3, #0xa
	ldrsh	r7, [r0, r3]
	mov	r3, #0x12
	ldrsh	r6, [r0, r3]
	bl	__CutsceneStart
	bl	__GetPartySize
	cmp	r0, #1
	bgt	.L466
	ldr	r0, =0x20e5
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8093054
	cmp	r0, #0
	bne	.L474
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, r6
	add	r2, #0x40
	mov	r1, r7
	mov	r0, r5
	bl	__Func_809218c
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, r7
	mov	r2, r6
	bl	__Func_80921c4
	mov	r2, r6
	mov	r0, #0
	add	r2, #0x20
	mov	r1, r7
	bl	__Func_80921c4
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xb
	bl	__Func_8091e9c
	b	.L474
.L466:
	ldr	r0, =0x20e8
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.L474:
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_3e4

