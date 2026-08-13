	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bf678  @ 0x080bf678
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =iwram_3001e74
	ldr	r2, [r1]
	sub	sp, #0x30
	str	r2, [sp, #8]
	add	r2, #0x44
	str	r2, [sp, #4]
	ldrb	r2, [r2]
	neg	r3, r2
	orr	r3, r2
	lsr	r3, #31
	mov	r11, r3
	mov	r2, #0
	mov	r3, #1
	add	r11, r3
	mov	r9, r2
	cmp	r9, r11
	blt	.Lbf6aa
	b	.Lbf7de
.Lbf6aa:
	mov	r0, r9
	bl	_Func_8077330
	mov	r1, #8
	mov	r3, r0
	add	r1, r3
	mov	r10, r1
	mov	r1, #0x84
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldr	r3, [r3]
	mov	r8, r2
	cmp	r8, r3
	bge	.Lbf700
	mov	r5, r10
.Lbf6ca:
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	ble	.Lbf6f0
	ldrb	r0, [r5, #2]
	bl	GetBattleActor
	cmp	r0, #0
	beq	.Lbf6f0
	ldrb	r0, [r5, #2]
	bl	_GetUnit
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lbf6f0
	ldrb	r3, [r5, #3]
	sub	r3, #1
	strb	r3, [r5, #3]
.Lbf6f0:
	mov	r3, #1
	add	r8, r3
	add	r3, #0xff
	add	r3, r10
	ldr	r3, [r3]
	add	r5, #4
	cmp	r8, r3
	blt	.Lbf6ca
.Lbf700:
	mov	r3, #0x80
	lsl	r3, #1
	add	r3, r10
	mov	r1, #0
	ldr	r3, [r3]
	mov	r8, r1
	cmp	r8, r3
	bge	.Lbf7d2
	mov	r6, r10
.Lbf712:
	mov	r3, #3
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	bne	.Lbf7c0
	ldrb	r7, [r6, #2]
	mov	r0, r7
	bl	GetBattleActor
	cmp	r0, #0
	beq	.Lbf7c6
	bl	Func_80bdfec
	mov	r0, #0x1e
	bl	Func_80bd808
	mov	r1, r7
	mov	r0, #0
	bl	Func_80bbabc
	ldrb	r3, [r6]
	lsl	r1, r3, #2
	add	r1, r3
	ldrb	r3, [r6, #1]
	lsl	r1, #2
	mov	r2, #0x96
	add	r1, r3
	lsl	r2, #1
	add	r1, r2
	mov	r0, #3
	bl	Func_80bbabc
	mov	r1, #0xaf
	mov	r0, #0xe
	bl	Func_80bbabc
	mov	r1, #0
	mov	r0, #0xa
	bl	Func_80bbabc
	ldr	r1, =0x897
	mov	r0, #4
	bl	Func_80bbabc
	mov	r1, r7
	mov	r0, #0xb
	bl	Func_80bbabc
	mov	r0, #0xd4
	bl	_PlaySound
	mov	r0, r7
	bl	GetBattleActor
	mov	r1, #3
	ldr	r0, [r0]
	bl	_Actor_SetAnim
	mov	r0, r7
	bl	GetBattleActor
	mov	r1, #0x20
	ldr	r0, [r0]
	bl	_Actor_SetAnimSpeed
	ldrb	r5, [r6]
	ldrb	r2, [r6, #1]
	mov	r1, r5
	mov	r0, r7
	bl	_SetDjinni
	ldrb	r1, [r6]
	ldrb	r2, [r6, #1]
	mov	r0, r7
	bl	_Func_807a3a8
	mov	r0, r7
	bl	_CalcStats
	mov	r1, r5
	mov	r2, #3
	mov	r3, #0
	mov	r0, r7
	bl	Anim_MoveIntro
	bl	Func_80be02c
	b	.Lbf7c6
.Lbf7c0:
	mov	r3, #1
	add	r6, #4
	add	r8, r3
.Lbf7c6:
	mov	r3, #0x80
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	cmp	r8, r3
	blt	.Lbf712
.Lbf7d2:
	mov	r1, #1
	add	r9, r1
	cmp	r9, r11
	bge	.Lbf7dc
	b	.Lbf6aa
.Lbf7dc:
	ldr	r1, =iwram_3001e74
.Lbf7de:
	ldr	r3, [r1]
	mov	r2, #0xc9
	lsl	r2, #3
	add	r3, r2
	ldrh	r1, [r3]
	mov	r0, #2
	mov	r2, #0
	bl	Func_80c0774
	ldr	r3, =.Lc35bc
	ldr	r1, [sp, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	str	r3, [sp, #0xc]
	str	r4, [sp, #0x10]
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.Lbf81c
	ldr	r3, [sp, #8]
	add	r3, #0x50
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbf824
	mov	r3, #2
	mov	r2, sp
	str	r3, [sp, #0xc]
	add	r2, #0xc
	mov	r3, #1
	str	r2, [sp]
	str	r3, [r2, #4]
	b	.Lbf82a
.Lbf81c:
	mov	r3, sp
	add	r3, #0xc
	str	r3, [sp]
	b	.Lbf82a
.Lbf824:
	mov	r1, sp
	add	r1, #0xc
	str	r1, [sp]
.Lbf82a:
	mov	r3, #0x14
	mov	r2, #0
	add	r3, sp
	mov	r9, r2
	mov	r11, r3
.Lbf834:
	mov	r1, r9
	ldr	r2, [sp]
	lsl	r3, r1, #2
	ldr	r0, [r3, r2]
	mov	r1, r11
	bl	Func_80b6c08
	mov	r3, #0
	mov	r10, r0
	mov	r8, r3
	cmp	r8, r10
	blt	.Lbf84e
	b	.Lbfb52
.Lbf84e:
	mov	r1, r8
	lsl	r3, r1, #1
	mov	r2, r11
	ldrh	r5, [r2, r3]
	mov	r0, r5
	bl	_GetUnit
	mov	r3, #0xa2
	lsl	r3, #1
	mov	r7, r0
	add	r1, r7, r3
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf870
	add	r3, #0xff
	strb	r3, [r1]
.Lbf870:
	mov	r2, #0x38
	ldrsh	r1, [r7, r2]
	cmp	r1, #0
	beq	.Lbf944
	mov	r0, r7
	add	r0, #0x44
	ldrb	r3, [r0]
	cmp	r3, #0
	beq	.Lbf8d0
	mov	r3, #0x34
	ldrsh	r2, [r7, r3]
	cmp	r1, r2
	beq	.Lbf8d0
	ldrb	r6, [r0]
	add	r3, r1, r6
	cmp	r3, r2
	ble	.Lbf894
	sub	r6, r2, r1
.Lbf894:
	mov	r1, r6
	mov	r0, r5
	bl	_ModifyHP
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	mov	r1, #5
	mov	r0, r6
	bl	_Func_8019908
	mov	r1, #0x38
	ldrsh	r2, [r7, r1]
	mov	r1, #0x34
	ldrsh	r3, [r7, r1]
	cmp	r2, r3
	bne	.Lbf8c0
	ldr	r0, =0x820
	bl	_Func_80175a0
	b	.Lbf8c6
.Lbf8c0:
	ldr	r0, =0x81d
	bl	_Func_80175a0
.Lbf8c6:
	mov	r0, #0xaf
	bl	_PlaySound
	bl	WaitTextPrompt
.Lbf8d0:
	mov	r0, r7
	add	r0, #0x45
	ldrb	r3, [r0]
	cmp	r3, #0
	beq	.Lbf944
	mov	r2, #0x3a
	ldrsh	r1, [r7, r2]
	mov	r3, #0x36
	ldrsh	r2, [r7, r3]
	cmp	r1, r2
	beq	.Lbf944
	ldrb	r6, [r0]
	add	r3, r1, r6
	cmp	r3, r2
	ble	.Lbf8f0
	sub	r6, r2, r1
.Lbf8f0:
	mov	r1, r6
	mov	r0, r5
	bl	_ModifyPP
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	mov	r1, #5
	mov	r0, r6
	bl	_Func_8019908
	mov	r1, #0x3a
	ldrsh	r2, [r7, r1]
	mov	r1, #0x36
	ldrsh	r3, [r7, r1]
	cmp	r2, r3
	bne	.Lbf934
	ldr	r0, =0x821
	bl	_Func_80175a0
	b	.Lbf93a

	.pool_aligned

.Lbf934:
	ldr	r0, =0x81e
	bl	_Func_80175a0
.Lbf93a:
	mov	r0, #0xaf
	bl	_PlaySound
	bl	WaitTextPrompt
.Lbf944:
	mov	r0, r5
	bl	Func_80bf574
	cmp	r0, #0
	beq	.Lbf96e
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r0
	mov	r0, r5
	bl	Func_80b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x889
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lbf96e:
	mov	r0, r5
	bl	Func_80bf250
	cmp	r0, #0
	beq	.Lbf998
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r0
	mov	r0, r5
	bl	Func_80b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x887
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lbf998:
	mov	r0, r5
	bl	Func_80bf2b4
	cmp	r0, #0
	beq	.Lbf9c2
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r0
	mov	r0, r5
	bl	Func_80b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x888
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lbf9c2:
	mov	r0, r5
	bl	Func_80bf318
	cmp	r0, #0
	beq	.Lbf9ec
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r0
	mov	r0, r5
	bl	Func_80b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x886
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lbf9ec:
	mov	r0, r5
	bl	Func_80bf37c
	cmp	r0, #0
	beq	.Lbfa16
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r0
	mov	r0, r5
	bl	Func_80b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x88b
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lbfa16:
	mov	r0, r5
	bl	Func_80bf3bc
	cmp	r0, #0
	beq	.Lbfa40
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r0
	mov	r0, r5
	bl	Func_80b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x88a
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lbfa40:
	mov	r0, r5
	bl	Func_80bf400
	cmp	r0, #0
	beq	.Lbfa6a
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r0
	mov	r0, r5
	bl	Func_80b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x88e
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lbfa6a:
	mov	r0, r5
	bl	Func_80bf440
	cmp	r0, #0
	beq	.Lbfa9a
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r0
	mov	r0, r5
	bl	Func_80b78e4
	mov	r1, #1
	mov	r0, r5
	bl	_Func_8019908
	mov	r0, r5
	bl	Func_80b7aac
	ldr	r0, =0x88d
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lbfa9a:
	mov	r0, r5
	bl	Func_80bf484
	cmp	r0, #0
	beq	.Lbfaca
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r0
	mov	r0, r5
	bl	Func_80b78e4
	mov	r1, #1
	mov	r0, r5
	bl	_Func_8019908
	mov	r0, r5
	bl	Func_80b7aac
	ldr	r0, =0x883
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lbfaca:
	mov	r0, r5
	bl	Func_80bf4c4
	cmp	r0, #0
	beq	.Lbfaf4
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r0
	mov	r0, r5
	bl	Func_80b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x88c
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lbfaf4:
	mov	r0, r5
	bl	Func_80bf524
	cmp	r0, #0
	beq	.Lbfb1e
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r0
	mov	r0, r5
	bl	Func_80b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x891
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lbfb1e:
	mov	r0, r5
	bl	Func_80bf54c
	cmp	r0, #0
	beq	.Lbfb48
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r0
	mov	r0, r5
	bl	Func_80b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x892
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lbfb48:
	mov	r2, #1
	add	r8, r2
	cmp	r8, r10
	bge	.Lbfb52
	b	.Lbf84e
.Lbfb52:
	mov	r3, #1
	add	r9, r3
	mov	r1, r9
	cmp	r1, #1
	bgt	.Lbfb5e
	b	.Lbf834
.Lbfb5e:
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bf678
