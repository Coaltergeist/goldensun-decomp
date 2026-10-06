	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808e23c  @ 0x0808e23c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =0x3ff
	mov	r2, #1
	sub	sp, #8
	mov	r11, r3
	neg	r2, r2
	str	r2, [sp]
	mov	r2, r11
	and	r2, r0
	mov	r3, #0xf
	asr	r0, #10
	and	r0, r3
	mov	r11, r2
	mov	r10, r0
	str	r1, [sp, #4]
	bl	_GetPartySize
	mov	r2, r10
	mov	r7, #0
	mov	r8, r0
	cmp	r2, #0xf
	bne	.L8e2be
	mov	r3, #0
	mov	r10, r3
	mov	r6, #0
	cmp	r10, r8
	bge	.L8e2de
	ldr	r3, =gState
	ldr	r0, =0x1ff
	mov	r2, #0xfc
	lsl	r2, #1
	mov	r9, r0
	add	r5, r3, r2
.L8e28a:
	ldrb	r0, [r5]
	bl	_GetUnit
	mov	r4, #0
	add	r0, #0xd8
	mov	r1, #0xe
.L8e296:
	ldrh	r2, [r0]
	mov	r3, r9
	and	r3, r2
	add	r0, #2
	cmp	r3, r11
	bne	.L8e2a4
	add	r4, #1
.L8e2a4:
	sub	r1, #1
	cmp	r1, #0
	bge	.L8e296
	cmp	r7, r4
	bge	.L8e2b4
	ldrb	r3, [r5]
	mov	r7, r4
	mov	r10, r3
.L8e2b4:
	add	r6, #1
	add	r5, #1
	cmp	r6, r8
	blt	.L8e28a
	b	.L8e2de
.L8e2be:
	mov	r0, r10
	bl	_GetUnit
	ldr	r4, =0x1ff
	add	r0, #0xd8
	mov	r1, #0xe
.L8e2ca:
	ldrh	r2, [r0]
	mov	r3, r4
	and	r3, r2
	add	r0, #2
	cmp	r3, r11
	bne	.L8e2d8
	add	r7, #1
.L8e2d8:
	sub	r1, #1
	cmp	r1, #0
	bge	.L8e2ca
.L8e2de:
	cmp	r7, #0
	bne	.L8e2f0
	ldr	r0, =0x927
	mov	r1, #1
	bl	_Func_801776c
	mov	r0, #1
	neg	r0, r0
	b	.L8e470
.L8e2f0:
	mov	r0, r11
	bl	FindFieldItemEvent
	mov	r6, r0
	cmp	r6, #0
	beq	.L8e376
	ldr	r3, [r6, #8]
	cmp	r3, #0
	beq	.L8e376
	ldr	r0, =0x143
	bl	_ClearFlag
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_ClearFlag
	ldrh	r2, [r6, #4]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	bne	.L8e334
	mov	r0, r10
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r11
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0x91c
	mov	r1, #1
	bl	_Func_801776c
.L8e334:
	mov	r0, #0x80
	ldr	r3, [r6, #8]
	lsl	r0, #9
	cmp	r3, r0
	bge	.L8e366
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_808ddec
	mov	r5, r0
	bl	CutsceneStart
	ldr	r0, [r6, #8]
	bl	MessageID
	mov	r0, r5
	mov	r1, #0
	bl	ActorMessage
	bl	CutsceneEnd
	b	.L8e370
.L8e366:
	mov	r0, r11
	mov	r1, r10
	ldr	r2, [sp, #4]
	bl	_call_via_r3
.L8e370:
	mov	r3, #0
	str	r3, [sp]
	b	.L8e448
.L8e376:
	mov	r7, #0xa1
	ldr	r0, =0x143
	lsl	r7, #1
	bl	_ClearFlag
	mov	r0, r7
	bl	_SetFlag
	mov	r0, r11
	bl	_GetItemInfo
	ldr	r3, =iwram_3001ebc
	ldrh	r5, [r0, #0x28]
	ldr	r3, [r3]
	mov	r8, r3
	cmp	r5, #0
	beq	.L8e448
	ldr	r0, =0x145
	bl	_SetFlag
	mov	r0, r7
	bl	_ClearFlag
	cmp	r5, #0x95
	bne	.L8e3fc
	mov	r0, #0xa2
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8e3fc
	mov	r0, r11
	mov	r1, #2
	bl	_Func_8019908
	mov	r1, #0xd
	ldr	r0, =0x924
	bl	_Func_801776c
	mov	r0, #1
	bl	Func_8091d84
	mov	r6, r0
	bl	_Func_8019a54
	mov	r0, #0
	cmp	r6, #0
	bne	.L8e470
	ldr	r1, =gState
	mov	r0, #0x90
	lsl	r0, #2
	add	r3, r1, r0
	ldrh	r2, [r3]
	sub	r0, #0x80
	add	r3, r1, r0
	strh	r2, [r3]
	ldr	r2, =0x242
	add	r3, r1, r2
	ldrh	r3, [r3]
	add	r0, #2
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r2, #0xb8
	lsl	r2, #1
	ldr	r3, =0x3e7
	add	r2, r8
	strh	r3, [r2]
.L8e3fc:
	mov	r0, r10
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r11
	mov	r1, #2
	bl	_Func_8019908
	ldr	r6, =0xcc6
	ldr	r0, =0x91c
	mov	r1, #1
	bl	_Func_801776c
	mov	r1, #0
	mov	r0, r5
	bl	Func_8096fb0
	add	r6, r8
	mov	r2, #0
	mov	r5, #1
	mov	r8, r2
	strb	r5, [r6]
	bl	FieldMove_NoTarget
	mov	r3, r8
	strb	r3, [r6]
	bl	Func_8097194
	mov	r0, r11
	bl	_GetItemInfo
	ldrb	r3, [r0, #0xc]
	and	r5, r3
	cmp	r5, #0
	beq	.L8e448
	ldr	r0, =0x143
	bl	_SetFlag
.L8e448:
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8e45c
	ldr	r0, =0x927
	mov	r1, #1
	bl	_Func_801776c
.L8e45c:
	ldr	r0, =0x143
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8e46e
	mov	r0, r10
	ldr	r1, [sp, #4]
	bl	_Func_80788c4
.L8e46e:
	ldr	r0, [sp]
.L8e470:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808e23c

