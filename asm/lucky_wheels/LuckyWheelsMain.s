	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LuckyWheelsMain  @ 0x080f7460
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =0x60e
	mov	r0, #0x29
	sub	sp, #0x74
	bl	galloc_iwram
	mov	r1, #0x80
	str	r0, [sp, #0x2c]
	lsl	r1, #8
	mov	r0, #0x28
	bl	galloc_iwram
	ldr	r1, =0x782c
	str	r0, [sp, #0x28]
	mov	r0, #0x27
	bl	galloc_ewram
	ldr	r1, =0x61c
	str	r0, [sp, #0x24]
	mov	r0, #0x2d
	bl	galloc_ewram
	str	r0, [sp, #0x20]
	ldr	r0, =0xc
	ldr	r5, =ewram_200024c
	bl	Func_8002f3c
	mov	r0, #0x90
	lsl	r0, #1
	add	r5, r0
	mov	r3, #0xff
	strb	r3, [r5]
	ldr	r2, [sp, #0x20]
	mov	r3, #0
	add	r2, #0xa2
	strh	r3, [r2]
	ldr	r1, [sp, #0x20]
	mov	r3, #1
	add	r1, #0x98
	str	r1, [sp, #0x1c]
	str	r3, [r1]
	bl	ClearTasks
	ldr	r5, .Lf74dc	@ 0
	ldr	r3, =iwram_3001d18
	mov	r0, #0
	strb	r5, [r3]
	ldr	r1, =0x6002800
	ldr	r7, .Lf74e0	@ 0xa1a6
	ldr	r4, .Lf74e4	@ 0xa1a8
	mov	r8, r0
	mov	r6, #0
.Lf74d4:
	mov	r2, #0
	mov	r10, r2
	b	.Lf7504

	.align	2, 0
.Lf74dc:
	.word	0
.Lf74e0:
	.word	0xa1a6
.Lf74e4:
	.word	0xa1a8
	.pool

.Lf7504:
	mov	r3, r10
	sub	r3, #5
	cmp	r3, #0x13
	bhi	.Lf751c
	cmp	r6, #2
	ble	.Lf751c
	cmp	r6, #0xd
	bgt	.Lf751c
	mov	r2, r8
	add	r3, r2, r1
	strh	r7, [r3]
	b	.Lf7534
.Lf751c:
	mov	r3, r10
	cmp	r3, #0x1d
	ble	.Lf752a
	mov	r2, r8
	add	r3, r2, r1
	strh	r5, [r3]
	b	.Lf7534
.Lf752a:
	mov	r3, r8
	add	r2, r3, r1
	add	r3, r0, r4
	strh	r3, [r2]
	add	r0, #1
.Lf7534:
	mov	r2, #1
	add	r10, r2
	mov	r3, #2
	mov	r2, r10
	add	r8, r3
	cmp	r2, #0x20
	bne	.Lf7504
	add	r6, #1
	cmp	r6, #0x14
	bne	.Lf74d4
	ldr	r0, =_FILE_76
	bl	GetFile
	ldr	r1, [sp, #0x2c]
	bl	DecompressLZ
	ldr	r0, =_FILE_3f
	bl	GetFile
	ldr	r3, =REG_DMA3SAD
	mov	r4, r0
	ldr	r1, =0x5000140
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r4, #0x20
	mov	r0, r4
	ldr	r1, =gBuffer
	bl	DecompressLZ
	ldr	r0, =gBuffer
	mov	r3, #0
	ldr	r7, =0x600b500
	mov	r8, r3
	mov	r6, #0
	mov	r5, #0
	mov	r12, r0
.Lf757e:
	mov	r1, #0
	lsl	r3, r5, #6
	mov	r2, r12
	mov	r10, r1
	add	r4, r3, r2
.Lf7588:
	mov	r3, r10
	sub	r3, #5
	cmp	r3, #0x13
	bhi	.Lf7598
	cmp	r6, #2
	ble	.Lf7598
	cmp	r6, #0xd
	ble	.Lf75aa
.Lf7598:
	mov	r2, r8
	add	r1, r2, r7
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x20
	add	r8, r3
.Lf75aa:
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	add	r4, #0x20
	cmp	r1, #0x1e
	bne	.Lf7588
	add	r6, #1
	add	r5, #0xf
	cmp	r6, #0x14
	bne	.Lf757e
	mov	r1, #0xc0
	ldr	r3, =Func_80008d4
	ldr	r0, =0x6002d00
	lsl	r1, #2
	bl	_call_via_r3
	ldr	r3, .Lf75f4	@ 0xbf
	mov	r2, #0
	mov	r4, #2
	ldr	r5, =0x6003000
	mov	r8, r2
	mov	r6, #0
	mov	r12, r3
	neg	r4, r4
	mov	r0, #0
.Lf75dc:
	mov	r7, #0
	mov	r2, r0
	mov	r10, r7
	mov	r1, r4
	add	r2, #0x94
.Lf75e6:
	cmp	r1, #0xe
	bls	.Lf7620
	mov	r7, r8
	add	r3, r7, r5
	mov	r7, r12
	strh	r7, [r3]
	b	.Lf7626

	.align	2, 0
.Lf75f4:
	.word	0xbf
	.pool

.Lf7620:
	mov	r7, r8
	add	r3, r7, r5
	strh	r2, [r3]
.Lf7626:
	mov	r3, #1
	add	r10, r3
	mov	r7, #2
	mov	r3, r10
	add	r2, #1
	add	r8, r7
	cmp	r3, #0x20
	bne	.Lf75e6
	add	r6, #1
	add	r4, #1
	add	r0, #0x20
	cmp	r6, #0x14
	bne	.Lf75dc
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Lf7674	@ 0x509
	strh	r3, [r2]
	ldr	r3, .Lf7678	@ 0x680
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, =iwram_3001ad0
	mov	r1, #0
	strh	r1, [r3]
	strh	r1, [r3, #2]
	strh	r1, [r3, #4]
	strh	r1, [r3, #6]
	strh	r1, [r3, #8]
	strh	r1, [r3, #0xa]
	ldr	r3, .Lf767c	@ 0x3737
	add	r2, #0x3c
	strh	r3, [r2]
	ldr	r3, .Lf7680	@ 0x2727
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, .Lf7684	@ 0x3f44
	add	r2, #6
	strh	r3, [r2]
	ldr	r3, .Lf7688	@ 0x1010
	add	r2, #2
	b	.Lf7694

	.align	2, 0
.Lf7674:
	.word	0x509
.Lf7678:
	.word	0x680
.Lf767c:
	.word	0x3737
.Lf7680:
	.word	0x2727
.Lf7684:
	.word	0x3f44
.Lf7688:
	.word	0x1010
	.pool

.Lf7694:
	strh	r3, [r2]
	ldr	r3, =REG_BG1HOFS
	ldr	r2, .Lf76d0	@ 0xff60
	strh	r1, [r3]
	add	r3, #4
	strh	r1, [r3]
	sub	r3, #2
	strh	r2, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r0, =REG_WIN0H
	ldr	r3, .Lf76d4	@ 0x28c8
	ldr	r4, =REG_WIN0V
	strh	r3, [r0]
	ldr	r2, .Lf76d8	@ 0xf0
	ldr	r3, .Lf76dc	@ 0x1878
	strh	r3, [r4]
	strh	r2, [r0]
	ldr	r3, =REG_WIN1H
	ldr	r0, .Lf76e0	@ 0xa0
	strh	r0, [r4]
	strh	r2, [r3]
	add	r3, #4
	strh	r0, [r3]
	ldr	r7, [sp, #0x24]
	ldr	r2, [sp, #0x20]
	mov	r0, #0x80
	lsl	r0, #2
	b	.Lf76f4

	.align	2, 0
.Lf76d0:
	.word	0xff60
.Lf76d4:
	.word	0x28c8
.Lf76d8:
	.word	0xf0
.Lf76dc:
	.word	0x1878
.Lf76e0:
	.word	0xa0
	.pool

.Lf76f4:
	add	r0, r7, r0
	add	r2, #0x8c
	str	r0, [sp, #0x18]
	str	r2, [sp, #0x14]
	str	r1, [r2]
	ldr	r3, [sp, #0x20]
	add	r3, #0x90
	str	r1, [r3]
	ldr	r3, [sp, #0x20]
	ldr	r0, =0x778c
	add	r3, #0x94
	str	r1, [r3]
	add	r3, r7, r0
	str	r1, [r3]
	ldr	r2, [sp, #0x20]
	add	r2, #0xa8
	str	r2, [sp, #0x10]
	str	r1, [r2]
	ldr	r0, =_FILE_8f
	bl	GetFile
	mov	r1, #0xa0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =0x5000080
	ldr	r3, .Lf7760	@ 0x2f8b
	strh	r3, [r2]
	ldr	r3, .Lf7764	@ 0x5bf6
	add	r2, #2
	strh	r3, [r2]
	ldr	r0, =_FILE_40
	bl	GetFile
	ldr	r3, =REG_DMA3SAD
	mov	r4, r0
	ldr	r1, =0x5000200
	ldr	r2, =0x84000078
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xf0
	lsl	r3, #1
	add	r4, r3
	mov	r0, r4
	ldr	r1, =gBuffer
	bl	DecompressLZ
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =gBuffer
	ldr	r1, =0x6010000
	ldr	r2, =0x84001b30
	b	.Lf7794

	.align	2, 0
.Lf7760:
	.word	0x2f8b
.Lf7764:
	.word	0x5bf6
	.pool

.Lf7794:
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =_FILE_41
	bl	GetFile
	ldr	r3, =REG_DMA3SAD
	mov	r4, r0
	ldr	r1, =0x50003e0
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r4, #0x20
	mov	r0, r4
	ldr	r1, =gBuffer
	bl	DecompressLZ
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =gBuffer
	ldr	r1, =0x6016e00
	ldr	r2, =0x84000480
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	_Func_8015f30
	bl	Func_80f731c
	mov	r7, #0
	mov	r10, r7
	ldr	r7, [sp, #0x20]
.Lf77ce:
	mov	r3, #8
	str	r3, [r7]
	mov	r3, #0
	strb	r3, [r7, #0x19]
	mov	r3, #0xff
	strb	r3, [r7, #0x1a]
	mov	r6, #0
	add	r5, r7, #4
.Lf77de:
	bl	Random
	mov	r1, #5
	bl	__umodsi3
	add	r6, #1
	strb	r0, [r5]
	add	r5, #1
	cmp	r6, #0x15
	bne	.Lf77de
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	add	r7, #0x1c
	cmp	r1, #5
	bne	.Lf77ce
	ldr	r3, [sp, #0x20]
	mov	r2, #0
	add	r7, sp, #0x54
	mov	r10, r2
	mov	r4, r7
	mov	r9, r3
.Lf780a:
	mov	r0, #0
	mov	r8, r0
	mov	r5, #0
.Lf7810:
	str	r4, [sp, #8]
	bl	Random
	mov	r1, #0x15
	bl	__umodsi3
	mov	r1, r8
	str	r0, [r5, r7]
	mov	r6, #0
	ldr	r4, [sp, #8]
	cmp	r1, #0
	beq	.Lf786c
	ldr	r3, [r7]
	cmp	r0, r3
	bne	.Lf7854
	mov	r2, #1
	neg	r2, r2
	sub	r5, #4
	add	r8, r2
	b	.Lf786c

	.pool_aligned

.Lf7854:
	add	r6, #1
	cmp	r6, r8
	beq	.Lf786c
	lsl	r3, r6, #2
	ldr	r2, [r5, r4]
	ldr	r3, [r4, r3]
	cmp	r2, r3
	bne	.Lf7854
	mov	r3, #1
	neg	r3, r3
	sub	r5, #4
	add	r8, r3
.Lf786c:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #4
	cmp	r1, #8
	bne	.Lf7810
	mov	r6, #0
	mov	r1, r7
.Lf787c:
	mov	r2, r6
	cmp	r6, #5
	ble	.Lf7884
	mov	r2, #5
.Lf7884:
	ldmia	r1!, {r3}
	mov	r0, r9
	add	r3, #4
	add	r6, #1
	strb	r2, [r0, r3]
	cmp	r6, #8
	bne	.Lf787c
	mov	r2, #1
	add	r10, r2
	mov	r1, #0x1c
	mov	r3, r10
	add	r9, r1
	cmp	r3, #5
	bne	.Lf780a
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	_BuildDraw2DFuncEx
	ldr	r5, =gPtrs
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r1, #8
	str	r3, [sp, #0x30]
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	str	r3, [sp]
	bl	_BuildDraw2DFuncEx
	add	r5, #0xbc
	ldr	r3, [r5]
	mov	r7, sp
	add	r7, #0x30
	str	r7, [sp, #0xc]
	mov	r1, #0x80
	str	r3, [r7, #4]
	ldr	r0, [sp, #0x28]
	ldr	r3, =Func_80008d8
	lsl	r1, #8
	mov	r2, #0
	bl	_call_via_r3
	ldr	r3, =REG_DMA3SAD
	ldr	r0, [sp, #0x28]
	ldr	r1, =0x6003500
	ldr	r2, =0x84002000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0xa0
	lsl	r0, #19
	ldr	r1, [sp, #0x24]
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, [sp, #0x18]
	ldr	r0, =0x5000200
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r5, #0x80
	lsl	r5, #1
	ldr	r1, =0x5000200
	ldr	r0, [sp, #0x18]
	mov	r2, #0
	mov	r3, r5
	bl	Func_80f6038
	mov	r1, #0xa0
	mov	r2, #0
	mov	r3, r5
	lsl	r1, #19
	ldr	r0, [sp, #0x24]
	bl	Func_80f6038
	mov	r2, #0x80
	ldr	r3, .Lf795c	@ 0x3740
	lsl	r2, #19
	strh	r3, [r2]
	mov	r0, #0xe4
	bl	_Func_8078b60
	cmp	r0, #1
	bne	.Lf7982
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #0x12
	mov	r3, #3
	mov	r0, #6
	bl	_CreateUIBox
	mov	r2, #0x99
	mov	r1, r0
	ldr	r0, [sp, #0x20]
	lsl	r2, #3
	add	r3, r0, r2
	str	r1, [r3]
	ldr	r0, =0x909
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	b	.Lf7980

	.align	2, 0
.Lf795c:
	.word	0x3740
	.pool

.Lf7980:
	b	.Lf79b8
.Lf7982:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #0x1a
	mov	r3, #4
	mov	r0, #2
	bl	_CreateUIBox
	mov	r7, #0x99
	ldr	r3, [sp, #0x20]
	ldr	r5, =0x908
	lsl	r7, #3
	mov	r1, r0
	add	r6, r3, r7
	mov	r0, r5
	str	r1, [r6]
	mov	r2, #0
	mov	r3, #0
	add	r5, #1
	bl	_Func_801e7c0
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
.Lf79b8:
	ldr	r0, [sp, #0x24]
	ldr	r1, =0x7824
	mov	r5, #0x90
	add	r2, r0, r1
	mov	r3, #0
	lsl	r5, #3
	str	r3, [r2]
	mov	r1, r5
	ldr	r0, =Func_80f6440
	bl	StartTask
	ldr	r0, =Task_BlitLuckyWheelsAnim
	mov	r1, r5
	bl	StartTask
	ldr	r7, [sp, #0x14]
	ldr	r3, [r7]
	mov	r2, #0
	mov	r11, r2
	cmp	r3, #0xa
	bne	.Lf79e4
	b	.Lf7d26
.Lf79e4:
	mov	r0, r11
	cmp	r0, #0x10
	bgt	.Lf7a0a
	mov	r6, #0x80
	lsl	r5, r0, #12
	lsl	r6, #1
	ldr	r1, =0x5000200
	mov	r2, r5
	mov	r3, r6
	ldr	r0, [sp, #0x18]
	bl	Func_80f6038
	mov	r1, #0xa0
	ldr	r0, [sp, #0x24]
	lsl	r1, #19
	mov	r2, r5
	mov	r3, r6
	bl	Func_80f6038
.Lf7a0a:
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	cmp	r3, #3
	beq	.Lf7a14
	b	.Lf7b98
.Lf7a14:
	mov	r0, r11
	mov	r1, #0x50
	bl	__modsi3
	cmp	r0, #0xf
	bgt	.Lf7a28
	ldr	r0, =_FILE_91
	bl	Func_80f61e8
	b	.Lf7a52
.Lf7a28:
	cmp	r0, #0x1f
	bgt	.Lf7a34
	ldr	r0, =_FILE_93
	bl	Func_80f61e8
	b	.Lf7a52
.Lf7a34:
	cmp	r0, #0x2f
	bgt	.Lf7a40
	ldr	r0, =_FILE_b4
	bl	Func_80f61e8
	b	.Lf7a52
.Lf7a40:
	cmp	r0, #0x3f
	bgt	.Lf7a4c
	ldr	r0, =_FILE_a0
	bl	Func_80f61e8
	b	.Lf7a52
.Lf7a4c:
	ldr	r0, =_FILE_8f
	bl	Func_80f61e8
.Lf7a52:
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2]
	cmp	r3, #0xf
	bgt	.Lf7a62
	bl	Func_80f6148
	ldr	r7, [sp, #0x10]
	ldr	r3, [r7]
.Lf7a62:
	cmp	r3, #0x10
	ble	.Lf7b00
	mov	r3, #7
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0
	bne	.Lf7b00
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	mov	r5, r3
	bl	Random
	mov	r3, #0x1f
	and	r3, r0
	mov	r1, r3
	mov	r2, r11
	add	r5, #0x38
	add	r1, #0x30
	cmp	r2, #0
	bge	.Lf7a90
	add	r2, #7
.Lf7a90:
	mov	r3, #3
	asr	r2, #3
	and	r2, r3
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r2, =gBuffer
	lsl	r3, #10
	add	r7, r3, r2
	lsl	r5, #16
	mov	r3, #0
	lsl	r1, #16
	mov	r8, r3
	mov	r9, r5
	mov	r10, r1
.Lf7aac:
	bl	Random
	mov	r5, #0xff
	and	r5, r0
	bl	Random
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	mov	r1, r10
	mov	r0, r9
	str	r1, [r7, #4]
	str	r0, [r7]
	mov	r0, r6
	bl	sin
	add	r5, #0x40
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	cos
	mov	r3, r5
	mul	r3, r0
	neg	r3, r3
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x10
	str	r3, [r7, #0x18]
	mov	r2, #1
	mov	r3, #0x80
	add	r8, r2
	lsl	r3, #1
	add	r7, #0x1c
	cmp	r8, r3
	bne	.Lf7aac
.Lf7b00:
	mov	r7, #0
	mov	r8, r7
	ldr	r7, =gBuffer
.Lf7b06:
	ldr	r0, [r7, #0x18]
	cmp	r0, #0
	ble	.Lf7b8a
	ldr	r3, [r7]
	ldr	r1, =0xffffff
	sub	r0, #1
	str	r0, [r7, #0x18]
	cmp	r3, r1
	bhi	.Lf7b5c
	ldr	r6, [r7, #4]
	ldr	r2, =0x7fffff
	cmp	r6, r2
	bgt	.Lf7b5c
	cmp	r6, #0
	blt	.Lf7b5c
	mov	r1, #0xc
	asr	r5, r3, #16
	bl	__divsi3
	add	r0, #1
	lsl	r4, r0, #1
	mov	r3, r8
	ldr	r1, =.Lf86f8
	mov	r2, #1
	and	r2, r3
	asr	r6, #16
	sub	r3, r4, #2
	ldrh	r1, [r1, r3]
	sub	r5, r0
	ldr	r3, [sp, #0x2c]
	sub	r6, r0
	str	r4, [sp]
	ldr	r0, [sp, #0xc]
	str	r4, [sp, #4]
	lsl	r2, #2
	ldr	r4, [r2, r0]
	add	r1, r3, r1
	ldr	r0, [sp, #0x28]
	mov	r3, r6
	mov	r2, r5
	bl	_call_via_r4
	ldr	r3, [r7]
.Lf7b5c:
	ldr	r2, [r7, #0xc]
	add	r3, r2
	str	r3, [r7]
	ldr	r1, [r7, #0x10]
	ldr	r3, [r7, #4]
	add	r3, r1
	str	r3, [r7, #4]
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #2
	cmp	r3, #0
	bge	.Lf7b76
	add	r3, #0x3f
.Lf7b76:
	asr	r3, #6
	str	r3, [r7, #0xc]
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r3, #2
	cmp	r3, #0
	bge	.Lf7b86
	add	r3, #0x3f
.Lf7b86:
	asr	r3, #6
	str	r3, [r7, #0x10]
.Lf7b8a:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #3
	add	r7, #0x1c
	cmp	r8, r2
	bne	.Lf7b06
.Lf7b98:
	ldr	r7, [sp, #0x14]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lf7ba6
	cmp	r3, #2
	beq	.Lf7ba6
	b	.Lf7d08
.Lf7ba6:
	mov	r0, #0
	add	r5, sp, #0x38
	mov	r8, r0
	mov	r2, #0
	mov	r3, r5
.Lf7bb0:
	mov	r1, #1
	add	r8, r1
	mov	r7, r8
	stmia	r3!, {r2}
	cmp	r7, #7
	bne	.Lf7bb0
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	cmp	r3, #0
	bne	.Lf7c28
	mov	r2, #1
	str	r2, [r5, #0xc]
	ldr	r1, [sp, #0x1c]
	ldr	r3, [r1]
	cmp	r3, #1
	ble	.Lf7bd6
	str	r2, [r5, #0x10]
	str	r2, [r5, #8]
	ldr	r3, [r1]
.Lf7bd6:
	cmp	r3, #2
	ble	.Lf7be2
	str	r2, [r5, #0x14]
	str	r2, [r5, #4]
	ldr	r7, [sp, #0x1c]
	ldr	r3, [r7]
.Lf7be2:
	cmp	r3, #3
	ble	.Lf7c4c
	str	r2, [r5, #0x18]
	str	r2, [r5]
	b	.Lf7c4c

	.pool_aligned

.Lf7c28:
	mov	r3, r11
	mov	r0, r8
	and	r3, r0
	cmp	r3, #3
	bgt	.Lf7c4c
	ldr	r2, [sp, #0x20]
	mov	r1, #0
	mov	r8, r1
	mov	r0, r5
	add	r2, #0xac
.Lf7c3c:
	ldmia	r2!, {r3}
	str	r3, [r1, r0]
	mov	r3, #1
	add	r8, r3
	mov	r7, r8
	add	r1, #4
	cmp	r7, #7
	bne	.Lf7c3c
.Lf7c4c:
	mov	r0, #0
	mov	r8, r0
.Lf7c50:
	mov	r2, #1
	mov	r1, r8
	eor	r2, r1
	neg	r3, r2
	orr	r3, r2
	lsr	r6, r3, #31
	mov	r3, #0x41
	sub	r6, r3, r6
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.Lf7c76
	mov	r3, r8
	add	r3, #0x13
	mov	r0, #0x14
	mov	r1, r3
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_80f62b8
.Lf7c76:
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.Lf7c8c
	mov	r3, r8
	add	r3, #0x23
	mov	r0, #0x1c
	mov	r1, r3
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_80f62b8
.Lf7c8c:
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	beq	.Lf7ca2
	mov	r3, r8
	add	r3, #0x33
	mov	r0, #0x14
	mov	r1, r3
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_80f62b8
.Lf7ca2:
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	beq	.Lf7cb8
	mov	r3, r8
	add	r3, #0x43
	mov	r0, #0x1c
	mov	r1, r3
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_80f62b8
.Lf7cb8:
	ldr	r3, [r5, #0x14]
	cmp	r3, #0
	beq	.Lf7cce
	mov	r3, r8
	add	r3, #0x53
	mov	r0, #0x14
	mov	r1, r3
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_80f62b8
.Lf7cce:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lf7ce6
	mov	r1, r8
	mov	r3, r8
	add	r1, #5
	add	r3, #0x5b
	mov	r0, #0x1c
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_80f62b8
.Lf7ce6:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	beq	.Lf7cfe
	mov	r1, r8
	mov	r3, r8
	add	r1, #0x61
	add	r3, #0xb
	mov	r0, #0x1c
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_80f62b8
.Lf7cfe:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #3
	bne	.Lf7c50
.Lf7d08:
	ldr	r7, [sp, #0x24]
	ldr	r0, =0x7824
	mov	r2, #1
	add	r3, r7, r0
	str	r2, [r3]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	mov	r1, #1
	add	r11, r1
	cmp	r3, #0xa
	beq	.Lf7d26
	b	.Lf79e4
.Lf7d26:
	mov	r3, #0
	mov	r6, #0x80
	mov	r8, r3
	lsl	r6, #1
.Lf7d2e:
	mov	r7, r8
	mov	r5, #0x80
	lsl	r3, r7, #12
	lsl	r5, #9
	sub	r5, r3
	ldr	r0, [sp, #0x18]
	ldr	r1, =0x5000200
	mov	r2, r5
	mov	r3, r6
	bl	Func_80f6038
	mov	r1, #0xa0
	lsl	r1, #19
	ldr	r0, [sp, #0x24]
	mov	r2, r5
	mov	r3, r6
	bl	Func_80f6038
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0x11
	bne	.Lf7d2e
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r0, =Task_BlitLuckyWheelsAnim
	bl	StopTask
	ldr	r0, =Func_80f6440
	bl	StopTask
	mov	r0, #0x2d
	bl	gfree
	mov	r0, #0x28
	bl	gfree
	mov	r0, #0x27
	bl	gfree
	mov	r0, #0x29
	bl	gfree
	add	sp, #0x74
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end LuckyWheelsMain

