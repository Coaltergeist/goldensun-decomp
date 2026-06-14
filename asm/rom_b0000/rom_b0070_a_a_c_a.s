	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b010c  @ 0x080b010c
	push	{r5, lr}
	mov	r1, #0xa7
	lsl	r1, #4
	mov	r0, #0x37
	sub	sp, #4
	bl	galloc_iwram
	mov	r5, r0
	bl	_Func_808e118
	mov	r3, #0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8500029c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xea
	lsl	r3, #2
	add	r2, r5, r3
	mov	r3, #0xc
	strb	r3, [r2]
	ldr	r2, =0x36e
	add	r0, r5, r2
	bl	_Func_80796c4
	ldr	r2, =0x3a7
	add	r3, r5, r2
	strb	r0, [r3]
	bl	AllocSpriteSlot
	mov	r2, #0xe4
	lsl	r2, #2
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb3940
	mov	r1, #0x80
	bl	UploadSpriteGFX
	bl	AllocSpriteSlot
	ldr	r2, =0x392
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb3b40
	mov	r1, #0x80
	bl	UploadSpriteGFX
	bl	AllocSpriteSlot
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb3bc0
	mov	r1, #0x80
	bl	UploadSpriteGFX
	bl	AllocSpriteSlot
	ldr	r2, =0x396
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb39c0
	mov	r1, #0x80
	bl	UploadSpriteGFX
	bl	AllocSpriteSlot
	ldr	r2, =0x39a
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb3a40
	mov	r1, #0x80
	bl	UploadSpriteGFX
	bl	AllocSpriteSlot
	mov	r3, #0xe6
	lsl	r3, #2
	add	r5, r3
	ldr	r2, =.Lb3ac0
	strh	r0, [r5]
	mov	r1, #0x80
	bl	UploadSpriteGFX
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80b00f4
	bl	StartTask
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80b010c

