	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8026080  @ 0x08026080
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x144
	str	r2, [sp, #0x54]
	str	r3, [sp, #0x50]
	ldr	r5, =iwram_3001e74
	mov	r10, r0
	ldr	r0, [r5]
	ldr	r2, =0xffff
	str	r0, [sp, #0x4c]
	mov	r0, #0x80
	mov	r8, r1
	lsl	r0, #1
	mov	r1, #0
	str	r1, [sp, #0x40]
	str	r2, [sp, #0x38]
	bl	AllocUploadSpriteGFX
	ldr	r4, [sp, #0x54]
	mov	r3, #0
	str	r0, [sp, #0x34]
	mov	r9, r3
	cmp	r4, #0
	bne	.L260be
	mov	r6, #1
	str	r6, [sp, #0x54]
.L260be:
	mov	r7, r8
	cmp	r7, #2
	beq	.L260c8
	cmp	r7, #4
	bne	.L260d4
.L260c8:
	mov	r3, r5
	add	r3, #0xc0
	ldr	r2, [r3]
	mov	r3, #2
	neg	r3, r3
	b	.L260dc
.L260d4:
	mov	r3, r5
	add	r3, #0xc0
	ldr	r2, [r3]
	mov	r3, #0x10
.L260dc:
	str	r3, [r2, #0x28]
	mov	r0, sp
	add	r0, #0xd4
	mov	r3, sp
	str	r0, [sp, #0x24]
	mov	r2, #0
	mov	r7, #5
	add	r3, #0xea
.L260ec:
	sub	r7, #1
	strb	r2, [r3]
	sub	r3, #4
	cmp	r7, #0
	bge	.L260ec
	mov	r1, #1
	neg	r1, r1
	mov	r2, r8
	str	r1, [sp, #0x44]
	cmp	r2, #2
	bne	.L2613e
	ldr	r4, [sp, #0x4c]
	mov	r3, #0x58
	ldrsh	r3, [r4, r3]
	mov	r7, #0
	cmp	r3, #0xff
	beq	.L26194
	mov	r6, #0x9a
	lsl	r6, #1
	ldr	r0, [sp, #0x40]
	add	r6, sp
	mov	r2, r4
	lsl	r3, r0, #1
	str	r6, [sp, #0x1c]
	add	r2, #0x58
	add	r1, r3, r6
.L26120:
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldr	r3, [sp, #0x40]
	add	r7, #1
	add	r3, #1
	add	r1, #2
	str	r3, [sp, #0x40]
	add	r2, #2
	cmp	r7, #5
	bgt	.L261b8
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	cmp	r3, #0xff
	bne	.L26120
	b	.L261b8
.L2613e:
	mov	r5, r8
	cmp	r5, #4
	bne	.L26158
	mov	r6, #0x9a
	lsl	r6, #1
	add	r6, sp
	mov	r7, r10
	mov	r0, r6
	mov	r1, #1
	str	r6, [sp, #0x1c]
	strh	r7, [r0]
	str	r1, [sp, #0x40]
	b	.L261b8
.L26158:
	ldr	r1, [sp, #0x4c]
	mov	r3, #0x64
	add	r1, #2
	ldrsh	r3, [r1, r3]
	mov	r7, #0
	cmp	r3, #0xff
	beq	.L261b0
	mov	r3, #0x9a
	lsl	r3, #1
	add	r3, sp
	str	r3, [sp, #0x1c]
	ldr	r4, [sp, #0x40]
	ldr	r5, [sp, #0x1c]
	lsl	r3, r4, #1
	mov	r0, #0x64
	add	r2, r3, r5
.L26178:
	ldrh	r3, [r1, r0]
	strh	r3, [r2]
	ldr	r6, [sp, #0x40]
	add	r7, #1
	add	r6, #1
	add	r2, #2
	str	r6, [sp, #0x40]
	add	r0, #2
	cmp	r7, #5
	bgt	.L261b8
	ldrsh	r3, [r1, r0]
	cmp	r3, #0xff
	bne	.L26178
	b	.L261b8
.L26194:
	mov	r5, #0x9a
	lsl	r5, #1
	add	r5, sp
	str	r5, [sp, #0x1c]
	b	.L261b8
.L2619e:
	ldr	r6, [sp, #0x1c]
	mov	r7, r11
	ldrh	r6, [r6, r7]
	mov	r10, r6
	b	.L262b6

	.pool_aligned

.L261b0:
	mov	r0, #0x9a
	lsl	r0, #1
	add	r0, sp
	str	r0, [sp, #0x1c]
.L261b8:
	ldr	r1, [sp, #0x40]
	ldr	r3, =0xff
	ldr	r4, [sp, #0x1c]
	lsl	r2, r1, #1
	mov	r5, r8
	strh	r3, [r4, r2]
	str	r1, [sp, #0x3c]
	cmp	r5, #2
	beq	.L261cc
	b	.L262e0
.L261cc:
	ldr	r6, [sp, #0x54]
	cmp	r6, #0xff
	beq	.L262b6
	ldr	r7, [sp, #0x50]
	cmp	r7, #0
	beq	.L262b6
	mov	r5, #0
	mov	r7, #0
	cmp	r5, r1
	bge	.L262b6
	ldr	r4, =0xffff
	mov	r6, #0
	b	.L261f0

	.pool_aligned

.L261f0:
	ldr	r0, [sp, #0x1c]
	ldrh	r3, [r6, r0]
	mov	r11, r6
	cmp	r3, #0xfe
	beq	.L262ac
	mov	r0, r3
	str	r4, [sp, #8]
	bl	_GetUnit
	ldr	r2, [sp, #0x50]
	mov	r1, r0
	ldr	r4, [sp, #8]
	cmp	r2, #4
	beq	.L26240
	cmp	r2, #4
	bhi	.L26216
	cmp	r2, #3
	beq	.L26234
	b	.L262a6
.L26216:
	ldr	r3, [sp, #0x50]
	cmp	r3, #5
	beq	.L26222
	cmp	r3, #6
	beq	.L26264
	b	.L262a6
.L26222:
	mov	r0, #0x38
	ldrsh	r3, [r1, r0]
	cmp	r3, #0
	bne	.L262a6
	ldr	r1, [sp, #0x1c]
	ldrh	r1, [r6, r1]
	mov	r7, #1
	mov	r10, r1
	b	.L262a6
.L26234:
	ldr	r2, =0x131
	add	r3, r1, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	b	.L262a0
.L26240:
	mov	r0, #0x9c
	lsl	r0, #1
	add	r3, r1, r0
	ldr	r3, [r3]
	ldr	r2, =0xff0000ff
	and	r3, r2
	cmp	r3, #0
	bne	.L262a4
	mov	r2, #0x9e
	lsl	r2, #1
	add	r3, r1, r2
	ldrh	r3, [r3]
	and	r3, r4
	cmp	r3, #0
	bne	.L262a4
	add	r0, #9
	add	r3, r1, r0
	b	.L2629e
.L26264:
	mov	r2, #0x9c
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	ldr	r2, =0xff0000ff
	and	r3, r2
	cmp	r3, #0
	bne	.L262a4
	mov	r0, #0x9e
	lsl	r0, #1
	add	r3, r1, r0
	ldrh	r3, [r3]
	and	r3, r4
	cmp	r3, #0
	bne	.L262a4
	ldr	r2, =0x141
	add	r3, r1, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L262a4
	sub	r0, #0xb
	add	r3, r1, r0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L262a4
	sub	r2, #1
	add	r3, r1, r2
.L2629e:
	ldrb	r3, [r3]
.L262a0:
	cmp	r3, #0
	beq	.L262a6
.L262a4:
	mov	r7, #1
.L262a6:
	cmp	r7, #0
	beq	.L262ac
	b	.L2619e
.L262ac:
	ldr	r3, [sp, #0x40]
	add	r5, #1
	add	r6, #2
	cmp	r5, r3
	blt	.L261f0
.L262b6:
	ldr	r4, [sp, #0x40]
	mov	r5, #0
	cmp	r5, r4
	bge	.L262d8
	ldr	r6, [sp, #0x1c]
	ldrh	r3, [r6]
	cmp	r3, r10
	beq	.L262d8
	mov	r2, r6
.L262c8:
	ldr	r7, [sp, #0x40]
	add	r5, #1
	cmp	r5, r7
	bge	.L262d8
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, r10
	bne	.L262c8
.L262d8:
	ldr	r0, [sp, #0x40]
	cmp	r5, r0
	beq	.L262e0
	str	r5, [sp, #0x44]
.L262e0:
	ldr	r1, [sp, #0x44]
	cmp	r1, #0
	bge	.L26308
	ldr	r3, [sp, #0x40]
	sub	r3, #1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp, #0x44]
	b	.L26308
.L262f4:
	ldr	r2, [sp, #0x44]
	ldr	r4, [sp, #0x40]
	add	r3, r2, r4
	sub	r3, #1
	mov	r0, r3
	mov	r1, r4
	str	r3, [sp, #0x44]
	bl	__modsi3
	str	r0, [sp, #0x44]
.L26308:
	ldr	r5, [sp, #0x44]
	lsl	r5, #1
	str	r5, [sp, #0x18]
	ldr	r6, [sp, #0x1c]
	ldrh	r3, [r6, r5]
	cmp	r3, #0xfe
	beq	.L262f4
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L26336
	mov	r7, r8
	cmp	r7, #1
	bne	.L26336
	ldrh	r0, [r6, r5]
	bl	_GetUnit
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	beq	.L262f4
.L26336:
	mov	r2, r8
	cmp	r2, #2
	beq	.L26354
	add	r5, sp, #0xc8
	mov	r0, r10
	mov	r1, r5
	bl	_Func_80b84c0
	ldr	r4, [sp, #0x24]
	mov	r3, #8
	strb	r3, [r4, #2]
	ldr	r3, [r5]
	strb	r3, [r4]
	mov	r3, #0x80
	strb	r3, [r4, #1]
.L26354:
	mov	r3, #0x4a
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0x1e
	mov	r3, #4
	bl	CreateUIBox
	mov	r6, #0x98
	mov	r5, sp
	mov	r7, sp
	add	r5, #0xec
	add	r6, sp
	add	r7, #0x58
	str	r0, [sp, #0x48]
	str	r5, [sp, #0x20]
	mov	r11, r6
	str	r7, [sp, #0x14]
	b	.L2638e

	.pool_aligned

.L26388:
	ldr	r0, [sp, #0x44]
	lsl	r0, #1
	str	r0, [sp, #0x18]
.L2638e:
	mov	r1, #0
	str	r1, [sp, #0x30]
	ldr	r3, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	mov	r1, r11
	ldrh	r0, [r2, r3]
	bl	_Func_80b84c0
	ldr	r3, =0x40002000
	ldr	r4, [sp, #0x20]
	str	r3, [r4, #4]
	ldr	r5, [sp, #0x30]
	str	r5, [r4, #8]
	ldr	r5, =iwram_3001e40
	ldr	r1, [r5]
	mov	r3, #0x1f
	lsr	r1, #2
	and	r1, r3
	ldr	r3, =Data_346f8
	lsl	r1, #8
	add	r1, r3
	ldr	r0, [sp, #0x34]
	bl	UploadSprite2
	ldr	r3, .L263e4	@ 0x3ff
	ldr	r6, [sp, #0x20]
	and	r0, r3
	ldrh	r2, [r6, #8]
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	ldr	r0, [r5]
	mov	r7, r6
	strh	r3, [r7, #8]
	lsl	r0, #12
	bl	sin
	cmp	r0, #0
	bge	.L263fc
	ldr	r1, =0x7fff
	add	r0, r1
	b	.L263fc

	.align	2, 0
.L263e4:
	.word	0x3ff
	.pool

.L263fc:
	mov	r4, r11
	ldr	r3, [r4, #4]
	asr	r2, r0, #15
	add	r0, r3, r2
	str	r0, [r4, #4]
	ldr	r5, [sp, #0x24]
	mov	r1, #1
	ldrb	r2, [r5, #2]
	mov	r3, r1
	and	r3, r2
	cmp	r3, #0
	beq	.L2644e
	ldr	r4, [r4]
	ldrb	r3, [r5]
	add	r3, r4, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r1, r3, #1
	ldrb	r3, [r5, #1]
	add	r3, r0, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r0, r3, #1
	sub	r3, r4, r1
	cmp	r3, #0
	blt	.L26436
	cmp	r3, #7
	ble	.L2643c
	b	.L26440
.L26436:
	sub	r3, r1, r4
	cmp	r3, #7
	bgt	.L26440
.L2643c:
	mov	r6, #1
	str	r6, [sp, #0x30]
.L26440:
	mov	r7, r11
	str	r1, [r7]
	ldr	r2, [sp, #0x24]
	str	r0, [r7, #4]
	strb	r1, [r2]
	strb	r0, [r2, #1]
	b	.L26486
.L2644e:
	mov	r4, #0xc0
	lsl	r3, r2, #24
	lsl	r4, #18
	cmp	r3, r4
	bhi	.L26468
	mov	r5, r11
	ldr	r6, [sp, #0x24]
	ldr	r3, [r5]
	str	r0, [r5, #4]
	strb	r3, [r6]
	strb	r0, [r6, #1]
	strb	r1, [r6, #2]
	b	.L26486
.L26468:
	ldr	r7, [sp, #0x24]
	ldrb	r3, [r7]
	mov	r0, r11
	str	r3, [r0]
	ldrb	r3, [r7, #1]
	str	r3, [r0, #4]
	mov	r3, r2
	add	r3, #0xfc
	mov	r2, #0xc0
	strb	r3, [r7, #2]
	lsl	r2, #18
	lsl	r3, #24
	cmp	r3, r2
	bhi	.L26486
	strb	r1, [r7, #2]
.L26486:
	mov	r3, r11
	ldr	r2, [r3]
	ldr	r4, [sp, #0x20]
	ldr	r3, =0x1ff
	sub	r2, #8
	ldrh	r1, [r4, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	mov	r5, r4
	mov	r6, r11
	strh	r3, [r5, #6]
	ldr	r3, [r6, #4]
	sub	r3, #0x10
	strb	r3, [r5, #4]
	ldr	r0, [sp, #0x20]
	mov	r1, #0xf0
	bl	Func_8003dec
	ldr	r7, [sp, #0x54]
	cmp	r7, #0xff
	bne	.L264d8
	ldr	r2, =0xffff0000
	ldr	r3, [sp, #0x58]
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #1
	b	.L264cc

	.pool_aligned

.L264cc:
	orr	r3, r2
	ldr	r2, =0xffff
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #17
	b	.L264ea
.L264d8:
	ldr	r2, =0xffff0000
	ldr	r3, [sp, #0x58]
	and	r3, r2
	mov	r2, #0xb0
	orr	r3, r2
	ldr	r2, =0xffff
	and	r3, r2
	mov	r2, #0xb0
	lsl	r2, #16
.L264ea:
	orr	r3, r2
	str	r3, [sp, #0x58]
	ldr	r0, [sp, #0x14]
	ldr	r3, =0xffff0000
	ldr	r2, [r0, #4]
	and	r2, r3
	str	r2, [r0, #4]
	ldr	r0, [sp, #0x14]
	bl	Func_8003d28
	ldr	r1, [sp, #0x38]
	mov	r3, #1
	and	r3, r1
	str	r0, [sp, #0x2c]
	cmp	r3, #0
	bne	.L2650c
	b	.L26b96
.L2650c:
	mov	r2, #0
	str	r2, [sp, #0x40]
	ldr	r1, [sp, #0x24]
	mov	r0, #0xfd
	mov	r7, #5
.L26516:
	ldrb	r2, [r1, #2]
	mov	r3, r0
	and	r3, r2
	sub	r7, #1
	strb	r3, [r1, #2]
	add	r1, #4
	cmp	r7, #0
	bge	.L26516
	ldr	r3, [sp, #0x54]
	mov	r7, #0
	cmp	r7, r3
	bcs	.L265f4
	ldr	r6, [sp, #0x40]
	add	r4, sp, #0xac
	add	r0, sp, #0x144
	ldr	r1, [sp, #0x40]
	add	r3, r6, r0
	mov	r10, r4
	ldr	r5, [sp, #0x1c]
	ldr	r4, [sp, #0x24]
	mov	r6, r3
	mov	r2, r10
	lsl	r3, r1, #1
	mov	r14, r5
	mov	r0, r4
	add	r5, r3, r2
	mov	r3, #0xfe
	sub	r6, #0xa0
	mov	r8, r3
	add	r0, #0x18
.L26552:
	ldr	r1, [sp, #0x44]
	ldr	r2, [sp, #0x3c]
	add	r3, r1, r7
	cmp	r3, r2
	bge	.L26592
	lsl	r3, #1
	mov	r1, r14
	ldrh	r2, [r1, r3]
	mov	r3, r2
	cmp	r3, #0xfe
	beq	.L26592
	ldrb	r3, [r4, #2]
	strh	r2, [r5]
	mov	r2, #2
	orr	r2, r3
	mov	r3, #0
	orr	r2, r3
	mov	r3, #3
	ldrsb	r3, [r4, r3]
	strb	r2, [r4, #2]
	cmp	r3, r7
	beq	.L26586
	mov	r1, r8
	and	r2, r1
	strb	r2, [r4, #2]
	strb	r7, [r4, #3]
.L26586:
	strb	r7, [r6]
	ldr	r2, [sp, #0x40]
	add	r2, #1
	str	r2, [sp, #0x40]
	add	r6, #1
	add	r5, #2
.L26592:
	cmp	r7, #0
	beq	.L265de
	ldr	r1, [sp, #0x44]
	sub	r3, r1, r7
	cmp	r3, #0
	blt	.L265de
	lsl	r3, #1
	mov	r1, r14
	ldrh	r2, [r1, r3]
	mov	r3, r2
	cmp	r3, #0xfe
	beq	.L265de
	strh	r2, [r5]
	mov	r2, #6
	ldrb	r3, [r0, #2]
	sub	r2, r7
	mov	r12, r2
	mov	r2, #2
	orr	r2, r3
	mov	r3, #0
	orr	r2, r3
	mov	r3, #3
	ldrsb	r3, [r0, r3]
	neg	r1, r7
	strb	r2, [r0, #2]
	cmp	r3, r1
	beq	.L265d0
	mov	r3, r8
	and	r2, r3
	strb	r2, [r0, #2]
	strb	r1, [r0, #3]
.L265d0:
	mov	r1, r12
	strb	r1, [r6]
	ldr	r2, [sp, #0x40]
	add	r2, #1
	str	r2, [sp, #0x40]
	add	r6, #1
	add	r5, #2
.L265de:
	ldr	r3, [sp, #0x54]
	add	r7, #1
	add	r4, #4
	sub	r0, #4
	cmp	r7, r3
	bcc	.L26552
	b	.L265f8

	.pool_aligned

.L265f4:
	add	r4, sp, #0xac
	mov	r10, r4
.L265f8:
	ldr	r1, [sp, #0x24]
	mov	r4, #2
	mov	r0, #6
	mov	r7, #5
.L26600:
	ldrb	r2, [r1, #2]
	mov	r3, r4
	and	r3, r2
	cmp	r3, #0
	bne	.L2660c
	strb	r0, [r1, #3]
.L2660c:
	sub	r7, #1
	add	r1, #4
	cmp	r7, #0
	bge	.L26600
	ldr	r5, [sp, #0x40]
	ldr	r2, =0xff
	lsl	r3, r5, #1
	mov	r6, r10
	strh	r2, [r6, r3]
	mov	r0, r10
	mov	r1, #1
	bl	_Func_80c10e8
	ldr	r7, [sp, #0x1c]
	ldr	r0, [sp, #0x18]
	ldrh	r3, [r7, r0]
	cmp	r3, #7
	bls	.L26632
	b	.L26a84
.L26632:
	ldr	r1, [sp, #0x54]
	cmp	r1, #0xff
	bne	.L2663a
	b	.L26b8c
.L2663a:
	ldr	r2, [sp, #0x50]
	cmp	r2, #0
	bne	.L26642
	b	.L26b8c
.L26642:
	b	.L26648

	.pool_aligned
.L26648:
	mov	r0, r3
	bl	_GetUnit
	ldr	r3, [sp, #0x18]
	mov	r6, r0
	mov	r1, r11
	ldrh	r0, [r7, r3]
	bl	_Func_80b84c0
	mov	r4, r9
	cmp	r4, #0
	beq	.L26668
	mov	r0, r9
	mov	r1, #1
	bl	CloseUIBox
.L26668:
	ldr	r3, [sp, #0x50]
	sub	r3, #1
	cmp	r3, #6
	bls	.L26672
	b	.L26b8c
.L26672:
	ldr	r2, =.L2667c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2667c:
	.word	.L266c8
	.word	.L2671e
	.word	.L267b4
	.word	.L267f8
	.word	.L26780
	.word	.L2691c
	.word	.L26698
.L26698:
	mov	r5, r11
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L266a2
	add	r3, #7
.L266a2:
	asr	r3, #3
	sub	r0, r3, #4
	add	r3, #4
	cmp	r3, #0x1d
	ble	.L266ae
	mov	r0, #0x16
.L266ae:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #9
	mov	r3, #3
	bl	CreateUIBox
	mov	r9, r0
	mov	r0, #2
	bl	SetTextColor
	ldr	r0, =0x8ac
	b	.L26a72
.L266c8:
	mov	r7, r11
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L266d2
	add	r3, #7
.L266d2:
	asr	r3, #3
	sub	r0, r3, #7
	add	r3, #6
	cmp	r3, #0x1d
	ble	.L266de
	mov	r0, #0x11
.L266de:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #0xd
	mov	r3, #3
	bl	CreateUIBox
	mov	r9, r0
	mov	r1, r9
	ldr	r0, =.L373dc
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e8b0
	mov	r5, #0
	mov	r1, #0x38
	ldrsh	r0, [r6, r1]
	mov	r2, r9
	mov	r1, #4
	mov	r3, #0x10
	str	r5, [sp]
	bl	Func_801ea08
	mov	r2, #0x30
	ldr	r0, =.L373e0
	mov	r1, r9
	mov	r3, #0
	bl	Func_801e8b0
	mov	r2, #0x34
	ldrsh	r0, [r6, r2]
	b	.L26772
.L2671e:
	mov	r4, r11
	ldr	r3, [r4]
	cmp	r3, #0
	bge	.L26728
	add	r3, #7
.L26728:
	asr	r3, #3
	sub	r0, r3, #7
	add	r3, #6
	cmp	r3, #0x1d
	ble	.L26734
	mov	r0, #0x11
.L26734:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #0xd
	mov	r3, #3
	bl	CreateUIBox
	mov	r9, r0
	mov	r1, r9
	ldr	r0, =.L373e4
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e8b0
	mov	r5, #0x3a
	ldrsh	r0, [r6, r5]
	mov	r1, #4
	mov	r5, #0
	mov	r2, r9
	mov	r3, #0x10
	str	r5, [sp]
	bl	Func_801ea08
	ldr	r0, =.L373e0
	mov	r1, r9
	mov	r2, #0x30
	mov	r3, #0
	bl	Func_801e8b0
	mov	r7, #0x36
	ldrsh	r0, [r6, r7]
.L26772:
	mov	r1, #4
	mov	r2, r9
	mov	r3, #0x38
	str	r5, [sp]
	bl	Func_801ea08
	b	.L26b8c
.L26780:
	mov	r0, r11
	ldr	r3, [r0]
	cmp	r3, #0
	bge	.L2678a
	add	r3, #7
.L2678a:
	asr	r3, #3
	sub	r0, r3, #7
	add	r3, #5
	cmp	r3, #0x1d
	ble	.L26796
	mov	r0, #0x12
.L26796:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #8
	mov	r3, #3
	mov	r2, #0xc
	bl	CreateUIBox
	mov	r1, #0x38
	ldrsh	r3, [r6, r1]
	mov	r9, r0
	cmp	r3, #0
	beq	.L267b0
	b	.L26a6a
.L267b0:
	ldr	r0, =0x8ab
	b	.L267ec
.L267b4:
	mov	r2, r11
	ldr	r3, [r2]
	cmp	r3, #0
	bge	.L267be
	add	r3, #7
.L267be:
	asr	r3, #3
	sub	r0, r3, #7
	add	r3, #5
	cmp	r3, #0x1d
	ble	.L267ca
	mov	r0, #0x12
.L267ca:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #8
	mov	r3, #3
	mov	r2, #0xc
	bl	CreateUIBox
	ldr	r4, =0x131
	add	r3, r6, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r9, r0
	cmp	r3, #0
	bne	.L267ea
	b	.L26a6a
.L267ea:
	ldr	r0, =0x8a4
.L267ec:
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e7c0
	b	.L26b8c
.L267f8:
	mov	r0, #0x9c
	lsl	r0, #1
	add	r7, r6, r0
	ldrb	r3, [r7]
	mov	r5, #0
	cmp	r3, #0
	beq	.L26808
	mov	r5, #1
.L26808:
	ldr	r1, =0x13b
	add	r1, r6
	ldrb	r3, [r1]
	mov	r8, r1
	cmp	r3, #0
	beq	.L26816
	add	r5, #1
.L26816:
	mov	r2, #0x9e
	lsl	r2, #1
	add	r2, r6
	ldrb	r3, [r2]
	mov	r10, r2
	cmp	r3, #0
	beq	.L26826
	add	r5, #1
.L26826:
	ldr	r3, =0x13d
	add	r3, r6, r3
	str	r3, [sp, #0x28]
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26834
	add	r5, #1
.L26834:
	ldr	r4, =0x141
	add	r6, r4
	ldrb	r3, [r6]
	cmp	r3, #0
	beq	.L26840
	add	r5, #1
.L26840:
	cmp	r5, #0
	bne	.L26846
	mov	r5, #1
.L26846:
	mov	r3, #9
	sub	r1, r3, r5
	cmp	r1, #3
	bgt	.L26850
	mov	r1, #4
.L26850:
	mov	r0, r11
	ldr	r3, [r0]
	cmp	r3, #0
	bge	.L2685a
	add	r3, #7
.L2685a:
	asr	r3, #3
	sub	r0, r3, #7
	add	r3, #9
	cmp	r3, #0x1d
	ble	.L26866
	mov	r0, #0xe
.L26866:
	mov	r2, #6
	add	r3, r5, #2
	str	r2, [sp]
	mov	r2, #0x10
	bl	CreateUIBox
	ldrb	r3, [r7]
	mov	r9, r0
	mov	r5, #0
	cmp	r3, #0
	beq	.L2688a
	ldr	r0, =0x8a5
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e7c0
	mov	r5, #1
.L2688a:
	mov	r1, r8
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.L268a0
	lsl	r3, r5, #3
	ldr	r0, =0x8a6
	mov	r1, r9
	mov	r2, #0
	bl	Func_801e7c0
	add	r5, #1
.L268a0:
	mov	r2, r10
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L268b6
	lsl	r3, r5, #3
	ldr	r0, =0x8a7
	mov	r1, r9
	mov	r2, #0
	bl	Func_801e7c0
	add	r5, #1
.L268b6:
	ldr	r4, [sp, #0x28]
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.L268cc
	lsl	r3, r5, #3
	ldr	r0, =0x8a8
	mov	r1, r9
	mov	r2, #0
	bl	Func_801e7c0
	add	r5, #1
.L268cc:
	ldrb	r3, [r6]
	cmp	r3, #0
	bne	.L268d4
	b	.L26a64
.L268d4:
	lsl	r3, r5, #3
	ldr	r0, =0x8a9
	b	.L26a5a

	.pool_aligned

.L2691c:
	ldr	r7, =0x131
	add	r3, r6, r7
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r5, #0
	cmp	r3, #0
	beq	.L2692e
	mov	r5, #1
.L2692e:
	mov	r0, #0x9c
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2693c
	add	r5, #1
.L2693c:
	ldr	r1, =0x13b
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26948
	add	r5, #1
.L26948:
	mov	r2, #0x9e
	lsl	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26956
	add	r5, #1
.L26956:
	ldr	r4, =0x13d
	add	r3, r6, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26962
	add	r5, #1
.L26962:
	ldr	r7, =0x141
	add	r3, r6, r7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2696e
	add	r5, #1
.L2696e:
	mov	r0, #0xa0
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2697c
	add	r5, #1
.L2697c:
	cmp	r5, #0
	bne	.L26982
	mov	r5, #1
.L26982:
	mov	r3, #9
	sub	r1, r3, r5
	cmp	r1, #3
	bgt	.L2698c
	mov	r1, #4
.L2698c:
	mov	r2, r11
	ldr	r3, [r2]
	cmp	r3, #0
	bge	.L26996
	add	r3, #7
.L26996:
	asr	r3, #3
	sub	r0, r3, #7
	add	r3, #9
	cmp	r3, #0x1d
	ble	.L269a2
	mov	r0, #0xe
.L269a2:
	mov	r2, #6
	add	r3, r5, #2
	str	r2, [sp]
	mov	r2, #0x10
	bl	CreateUIBox
	ldr	r4, =0x131
	add	r3, r6, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r9, r0
	mov	r5, #0
	cmp	r3, #0
	beq	.L269ce
	ldr	r0, =0x8a4
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e7c0
	mov	r5, #1
.L269ce:
	mov	r7, #0x9c
	lsl	r7, #1
	add	r3, r6, r7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L269e8
	lsl	r3, r5, #3
	ldr	r0, =0x8a5
	mov	r1, r9
	mov	r2, #0
	bl	Func_801e7c0
	add	r5, #1
.L269e8:
	ldr	r0, =0x13b
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26a00
	lsl	r3, r5, #3
	ldr	r0, =0x8a6
	mov	r1, r9
	mov	r2, #0
	bl	Func_801e7c0
	add	r5, #1
.L26a00:
	mov	r1, #0x9e
	lsl	r1, #1
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26a1a
	lsl	r3, r5, #3
	ldr	r0, =0x8a7
	mov	r1, r9
	mov	r2, #0
	bl	Func_801e7c0
	add	r5, #1
.L26a1a:
	ldr	r2, =0x13d
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26a32
	lsl	r3, r5, #3
	ldr	r0, =0x8a8
	mov	r1, r9
	mov	r2, #0
	bl	Func_801e7c0
	add	r5, #1
.L26a32:
	ldr	r4, =0x141
	add	r3, r6, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26a4a
	lsl	r3, r5, #3
	ldr	r0, =0x8a9
	mov	r1, r9
	mov	r2, #0
	bl	Func_801e7c0
	add	r5, #1
.L26a4a:
	mov	r7, #0xa0
	lsl	r7, #1
	add	r3, r6, r7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26a64
	lsl	r3, r5, #3
	ldr	r0, =0x8aa
.L26a5a:
	mov	r1, r9
	mov	r2, #0
	bl	Func_801e7c0
	add	r5, #1
.L26a64:
	cmp	r5, #0
	beq	.L26a6a
	b	.L26b8c
.L26a6a:
	mov	r0, #2
	bl	SetTextColor
	ldr	r0, =0x8a3
.L26a72:
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e7c0
	mov	r0, #0xf
	bl	SetTextColor
	b	.L26b8c
.L26a84:
	ldr	r0, [sp, #0x54]
	cmp	r0, #0xff
	bne	.L26a8c
	b	.L26b8c
.L26a8c:
	ldr	r1, [sp, #0x1c]
	ldr	r2, [sp, #0x18]
	ldrh	r0, [r1, r2]
	bl	_GetUnit
	ldr	r3, [sp, #0x1c]
	ldr	r4, [sp, #0x18]
	add	r5, sp, #0x6c
	mov	r8, r0
	mov	r1, r5
	ldrh	r0, [r3, r4]
	bl	_Func_80b84c0
	ldr	r3, =iwram_3001e40
	ldr	r0, [r3]
	lsl	r0, #12
	bl	sin
	cmp	r0, #0
	bge	.L26ab8
	ldr	r6, =0x7fff
	add	r0, r6
.L26ab8:
	ldr	r2, [r5, #4]
	asr	r3, r0, #15
	add	r2, r3
	mov	r3, #0x94
	str	r2, [r5, #4]
	lsl	r3, #1
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0x7d
	beq	.L26ad6
	cmp	r3, #0x7a
	beq	.L26ad6
	mov	r7, #0
	add	r6, sp, #0x78
	b	.L26af2
.L26ad6:
	mov	r3, #0x94
	lsl	r3, #1
	add	r3, r8
	ldrb	r3, [r3]
	ldr	r0, =0x80e
	cmp	r3, #0x7d
	bne	.L26ae6
	add	r0, #1
.L26ae6:
	add	r6, sp, #0x78
	mov	r1, r6
	mov	r2, #0xe
	bl	Func_801965c
	b	.L26b4a
.L26af2:
	cmp	r7, #0xd
	bgt	.L26b44
	mov	r0, r8
	ldrb	r3, [r0, r7]
	lsl	r2, r7, #1
	strh	r3, [r6, r2]
	add	r7, #1
	cmp	r3, #0
	bne	.L26af2
	b	.L26b46

	.pool_aligned

.L26b44:
	lsl	r2, r7, #1
.L26b46:
	ldr	r3, =0
	strh	r3, [r6, r2]
.L26b4a:
	mov	r0, r6
	bl	Func_8017a64
	lsr	r2, r0, #31
	ldr	r3, [r5]
	add	r2, r0, r2
	asr	r2, #1
	sub	r3, r2
	sub	r3, #8
	str	r3, [r5]
	add	r3, r0
	cmp	r3, #0xe0
	ble	.L26b6a
	mov	r3, #0xe0
	sub	r3, r0
	str	r3, [r5]
.L26b6a:
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L26b7c
	mov	r3, #0
	str	r3, [r5]
	b	.L26b7c

	.pool_aligned

.L26b7c:
	bl	Func_801671c
	ldr	r2, [r5]
	mov	r0, r6
	ldr	r1, [sp, #0x48]
	mov	r3, #4
	bl	Func_8017aa4
.L26b8c:
	ldr	r1, [sp, #0x38]
	mov	r3, #2
	neg	r3, r3
	and	r1, r3
	str	r1, [sp, #0x38]
.L26b96:
	ldr	r2, [sp, #0x30]
	cmp	r2, #0
	bne	.L26b9e
	b	.L26cdc
.L26b9e:
	ldr	r3, [sp, #0x40]
	mov	r7, #1
	cmp	r7, r3
	blt	.L26ba8
	b	.L26cdc
.L26ba8:
	mov	r5, sp
	add	r5, #0xa4
	mov	r6, #0x60
	mov	r4, #0xac
	str	r5, [sp, #0x10]
	add	r6, sp
	ldr	r5, [sp, #0x20]
	mov	r0, #2
	add	r4, sp
	mov	r8, r6
	str	r0, [sp, #0xc]
	mov	r10, r4
	add	r5, #0xc
	mov	r4, r8
.L26bc4:
	ldr	r1, [sp, #0x10]
	ldrb	r3, [r1, r7]
	ldr	r2, [sp, #0x24]
	lsl	r3, #2
	add	r3, r2, r3
	str	r3, [sp, #4]
	ldr	r3, [sp, #0xc]
	mov	r6, r10
	mov	r1, r4
	ldrh	r0, [r3, r6]
	str	r4, [sp, #8]
	bl	_Func_80b84c0
	ldr	r3, =iwram_3001e40
	ldr	r0, [r3]
	lsl	r0, #12
	bl	sin
	ldr	r4, [sp, #8]
	cmp	r0, #0
	bge	.L26bf2
	ldr	r1, =0x7fff
	add	r0, r1
.L26bf2:
	ldr	r3, [r4, #4]
	asr	r2, r0, #15
	add	r3, r2
	str	r3, [r4, #4]
	ldr	r2, [sp, #0x20]
	mov	r14, r5
	mov	r12, r2
	mov	r3, r14
	mov	r6, r12
	ldmia	r6!, {r0, r1, r2}
	stmia	r3!, {r0, r1, r2}
	ldr	r3, [sp, #4]
	mov	r1, #1
	ldrb	r2, [r3, #2]
	mov	r3, r1
	and	r3, r2
	cmp	r3, #0
	beq	.L26c3a
	ldr	r6, [sp, #4]
	ldr	r1, [r4]
	ldrb	r3, [r6]
	add	r1, r3
	lsr	r3, r1, #31
	ldrb	r2, [r6, #1]
	add	r1, r3
	ldr	r3, [r4, #4]
	add	r3, r2
	lsr	r2, r3, #31
	add	r3, r2
	asr	r1, #1
	asr	r3, #1
	str	r1, [r4]
	strb	r1, [r6]
	str	r3, [r4, #4]
	strb	r3, [r6, #1]
	b	.L26c50
.L26c3a:
	ldrh	r3, [r5, #6]
	ldrb	r2, [r5, #4]
	ldr	r0, [sp, #4]
	lsl	r3, #23
	lsr	r3, #23
	add	r2, #8
	strb	r1, [r0, #2]
	str	r3, [r4]
	strb	r3, [r0]
	str	r2, [r4, #4]
	strb	r2, [r0, #1]
.L26c50:
	ldrb	r2, [r5, #5]
	mov	r1, #0xd
	neg	r1, r1
	mov	r3, r1
	mov	r0, r2
	mov	r2, r8
	and	r0, r3
	ldr	r1, [r2]
	mov	r3, #4
	orr	r0, r3
	ldr	r3, .L26c8c	@ 0x1ff
	sub	r1, #8
	and	r1, r3
	ldr	r2, .L26c90	@ 0xfffffe00
	ldrh	r3, [r5, #6]
	and	r3, r2
	orr	r3, r1
	mov	r6, r8
	strh	r3, [r5, #6]
	ldr	r3, [r6, #4]
	sub	r3, #0xc
	strb	r0, [r5, #5]
	strb	r3, [r5, #4]
	ldr	r1, [sp, #0x54]
	cmp	r1, #0xff
	bne	.L26c9c
	mov	r2, #4
	neg	r2, r2
	and	r0, r2
	b	.L26ca6

	.align	2, 0
.L26c8c:
	.word	0x1ff
.L26c90:
	.word	0xfffffe00
	.pool

.L26c9c:
	mov	r3, #4
	neg	r3, r3
	and	r0, r3
	mov	r3, #1
	orr	r0, r3
.L26ca6:
	strb	r0, [r5, #5]
	ldr	r2, [sp, #0x2c]
	mov	r3, #0x1f
	mov	r6, #0x3f
	and	r2, r3
	neg	r6, r6
	ldrb	r3, [r5, #7]
	mov	r1, r6
	lsl	r2, #1
	and	r3, r1
	orr	r3, r2
	mov	r0, r5
	strb	r3, [r5, #7]
	mov	r1, #0xf0
	str	r4, [sp, #8]
	bl	Func_8003dec
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #0x40]
	add	r0, #2
	add	r7, #1
	add	r5, #0xc
	str	r0, [sp, #0xc]
	ldr	r4, [sp, #8]
	cmp	r7, r1
	bge	.L26cdc
	b	.L26bc4
.L26cdc:
	ldr	r3, =gKeyPress
	ldr	r6, [r3]
	ldr	r3, =gKeyRepeat
	ldr	r5, [r3]
	ldr	r3, =iwram_3001f34
	ldr	r2, [r3]
	mov	r3, r2
	add	r3, #0xd8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L26d0c
	add	r2, #0xdc
	ldr	r3, [r2]
	mov	r5, #0
	mov	r6, #0
	cmp	r3, #0
	bne	.L26d08
	mov	r3, #0x3c
	str	r3, [r2]
	mov	r5, #1
	mov	r6, #1
	b	.L26d0c
.L26d08:
	sub	r3, #1
	str	r3, [r2]
.L26d0c:
	mov	r3, #1
	and	r3, r6
	cmp	r3, #0
	beq	.L26d8e
	ldr	r2, [sp, #0x1c]
	ldr	r3, [sp, #0x18]
	mov	r5, #0
	ldrh	r4, [r2, r3]
	ldr	r7, [sp, #0x4c]
	str	r5, [sp, #0x38]
	mov	r3, #0x58
	ldrsh	r3, [r7, r3]
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	cmp	r3, #0xff
	beq	.L26d54
	cmp	r3, r4
	bne	.L26d38
	mov	r0, #0x80
	lsl	r0, #1
	b	.L26d54
.L26d38:
	add	r1, #1
	cmp	r1, #5
	bgt	.L26d54
	lsl	r3, r1, #1
	ldr	r5, [sp, #0x4c]
	add	r3, #0x58
	ldrsh	r3, [r5, r3]
	cmp	r3, #0xff
	beq	.L26d54
	cmp	r3, r4
	bne	.L26d38
	mov	r0, #0x80
	lsl	r0, #1
	orr	r0, r1
.L26d54:
	cmp	r0, #0
	bge	.L26d8a
	ldr	r2, [sp, #0x4c]
	add	r2, #0x66
	mov	r7, #0
	ldrsh	r3, [r2, r7]
	mov	r5, #0xc0
	mov	r1, #0
	lsl	r5, #1
	cmp	r3, #0xff
	beq	.L26d8a
	cmp	r3, r4
	bne	.L26d72
	mov	r0, r5
	b	.L26d8a
.L26d72:
	add	r1, #1
	add	r2, #2
	cmp	r1, #5
	bgt	.L26d8a
	mov	r7, #0
	ldrsh	r3, [r2, r7]
	cmp	r3, #0xff
	beq	.L26d8a
	cmp	r3, r4
	bne	.L26d72
	mov	r0, r5
	orr	r0, r1
.L26d8a:
	str	r0, [sp, #0x44]
	b	.L26df6
.L26d8e:
	ldr	r0, [sp, #0x54]
	cmp	r0, #0xff
	beq	.L26df6
	mov	r3, #0x90
	and	r3, r5
	cmp	r3, #0
	beq	.L26dc4
	mov	r0, #0x6f
	bl	_PlaySound
.L26da2:
	ldr	r1, [sp, #0x44]
	add	r1, #1
	str	r1, [sp, #0x44]
	mov	r0, r1
	ldr	r1, [sp, #0x3c]
	bl	__modsi3
	str	r0, [sp, #0x44]
	ldr	r4, [sp, #0x1c]
	lsl	r2, r0, #1
	ldrh	r3, [r4, r2]
	cmp	r3, #0xfe
	beq	.L26da2
	ldr	r7, [sp, #0x38]
	mov	r3, #1
	orr	r7, r3
	str	r7, [sp, #0x38]
.L26dc4:
	mov	r3, #0x60
	and	r3, r5
	cmp	r3, #0
	beq	.L26df6
	mov	r0, #0x6f
	bl	_PlaySound
.L26dd2:
	ldr	r0, [sp, #0x44]
	ldr	r1, [sp, #0x3c]
	add	r3, r0, r1
	sub	r3, #1
	mov	r0, r3
	str	r3, [sp, #0x44]
	bl	__modsi3
	str	r0, [sp, #0x44]
	ldr	r2, [sp, #0x1c]
	lsl	r3, r0, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #0xfe
	beq	.L26dd2
	ldr	r4, [sp, #0x38]
	mov	r3, #1
	orr	r4, r3
	str	r4, [sp, #0x38]
.L26df6:
	ldr	r3, =iwram_3001f34
	ldr	r3, [r3]
	ldr	r3, [r3, #0x4c]
	cmp	r3, #0
	beq	.L26e08
	mov	r3, #2
	and	r3, r6
	cmp	r3, #0
	beq	.L26e16
.L26e08:
	mov	r0, #0x71
	bl	_PlaySound
	mov	r5, #1
	neg	r5, r5
	str	r5, [sp, #0x44]
	b	.L26e26
.L26e16:
	mov	r0, #1
	bl	WaitFrames
	ldr	r6, [sp, #0x38]
	cmp	r6, #0
	beq	.L26e26
	bl	.L26388
.L26e26:
	mov	r0, #1
	bl	WaitFrames
	mov	r7, r9
	ldr	r0, [sp, #0x34]
	bl	Func_8003f3c
	cmp	r7, #0
	beq	.L26e40
	mov	r0, r9
	mov	r1, #1
	bl	CloseUIBox
.L26e40:
	ldr	r0, [sp, #0x48]
	mov	r1, #1
	bl	CloseUIBox
	mov	r1, #0
	ldr	r0, [sp, #0x1c]
	bl	_Func_80c10e8
	ldr	r3, =iwram_3001f34
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x28]
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [sp, #0x44]
	add	sp, #0x144
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8026080
