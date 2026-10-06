	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_SpiderWeb  @ 0x080ccebc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =iwram_3001ef0
	mov	r8, r1
	mov	r3, r8
	sub	r3, #4
	ldr	r7, [r3]
	ldr	r3, =0x7828
	ldr	r2, [r1]
	add	r5, r7, r3
	str	r0, [r5]
	mov	r0, #2
	sub	sp, #0x20
	mov	r11, r2
	bl	AnimStart
	ldr	r1, =REG_BLDALPHA
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lccf24	@ 0x100
	mov	r10, r1
	strh	r3, [r2]
	ldr	r3, .Lccf28	@ 0x1000
	mov	r2, r10
	strh	r3, [r2]
	ldr	r3, [r5]
	add	r6, sp, #0x14
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r6
	bl	GetBattleActorPos2
	ldr	r2, [r5]
	ldr	r3, [r2, #0x14]
	lsl	r3, #1
	add	r5, sp, #8
	add	r3, #0x22
	ldrsh	r0, [r2, r3]
	mov	r1, r5
	bl	GetBattleActorPos2
	ldr	r1, [r6]
	ldr	r3, [r5]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	b	.Lccf3c

	.align	2, 0
.Lccf24:
	.word	0x100
.Lccf28:
	.word	0x1000
	.pool

.Lccf3c:
	add	r1, r3
	mov	r3, #0x40
	ldr	r2, =REG_BG2X
	sub	r3, r1
	lsl	r3, #8
	str	r1, [r6]
	ldr	r0, =_FILE_59
	str	r3, [r2]
	mov	r1, r7
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r1, =0x7784
	add	r2, r7, r3
	mov	r3, #1
	str	r3, [r2]
	add	r2, r7, r1
	mov	r3, #0
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r0, #0x8f
	bl	_PlaySound
	mov	r2, #0
	mov	r3, #1
	mov	r1, #0x20
	mov	r9, r2
	mov	r10, r3
	mov	r8, r1
.Lccf84:
	mov	r2, r9
	cmp	r2, #8
	bgt	.Lccf94
	lsl	r3, r2, #1
	ldr	r2, .Lccfac	@ 0x1000
	ldr	r1, =REG_BLDALPHA
	orr	r3, r2
	strh	r3, [r1]
.Lccf94:
	mov	r2, r9
	cmp	r2, #0x35
	ble	.Lccfc8
	lsl	r3, r2, #1
	ldr	r2, .Lccfb0	@ 0x7c
	sub	r2, r3
	ldr	r3, .Lccfac	@ 0x1000
	orr	r2, r3
	ldr	r3, =REG_BLDALPHA
	strh	r2, [r3]
	b	.Lccfc8

	.align	2, 0
.Lccfac:
	.word	0x1000
.Lccfb0:
	.word	0x7c
	.pool

.Lccfc8:
	mov	r1, r10
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	mov	r2, r8
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r3, =iwram_3001f08
	mov	r1, r7
	ldr	r4, [r3]
	mov	r2, #0x21
	mov	r3, #0x29
	mov	r0, r11
	bl	_call_via_r4
	mov	r0, #0x2e
	bl	gfree
	mov	r1, r10
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #7
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	mov	r2, r8
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r3, =iwram_3001f08
	mov	r1, r7
	ldr	r4, [r3]
	mov	r2, #0x40
	mov	r3, #0x29
	mov	r0, r11
	bl	_call_via_r4
	mov	r0, #0x2e
	bl	gfree
	mov	r1, r10
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #0xb
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	mov	r2, r8
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r3, =iwram_3001f08
	mov	r1, r7
	ldr	r4, [r3]
	mov	r2, #0x21
	mov	r3, #0x48
	mov	r0, r11
	bl	_call_via_r4
	mov	r0, #0x2e
	bl	gfree
	mov	r1, r10
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #0xf
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	mov	r2, r8
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r3, =iwram_3001f08
	mov	r1, r7
	ldr	r4, [r3]
	mov	r2, #0x40
	mov	r3, #0x48
	mov	r0, r11
	bl	_call_via_r4
	mov	r0, #0x2e
	bl	gfree
	mov	r1, r9
	cmp	r1, #0x20
	bne	.Lcd084
	mov	r0, #0x8f
	bl	_Func_80bd7dc
.Lcd084:
	ldr	r2, =0x7828
	ldr	r3, [r7, r2]
	ldr	r3, [r3, #0x14]
	mov	r5, #0
	cmp	r3, #0
	beq	.Lcd0ba
	mov	r6, #0x24
.Lcd092:
	mov	r3, r9
	cmp	r3, #0xa
	bne	.Lcd0ac
	ldr	r3, [r7, r2]
	mov	r2, #1
	ldrsh	r0, [r3, r6]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	mov	r3, r5
	bl	SetBattleActorState
.Lcd0ac:
	ldr	r2, =0x7828
	ldr	r3, [r7, r2]
	ldr	r3, [r3, #0x14]
	add	r5, #1
	add	r6, #2
	cmp	r5, r3
	bne	.Lcd092
.Lcd0ba:
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r1, r10
	add	r3, r7, r2
	str	r1, [r3]
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	cmp	r3, #0x3f
	beq	.Lcd0d8
	b	.Lccf84
.Lcd0d8:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	bl	AnimEnd
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_SpiderWeb
