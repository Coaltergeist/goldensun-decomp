	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b88d0  @ 0x080b88d0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x80
	str	r0, [sp, #0xc]
	ldr	r1, [sp, #0xc]
	mov	r2, #0
	ldrsh	r1, [r1, r2]
	mov	r0, #0
	mov	r9, r0
	mov	r0, r1
	str	r1, [sp, #8]
	bl	Func_80b8808
	cmp	r0, #0
	blt	.Lb890a
	ldr	r2, [sp, #0xc]
	mov	r3, #0xa
	ldrsh	r2, [r2, r3]
	mov	r0, r2
	str	r2, [sp, #4]
	bl	Func_80b8808
	cmp	r0, #0
	bge	.Lb8910
.Lb890a:
	mov	r0, #1
	neg	r0, r0
	b	.Lb8b36
.Lb8910:
	ldr	r3, =iwram_3001f00
	ldr	r1, [sp, #0xc]
	ldr	r2, [r3]
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	mov	r1, #0xa0
	lsl	r1, #7
	cmp	r3, #4
	bgt	.Lb8926
	mov	r1, #0x80
	lsl	r1, #6
.Lb8926:
	mov	r3, #0x3c
	str	r1, [r2]
	str	r3, [r2, #4]
	mov	r0, #0xa
	bl	WaitFrames
	bl	Random
	ldr	r0, [sp, #8]
	bl	GetBattleActor
	ldr	r2, [sp, #4]
	ldr	r6, [r0]
	cmp	r2, #7
	bhi	.Lb895c
	add	r3, sp, #0x64
	mov	r10, r3
	mov	r0, #2
	mov	r1, r10
	bl	Func_80b6b40
	mov	r11, r0
	mov	r0, #0x80
	str	r0, [sp]
	b	.Lb896c

	.pool_aligned

.Lb895c:
	add	r1, sp, #0x64
	mov	r0, #1
	mov	r10, r1
	bl	Func_80b6b40
	mov	r2, #0
	str	r2, [sp]
	mov	r11, r0
.Lb896c:
	mov	r3, r11
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb898c
.Lb8974:
	ldr	r0, [sp]
	ldr	r1, [sp, #8]
	add	r3, r5, r0
	cmp	r3, r1
	bne	.Lb8986
	mov	r0, r6
	mov	r1, #3
	bl	_Actor_SetAnim
.Lb8986:
	add	r5, #1
	cmp	r5, r11
	bne	.Lb8974
.Lb898c:
	mov	r0, #0x1e
	bl	WaitFrames
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lb89bc	@ 0x3f40
	strh	r3, [r2]
	mov	r2, r11
	mov	r5, #0
	cmp	r2, #0
	beq	.Lb89b0
.Lb89a0:
	ldr	r3, [sp]
	mov	r1, #1
	add	r0, r5, r3
	add	r5, #1
	bl	Func_80c0f98
	cmp	r5, r11
	bne	.Lb89a0
.Lb89b0:
	ldr	r0, =REG_BLDALPHA
	ldr	r7, .Lb89c0	@ 0x10
	ldr	r6, .Lb89c4	@ 0x1000
	mov	r5, #0
	mov	r8, r0
	b	.Lb89d0

	.align	2, 0
.Lb89bc:
	.word	0x3f40
.Lb89c0:
	.word	0x10
.Lb89c4:
	.word	0x1000
	.pool

.Lb89d0:
	sub	r3, r7, r5
	orr	r3, r6
	mov	r1, r8
	strh	r3, [r1]
	mov	r0, #1
	add	r5, #1
	bl	WaitFrames
	cmp	r5, #0x10
	bne	.Lb89d0
	mov	r0, #9
	bl	_Func_801f200
	ldr	r2, [sp, #4]
	cmp	r2, #0x7f
	ble	.Lb8a2a
	mov	r0, #2
	mov	r1, r10
	bl	Func_80b6b40
	mov	r8, r0
	mov	r5, #0
	cmp	r9, r8
	beq	.Lb8a5e
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r1, r10
	add	r7, r3, r1
.Lb8a08:
	mov	r6, r5
	add	r6, #0x80
	mov	r0, r6
	bl	_GetUnit
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	ble	.Lb8a22
	mov	r3, #1
	strh	r6, [r7]
	add	r9, r3
	add	r7, #2
.Lb8a22:
	add	r5, #1
	cmp	r9, r8
	bne	.Lb8a08
	b	.Lb8a5e
.Lb8a2a:
	mov	r0, #1
	mov	r1, r10
	bl	Func_80b6b40
	mov	r7, r0
	mov	r5, #0
	cmp	r9, r7
	beq	.Lb8a5e
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r1, r10
	add	r6, r3, r1
.Lb8a42:
	mov	r0, r5
	bl	_GetUnit
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	ble	.Lb8a58
	mov	r3, #1
	strh	r5, [r6]
	add	r9, r3
	add	r6, #2
.Lb8a58:
	add	r5, #1
	cmp	r9, r7
	bne	.Lb8a42
.Lb8a5e:
	ldr	r2, =0xff
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r1, r10
	strh	r2, [r1, r3]
	mov	r0, r10
	mov	r1, #0
	bl	CreateBattleSpriteOverlays
	ldr	r1, [sp, #0xc]
	mov	r2, #8
	ldrsh	r3, [r1, r2]
	add	r0, sp, #0x10
	str	r3, [r0]
	ldr	r2, [sp, #8]
	mov	r3, r9
	str	r2, [r0, #8]
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb8aa2
	mov	r1, r10
	add	r2, sp, #0x34
	mov	r4, #0
	b	.Lb8a94

	.pool_aligned

.Lb8a94:
	ldrh	r3, [r4, r1]
	add	r5, #1
	strh	r3, [r2]
	add	r4, #2
	add	r2, #2
	cmp	r5, r9
	bne	.Lb8a94
.Lb8aa2:
	mov	r1, r9
	str	r1, [r0, #0x14]
	ldr	r2, [sp, #4]
	cmp	r2, #7
	bhi	.Lb8ab0
	mov	r3, #1
	b	.Lb8ab2
.Lb8ab0:
	mov	r3, #0
.Lb8ab2:
	str	r3, [r0, #4]
	bl	_Anim_Summon
	mov	r0, #0xa
	bl	WaitFrames
	bl	Func_80b6c90
	ldr	r3, .Lb8ae8	@ 0x3f40
	ldr	r2, =REG_BLDCNT
	strh	r3, [r2]
	mov	r3, r11
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb8ae0
.Lb8ad0:
	ldr	r1, [sp]
	add	r0, r5, r1
	mov	r1, #1
	add	r5, #1
	bl	Func_80c0f98
	cmp	r5, r11
	bne	.Lb8ad0
.Lb8ae0:
	ldr	r7, =REG_BLDALPHA
	ldr	r6, .Lb8aec	@ 0x1000
	mov	r5, #0
	b	.Lb8af8

	.align	2, 0
.Lb8ae8:
	.word	0x3f40
.Lb8aec:
	.word	0x1000
	.pool

.Lb8af8:
	mov	r3, r5
	orr	r3, r6
	strh	r3, [r7]
	mov	r0, #1
	add	r5, #1
	bl	WaitFrames
	cmp	r5, #0x10
	bne	.Lb8af8
	mov	r2, r11
	mov	r5, #0
	cmp	r2, #0
	beq	.Lb8b22
.Lb8b12:
	ldr	r3, [sp]
	mov	r1, #0
	add	r0, r5, r3
	add	r5, #1
	bl	Func_80c0f98
	cmp	r5, r11
	bne	.Lb8b12
.Lb8b22:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x64
	bl	Func_80c0cec
	mov	r0, #3
	bl	WaitFrames
	mov	r0, #0
.Lb8b36:
	add	sp, #0x80
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b88d0

	.section .text.after_b8b48, "ax", %progbits

.thumb_func_start Func_80b8c1c  @ 0x080b8c1c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f00
	mov	r5, r0
	ldr	r2, [r3]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	sub	sp, #0x5c
	ldr	r1, =0xffffe000
	cmp	r3, #4
	bgt	.Lb8c3a
	mov	r1, #0x80
	lsl	r1, #6
.Lb8c3a:
	ldr	r3, [r2]
	cmp	r3, r1
	bne	.Lb8c4c
	mov	r3, #0x28
	str	r3, [r2, #4]
	mov	r0, #0x28
	bl	WaitFrames
	b	.Lb8c58
.Lb8c4c:
	mov	r3, #0x28
	str	r1, [r2]
	str	r3, [r2, #4]
	mov	r0, #0x28
	bl	WaitFrames
.Lb8c58:
	mov	r2, #8
	ldrsh	r3, [r5, r2]
	add	r6, sp, #8
	str	r3, [r6]
	mov	r1, #0xc
	ldrsh	r3, [r5, r1]
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	str	r3, [r6, #0x10]
	mov	r1, #0xa
	ldrsh	r3, [r5, r1]
	str	r0, [r6, #8]
	str	r3, [r6, #0xc]
	bl	Func_80b8808
	cmp	r0, #0
	bge	.Lb8c80
	mov	r0, #1
	neg	r0, r0
	b	.Lb8d9c
.Lb8c80:
	ldr	r3, [r6, #0xc]
	cmp	r3, #0x7f
	ble	.Lb8c8c
	add	r7, sp, #0x2c
	mov	r0, #2
	b	.Lb8c90
.Lb8c8c:
	add	r7, sp, #0x2c
	mov	r0, #1
.Lb8c90:
	mov	r1, r7
	bl	Func_80b6b40
	str	r0, [r6, #0x14]
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	mov	r3, #2
	neg	r3, r3
	and	r0, r3
	bl	_Func_801f200
	ldr	r0, [r6, #8]
	bl	GetBattleActor
	ldr	r0, [r0]
	mov	r1, #3
	mov	r10, r0
	bl	_Actor_SetAnim
	mov	r0, r10
	mov	r1, #0x10
	bl	_Actor_SetAnimSpeed
	ldrh	r3, [r5, #0xa]
	cmp	r3, #7
	bhi	.Lb8cda
	mov	r2, #1
	mov	r8, r2
	str	r2, [r6, #4]
	mov	r0, #1
	mov	r1, r7
	bl	Func_80b6b40
	mov	r3, r8
	b	.Lb8ce8
.Lb8cda:
	mov	r3, #0
	str	r3, [r6, #4]
	mov	r0, #2
	mov	r1, r7
	bl	Func_80b6b40
	mov	r3, #1
.Lb8ce8:
	str	r3, [r6, #0x14]
	ldr	r3, [r6, #0x14]
	mov	r7, #0
	mov	r2, r6
	cmp	r3, #0
	beq	.Lb8d36
	mov	r5, #0
.Lb8cf6:
	lsl	r3, r7, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	GetBattleActor
	ldr	r3, [r0]
	ldr	r1, [r3, #0x50]
	mov	r3, r1
	add	r3, #0x27
	ldrb	r3, [r3]
	sub	r3, #1
	mov	r0, #0
	cmp	r3, #0
	beq	.Lb8d2a
	mov	r12, r3
	add	r3, r5, r6
	mov	r2, r3
	add	r2, #0x34
	add	r1, #0x28
.Lb8d1c:
	ldmia	r1!, {r3}
	ldrb	r3, [r3, #5]
	add	r0, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r0, r12
	bne	.Lb8d1c
.Lb8d2a:
	ldr	r3, [r6, #0x14]
	add	r7, #1
	add	r5, #4
	mov	r2, r6
	cmp	r7, r3
	bne	.Lb8cf6
.Lb8d36:
	mov	r7, #0
	mov	r0, r6
	str	r7, [r6]
	str	r7, [r6, #0x18]
	bl	_Anim_EPowerUp
	mov	r3, #1
	str	r3, [r6]
	mov	r0, r6
	bl	_Anim_EPowerUp
	mov	r3, #2
	str	r3, [r6]
	mov	r0, r6
	bl	_Anim_EPowerUp
	mov	r3, #3
	str	r3, [r6]
	mov	r0, r6
	bl	_Anim_EPowerUp
	mov	r0, r6
	str	r7, [r6]
	bl	_Anim_Func
	mov	r0, r10
	mov	r1, #1
	bl	_Actor_SetAnim
	add	r5, sp, #8
	ldr	r3, [r5, #0x14]
	mov	r2, r5
	cmp	r3, #0
	beq	.Lb8d94
	mov	r6, #0x24
.Lb8d7c:
	str	r2, [sp, #4]
	ldrsh	r0, [r2, r6]
	str	r2, [sp]
	bl	Func_80b8000
	ldr	r1, [sp, #4]
	ldr	r3, [r1, #0x14]
	add	r7, #1
	add	r6, #2
	ldr	r2, [sp]
	cmp	r7, r3
	bne	.Lb8d7c
.Lb8d94:
	ldr	r0, [r5, #8]
	bl	Func_80b8000
	mov	r0, #0
.Lb8d9c:
	add	sp, #0x5c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b8c1c

.thumb_func_start Func_80b8db8  @ 0x080b8db8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r5, r0
	mov	r7, r1
	mov	r8, r2
	cmp	r3, #0
	bne	.Lb8dd6
	mov	r2, sp
	mov	r3, #0
	strb	r3, [r2]
	strb	r3, [r2, #1]
	strb	r3, [r2, #2]
	strb	r3, [r2, #3]
.Lb8dd6:
	mov	r0, r5
	bl	_GetUnit
	mov	r6, r0
	ldrh	r3, [r6, #0x38]
	sub	r3, r7
	strh	r3, [r6, #0x38]
	lsl	r3, #16
	cmp	r3, #0
	bge	.Lb8dee
	mov	r3, #0
	strh	r3, [r6, #0x38]
.Lb8dee:
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, #5
	ldr	r0, [r0]
	bl	_Actor_SetAnim
	mov	r0, #0
	bl	_Func_801f200
	bl	_Func_80198dc
	cmp	r5, #7
	bhi	.Lb8e2e
	mov	r2, r8
	cmp	r2, #0
	beq	.Lb8e16
	ldr	r0, =0x823
	bl	_Func_80175a0
.Lb8e16:
	mov	r0, r7
	mov	r1, #5
	bl	_Func_8019908
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x827
	bl	_Func_80175a0
	b	.Lb8e58
.Lb8e2e:
	mov	r3, r8
	cmp	r3, #0
	beq	.Lb8e3a
	ldr	r0, =0x822
	bl	_Func_80175a0
.Lb8e3a:
	mov	r0, r7
	mov	r1, #5
	bl	_Func_8019908
	mov	r1, #1
	mov	r0, r5
	bl	_Func_8019908
	ldr	r0, =0x826
	bl	_Func_80175a0
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
.Lb8e58:
	mov	r0, r5
	bl	Func_80b8ec4
	cmp	r5, #7
	bhi	.Lb8e7a
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bgt	.Lb8e90
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x825
	bl	_Func_80175a0
	b	.Lb8e90
.Lb8e7a:
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bgt	.Lb8e90
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x838
	bl	_Func_80175a0
.Lb8e90:
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, #1
	ldr	r0, [r0]
	bl	_Actor_SetAnim
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b8db8

