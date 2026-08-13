	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8027114  @ 0x08027114
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x64
	str	r0, [sp, #0x58]
	mov	r0, #0x80
	lsl	r0, #1
	str	r0, [sp, #0x44]
	mov	r0, #0x80
	str	r1, [sp, #0x54]
	lsl	r0, #3
	mov	r1, #0
	str	r2, [sp, #0x50]
	str	r1, [sp, #0x3c]
	str	r1, [sp, #0x38]
	bl	AllocUploadSpriteGFX
	str	r0, [sp, #0x34]
	mov	r0, #0x80
	lsl	r0, #2
	bl	AllocUploadSpriteGFX
	mov	r1, #0x82
	str	r0, [sp, #0x30]
	lsl	r1, #1
	mov	r0, #0x39
	bl	galloc_ewram
	mov	r2, sp
	add	r2, #0x5c
	str	r2, [sp, #0x24]
	str	r0, [r2]
	mov	r1, #0
	ldr	r0, [sp, #0x34]
	bl	Func_8021c64
	ldr	r0, =0x6006000
	bl	Func_8021a18
	ldr	r0, =0x6006680
	bl	Func_80219c8
	bl	Func_8021848
	ldr	r3, =iwram_3001e74
	ldr	r2, [sp, #0x24]
	ldr	r0, [r3]
	ldr	r3, [r2]
	mov	r1, #0x80
	lsl	r1, #24
	add	r3, #0xe4
	mov	r2, #7
.L27184:
	sub	r2, #1
	stmia	r3!, {r1}
	cmp	r2, #0
	bge	.L27184
	ldr	r2, [sp, #0x24]
	ldr	r3, [r2]
	mov	r1, #0
	add	r3, #0x24
	mov	r2, #2
.L27196:
	sub	r2, #1
	strb	r1, [r3]
	add	r3, #1
	cmp	r2, #0
	bge	.L27196
	ldr	r2, [sp, #0x24]
	ldr	r1, [r2]
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	str	r3, [r1, #0x28]
	str	r3, [r1, #0x2c]
	str	r3, [r1, #0x3c]
	str	r3, [r1, #0x40]
	str	r3, [r1, #0x50]
	str	r3, [r1, #0x48]
	str	r3, [r1, #0x44]
	str	r2, [r1, #0x4c]
	mov	r3, r0
	add	r3, #0x44
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2729e
	mov	r3, #1
	ldr	r2, =ewram_2002224
	str	r3, [r1, #0x50]
	ldr	r3, .L271e4	@ 0x56
	strh	r3, [r2, #8]
	ldr	r3, .L271e8	@ 0x53
	strh	r3, [r2, #0xa]
	strh	r3, [r2, #0xc]
	ldr	r3, .L271ec	@ 0x54
	mov	r5, #0
	strh	r3, [r2, #0xe]
	mov	r7, r0
	mov	r6, r0
	add	r7, #0x50
	add	r6, #0x52
	b	.L2727a

	.align	2, 0
.L271e4:
	.word	0x56
.L271e8:
	.word	0x53
.L271ec:
	.word	0x54
	.pool

.L27200:
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L27220
	add	r5, #1
	cmp	r5, #0x18
	ble	.L27274
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #0x50]
	ldr	r1, [sp, #0x24]
	ldr	r3, [r1]
	str	r0, [r3, #0x50]
	b	.L2729e
.L27220:
	ldrh	r2, [r1, #8]
	mov	r3, r2
	mov	r5, #0
	cmp	r3, #0x56
	bne	.L2723c
	ldrh	r3, [r1, #0xa]
	cmp	r3, #0x53
	bne	.L2723c
	ldrh	r3, [r1, #0xc]
	cmp	r3, #0x53
	bne	.L2723c
	ldrh	r3, [r1, #0xe]
	cmp	r3, #0x54
	beq	.L2729e
.L2723c:
	mov	r3, r2
	cmp	r3, #0x45
	bne	.L27254
	ldrh	r3, [r1, #0xa]
	cmp	r3, #0x44
	bne	.L27254
	ldrh	r3, [r1, #0xc]
	cmp	r3, #0x56
	bne	.L27254
	ldrh	r3, [r1, #0xe]
	cmp	r3, #0x53
	beq	.L2729e
.L27254:
	ldrh	r3, [r1]
	cmp	r3, #0x45
	bne	.L2726c
	ldrh	r3, [r1, #2]
	cmp	r3, #0x58
	bne	.L2726c
	ldrh	r3, [r1, #4]
	cmp	r3, #0x45
	bne	.L2726c
	ldrh	r3, [r1, #6]
	cmp	r3, #0x43
	beq	.L27274
.L2726c:
	mov	r2, #1
	neg	r2, r2
	str	r2, [sp, #0x50]
	b	.L27296
.L27274:
	mov	r0, #1
	bl	WaitFrames
.L2727a:
	ldrb	r2, [r7]
	mov	r3, #1
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldrb	r0, [r6]
	ldr	r3, =ewram_2002024
	lsl	r2, #3
	add	r1, r2, r3
	cmp	r0, #0
	beq	.L27200
	mov	r1, #1
	neg	r1, r1
	str	r1, [sp, #0x50]
.L27296:
	ldr	r0, [sp, #0x24]
	ldr	r3, [r0]
	mov	r2, #0
	str	r2, [r3, #0x50]
.L2729e:
	mov	r1, #0xc8
	ldr	r0, =Func_8026e80
	lsl	r1, #4
	bl	StartTask
.L272a8:
	add	r1, sp, #0x64
	mov	r9, r1
	bl	Func_80270ac
	ldr	r2, [sp, #0x24]
	ldr	r0, [r2]
	mov	r3, r0
	add	r3, #0x26
	mov	r1, #0
	strb	r1, [r3]
	mov	r2, r0
	mov	r3, #1
	neg	r3, r3
	add	r2, #0xe0
	str	r3, [r2]
	mov	r3, r0
	add	r3, #0xd8
	mov	r0, #0xb7
	str	r1, [r3]
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L272ea
	ldr	r3, [sp, #0x24]
	ldr	r2, [r3]
	mov	r1, r2
	mov	r3, #1
	add	r1, #0xd8
	str	r3, [r1]
	add	r2, #0xdc
	mov	r3, #0x3c
	str	r3, [r2]
.L272ea:
	ldr	r0, [sp, #0x50]
	cmp	r0, #0
	ble	.L272fa
	mov	r0, #0
	bl	MenuBar
	mov	r6, r0
	b	.L272fc
.L272fa:
	mov	r6, #0xe
.L272fc:
	cmp	r6, #7
	bne	.L27340
	mov	r0, #0xc
	bl	alloc_iwram
	ldr	r3, =gDebugMode
	ldrb	r3, [r3]
	mov	r6, r0
	cmp	r3, #0
	beq	.L2731e
	ldr	r3, =gKeyHeld
	ldr	r2, [r3]
	mov	r3, #8
	and	r2, r3
	mov	r0, #2
	cmp	r2, #0
	bne	.L27320
.L2731e:
	mov	r0, #1
.L27320:
	mov	r1, r6
	bl	_Func_80b6c08
	mov	r5, r0
	mov	r0, #1
	bl	WaitFrames
	ldrh	r2, [r6]
	mov	r0, r6
	mov	r1, r5
	bl	Func_8023178
	mov	r0, r6
	bl	free
	b	.L272a8
.L27340:
	cmp	r6, #4
	bne	.L27376
	bl	Func_8026fa8
	cmp	r0, #0
	bne	.L272a8
	ldr	r2, [sp, #0x58]
	mov	r1, #1
	str	r2, [sp, #0x4c]
	str	r1, [sp, #0x50]
	ldr	r1, [sp, #0x54]
	ldrh	r3, [r1]
	strh	r3, [r2]
	ldr	r1, [sp, #0x4c]
	ldr	r3, =0x7ffe
	strh	r3, [r1, #4]
	ldr	r2, [sp, #0x4c]
	mov	r3, #0x63
	strh	r3, [r2, #6]
	ldr	r3, [sp, #0x4c]
	strh	r0, [r3, #8]
	ldr	r0, [sp, #0x4c]
	mov	r3, #0x80
	lsl	r3, #1
	strh	r3, [r0, #0xa]
	bl	.L28020
.L27376:
	cmp	r6, #0xe
	beq	.L2737e
	bl	.L28020
.L2737e:
	mov	r0, #0x9a
	bl	_PlaySound
	ldr	r2, [sp, #0x50]
	mov	r1, #0
	str	r1, [sp, #0x2c]
	cmp	r1, r2
	blt	.L27392
	bl	.L28020
.L27392:
	mov	r3, sp
	add	r3, #0x60
	str	r1, [sp, #0x1c]
	str	r1, [sp, #0x18]
	str	r1, [sp, #0x20]
	str	r3, [sp, #0x14]
.L2739e:
	ldr	r0, [sp, #0x2c]
	cmp	r0, #0
	bne	.L273cc
	ldr	r2, [sp, #0x24]
	ldr	r1, [r2]
	mov	r0, #0
	add	r1, #0x54
	bl	_Func_80be0b4
	b	.L273e6

	.pool_aligned

.L273cc:
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x1c]
	ldr	r3, [r0]
	add	r3, r1, r3
	mov	r2, r3
	add	r2, #0x50
	mov	r1, #3
.L273da:
	ldrb	r3, [r2]
	sub	r1, #1
	strb	r3, [r2, #4]
	add	r2, #1
	cmp	r1, #0
	bge	.L273da
.L273e6:
	ldr	r3, [sp, #0x18]
	ldr	r2, [sp, #0x58]
	add	r2, r3
	str	r2, [sp, #0x4c]
	ldr	r0, [sp, #0x20]
	ldr	r1, [sp, #0x54]
	ldrh	r0, [r0, r1]
	str	r0, [sp, #0x40]
	bl	_GetUnit
	ldr	r3, =iwram_3001f34
	str	r0, [sp, #0x48]
	ldr	r5, [r3]
	ldr	r2, [sp, #0x40]
	mov	r3, r5
	add	r3, #0xe0
	str	r2, [r3]
	mov	r2, #0
	ldr	r3, =0x80000400
	str	r2, [r5, #0x40]
	add	r5, #0x18
	str	r3, [r5, #4]
	str	r2, [r5, #8]
	ldr	r0, [sp, #0x48]
	mov	r1, #0x94
	lsl	r1, #1
	add	r3, r0, r1
	ldrb	r0, [r3]
	ldr	r1, [sp, #0x30]
	bl	Func_8021b80
	ldr	r3, .L27460	@ 0x3ff
	ldrh	r2, [r5, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r5, #8]
	ldrh	r2, [r5, #6]
	ldr	r3, =0xfffffe00
	and	r3, r2
	strh	r3, [r5, #6]
	ldrb	r2, [r5, #9]
	mov	r3, #0x80
	strb	r3, [r5, #4]
	mov	r3, #0xf
	and	r3, r2
	mov	r2, #0xe0
	orr	r3, r2
	strb	r3, [r5, #9]
	ldr	r3, [sp, #0x24]
	ldr	r2, [r3]
	mov	r3, #1
	add	r2, #0x26
	strb	r3, [r2]
.L27454:
	bl	Func_801e318
	ldr	r5, =iwram_3001f34
	ldr	r1, [r5]
	b	.L27474

	.align	2, 0
.L27460:
	.word	0x3ff
	.pool

.L27474:
	mov	r3, r1
	add	r3, #0x24
	mov	r7, #0
	strb	r7, [r3]
	ldr	r2, [sp, #0x1c]
	mov	r3, #0x80
	add	r2, #0xe4
	lsl	r3, #24
	str	r3, [r1, r2]
	add	r1, sp, #0x40
	ldr	r2, [sp, #0x14]
	ldrh	r1, [r1]
	strh	r1, [r2]
	ldr	r2, [sp, #0x14]
	mov	r3, #0xff
	ldr	r0, =0
	strh	r3, [r2, #2]
	mov	r1, #1
	mov	r8, r0
	ldr	r0, [sp, #0x14]
	bl	_Func_80c10e8
	ldr	r0, [sp, #0x14]
	bl	Func_802281c
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #1
	bl	MenuBar
	mov	r6, r0
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #2
	neg	r3, r3
	cmp	r6, r3
	bne	.L27506
	b	.L274c8

	.pool_aligned

.L274c8:
	mov	r0, #0xc
	bl	alloc_iwram
	mov	r5, r0
	mov	r1, r5
	mov	r0, #1
	bl	_Func_80b6c08
	mov	r6, r0
	ldr	r0, [sp, #0x24]
	ldr	r3, [r0]
	mov	r1, r8
	add	r3, #0x26
	strb	r1, [r3]
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r5
	ldr	r2, [sp, #0x40]
	mov	r1, r6
	bl	Func_8023178
	ldr	r2, [sp, #0x24]
	ldr	r3, [r2]
	mov	r2, #1
	add	r3, #0x26
	strb	r2, [r3]
	mov	r0, r5
	bl	free
	b	.L2739e
.L27506:
	ldr	r0, [sp, #0x14]
	mov	r1, #0
	bl	_Func_80c10e8
	mov	r3, #1
	neg	r3, r3
	cmp	r6, r3
	bne	.L27532
	ldr	r0, [sp, #0x2c]
	cmp	r0, #0
	bne	.L27520
	bl	.L28014
.L27520:
	sub	r0, #1
	lsl	r1, r0, #2
	lsl	r2, r0, #4
	lsl	r3, r0, #1
	str	r0, [sp, #0x2c]
	str	r1, [sp, #0x1c]
	str	r2, [sp, #0x18]
	str	r3, [sp, #0x20]
	b	.L2739e
.L27532:
	ldr	r5, [r5]
	ldr	r3, [r5, #0x4c]
	cmp	r3, #0
	bne	.L2753c
	mov	r6, #3
.L2753c:
	ldr	r3, =0x80002400
	str	r7, [r5, #8]
	str	r3, [r5, #4]
	ldr	r0, [sp, #0x34]
	mov	r1, r6
	bl	Func_8021c64
	ldr	r3, .L27568	@ 0x3ff
	ldrh	r2, [r5, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r5, #8]
	cmp	r6, #0xf
	bne	.L2757c
	ldrh	r3, [r5, #6]
	ldr	r2, =0xfffffe00
	and	r2, r3
	ldr	r3, .L2756c	@ 0x80
	b	.L27584

	.align	2, 0
.L27568:
	.word	0x3ff
.L2756c:
	.word	0x80
	.pool

.L2757c:
	ldrh	r3, [r5, #6]
	ldr	r2, =0xfffffe00
	and	r2, r3
	ldr	r3, .L275a8	@ 0x60
.L27584:
	orr	r2, r3
	strh	r2, [r5, #6]
	mov	r3, #0x88
	strb	r3, [r5, #4]
	ldr	r0, [sp, #0x24]
	ldr	r2, [r0]
	mov	r3, #1
	add	r2, #0x24
	strb	r3, [r2]
	cmp	r6, #0x10
	bls	.L2759e
	bl	.L27f82
.L2759e:
	ldr	r2, =.L275b8
	lsl	r3, r6, #2
	ldr	r3, [r3, r2]
	b	.L275b4

	.align	2, 0
.L275a8:
	.word	0x60
	.pool

.L275b4:
	mov	pc, r3
	.align	2, 0
.L275b8:
	.word	.L275fc
	.word	.L27670
	.word	.L27d6a
	.word	.L27f7e
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27b5c
	.word	.L278e4
.L275fc:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0x11
	mov	r2, #0xb
	mov	r3, #3
	mov	r0, #0xb
	bl	CreateUIBox
	mov	r11, r0
	mov	r1, r11
	ldr	r0, =0x1f
	mov	r2, #0x10
	mov	r3, #0
	bl	Func_801e7c0
	ldr	r2, [sp, #0x24]
	ldr	r1, [r2]
	ldr	r3, =0xfffffe00
	ldrh	r2, [r1, #6]
	and	r3, r2
	ldr	r2, .L27654	@ 0x40
	orr	r3, r2
	strh	r3, [r1, #6]
	mov	r0, #0x70
	bl	_PlaySound
	mov	r3, #0
	ldr	r0, [sp, #0x40]
	mov	r1, #1
	mov	r2, #1
	bl	Func_8026080
	mov	r1, #1
	mov	r6, r0
	mov	r0, r11
	bl	CloseUIBox
	mov	r3, #1
	neg	r3, r3
	cmp	r6, r3
	bne	.L27650
	b	.L27454
.L27650:
	b	.L27660

	.align	2, 0
.L27654:
	.word	0x40
	.pool

.L27660:
	ldr	r1, [sp, #0x4c]
	mov	r0, #0
	mov	r3, #1
	str	r0, [sp, #0x3c]
	str	r6, [sp, #0x44]
	strh	r3, [r1, #0xc]
	bl	.L27f82
.L27670:
	mov	r0, #0x70
	bl	_PlaySound
	mov	r6, #0
	ldr	r3, =iwram_3001f34
	ldr	r3, [r3]
	str	r6, [r3, #0x34]
	str	r6, [r3, #0x30]
	str	r6, [r3, #0x38]
.L27682:
	ldr	r2, [sp, #0x24]
	ldr	r1, [r2]
	mov	r3, #0x96
	add	r3, r1
	ldrh	r2, [r1, #6]
	mov	r8, r3
	ldr	r3, =0xfffffe00
	and	r3, r2
	ldr	r2, .L276bc	@ 0x30
	orr	r3, r2
	strh	r3, [r1, #6]
	ldr	r2, [sp, #0x48]
	mov	r3, #0x58
	ldrh	r3, [r2, r3]
	ldr	r2, =0x3fff
	mov	r0, #0x74
	mov	r5, r2
	add	r0, r1
	and	r5, r3
	mov	r10, r0
	mov	r4, #0
	mov	r1, #0
	cmp	r5, #0
	beq	.L27700
	ldr	r7, [sp, #0x48]
	mov	r6, r8
	add	r7, #0x58
	mov	r9, r2
	b	.L276cc

	.align	2, 0
.L276bc:
	.word	0x30
	.pool

.L276cc:
	mov	r0, r5
	str	r1, [sp, #0x10]
	str	r4, [sp, #4]
	bl	_GetMoveInfo
	ldrb	r2, [r0, #1]
	mov	r3, #0x80
	and	r3, r2
	ldr	r1, [sp, #0x10]
	ldr	r4, [sp, #4]
	cmp	r3, #0
	beq	.L276ee
	mov	r3, r10
	strb	r1, [r3, r4]
	strh	r5, [r6]
	add	r4, #1
	add	r6, #2
.L276ee:
	add	r1, #1
	cmp	r1, #0x20
	beq	.L27700
	add	r7, #4
	ldrh	r3, [r7]
	mov	r5, r9
	and	r5, r3
	cmp	r5, #0
	bne	.L276cc
.L27700:
	mov	r3, #0
	mov	r0, r10
	strb	r3, [r0, r4]
	ldr	r3, =0
	lsl	r2, r4, #1
	mov	r1, r8
	strh	r3, [r2, r1]
	ldr	r0, [sp, #0x40]
	mov	r2, r4
	bl	Func_802592c
	mov	r2, #1
	mov	r6, r0
	neg	r2, r2
	cmp	r6, r2
	bne	.L27722
	b	.L27454
.L27722:
	mov	r0, r10
	ldrb	r3, [r0, r6]
	ldr	r1, [sp, #0x48]
	lsl	r3, #2
	add	r3, #0x58
	ldrh	r3, [r1, r3]
	ldr	r2, =0x3fff
	and	r2, r3
	mov	r0, r2
	str	r2, [sp, #0x38]
	bl	_GetMoveInfo
	mov	r6, r0
	ldr	r0, [sp, #0x24]
	b	.L27748

	.pool_aligned

.L27748:
	ldrb	r3, [r6, #8]
	ldr	r5, [r0]
	mov	r0, #0x80
	mov	r8, r3
	bl	AllocUploadSpriteGFX
	ldr	r3, =iwram_3001e8c
	ldr	r7, [r3]
	mov	r3, #6
	str	r3, [sp]
	mov	r10, r0
	mov	r1, #0x11
	mov	r2, #0x12
	mov	r3, #3
	mov	r0, #8
	bl	CreateUIBox
	ldr	r1, [sp, #0x24]
	mov	r11, r0
	ldr	r0, [r1]
	ldr	r1, =0xfffffe00
	ldrh	r2, [r0, #6]
	mov	r3, r1
	and	r3, r2
	ldr	r2, .L277ac	@ 0x28
	orr	r3, r2
	strh	r3, [r0, #6]
	ldr	r3, =0x40000400
	add	r5, #0xc
	str	r3, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #8]
	mov	r3, r11
	ldrh	r2, [r3, #0xc]
	ldr	r3, .L277b0	@ 0x1ff
	lsl	r2, #3
	add	r2, #8
	and	r2, r3
	ldrh	r3, [r5, #6]
	mov	r0, r11
	and	r1, r3
	ldrh	r3, [r0, #0xe]
	lsl	r3, #3
	orr	r1, r2
	add	r3, #4
	strh	r1, [r5, #6]
	strb	r3, [r5, #4]
	mov	r1, r10
	b	.L277c0

	.align	2, 0
.L277ac:
	.word	0x28
.L277b0:
	.word	0x1ff
	.pool

.L277c0:
	ldr	r0, [sp, #0x38]
	bl	Func_8021b30
	ldr	r3, =0x3ff
	ldrh	r2, [r5, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r5, #8]
	ldr	r1, [sp, #0x24]
	ldr	r2, [r1]
	mov	r3, #1
	add	r2, #0x25
	strb	r3, [r2]
	ldr	r3, =0xea7
	add	r2, r7, r3
	mov	r3, #5
	strb	r3, [r2]
	ldr	r1, [sp, #0x48]
	ldrb	r2, [r6, #9]
	mov	r0, #0x3a
	ldrsh	r3, [r1, r0]
	cmp	r2, r3
	ble	.L27808
	mov	r0, #2
	bl	SetTextColor
	b	.L2781a

	.pool_aligned

.L27808:
	ldr	r2, [sp, #0x48]
	ldr	r0, =0x13d
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2781a
	mov	r0, #9
	bl	SetTextColor
.L2781a:
	ldr	r1, [sp, #0x38]
	ldr	r0, =0x333
	mov	r2, #0x10
	add	r0, r1, r0
	mov	r3, #0
	mov	r1, r11
	bl	Func_801e7c0
	mov	r5, #0
	ldrb	r0, [r6, #9]
	mov	r1, #2
	mov	r2, r11
	mov	r3, #0x68
	str	r5, [sp]
	bl	Func_801e9d4
	ldr	r3, =0xea7
	add	r2, r7, r3
	mov	r3, #0xf
	strb	r3, [r2]
	mov	r0, #0xf
	bl	SetTextColor
	ldr	r1, =0xf01f
	mov	r0, r11
	mov	r2, #0xb
	mov	r3, #0
	str	r5, [sp]
	bl	Func_8019000
	mov	r3, #0
	ldr	r1, =0xf01e
	mov	r0, r11
	mov	r2, #0xc
	str	r5, [sp]
	bl	Func_8019000
	ldrb	r3, [r6, #2]
	cmp	r3, #4
	beq	.L2787c
	ldr	r0, =0x5001
	mov	r1, r3
	add	r1, r0
	mov	r2, #0xf
	mov	r0, r11
	mov	r3, #0
	str	r5, [sp]
	bl	Func_8019000
.L2787c:
	ldr	r2, [sp, #0x4c]
	mov	r1, r8
	strh	r1, [r2, #0xc]
	mov	r0, #0x70
	bl	_PlaySound
	mov	r0, r6
	bl	GetMoveDisplayEffect
	ldrb	r1, [r6]
	mov	r3, r0
	mov	r2, r8
	ldr	r0, [sp, #0x40]
	bl	Func_8026080
	mov	r6, r0
	ldr	r0, [sp, #0x24]
	ldr	r3, [r0]
	ldr	r5, .L278c8	@ 0
	add	r3, #0x25
	strb	r5, [r3]
	mov	r0, r10
	bl	Func_8003f3c
	mov	r1, #1
	mov	r0, r11
	bl	CloseUIBox
	mov	r1, #1
	neg	r1, r1
	cmp	r6, r1
	bne	.L278be
	b	.L27682
.L278be:
	mov	r2, #1
	str	r2, [sp, #0x3c]
.L278c2:
	str	r6, [sp, #0x44]
	b	.L27f82

	.align	2, 0
.L278c8:
	.word	0
	.pool

.L278e4:
	mov	r0, #0x70
	bl	_PlaySound
	ldr	r3, =iwram_3001f34
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x34]
	str	r3, [r2, #0x30]
	str	r3, [r2, #0x38]
.L278f6:
	ldr	r3, [sp, #0x24]
	ldr	r1, [r3]
	ldr	r3, =0xfffffe00
	ldrh	r2, [r1, #6]
	and	r3, r2
	ldr	r2, .L27934	@ 0x50
	orr	r3, r2
	strh	r3, [r1, #6]
	ldr	r0, [sp, #0x14]
	bl	Func_802281c
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x1c]
	ldr	r2, [r0]
	add	r2, r1
	add	r2, #0x54
	mov	r1, #0
	mov	r0, #0
	bl	Func_8024934
	mov	r6, r0
	ldr	r0, [sp, #0x14]
	bl	Func_802281c
	mov	r2, #1
	neg	r2, r2
	cmp	r6, r2
	bne	.L27930
	b	.L27454
.L27930:
	b	.L27940

	.align	2, 0
.L27934:
	.word	0x50
	.pool

.L27940:
	mov	r3, #6
	mov	r0, #1
	str	r3, [sp, #0x3c]
	str	r6, [sp, #0x38]
	bl	WaitFrames
	ldr	r0, [sp, #0x24]
	ldr	r3, [r0]
	mov	r0, r6
	add	r3, #0xc
	mov	r8, r3
	bl	_GetSummonInfo
	mov	r9, r0
	ldrh	r0, [r0]
	bl	_GetMoveInfo
	mov	r10, r0
	mov	r0, #0x80
	bl	AllocUploadSpriteGFX
	ldr	r1, [sp, #0x3c]
	str	r0, [sp, #0x28]
	str	r1, [sp]
	mov	r2, #0x11
	mov	r1, #0x11
	mov	r3, #3
	mov	r0, #0xa
	bl	CreateUIBox
	ldr	r2, [sp, #0x24]
	ldr	r4, [sp, #0x1c]
	ldr	r3, [r2]
	mov	r1, r9
	add	r1, #4
	add	r4, #0x54
	ldrb	r2, [r1]
	ldrb	r3, [r3, r4]
	mov	r11, r0
	mov	r7, #0
	cmp	r2, r3
	bhi	.L279ae
	ldr	r5, [sp, #0x24]
	mov	r0, r1
	mov	r1, r4
.L2799a:
	add	r7, #1
	add	r1, #1
	cmp	r7, #3
	bgt	.L279ae
	ldr	r3, [r5]
	add	r0, #1
	ldrb	r2, [r0]
	ldrb	r3, [r3, r1]
	cmp	r2, r3
	bls	.L2799a
.L279ae:
	mov	r3, #4
	eor	r3, r7
	neg	r2, r3
	orr	r2, r3
	ldr	r3, [sp, #0x24]
	ldr	r0, [r3]
	ldr	r1, =0xfffffe00
	lsr	r4, r2, #31
	ldrh	r2, [r0, #6]
	mov	r3, r1
	and	r3, r2
	ldr	r2, .L279f8	@ 0x38
	orr	r3, r2
	strh	r3, [r0, #6]
	ldr	r3, =0x40000400
	mov	r0, r8
	mov	r5, #1
	str	r3, [r0, #4]
	mov	r3, #0
	sub	r4, r5, r4
	str	r3, [r0, #8]
	mov	r3, r11
	ldrh	r2, [r3, #0xc]
	ldr	r3, .L279fc	@ 0x1ff
	lsl	r2, #3
	add	r2, #8
	and	r2, r3
	ldrh	r3, [r0, #6]
	and	r1, r3
	orr	r1, r2
	strh	r1, [r0, #6]
	mov	r1, r11
	ldrh	r3, [r1, #0xe]
	lsl	r3, #3
	mov	r2, r9
	b	.L27a08

	.align	2, 0
.L279f8:
	.word	0x38
.L279fc:
	.word	0x1ff
	.pool

.L27a08:
	add	r3, #4
	strb	r3, [r0, #4]
	ldrh	r3, [r2]
	ldr	r0, =0x3fff
	ldr	r1, [sp, #0x28]
	and	r0, r3
	str	r4, [sp, #4]
	bl	Func_8021b30
	ldr	r3, .L27a50	@ 0x3ff
	and	r0, r3
	mov	r3, r8
	ldrh	r2, [r3, #8]
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	mov	r0, r8
	strh	r3, [r0, #8]
	ldr	r1, [sp, #0x24]
	ldr	r3, [r1]
	ldr	r4, [sp, #4]
	add	r3, #0x25
	strb	r5, [r3]
	cmp	r4, #0
	bne	.L27a42
	mov	r0, #2
	bl	SetTextColor
	ldr	r4, [sp, #4]
.L27a42:
	mov	r0, r6
	str	r4, [sp, #4]
	bl	_GetSummonInfo
	ldr	r3, =0x333
	ldrh	r0, [r0]
	b	.L27a60

	.align	2, 0
.L27a50:
	.word	0x3ff
	.pool

.L27a60:
	mov	r2, #0x10
	add	r0, r3
	mov	r1, r11
	mov	r3, #0
	bl	Func_801e7c0
	mov	r2, #0
	lsl	r3, r2, #1
	mov	r6, r9
	mov	r5, r3
	ldr	r4, [sp, #4]
	mov	r7, #0
	mov	r8, r2
	add	r6, #4
	add	r5, #0xd
.L27a7e:
	ldrb	r3, [r6]
	cmp	r3, #0
	beq	.L27aae
	ldr	r3, =0x5001
	mov	r0, r8
	add	r1, r7, r3
	str	r0, [sp]
	mov	r2, r5
	mov	r0, r11
	mov	r3, #0
	str	r4, [sp, #4]
	bl	Func_8019000
	ldrb	r1, [r6]
	mov	r3, r8
	add	r2, r5, #1
	str	r3, [sp]
	add	r1, #0x30
	mov	r0, r11
	mov	r3, #0
	bl	Func_8018efc
	ldr	r4, [sp, #4]
	add	r5, #2
.L27aae:
	add	r7, #1
	add	r6, #1
	cmp	r7, #3
	ble	.L27a7e
	cmp	r4, #0
	beq	.L27ac8
	mov	r0, #0x70
	bl	_PlaySound
	b	.L27ace

	.pool_aligned

.L27ac8:
	mov	r0, #0x72
	bl	_PlaySound
.L27ace:
	mov	r0, r10
	bl	GetMoveDisplayEffect
	mov	r3, r0
	mov	r0, r10
	ldrb	r1, [r0]
	ldrb	r2, [r0, #8]
	ldr	r0, [sp, #0x40]
	bl	Func_8026080
	mov	r1, r10
	ldrb	r3, [r1, #8]
	mov	r6, r0
	ldr	r0, [sp, #0x4c]
	strh	r3, [r0, #0xc]
	ldr	r1, [sp, #0x24]
	ldr	r3, [r1]
	ldr	r2, =0
	add	r3, #0x25
	strb	r2, [r3]
	ldr	r0, [sp, #0x28]
	bl	Func_8003f3c
	mov	r0, r11
	mov	r1, #1
	bl	CloseUIBox
	mov	r2, #1
	neg	r2, r2
	cmp	r6, r2
	bne	.L27b0e
	b	.L278f6
.L27b0e:
	b	.L27b14

	.pool_aligned

.L27b14:
	ldr	r3, [sp, #0x24]
	ldr	r2, [sp, #0x1c]
	mov	r0, #0
	mov	r14, r0
	add	r2, #0x54
	mov	r0, r9
	ldr	r1, [r3]
	add	r0, #4
	mov	r5, r2
	mov	r12, r3
	ldrb	r4, [r0]
	ldrb	r3, [r1, r5]
	mov	r7, #0
	cmp	r4, r3
	bls	.L27b38
	mov	r2, r14
	strb	r2, [r1, r5]
	b	.L278c2
.L27b38:
	sub	r3, r4
	add	r7, #1
	strb	r3, [r1, r5]
	add	r0, #1
	add	r2, #1
	cmp	r7, #3
	ble	.L27b48
	b	.L278c2
.L27b48:
	mov	r3, r12
	ldr	r1, [r3]
	mov	r5, r2
	ldrb	r4, [r0]
	ldrb	r3, [r1, r5]
	cmp	r4, r3
	bls	.L27b38
	mov	r0, r14
	strb	r0, [r1, r5]
	b	.L278c2
.L27b5c:
	mov	r0, #0x70
	bl	_PlaySound
	ldr	r3, =iwram_3001f34
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x34]
	str	r3, [r2, #0x30]
	str	r3, [r2, #0x38]
.L27b6e:
	ldr	r2, [sp, #0x24]
	ldr	r0, =0xfffffe00
	ldr	r1, [r2]
	mov	r10, r0
	ldrh	r3, [r1, #6]
	mov	r2, r10
	and	r2, r3
	ldr	r3, .L27bb4	@ 0x90
	orr	r2, r3
	strh	r2, [r1, #6]
	ldr	r7, =iwram_3001f34
	ldr	r5, [sp, #0x1c]
	ldr	r2, [r7]
	mov	r3, #0x80
	lsl	r3, #24
	add	r5, #0xe4
	str	r3, [r2, r5]
	mov	r1, #1
	ldr	r0, [sp, #0x40]
	bl	Func_8023e70
	mov	r1, #0
	mov	r6, r0
	mov	r0, #1
	mov	r8, r1
	ldr	r3, [sp, #0x4c]
	neg	r0, r0
	mov	r2, r8
	mov	r9, r0
	strh	r2, [r3, #0xc]
	cmp	r6, r9
	bne	.L27bb2
	bl	.L27454
.L27bb2:
	b	.L27bc0

	.align	2, 0
.L27bb4:
	.word	0x90
	.pool

.L27bc0:
	mov	r1, #5
	str	r1, [sp, #0x3c]
	str	r6, [sp, #0x38]
	ldr	r3, [r7]
	str	r6, [r3, r5]
	ldr	r2, [sp, #0x38]
	mov	r3, #0xf
	asr	r7, r2, #8
	mov	r4, #0xff
	and	r4, r2
	and	r7, r3
	mov	r2, r4
	ldr	r0, [sp, #0x40]
	mov	r1, r7
	str	r4, [sp, #4]
	bl	_Func_807a2bc
	mov	r5, r0
	ldr	r4, [sp, #4]
	cmp	r5, #0
	beq	.L27cd4
	mov	r1, r4
	mov	r0, r7
	bl	_Func_807a5b0
	bl	_GetMoveInfo
	mov	r3, #6
	mov	r5, r0
	ldrb	r6, [r5, #8]
	mov	r1, #0x11
	str	r3, [sp]
	mov	r2, #0xa
	mov	r3, #3
	mov	r0, #0xb
	bl	CreateUIBox
	ldr	r3, [sp, #0x24]
	ldr	r1, [r3]
	ldrh	r2, [r1, #6]
	mov	r3, r10
	and	r3, r2
	ldr	r2, =0x40
	mov	r11, r0
	ldr	r0, =0x5001
	orr	r3, r2
	strh	r3, [r1, #6]
	mov	r2, r8
	add	r1, r7, r0
	mov	r3, #0
	mov	r0, r11
	str	r2, [sp]
	bl	Func_8019000
	lsl	r0, r7, #2
	ldr	r4, [sp, #4]
	add	r0, r7
	ldr	r3, =0x45f
	lsl	r0, #2
	add	r0, r4
	mov	r1, r11
	mov	r2, #0x10
	add	r0, r3
	mov	r3, #0
	bl	Func_801e7c0
	ldr	r3, [sp, #0x4c]
	mov	r0, #1
	strh	r6, [r3, #0xc]
	bl	WaitFrames
	mov	r0, #0x70
	b	.L27c60

	.pool_aligned

.L27c60:
	bl	_PlaySound
	mov	r0, r5
	bl	GetMoveDisplayEffect
	mov	r2, r6
	mov	r3, r0
	ldrb	r1, [r5]
	ldr	r0, [sp, #0x40]
	bl	Func_8026080
	mov	r6, r0
	ldr	r0, [sp, #0x24]
	ldr	r3, [r0]
	add	r3, #0xd8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L27cbc
	ldr	r0, =0xc4e
	mov	r1, #0xf
	mov	r2, #8
	bl	Func_8021e48
	mov	r5, r0
	b	.L27c98
.L27c92:
	mov	r0, #1
	bl	WaitFrames
.L27c98:
	bl	Func_8017364
	cmp	r0, #0
	beq	.L27c92
	mov	r1, #1
	mov	r0, r5
	bl	CloseUIBox
	ldr	r2, [sp, #0x24]
	ldr	r1, [r2]
	mov	r2, r1
	add	r2, #0xd8
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	add	r1, #0xdc
	mov	r3, #0x2d
	str	r3, [r1]
.L27cbc:
	mov	r0, r11
	mov	r1, #1
	bl	CloseUIBox
	mov	r3, #1
	neg	r3, r3
	cmp	r6, r3
	bne	.L27cce
	b	.L27b6e
.L27cce:
	b	.L278c2

	.pool_aligned

.L27cd4:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0x11
	mov	r2, #0xa
	mov	r3, #3
	mov	r0, #0xb
	str	r4, [sp, #4]
	bl	CreateUIBox
	mov	r11, r0
	ldr	r0, [sp, #0x24]
	ldr	r1, [r0]
	ldrh	r2, [r1, #6]
	mov	r3, r10
	and	r3, r2
	ldr	r2, =0x40
	orr	r3, r2
	strh	r3, [r1, #6]
	mov	r0, #2
	bl	SetTextColor
	ldr	r2, =0x5001
	mov	r0, r11
	add	r1, r7, r2
	mov	r3, #0
	mov	r2, #0
	str	r5, [sp]
	bl	Func_8019000
	lsl	r0, r7, #2
	ldr	r4, [sp, #4]
	add	r0, r7
	ldr	r3, =0x45f
	lsl	r0, #2
	add	r0, r4
	mov	r1, r11
	mov	r2, #0x10
	add	r0, r3
	mov	r3, #0
	bl	Func_801e7c0
	mov	r0, #0xf
	bl	SetTextColor
	ldr	r0, [sp, #0x4c]
	b	.L27d3c

	.pool_aligned

.L27d3c:
	mov	r3, #1
	strh	r3, [r0, #0xc]
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0x70
	bl	_PlaySound
	mov	r1, #4
	ldr	r0, [sp, #0x40]
	mov	r2, #0
	mov	r3, #7
	bl	Func_8026080
	mov	r1, #1
	mov	r6, r0
	mov	r0, r11
	bl	CloseUIBox
	cmp	r6, r9
	bne	.L27d68
	b	.L27b6e
.L27d68:
	b	.L278c2
.L27d6a:
	mov	r0, #0x70
	bl	_PlaySound
	mov	r6, #0
	ldr	r3, =iwram_3001f34
	ldr	r3, [r3]
	str	r6, [r3, #0x34]
	str	r6, [r3, #0x30]
	str	r6, [r3, #0x38]
.L27d7c:
	ldr	r2, [sp, #0x24]
	ldr	r1, [r2]
	ldr	r3, =0xfffffe00
	ldrh	r2, [r1, #6]
	and	r3, r2
	ldr	r2, .L27db0	@ 0x60
	orr	r3, r2
	strh	r3, [r1, #6]
	mov	r3, #0x74
	add	r3, r1
	add	r1, #0x96
	mov	r10, r1
	ldr	r1, [sp, #0x48]
	mov	r9, r3
	mov	r3, #0xd8
	ldrh	r5, [r1, r3]
	mov	r0, #0
	mov	r8, r0
	mov	r4, #0
	cmp	r5, #0
	beq	.L27df0
	mov	r3, r1
	add	r3, #0xd8
	mov	r7, r9
	mov	r6, r10
	b	.L27dbc

	.align	2, 0
.L27db0:
	.word	0x60
	.pool

.L27dbc:
	mov	r0, r5
	str	r3, [sp, #8]
	str	r4, [sp, #4]
	bl	_GetItemInfo
	mov	r1, r5
	ldr	r0, [sp, #0x40]
	bl	Func_8025180
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #4]
	cmp	r0, #0
	bne	.L27de2
	mov	r2, #1
	strh	r5, [r6]
	add	r8, r2
	strb	r4, [r7]
	add	r6, #2
	add	r7, #1
.L27de2:
	add	r4, #1
	cmp	r4, #0xf
	beq	.L27df0
	add	r3, #2
	ldrh	r5, [r3]
	cmp	r5, #0
	bne	.L27dbc
.L27df0:
	ldr	r0, [sp, #0x48]
	mov	r3, #0xd8
	ldrh	r5, [r0, r3]
	mov	r4, #0
	cmp	r5, #0
	beq	.L27e40
	mov	r1, r8
	mov	r2, r0
	mov	r7, r8
	lsl	r3, r1, #1
	mov	r0, r10
	add	r2, #0xd8
	add	r7, r9
	add	r6, r3, r0
.L27e0c:
	mov	r0, r5
	str	r2, [sp, #0xc]
	str	r4, [sp, #4]
	bl	_GetItemInfo
	mov	r1, r5
	ldr	r0, [sp, #0x40]
	bl	Func_8025180
	ldr	r2, [sp, #0xc]
	ldr	r4, [sp, #4]
	cmp	r0, #0
	beq	.L27e32
	mov	r1, #1
	strh	r5, [r6]
	add	r8, r1
	strb	r4, [r7]
	add	r6, #2
	add	r7, #1
.L27e32:
	add	r4, #1
	cmp	r4, #0xf
	beq	.L27e40
	add	r2, #2
	ldrh	r5, [r2]
	cmp	r5, #0
	bne	.L27e0c
.L27e40:
	mov	r2, r8
	ldr	r1, =0
	lsl	r3, r2, #1
	mov	r0, r10
	strh	r1, [r3, r0]
	ldr	r0, [sp, #0x40]
	mov	r1, r10
	bl	Func_8025200
	mov	r7, #1
	mov	r6, r0
	neg	r7, r7
	cmp	r6, r7
	bne	.L27e60
	bl	.L27454
.L27e60:
	b	.L27e68

	.pool_aligned

.L27e68:
	mov	r2, r9
	ldrb	r6, [r2, r6]
	ldr	r3, [sp, #0x48]
	str	r6, [sp, #0x38]
	lsl	r6, #1
	add	r6, #0xd8
	ldrh	r0, [r3, r6]
	bl	_GetItemInfo
	ldrh	r0, [r0, #0x28]
	bl	_GetMoveInfo
	mov	r8, r0
	ldrb	r0, [r0, #8]
	ldr	r1, [sp, #0x24]
	mov	r10, r0
	mov	r0, #0x80
	ldr	r5, [r1]
	bl	AllocUploadSpriteGFX
	mov	r3, #6
	str	r3, [sp]
	mov	r9, r0
	mov	r1, #0x11
	mov	r2, #0xf
	mov	r3, #3
	mov	r0, #9
	bl	CreateUIBox
	ldr	r2, [sp, #0x24]
	mov	r11, r0
	ldr	r0, [r2]
	ldr	r1, =0xfffffe00
	ldrh	r2, [r0, #6]
	mov	r3, r1
	and	r3, r2
	ldr	r2, .L27ee0	@ 0x30
	orr	r3, r2
	strh	r3, [r0, #6]
	ldr	r3, =0x40000400
	add	r5, #0xc
	str	r3, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #8]
	mov	r0, r11
	ldrh	r3, [r0, #0xc]
	ldr	r4, .L27ee4	@ 0x1ff
	ldrh	r2, [r5, #6]
	lsl	r3, #3
	add	r3, #8
	and	r3, r4
	and	r1, r2
	orr	r1, r3
	ldrh	r3, [r0, #0xe]
	lsl	r3, #3
	add	r3, #4
	strb	r3, [r5, #4]
	strh	r1, [r5, #6]
	ldr	r1, [sp, #0x48]
	b	.L27ef0

	.align	2, 0
.L27ee0:
	.word	0x30
.L27ee4:
	.word	0x1ff
	.pool

.L27ef0:
	ldrh	r0, [r1, r6]
	mov	r1, r9
	str	r4, [sp, #4]
	bl	Func_8021af0
	ldr	r3, =0x3ff
	ldrh	r2, [r5, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r5, #8]
	ldr	r3, [sp, #0x24]
	ldr	r2, [r3]
	mov	r3, #1
	add	r2, #0x25
	strb	r3, [r2]
	ldr	r1, [sp, #0x48]
	ldr	r4, [sp, #4]
	ldrh	r0, [r1, r6]
	ldr	r3, =0x182
	and	r0, r4
	mov	r1, r11
	add	r0, r3
	mov	r2, #0x18
	mov	r3, #0
	bl	Func_801e7c0
	ldr	r3, [sp, #0x4c]
	mov	r2, r10
	strh	r2, [r3, #0xc]
	mov	r0, #0x70
	b	.L27f40

	.pool_aligned

.L27f40:
	bl	_PlaySound
	mov	r0, r8
	bl	GetMoveDisplayEffect
	mov	r3, r0
	mov	r0, r8
	ldrb	r1, [r0]
	mov	r2, r10
	ldr	r0, [sp, #0x40]
	bl	Func_8026080
	ldr	r1, [sp, #0x24]
	ldr	r3, [r1]
	mov	r2, #0
	add	r3, #0x25
	mov	r6, r0
	strb	r2, [r3]
	mov	r0, r9
	bl	Func_8003f3c
	mov	r0, r11
	mov	r1, #1
	bl	CloseUIBox
	cmp	r6, r7
	bne	.L27f78
	b	.L27d7c
.L27f78:
	mov	r3, #2
	str	r3, [sp, #0x3c]
	b	.L278c2
.L27f7e:
	mov	r0, #3
	str	r0, [sp, #0x3c]
.L27f82:
	mov	r0, #0x6e
	bl	_PlaySound
	add	r1, sp, #0x40
	ldrh	r1, [r1]
	ldr	r2, [sp, #0x4c]
	strh	r1, [r2]
	ldr	r5, [sp, #0x48]
	add	r5, #0x40
	ldrh	r6, [r5]
	cmp	r6, #0
	beq	.L27fa6
	bl	Random
	ldrh	r3, [r5]
	mul	r3, r0
	lsr	r3, #20
	add	r6, r3
.L27fa6:
	ldr	r2, [sp, #0x4c]
	strh	r6, [r2, #4]
	ldr	r3, [sp, #0x2c]
	cmp	r3, #0
	beq	.L27fce
	ldr	r1, [sp, #0x54]
	ldr	r0, [sp, #0x20]
	add	r3, r0, r1
	sub	r2, r3, #2
	ldrh	r1, [r3]
	ldrh	r3, [r2]
	cmp	r1, r3
	bne	.L27fce
	lsl	r2, r6, #16
	asr	r3, r2, #16
	lsr	r2, #31
	add	r3, r2
	ldr	r2, [sp, #0x4c]
	asr	r3, #1
	strh	r3, [r2, #4]
.L27fce:
	ldr	r1, [sp, #0x4c]
	mov	r0, #4
	ldrsh	r3, [r1, r0]
	cmp	r3, #0
	bge	.L27fe0
	mov	r3, #0xfa
	lsl	r3, #3
	mov	r2, r1
	strh	r3, [r2, #4]
.L27fe0:
	add	r3, sp, #0x3c
	ldrh	r3, [r3]
	ldr	r0, [sp, #0x4c]
	strh	r3, [r0, #6]
	add	r0, sp, #0x38
	ldrh	r0, [r0]
	ldr	r1, [sp, #0x4c]
	strh	r0, [r1, #8]
	add	r1, sp, #0x44
	ldrh	r1, [r1]
	ldr	r2, [sp, #0x4c]
	strh	r1, [r2, #0xa]
	ldr	r2, [sp, #0x2c]
	add	r2, #1
	lsl	r3, r2, #2
	str	r3, [sp, #0x1c]
	ldr	r3, [sp, #0x50]
	lsl	r0, r2, #4
	lsl	r1, r2, #1
	str	r2, [sp, #0x2c]
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x20]
	cmp	r2, r3
	bge	.L28014
	bl	.L2739e
.L28014:
	ldr	r0, [sp, #0x2c]
	ldr	r1, [sp, #0x50]
	cmp	r0, r1
	bge	.L28020
	bl	.L272a8
.L28020:
	ldr	r2, [sp, #0x24]
	ldr	r0, [r2]
	ldr	r3, [r0, #0x50]
	cmp	r3, #0
	beq	.L2803c
	ldr	r2, =ewram_2002224
	ldr	r3, .L28060	@ 0x45
	strh	r3, [r2, #8]
	ldr	r3, .L28064	@ 0x44
	strh	r3, [r2, #0xa]
	ldr	r3, .L28068	@ 0x56
	strh	r3, [r2, #0xc]
	ldr	r3, .L2806c	@ 0x53
	strh	r3, [r2, #0xe]
.L2803c:
	ldr	r0, [r0, #0x44]
	cmp	r0, #0
	beq	.L28048
	mov	r1, #1
	bl	CloseUIBox
.L28048:
	ldr	r0, [sp, #0x30]
	bl	Func_8003f3c
	ldr	r0, [sp, #0x34]
	bl	Func_8003f3c
	ldr	r0, =Func_8026e80
	bl	StopTask
	ldr	r3, [sp, #0x24]
	ldr	r2, [r3]
	b	.L28078

	.align	2, 0
.L28060:
	.word	0x45
.L28064:
	.word	0x44
.L28068:
	.word	0x56
.L2806c:
	.word	0x53
	.pool

.L28078:
	ldr	r3, [r2, #0x50]
	cmp	r3, #0
	beq	.L28166
	ldr	r3, =iwram_3001e74
	ldr	r5, [r3]
	ldr	r3, [r2, #0x44]
	mov	r6, #0
	cmp	r3, #0
	bne	.L280b8
	mov	r7, r5
	add	r7, #0x52
	ldrb	r3, [r7]
	cmp	r3, #0
	bne	.L280bc
	mov	r3, #0x2a
	str	r3, [sp]
	mov	r2, #0x1e
	mov	r1, #0x10
	mov	r3, #4
	mov	r0, #0
	bl	CreateUIBox
	ldr	r1, [sp, #0x24]
	ldr	r3, [r1]
	str	r0, [r3, #0x44]
	bl	Func_8016738
	add	r2, sp, #0x64
	mov	r9, r2
	bl	Func_80270d8
	b	.L280c4
.L280b8:
	mov	r7, r5
	add	r7, #0x52
.L280bc:
	ldr	r3, [sp, #0x24]
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x44]
.L280c4:
	add	r5, #0x50
	ldrb	r2, [r5]
	mov	r3, #1
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, =ewram_2002024
	lsl	r2, #3
	add	r1, r2, r3
	ldrb	r3, [r7]
	cmp	r3, #0
	beq	.L280e4
	mov	r0, #1
	neg	r0, r0
	str	r0, [sp, #0x50]
	b	.L28156
.L280e4:
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L280fe
	add	r6, #1
	cmp	r6, #0x18
	ble	.L28134
	mov	r1, #1
	neg	r1, r1
	str	r1, [sp, #0x50]
	b	.L28156
.L280fe:
	ldrh	r2, [r1, #8]
	mov	r3, r2
	mov	r6, #0
	cmp	r3, #0x45
	bne	.L2811a
	ldrh	r3, [r1, #0xa]
	cmp	r3, #0x44
	bne	.L2811a
	ldrh	r3, [r1, #0xc]
	cmp	r3, #0x56
	bne	.L2811a
	ldrh	r3, [r1, #0xe]
	cmp	r3, #0x53
	beq	.L28156
.L2811a:
	mov	r3, r2
	cmp	r3, #0x56
	bne	.L28132
	ldrh	r3, [r1, #0xa]
	cmp	r3, #0x53
	bne	.L28132
	ldrh	r3, [r1, #0xc]
	cmp	r3, #0x53
	bne	.L28132
	ldrh	r3, [r1, #0xe]
	cmp	r3, #0x54
	beq	.L28134
.L28132:
	mov	r6, #1
.L28134:
	mov	r0, #1
	bl	WaitFrames
	ldrb	r2, [r5]
	mov	r3, #1
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, =ewram_2002024
	lsl	r2, #3
	add	r1, r2, r3
	ldrb	r3, [r7]
	cmp	r3, #0
	beq	.L280e4
	mov	r2, #1
	neg	r2, r2
	str	r2, [sp, #0x50]
.L28156:
	ldr	r0, [sp, #0x24]
	ldr	r3, [r0]
	ldr	r0, [r3, #0x44]
	cmp	r0, #0
	beq	.L28166
	mov	r1, #1
	bl	CloseUIBox
.L28166:
	mov	r0, #0
	bl	_Func_80b8fd4
	mov	r0, #0x39
	bl	gfree
	ldr	r0, [sp, #0x50]
	add	sp, #0x64
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8027114
