	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808e0b0
	push	{lr}
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.L8e10a
	ldr	r0, [r0, #0x50]
	sub	r4, r1, #1
	mov	r12, r0
	cmp	r1, #0
	bne	.L8e0d8
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	ldr	r1, =.L9e6b8
	lsr	r3, #1
	mov	r2, #7
	and	r3, r2
	ldrb	r4, [r1, r3]
.L8e0d8:
	mov	r3, r12
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L8e102
	mov	r0, r12
	add	r0, #0x28
	mov	r1, r3
.L8e0e8:
	ldmia	r0!, {r2}
	cmp	r2, #0
	beq	.L8e0fc
	ldr	r3, [r2, #0x10]
	cmp	r3, #0
	beq	.L8e0fc
	ldrb	r3, [r2, #5]
	cmp	r3, #0xf
	beq	.L8e0fc
	strb	r4, [r2, #5]
.L8e0fc:
	sub	r1, #1
	cmp	r1, #0
	bne	.L8e0e8
.L8e102:
	mov	r2, r12
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
.L8e10a:
	pop	{r0}
	bx	r0
.func_end Func_808e0b0

.thumb_func_start Func_808e118
	push	{lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0xcb6
	ldr	r3, [r3]
	add	r1, r3, r2
	mov	r2, #0
	strh	r2, [r1]
	ldr	r2, =0xcb8
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L8e138
	ldr	r0, =0x2090
	bl	Func_808e5d8
.L8e138:
	pop	{r0}
	bx	r0
.func_end Func_808e118

.thumb_func_start Func_808e14c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	ldr	r5, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r5, r1
	ldr	r3, [r3]
	mov	r8, r0
	ldr	r0, [r5]
	ldr	r6, [r3, #0x10]
	sub	sp, #4
	bl	GetFieldActor
	ldrh	r0, [r0, #6]
	mov	r11, r0
	ldr	r0, [r5]
	bl	Func_808ddec
	ldr	r3, =0x1ff
	mov	r2, r8
	and	r2, r3
	mov	r9, r0
	mov	r8, r2
	bl	Func_808bd24
	mov	r3, #1
	ldr	r1, [r6]
	neg	r3, r3
	mov	r10, r0
	cmp	r1, r3
	beq	.L8e224
.L8e196:
	mov	r3, #4
	ldrsh	r5, [r6, r3]
	mov	r3, #0xf0
	lsl	r3, #8
	ldrh	r2, [r6, #4]
	and	r5, r3
	ldr	r3, .L8e1d4	@ 0x800
	and	r3, r2
	lsl	r3, #16
	asr	r7, r3, #16
	mov	r3, #0xf
	mov	r4, #0xff
	and	r3, r1
	and	r4, r2
	cmp	r3, #4
	bne	.L8e216
	mov	r1, #6
	ldrsh	r0, [r6, r1]
	str	r4, [sp]
	bl	Func_808d428
	ldr	r4, [sp]
	cmp	r0, #0
	beq	.L8e216
	cmp	r7, #0
	beq	.L8e1f2
	mov	r2, r11
	ldr	r1, =0x17ff
	sub	r3, r5, r2
	add	r3, r1
	b	.L8e1e8

	.align	2, 0
.L8e1d4:
	.word	0x800
	.pool

.L8e1e8:
	lsl	r3, #16
	ldr	r2, =0x2ffe
	lsr	r3, #16
	cmp	r3, r2
	bhi	.L8e216
.L8e1f2:
	mov	r1, r8
	ldr	r2, [r6]
	ldrb	r3, [r6, #1]
	cmp	r1, #0
	beq	.L8e200
	cmp	r3, r8
	bne	.L8e216
.L8e200:
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L8e210
	cmp	r4, r9
	bne	.L8e216
	mov	r0, r6
	b	.L8e226
.L8e210:
	mov	r0, r6
	cmp	r4, r10
	beq	.L8e226
.L8e216:
	add	r6, #0xc
	ldr	r3, [r6]
	mov	r2, #1
	neg	r2, r2
	mov	r1, r3
	cmp	r3, r2
	bne	.L8e196
.L8e224:
	mov	r0, #0
.L8e226:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808e14c

.thumb_func_start Func_808e23c
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
	bl	Func_808e14c
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

.thumb_func_start Func_808e4b4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r2
	ldr	r3, =iwram_3001ebc
	ldr	r5, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r5, r2
	ldr	r3, [r3]
	mov	r9, r0
	ldr	r0, [r5]
	sub	sp, #0xc
	ldr	r7, [r3, #0x10]
	mov	r10, r1
	bl	GetFieldActor
	ldrh	r0, [r0, #6]
	str	r0, [sp, #8]
	mov	r1, r10
	ldr	r0, [r5]
	bl	Func_808df1c
	mov	r3, #0
	str	r0, [r6]
	mov	r8, r0
	mov	r11, r3
	bl	Func_808bd24
	ldr	r2, =0x70000005
	str	r0, [sp, #4]
	cmp	r9, r2
	bne	.L8e502
	mov	r3, #1
	mov	r11, r3
.L8e502:
	mov	r2, #1
	ldr	r1, [r7]
	neg	r2, r2
	cmp	r1, r2
	beq	.L8e5bc
.L8e50c:
	mov	r3, #4
	ldrsh	r5, [r7, r3]
	mov	r3, #0xf0
	lsl	r3, #8
	ldrh	r2, [r7, #4]
	and	r5, r3
	ldr	r3, .L8e54c	@ 0x800
	and	r3, r2
	lsl	r3, #16
	asr	r6, r3, #16
	mov	r3, #0xf
	mov	r4, #0xff
	and	r3, r1
	and	r4, r2
	cmp	r3, #5
	bne	.L8e5ae
	mov	r2, #6
	ldrsh	r0, [r7, r2]
	str	r4, [sp]
	bl	Func_808d428
	ldr	r4, [sp]
	cmp	r0, #0
	beq	.L8e5ae
	cmp	r6, #0
	beq	.L8e56a
	ldr	r2, [sp, #8]
	sub	r3, r5, r2
	ldr	r2, =0x17ff
	add	r3, r2
	b	.L8e560

	.align	2, 0
.L8e54c:
	.word	0x800
	.pool

.L8e560:
	lsl	r3, #16
	ldr	r2, =0x2ffe
	lsr	r3, #16
	cmp	r3, r2
	bhi	.L8e5ae
.L8e56a:
	ldrb	r0, [r7, #1]
	str	r4, [sp]
	bl	_GetMoveInfo
	ldrb	r3, [r0, #0xc]
	ldr	r4, [sp]
	cmp	r3, r10
	bne	.L8e5ae
	mov	r3, r11
	cmp	r3, #0
	bne	.L8e58c
	ldr	r1, [r7]
	ldr	r3, =0x7000000f
	and	r3, r1
	cmp	r3, r9
	bne	.L8e5ae
	b	.L8e58e
.L8e58c:
	ldr	r1, [r7]
.L8e58e:
	mov	r3, #0x80
	and	r3, r1
	mov	r0, r7
	cmp	r3, #0
	bne	.L8e5be
	mov	r3, #0x10
	and	r3, r1
	cmp	r3, #0
	beq	.L8e5a6
	cmp	r4, r8
	bne	.L8e5ae
	b	.L8e5be
.L8e5a6:
	ldr	r2, [sp, #4]
	mov	r0, r7
	cmp	r4, r2
	beq	.L8e5be
.L8e5ae:
	add	r7, #0xc
	ldr	r3, [r7]
	mov	r2, #1
	neg	r2, r2
	mov	r1, r3
	cmp	r3, r2
	bne	.L8e50c
.L8e5bc:
	mov	r0, #0
.L8e5be:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808e4b4

.thumb_func_start Func_808e5d8
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r3, =0x3ff
	mov	r5, r0
	and	r3, r5
	mov	r8, r3
	mov	r0, r8
	mov	r3, #0xf
	lsr	r5, #10
	sub	sp, #4
	and	r5, r3
	bl	_GetMoveInfo
	ldr	r6, =gState
	mov	r3, #0xfa
	lsl	r3, #1
	ldrb	r0, [r0, #0xc]
	add	r6, r3
	mov	r9, r0
	ldr	r0, [r6]
	bl	GetFieldActor
	mov	r10, sp
	mov	r1, r9
	mov	r2, r10
	ldr	r0, =0x30000005
	bl	Func_808e4b4
	mov	r2, r10
	mov	r11, r0
	mov	r1, r9
	ldr	r0, =0x20000005
	bl	Func_808e4b4
	mov	r1, #0
	mov	r10, r0
	mov	r0, r8
	bl	Func_8096fb0
	ldr	r0, [r6]
	ldr	r1, [sp]
	bl	Func_80970f8
	mov	r1, r5
	ldr	r2, [sp]
	mov	r0, r11
	bl	Func_8096b28
	bl	Func_8096af0
	bl	Func_8097174
	mov	r1, r5
	ldr	r2, [sp]
	mov	r0, r10
	bl	Func_8096b28
	bl	Func_8097194
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_808e5d8

.thumb_func_start Func_808e680
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	ldr	r0, =0x3ff
	ldr	r3, =iwram_3001ebc
	mov	r2, r8
	and	r2, r0
	mov	r9, r2
	ldr	r3, [r3]
	mov	r0, r9
	sub	sp, #0xc
	mov	r10, r3
	bl	_GetMoveInfo
	mov	r3, r8
	ldrb	r0, [r0, #0xc]
	lsr	r6, r3, #10
	mov	r3, #0xf
	and	r6, r3
	mov	r11, r0
	ldr	r3, =gState
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	GetFieldActor
	mov	r2, #0
	str	r2, [sp]
	bl	Func_8091660
	ldr	r0, =0x145
	bl	_ClearFlag
	cmp	r6, #0xf
	bne	.L8e6d4
	mov	r6, #0
.L8e6d4:
	mov	r0, #0xbf
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8e6fa
	mov	r0, r6
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r9
.L8e6ea:
	mov	r1, #4
	bl	_Func_8019908
	ldr	r0, =0x91f
.L8e6f2:
	mov	r1, #1
	bl	_Func_801776c
	b	.L8e91e
.L8e6fa:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r10
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L8e71a
	mov	r2, r9
	cmp	r2, #0x90
	bne	.L8e71a
	mov	r0, r6
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, #0x90
	b	.L8e6ea
.L8e71a:
	mov	r3, r9
	cmp	r3, #0x95
	bne	.L8e78e
	mov	r0, #0xa2
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8e740
	mov	r0, r6
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, #0x95
	mov	r1, #4
	bl	_Func_8019908
	ldr	r0, =0x921
	b	.L8e6f2
.L8e740:
	mov	r0, #0x95
	mov	r1, #4
	bl	_Func_8019908
	mov	r1, #0xd
	ldr	r0, =0x920
	bl	_Func_801776c
	mov	r0, #1
	bl	Func_8091d84
	mov	r5, r0
	bl	_Func_8019a54
	mov	r0, #0
	cmp	r5, #0
	beq	.L8e764
	b	.L8e920
.L8e764:
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
	add	r2, r10
	strh	r3, [r2]
	mov	r2, #1
	str	r2, [sp]
.L8e78e:
	mov	r7, #0x80
	lsl	r7, #6
	mov	r3, r8
	and	r7, r3
	cmp	r7, #0
	beq	.L8e7a2
	mov	r0, r8
	bl	Func_808e5d8
	b	.L8e920
.L8e7a2:
	cmp	r6, #7
	bgt	.L8e7ee
	mov	r0, r9
	bl	_GetMoveInfo
	ldrb	r5, [r0, #9]
	mov	r0, r6
	bl	_GetUnit
	mov	r2, #0x3a
	ldrsh	r3, [r0, r2]
	cmp	r3, r5
	bge	.L8e7e6
	mov	r0, r6
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r9
	mov	r1, #4
	bl	_Func_8019908
	ldr	r0, =0x91e
	mov	r1, #1
	bl	_Func_801776c
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L8e7dc
	b	.L8e91e
.L8e7dc:
	mov	r3, #0xb8
	lsl	r3, #1
	add	r3, r10
	strh	r7, [r3]
	b	.L8e91e
.L8e7e6:
	neg	r1, r5
	mov	r0, r6
	bl	_ModifyPP
.L8e7ee:
	add	r5, sp, #8
	mov	r2, r5
	mov	r1, r11
	ldr	r0, =0x10000005
	bl	Func_808e4b4
	mov	r2, r5
	str	r0, [sp, #4]
	mov	r1, r11
	mov	r0, #5
	bl	Func_808e4b4
	mov	r2, r5
	mov	r1, r11
	mov	r8, r0
	ldr	r0, =0x50000005
	bl	Func_808e4b4
	ldr	r5, =0x141
	mov	r7, r0
	mov	r3, #1
	mov	r0, #0xa0
	neg	r3, r3
	lsl	r0, #1
	str	r3, [sp, #8]
	bl	_SetFlag
	mov	r0, r5
	bl	_SetFlag
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bne	.L8e83a
	mov	r2, r8
	cmp	r2, #0
	bne	.L8e83a
	cmp	r7, #0
	beq	.L8e86e
.L8e83a:
	ldr	r3, =gState
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	mov	r1, r11
	bl	Func_808df1c
	mov	r2, r8
	str	r0, [sp, #8]
	cmp	r2, #0
	beq	.L8e874
	ldrh	r2, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.L8e874
	mov	r0, #0xa0
	lsl	r0, #1
	bl	_ClearFlag
	ldr	r0, =0x141
	bl	_ClearFlag
	b	.L8e874
.L8e86e:
	mov	r0, r5
	bl	_ClearFlag
.L8e874:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r10
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L8e886
	bl	Func_808b8e8
.L8e886:
	mov	r0, r9
	mov	r1, #0
	bl	Func_8096fb0
	ldr	r2, =0xcc6
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	ldr	r1, [sp, #8]
	bl	Func_80970f8
	bl	Func_809728c
	mov	r1, r6
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #4]
	bl	Func_8096b28
	mov	r0, #0xa0
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8e8d4
	ldr	r0, =0x141
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8e8d0
	bl	FieldMove_Target
	b	.L8e8d4
.L8e8d0:
	bl	FieldMove_NoTarget
.L8e8d4:
	bl	Func_8097174
	mov	r5, #0xa0
	ldr	r2, [sp, #8]
	mov	r0, r8
	mov	r1, r6
	lsl	r5, #1
	bl	Func_8096b28
	mov	r0, r5
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8e8f4
	bl	Func_8096ab0
.L8e8f4:
	mov	r0, r5
	bl	_ClearFlag
	ldr	r0, =0x141
	bl	_ClearFlag
	ldr	r2, =0xcc6
	mov	r3, #0
	add	r2, r10
	strb	r3, [r2]
	bl	Func_8097194
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r10
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L8e91e
	bl	Func_808b98c
.L8e91e:
	mov	r0, #0
.L8e920:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808e680

.thumb_func_start Func_808e96c
	push	{lr}
	mov	r1, r0
	sub	sp, #4
	lsl	r1, #16
	mov	r2, sp
	lsr	r1, #16
	ldr	r0, =0x70000005
	bl	Func_808e4b4
	mov	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	add	sp, #4
	pop	{r1}
	bx	r1
.func_end Func_808e96c

