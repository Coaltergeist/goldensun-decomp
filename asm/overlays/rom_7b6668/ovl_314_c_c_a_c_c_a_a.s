	.include "macros.inc"

.thumb_func_start OvlFunc_928_20085f4
	push	{r5, r6, r7, lr}
	mov	r0, #0x14
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__CutsceneStart
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r7, #0
	str	r7, [r0, #0x6c]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L628
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x13
	bgt	.L6a2
.L628:
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r2, #0
	ldrh	r5, [r0, #6]
	mov	r0, #0x12
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x17fb
	bl	__MessageID
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L67e
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	mov	r0, #0x12
	bl	__ActorMessage
	mov	r0, #0x12
	bl	__MapActor_GetActor
	add	r0, #0x64
	strh	r7, [r0]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	strh	r5, [r0, #6]
	b	.L692
.L67e:
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
.L692:
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_928_2008500
	str	r3, [r0, #0x6c]
	bl	__CutsceneEnd
	b	.L916
.L6a2:
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #19
	cmp	r3, #0x1b
	ble	.L756
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #19
	cmp	r3, #0x1d
	bgt	.L756
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1a
	beq	.L756
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #5
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r2, [r5, #8]
	ldr	r3, [r0, #8]
	cmp	r2, r3
	bge	.L72a
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r1, [r0, #8]
	asr	r1, #20
	lsl	r1, #4
	sub	r1, #8
	mov	r0, #0
	mov	r2, #0xe8
	bl	__Func_809218c
	mov	r7, #1
	b	.L750
.L72a:
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r1, [r0, #8]
	asr	r1, #20
	lsl	r1, #4
	add	r1, #0x18
	mov	r0, #0
	mov	r2, #0xe8
	bl	__Func_809218c
.L750:
	mov	r0, #0
	bl	__MapActor_WaitMovement
.L756:
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r5, [r0, #0x3c]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #1
	str	r5, [r0, #0x40]
	mov	r0, #0x12
	bl	__MapActor_SetBehavior
	mov	r0, #0x12
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xe4
	bl	__PlaySound
	ldr	r3, =0x4ccc
	mov	r0, #0x12
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	mov	r3, #0x80
	lsl	r3, #12
	asr	r2, #20
	lsl	r5, #20
	add	r5, r3
	lsl	r2, #20
	add	r2, r3
	mov	r1, r5
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x10
	mov	r1, #0x10
	str	r5, [sp]
	bl	__Func_8010704
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_8092b08
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r5, =0x1999
.L7fe:
	mov	r0, #3
	bl	__WaitFrames
	ldr	r3, [r6, #0x1c]
	ldr	r2, [r6, #0x18]
	add	r3, r5
	str	r3, [r6, #0x1c]
	ldr	r3, =0xffff
	add	r2, r5
	str	r2, [r6, #0x18]
	cmp	r2, r3
	ble	.L7fe
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x46
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0x12
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_809259c
	mov	r0, #0x46
	bl	__CutsceneWait
	ldr	r0, =0x17fa
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	bl	__Func_809202c
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1a
	bne	.L87a
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xd
	ble	.L87a
	mov	r7, #1
.L87a:
	cmp	r7, #0
	beq	.L8c4
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0x10
	bl	__Func_809228c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
.L8c4:
	mov	r0, #0x12
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xe
	beq	.L8ee
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r2, #0xe8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r0, #0x12
	bl	__Func_80921c4
.L8ee:
	mov	r1, #0x8c
	mov	r2, #0xe8
	lsl	r1, #1
	mov	r0, #0x12
	bl	__Func_80921c4
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	bl	__CutsceneEnd
.L916:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_20085f4

