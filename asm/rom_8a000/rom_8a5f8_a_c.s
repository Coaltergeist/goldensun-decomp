	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GameStart
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gDebugMode
	ldr	r1, =.L9f1a8
	ldrb	r3, [r3]
	mov	r11, r1
	cmp	r3, #0
	beq	.L8a932
	cmp	r0, #1
	bne	.L8a918
	ldr	r1, =gState
	mov	r4, #0xe0
	ldr	r2, =5
	lsl	r4, #1
	add	r3, r1, r4
	strh	r2, [r3]
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	strh	r0, [r3]
	b	.L8a94c
.L8a918:
	cmp	r0, #2
	bne	.L8a932
	ldr	r1, =gState
	mov	r4, #0xe0
	ldr	r3, =1
	lsl	r4, #1
	mov	r0, #0xe1
	add	r2, r1, r4
	lsl	r0, #1
	strh	r3, [r2]
	add	r2, r1, r0
	mov	r3, #1
	b	.L8a94a
.L8a932:
	bl	_GameInit
	ldr	r1, =gState
	mov	r4, #0xe0
	ldr	r3, =0
	lsl	r4, #1
	mov	r0, #0xe1
	add	r2, r1, r4
	lsl	r0, #1
	strh	r3, [r2]
	add	r2, r1, r0
	mov	r3, #2
.L8a94a:
	strh	r3, [r2]
.L8a94c:
	ldr	r3, =gState
	ldr	r1, =0x205
	add	r2, r3, r1
	ldrb	r0, [r2]
	ldr	r2, =0x206
	add	r3, r2
	ldrb	r1, [r3]
	bl	_SetUIColor
	bl	ClearSprites
	bl	ClearTasks
	bl	ClearTasks
	ldr	r3, =0x50001c0
	mov	r9, r3
.L8a96e:
	ldr	r0, =0x101
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8a9a8
	ldr	r0, =0x101
	bl	_ClearFlag
	b	.L8a9b0

	.pool_aligned

.L8a9a8:
	mov	r0, #0x90
	lsl	r0, #1
	bl	_PlaySound
