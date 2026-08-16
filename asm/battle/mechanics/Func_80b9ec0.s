	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b9ec0  @ 0x080b9ec0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x7c
	add	r7, sp, #0xc
	str	r1, [sp, #8]
	mov	r1, r7
	mov	r9, r0
	ldr	r5, =iwram_3001e74
	bl	InitAnimContext
	mov	r0, r9
	ldrb	r0, [r0]
	str	r0, [sp, #4]
	mov	r1, r9
	ldrb	r1, [r1, #2]
	str	r1, [sp]
	mov	r2, r9
	ldr	r3, [r2, #0x58]
	mov	r2, #0x80
	lsl	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.Lb9f18
	mov	r3, r5
	add	r3, #0x8c
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #6
	cmp	r0, #7
	bls	.Lb9f0a
	mov	r3, #0xa0
	lsl	r3, #7
.Lb9f0a:
	str	r3, [r2]
	mov	r3, #0x3c
	str	r3, [r2, #4]
	b	.Lb9f32

	.pool_aligned

.Lb9f18:
	mov	r3, r5
	add	r3, #0x8c
	ldr	r1, [r3]
	ldr	r3, [sp, #4]
	ldr	r2, =0xffffe000
	cmp	r3, #7
	bhi	.Lb9f2a
	mov	r2, #0x80
	lsl	r2, #6
.Lb9f2a:
	ldr	r3, [r1]
	cmp	r3, r2
	beq	.Lb9f32
	str	r2, [r1]
.Lb9f32:
	mov	r1, #0
	mov	r0, #0
	bl	Func_80c10e8
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	mov	r3, #2
	neg	r3, r3
	and	r0, r3
	bl	_Func_801f200
	ldr	r0, [sp, #4]
	bl	GetBattleActor
	ldr	r0, [r0]
	mov	r11, r0
	add	r0, sp, #0x60
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lb9f74	@ 0x3f40
	mov	r10, r0
	strh	r3, [r2]
	mov	r0, #3
	mov	r1, r10
	bl	Func_80b6c08
	mov	r6, #0
	mov	r8, r0
	cmp	r0, #0
	beq	.Lb9fc2
	mov	r5, #0
	b	.Lb9f84

	.align	2, 0
.Lb9f74:
	.word	0x3f40
	.pool

.Lb9f84:
	mov	r1, r10
	ldrh	r3, [r5, r1]
	cmp	r3, #0xfe
	beq	.Lb9fba
	ldr	r2, [sp, #4]
	mov	r0, r3
	cmp	r0, r2
	beq	.Lb9fb2
	ldr	r3, [sp]
	mov	r2, #0
	cmp	r3, #7
	bhi	.Lb9f9e
	mov	r2, #1
.Lb9f9e:
	mov	r3, #0
	cmp	r0, #7
	bhi	.Lb9fa6
	mov	r3, #1
.Lb9fa6:
	cmp	r2, r3
	beq	.Lb9fba
	mov	r1, #1
	bl	Func_80c0f98
	b	.Lb9fba
.Lb9fb2:
	mov	r0, r11
	mov	r1, #3
	bl	_Actor_SetAnim
.Lb9fba:
	add	r6, #1
	add	r5, #2
	cmp	r6, r8
	bne	.Lb9f84
.Lb9fc2:
	mov	r0, #0x9a
	bl	_PlaySound
	mov	r2, r9
	ldr	r1, [r2, #0x50]
	mov	r3, #0
	ldr	r0, [r7, #8]
	mov	r2, #0
	bl	Anim_MoveIntro
	ldr	r0, [sp, #8]
	mov	r3, #1
	and	r3, r0
	cmp	r3, #0
	beq	.Lb9fe8
	ldr	r0, [sp, #4]
	mov	r1, #1
	bl	Func_80c0f98
.Lb9fe8:
	ldr	r1, =0x10
	ldr	r5, =0x1000
	mov	r6, #0
	mov	r11, r1
.Lb9ff0:
	mov	r2, r11
	sub	r3, r2, r6
	ldr	r0, =REG_BLDALPHA
	orr	r3, r5
	strh	r3, [r0]
	add	r6, #1
	mov	r0, #1
	bl	WaitFrames
	cmp	r6, #0x10
	bne	.Lb9ff0
	mov	r1, r9
	ldr	r3, [r1, #0x5c]
	cmp	r3, #0
	beq	.Lba044
	cmp	r3, #1
	bne	.Lba032
	b	.Lba020

	.pool_aligned

.Lba020:
	ldrb	r1, [r1]
	mov	r0, #0
	bl	Func_80bbabc
	ldr	r1, =0x856
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lba03a
.Lba032:
	ldr	r1, =0x855
	mov	r0, #4
	bl	Func_80bbabc
.Lba03a:
	bl	Func_80bb938
	bl	Func_80c1a14
	b	.Lba1ba
.Lba044:
	mov	r6, #0
	mov	r2, #0
	cmp	r6, r8
	bcs	.Lba09e
	ldr	r0, [sp, #8]
	mov	r3, #1
	and	r0, r3
	mov	r12, r0
	mov	r5, r10
	mov	r1, r10
.Lba058:
	ldrh	r3, [r5]
	ldr	r0, [sp, #4]
	add	r5, #2
	cmp	r3, r0
	bne	.Lba07c
	mov	r3, r12
	cmp	r3, #0
	bne	.Lba098
	add	r0, sp, #4
	ldrh	r0, [r0]
	add	r2, #1
	strh	r0, [r1]
	b	.Lba096

	.pool_aligned

.Lba07c:
	ldr	r0, [sp]
	mov	r4, #0
	cmp	r0, #7
	bls	.Lba086
	mov	r4, #1
.Lba086:
	mov	r0, #0
	cmp	r3, #7
	bhi	.Lba08e
	mov	r0, #1
.Lba08e:
	cmp	r4, r0
	beq	.Lba098
	strh	r3, [r1]
	add	r2, #1
.Lba096:
	add	r1, #2
.Lba098:
	add	r6, #1
	cmp	r6, r8
	bcc	.Lba058
.Lba09e:
	ldr	r3, =0xff
	lsl	r2, #1
	mov	r1, r10
	strh	r3, [r1, r2]
	mov	r0, r10
	mov	r1, #0
	bl	CreateBattleSpriteOverlays
	mov	r2, r9
	mov	r3, #1
	ldrsb	r3, [r2, r3]
	mov	r0, #0
	cmp	r0, r3
	bge	.Lba0d8
	mov	r12, r3
	mov	r1, r10
	add	r2, #2
	mov	r0, r12
	b	.Lba0c8

	.pool_aligned

.Lba0c8:
	ldrb	r3, [r2]
	sub	r0, #1
	strh	r3, [r1]
	add	r2, #1
	add	r1, #2
	cmp	r0, #0
	bne	.Lba0c8
	mov	r0, r12
.Lba0d8:
	ldr	r2, =0xff
	lsl	r3, r0, #1
	mov	r0, r10
	strh	r2, [r0, r3]
	ldr	r3, [r7, #0x14]
	mov	r6, #0
	mov	r2, r7
	cmp	r3, #0
	beq	.Lba138
	mov	r5, #0
	b	.Lba0f4

	.pool_aligned

.Lba0f4:
	lsl	r3, r6, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	GetBattleActor
	mov	r1, #0
	ldr	r0, [r0]
	bl	Func_80b7f70
	mov	r3, r0
	add	r3, #0x27
	ldrb	r3, [r3]
	sub	r3, #1
	mov	r1, #0
	cmp	r3, #0
	beq	.Lba12c
	mov	r12, r3
	add	r3, r5, r7
	mov	r2, r3
	add	r2, #0x34
	add	r0, #0x28
.Lba11e:
	ldmia	r0!, {r3}
	ldrb	r3, [r3, #5]
	add	r1, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r1, r12
	bne	.Lba11e
.Lba12c:
	ldr	r3, [r7, #0x14]
	add	r6, #1
	add	r5, #4
	mov	r2, r7
	cmp	r6, r3
	bne	.Lba0f4
.Lba138:
	mov	r3, r9
	ldr	r2, [r3, #0x58]
	mov	r3, #0x80
	lsl	r3, #8
	and	r2, r3
	cmp	r2, #0
	beq	.Lba152
	ldr	r0, [sp]
	cmp	r0, #7
	bls	.Lba15a
	mov	r3, #0
	str	r3, [r7, #4]
	b	.Lba162
.Lba152:
	mov	r1, r9
	ldrb	r3, [r1, #2]
	cmp	r3, #7
	bhi	.Lba160
.Lba15a:
	mov	r3, #1
	str	r3, [r7, #4]
	b	.Lba162
.Lba160:
	str	r2, [r7, #4]
.Lba162:
	mov	r2, r9
	ldr	r3, [r2, #0x58]
	mov	r2, #0x80
	lsl	r2, #10
	and	r3, r2
	cmp	r3, #0
	beq	.Lba178
	ldr	r3, [r7, #4]
	mov	r2, #1
	eor	r3, r2
	str	r3, [r7, #4]
.Lba178:
	mov	r1, #0xc8
	ldr	r0, =Func_80bd898
	lsl	r1, #4
	bl	StartTask
	mov	r3, r9
	ldr	r0, [r3, #0x58]
	mov	r3, #0x80
	lsl	r3, #8
	and	r3, r0
	cmp	r3, #0
	beq	.Lba198
	mov	r0, r7
	bl	_Anim_Summon
	b	.Lba1b6
.Lba198:
	mov	r3, #0x80
	lsl	r3, #7
	and	r3, r0
	cmp	r3, #0
	beq	.Lba1b0
	mov	r0, r7
	bl	_Anim_Attack
	b	.Lba1b6

	.pool_aligned

.Lba1b0:
	mov	r0, r7
	bl	_Anim_Func
.Lba1b6:
	bl	Func_80be02c
.Lba1ba:
	bl	Func_80b6c90
	mov	r0, #3
	mov	r1, r10
	bl	Func_80b6c08
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lba1f4	@ 0x3f40
	mov	r8, r0
	strh	r3, [r2]
	mov	r6, #0
	cmp	r0, #0
	beq	.Lba216
	mov	r5, #0
.Lba1d6:
	mov	r0, r10
	ldrh	r3, [r5, r0]
	cmp	r3, #0xfe
	beq	.Lba20e
	ldr	r1, [sp, #4]
	mov	r0, r3
	cmp	r0, r1
	beq	.Lba20e
	ldr	r3, [sp]
	mov	r2, #0
	cmp	r3, #7
	bhi	.Lba1fc
	mov	r2, #1
	b	.Lba1fc

	.align	2, 0
.Lba1f4:
	.word	0x3f40
	.pool

.Lba1fc:
	mov	r3, #0
	cmp	r0, #7
	bhi	.Lba204
	mov	r3, #1
.Lba204:
	cmp	r2, r3
	beq	.Lba20e
	mov	r1, #1
	bl	Func_80c0f98
.Lba20e:
	add	r6, #1
	add	r5, #2
	cmp	r6, r8
	bne	.Lba1d6
.Lba216:
	ldr	r7, =REG_BLDALPHA
	ldr	r5, .Lba23c	@ 0x1000
	mov	r6, #0
.Lba21c:
	mov	r3, r6
	orr	r3, r5
	strh	r3, [r7]
	mov	r0, #1
	add	r6, #1
	bl	WaitFrames
	cmp	r6, #0x10
	bne	.Lba21c
	mov	r0, r8
	mov	r6, #0
	cmp	r0, #0
	beq	.Lba254
	mov	r5, r10
	b	.Lba244

	.align	2, 0
.Lba23c:
	.word	0x1000
	.pool

.Lba244:
	ldrh	r0, [r5]
	mov	r1, #0
	add	r6, #1
	add	r5, #2
	bl	Func_80c0f98
	cmp	r6, r8
	bne	.Lba244
.Lba254:
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x64
	mov	r0, #0
	bl	Func_80c0cec
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	add	sp, #0x7c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b9ec0
