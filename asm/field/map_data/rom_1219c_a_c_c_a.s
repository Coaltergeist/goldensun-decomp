	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8012350  @ 0x08012350
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e70
	ldr	r5, [r3]
	ldr	r3, [r5, #4]
	mov	r6, #0
	b	.L1236e
.L1235c:
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #0x96
	add	r6, #1
	lsl	r3, #1
	cmp	r6, r3
	bge	.L12378
	ldr	r3, [r5, #4]
.L1236e:
	cmp	r3, #0xff
	bgt	.L1235c
	ldr	r3, [r5, #8]
	cmp	r3, #0xff
	bgt	.L1235c
.L12378:
	mov	r3, #0
	str	r3, [r5, #0xc]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8012350

.thumb_func_start Func_8012388  @ 0x08012388
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r6, =ewram_201c000
	mov	r8, r0
	mov	r10, r1
	ldr	r5, =0x27c
	mov	r0, #0x31
	mov	r1, r5
	bl	galloc_iwram
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8009e7c
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =gPtrs
	mov	r1, #0x80
	lsl	r1, #5
	add	r6, r1
	add	r3, #0xc4
	ldr	r4, [r3]
	ldr	r2, =ewram_203c000
	mov	r0, r8
	mov	r1, r10
	mov	r3, r6
	bl	_call_via_r4
	mov	r0, #0x31
	bl	gfree
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8012388

.thumb_func_start Func_80123f4  @ 0x080123f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x28
	str	r0, [sp, #0xc]
	ldr	r3, [r1]
	add	r0, sp, #0x1c
	mov	r7, r2
	mov	r2, #0
	str	r2, [r0, #4]
	str	r3, [r0]
	ldr	r3, [r1, #8]
	add	r1, sp, #0x10
	str	r3, [r0, #8]
	ldr	r3, =Func_80009c0
	bl	_call_via_r3
	mov	r2, sp
	add	r2, #0x10
	str	r2, [sp]
	ldr	r3, =Func_8000888
	ldr	r0, [r2, #8]
	ldr	r1, [sp, #0xc]
	.call_via r3
	ldr	r2, [sp]
	ldr	r3, [r2, #4]
	sub	r0, r3, r0
	str	r0, [sp, #8]
	ldr	r3, =gPhysVec
	mov	r9, r3
	ldr	r3, [r3]
	mov	r2, #0
	neg	r3, r3
	str	r3, [sp, #4]
	mov	r11, r2
	b	.L1244c
.L12448:
	ldr	r3, =gPhysVec
	mov	r9, r3
.L1244c:
	mov	r2, r9
	ldr	r1, [r2, #0x10]
	mov	r3, r11
	ldr	r2, =Func_80008ac
	sub	r1, r3
	lsl	r1, #16
	mov	r10, r2
	ldr	r0, [sp, #4]
	bl	_call_via_r10
	ldr	r3, [sp, #0xc]
	mov	r8, r0
	sub	r0, r3
	cmp	r0, #0
	bne	.L1246c
	mov	r0, #1
.L1246c:
	ldr	r1, [sp, #8]
	bl	_call_via_r10
	mov	r5, r0
	cmp	r5, #0
	bge	.L124d8
	mov	r1, #0x80
	ldr	r6, =Func_8000888
	neg	r0, r5
	lsl	r1, #8
	.call_via r6
	mov	r2, r9
	mov	r1, r0
	ldr	r0, [r2]
	bl	_call_via_r10
	mov	r1, r8
	str	r0, [r7]
	mov	r0, r5
	.call_via r6
	ldr	r3, [sp]
	ldr	r1, [r3, #8]
	ldr	r3, [r3, #4]
	sub	r1, r5
	asr	r1, #4
	sub	r5, r0, r3
	asr	r5, #4
	mov	r0, r1
	.call_via r6
	mov	r3, r0
	mov	r1, r5
	mov	r0, r5
	.call_via r6
	add	r3, r0
	ldr	r2, =Func_8000948
	mov	r0, r3
	bl	_call_via_r2
	lsl	r0, #12
	cmp	r5, #0
	bge	.L124ca
	neg	r0, r0
.L124ca:
	mov	r1, #0x80
	lsl	r1, #8
	.call_via r6
	str	r0, [r7, #4]
	b	.L124de
.L124d8:
	mov	r3, #0
	str	r3, [r7]
	str	r3, [r7, #4]
.L124de:
	mov	r2, #1
	mov	r3, #0
	add	r11, r2
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	mov	r3, r11
	add	r7, #0x14
	cmp	r3, #0x9f
	ble	.L12448
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80123f4

.thumb_func_start Debug_SpriteTest  @ 0x08012518
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x40
	mov	r0, #0x90
	mov	r1, #0x60
	mov	r2, #1
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x14]
	mov	r3, #0
	mov	r1, #0xa0
	mov	r0, #9
	mov	r10, r3
	str	r2, [sp, #0x10]
	str	r2, [sp, #0xc]
	bl	galloc_ewram
	ldr	r2, =iwram_3001c90
	str	r0, [sp, #8]
	add	r4, sp, #0x1c
	mov	r0, r10
	mov	r3, #3
	strb	r3, [r2]
	str	r0, [r4]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	ldr	r1, [sp, #8]
	ldr	r2, =0x85000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, r10
	str	r1, [r4]
	mov	r0, r4
	add	r1, sp, #0x20
	ldr	r2, =0x85000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	bl	SpriteTest_ChangeVar
	add	r2, sp, #0x20
	mov	r8, r2
	ldr	r1, .L125ac	@ 1
	mov	r7, #0
	mov	r2, #1
	mov	r3, r8
.L12580:
	add	r7, #1
	strh	r2, [r3, #2]
	strb	r1, [r3, #5]
	strh	r0, [r3]
	add	r3, #8
	cmp	r7, #3
	bls	.L12580
	mov	r3, #1
	mov	r0, r8
	ldr	r2, =gDebugMode
	strb	r3, [r0, #4]
	mov	r3, #2
	strb	r3, [r2]
	ldr	r2, =REG_BLDCNT
	ldr	r3, .L125b0	@ 0x3f42
	strh	r3, [r2]
	ldr	r3, .L125b4	@ 0x1e0
	mov	r2, #0xa0
	lsl	r2, #19
	strh	r3, [r2]
	b	.L125d0

	.align	2, 0
.L125ac:
	.word	1
.L125b0:
	.word	0x3f42
.L125b4:
	.word	0x1e0
	.pool

.L125d0:
	mov	r2, #0x80
	ldr	r3, =0x1140
	lsl	r2, #19
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_8003bb4
.L125de:
	bl	ClearHeap
	bl	ClearTasks
	mov	r1, #0xa0
	mov	r0, #9
	bl	galloc_ewram
	str	r0, [sp, #8]
	bl	ClearSprites
	mov	r0, #2
	bl	InitActors
	mov	r0, r8
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	ldr	r1, =gBuffer
	mov	r3, #0
	mov	r0, #0
	bl	PreloadSpriteGFX
	mov	r2, r8
	b	.L12618

	.pool_aligned

.L12618:
	mov	r1, #0
	ldrsh	r0, [r2, r1]
	bl	_GetSpriteInfo
	ldrb	r3, [r0, #4]
	cmp	r3, #0x14
	bne	.L12638
	mov	r0, r8
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	ldr	r1, =ewram_2018000
	add	r2, #1
	mov	r0, #1
	mov	r3, #0
	bl	PreloadSpriteGFX
.L12638:
	mov	r7, #0
	mov	r6, r8
.L1263c:
	mov	r1, #0
	ldrsh	r0, [r6, r1]
	bl	_GetSpriteInfo
	ldrb	r3, [r0, #4]
	mov	r5, #0
	cmp	r3, #0x14
	bne	.L12656
	mov	r3, #1
	and	r3, r7
	cmp	r3, #0
	beq	.L12656
	mov	r5, #1
.L12656:
	mov	r2, #0
	ldrsh	r0, [r6, r2]
	lsl	r3, r5, #12
	add	r0, r5
	add	r0, r3
	bl	CreateSprite
	mov	r3, #8
	ldrsh	r1, [r6, r3]
	mov	r5, r0
	bl	Sprite_AddLayer
	mov	r0, #0x10
	ldrsh	r1, [r6, r0]
	mov	r0, r5
	bl	Sprite_AddLayer
	mov	r0, r5
	mov	r2, #0x18
	ldrsh	r1, [r6, r2]
	bl	Sprite_AddLayer
	add	r3, sp, #0xc
	ldrb	r3, [r3]
	add	r5, #0x26
	add	r7, #1
	strb	r3, [r5]
	cmp	r7, #9
	bls	.L1263c
	mov	r6, r8
	mov	r7, #0
	mov	r5, r8
	add	r6, #4
	mov	r2, #4
.L1269a:
	mov	r0, r8
	ldrb	r3, [r2, r0]
	cmp	r3, #0
	beq	.L126ac
	mov	r1, #1
	ldrsb	r1, [r6, r1]
	mov	r0, r7
	str	r2, [sp, #4]
	b	.L126b2
.L126ac:
	mov	r0, r7
	mov	r1, #8
	str	r2, [sp, #4]
.L126b2:
	bl	SpriteTest_SetLayerPriority
	ldr	r2, [sp, #4]
	mov	r1, #6
	ldrsb	r1, [r5, r1]
	mov	r0, r7
	str	r2, [sp, #4]
	bl	SpriteTest_SetLayerColorswap
	mov	r3, #2
	ldrsh	r1, [r5, r3]
	mov	r0, r7
	bl	Func_8012d70
	ldr	r2, [sp, #4]
	add	r7, #1
	add	r5, #8
	add	r6, #8
	add	r2, #8
	cmp	r7, #3
	bls	.L1269a
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	ldr	r2, [sp, #8]
	bl	Func_8012b2c
	mov	r1, #0xc8
	ldr	r0, =Task_Debug_SpriteTest
	lsl	r1, #4
	bl	StartTask
.L126f0:
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, =gKeyHeld
	ldr	r1, =gKeyRepeat
	mov	r11, r0
	mov	r9, r1
.L126fe:
	mov	r3, r11
	ldr	r2, [r3]
	mov	r3, #8
	and	r2, r3
	cmp	r2, #0
	beq	.L1275e
	mov	r0, r11
	ldr	r2, [r0]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.L1271c
	ldr	r1, [sp, #0x18]
	sub	r1, #1
	str	r1, [sp, #0x18]
.L1271c:
	mov	r3, r11
	ldr	r2, [r3]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.L1272e
	ldr	r0, [sp, #0x18]
	add	r0, #1
	str	r0, [sp, #0x18]
.L1272e:
	mov	r1, r11
	ldr	r2, [r1]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L12740
	ldr	r2, [sp, #0x14]
	sub	r2, #1
	str	r2, [sp, #0x14]
.L12740:
	mov	r3, r11
	ldr	r2, [r3]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.L12752
	ldr	r0, [sp, #0x14]
	add	r0, #1
	str	r0, [sp, #0x14]
.L12752:
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	ldr	r2, [sp, #8]
	bl	Func_8012b2c
	b	.L127be
.L1275e:
	ldr	r1, =gKeyRepeat
	ldr	r3, [r1]
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L1277c
	mov	r0, #1
	neg	r0, r0
	add	r10, r0
	mov	r2, r10
	mov	r3, #3
	and	r2, r3
	mov	r10, r2
.L1277c:
	ldr	r2, [r1]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.L12792
	mov	r3, #1
	add	r10, r3
	mov	r0, r10
	mov	r3, #3
	and	r0, r3
	mov	r10, r0
.L12792:
	ldr	r2, [r1]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.L127a6
	ldr	r2, [sp, #0x10]
	mov	r3, #3
	sub	r2, #1
	and	r2, r3
	str	r2, [sp, #0x10]
.L127a6:
	ldr	r2, [r1]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.L127be
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
	ldr	r0, [sp, #0x10]
	mov	r3, #3
	and	r0, r3
	str	r0, [sp, #0x10]
.L127be:
	ldr	r3, =gKeyPress
	ldr	r2, [r3]
	mov	r3, #8
	and	r2, r3
	cmp	r2, #0
	beq	.L127e8
	ldr	r3, =iwram_3001e60
	ldr	r1, [sp, #0xc]
	ldr	r2, [r3]
	mov	r3, #1
	eor	r1, r3
	str	r1, [sp, #0xc]
	mov	r7, #0
	add	r2, #0x26
.L127da:
	add	r3, sp, #0xc
	ldrb	r3, [r3]
	add	r7, #1
	strb	r3, [r2]
	add	r2, #0x38
	cmp	r7, #9
	bls	.L127da
.L127e8:
	ldr	r0, [sp, #0x10]
	cmp	r0, #1
	beq	.L1287c
	cmp	r0, #1
	bcc	.L12800
	cmp	r0, #2
	bne	.L127f8
	b	.L12954
.L127f8:
	cmp	r0, #3
	bne	.L127fe
	b	.L129ca
.L127fe:
	b	.L12a46
.L12800:
	mov	r1, r10
	cmp	r1, #1
	bne	.L12808
	b	.L12a46
.L12808:
	ldr	r1, =gKeyRepeat
	mov	r3, #0x80
	ldr	r2, [r1]
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.L12840
	mov	r2, r10
	mov	r3, r8
	lsl	r6, r2, #3
	add	r2, r3, r6
	ldrh	r3, [r2, #2]
	sub	r3, #1
	strh	r3, [r2, #2]
	lsl	r3, #16
	mov	r1, #0
	cmp	r3, #0
	bge	.L1282e
	strh	r1, [r2, #2]
.L1282e:
	mov	r0, r10
	cmp	r0, #0
	beq	.L12836
	b	.L126f0
.L12836:
	mov	r1, r8
	ldrh	r3, [r1, #2]
	mov	r2, r8
	strh	r3, [r2, #0xa]
	b	.L126f0
.L12840:
	ldr	r2, [r1]
	mov	r3, #0x80
	lsl	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L1284e
	b	.L12a46
.L1284e:
	mov	r3, r10
	lsl	r6, r3, #3
	mov	r0, r8
	add	r2, r0, r6
	ldrh	r3, [r2, #2]
	mov	r1, #0xc6
	add	r3, #1
	strh	r3, [r2, #2]
	lsl	r1, #15
	lsl	r3, #16
	cmp	r3, r1
	ble	.L1286a
	mov	r3, #0x63
	strh	r3, [r2, #2]
.L1286a:
	mov	r2, r10
	cmp	r2, #0
	beq	.L12872
	b	.L126f0
.L12872:
	mov	r0, r8
	ldrh	r3, [r0, #2]
	mov	r1, r8
	strh	r3, [r1, #0xa]
	b	.L126f0
.L1287c:
	mov	r3, r11
	ldr	r2, [r3]
	mov	r3, #8
	and	r2, r3
	mov	r1, #0
	mov	r4, #1
	cmp	r2, #0
	beq	.L1288e
	mov	r4, #0xa
.L1288e:
	mov	r0, r9
	ldr	r2, [r0]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.L128c0
	mov	r7, #0
	cmp	r1, r4
	bcs	.L128be
	mov	r1, r10
	mov	r6, r8
	lsl	r5, r1, #3
.L128a8:
	mov	r1, #1
	ldrsh	r0, [r6, r5]
	neg	r1, r1
	str	r4, [sp]
	bl	SpriteTest_ChangeVar
	ldr	r4, [sp]
	add	r7, #1
	strh	r0, [r6, r5]
	cmp	r7, r4
	bcc	.L128a8
.L128be:
	mov	r1, #1
.L128c0:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L128f0
	mov	r7, #0
	cmp	r7, r4
	bcs	.L128ee
	mov	r0, r10
	mov	r6, r8
	lsl	r5, r0, #3
.L128da:
	ldrsh	r0, [r6, r5]
	mov	r1, #1
	str	r4, [sp]
	bl	SpriteTest_ChangeVar
	ldr	r4, [sp]
	add	r7, #1
	strh	r0, [r6, r5]
	cmp	r7, r4
	bcc	.L128da
.L128ee:
	mov	r1, #1
.L128f0:
	cmp	r1, #0
	bne	.L128f6
	b	.L12a46
.L128f6:
	mov	r2, r10
	cmp	r2, #0
	bne	.L128fe
	b	.L125de
.L128fe:
	lsl	r6, r2, #3
	add	r5, r6, #4
	mov	r0, r8
	ldrb	r3, [r0, r5]
	cmp	r3, #0
	bne	.L1290c
	b	.L126f0
.L1290c:
	ldrsh	r1, [r0, r6]
	add	r5, r8
	mov	r0, r10
	bl	Func_8012de8
	mov	r1, #1
	ldrsb	r1, [r5, r1]
	mov	r0, r10
	bl	SpriteTest_SetLayerPriority
	mov	r1, #2
	ldrsb	r1, [r5, r1]
	mov	r0, r10
	bl	SpriteTest_SetLayerColorswap
	mov	r0, r8
	add	r3, r0, r6
	mov	r2, #2
	ldrsh	r1, [r3, r2]
	mov	r0, r10
	bl	Func_8012d70
	b	.L126f0

	.pool_aligned

.L12954:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	mov	r1, #0
	cmp	r2, #0
	beq	.L12980
	mov	r0, r10
	lsl	r6, r0, #3
	add	r3, r6, #4
	mov	r1, r8
	add	r2, r1, r3
	ldrb	r3, [r2, #1]
	sub	r3, #1
	strb	r3, [r2, #1]
	lsl	r3, #24
	cmp	r3, #0
	bge	.L1297e
	mov	r3, #3
	strb	r3, [r2, #1]
.L1297e:
	mov	r1, #1
.L12980:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L129ae
	mov	r0, r10
	lsl	r6, r0, #3
	add	r3, r6, #4
	mov	r1, r8
	add	r2, r1, r3
	ldrb	r3, [r2, #1]
	mov	r0, #0xc0
	add	r3, #1
	strb	r3, [r2, #1]
	lsl	r0, #18
	lsl	r3, #24
	mov	r1, #0
	cmp	r3, r0
	ble	.L129ac
	strb	r1, [r2, #1]
.L129ac:
	mov	r1, #1
.L129ae:
	cmp	r1, #0
	beq	.L12a46
	mov	r1, r10
	lsl	r6, r1, #3
	add	r2, r6, #4
	mov	r0, r8
	ldrb	r3, [r0, r2]
	cmp	r3, #0
	bne	.L129c2
	b	.L126f0
.L129c2:
	add	r3, r0, r2
	mov	r1, #1
	ldrsb	r1, [r3, r1]
	b	.L12ab0
.L129ca:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	mov	r1, #0
	cmp	r2, #0
	beq	.L129f6
	mov	r0, r10
	lsl	r6, r0, #3
	add	r3, r6, #4
	mov	r1, r8
	add	r2, r1, r3
	ldrb	r3, [r2, #2]
	sub	r3, #1
	strb	r3, [r2, #2]
	lsl	r3, #24
	cmp	r3, #0
	bge	.L129f4
	mov	r3, #0xf
	strb	r3, [r2, #2]
.L129f4:
	mov	r1, #1
.L129f6:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L12a24
	mov	r0, r10
	lsl	r6, r0, #3
	add	r3, r6, #4
	mov	r1, r8
	add	r2, r1, r3
	ldrb	r3, [r2, #2]
	mov	r0, #0xf0
	add	r3, #1
	strb	r3, [r2, #2]
	lsl	r0, #20
	lsl	r3, #24
	mov	r1, #0
	cmp	r3, r0
	ble	.L12a22
	strb	r1, [r2, #2]
.L12a22:
	mov	r1, #1
.L12a24:
	cmp	r1, #0
	beq	.L12a46
	mov	r1, r10
	lsl	r6, r1, #3
	add	r2, r6, #4
	mov	r0, r8
	ldrb	r3, [r0, r2]
	cmp	r3, #0
	bne	.L12a38
	b	.L126f0
.L12a38:
	add	r3, r0, r2
	mov	r1, #2
	ldrsb	r1, [r3, r1]
	mov	r0, r10
	bl	SpriteTest_SetLayerColorswap
	b	.L126f0
.L12a46:
	mov	r1, r9
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L12ab8
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	bne	.L12a8e
	mov	r3, r10
	cmp	r3, #1
	beq	.L12ab8
	lsl	r6, r3, #3
	add	r3, r6, #4
	mov	r0, r8
	ldrb	r3, [r0, r3]
	cmp	r3, #0
	bne	.L12a6c
	b	.L126f0
.L12a6c:
	add	r3, r0, r6
	mov	r2, #2
	ldrsh	r1, [r3, r2]
	mov	r0, r10
	bl	Func_8012d70
	mov	r3, r10
	cmp	r3, #0
	beq	.L12a80
	b	.L126f0
.L12a80:
	mov	r2, r8
	mov	r0, #0xa
	ldrsh	r1, [r2, r0]
	mov	r0, #1
	bl	Func_8012d70
	b	.L126f0
.L12a8e:
	mov	r3, r10
	cmp	r3, #0
	beq	.L12ab8
	lsl	r3, #3
	add	r1, r3, #4
	mov	r0, r8
	ldrb	r2, [r0, r1]
	mov	r3, #1
	eor	r2, r3
	strb	r2, [r0, r1]
	cmp	r2, #0
	beq	.L12aae
	add	r3, r0, r1
	mov	r1, #1
	ldrsb	r1, [r3, r1]
	b	.L12ab0
.L12aae:
	mov	r1, #8
.L12ab0:
	mov	r0, r10
	bl	SpriteTest_SetLayerPriority
	b	.L126f0
.L12ab8:
	mov	r1, r9
	ldr	r2, [r1]
	mov	r3, #4
	and	r2, r3
	cmp	r2, #0
	beq	.L12ae2
	bl	ClearTasks
	mov	r2, r11
	ldr	r3, [r2]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L12ad8
	ldr	r0, =0x11
	b	.L12ada
.L12ad8:
	ldr	r0, =0x12
.L12ada:
	ldr	r1, =Exports_185000
	bl	Func_8002f0c
	b	.L125de
.L12ae2:
	mov	r0, #1
	bl	WaitFrames
	b	.L126fe
.func_end Debug_SpriteTest

