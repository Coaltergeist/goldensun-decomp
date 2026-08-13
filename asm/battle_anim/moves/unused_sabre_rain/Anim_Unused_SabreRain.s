	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Unused_SabreRain  @ 0x080cb4ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_3001eec
	mov	r3, r6
	ldmia	r3!, {r2}
	ldr	r3, [r3]
	sub	sp, #0x24
	str	r3, [sp, #0xc]
	ldr	r3, =0x7828
	mov	r11, r2
	add	r3, r11
	str	r0, [r3]
	mov	r0, #1
	mov	r8, r3
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lcb554	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Lcb558	@ 0x1000
	add	r2, #0x32
	strh	r3, [r2]
	mov	r5, #1
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r6, #0x1c]
	mov	r1, #7
	str	r3, [sp, #0x10]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r6, #0x20]
	mov	r0, sp
	add	r0, #0x10
	str	r0, [sp, #8]
	mov	r1, r11
	str	r3, [r0, #4]
	b	.Lcb568

	.align	2, 0
.Lcb554:
	.word	0x100
.Lcb558:
	.word	0x1000
	.pool

.Lcb568:
	mov	r2, #1
	ldr	r0, =_FILE_78
	mov	r3, #1
	bl	LoadVFXFile
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r11
	str	r5, [r3]
	add	r2, r11
	mov	r3, #0
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r2, r8
	ldr	r3, [r2]
	add	r5, sp, #0x18
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r1, r5
	bl	GetBattleActorPos2
	ldr	r2, [r5]
	mov	r3, #0x40
	ldr	r1, =REG_BG2X
	sub	r3, r2
	lsl	r3, #8
	mov	r5, #0xe1
	str	r3, [r1]
	lsl	r5, #7
	mov	r3, #0
	mov	r9, r3
	add	r5, r11
.Lcb5b2:
	bl	Random
	mov	r1, #0x60
	bl	__umodsi3
	mov	r2, r9
	add	r0, #0x10
	str	r0, [r5]
	cmp	r2, #0
	bge	.Lcb5c8
	add	r2, #3
.Lcb5c8:
	asr	r2, #2
	mov	r3, #0x18
	sub	r3, r2
	lsl	r3, #16
	str	r3, [r5, #4]
	cmp	r0, #0x2b
	bgt	.Lcb5da
	mov	r3, #3
	b	.Lcb618
.Lcb5da:
	cmp	r0, #0x33
	bgt	.Lcb5e2
	mov	r3, #2
	b	.Lcb618
.Lcb5e2:
	cmp	r0, #0x3b
	bgt	.Lcb5ea
	mov	r3, #1
	b	.Lcb618
.Lcb5ea:
	cmp	r0, #0x43
	bgt	.Lcb5f2
	mov	r3, #0
	b	.Lcb618
.Lcb5f2:
	cmp	r0, #0x4b
	bgt	.Lcb5fa
	mov	r3, #1
	b	.Lcb616
.Lcb5fa:
	cmp	r0, #0x53
	bgt	.Lcb614
	mov	r3, #2
	b	.Lcb616

	.pool_aligned

.Lcb614:
	mov	r3, #3
.Lcb616:
	neg	r3, r3
.Lcb618:
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0xc]
	lsl	r3, #17
	str	r3, [r5, #0xc]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x10]
	mov	r0, #1
	ldr	r3, [r5]
	add	r9, r0
	lsl	r3, #16
	mov	r2, r9
	str	r3, [r5]
	add	r5, #0x1c
	cmp	r2, #0x40
	bne	.Lcb5b2
	mov	r0, #0xd4
	bl	_PlaySound
	mov	r3, #0
	mov	r10, r3
.Lcb642:
	mov	r0, r10
	cmp	r0, #0x10
	bgt	.Lcb65c
	ldr	r2, .Lcb674	@ 0x1000
	mov	r3, r10
	orr	r3, r2
	ldr	r2, =REG_BLDALPHA
	strh	r3, [r2]
	cmp	r0, #0x10
	bne	.Lcb65c
	ldr	r3, .Lcb678	@ 0
	sub	r2, #2
	strh	r3, [r2]
.Lcb65c:
	mov	r3, r10
	cmp	r3, #0x67
	ble	.Lcb68e
	ldr	r3, .Lcb67c	@ 0x78
	ldr	r2, .Lcb674	@ 0x1000
	mov	r0, r10
	sub	r3, r0
	orr	r3, r2
	ldr	r2, =REG_BLDALPHA
	strh	r3, [r2]
	b	.Lcb684

	.align	2, 0
.Lcb674:
	.word	0x1000
.Lcb678:
	.word	0
.Lcb67c:
	.word	0x78
	.pool

.Lcb684:
	cmp	r0, #0x68
	bne	.Lcb68e
	ldr	r3, =0x3f44
	sub	r2, #2
	strh	r3, [r2]
.Lcb68e:
	ldr	r7, =0x7224
	mov	r3, #0xf
	mov	r9, r3
	add	r7, r11
.Lcb696:
	ldr	r6, [r7, #0xc]
	mov	r3, r6
	cmp	r6, #0
	bge	.Lcb6a0
	neg	r3, r6
.Lcb6a0:
	mov	r0, r9
	lsl	r0, #2
	mov	r8, r0
	asr	r4, r3, #17
	mov	r3, r8
	add	r3, #0x19
	cmp	r10, r3
	bge	.Lcb70a
	ldr	r2, =.Ledf88
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	b	.Lcb6c4

	.pool_aligned

.Lcb6c4:
	mov	r3, #2
	ldrsh	r2, [r7, r3]
	ldr	r3, =.Ledf7f
	ldrb	r5, [r3, r4]
	lsr	r3, r5, #1
	sub	r2, r3
	mov	r0, #6
	ldrsh	r3, [r7, r0]
	ldr	r0, =.Ledf83
	ldrb	r4, [r0, r4]
	lsr	r0, r4, #1
	sub	r3, r0
	str	r5, [sp]
	ldr	r0, [sp, #8]
	str	r4, [sp, #4]
	lsr	r6, #31
	lsl	r6, #2
	ldr	r4, [r6, r0]
	add	r1, r11
	ldr	r0, [sp, #0xc]
	bl	_call_via_r4
	mov	r3, r8
	add	r3, #0x10
	cmp	r10, r3
	blt	.Lcb73e
	ldr	r3, [r7]
	ldr	r2, [r7, #0xc]
	add	r3, r2
	str	r3, [r7]
	ldr	r2, [r7, #0x10]
	ldr	r3, [r7, #4]
	add	r3, r2
	str	r3, [r7, #4]
	b	.Lcb73e
.Lcb70a:
	ldr	r2, =.Ledf88
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	mov	r3, #2
	ldrsh	r2, [r7, r3]
	ldr	r3, =.Ledf7f
	ldrb	r5, [r3, r4]
	lsr	r3, r5, #1
	sub	r2, r3
	mov	r0, #6
	ldrsh	r3, [r7, r0]
	ldr	r0, =.Ledf83
	ldrb	r4, [r0, r4]
	lsr	r0, r4, #1
	sub	r4, #4
	lsr	r6, #31
	sub	r3, r0
	str	r5, [sp]
	ldr	r0, [sp, #8]
	str	r4, [sp, #4]
	lsl	r6, #2
	ldr	r4, [r6, r0]
	add	r1, r11
	ldr	r0, [sp, #0xc]
	bl	_call_via_r4
.Lcb73e:
	mov	r2, #1
	neg	r2, r2
	add	r9, r2
	sub	r7, #0x1c
	cmp	r9, r2
	bne	.Lcb696
	mov	r3, r10
	sub	r3, #0x17
	cmp	r3, #0x40
	bhi	.Lcb78c
	mov	r3, #3
	mov	r0, r10
	and	r3, r0
	cmp	r3, #0
	bne	.Lcb78c
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, #2
	str	r3, [sp]
	mov	r2, #5
	mov	r3, #0
	mov	r1, #7
	bl	SetBattleActorState
	ldr	r2, =0x77a8
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, r10
	mov	r3, #7
	and	r3, r0
	cmp	r3, #0
	bne	.Lcb78c
	mov	r0, #0x85
	bl	_PlaySound
.Lcb78c:
	mov	r0, #8
	mov	r1, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #0x78
	beq	.Lcb7b2
	b	.Lcb642
.Lcb7b2:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Unused_SabreRain

	.section .rodata
.Ledf7f:
	.incrom 0xedf7f, 0xedf83
.Ledf83:
	.incrom 0xedf83, 0xedf88
.Ledf88:
	.incrom 0xedf88, 0xedf90
