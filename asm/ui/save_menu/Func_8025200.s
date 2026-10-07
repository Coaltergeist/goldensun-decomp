	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8025200  @ 0x08025200
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x130
	str	r0, [sp, #0x50]
	str	r2, [sp, #0x48]
	str	r1, [sp, #0x4c]
	ldr	r5, =iwram_3001e8c
	mov	r2, #1
	ldr	r1, [r5]
	neg	r2, r2
	mov	r0, #0x80
	str	r1, [sp, #0x44]
	str	r2, [sp, #0x40]
	str	r2, [sp, #0x3c]
	bl	AllocUploadSpriteGFX
	mov	r3, #0x2a
	str	r0, [sp, #0x38]
	str	r3, [sp]
	mov	r1, #5
	mov	r2, #0x1e
	mov	r3, #4
	mov	r0, #0
	bl	CreateUIBox
	mov	r3, #0
	str	r0, [sp, #0x34]
	str	r3, [sp, #0x30]
	add	r5, #0xa8
	ldr	r3, [r5]
	ldr	r1, [r3, #0x34]
	ldr	r2, [r3, #0x30]
	ldr	r3, [r3, #0x38]
	mov	r9, r1
	mov	r8, r2
	str	r3, [sp, #0x2c]
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #9
	mov	r3, #0xb
	mov	r0, #0xf
	mov	r2, #0xf
	bl	CreateUIBox
	mov	r3, sp
	add	r3, #0x54
	ldr	r1, =0xfffffe00
	mov	r6, #0x80
	str	r3, [sp, #0x10]
	mov	r11, r0
	mov	r7, #0
	mov	r12, r1
	mov	r4, r3
	lsl	r6, #23
	mov	r5, #0
.L25278:
	lsl	r0, r7, #1
	str	r6, [r4, #4]
	str	r5, [r4, #8]
	mov	r3, r11
	ldrh	r2, [r3, #0xc]
	ldr	r3, .L252b8	@ 0x1ff
	lsl	r2, #3
	ldrh	r1, [r4, #6]
	add	r2, #8
	and	r2, r3
	mov	r3, r12
	and	r3, r1
	orr	r3, r2
	mov	r1, r11
	strh	r3, [r4, #6]
	ldrh	r3, [r1, #0xe]
	add	r0, r3
	lsl	r0, #3
	add	r0, #4
	add	r7, #1
	strb	r0, [r4, #4]
	add	r4, #0xc
	cmp	r7, #4
	ble	.L25278
	mov	r2, sp
	add	r2, #0x90
	ldr	r3, =0xfffffc00
	str	r2, [sp, #0x1c]
	ldr	r6, [sp, #0x10]
	str	r2, [sp, #8]
	mov	r5, #8
	b	.L252c8

	.align	2, 0
.L252b8:
	.word	0x1ff
	.pool

.L252c8:
	mov	r10, r3
	mov	r7, #4
.L252cc:
	mov	r0, #0x80
	bl	AllocUploadSpriteGFX
	ldr	r2, [sp, #8]
	stmia	r2!, {r0}
	mov	r1, r2
	str	r1, [sp, #8]
	mov	r1, #1
	neg	r1, r1
	bl	UploadSprite2
	ldr	r3, =0x3ff
	and	r0, r3
	ldrh	r3, [r5, r6]
	mov	r1, r10
	and	r3, r1
	orr	r3, r0
	sub	r7, #1
	strh	r3, [r5, r6]
	add	r5, #0xc
	cmp	r7, #0
	bge	.L252cc
	ldr	r5, =0xf018
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #2
	bl	Func_80251d4
	mov	r0, r5
	ldr	r1, =0x201
	bl	Func_80251d4
	add	r5, #1
	mov	r1, #0x84
	lsl	r1, #2
	mov	r0, r5
	b	.L25324

	.pool_aligned

.L25324:
	bl	Func_80251d4
	ldr	r1, =0x211
	mov	r0, r5
	bl	Func_80251d4
	mov	r2, #0x92
	lsl	r2, #1
	mov	r3, r8
	mov	r1, sp
	add	r2, sp
	lsl	r3, #1
	add	r1, #0xa4
	str	r2, [sp, #0x18]
	str	r3, [sp, #0x14]
	str	r1, [sp, #0x20]
.L25344:
	ldr	r2, [sp, #0x40]
	cmp	r9, r2
	bne	.L25352
	ldr	r3, [sp, #0x3c]
	cmp	r8, r3
	bne	.L25352
	b	.L2552c
.L25352:
	ldr	r1, [sp, #0x44]
	ldr	r3, =0xea6
	add	r2, r1, r3
	mov	r3, #1
	strb	r3, [r2]
	ldr	r2, [sp, #0x3c]
	mov	r1, r11
	ldrh	r0, [r1, #0xc]
	ldrh	r1, [r1, #0xe]
	lsl	r3, r2, #1
	add	r1, r3
	mov	r3, r11
	ldrh	r2, [r3, #8]
	mov	r3, #0xf
	add	r1, #1
	str	r3, [sp]
	add	r0, #1
	sub	r2, #2
	mov	r3, #1
	bl	Func_8022768
	bl	Func_8016738
	ldr	r1, [sp, #0x48]
	cmp	r1, #0
	beq	.L253d0
	mov	r3, r9
	add	r3, r8
	ldr	r2, [sp, #0x4c]
	lsl	r3, #1
	add	r5, r3, r2
	ldrh	r1, [r5]
	ldr	r0, [sp, #0x50]
	bl	Func_8025180
	cmp	r0, #2
	bne	.L253a4
	ldr	r5, [sp, #0x20]
	ldr	r0, =0x8ee
	mov	r1, r5
	b	.L253b2
.L253a4:
	ldrh	r3, [r5]
	ldr	r0, .L253bc	@ 0x1ff
	ldr	r5, [sp, #0x20]
	and	r0, r3
	ldr	r3, =0x75
	mov	r1, r5
	add	r0, r3
.L253b2:
	mov	r2, #0x34
	bl	Func_801965c
	b	.L253dc

	.align	2, 0
.L253bc:
	.word	0x1ff
	.pool

.L253d0:
	ldr	r5, [sp, #0x20]
	ldr	r0, =0x8e5
	mov	r1, r5
	mov	r2, #0x34
	bl	Func_801965c
.L253dc:
	ldr	r1, [sp, #0x34]
	mov	r3, #4
	mov	r0, r5
	mov	r2, #0
	bl	Func_8017aa4
	ldr	r1, [sp, #0x40]
	mov	r3, r8
	str	r3, [sp, #0x3c]
	cmp	r9, r1
	beq	.L254b2
	mov	r0, r11
	bl	Func_8016498
	mov	r2, r9
	ldr	r1, [sp, #0x4c]
	lsl	r3, r2, #1
	add	r3, r1
	ldrh	r5, [r3]
	mov	r7, #0
	cmp	r5, #0
	beq	.L254ac
	ldr	r1, [sp, #0x1c]
	ldr	r2, [sp, #0x10]
	mov	r6, r3
	mov	r3, #8
	str	r3, [sp, #0xc]
	str	r1, [sp, #4]
	mov	r10, r2
.L25416:
	mov	r0, r5
	bl	_GetItemInfo
	mov	r0, #0xf
	bl	SetTextColor
	mov	r1, r5
	ldr	r0, [sp, #0x50]
	bl	Func_8025180
	cmp	r0, #0
	beq	.L2543c
	mov	r0, #4
	bl	SetTextColor
	b	.L2544c

	.pool_aligned

.L2543c:
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r5
	cmp	r3, #0
	beq	.L2544c
	mov	r0, #2
	bl	SetTextColor
.L2544c:
	ldr	r0, =0x1ff
	ldr	r3, =0x182
	and	r0, r5
	add	r0, r3
	mov	r1, r11
	lsl	r3, r7, #4
	mov	r2, #0x10
	bl	Func_801e7c0
	mov	r0, #0xf
	bl	SetTextColor
	ldr	r3, [sp, #4]
	ldmia	r3!, {r1}
	mov	r0, r5
	mov	r2, r3
	str	r2, [sp, #4]
	bl	Func_8021af0
	ldr	r3, .L2549c	@ 0x3ff
	ldr	r1, [sp, #0xc]
	mov	r2, r10
	and	r0, r3
	ldrh	r3, [r1, r2]
	ldr	r2, .L254a0	@ 0xfffffc00
	and	r3, r2
	orr	r3, r0
	mov	r2, r10
	strh	r3, [r1, r2]
	add	r7, #1
	add	r1, #0xc
	str	r1, [sp, #0xc]
	cmp	r7, #4
	bgt	.L254ac
	add	r6, #2
	ldrh	r5, [r6]
	cmp	r5, #0
	bne	.L25416
	b	.L254ac

	.align	2, 0
.L2549c:
	.word	0x3ff
.L254a0:
	.word	0xfffffc00
	.pool

.L254ac:
	mov	r3, r9
	str	r7, [sp, #0x30]
	str	r3, [sp, #0x40]
.L254b2:
	ldr	r1, [sp, #0x48]
	cmp	r1, #5
	ble	.L254fc
	mov	r7, #0
	add	r1, #4
	mov	r10, r1
	b	.L254ee
.L254c0:
	ldr	r2, =0xf301
	mov	r0, r9
	mov	r1, #5
	add	r6, r7, r2
	bl	__divsi3
	cmp	r7, r0
	bne	.L254d4
	ldr	r3, =0xf30b
	add	r6, r7, r3
.L254d4:
	mov	r1, r11
	ldrh	r2, [r1, #8]
	sub	r2, r5
	add	r2, r7
	mov	r3, #0
	str	r3, [sp]
	sub	r2, #2
	mov	r0, r11
	mov	r1, r6
	sub	r3, #1
	bl	Func_8019000
	add	r7, #1
.L254ee:
	mov	r0, r10
	mov	r1, #5
	bl	__divsi3
	mov	r5, r0
	cmp	r7, r5
	blt	.L254c0
.L254fc:
	mov	r1, r11
	ldrh	r0, [r1, #0xc]
	ldr	r2, [sp, #0x14]
	ldrh	r1, [r1, #0xe]
	mov	r3, r11
	add	r1, r2
	ldrh	r2, [r3, #8]
	mov	r3, #0xe
	add	r1, #1
	sub	r2, #2
	str	r3, [sp]
	add	r0, #1
	mov	r3, #1
	bl	Func_8022768
	ldr	r3, =0xea3
	ldr	r1, [sp, #0x44]
	add	r2, r1, r3
	mov	r3, #1
	strb	r3, [r2]
	ldr	r2, =0xea6
	add	r3, r1, r2
	mov	r1, #0
	strb	r1, [r3]
.L2552c:
	ldr	r2, [sp, #0x48]
	cmp	r2, #5
	ble	.L255e4
	mov	r7, #0
	add	r2, #4
	mov	r10, r2
	b	.L25592

	.pool_aligned

.L2554c:
	ldr	r3, =0xf301
	ldr	r1, =iwram_3001e40
	add	r6, r7, r3
	ldr	r3, [r1]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0xb
	bhi	.L2556c
	mov	r0, r9
	mov	r1, #5
	bl	__divsi3
	cmp	r7, r0
	bne	.L2556c
	ldr	r2, =0xf30b
	add	r6, r7, r2
.L2556c:
	mov	r3, r11
	mov	r1, #5
	mov	r0, r10
	ldrh	r5, [r3, #8]
	bl	__divsi3
	sub	r5, r0
	add	r5, r7
	mov	r1, #0
	sub	r5, #2
	mov	r3, #1
	str	r1, [sp]
	mov	r0, r11
	mov	r1, r6
	mov	r2, r5
	neg	r3, r3
	bl	Func_8019000
	add	r7, #1
.L25592:
	mov	r0, r10
	mov	r1, #5
	bl	__divsi3
	cmp	r7, r0
	blt	.L2554c
	mov	r3, r11
	ldrh	r2, [r3, #8]
	mov	r5, #1
	neg	r5, r5
	sub	r2, r0
	mov	r1, #0
	str	r1, [sp]
	mov	r0, r11
	mov	r3, r5
	sub	r2, #3
	ldr	r1, =0xf334
	bl	Func_8019000
	mov	r3, r11
	ldrh	r2, [r3, #8]
	mov	r1, #0
	str	r1, [sp]
	sub	r2, #2
	mov	r0, r11
	ldr	r1, =0xf335
	mov	r3, r5
	bl	Func_8019000
	ldr	r2, [sp, #0x44]
	ldr	r3, =0xea3
	add	r1, r2, r3
	mov	r2, r11
	ldrh	r3, [r2, #0xe]
	sub	r3, #1
	lsr	r3, #2
	mov	r2, #2
	lsl	r2, r3
	ldrb	r3, [r1]
	orr	r2, r3
	strb	r2, [r1]
.L255e4:
	ldr	r3, [sp, #0x30]
	cmp	r3, #0
	ble	.L255fe
	ldr	r5, [sp, #0x10]
	mov	r7, r3
.L255ee:
	mov	r0, r5
	mov	r1, #0xf0
	sub	r7, #1
	bl	Func_8003dec
	add	r5, #0xc
	cmp	r7, #0
	bne	.L255ee
.L255fe:
	mov	r1, r11
	ldrh	r3, [r1, #0xc]
	lsl	r3, #3
	sub	r3, #2
	ldr	r2, [sp, #0x14]
	str	r3, [sp, #0x24]
	ldrh	r3, [r1, #0xe]
	add	r3, r2, r3
	lsl	r3, #3
	add	r3, #0x14
	ldr	r1, [sp, #0x18]
	str	r3, [sp, #0x28]
	mov	r3, #0x80
	lsl	r3, #23
	mov	r2, #0
	str	r3, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [sp, #0x38]
	ldr	r1, =Data_310a4
	bl	UploadSprite2
	ldr	r3, .L2565c	@ 0x3ff
	ldr	r1, [sp, #0x18]
	and	r0, r3
	ldr	r2, .L25660	@ 0xfffffc00
	ldrh	r3, [r1, #8]
	and	r3, r2
	orr	r3, r0
	mov	r2, r1
	strh	r3, [r2, #8]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r0, #4
	ldr	r1, [sp, #0x24]
	and	r2, r0
	ldr	r3, =0xfffc
	lsr	r2, #1
	add	r2, r1, r2
	add	r2, r3
	ldr	r1, [sp, #0x18]
	ldr	r3, .L25664	@ 0x1ff
	and	r2, r3
	ldrh	r3, [r1, #6]
	ldr	r1, .L25668	@ 0xfffffe00
	and	r3, r1
	b	.L2568c

	.align	2, 0
.L2565c:
	.word	0x3ff
.L25660:
	.word	0xfffffc00
.L25664:
	.word	0x1ff
.L25668:
	.word	0xfffffe00
	.pool


.L2568c:
	orr	r3, r2
	ldr	r1, =iwram_3001e40
	ldr	r2, [sp, #0x18]
	strh	r3, [r2, #6]
	ldr	r3, [r1]
	ldr	r2, [sp, #0x28]
	and	r3, r0
	lsr	r3, #2
	sub	r3, r2, r3
	ldr	r1, [sp, #0x18]
	add	r3, #0xf8
	strb	r3, [r1, #4]
	ldr	r2, [sp, #0x48]
	cmp	r2, #0
	beq	.L256b2
	ldr	r0, [sp, #0x18]
	mov	r1, #0xf2
	bl	Func_8003dec
.L256b2:
	ldr	r3, =iwram_3001f34
	ldr	r1, [r3]
	mov	r2, r8
	mov	r3, r9
	str	r3, [r1, #0x34]
	str	r2, [r1, #0x30]
	ldr	r3, [sp, #0x2c]
	str	r3, [r1, #0x38]
	ldr	r0, =gKeyPress
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L25754
	ldr	r1, [sp, #0x48]
	cmp	r1, #0
	beq	.L2574c
	mov	r2, r9
	add	r2, r8
	ldr	r1, [sp, #0x4c]
	lsl	r3, r2, #1
	add	r5, r3, r1
	ldrh	r0, [r5]
	mov	r7, #0x80
	mov	r10, r2
	lsl	r7, #3
	bl	_GetItemInfo
	ldrh	r2, [r5]
	mov	r3, r7
	and	r3, r2
	mov	r6, #0
	cmp	r3, #0
	bne	.L25706
	ldrh	r1, [r5]
	ldr	r0, [sp, #0x50]
	bl	Func_8025180
	mov	r6, r0
	cmp	r6, #0
	bne	.L25706
	b	.L258c8
.L25706:
	mov	r0, #0x72
	bl	_PlaySound
	cmp	r6, #2
	bne	.L25716
	ldr	r5, [sp, #0x20]
	ldr	r0, =0x8ee
	b	.L25724
.L25716:
	ldrh	r2, [r5]
	mov	r3, r7
	and	r3, r2
	cmp	r3, #0
	beq	.L2572e
	ldr	r5, [sp, #0x20]
	ldr	r0, =0x8ec
.L25724:
	mov	r1, r5
	mov	r2, #0x34
	bl	Func_801965c
	b	.L2573a
.L2572e:
	ldr	r5, [sp, #0x20]
	ldr	r0, =0x8eb
	mov	r1, r5
	mov	r2, #0x34
	bl	Func_801965c
.L2573a:
	bl	Func_8016738
	mov	r0, r5
	ldr	r1, [sp, #0x34]
	mov	r2, #0
	mov	r3, #4
	bl	Func_8017aa4
	b	.L25772
.L2574c:
	mov	r2, #1
	neg	r2, r2
	mov	r10, r2
	b	.L258c8
.L25754:
	ldr	r3, [r1, #0x4c]
	cmp	r3, #0
	beq	.L25764
	ldr	r3, [r0]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L25772
.L25764:
	mov	r0, #0x71
	bl	_PlaySound
	mov	r3, #1
	neg	r3, r3
	mov	r10, r3
	b	.L258c8
.L25772:
	ldr	r1, [sp, #0x48]
	cmp	r1, #0
	bne	.L2577a
	b	.L258c0
.L2577a:
	ldr	r1, =gKeyRepeat
	ldr	r3, [r1]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L257b0
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #5
	beq	.L257a0
	mov	r3, r9
	ldr	r1, [sp, #0x48]
	add	r3, r8
	cmp	r3, r1
	bne	.L257a4
.L257a0:
	mov	r2, #0
	mov	r8, r2
.L257a4:
	mov	r1, r8
	mov	r3, r8
	lsl	r1, #1
	str	r3, [sp, #0x2c]
	str	r1, [sp, #0x14]
	b	.L258c0
.L257b0:
	ldr	r3, [r1]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L257f6
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0
	bge	.L257ec
	ldr	r0, [sp, #0x48]
	mov	r1, #5
	sub	r0, #1
	bl	__divsi3
	lsl	r3, r0, #2
	add	r3, r0
	cmp	r9, r3
	bne	.L257e8
	ldr	r1, [sp, #0x48]
	mov	r2, r9
	sub	r3, r1, r2
	sub	r3, #1
	b	.L257ea
.L257e8:
	mov	r3, #4
.L257ea:
	mov	r8, r3
.L257ec:
	mov	r2, r8
	mov	r1, r8
	lsl	r2, #1
	str	r1, [sp, #0x2c]
	b	.L258be
.L257f6:
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L25854
	mov	r0, #0x6f
	bl	_PlaySound
	bl	Func_800352c
	mov	r3, r9
	ldr	r1, [sp, #0x48]
	add	r3, #5
	cmp	r3, r1
	blt	.L25828
	mov	r2, r9
	cmp	r2, #0
	beq	.L258c0
	ldr	r1, [sp, #0x2c]
	mov	r8, r1
	mov	r2, r8
	mov	r3, #0
	lsl	r2, #1
	mov	r9, r3
	b	.L258be
.L25828:
	ldr	r0, [sp, #0x48]
	mov	r9, r3
	ldr	r3, [sp, #0x2c]
	sub	r0, #1
	mov	r1, #5
	mov	r8, r3
	bl	__divsi3
	lsl	r3, r0, #2
	add	r3, r0
	cmp	r9, r3
	bne	.L258ba
	ldr	r1, [sp, #0x48]
	mov	r2, r9
	sub	r3, r1, r2
	sub	r3, #1
	mov	r8, r3
	ldr	r3, [sp, #0x2c]
	cmp	r8, r3
	ble	.L258aa
	mov	r8, r3
	b	.L258b2
.L25854:
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L258c0
	mov	r0, #0x6f
	bl	_PlaySound
	bl	Func_800352c
	mov	r2, r9
	cmp	r2, #0
	beq	.L2587e
	ldr	r1, [sp, #0x2c]
	mov	r8, r1
	mov	r3, #5
	mov	r2, r8
	neg	r3, r3
	lsl	r2, #1
	add	r9, r3
	b	.L258be
.L2587e:
	ldr	r0, [sp, #0x48]
	mov	r1, #5
	sub	r0, #1
	bl	__divsi3
	lsl	r3, r0, #2
	add	r3, r0
	mov	r9, r3
	ldr	r3, [sp, #0x2c]
	mov	r1, r9
	mov	r8, r3
	cmp	r1, #0
	beq	.L258b2
	ldr	r2, [sp, #0x48]
	sub	r3, r2, r1
	sub	r3, #1
	mov	r8, r3
	ldr	r3, [sp, #0x2c]
	cmp	r8, r3
	ble	.L258ba
	mov	r8, r3
	b	.L258b2
.L258aa:
	mov	r3, r8
	lsl	r3, #1
	str	r3, [sp, #0x14]
	b	.L258c0
.L258b2:
	mov	r1, r8
	lsl	r1, #1
	str	r1, [sp, #0x14]
	b	.L258c0
.L258ba:
	mov	r2, r8
	lsl	r2, #1
.L258be:
	str	r2, [sp, #0x14]
.L258c0:
	mov	r0, #1
	bl	WaitFrames
	b	.L25344
.L258c8:
	ldr	r0, [sp, #0x34]
	mov	r1, #1
	bl	CloseUIBox
	mov	r1, #1
	mov	r0, r11
	bl	CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [sp, #0x38]
	bl	Func_8003f3c
	ldr	r5, [sp, #0x1c]
	mov	r7, #4
.L258e8:
	ldmia	r5!, {r0}
	sub	r7, #1
	bl	Func_8003f3c
	cmp	r7, #0
	bge	.L258e8
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r10
	add	sp, #0x130
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8025200
