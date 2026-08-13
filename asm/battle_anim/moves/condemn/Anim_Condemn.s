	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Condemn  @ 0x080cfef4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_3001eec
	mov	r3, r6
	ldmia	r3!, {r1}
	sub	sp, #0x4c
	str	r1, [sp, #0x28]
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	ldr	r3, =0x7828
	add	r1, r3
	str	r0, [r1]
	mov	r2, #0
	mov	r0, #0
	mov	r8, r1
	mov	r10, r2
	bl	Func_80cdb24
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lcff60	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Lcff64	@ 0x1010
	add	r2, #0x32
	strh	r3, [r2]
	ldr	r0, =_FILE_ab
	bl	GetFile
	mov	r7, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	mov	r1, r7
	lsl	r0, #19
	bl	_call_via_r3
	add	r7, #0x80
	ldr	r1, [sp, #0x28]
	mov	r0, r7
	bl	DecompressLZ
	ldr	r0, =_FILE_ac
	bl	GetFile
	ldr	r5, =gBuffer
	mov	r7, r0
	add	r7, #0x80
	mov	r1, r5
	mov	r0, r7
	b	.Lcff84

	.align	2, 0
.Lcff60:
	.word	0x100
.Lcff64:
	.word	0x1010
	.pool

.Lcff84:
	bl	DecompressLZ
	mov	r5, #1
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r6, #0x1c]
	mov	r2, #7
	str	r3, [sp, #0x2c]
	mov	r1, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r6, #0x20]
	mov	r4, sp
	mov	r6, #0x90
	add	r4, #0x2c
	lsl	r6, #3
	str	r4, [sp, #0x10]
	mov	r1, r6
	str	r3, [r4, #4]
	ldr	r0, =Func_80dbb9c
	bl	StartTask
	mov	r2, #0xef
	ldr	r1, [sp, #0x28]
	lsl	r2, #7
	ldr	r4, =0x7784
	add	r3, r1, r2
	str	r5, [r3]
	add	r3, r1, r4
	mov	r1, r10
	str	r1, [r3]
	ldr	r0, =Task_BlitAnim
	mov	r1, r6
	bl	StartTask
	str	r5, [sp, #0x18]
	mov	r2, r8
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Lcffec
	ldr	r3, =0xffb00000
	str	r3, [sp, #0x1c]
	b	.Lcfff2
.Lcffec:
	mov	r4, #0xe0
	lsl	r4, #15
	str	r4, [sp, #0x1c]
.Lcfff2:
	ldr	r4, =0x7828
	ldr	r3, [sp, #0x28]
	ldr	r1, =0xffe00000
	add	r4, r3, r4
	mov	r2, #0
	str	r1, [sp, #0x20]
	str	r4, [sp, #0x14]
	mov	r8, r2
.Ld0002:
	mov	r1, r8
	lsl	r5, r1, #9
	mov	r0, r5
	bl	sin
	ldr	r2, [sp, #0x1c]
	lsl	r0, #4
	asr	r3, r2, #16
	asr	r0, #16
	add	r3, r0
	mov	r0, r5
	mov	r7, r3
	bl	cos
	ldr	r4, [sp, #0x20]
	lsl	r0, #2
	asr	r3, r4, #16
	asr	r0, #16
	add	r3, r0
	add	r3, #0x10
	mov	r1, r8
	add	r7, #0x30
	mov	r11, r3
	cmp	r1, #0x58
	bne	.Ld003a
	mov	r0, #0x86
	bl	_PlaySound
.Ld003a:
	mov	r2, r8
	cmp	r2, #0x20
	bne	.Ld0060
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld0050
	ldr	r1, =0xffe00000
	str	r1, [sp, #0x1c]
	b	.Ld0056
.Ld0050:
	mov	r2, #0x90
	lsl	r2, #15
	str	r2, [sp, #0x1c]
.Ld0056:
	mov	r3, #0xc0
	lsl	r3, #13
	mov	r4, #0
	str	r3, [sp, #0x20]
	str	r4, [sp, #0x18]
.Ld0060:
	mov	r1, r8
	cmp	r1, #0x21
	bne	.Ld0070
	ldr	r3, .Ld0098	@ 0x1010
	ldr	r2, =REG_BLDALPHA
	strh	r3, [r2]
	mov	r3, #1
	str	r3, [sp, #0x18]
.Ld0070:
	mov	r4, r8
	cmp	r4, #0x40
	bne	.Ld00c6
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	add	r5, sp, #0x34
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r1, r5
	bl	GetBattleActorPos2
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld00b8
	ldr	r3, [r5]
	sub	r3, #0x80
	b	.Ld00bc

	.align	2, 0
.Ld0098:
	.word	0x1010
	.pool

.Ld00b8:
	ldr	r3, [r5]
	sub	r3, #0x40
.Ld00bc:
	lsl	r3, #16
	str	r3, [sp, #0x1c]
	mov	r1, #0
	str	r1, [sp, #0x20]
	str	r1, [sp, #0x18]
.Ld00c6:
	mov	r2, r8
	cmp	r2, #0x41
	bne	.Ld00d6
	ldr	r3, .Ld0100	@ 0x1010
	ldr	r4, =REG_BLDALPHA
	mov	r1, #1
	strh	r3, [r4]
	str	r1, [sp, #0x18]
.Ld00d6:
	ldr	r2, [sp, #0x28]
	mov	r3, #0xd3
	lsl	r3, #7
	add	r1, r2, r3
	mov	r2, r8
	mov	r4, #0
	cmp	r2, #0x1f
	bgt	.Ld0112
	cmp	r2, #0xf
	ble	.Ld0130
	lsl	r3, r2, #1
	mov	r4, r3
	ldr	r3, .Ld0104	@ 0x1f
	sub	r3, r2
	ldr	r2, .Ld0108	@ 0x1000
	orr	r3, r2
	ldr	r2, =REG_BLDALPHA
	sub	r4, #0x20
	strh	r3, [r2]
	b	.Ld0110

	.align	2, 0
.Ld0100:
	.word	0x1010
.Ld0104:
	.word	0x1f
.Ld0108:
	.word	0x1000
	.pool

.Ld0110:
	b	.Ld0130
.Ld0112:
	mov	r3, r8
	cmp	r3, #0x3f
	bgt	.Ld0130
	cmp	r3, #0x2f
	ble	.Ld0130
	lsl	r3, #1
	mov	r4, r3
	ldr	r3, =0x3f
	mov	r2, r8
	sub	r3, r2
	ldr	r2, =0x1000
	orr	r3, r2
	ldr	r2, =REG_BLDALPHA
	strh	r3, [r2]
	sub	r4, #0x60
.Ld0130:
	cmp	r4, #0
	bge	.Ld0136
	mov	r4, #0
.Ld0136:
	mov	r3, #6
	sub	r3, r7
	lsl	r7, r3, #8
	mov	r3, r8
	mov	r6, #0
	lsl	r5, r3, #11
	b	.Ld0150

	.pool_aligned

.Ld0150:
	mov	r0, r5
	str	r1, [sp, #0xc]
	str	r4, [sp, #8]
	bl	sin
	ldr	r4, [sp, #8]
	mov	r3, r4
	mul	r3, r0
	ldr	r1, [sp, #0xc]
	asr	r3, #10
	mov	r2, #0x80
	sub	r3, r7, r3
	lsl	r2, #4
	add	r6, #1
	stmia	r1!, {r3}
	add	r5, r2
	cmp	r6, #0xa0
	bne	.Ld0150
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	bne	.Ld017c
	b	.Ld035e
.Ld017c:
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Ld018e
	mov	r1, #0
	mov	r7, #0
	mov	r9, r1
	b	.Ld0194
.Ld018e:
	mov	r2, #0
	mov	r7, #1
	mov	r9, r2
.Ld0194:
	mov	r3, r8
	cmp	r3, #0x57
	bgt	.Ld01cc
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r2, =.Lee10c
	ldr	r0, [r3, #4]
	lsl	r3, r7, #3
	mov	r4, r9
	sub	r3, r7
	ldrb	r2, [r2, r3]
	ldr	r1, =.Lee11a
	lsl	r3, r4, #3
	sub	r3, r4
	ldrb	r3, [r1, r3]
	mov	r1, #0x39
	str	r1, [sp]
	mov	r1, #0x62
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r1]
	add	r3, r11
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x28]
	bl	_call_via_r4
	b	.Ld035e
.Ld01cc:
	mov	r2, r8
	cmp	r2, #0x5b
	bgt	.Ld0204
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r2, =.Lee10c
	lsl	r6, r7, #3
	ldr	r0, [r3, #4]
	sub	r3, r6, r7
	ldrb	r2, [r2, r3]
	mov	r3, r9
	ldr	r1, =.Lee11a
	lsl	r5, r3, #3
	sub	r3, r5, r3
	ldrb	r3, [r1, r3]
	mov	r1, #0x39
	str	r1, [sp]
	mov	r1, #0x62
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r1]
	add	r3, r11
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x28]
	bl	_call_via_r4
	b	.Ld020a
.Ld0204:
	mov	r2, r9
	lsl	r6, r7, #3
	lsl	r5, r2, #3
.Ld020a:
	ldr	r3, [sp, #0x28]
	ldr	r4, =0x7828
	add	r3, r4
	mov	r10, r3
	ldr	r3, [r3]
	ldr	r1, =.Lee10c
	sub	r6, r7
	ldr	r0, [r3, #4]
	add	r3, r6, #1
	ldrb	r3, [r1, r3]
	mov	r2, r9
	ldr	r7, =.Lee11a
	sub	r5, r2
	mov	r12, r3
	add	r3, r5, #1
	ldrb	r3, [r7, r3]
	mov	r1, #0x63
	str	r1, [sp]
	add	r3, r11
	mov	r1, #0x45
	mov	r14, r3
	str	r1, [sp, #4]
	ldr	r3, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r3]
	ldr	r2, [sp, #0x28]
	ldr	r3, =0x15d2
	ldr	r0, [sp, #0x24]
	add	r1, r2, r3
	mov	r3, r14
	mov	r2, r12
	bl	_call_via_r4
	mov	r3, r8
	sub	r3, #0x58
	cmp	r3, #1
	bhi	.Ld0262
	mov	r1, #0x80
	ldr	r3, =Func_80008d8
	ldr	r0, [sp, #0x24]
	lsl	r1, #7
	ldr	r2, =0x3f3f3f3f
	bl	_call_via_r3
.Ld0262:
	mov	r3, r8
	sub	r3, #0x5a
	cmp	r3, #1
	bhi	.Ld029e
	mov	r4, r10
	ldr	r3, [r4]
	ldr	r1, =.Lee10c
	ldr	r0, [r3, #4]
	add	r3, r6, #2
	ldrb	r3, [r1, r3]
	mov	r1, #0x80
	mov	r12, r3
	add	r3, r5, #2
	ldrb	r3, [r7, r3]
	str	r1, [sp]
	mov	r1, #0x5b
	str	r1, [sp, #4]
	ldr	r2, [sp, #0x10]
	lsl	r0, #2
	add	r3, r11
	mov	r14, r3
	ldr	r4, [r0, r2]
	ldr	r3, [sp, #0x28]
	ldr	r2, =0x3081
	ldr	r0, [sp, #0x24]
	add	r1, r3, r2
	mov	r2, r12
	mov	r3, r14
	bl	_call_via_r4
.Ld029e:
	mov	r3, r8
	sub	r3, #0x5c
	cmp	r3, #1
	bhi	.Ld02ce
	mov	r4, r10
	ldr	r3, [r4]
	ldr	r1, =.Lee10c
	ldr	r0, [r3, #4]
	add	r3, r6, #3
	ldrb	r2, [r1, r3]
	mov	r1, #0x80
	add	r3, r5, #3
	ldrb	r3, [r7, r3]
	str	r1, [sp]
	mov	r1, #0x5b
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r1]
	add	r3, r11
	ldr	r0, [sp, #0x24]
	ldr	r1, =gBuffer
	bl	_call_via_r4
.Ld02ce:
	mov	r3, r8
	sub	r3, #0x5e
	cmp	r3, #1
	bhi	.Ld02fe
	mov	r2, r10
	ldr	r3, [r2]
	ldr	r4, =.Lee10c
	ldr	r0, [r3, #4]
	add	r3, r6, #4
	ldrb	r2, [r4, r3]
	mov	r1, #0x80
	add	r3, r5, #4
	ldrb	r3, [r7, r3]
	str	r1, [sp]
	mov	r1, #0x3b
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r1]
	add	r3, r11
	ldr	r0, [sp, #0x24]
	ldr	r1, =ewram_2012d80
	bl	_call_via_r4
.Ld02fe:
	mov	r3, r8
	sub	r3, #0x60
	cmp	r3, #1
	bhi	.Ld032e
	mov	r2, r10
	ldr	r3, [r2]
	ldr	r4, =.Lee10c
	ldr	r0, [r3, #4]
	add	r3, r6, #5
	ldrb	r2, [r4, r3]
	mov	r1, #0x7a
	add	r3, r5, #5
	ldrb	r3, [r7, r3]
	str	r1, [sp]
	mov	r1, #0x1d
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r1]
	add	r3, r11
	ldr	r0, [sp, #0x24]
	ldr	r1, =ewram_2014b00
	bl	_call_via_r4
.Ld032e:
	mov	r3, r8
	sub	r3, #0x62
	cmp	r3, #1
	bhi	.Ld035e
	mov	r2, r10
	ldr	r3, [r2]
	ldr	r4, =.Lee10c
	ldr	r0, [r3, #4]
	add	r3, r6, #6
	ldrb	r2, [r4, r3]
	mov	r1, #0x4c
	add	r3, r5, #6
	ldrb	r3, [r7, r3]
	str	r1, [sp]
	mov	r1, #0x19
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r1]
	add	r3, r11
	ldr	r0, [sp, #0x24]
	ldr	r1, =ewram_20158d2
	bl	_call_via_r4
.Ld035e:
	mov	r2, r8
	cmp	r2, #0x58
	bne	.Ld03b0
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	mov	r3, #0x80
	ldr	r0, [r0]
	lsl	r3, #9
	str	r3, [r0, #0x28]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x34]
	str	r3, [r0, #0x30]
	mov	r3, r0
	mov	r5, #0
	add	r3, #0x5a
	str	r5, [r0, #0x48]
	strb	r5, [r3]
	sub	r3, #2
	strb	r5, [r3]
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	lsl	r1, #1
	mov	r2, #0
	bl	_Actor_TravelTo
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	mov	r3, #1
	neg	r3, r3
	mov	r1, r3
	mov	r2, #5
	str	r5, [sp]
	bl	SetBattleActorState
.Ld03b0:
	mov	r1, r8
	cmp	r1, #0x78
	bne	.Ld03c8
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	bl	_GetBattleActor
	ldr	r3, =0xab85
	ldr	r2, [r0]
	str	r3, [r2, #0x48]
.Ld03c8:
	ldr	r1, [sp, #0x28]
	ldr	r3, =0x7824
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r4, #1
	add	r8, r4
	mov	r1, r8
	cmp	r1, #0x84
	beq	.Ld03e4
	b	.Ld0002
.Ld03e4:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	ldr	r0, =Func_80dbb9c
	bl	StopTask
	ldr	r3, =iwram_3001e74
	mov	r2, #0xc9
	ldr	r3, [r3]
	lsl	r2, #3
	add	r3, r2
	ldrh	r1, [r3]
	mov	r2, #0x18
	mov	r0, #1
	bl	_AnimTransitionIn
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x4c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Condemn

	.section .rodata
.Lee10c:
	.incrom 0xee10c, 0xee11a
.Lee11a:
	.incrom 0xee11a, 0xee128
