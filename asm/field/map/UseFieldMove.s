	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start UseFieldMove  @ 0x0808e680
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
	bl	ResetPlayerSpeed
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
	bl	FindFieldMoveEvent
	mov	r2, r5
	str	r0, [sp, #4]
	mov	r1, r11
	mov	r0, #5
	bl	FindFieldMoveEvent
	mov	r2, r5
	mov	r1, r11
	mov	r8, r0
	ldr	r0, =0x50000005
	bl	FindFieldMoveEvent
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
.func_end UseFieldMove