.thumb_func_start Func_80b0204  @ 0x080b0204
	push	{r5, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r0, =Func_80b00f4
	ldr	r5, [r3]
	bl	StopTask
	bl	_Func_8019a54
	mov	r2, #0xe4
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_8003f3c
	ldr	r2, =0x392
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_8003f3c
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_8003f3c
	ldr	r2, =0x396
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_8003f3c
	mov	r2, #0xe6
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_8003f3c
	ldr	r3, =0x39a
	add	r5, r3
	ldrh	r0, [r5]
	bl	Func_8003f3c
	mov	r0, #0x37
	bl	gfree
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80b0204

.thumb_func_start Func_80b0278  @ 0x080b0278
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r1
	mov	r1, #0
	mov	r8, r0
	sub	sp, #4
	mov	r10, r1
	bl	Func_80b26c8
	cmp	r8, r0
	bge	.Lb029a
	mov	r2, r8
	cmp	r2, #0
	bge	.Lb029e
.Lb029a:
	mov	r3, #0
	mov	r8, r3
.Lb029e:
	mov	r0, r8
	bl	Func_80b26cc
	bl	Func_80b010c
	ldr	r3, =iwram_3001f2c
	mov	r0, r8
	ldr	r7, [r3]
	bl	Func_80b2764
	ldr	r1, =0x3a9
	mov	r2, r8
	add	r3, r7, r1
	strb	r0, [r3]
	cmp	r2, #0x10
	bne	.Lb02c8
	mov	r3, #0xeb
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #1
	strb	r3, [r2]
.Lb02c8:
	mov	r1, r8
	cmp	r1, #0x11
	bne	.Lb02d8
	mov	r3, #0xeb
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #1
	strb	r3, [r2]
.Lb02d8:
	mov	r1, r8
	cmp	r1, #0x12
	bne	.Lb02e8
	mov	r3, #0xeb
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #1
	strb	r3, [r2]
.Lb02e8:
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
	mov	r9, r0
	cmp	r0, #0
	bne	.Lb0322
	mov	r3, #2
	mov	r0, #5
	str	r3, [sp]
	neg	r0, r0
	mov	r1, #0
	mov	r2, #5
	mov	r3, #5
	bl	_CreateUIBox
	mov	r9, r0
.Lb0322:
	mov	r2, #0xe4
	lsl	r2, #2
	add	r3, r7, r2
	mov	r1, #0x80
	ldrh	r0, [r3]
	lsl	r1, #23
	mov	r3, #0
	mov	r2, r9
	str	r3, [sp]
	bl	_Func_801eadc
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r5, #5]
	ldr	r3, .Lb0374	@ 0
	strb	r3, [r5, #4]
	mov	r3, #0xe0
	lsl	r3, #2
	add	r6, r7, r3
	mov	r1, #0x20
	mov	r0, r6
	neg	r1, r1
	mov	r2, #0x70
	bl	Func_80b0a20
	str	r5, [r6]
	ldr	r0, =0xc9b
	bl	Func_80b04dc
.Lb035c:
	mov	r0, r10
	bl	_ShopMenu
	ldr	r1, =0x3aa
	mov	r10, r0
	add	r3, r7, r1
	mov	r2, r10
	strb	r2, [r3]
	mov	r3, r10
	cmp	r3, #0
	bne	.Lb039e
	b	.Lb0388

	.align	2, 0
.Lb0374:
	.word	0
	.pool

.Lb0388:
	mov	r2, #0x9b
	lsl	r2, #2
	add	r1, r7, r2
	mov	r0, r8
	bl	Func_80b2720
	ldr	r1, =0x3a6
	add	r3, r7, r1
	strb	r0, [r3]
	ldr	r0, =0xca7
	b	.Lb03c0
.Lb039e:
	mov	r2, r10
	cmp	r2, #1
	bne	.Lb03b0
	ldr	r0, =0xca9
	bl	Func_80b04dc
	bl	Func_80b1a14
	b	.Lb03e8
.Lb03b0:
	mov	r3, r10
	cmp	r3, #2
	bne	.Lb03d8
	bl	Func_80b0070
	cmp	r0, #0
	beq	.Lb03ca
	ldr	r0, =0xcb8
.Lb03c0:
	bl	Func_80b04dc
	bl	Func_80b0aac
	b	.Lb03e8
.Lb03ca:
	ldr	r0, =0xcb7
	bl	Func_80b04dc
	mov	r0, #1
	bl	WaitFrames
	b	.Lb03e8
.Lb03d8:
	mov	r1, r10
	cmp	r1, #3
	bne	.Lb0400
	ldr	r0, =0xcb9
	bl	Func_80b04dc
	bl	Func_80b2110
.Lb03e8:
	mov	r2, #0xe0
	lsl	r2, #2
	mov	r1, #0x20
	add	r0, r7, r2
	neg	r1, r1
	mov	r2, #0x70
	bl	Func_80b0a20
	ldr	r0, =0xca4
	bl	Func_80b04dc
	b	.Lb035c
.Lb0400:
	ldr	r0, =0xca5
	bl	Func_80b04dc
	mov	r0, r9
	mov	r1, #2
	bl	_CloseUIBox
	bl	Func_80b0204
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b0278

.thumb_func_start Debug_TestEquipAndStatus  @ 0x080b0444
	push	{r5, r6, lr}
	ldr	r3, =gState
	ldr	r2, =0x30d40
	str	r2, [r3, #0x10]
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x1c
	strb	r2, [r3]
	ldr	r1, =0x48d
	mov	r0, #1
	bl	_GiveItemTo
	mov	r1, r0
	mov	r0, #1
	bl	_EquipItem
	ldr	r1, =0x40b
	mov	r0, #0
	bl	_GiveItemTo
	mov	r1, r0
	mov	r0, #0
	bl	_EquipItem
	mov	r1, #0xe7
	mov	r0, #2
	bl	_GiveItemTo
	mov	r0, #3
	bl	_GetUnit
	ldr	r6, =0x131
	mov	r5, #1
	strb	r5, [r0, r6]
	mov	r0, #5
	bl	_GetUnit
	strb	r5, [r0, r6]
	mov	r0, #2
	bl	_GetUnit
	mov	r3, #0xa0
	lsl	r3, #1
	add	r0, r3
	strb	r5, [r0]
	mov	r1, #0x1e
	mov	r0, #1
	bl	Func_80b0278
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Debug_TestEquipAndStatus

.thumb_func_start Func_80b04c4  @ 0x080b04c4
	push	{lr}
	b	.Lb04ce
.Lb04c8:
	mov	r0, #1
	bl	WaitFrames
.Lb04ce:
	bl	_Func_80f954c
	cmp	r0, #0
	bne	.Lb04c8
	pop	{r0}
	bx	r0
.func_end Func_80b04c4

.thumb_func_start Func_80b04dc  @ 0x080b04dc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xe9
	ldr	r6, [r3]
	lsl	r2, #2
	add	r3, r6, r2
	mov	r5, r0
	ldrh	r0, [r3]
	bl	_GetSpriteVoice
	mov	r7, r0
	bl	_Func_8019a54
	ldr	r2, =0x3a9
	add	r3, r6, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	cmp	r1, #2
	bne	.Lb050a
	ldr	r3, =0xcc6
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb050a:
	cmp	r1, #0
	bne	.Lb0516
	ldr	r3, =0xcf1
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb0516:
	mov	r2, #0xeb
	lsl	r2, #2
	add	r3, r6, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lb052e
	ldr	r3, =0xd4c
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb052e:
	lsl	r3, r7, #16
	mov	r2, #0x22
	orr	r3, r2
	mov	r0, r5
	mov	r1, #5
	mov	r2, #0
	bl	_Func_8017658
	b	.Lb0546
.Lb0540:
	mov	r0, #1
	bl	WaitFrames
.Lb0546:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb0540
	mov	r0, #1
	bl	WaitFrames
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b04dc

.thumb_func_start Func_80b0574  @ 0x080b0574
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xe0
	ldr	r6, [r3]
	lsl	r2, #2
	add	r7, r6, r2
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]
	add	r2, #0x24
	mov	r10, r3
	add	r3, r6, r2
	mov	r5, r0
	ldrh	r0, [r3]
	bl	_GetSpriteVoice
	ldr	r2, =0x3a9
	add	r3, r6, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r8, r0
	cmp	r1, #2
	bne	.Lb05ae
	ldr	r3, =0xcc6
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb05ae:
	cmp	r1, #0
	bne	.Lb05ba
	ldr	r3, =0xcf1
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb05ba:
	mov	r2, #0xeb
	lsl	r2, #2
	add	r3, r6, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lb05d2
	ldr	r3, =0xd4c
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb05d2:
	ldr	r2, [r7]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	bl	_Func_8019a54
	mov	r2, r8
	lsl	r3, r2, #16
	mov	r2, #0x22
	orr	r3, r2
	mov	r0, r5
	mov	r1, #5
	mov	r2, #0
	bl	_Func_8017658
	b	.Lb05f6
.Lb05f0:
	mov	r0, #1
	bl	WaitFrames
.Lb05f6:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb05f0
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0xe0
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r2, r10
	strb	r2, [r3, #5]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b0574

.thumb_func_start Func_80b0634  @ 0x080b0634
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r5, [r3]
	mov	r3, #0xe0
	lsl	r3, #2
	add	r5, r3
	mov	r7, r0
	ldr	r0, [r5]
	ldrb	r6, [r0, #5]
	bl	_Func_80a17c4
	mov	r2, r7
	mov	r1, #5
	mov	r0, #7
	bl	_YesNoMenu2
	ldr	r3, [r5]
	mov	r7, r0
	strb	r6, [r3, #5]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b0634

.thumb_func_start Func_80b0664  @ 0x080b0664
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r5, [r3]
	mov	r3, #0xe0
	lsl	r3, #2
	add	r5, r3
	mov	r7, r0
	ldr	r0, [r5]
	ldrb	r6, [r0, #5]
	bl	_Func_80a17c4
	mov	r2, r7
	mov	r1, #7
	mov	r0, #7
	bl	_YesNoMenu2
	ldr	r3, [r5]
	mov	r7, r0
	strb	r6, [r3, #5]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b0664

.thumb_func_start Func_80b0694  @ 0x080b0694
	push	{lr}
	mov	r2, #0xd2
	lsl	r2, #2
	ldr	r4, =0x39e
	add	r3, r0, r2
	ldr	r2, [r3]
	add	r3, r0, r4
	ldrh	r3, [r3]
	mov	r1, #0
	cmp	r3, #0
	beq	.Lb06b6
	add	r3, r0, r4
	ldrh	r0, [r3]
.Lb06ae:
	add	r1, #1
	ldr	r2, [r2, #4]
	cmp	r1, r0
	bne	.Lb06ae
.Lb06b6:
	mov	r0, r2
	pop	{r1}
	bx	r1
.func_end Func_80b0694

.thumb_func_start Func_80b06c0  @ 0x080b06c0
	push	{lr}
	lsl	r3, r1, #4
	add	r1, r3, #1
	cmp	r0, #0
	ble	.Lb06e4
	ldr	r4, =.Lb4100
.Lb06cc:
	ldrh	r3, [r4]
	sub	r0, #1
	add	r3, r2, r3
	add	r4, #2
	strb	r1, [r3, #4]
	strb	r1, [r3, #8]
	strb	r1, [r3, #0xc]
	strb	r1, [r3, #0x10]
	strb	r1, [r3, #0x14]
	strb	r1, [r3, #0x18]
	cmp	r0, #0
	bne	.Lb06cc
.Lb06e4:
	pop	{r0}
	bx	r0
.func_end Func_80b06c0

.thumb_func_start Func_80b06ec  @ 0x080b06ec
	push	{lr}
	ldr	r3, =.Lb3d40
	lsl	r0, #5
	add	r0, r3
	ldr	r3, =.Lb413c
	lsl	r2, #1
	ldrh	r3, [r3, r2]
	add	r1, r3
	add	r1, #2
	mov	r4, #3
.Lb0700:
	ldrb	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lb0730
	strb	r2, [r1]
	add	r0, #1
	ldrb	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lb0730
	strb	r2, [r1, #1]
	add	r0, #1
	ldrb	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lb0730
	strb	r2, [r1, #0x1e]
	add	r0, #1
	ldrb	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lb0730
	strb	r2, [r1, #0x1f]
	add	r0, #1
.Lb0730:
	sub	r4, #1
	add	r1, #4
	cmp	r4, #0
	bge	.Lb0700
	pop	{r0}
	bx	r0
.func_end Func_80b06ec

.thumb_func_start Func_80b0744  @ 0x080b0744
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r1, #0x80
	mov	r5, r0
	lsl	r1, #3
	mov	r0, #0xe
	mov	r10, r2
	mov	r7, r3
	sub	sp, #4
	bl	galloc_ewram
	mov	r3, #0
	mov	r6, r0
	mov	r9, r3
	ldr	r0, =.Lb3e80
	ldr	r3, =REG_DMA3SAD
	mov	r1, r6
	ldr	r2, =0x84000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #0
	bl	Func_80b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #1
	bl	Func_80b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #2
	bl	Func_80b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #3
	bl	Func_80b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	cmp	r0, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #4
	bl	Func_80b06ec
.Lb07f2:
	bl	AllocSpriteSlot
	mov	r5, r0
	cmp	r5, #0x60
	beq	.Lb0816
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, r6
	bl	UploadSpriteGFX
	ldr	r1, =0x80008000
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	str	r7, [sp]
	bl	_Func_801eadc
	mov	r9, r0
.Lb0816:
	mov	r0, #0xe
	bl	gfree
	mov	r0, r9
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b0744

.thumb_func_start Func_80b0840  @ 0x080b0840
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r5, [r3, #0x14]
	lsl	r2, #4
	ldr	r1, [r3]
	add	r4, r5, r2
	ldr	r2, =0x236
	mov	r6, r0
	add	r1, r2
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	ldr	r2, =0x84000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xe0
	lsl	r2, #2
	add	r1, r5, r2
	mov	r0, r4
	ldr	r2, =0x840002a0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r6
	mov	r1, #1
	bl	_Func_8091200
	mov	r0, #0x10
	bl	_Func_8091254
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b0840

