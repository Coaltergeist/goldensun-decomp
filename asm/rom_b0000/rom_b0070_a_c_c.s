	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b211c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x18
	str	r0, [sp, #0x14]
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r11, r3
	bl	_GetUnit
	mov	r2, #1
	mov	r3, #2
	str	r0, [sp, #8]
	str	r3, [sp]
	mov	r9, r2
	mov	r0, #0xf
	mov	r1, #8
	mov	r2, #0xf
	mov	r3, #4
	bl	_CreateUIBox
	str	r0, [sp, #0xc]
	mov	r7, #0
.Lb2152:
	mov	r3, #2
	str	r3, [sp]
	mov	r2, #0x1e
	mov	r3, #3
	mov	r0, #0
	mov	r1, #5
	bl	_CreateUIBox
	mov	r3, #0xe0
	str	r0, [sp, #0x10]
	lsl	r3, #2
	add	r3, r11
	ldr	r2, [r3]
	mov	r3, #0x12
	strb	r3, [r2, #5]
	mov	r2, #0xea
	lsl	r2, #2
	mov	r3, #0xc
	add	r2, r11
	strb	r3, [r2]
	mov	r3, #1
	mov	r10, r3
.Lb217e:
	mov	r2, r10
	cmp	r2, #0
	beq	.Lb2206
	mov	r3, #0
	ldr	r0, [sp, #0x14]
	mov	r10, r3
	bl	_FindEmptyInventorySlot
	mov	r9, r0
	mov	r3, r9
	sub	r3, #1
	cmp	r7, r3
	ble	.Lb219a
	mov	r7, r3
.Lb219a:
	ldr	r2, [sp, #8]
	lsl	r4, r7, #1
	add	r4, #0xd8
	ldrh	r3, [r2, r4]
	ldr	r6, .Lb21e0	@ 0x1ff
	and	r6, r3
	mov	r3, r11
	ldr	r3, [r3, #0x20]
	mov	r1, #5
	mov	r0, r7
	str	r4, [sp, #4]
	mov	r8, r3
	bl	__modsi3
	mov	r1, #5
	mov	r5, r0
	mov	r0, r7
	bl	__divsi3
	mov	r2, r0
	lsl	r5, #4
	lsl	r2, #4
	mov	r1, r5
	add	r2, #8
	mov	r0, r8
	bl	Func_80b0a6c
	mov	r2, #0xea
	lsl	r2, #2
	mov	r3, #3
	add	r2, r11
	strb	r3, [r2]
	ldr	r2, [sp, #8]
	ldr	r4, [sp, #4]
	b	.Lb21e8

	.align	2, 0
.Lb21e0:
	.word	0x1ff
	.pool

.Lb21e8:
	ldrh	r0, [r2, r4]
	bl	Func_80b20e8
	mov	r1, r6
	mov	r2, r0
	mov	r3, #2
	ldr	r0, [sp, #0xc]
	bl	Func_80b110c
	ldr	r3, =0x75
	add	r6, r3
	ldr	r0, [sp, #0x10]
	mov	r1, r6
	bl	Func_80b11a4
.Lb2206:
	ldr	r1, =gKeyPress
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb221c
	mov	r0, #0x70
	bl	_PlaySound
	mov	r5, #0
	b	.Lb22ce
.Lb221c:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2232
	mov	r0, #0x71
	mov	r5, #1
	bl	_PlaySound
	neg	r5, r5
	b	.Lb22ce
.Lb2232:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2256
	mov	r0, #0x6f
	bl	_PlaySound
	sub	r7, #1
	mov	r3, r9
	add	r0, r7, r3
	mov	r1, r9
	bl	__modsi3
	mov	r2, #1
	mov	r7, r0
	mov	r10, r2
.Lb2256:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2278
	mov	r0, #0x6f
	bl	_PlaySound
	add	r7, #1
	mov	r3, r9
	add	r0, r7, r3
	mov	r1, r9
	bl	__modsi3
	mov	r2, #1
	mov	r7, r0
	mov	r10, r2
.Lb2278:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lb229e
	sub	r7, #5
	cmp	r7, #0
	bge	.Lb228a
	add	r7, #0xf
.Lb228a:
	cmp	r7, r9
	blt	.Lb2294
.Lb228e:
	sub	r7, #5
	cmp	r7, r9
	bge	.Lb228e
.Lb2294:
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, #1
	mov	r10, r3
.Lb229e:
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lb22c6
	add	r7, #5
	cmp	r7, r9
	blt	.Lb22b2
	sub	r7, #0xf
.Lb22b2:
	cmp	r7, #0
	bge	.Lb22bc
.Lb22b6:
	add	r7, #5
	cmp	r7, #0
	blt	.Lb22b6
.Lb22bc:
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	mov	r10, r2
.Lb22c6:
	mov	r0, #1
	bl	WaitFrames
	b	.Lb217e
.Lb22ce:
	ldr	r0, [sp, #0x10]
	mov	r1, #2
	bl	_CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	cmp	r5, #0
	bne	.Lb22fa
	ldr	r0, [sp, #0x14]
	mov	r1, r7
	bl	Func_80b2328
	ldr	r0, =0xcc2
	bl	Func_80b04dc
	ldr	r0, [sp, #0x14]
	bl	_FindEmptyInventorySlot
	cmp	r0, #0
	beq	.Lb22fa
	b	.Lb2152
.Lb22fa:
	ldr	r0, [sp, #0xc]
	mov	r1, #2
	bl	_CloseUIBox
	mov	r0, r5
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b211c

.thumb_func_start Func_80b2328
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r1, [sp, #0xc]
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r7, r0
	str	r3, [sp, #8]
	bl	_GetUnit
	ldr	r2, [sp, #0xc]
	lsl	r2, #1
	str	r2, [sp, #4]
	mov	r6, r2
	add	r6, #0xd8
	ldrh	r3, [r0, r6]
	ldr	r2, =0x1ff
	and	r2, r3
	mov	r10, r2
	mov	r8, r0
	mov	r0, r10
	bl	_GetItemInfo
	mov	r5, r0
	ldrb	r1, [r5, #2]
	mov	r0, r7
	bl	_GetEquippedItem
	str	r0, [sp]
	mov	r3, r8
	ldrh	r0, [r3, r6]
	bl	Func_80b20e8
	ldrb	r1, [r5, #0xc]
	mov	r9, r0
	cmp	r1, #2
	beq	.Lb238c
	mov	r0, r10
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0xcba
	bl	Func_80b0574
	b	.Lb24b0
.Lb238c:
	mov	r3, r8
	ldrh	r2, [r3, r6]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lb23aa
	mov	r0, r10
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0xcbb
	bl	Func_80b0574
	b	.Lb24b0
.Lb23aa:
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb23cc
	ldrb	r3, [r5, #3]
	and	r3, r1
	cmp	r3, #0
	beq	.Lb23cc
	mov	r0, r10
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0xcbc
	bl	Func_80b0574
	b	.Lb24b0
.Lb23cc:
	ldr	r3, =gState
	ldr	r3, [r3, #0x10]
	cmp	r9, r3
	bls	.Lb23dc
	ldr	r0, =0xcbd
	bl	Func_80b0574
	b	.Lb24b0
.Lb23dc:
	mov	r0, r10
	mov	r1, #2
	bl	_Func_8019908
	mov	r0, r9
	mov	r1, #5
	bl	_Func_8019908
	ldr	r2, =0xcbe
	mov	r11, r2
	mov	r0, r11
	bl	Func_80b0574
	mov	r0, #0
	bl	Func_80b0634
	cmp	r0, #0
	beq	.Lb240a
	mov	r0, r11
	add	r0, #1
	bl	Func_80b0574
	b	.Lb24b0
.Lb240a:
	ldr	r5, [sp, #4]
	mov	r2, r8
	add	r5, #0xd8
	mov	r3, r8
	ldrh	r6, [r3, r5]
	strh	r0, [r2, r5]
	ldr	r3, [sp, #8]
	mov	r1, r7
	ldr	r0, [r3, #0x20]
	bl	Func_80b1dec
	mov	r1, #2
	mov	r0, r10
	bl	_Func_8019908
	mov	r0, r11
	add	r0, #2
	bl	Func_80b0574
	bl	_Func_8019a54
	mov	r0, #0xa
	bl	WaitFrames
	mov	r0, #0x64
	bl	_PlaySound
	mov	r0, #0x6e
	bl	WaitFrames
	mov	r0, #0x64
	bl	_PlaySound
	mov	r0, #0x6e
	bl	WaitFrames
	mov	r0, #0x64
	bl	_PlaySound
	mov	r0, #0x6e
	bl	WaitFrames
	mov	r0, #0x70
	bl	_PlaySound
	mov	r0, #0x14
	bl	WaitFrames
	mov	r2, r8
	strh	r6, [r2, r5]
	ldr	r1, [sp, #0xc]
	mov	r0, r7
	bl	_RepairItem
	mov	r3, r9
	neg	r0, r3
	bl	_AddCoins
	bl	Func_80b10cc
	ldr	r2, [sp, #8]
	mov	r1, r7
	ldr	r0, [r2, #0x20]
	bl	Func_80b1dec
	mov	r1, #2
	mov	r0, r10
	bl	_Func_8019908
	mov	r0, r11
	add	r0, #3
	bl	Func_80b0574
	mov	r0, r7
	ldr	r1, [sp, #0xc]
	bl	Func_80b1868
	cmp	r0, #0
	beq	.Lb24b0
	mov	r0, r7
	ldr	r1, [sp]
	bl	Func_80b196c
.Lb24b0:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2328

.thumb_func_start Func_80b24e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	str	r1, [sp, #8]
	ldr	r3, =iwram_3001f2c
	ldr	r6, [r3]
	ldr	r3, =0x39e
	add	r3, r6
	ldrh	r4, [r3]
	mov	r9, r0
	mov	r0, #1
	ldr	r1, =gState
	mov	r11, r0
	mov	r0, #0x8e
	str	r4, [sp]
	lsl	r0, #1
	mov	r8, r3
	add	r3, r1, r0
	mov	r2, #0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r10, r2
	ldr	r2, =.Lb4146
	lsl	r3, #1
	ldrsh	r4, [r2, r3]
	mov	r2, #0x8c
	str	r4, [sp, #4]
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	mov	r7, #0
	cmp	r4, r3
	ble	.Lb2534
	b	.Lb2684
.Lb2534:
	mov	r3, #0xe4
	mov	r4, r8
	strh	r3, [r4]
	mov	r1, #2
	mov	r0, #0xe4
	bl	_Func_8019908
	ldr	r5, =0xcc3
	mov	r0, r5
	bl	Func_80b0574
	mov	r2, r8
	ldrh	r0, [r2]
	mov	r1, #2
	add	r5, #1
	bl	_Func_8019908
	mov	r0, r5
	bl	Func_80b0574
.Lb255c:
	mov	r3, r11
	cmp	r3, #0
	beq	.Lb25b4
	ldr	r0, =0x3a7
	add	r3, r6, r0
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r4, #0
	add	r0, r7, r1
	mov	r11, r4
	bl	__modsi3
	mov	r3, #0xdb
	mov	r7, r0
	lsl	r1, r7, #1
	lsl	r3, #2
	add	r2, r1, r3
	add	r3, r6, #2
	add	r1, r7
	ldrsh	r4, [r3, r2]
	lsl	r1, #3
	sub	r1, #0xc
	mov	r0, r9
	mov	r2, #0
	mov	r10, r4
	bl	Func_80b0a6c
	mov	r3, #0xea
	lsl	r3, #2
	add	r2, r6, r3
	ldr	r4, =0x39e
	mov	r3, #3
	strb	r3, [r2]
	add	r5, r6, r4
	ldrh	r2, [r5]
	mov	r0, r9
	mov	r1, r7
	bl	Func_80b11c4
	ldrh	r2, [r5]
	ldr	r0, [sp, #8]
	mov	r1, r10
	bl	Func_80b1470
.Lb25b4:
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb262c
	ldr	r0, =0x39e
	add	r5, r6, r0
	ldrh	r1, [r5]
	mov	r0, r10
	bl	_GiveItemTo
	mov	r1, r0
	cmp	r1, #0
	bge	.Lb2602
	mov	r0, #0x71
	bl	_PlaySound
	mov	r0, r10
	mov	r1, #1
	bl	_Func_8019908
	ldrh	r0, [r5]
	mov	r1, #2
	bl	_Func_8019908
	mov	r0, r10
	bl	_FindEmptyInventorySlot
	cmp	r0, #0xf
	bne	.Lb25fa
	ldr	r0, =0xc9e
	bl	Func_80b04dc
	b	.Lb255c
.Lb25fa:
	ldr	r0, =0xca6
	bl	Func_80b04dc
	b	.Lb255c
.Lb2602:
	mov	r0, r10
	bl	_Func_80788c4
	mov	r0, #0x65
	bl	_PlaySound
	ldr	r0, =0xca1
	bl	Func_80b0574
	ldrh	r1, [r5]
	mov	r0, r10
	bl	_GiveItemTo
	ldr	r2, [sp, #4]
	neg	r0, r2
	bl	_AddCoinsSpent
	mov	r0, #1
	bl	_Func_8079754
	b	.Lb267a
.Lb262c:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2644
	ldr	r0, =0xcc5
	bl	Func_80b0574
	mov	r0, #0x71
	bl	_PlaySound
	b	.Lb267a
.Lb2644:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb265c
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, #1
	sub	r7, #1
	mov	r11, r3
.Lb265c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2672
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r4, #1
	add	r7, #1
	mov	r11, r4
.Lb2672:
	mov	r0, #1
	bl	WaitFrames
	b	.Lb255c
.Lb267a:
	ldr	r0, =0x39e
	mov	r2, sp
	ldrh	r2, [r2]
	add	r3, r6, r0
	strh	r2, [r3]
.Lb2684:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b24e4

