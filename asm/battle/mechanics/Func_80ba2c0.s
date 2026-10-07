	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ba2c0  @ 0x080ba2c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x6c
	str	r0, [sp, #0xc]
	ldr	r3, =iwram_3001f00
	ldr	r3, [r3]
	ldr	r1, [sp, #0xc]
	str	r3, [sp, #4]
	ldrb	r0, [r1]
	bl	GetBattleActor
	ldr	r3, [r0]
	ldr	r1, [r3, #0x10]
	ldr	r0, [r3, #8]
	bl	atan2
	ldr	r3, =0xffffe000
	lsl	r0, #16
	ldr	r1, [sp, #0xc]
	lsr	r0, #16
	add	r2, r0, r3
	ldrb	r3, [r1]
	cmp	r3, #7
	bls	.Lba300
	mov	r3, #0xc0
	lsl	r3, #7
	add	r2, r0, r3
.Lba300:
	ldr	r3, =0x7fff
	ldr	r1, =0xffffe000
	and	r2, r3
	add	r3, r2, r1
	lsr	r2, r3, #31
	add	r3, r2
	mov	r1, #0x80
	asr	r3, #1
	lsl	r1, #6
	add	r2, r3, r1
	ldr	r1, [sp, #4]
	ldr	r3, [r1]
	cmp	r3, r2
	bne	.Lba326
	str	r2, [r1]
	mov	r0, #5
	bl	WaitFrames
	b	.Lba330
.Lba326:
	ldr	r3, [sp, #4]
	mov	r0, #0xa
	str	r2, [r3]
	bl	WaitFrames
.Lba330:
	mov	r0, #0
	mov	r1, #0
	bl	Func_80c10e8
	add	r7, sp, #0x18
	ldr	r0, [sp, #0xc]
	mov	r1, r7
	bl	InitAnimContext
	ldr	r3, [r7]
	cmp	r3, #0x87
	bne	.Lba35a
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	mov	r3, #2
	neg	r3, r3
	and	r0, r3
	bl	_Func_801f200
.Lba35a:
	ldr	r0, [r7, #8]
	bl	_GetUnit
	mov	r5, r0
	mov	r1, #0x24
	ldrsh	r0, [r7, r1]
	bl	_GetUnit
	ldr	r3, [sp, #0xc]
	add	r3, #0x2c
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r2, [sp, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0x1e
	ldrsb	r3, [r2, r3]
	mov	r6, #0
	cmp	r3, #0
	bne	.Lba384
	mov	r6, #1
.Lba384:
	ldr	r3, [sp, #0xc]
	ldrb	r0, [r3]
	bl	GetBattleActor
	mov	r1, #0
	ldr	r0, [r0]
	bl	Func_80b7f70
	ldr	r3, [r0, #0x28]
	mov	r2, #1
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #2
	bl	_Func_800be20
	mov	r2, #0x94
	lsl	r2, #1
	add	r3, r5, r2
	mov	r9, r0
	ldrb	r0, [r3]
	bl	GetEnemyAttackAnimParam
	mov	r3, r0
	lsl	r3, #16
	mov	r2, #0x24
	ldrsh	r1, [r7, r2]
	ldr	r0, [r7, #8]
	mov	r2, r9
	bl	Func_80b82c4
	ldr	r0, [r7, #8]
	bl	GetBattleActor
	mov	r1, #0x10
	ldr	r0, [r0]
	bl	_Actor_SetAnimSpeed
	mov	r3, #0x24
	ldrsh	r0, [r7, r3]
	bl	GetBattleActor
	ldrh	r3, [r7, #0x24]
	cmp	r3, #7
	bhi	.Lba3f0
	mov	r3, #1
	b	.Lba3f2

	.pool_aligned

.Lba3f0:
	mov	r3, #0
.Lba3f2:
	str	r3, [r7, #4]
	ldr	r1, .Lba424	@ 0xf0
	ldr	r3, =REG_WIN0H
	ldr	r2, .Lba428	@ 0x1088
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lba42c	@ 0x3537
	strh	r3, [r2]
	ldr	r3, .Lba430	@ 0x3f21
	add	r2, #2
	strh	r3, [r2]
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r3, [r1]
	ldr	r2, .Lba434	@ 0x6000
	orr	r3, r2
	strh	r3, [r1]
	b	.Lba440

	.align	2, 0
.Lba424:
	.word	0xf0
.Lba428:
	.word	0x1088
.Lba42c:
	.word	0x3537
.Lba430:
	.word	0x3f21
.Lba434:
	.word	0x6000
	.pool

.Lba440:
	cmp	r6, #0
	beq	.Lba484
	mov	r0, #0xa
	bl	WaitFrames
	mov	r1, #0x24
	ldrsh	r0, [r7, r1]
	bl	Func_80b8178
	mov	r0, #2
	bl	WaitFrames
	mov	r0, #4
	bl	WaitFrames
	mov	r0, #0xa
	bl	WaitFrames
	ldr	r2, [sp, #0xc]
	mov	r0, #0
	ldrb	r1, [r2, #2]
	bl	Func_80bbabc
	ldr	r1, =0x853
	mov	r0, #4
	bl	Func_80bbabc
	bl	Func_80bb938
	mov	r3, #0x24
	ldrsh	r0, [r7, r3]
	bl	Func_80b8000
	b	.Lba562
.Lba484:
	mov	r1, #0
	str	r1, [sp]
	str	r1, [r7, #0x1c]
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2, #0x58]
	cmp	r3, #0
	beq	.Lba496
	mov	r3, #1
	str	r3, [r7, #0x1c]
.Lba496:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.Lba4be
	ldr	r3, [r7]
	add	r3, #0xc8
	str	r3, [r7]
	ldr	r2, [sp, #4]
	mov	r1, #1
	str	r1, [sp]
	str	r1, [r2, #0x14]
	ldr	r3, [r7, #8]
	add	r0, sp, #0x10
	strh	r3, [r0]
	ldr	r3, [r7, #0xc]
	strh	r3, [r0, #2]
	mov	r3, #0xff
	strh	r3, [r0, #4]
	mov	r1, #0
	bl	CreateBattleSpriteOverlays
.Lba4be:
	mov	r3, #8
	neg	r3, r3
	add	r9, r3
	mov	r1, r9
	cmp	r1, #0
	bgt	.Lba4ce
	mov	r2, #1
	mov	r9, r2
.Lba4ce:
	mov	r3, #0
	mov	r1, r9
	mov	r11, r3
	cmp	r1, #0
	beq	.Lba50e
	mov	r8, r7
	mov	r10, r3
.Lba4dc:
	ldr	r2, [sp]
	cmp	r2, #0
	beq	.Lba4fc
	mov	r3, r8
	mov	r1, r9
	mov	r0, r10
	ldr	r5, [r3, #8]
	ldr	r6, [r3, #0xc]
	bl	__divsi3
	mov	r2, r0
	add	r2, #0x64
	mov	r0, r5
	mov	r1, r6
	bl	Func_80c0df4
.Lba4fc:
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #1
	mov	r1, #0x1e
	add	r11, r2
	add	r10, r1
	cmp	r11, r9
	bne	.Lba4dc
.Lba50e:
	mov	r1, #0xc8
	ldr	r0, =Func_80bd898
	lsl	r1, #4
	bl	StartTask
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lba53a
	ldr	r1, [sp, #0xc]
	mov	r2, #0x80
	ldr	r3, [r1, #0x58]
	lsl	r2, #7
	and	r3, r2
	cmp	r3, #0
	beq	.Lba534
	mov	r0, r7
	bl	_Anim_Attack
	b	.Lba53a
.Lba534:
	mov	r0, r7
	bl	_Anim_Func
.Lba53a:
	bl	Func_80be02c
	ldr	r2, [sp, #8]
	cmp	r2, #0
	beq	.Lba55a
	ldr	r1, [sp, #4]
	mov	r3, #0
	str	r3, [r1, #0x14]
	bl	Func_80b6cb0
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x64
	bl	Func_80c0cec
.Lba55a:
	mov	r2, #0x24
	ldrsh	r0, [r7, r2]
	bl	Func_80b8000
.Lba562:
	ldr	r0, [r7, #8]
	bl	Func_80b8000
	mov	r0, #0
	add	sp, #0x6c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ba2c0
