	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b27b0  @ 0x080b27b0
	push	{r5, lr}
	mov	r5, r1
	bl	_GetUnit
	mov	r2, r0
	mov	r0, #0
	cmp	r5, #0
	bne	.Lb27c8
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	ble	.Lb27fe
.Lb27c8:
	cmp	r5, #1
	bne	.Lb27da
	ldr	r1, =0x131
	add	r3, r2, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.Lb27fe
.Lb27da:
	cmp	r5, #2
	bne	.Lb27ea
	mov	r1, #0xa0
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb27fe
.Lb27ea:
	cmp	r5, #3
	bne	.Lb2800
	mov	r1, #0x98
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lb2800
.Lb27fe:
	mov	r0, #1
.Lb2800:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80b27b0

.thumb_func_start Func_80b280c  @ 0x080b280c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r1, =0x3aa
	ldr	r5, [r3]
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	sub	r1, #3
	mov	r10, r3
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #0
	sub	sp, #4
	mov	r7, #0
	cmp	r2, r3
	bge	.Lb2866
	add	r3, r5, #2
	mov	r6, #0xdb
	mov	r8, r3
	lsl	r6, #2
.Lb2840:
	mov	r1, r8
	ldrsh	r0, [r1, r6]
	mov	r1, r10
	str	r2, [sp]
	bl	Func_80b27b0
	ldr	r2, [sp]
	cmp	r0, #0
	beq	.Lb2854
	add	r2, #1
.Lb2854:
	ldr	r1, =0x3a7
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r7, #1
	add	r6, #2
	cmp	r7, r3
	blt	.Lb2840
.Lb2866:
	mov	r0, r2
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b280c

.thumb_func_start Func_80b2884  @ 0x080b2884
	push	{lr}
	ldr	r3, =iwram_3001f2c
	ldr	r2, =0x3aa
	ldr	r3, [r3]
	add	r3, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	cmp	r1, #1
	bne	.Lb289e
	ldr	r3, =0xd2e
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb289e:
	cmp	r1, #2
	bne	.Lb28aa
	ldr	r3, =0xd38
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb28aa:
	cmp	r1, #3
	bne	.Lb28b6
	ldr	r3, =0xd42
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb28b6:
	pop	{r1}
	bx	r1
.func_end Func_80b2884

.thumb_func_start Func_80b28d4  @ 0x080b28d4
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xe9
	ldr	r3, [r3]
	lsl	r2, #2
	add	r3, r2
	mov	r6, r0
	ldrh	r0, [r3]
	bl	_GetSpriteVoice
	mov	r5, r0
	bl	_Func_8019a54
	mov	r0, r6
	bl	Func_80b2884
	lsl	r5, #16
	mov	r3, #0x22
	orr	r5, r3
	mov	r1, #5
	mov	r2, #0
	mov	r3, r5
	mov	r6, r0
	bl	_Func_8017658
	b	.Lb290e
.Lb2908:
	mov	r0, #1
	bl	WaitFrames
.Lb290e:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb2908
	mov	r0, #1
	bl	WaitFrames
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b28d4

