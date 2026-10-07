	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8023178  @ 0x08023178
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x160
	str	r0, [sp, #0x5c]
	str	r2, [sp, #0x54]
	str	r1, [sp, #0x58]
	ldr	r5, =iwram_3001e8c
	mov	r3, #1
	ldr	r1, [r5]
	mov	r0, #0x80
	mov	r2, #1
	neg	r3, r3
	lsl	r0, #2
	str	r1, [sp, #0x50]
	mov	r10, r2
	str	r3, [sp, #0x44]
	bl	AllocUploadSpriteGFX
	mov	r4, #0
	str	r0, [sp, #0x34]
	ldr	r0, [sp, #0x44]
	str	r4, [sp, #0x30]
	bl	_GetNumDjinn
	str	r0, [sp, #0x2c]
	add	r5, #0xa8
	ldr	r5, [r5]
	ldr	r0, [r5, #0x44]
	mov	r1, r10
	str	r1, [r5, #0x48]
	cmp	r0, #0
	beq	.L231ca
	bl	CloseUIBox
	ldr	r2, [sp, #0x30]
	str	r2, [r5, #0x44]
.L231ca:
	mov	r0, #0x70
	bl	_PlaySound
	mov	r6, #4
	mov	r2, #0
	add	r3, sp, #0x64
.L231d6:
	sub	r6, #1
	strb	r2, [r3]
	sub	r3, #1
	cmp	r6, #0
	bge	.L231d6
	mov	r3, #0
	add	r2, sp, #0x60
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	str	r3, [r2, #0x10]
	mov	r0, #0x80
	bl	AllocUploadSpriteGFX
	mov	r3, #0x8e
	mov	r4, #0x88
	lsl	r3, #1
	lsl	r4, #1
	add	r3, sp
	add	r4, sp
	mov	r1, #1
	neg	r1, r1
	str	r0, [sp, #0x40]
	str	r3, [sp, #0x10]
	str	r4, [sp, #0x14]
	mov	r8, r1
	mov	r5, r4
	mov	r7, r3
	mov	r6, #0xa
.L2320e:
	mov	r0, #0x80
	bl	AllocUploadSpriteGFX
	sub	r6, #1
	mov	r2, r8
	strb	r2, [r5]
	stmia	r7!, {r0}
	add	r5, #1
	cmp	r6, #0
	bge	.L2320e
	ldr	r3, [sp, #0x58]
	cmp	r3, #0
	beq	.L23258
	ldr	r4, [sp, #0x5c]
	ldrh	r3, [r4]
	mov	r6, #0
	cmp	r3, #0xff
	beq	.L23258
	cmp	r3, #0xfe
	beq	.L2323c
	ldr	r1, [sp, #0x54]
	cmp	r3, r1
	beq	.L23256
.L2323c:
	add	r6, #1
	cmp	r6, #5
	bgt	.L23258
	ldr	r2, [sp, #0x5c]
	lsl	r3, r6, #1
	ldrh	r3, [r3, r2]
	cmp	r3, #0xff
	beq	.L23258
	cmp	r3, #0xfe
	beq	.L2323c
	ldr	r4, [sp, #0x54]
	cmp	r3, r4
	bne	.L2323c
.L23256:
	str	r6, [sp, #0x44]
.L23258:
	mov	r3, #6
	mov	r1, #0
	str	r3, [sp]
	mov	r2, #0x1e
	mov	r3, #0x14
	mov	r0, #0
	str	r1, [sp, #0x38]
	str	r1, [sp, #0x3c]
	bl	CreateUIBox
	mov	r3, #0xa
	str	r0, [sp, #0x4c]
	str	r3, [sp]
	mov	r1, #0xe
	mov	r2, #0x1e
	mov	r3, #6
	mov	r0, #0
	bl	CreateUIBox
	str	r0, [sp, #0x48]
	bl	Func_801e318
	mov	r3, #0xaa
	mov	r4, #0xa4
	mov	r2, sp
	lsl	r3, #1
	lsl	r4, #1
	mov	r1, sp
	add	r2, #0x80
	add	r3, sp
	add	r4, sp
	add	r1, #0x8c
	str	r2, [sp, #0x1c]
	str	r3, [sp, #8]
	str	r4, [sp, #0xc]
	str	r1, [sp, #0x18]
.L232a0:
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	ldr	r2, [sp, #0x1c]
	str	r3, [sp, #0x28]
	ldr	r3, =0x80000400
	str	r3, [r2, #4]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r1, [sp, #0x34]
	ldr	r0, [sp, #0x54]
	bl	Func_8021b80
	ldr	r3, .L232f0	@ 0x3ff
	and	r0, r3
	ldr	r3, [sp, #0x1c]
	ldrh	r2, [r3, #8]
	ldr	r3, =0xfffffc00
	ldr	r4, [sp, #0x1c]
	and	r3, r2
	orr	r3, r0
	strh	r3, [r4, #8]
	ldrh	r2, [r4, #6]
	ldr	r3, =0xfffffe00
	and	r3, r2
	ldr	r2, .L232f4	@ 8
	ldr	r1, [sp, #0x1c]
	orr	r3, r2
	strh	r3, [r1, #6]
	ldrb	r2, [r1, #9]
	mov	r3, #0x18
	strb	r3, [r1, #4]
	mov	r3, #0xf
	and	r3, r2
	mov	r2, #0xe0
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r0, [sp, #0x1c]
	mov	r1, #0xf0
	b	.L2330c

	.align	2, 0
.L232f0:
	.word	0x3ff
.L232f4:
	.word	8
	.pool

.L2330c:
	bl	Func_8003dec
	ldr	r3, [sp, #0x68]
	cmp	r3, #0x15
	bhi	.L23378
	ldr	r2, =.L23320
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L23320:
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23390
	.word	.L23390
	.word	.L23390
	.word	.L23390
	.word	.L2339c
	.word	.L2339c
	.word	.L2339c
	.word	.L2339c
	.word	.L2339c
	.word	.L2339c
	.word	.L2339c
	.word	.L2339c
.L23378:
	mov	r3, #0
	add	r2, sp, #0x60
	str	r3, [r2, #0x10]
	ldr	r3, [sp, #0x2c]
	cmp	r3, #0
	beq	.L2338a
	mov	r3, #9
	str	r3, [r2, #0x14]
	b	.L233a6
.L2338a:
	mov	r3, #7
	str	r3, [r2, #0x14]
	b	.L233a6
.L23390:
	add	r2, sp, #0x60
	mov	r3, #1
	str	r3, [r2, #0x10]
	mov	r3, #4
	str	r3, [r2, #0x14]
	b	.L233a6
.L2339c:
	add	r2, sp, #0x60
	mov	r3, #2
	str	r3, [r2, #0x10]
	ldr	r4, [sp, #0x30]
	str	r4, [r2, #0x14]
.L233a6:
	ldr	r1, [sp, #0x4c]
	ldr	r3, [sp, #0x4c]
	ldrh	r0, [r1, #0xc]
	ldrh	r2, [r3, #8]
	mov	r4, #0xf
	ldrh	r1, [r1, #0xe]
	ldrh	r3, [r3, #0xa]
	str	r4, [sp]
	bl	Func_8022768
	ldr	r4, [sp, #0x30]
	cmp	r4, #0
	bne	.L233c2
	b	.L234ce
.L233c2:
	add	r6, sp, #0x60
	ldr	r3, [r6, #0x10]
	cmp	r3, #1
	bhi	.L23458
	ldr	r1, [sp, #0x28]
	ldrsb	r5, [r6, r3]
	mov	r3, #0x80
	and	r3, r1
	cmp	r3, #0
	beq	.L233ee
	mov	r2, #0
	mov	r0, #0x6f
	str	r2, [sp, #0x28]
	bl	_PlaySound
	ldr	r3, [r6, #0x14]
	add	r5, #1
	cmp	r5, r3
	blt	.L234c8
	ldr	r3, [r6, #0x10]
	mov	r5, #0
	b	.L2340e
.L233ee:
	ldr	r4, [sp, #0x28]
	mov	r3, #0x40
	and	r3, r4
	cmp	r3, #0
	beq	.L2341a
	mov	r1, #0
	mov	r0, #0x6f
	sub	r5, #1
	str	r1, [sp, #0x28]
	bl	_PlaySound
	cmp	r5, #0
	bge	.L234c8
	ldr	r3, [r6, #0x14]
	sub	r5, r3, #1
	ldr	r3, [r6, #0x10]
.L2340e:
	cmp	r3, #1
	bne	.L234c8
	mov	r3, #2
	str	r3, [r6, #0x10]
	ldrsb	r5, [r6, r3]
	b	.L234c8
.L2341a:
	ldr	r2, [sp, #0x28]
	mov	r3, #0x31
	and	r3, r2
	cmp	r3, #0
	beq	.L234c8
	mov	r3, #0
	mov	r0, #0x6f
	str	r3, [sp, #0x28]
	bl	_PlaySound
	ldr	r1, [r6, #0x10]
	mov	r3, #2
	eor	r1, r3
	str	r1, [r6, #0x10]
	ldr	r0, =gKeyRepeat
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L23446
	ldrsb	r5, [r6, r1]
	b	.L234c8
.L23446:
	ldr	r2, [r0]
	mov	r3, #0x20
	ldr	r5, [sp, #0x30]
	and	r2, r3
	sub	r5, #1
	cmp	r2, #0
	bne	.L234c8
	mov	r5, #0
	b	.L234c8
.L23458:
	cmp	r3, #2
	bne	.L234ce
	ldrsb	r5, [r6, r3]
	ldr	r2, [r6, #0x14]
	cmp	r5, r2
	blt	.L23466
	sub	r5, r2, #1
.L23466:
	cmp	r5, #0
	bge	.L23474
	mov	r3, #0
	str	r3, [r6, #0x10]
	mov	r5, #0
	ldrsb	r5, [r6, r5]
	b	.L234c8
.L23474:
	ldr	r4, [sp, #0x28]
	mov	r3, #0x10
	and	r3, r4
	cmp	r3, #0
	beq	.L2348c
	mov	r1, #0
	add	r5, #1
	str	r1, [sp, #0x28]
	cmp	r5, r2
	blt	.L234a6
	str	r1, [r6, #0x10]
	b	.L234a2
.L2348c:
	ldr	r2, [sp, #0x28]
	mov	r3, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L234ae
	mov	r3, #0
	sub	r5, #1
	str	r3, [sp, #0x28]
	cmp	r5, #0
	bge	.L234a6
	str	r3, [r6, #0x10]
.L234a2:
	mov	r5, #0
	ldrsb	r5, [r6, r5]
.L234a6:
	mov	r0, #0x6f
	bl	_PlaySound
	b	.L234c8
.L234ae:
	ldr	r4, [sp, #0x28]
	mov	r3, #0xc1
	and	r3, r4
	cmp	r3, #0
	beq	.L234c8
	mov	r1, #0
	str	r1, [sp, #0x28]
	mov	r0, #0x6f
	str	r1, [r6, #0x10]
	mov	r5, #0
	ldrsb	r5, [r6, r5]
	bl	_PlaySound
.L234c8:
	add	r2, sp, #0x60
	ldr	r3, [r2, #0x10]
	strb	r5, [r2, r3]
.L234ce:
	add	r0, sp, #0x60
	ldr	r2, [r0, #0x10]
	cmp	r2, #0
	bne	.L23512
	ldr	r3, [sp, #0x2c]
	ldrsb	r2, [r0, r2]
	cmp	r3, #0
	bne	.L234e0
	add	r2, #9
.L234e0:
	ldr	r3, =.L37328
	lsl	r2, #3
	add	r2, r3
	ldrb	r3, [r2]
	str	r3, [r0, #8]
	ldrb	r3, [r2, #1]
	str	r3, [r0, #0x18]
	ldrb	r3, [r2, #2]
	str	r3, [r0, #0x1c]
	ldr	r4, [sp, #0x4c]
	ldrb	r3, [r2, #3]
	ldrh	r0, [r4, #0xc]
	ldrh	r1, [r4, #0xe]
	add	r0, r3
	ldrb	r3, [r2, #4]
	add	r1, r3
	mov	r3, #0xe
	ldrb	r2, [r2, #5]
	add	r0, #1
	str	r3, [sp]
	add	r1, #1
	mov	r3, #1
	bl	Func_8022768
	b	.L23544
.L23512:
	cmp	r2, #1
	bne	.L2352c
	ldrsb	r3, [r0, r2]
	ldr	r1, =.L373a8
	b	.L23534

	.pool_aligned

.L2352c:
	cmp	r2, #2
	bne	.L23544
	ldrsb	r3, [r0, r2]
	ldr	r1, =.L373b8
.L23534:
	lsl	r3, #2
	ldrb	r2, [r1, r3]
	add	r3, r1
	str	r2, [r0, #8]
	ldrb	r2, [r3, #1]
	ldrb	r3, [r3, #2]
	str	r2, [r0, #0x18]
	str	r3, [r0, #0x1c]
.L23544:
	add	r2, sp, #0x60
	ldr	r3, [r2, #0xc]
	ldr	r1, [r2, #8]
	cmp	r3, r1
	beq	.L23554
	str	r1, [r2, #0xc]
	mov	r1, #2
	mov	r10, r1
.L23554:
	ldr	r3, [r2, #0x18]
	lsl	r3, #3
	str	r3, [sp, #0x38]
	ldr	r3, [r2, #0x1c]
	ldr	r0, [sp, #0x54]
	lsl	r3, #3
	str	r3, [sp, #0x3c]
	bl	_GetBattleActor
	ldr	r3, [r0]
	ldr	r4, [sp, #8]
	ldr	r2, [r3, #0x50]
	ldr	r3, =0xc0002400
	mov	r7, #0
	str	r3, [r4, #4]
	str	r7, [r4, #8]
	ldr	r1, =0x3ff
	ldrh	r2, [r2, #8]
	ldr	r5, =0xfffffc00
	mov	r8, r1
	ldrh	r1, [r4, #8]
	mov	r3, r5
	lsl	r2, #22
	lsr	r2, #22
	and	r3, r1
	orr	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	ldr	r3, [sp, #8]
	ldr	r6, =0xfffffe00
	ldrh	r2, [r3, #6]
	mov	r3, r6
	and	r3, r2
	ldr	r2, .L235cc	@ 0xac
	ldr	r4, [sp, #8]
	orr	r3, r2
	strh	r3, [r4, #6]
	mov	r3, #0x38
	strb	r3, [r4, #4]
	ldr	r0, [sp, #8]
	mov	r1, #0xf0
	bl	Func_8003dec
	ldr	r3, =0x40000400
	ldr	r1, [sp, #0xc]
	str	r3, [r1, #4]
	str	r7, [r1, #8]
	ldr	r0, [sp, #0x40]
	ldr	r1, =Data_310a4
	bl	UploadSprite2
	ldr	r4, [sp, #0xc]
	ldrh	r3, [r4, #8]
	mov	r2, r8
	and	r2, r0
	and	r5, r3
	mov	r1, r4
	orr	r5, r2
	strh	r5, [r1, #8]
	b	.L235ec

	.align	2, 0
.L235cc:
	.word	0xac
	.pool

.L235ec:
	ldr	r3, [sp, #0x4c]
	ldr	r0, =iwram_3001e40
	ldrh	r2, [r3, #0xc]
	ldr	r3, [r0]
	ldr	r4, [sp, #0x38]
	mov	r1, #4
	and	r3, r1
	lsl	r2, #3
	add	r2, r4, r2
	lsr	r3, #2
	ldr	r4, [sp, #0xc]
	sub	r2, r3
	ldr	r3, .L23640	@ 0x1ff
	add	r2, #0x10
	and	r2, r3
	ldrh	r3, [r4, #6]
	and	r6, r3
	orr	r6, r2
	mov	r2, r4
	strh	r6, [r2, #6]
	ldr	r3, [sp, #0x4c]
	ldrh	r2, [r3, #0xe]
	ldr	r3, [r0]
	ldr	r4, [sp, #0x3c]
	and	r3, r1
	lsl	r2, #3
	add	r2, r4, r2
	lsr	r3, #2
	ldr	r1, [sp, #0xc]
	sub	r2, r3
	add	r2, #0x10
	strb	r2, [r1, #4]
	mov	r3, #0x3f
	ldrb	r2, [r1, #7]
	neg	r3, r3
	and	r3, r2
	mov	r2, #0x10
	orr	r3, r2
	strb	r3, [r1, #7]
	ldr	r0, [sp, #0xc]
	b	.L23648

	.align	2, 0
.L23640:
	.word	0x1ff
	.pool

.L23648:
	mov	r1, #0xf1
	bl	Func_8003dec
	mov	r2, r10
	cmp	r2, #0
	bne	.L23656
	b	.L23cfa
.L23656:
	ldr	r0, [sp, #0x54]
	bl	_GetUnit
	mov	r9, r0
	bl	Func_801e318
	bl	Func_8016738
	mov	r3, #1
	mov	r4, r10
	and	r3, r4
	cmp	r3, #0
	bne	.L23672
	b	.L23b42
.L23672:
	ldr	r0, [sp, #0x4c]
	bl	Func_8016498
	ldr	r1, [sp, #0x48]
	ldr	r3, [sp, #0x48]
	ldrh	r0, [r1, #0xc]
	ldrh	r2, [r3, #8]
	ldrh	r1, [r1, #0xe]
	ldrh	r3, [r3, #0xa]
	str	r7, [sp]
	bl	Func_8017248
	mov	r3, #0xe
	str	r3, [sp]
	ldr	r0, [sp, #0x4c]
	mov	r1, #0
	mov	r2, #0xe
	mov	r3, #0x1d
	bl	Func_801e41c
	mov	r0, r9
	ldr	r1, [sp, #0x4c]
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e8b0
	ldr	r0, =.L373d8
	ldr	r1, [sp, #0x4c]
	mov	r2, #0x38
	mov	r3, #0
	bl	Func_801e8b0
	mov	r4, r9
	ldr	r2, [sp, #0x4c]
	ldrb	r0, [r4, #0xf]
	mov	r1, #2
	mov	r3, #0x48
	str	r7, [sp]
	bl	Func_801ea08
	ldr	r7, =0x8ba
	ldr	r1, [sp, #0x4c]
	mov	r0, r7
	mov	r2, #0
	mov	r3, #8
	bl	Func_801e7c0
	mov	r3, #0x92
	lsl	r3, #1
	add	r3, r9
	ldr	r0, [r3]
	mov	r3, #8
	str	r3, [sp]
	ldr	r2, [sp, #0x4c]
	mov	r1, #8
	mov	r3, #0x28
	bl	Func_801ea08
	ldr	r0, =.L373dc
	ldr	r1, [sp, #0x4c]
	mov	r2, #0x28
	mov	r3, #0x18
	bl	Func_801e8b0
	mov	r3, #0x18
	mov	r2, r9
	mov	r1, #0x38
	ldrsh	r0, [r2, r1]
	mov	r8, r3
	str	r3, [sp]
	ldr	r2, [sp, #0x4c]
	mov	r1, #4
	mov	r3, #0x38
	bl	Func_801ea08
	ldr	r5, =.L373e0
	ldr	r1, [sp, #0x4c]
	mov	r0, r5
	mov	r2, #0x58
	mov	r3, #0x18
	bl	Func_801e8b0
	mov	r1, r9
	mov	r2, r8
	mov	r4, #0x34
	ldrsh	r0, [r1, r4]
	mov	r3, #0x60
	str	r2, [sp]
	mov	r1, #4
	ldr	r2, [sp, #0x4c]
	bl	Func_801ea08
	mov	r3, #0x20
	ldr	r1, [sp, #0x4c]
	ldr	r0, =.L373e4
	mov	r2, #0x28
	bl	Func_801e8b0
	mov	r4, r9
	ldr	r2, [sp, #0x4c]
	mov	r3, #0x3a
	ldrsh	r0, [r4, r3]
	mov	r6, #0x20
	mov	r1, #4
	mov	r3, #0x38
	str	r6, [sp]
	bl	Func_801ea08
	mov	r0, r5
	ldr	r1, [sp, #0x4c]
	mov	r2, #0x58
	mov	r3, #0x20
	bl	Func_801e8b0
	mov	r2, r9
	mov	r1, #0x36
	ldrsh	r0, [r2, r1]
	mov	r3, #0x60
	ldr	r2, [sp, #0x4c]
	mov	r1, #4
	str	r6, [sp]
	bl	Func_801ea08
	mov	r0, r7
	ldr	r1, [sp, #0x4c]
	sub	r0, #0xa
	mov	r2, #0x88
	mov	r3, #0x10
	bl	Func_801e7c0
	mov	r3, r9
	ldrh	r0, [r3, #0x3c]
	mov	r3, #0x10
	str	r3, [sp]
	ldr	r2, [sp, #0x4c]
	mov	r1, #3
	mov	r3, #0xb8
	bl	Func_801ea08
	mov	r0, r7
	ldr	r1, [sp, #0x4c]
	sub	r0, #9
	mov	r2, #0x88
	mov	r3, #0x18
	bl	Func_801e7c0
	mov	r4, r9
	mov	r1, r8
	ldrh	r0, [r4, #0x3e]
	ldr	r2, [sp, #0x4c]
	str	r1, [sp]
	mov	r3, #0xb8
	mov	r1, #3
	bl	Func_801ea08
	mov	r0, r7
	ldr	r1, [sp, #0x4c]
	sub	r0, #8
	mov	r2, #0x88
	mov	r3, #0x20
	bl	Func_801e7c0
	mov	r3, r9
	add	r3, #0x40
	ldr	r2, [sp, #0x4c]
	ldrh	r0, [r3]
	mov	r1, #3
	mov	r3, #0xb8
	str	r6, [sp]
	bl	Func_801ea08
	sub	r0, r7, #7
	ldr	r1, [sp, #0x4c]
	mov	r2, #0x88
	mov	r3, #0x28
	bl	Func_801e7c0
	mov	r3, r9
	add	r3, #0x42
	ldrb	r0, [r3]
	mov	r3, #0x28
	str	r3, [sp]
	ldr	r2, [sp, #0x4c]
	mov	r1, #3
	mov	r3, #0xb8
	bl	Func_801ea08
	ldr	r3, =0x129
	add	r3, r9
	ldrb	r0, [r3]
	ldr	r3, =0x741
	mov	r2, #0
	add	r0, r3
	ldr	r1, [sp, #0x4c]
	mov	r3, #0x30
	bl	Func_801e7c0
	ldr	r2, [sp, #0x2c]
	cmp	r2, #0
	beq	.L2380e
	sub	r0, r7, #1
	ldr	r1, [sp, #0x4c]
	mov	r2, #0
	mov	r3, #0x48
	bl	Func_801e7c0
.L2380e:
	ldr	r1, [sp, #0x4c]
	sub	r0, r7, #5
	mov	r2, #0
	mov	r3, #0x50
	bl	Func_801e7c0
	sub	r0, r7, #4
	ldr	r1, [sp, #0x4c]
	mov	r2, #0
	mov	r3, #0x58
	bl	Func_801e7c0
	mov	r6, #0x8c
	sub	r0, r7, #3
	ldr	r1, [sp, #0x4c]
	mov	r2, #0
	mov	r3, #0x60
	bl	Func_801e7c0
	lsl	r6, #1
	mov	r3, #0x48
	mov	r1, #0x28
	mov	r2, #7
	mov	r4, #0
	mov	r11, r3
	mov	r8, r1
	add	r6, r9
	mov	r7, #0x30
	mov	r10, r2
.L23848:
	ldr	r1, [sp, #0x2c]
	mov	r3, #1
	cmp	r1, #0
	beq	.L23852
	mov	r3, #0
.L23852:
	ldr	r2, =0x5001
	add	r1, r4, r2
	mov	r2, #0
	add	r3, #8
	str	r2, [sp]
	ldr	r0, [sp, #0x4c]
	mov	r2, r10
	lsl	r5, r4, #2
	str	r4, [sp, #4]
	bl	Func_8019000
	ldr	r3, [sp, #0x2c]
	ldr	r4, [sp, #4]
	cmp	r3, #0
	beq	.L238a0
	mov	r1, r11
	ldr	r2, [sp, #0x4c]
	ldrb	r0, [r6, #4]
	mov	r3, r8
	str	r1, [sp]
	mov	r1, #1
	bl	Func_801ea08
	ldr	r0, =.L373e0
	ldr	r1, [sp, #0x4c]
	mov	r2, r7
	mov	r3, #0x48
	bl	Func_801e8b0
	mov	r2, r11
	mov	r3, r7
	ldrb	r0, [r6]
	add	r3, #8
	str	r2, [sp]
	mov	r1, #1
	ldr	r2, [sp, #0x4c]
	bl	Func_801ea08
	ldr	r4, [sp, #4]
.L238a0:
	mov	r1, r4
	ldr	r0, [sp, #0x54]
	str	r4, [sp, #4]
	bl	_Func_807987c
	mov	r3, #0x50
	str	r3, [sp]
	ldr	r2, [sp, #0x4c]
	mov	r1, #2
	mov	r3, r7
	bl	Func_801ea08
	add	r5, #0x48
	mov	r3, r9
	ldrsh	r0, [r3, r5]
	mov	r3, #0x58
	ldr	r2, [sp, #0x4c]
	str	r3, [sp]
	mov	r1, #3
	mov	r3, r8
	bl	Func_801ea08
	add	r5, r9
	mov	r3, #0x60
	mov	r2, #2
	ldrsh	r0, [r5, r2]
	mov	r1, #3
	str	r3, [sp]
	ldr	r2, [sp, #0x4c]
	mov	r3, r8
	bl	Func_801ea08
	ldr	r4, [sp, #4]
	mov	r3, #0x20
	mov	r1, #4
	add	r4, #1
	add	r8, r3
	add	r6, #1
	add	r7, #0x20
	add	r10, r1
	cmp	r4, #3
	ble	.L23848
	mov	r4, r9
	mov	r2, #0x38
	ldrsh	r3, [r4, r2]
	mov	r6, #0
	cmp	r3, #0
	bne	.L23908
	ldr	r1, [sp, #0x14]
	mov	r3, #0x10
	strb	r3, [r1]
	mov	r6, #1
.L23908:
	ldr	r3, [sp, #0x14]
	add	r2, r6, r3
	b	.L23aa0

	.pool_aligned

.L23930:
	ldr	r1, =0x131
	add	r1, r9
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.L23942
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23942:
	cmp	r6, #7
	ble	.L23948
	b	.L23ad4
.L23948:
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #2
	bne	.L23956
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23956:
	cmp	r6, #7
	ble	.L2395c
	b	.L23ad4
.L2395c:
	ldr	r3, =0x13d
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2396e
	mov	r3, #4
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L2396e:
	cmp	r6, #7
	ble	.L23974
	b	.L23ad4
.L23974:
	ldr	r3, =0x13b
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L23986
	mov	r3, #3
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23986:
	cmp	r6, #7
	ble	.L2398c
	b	.L23ad4
.L2398c:
	mov	r3, #0x9e
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L239a0
	mov	r3, #5
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L239a0:
	cmp	r6, #7
	ble	.L239a6
	b	.L23ad4
.L239a6:
	mov	r3, #0xa0
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L239ba
	mov	r3, #7
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L239ba:
	cmp	r6, #7
	ble	.L239c0
	b	.L23ad4
.L239c0:
	mov	r3, #0x9c
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L239d4
	mov	r3, #6
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L239d4:
	cmp	r6, #7
	bgt	.L23ad4
	mov	r3, #0x99
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L23a0a
	ldr	r3, =0x133
	add	r3, r9
	ldrb	r1, [r3]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.L239fc
	mov	r3, #9
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L239fc:
	lsl	r3, r1, #24
	cmp	r3, #0
	bge	.L23a0a
	mov	r3, #0xa
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23a0a:
	cmp	r6, #7
	bgt	.L23ad4
	mov	r3, #0x9a
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L23a40
	ldr	r3, =0x135
	add	r3, r9
	ldrb	r1, [r3]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.L23a32
	mov	r3, #0xb
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23a32:
	lsl	r3, r1, #24
	cmp	r3, #0
	bge	.L23a40
	mov	r3, #0xc
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23a40:
	cmp	r6, #7
	bgt	.L23ad4
	mov	r3, #0x9b
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L23a76
	ldr	r3, =0x137
	add	r3, r9
	ldrb	r1, [r3]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.L23a68
	mov	r3, #0xd
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23a68:
	lsl	r3, r1, #24
	cmp	r3, #0
	bge	.L23a76
	mov	r3, #0xe
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23a76:
	cmp	r6, #7
	bgt	.L23ad4
	ldr	r3, =0x147
	add	r3, r9
	ldrb	r1, [r3]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.L23a92
	mov	r3, #0x11
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23a92:
	lsl	r3, r1, #24
	cmp	r3, #0
	bge	.L23ad4
	mov	r3, #0x12
	strb	r3, [r2]
	add	r6, #1
	b	.L23ad4
.L23aa0:
	mov	r3, #0x98
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L23ab8
	mov	r3, #0xf
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23ab8:
	cmp	r6, #7
	bgt	.L23ad4
	ldr	r3, =0x141
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L23ace
	mov	r3, #8
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23ace:
	cmp	r6, #7
	bgt	.L23ad4
	b	.L23930
.L23ad4:
	cmp	r6, #0
	ble	.L23af6
	ldr	r7, [sp, #0x10]
	ldr	r5, [sp, #0x14]
	mov	r4, r6
.L23ade:
	ldrb	r0, [r5]
	lsl	r0, #24
	asr	r0, #24
	ldmia	r7!, {r1}
	str	r4, [sp, #4]
	bl	Func_8021ab0
	ldr	r4, [sp, #4]
	sub	r4, #1
	add	r5, #1
	cmp	r4, #0
	bne	.L23ade
.L23af6:
	cmp	r6, #0
	bne	.L23b00
	ldr	r4, [sp, #0x14]
	strb	r6, [r4]
	mov	r6, #1
.L23b00:
	cmp	r6, #0xa
	bgt	.L23b1c
	ldr	r3, [sp, #0x14]
	mov	r2, #1
	neg	r2, r2
	mov	r1, r2
	add	r2, r6, r3
	mov	r3, #0xb
	sub	r4, r3, r6
.L23b12:
	sub	r4, #1
	strb	r1, [r2]
	add	r2, #1
	cmp	r4, #0
	bne	.L23b12
.L23b1c:
	str	r6, [sp, #0x30]
	ldr	r4, [sp, #0x14]
	mov	r3, #0
	ldrsb	r3, [r4, r3]
	cmp	r3, #0
	bne	.L23b42
	mov	r2, r9
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	beq	.L23b36
	ldr	r0, =0x8bd
	b	.L23b38
.L23b36:
	ldr	r0, =0x8be
.L23b38:
	ldr	r1, [sp, #0x4c]
	mov	r2, #0x70
	mov	r3, #0
	bl	Func_801e7c0
.L23b42:
	mov	r0, #0x80
	lsl	r0, #1
	bl	alloc_iwram
	ldr	r3, [sp, #0x68]
	str	r0, [sp, #0x24]
	cmp	r3, #0xd
	bhi	.L23b54
	b	.L23c94
.L23b54:
	ldr	r4, [sp, #0x14]
	sub	r3, #0xe
	ldrsb	r3, [r4, r3]
	str	r3, [sp, #0x20]
	cmp	r3, #0
	bne	.L23b6e
	mov	r2, r9
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	bne	.L23b6e
	mov	r3, #0x10
	str	r3, [sp, #0x20]
.L23b6e:
	mov	r4, #0xa6
	lsl	r4, #1
	mov	r8, r4
	mov	r0, r8
	bl	alloc_iwram
	mov	r4, #0
	str	r4, [sp, #4]
	mov	r1, r9
	mov	r2, r8
	ldr	r3, =Func_8001af8
	mov	r6, r0
	bl	_call_via_r3
	ldr	r3, =0x133
	ldr	r4, [sp, #4]
	mov	r5, r9
	add	r5, #0x40
	add	r3, r9
	mov	r1, r9
	mov	r2, r9
	ldrh	r1, [r1, #0x3c]
	ldrh	r2, [r2, #0x3e]
	ldrh	r7, [r5]
	strb	r4, [r3]
	ldr	r3, =0x135
	add	r3, r9
	strb	r4, [r3]
	ldr	r3, =0x147
	add	r3, r9
	strb	r4, [r3]
	ldr	r0, [sp, #0x54]
	mov	r10, r1
	mov	r11, r2
	bl	_CalcStats
	mov	r1, r9
	ldrh	r3, [r1, #0x3c]
	mov	r2, r10
	sub	r2, r3
	ldrh	r3, [r1, #0x3e]
	mov	r1, r11
	sub	r1, r3
	ldrh	r3, [r5]
	mov	r10, r2
	mov	r11, r1
	mov	r2, r8
	mov	r1, r6
	sub	r7, r3
	mov	r0, r9
	ldr	r3, =Func_8001af8
	bl	_call_via_r3
	mov	r0, r6
	bl	free
	ldr	r3, [sp, #0x20]
	sub	r3, #8
	ldr	r4, [sp, #4]
	cmp	r3, #0xa
	bhi	.L23c4e
	ldr	r2, =.L23bf0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L23bf0:
	.word	.L23c1c
	.word	.L23c24
	.word	.L23c28
	.word	.L23c2e
	.word	.L23c32
	.word	.L23c40
	.word	.L23c40
	.word	.L23c4e
	.word	.L23c4e
	.word	.L23c38
	.word	.L23c3c
.L23c1c:
	ldr	r3, =0x141
	add	r3, r9
	ldrb	r4, [r3]
	b	.L23c4e
.L23c24:
	mov	r4, r10
	b	.L23c4e
.L23c28:
	mov	r1, r10
	neg	r4, r1
	b	.L23c4e
.L23c2e:
	mov	r4, r11
	b	.L23c4e
.L23c32:
	mov	r2, r11
	neg	r4, r2
	b	.L23c4e
.L23c38:
	mov	r4, r7
	b	.L23c4e
.L23c3c:
	neg	r4, r7
	b	.L23c4e
.L23c40:
	ldr	r3, =0x137
	add	r3, r9
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r4, r3, #2
.L23c4e:
	mov	r0, r4
	mov	r1, #5
	bl	Func_8019908
	ldr	r0, =0x8d2
	ldr	r3, [sp, #0x20]
	ldr	r1, [sp, #0x24]
	add	r0, r3, r0
	b	.L23cbe

	.pool_aligned

.L23c94:
	cmp	r3, #2
	bne	.L23ccc
	mov	r4, r9
	ldrb	r3, [r4, #0xf]
	cmp	r3, #0x62
	bhi	.L23ccc
	mov	r1, r3
	add	r1, #1
	ldr	r0, [sp, #0x54]
	bl	_GetPCStatGrowth
	mov	r3, #0x92
	lsl	r3, #1
	add	r3, r9
	ldr	r3, [r3]
	mov	r1, #5
	sub	r0, r3
	bl	Func_8019908
	ldr	r0, =0x8bf
	ldr	r1, [sp, #0x24]
.L23cbe:
	mov	r2, #0x80
	bl	Func_801965c
	b	.L23cda

	.pool_aligned

.L23ccc:
	ldr	r0, [sp, #0x68]
	ldr	r3, =0x8c0
	ldr	r1, [sp, #0x24]
	add	r0, r3
	mov	r2, #0x80
	bl	Func_801965c
.L23cda:
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x48]
	mov	r2, #0
	mov	r3, #4
	bl	Func_8017aa4
	ldr	r0, [sp, #0x24]
	bl	free
	ldr	r4, =0xea3
	ldr	r3, [sp, #0x50]
	add	r2, r3, r4
	mov	r3, #1
	mov	r1, #0
	strb	r3, [r2]
	mov	r10, r1
.L23cfa:
	ldr	r1, =gSpriteSlots
	ldr	r5, [sp, #0x18]
	ldr	r7, [sp, #0x10]
	mov	r6, #0
	mov	r8, r1
	mov	r4, #0x70
.L23d06:
	ldr	r3, =0x40000400
	str	r3, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #8]
	ldmia	r7!, {r3}
	lsl	r3, #2
	add	r3, r8
	ldrh	r2, [r3, #2]
	ldr	r1, .L23d44	@ 0xfffffc00
	ldrh	r3, [r5, #8]
	lsl	r2, #17
	lsr	r2, #22
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #8]
	ldr	r3, .L23d48	@ 0x1ff
	mov	r1, r4
	and	r1, r3
	ldr	r2, .L23d4c	@ 0xfffffe00
	ldrh	r3, [r5, #6]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r5, #6]
	ldr	r2, [sp, #0x4c]
	ldrh	r3, [r2, #0xe]
	lsl	r3, #3
	add	r3, #8
	strb	r3, [r5, #4]
	ldr	r1, [sp, #0x14]
	ldrsb	r3, [r1, r6]
	b	.L23d60

	.align	2, 0
.L23d44:
	.word	0xfffffc00
.L23d48:
	.word	0x1ff
.L23d4c:
	.word	0xfffffe00
	.pool

.L23d60:
	cmp	r3, #0
	ble	.L23d70
	mov	r0, r5
	mov	r1, #0xf0
	str	r4, [sp, #4]
	bl	Func_8003dec
	ldr	r4, [sp, #4]
.L23d70:
	add	r6, #1
	add	r4, #0xf
	add	r5, #0xc
	cmp	r6, #0xa
	ble	.L23d06
	ldr	r3, =iwram_3001f34
	ldr	r3, [r3]
	ldr	r3, [r3, #0x4c]
	cmp	r3, #0
	beq	.L23e00
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.L23e00
	ldr	r2, [sp, #0x58]
	cmp	r2, #0
	beq	.L23df6
	mov	r3, #0x80
	ldr	r4, [sp, #0x28]
	lsl	r3, #1
	and	r3, r4
	cmp	r3, #0
	beq	.L23dc6
	ldr	r1, [sp, #0x44]
	add	r1, #1
	str	r1, [sp, #0x44]
	cmp	r1, r2
	blt	.L23db0
	mov	r2, #0
	str	r2, [sp, #0x44]
.L23db0:
	ldr	r4, [sp, #0x44]
	ldr	r1, [sp, #0x5c]
	lsl	r3, r4, #1
	ldrh	r3, [r3, r1]
	mov	r2, #1
	mov	r0, #0x6f
	str	r3, [sp, #0x54]
	mov	r10, r2
	bl	_PlaySound
	b	.L23df6
.L23dc6:
	mov	r3, #0x80
	ldr	r4, [sp, #0x28]
	lsl	r3, #2
	and	r3, r4
	cmp	r3, #0
	beq	.L23df6
	ldr	r1, [sp, #0x44]
	sub	r1, #1
	str	r1, [sp, #0x44]
	cmp	r1, #0
	bge	.L23de2
	ldr	r2, [sp, #0x58]
	sub	r2, #1
	str	r2, [sp, #0x44]
.L23de2:
	ldr	r4, [sp, #0x44]
	ldr	r1, [sp, #0x5c]
	lsl	r3, r4, #1
	ldrh	r3, [r3, r1]
	mov	r2, #1
	mov	r0, #0x6f
	str	r3, [sp, #0x54]
	mov	r10, r2
	bl	_PlaySound
.L23df6:
	mov	r0, #1
	bl	WaitFrames
	bl	.L232a0
.L23e00:
	ldr	r5, [sp, #0x10]
	mov	r6, #0xa
.L23e04:
	ldmia	r5!, {r0}
	sub	r6, #1
	bl	Func_8003f3c
	cmp	r6, #0
	bge	.L23e04
	ldr	r0, [sp, #0x34]
	bl	Func_8003f3c
	ldr	r0, [sp, #0x40]
	bl	Func_8003f3c
	mov	r0, #1
	bl	WaitFrames
	bl	Func_801e318
	mov	r1, #1
	ldr	r0, [sp, #0x4c]
	bl	CloseUIBox
	mov	r1, #1
	ldr	r0, [sp, #0x48]
	bl	CloseUIBox
	ldr	r5, =iwram_3001e74
	ldr	r3, [r5]
	add	r3, #0x41
	ldrb	r0, [r3]
	add	r5, #0xc0
	bl	Func_801f200
	ldr	r2, [r5]
	mov	r3, #0
	str	r3, [r2, #0x48]
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	add	sp, #0x160
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8023178