.L8a9b0:
	ldr	r7, =gState
	mov	r4, #0xe0
	lsl	r4, #1
	add	r4, r7
	mov	r0, #0
	ldrsh	r3, [r4, r0]
	mov	r1, #0xe1
	lsl	r3, #3
	add	r3, r11
	lsl	r1, #1
	mov	r10, r3
	add	r3, r7, r1
	ldr	r1, =REG_DMA0SAD
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	ldrh	r3, [r1, #0xa]
	ldr	r2, .L8aa08	@ 0xc5ff
	and	r3, r2
	strh	r3, [r1, #0xa]
	ldr	r2, .L8aa0c	@ 0x7fff
	ldrh	r3, [r1, #0xa]
	and	r3, r2
	strh	r3, [r1, #0xa]
	mov	r8, r4
	ldrh	r3, [r1, #0xa]
	bl	ClearTasks
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	SetIntrHandler
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	SetIntrHandler
	bl	ClearHeap
	bl	ClearVRAM
	bl	ClearSprites
	b	.L8aa18

	.align	2, 0
.L8aa08:
	.word	0xc5ff
.L8aa0c:
	.word	0x7fff
	.pool

.L8aa18:
	mov	r0, r8
	mov	r1, #0xfd
	mov	r4, #0
	ldrsh	r3, [r0, r4]
	lsl	r1, #1
	cmp	r3, r1
	ble	.L8aaa8
	mov	r2, #0xfe
	lsl	r2, #1
	cmp	r3, r2
	beq	.L8aa6e
	cmp	r3, r2
	bgt	.L8aa3a
	sub	r2, #1
	cmp	r3, r2
	beq	.L8aa9e
	b	.L8aaa0
.L8aa3a:
	ldr	r4, =0x1fd
	cmp	r3, r4
	beq	.L8aa52
	mov	r0, #0xff
	lsl	r0, #1
	cmp	r3, r0
	bne	.L8aaa0
	mov	r0, r6
	bl	_BattleMain
	mov	r6, r0
	b	.L8aaa0
.L8aa52:
	mov	r0, #0x40
	bl	Func_8004938
	mov	r5, r0
	ldr	r3, =REG_DMA3SAD
	mov	r0, r9
	mov	r1, r5
	ldr	r2, =0x84000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r6
	bl	_StartLuckyDice
	b	.L8aa88
.L8aa6e:
	mov	r0, #0x40
	bl	Func_8004938
	mov	r5, r0
	ldr	r3, =REG_DMA3SAD
	mov	r0, r9
	mov	r1, r5
	ldr	r2, =0x84000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r6
	bl	_Func_80f6008
.L8aa88:
	ldr	r3, =REG_DMA3SAD
	mov	r6, r0
	mov	r1, r9
	mov	r0, r5
	ldr	r2, =0x84000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	bl	free
	b	.L8aaa0
.L8aa9e:
	mov	r6, #0
.L8aaa0:
	mov	r0, r6
	bl	RespawnAtSanctum
	b	.L8a96e
.L8aaa8:
	ldr	r5, =0x109
	mov	r0, r5
	bl	_GetFlag
	mov	r3, r8
	mov	r1, r0
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	InitMapFlags
	bl	Func_808b090
	mov	r0, r5
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8aaf0
	mov	r0, #0x8d
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8aae6
	ldr	r0, =0x11b
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8aae6
	bl	Func_808acc4
	b	.L8ab0a
.L8aae6:
	mov	r0, #0x8d
	lsl	r0, #1
	bl	_ClearFlag
	b	.L8ab0a
.L8aaf0:
	ldr	r4, =0x21e
	add	r3, r7, r4
	mov	r2, #1
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	neg	r2, r2
	cmp	r0, r2
	beq	.L8ab06
	bl	_PlaySound
	b	.L8ab0a
.L8ab06:
	bl	Func_808acc4
.L8ab0a:
	mov	r4, r10
	ldr	r3, =gState
	mov	r0, #0xed
	ldrh	r2, [r4, #4]
	lsl	r0, #1
	add	r3, r0
	strh	r2, [r3]
	mov	r0, #0
	bl	Func_808ab48
	mov	r0, r6
	bl	FieldMain
	bl	Func_808a5f8
	b	.L8a96e
.func_end GameStart

	.pool_aligned

.thumb_func_start Func_808ab48
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =.L9f1a8
	lsl	r3, #3
	ldrsh	r0, [r3, r2]
	ldr	r1, =__start_overlay
	bl	LoadMapCode
	pop	{r0}
	bx	r0
.func_end Func_808ab48

.thumb_func_start InitMapFlags
	push	{r5, r6, lr}
	ldr	r5, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =.L9f1a8
	lsl	r3, #3
	add	r3, r2
	mov	r6, #2
	ldrsb	r6, [r3, r6]
	cmp	r1, #0
	bne	.L8ac54
	mov	r5, #0x80
	lsl	r5, #2
.L8ab94:
	mov	r0, r5
	bl	_ClearFlag
	ldr	r3, =0x2ff
	add	r5, #1
	cmp	r5, r3
	ble	.L8ab94
	ldr	r3, =gState
	mov	r1, #0xe6
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r6, r3
	beq	.L8ac16
	mov	r5, #0xc0
	lsl	r5, #2
.L8abb6:
	mov	r0, r5
	bl	_ClearFlag
	ldr	r3, =0x3ff
	add	r5, #1
	cmp	r5, r3
	ble	.L8abb6
	ldr	r0, =0x12f
	bl	_SetFlag
	ldr	r5, =gState
	mov	r1, #0x8e
	lsl	r1, #2
	mov	r2, #0
	add	r3, r5, r1
	sub	r1, #6
	str	r2, [r3]
	mov	r0, #0x88
	add	r3, r5, r1
	strh	r2, [r3]
	lsl	r0, #1
	bl	_ClearFlag
	ldr	r0, =0x111
	bl	_ClearFlag
	mov	r0, #0x89
	lsl	r0, #1
	bl	_ClearFlag
	ldr	r0, =0x113
	bl	_ClearFlag
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0x90
	ldrh	r2, [r3]
	lsl	r1, #2
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r2, [r3]
	add	r1, #2
	add	r3, r5, r1
	strh	r2, [r3]
.L8ac16:
	mov	r5, #0x80
.L8ac18:
	mov	r0, r5
	add	r5, #1
	bl	_ClearFlag
	cmp	r5, #0xdf
	ble	.L8ac18
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_ClearFlag
	mov	r0, #0xa2
	lsl	r0, #1
	bl	_ClearFlag
	ldr	r0, =0x161
	bl	_ClearFlag
	ldr	r0, =0x123
	bl	_ClearFlag
	mov	r0, #0x8e
	lsl	r0, #1
	bl	_ClearFlag
	ldr	r1, =gState
	ldr	r3, =0x21e
	add	r2, r1, r3
	ldr	r3, =0xffff
	strh	r3, [r2]
	mov	r5, r1
.L8ac54:
	mov	r1, #0xe6
	lsl	r1, #1
	add	r3, r5, r1
	strh	r6, [r3]
	mov	r2, #0xc0
	mov	r3, #0x7f
	lsl	r2, #1
	and	r6, r3
	add	r0, r6, r2
	bl	_SetFlag
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =.L9f1a8
	lsl	r3, #3
	add	r3, r2
	mov	r2, #3
	ldrsb	r2, [r3, r2]
	add	r1, #0x7e
	add	r3, r5, r1
	strh	r2, [r3]
	cmp	r2, #2
	bne	.L8ac8e
	ldr	r0, =0x123
	bl	_SetFlag
.L8ac8e:
	bl	_CheckLure
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end InitMapFlags