.thumb_func_start Func_80b2928  @ 0x080b2928
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r6, #0xe0
	mov	r8, r3
	lsl	r6, #2
	add	r6, r8
	ldr	r3, [r6]
	ldrb	r3, [r3, #5]
	mov	r10, r3
	mov	r3, #0xe9
	lsl	r3, #2
	add	r3, r8
	mov	r7, r0
	ldrh	r0, [r3]
	bl	_GetSpriteVoice
	mov	r5, r0
	mov	r0, r7
	bl	Func_80b2884
	ldr	r2, [r6]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r7, r0
	lsl	r5, #16
	bl	_Func_8019a54
	mov	r3, #0x22
	orr	r5, r3
	mov	r0, r7
	mov	r1, #5
	mov	r2, #0
	mov	r3, r5
	bl	_Func_8017658
	b	.Lb297e
.Lb2978:
	mov	r0, #1
	bl	WaitFrames
.Lb297e:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb2978
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #0xe0
	lsl	r3, #2
	add	r3, r8
	ldr	r3, [r3]
	mov	r2, r10
	strb	r2, [r3, #5]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2928

.thumb_func_start UI_Sanctum  @ 0x080b29a8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0
	sub	sp, #8
	mov	r8, r1
	mov	r5, r0
	mov	r10, r1
	bl	Func_80b010c
	ldr	r3, =iwram_3001f2c
	ldr	r2, =0x3aa
	ldr	r7, [r3]
	mov	r1, r8
	add	r3, r7, r2
	strb	r1, [r3]
	mov	r0, r5
	bl	_MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0xe9
	ldrh	r2, [r3]
	lsl	r1, #2
	add	r3, r7, r1
	strh	r2, [r3]
	mov	r1, #0
	ldrh	r0, [r3]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_8019da8
	mov	r8, r0
	cmp	r0, #0
	bne	.Lb2a2c
	mov	r0, #5
	neg	r0, r0
	mov	r5, #2
	mov	r1, #0
	mov	r2, #5
	mov	r3, #5
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r8, r0
	cmp	r0, #0
	bne	.Lb2a2c
	mov	r1, #0
	mov	r2, #5
	mov	r3, #5
	mov	r0, #0
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r3, #4
	neg	r3, r3
	mov	r8, r0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	mov	r3, r8
	bl	_Func_801ec6c
.Lb2a2c:
	mov	r2, #0xe4
	lsl	r2, #2
	add	r3, r7, r2
	mov	r1, #0x80
	ldrh	r0, [r3]
	mov	r6, #0
	lsl	r1, #23
	mov	r2, r8
	mov	r3, #0
	str	r6, [sp]
	bl	_Func_801eadc
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r5, #5]
	mov	r3, #0xe0
	lsl	r3, #2
	strb	r6, [r5, #4]
	mov	r1, #0x20
	add	r6, r7, r3
	neg	r1, r1
	mov	r0, r6
	mov	r2, #0x70
	bl	Func_80b0a20
	str	r5, [r6]
	ldr	r0, =0xd21
	bl	Func_80b28d4
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x10
	bl	_CreateUIBox
	str	r0, [r7, #0xc]
	bl	Func_80b10cc
	ldr	r1, =0x3aa
	add	r6, r7, r1
	b	.Lb2ab8
.Lb2a82:
	ldr	r5, =0xd24
	mov	r0, r5
	bl	Func_80b28d4
	bl	Func_80b280c
	cmp	r0, #0
	bne	.Lb2a9a
	add	r0, r5, #1
	bl	Func_80b28d4
	b	.Lb2a9e
.Lb2a9a:
	bl	Func_80b2b10
.Lb2a9e:
	mov	r2, #0xe0
	mov	r3, #0
	lsl	r2, #2
	mov	r1, #0x20
	add	r0, r7, r2
	strb	r3, [r6]
	neg	r1, r1
	mov	r2, #0x70
	bl	Func_80b0a20
	ldr	r0, =0xd22
	bl	Func_80b28d4
.Lb2ab8:
	mov	r0, r10
	bl	_SanctumMenu
	mov	r1, #1
	mov	r10, r0
	mov	r3, r10
	neg	r1, r1
	strb	r3, [r6]
	cmp	r10, r1
	bne	.Lb2a82
	ldr	r0, =0xd23
	bl	Func_80b28d4
	ldr	r0, [r7, #0xc]
	mov	r1, #2
	bl	_CloseUIBox
	mov	r0, r8
	mov	r1, #2
	bl	_CloseUIBox
	bl	Func_80b0204
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end UI_Sanctum

.thumb_func_start Func_80b2b10  @ 0x080b2b10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	sub	sp, #0xc
	ldr	r7, [r3]
	mov	r1, #1
	ldr	r2, =0x3aa
	mov	r0, #0
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	add	r3, r7, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r0, =0xd26
	mov	r9, r3
	bl	Func_80b28d4
	mov	r5, #2
	mov	r1, #0xc
	mov	r2, #0xd
	mov	r3, #3
	mov	r0, #1
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r4, #0xe0
	lsl	r4, #2
	add	r3, r7, r4
	ldr	r2, [r3]
	add	r1, sp, #4
	mov	r11, r0
	mov	r0, #0xea
	ldrb	r1, [r1]
	mov	r3, #4
	lsl	r0, #2
	strb	r3, [r2, #5]
	add	r3, r7, r0
	strb	r1, [r3]
	ldr	r2, [sp, #8]
	mov	r0, r11
	str	r2, [sp]
	mov	r1, #2
	mov	r2, #0
	mov	r3, #8
	bl	_Func_80a1870
	mov	r0, #1
	mov	r1, #0x10
	mov	r2, #0x17
	mov	r3, #3
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r6, #0
	mov	r5, #0xdb
	mov	r10, r6
	mov	r8, r6
	lsl	r5, #2
	str	r0, [sp, #8]
	b	.Lb2b98
.Lb2b94:
	add	r5, #2
	add	r6, #1
.Lb2b98:
	ldr	r4, =0x3a7
	add	r3, r7, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r6, r3
	bge	.Lb2bb6
	add	r3, r7, #2
	ldrsh	r0, [r3, r5]
	mov	r1, r9
	mov	r10, r0
	bl	Func_80b27b0
	cmp	r0, #0
	beq	.Lb2b94
.Lb2bb6:
	mov	r2, #1
	str	r2, [sp, #4]
.Lb2bba:
	mov	r3, r8
	cmp	r3, #0
	beq	.Lb2bfa
	mov	r4, #0
	ldr	r0, =0xd26
	mov	r8, r4
	bl	Func_80b28d4
	mov	r5, #0xdb
	mov	r0, #1
	mov	r6, #0
	lsl	r5, #2
	str	r0, [sp, #4]
	b	.Lb2bda
.Lb2bd6:
	add	r5, #2
	add	r6, #1
.Lb2bda:
	ldr	r1, =0x3a7
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r6, r3
	bge	.Lb2bfa
	add	r3, r7, #2
	ldrsh	r2, [r3, r5]
	mov	r10, r2
	mov	r0, r10
	mov	r1, r9
	bl	Func_80b27b0
	cmp	r0, #0
	beq	.Lb2bd6
.Lb2bfa:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.Lb2c4a
	ldr	r2, =0x3a7
	mov	r1, #0
	str	r1, [sp, #4]
	add	r3, r7, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	add	r0, r6, r1
	bl	__modsi3
	mov	r3, #0xdb
	mov	r6, r0
	lsl	r1, r6, #1
	lsl	r3, #2
	add	r2, r1, r3
	add	r3, r7, #2
	add	r1, r6
	ldrsh	r4, [r3, r2]
	lsl	r1, #3
	sub	r1, #0xc
	mov	r0, r11
	mov	r2, #0
	mov	r10, r4
	bl	Func_80b0a6c
	mov	r1, #0xea
	lsl	r1, #2
	add	r2, r7, r1
	mov	r3, #3
	mov	r0, r11
	mov	r1, r6
	strb	r3, [r2]
	bl	Func_80b2e30
	mov	r1, r10
	ldr	r0, [sp, #8]
	bl	Func_80b2ed8
.Lb2c4a:
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb2d12
	mov	r0, #1
	bl	WaitFrames
	mov	r1, r9
	mov	r0, r10
	bl	Func_80b2778
	mov	r1, r9
	mov	r5, r0
	mov	r0, r10
	bl	Func_80b27b0
	cmp	r0, #0
	bne	.Lb2c7a
	mov	r0, #0x71
	bl	_PlaySound
	b	.Lb2bba
.Lb2c7a:
	mov	r0, r10
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r5
	mov	r1, #5
	bl	_Func_8019908
	ldr	r2, =0xd27
	mov	r8, r2
	mov	r0, r8
	bl	Func_80b28d4
	mov	r0, #0
	bl	Func_80b0664
	cmp	r0, #0
	beq	.Lb2cac
	mov	r0, r8
	add	r0, #2
	bl	Func_80b2928
	mov	r3, #1
	mov	r8, r3
	b	.Lb2bba
.Lb2cac:
	ldr	r3, =gState
	ldr	r3, [r3, #0x10]
	cmp	r5, r3
	bls	.Lb2cc8
	mov	r0, #0x71
	bl	_PlaySound
	mov	r0, r8
	add	r0, #1
	bl	Func_80b2928
	mov	r4, #1
	mov	r8, r4
	b	.Lb2bba
.Lb2cc8:
	mov	r1, #1
	mov	r0, r10
	bl	_Func_8019908
	mov	r0, r8
	add	r0, #3
	bl	Func_80b28d4
	bl	_Func_8019a54
	mov	r1, r9
	mov	r0, r10
	bl	Func_80b2da8
	mov	r0, r6
	bl	Func_80b3050
	neg	r0, r5
	bl	_AddCoins
	bl	Func_80b10cc
	mov	r0, r10
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r8
	add	r0, #4
	bl	Func_80b28d4
	bl	Func_80b280c
	cmp	r0, #0
	beq	.Lb2d5a
	mov	r0, #1
	mov	r8, r0
	b	.Lb2bba
.Lb2d12:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2d24
	mov	r0, #0x71
	bl	_PlaySound
	b	.Lb2d5a
.Lb2d24:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2d3c
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #1
	str	r1, [sp, #4]
	sub	r6, #1
.Lb2d3c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2d52
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	str	r2, [sp, #4]
	add	r6, #1
.Lb2d52:
	mov	r0, #1
	bl	WaitFrames
	b	.Lb2bba
.Lb2d5a:
	bl	_Func_80a195c
	mov	r1, #2
	ldr	r0, [sp, #8]
	bl	_CloseUIBox
	mov	r0, r11
	mov	r1, #2
	bl	_CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b2b10

.thumb_func_start Func_80b2da8  @ 0x080b2da8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r5, r1
	bl	_GetUnit
	mov	r2, r0
	cmp	r5, #0
	bne	.Lb2dc8
	ldrh	r3, [r2, #0x34]
	mov	r0, r7
	strh	r3, [r2, #0x38]
	bl	_UpdateStatBarPercent
	b	.Lb2e20
.Lb2dc8:
	cmp	r5, #1
	bne	.Lb2dd0
	ldr	r3, =0x131
	b	.Lb2dd8
.Lb2dd0:
	cmp	r5, #2
	bne	.Lb2de0
	mov	r3, #0xa0
	lsl	r3, #1
.Lb2dd8:
	add	r2, r3
	mov	r3, #0
	strb	r3, [r2]
	b	.Lb2e20
.Lb2de0:
	cmp	r5, #3
	bne	.Lb2e20
	mov	r3, #0x80
	lsl	r3, #2
	mov	r5, r2
	mov	r8, r3
	mov	r6, #0xe
	add	r5, #0xd8
.Lb2df0:
	ldrh	r2, [r5]
	mov	r3, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2e18
	ldrh	r0, [r5]
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2e18
	ldrh	r2, [r5]
	mov	r3, r8
	eor	r3, r2
	strh	r3, [r5]
	mov	r0, r7
	bl	_CalcStats
.Lb2e18:
	sub	r6, #1
	add	r5, #2
	cmp	r6, #0
	bge	.Lb2df0
.Lb2e20:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2da8

.thumb_func_start Func_80b2e30  @ 0x080b2e30
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r11, r1
	ldr	r7, [r3]
	ldr	r1, =0x3aa
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r9, r3
	cmp	r0, #0
	beq	.Lb2eb8
	ldr	r2, =0x3a7
	add	r3, r7, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r6, #0
	cmp	r6, r3
	bge	.Lb2eb8
	mov	r2, #0x8a
	add	r3, r7, #2
	sub	r1, #0x3e
	lsl	r2, #1
	mov	r10, r3
	mov	r8, r1
	add	r5, r7, r2
.Lb2e72:
	cmp	r6, r11
	bne	.Lb2e80
	ldr	r0, [r5]
	mov	r1, #0x1e
	bl	_Sprite_SetAnim
	b	.Lb2e88
.Lb2e80:
	ldr	r0, [r5]
	mov	r1, #1
	bl	_Sprite_SetAnim
.Lb2e88:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x40]
	mov	r2, r8
	mov	r3, r10
	ldrsh	r0, [r3, r2]
	mov	r1, r9
	bl	Func_80b27b0
	cmp	r0, #0
	bne	.Lb2ea2
	ldr	r3, =0xb333
	str	r3, [r5, #0x40]
.Lb2ea2:
	ldr	r1, =0x3a7
	mov	r3, #2
	add	r8, r3
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r6, #1
	add	r5, #4
	cmp	r6, r3
	blt	.Lb2e72
.Lb2eb8:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2e30

.thumb_func_start Func_80b2ed8  @ 0x080b2ed8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r2, =0x3aa
	ldr	r3, [r3]
	add	r3, r2
	mov	r5, #0
	ldrsb	r5, [r3, r5]
	mov	r7, r1
	mov	r6, r0
	mov	r1, r5
	mov	r0, r7
	bl	Func_80b2778
	mov	r8, r0
	cmp	r6, #0
	beq	.Lb2f30
	mov	r0, r6
	bl	_Func_8016478
	mov	r0, r7
	mov	r1, r5
	bl	Func_80b27b0
	cmp	r0, #0
	beq	.Lb2f12
	ldr	r5, =0xd2c
	b	.Lb2f14
.Lb2f12:
	ldr	r5, =0xd2d
.Lb2f14:
	mov	r0, r5
	bl	Func_80b2884
	mov	r1, #5
	mov	r5, r0
	mov	r0, r8
	bl	_Func_8019908
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	bl	_DrawSmallText
.Lb2f30:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2ed8

.thumb_func_start Func_80b2f4c  @ 0x080b2f4c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r2, #0x40
	add	r2, r6
	mov	r7, #0
	ldrsb	r7, [r2, r7]
	sub	sp, #0xc
	mov	r8, r2
	cmp	r7, #0
	bne	.Lb2fc2
	ldr	r3, [r6, #0x14]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x18]
	str	r3, [r5, #8]
	bl	Random
	mov	r1, r0
	mov	r0, #0xa0
	lsl	r0, #14
	mov	r2, r5
	bl	vec3_translate
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	mov	r0, r6
	bl	_Func_809ba5c
	ldr	r3, [r6, #0x14]
	str	r3, [r5]
	ldr	r3, [r6, #0x18]
	str	r3, [r5, #8]
	bl	Random
	mov	r1, r0
	mov	r0, #0x80
	mov	r2, r5
	lsl	r0, #11
	bl	vec3_translate
	ldr	r3, [r5]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x20]
	ldr	r3, =0x6666
	str	r3, [r6, #0x24]
	mov	r3, r6
	add	r3, #0x42
	strb	r7, [r3]
	mov	r2, r8
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.Lb2fea
.Lb2fc2:
	cmp	r7, #1
	bne	.Lb2fd6
	mov	r0, r6
	bl	_Func_809ba34
	cmp	r0, #0
	bne	.Lb2fea
	mov	r3, r8
	strb	r0, [r3]
	b	.Lb2fea
.Lb2fd6:
	cmp	r7, #2
	bne	.Lb2fea
	mov	r0, r6
	bl	_Func_809ba34
	cmp	r0, #0
	bne	.Lb2fea
	mov	r0, r6
	bl	_Func_809bb34
.Lb2fea:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2f4c

.thumb_func_start Func_80b2ffc  @ 0x080b2ffc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xec
	ldr	r7, [r3]
	lsl	r2, #2
	add	r5, r7, r2
	mov	r6, #0x17
.Lb300a:
	mov	r0, r5
	sub	r6, #1
	bl	_Func_809b804
	add	r5, #0x48
	cmp	r6, #0
	bge	.Lb300a
	ldr	r2, =0x3ab
	add	r3, r7, r2
	mov	r5, #0
	ldrsb	r5, [r3, r5]
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	beq	.Lb3040
	bl	Random
	mov	r2, #0x8a
	lsl	r1, r0, #3
	lsl	r3, r5, #2
	lsl	r2, #1
	sub	r1, r0
	add	r3, r2
	lsr	r1, #16
	ldr	r0, [r7, r3]
	bl	_Sprite_SetColorswap
.Lb3040:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2ffc

.thumb_func_start Func_80b3050  @ 0x080b3050
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r1, #0xe0
	mov	r8, r3
	lsl	r1, #2
	add	r1, r8
	ldr	r3, [r1]
	ldr	r2, =0x3ab
	ldrb	r3, [r3, #5]
	add	r2, r8
	mov	r11, r3
	mov	r3, #0xff
	strb	r3, [r2]
	ldr	r2, [r1]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	ldr	r3, =0x3aa
	add	r3, r8
	ldr	r2, =.Lb4ab2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r10, r0
	ldrsb	r0, [r2, r3]
	sub	sp, #0xc
	bl	_PlaySound
	ldr	r0, =0x202108
	bl	Func_80b0840
	mov	r0, r10
	lsl	r0, #2
	mov	r3, #0x8a
	mov	r9, r0
	lsl	r3, #1
	add	r3, r9
	mov	r1, r8
	ldr	r0, [r1, r3]
	mov	r1, #0
	bl	_Sprite_SetAnimSpeed
	mov	r0, #0x14
	bl	WaitFrames
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80b2ffc
	bl	StartTask
	mov	r3, r10
	mov	r0, #0x9a
	lsl	r2, r3, #1
	lsl	r0, #1
	add	r3, r2, r0
	mov	r1, r8
	ldrsh	r3, [r1, r3]
	mov	r6, sp
	lsl	r3, #16
	mov	r1, #0xa2
	str	r3, [r6]
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, r8
	ldrsh	r3, [r2, r3]
	ldr	r1, =0xfff40000
	lsl	r3, #16
	add	r3, r1
	mov	r5, #0xec
	lsl	r5, #2
	str	r3, [r6, #8]
	mov	r7, #0
	add	r5, r8
.Lb30ee:
	mov	r1, #0x8e
	ldr	r3, [r6, #8]
	ldr	r2, [r6]
	mov	r0, r5
	lsl	r1, #1
	bl	_Func_809ba90
	mov	r0, r5
	ldr	r1, =Func_80b2f4c
	bl	_Func_809ba7c
	mov	r1, #7
	mov	r0, r5
	bl	_Func_809ba70
	bl	Random
	lsl	r1, r0, #3
	sub	r1, r0
	lsr	r1, #16
	ldr	r0, [r5]
	bl	_Sprite_SetColorswap
	ldr	r3, =0xb333
	mov	r0, #3
	str	r3, [r5, #0x2c]
	str	r3, [r5, #0x28]
	bl	WaitFrames
	cmp	r7, #5
	bne	.Lb3134
	ldr	r3, =0x3ab
	mov	r2, r10
	add	r3, r8
	strb	r2, [r3]
.Lb3134:
	add	r7, #1
	add	r5, #0x48
	cmp	r7, #0x11
	ble	.Lb30ee
	bl	Func_80b04c4
	mov	r2, #0xfc
	lsl	r2, #2
	mov	r1, #2
	add	r2, r8
	mov	r7, #0x17
.Lb314a:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.Lb3154
	strb	r1, [r2]
.Lb3154:
	sub	r7, #1
	add	r2, #0x48
	cmp	r7, #0
	bge	.Lb314a
	mov	r0, #0x14
	bl	WaitFrames
	mov	r0, #0x7e
	bl	_PlaySound
	ldr	r2, =0x3ab
	mov	r3, #0xff
	add	r2, r8
	strb	r3, [r2]
	add	r3, #0x15
	add	r3, r9
	mov	r1, r8
	ldr	r0, [r1, r3]
	mov	r1, #0
	bl	_Sprite_SetColorswap
	mov	r0, #0x14
	bl	WaitFrames
	ldr	r6, =0x3f5
	mov	r5, #0xec
	lsl	r5, #2
	add	r6, r8
	add	r5, r8
	mov	r7, #0x17
.Lb3190:
	ldrb	r3, [r6]
	lsl	r3, #24
	add	r6, #0x48
	cmp	r3, #0
	beq	.Lb31a0
	mov	r0, r5
	bl	_Func_809bb34
.Lb31a0:
	sub	r7, #1
	add	r5, #0x48
	cmp	r7, #0
	bge	.Lb3190
	ldr	r0, =Func_80b2ffc
	bl	StopTask
	mov	r3, #0x8a
	lsl	r3, #1
	add	r3, r9
	mov	r2, r8
	ldr	r0, [r2, r3]
	mov	r1, #0x10
	bl	_Sprite_SetAnimSpeed
	bl	Func_80b0894
	mov	r0, #0x1e
	bl	WaitFrames
	mov	r3, #0xe0
	lsl	r3, #2
	add	r3, r8
	ldr	r3, [r3]
	mov	r0, r11
	strb	r0, [r3, #5]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b3050

