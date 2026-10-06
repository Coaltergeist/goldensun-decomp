	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start StartTitleScreen  @ 0x080f26ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	str	r0, [sp, #0xc]
	mov	r0, #0
	str	r0, [sp, #8]
	ldr	r5, =iwram_3001f58
	ldrb	r3, [r5]
	mov	r1, #0xe0
	mov	r0, #0x2b
	str	r3, [sp, #4]
	bl	galloc_iwram
	mov	r8, r0
	bl	ClearVRAM
	bl	ClearSprites
	mov	r0, #1
	bl	WaitFrames
	bl	ClearTasks
	add	r1, sp, #8
	ldrb	r1, [r1]
	ldr	r3, =iwram_3001d18
	mov	r2, r1
	strb	r1, [r3]
	strb	r2, [r5]
	bl	LoadGS1TitleGFX
	bl	Func_80f377c
	mov	r1, #0
	mov	r0, #2
	bl	Func_80f3824
	ldr	r1, =gDMATaskCount
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lf276e
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0xf740
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lf276e:
	strh	r4, [r0]
	mov	r0, #0x3c
	bl	Func_80f3858
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_80f2028
	bl	StartTask
	ldr	r0, =iwram_3001ad0
	mov	r1, #0x12
	mov	r3, #1
	add	r1, sp
	mov	r9, r3
	mov	r10, r0
	mov	r11, r1
.Lf278e:
	mov	r2, r8
	ldr	r1, [r2, #8]
	mov	r3, r1
	sub	r3, #0x15
	cmp	r3, #0xd9
	bhi	.Lf27b2
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
	cmp	r3, #0
	beq	.Lf27b2
	mov	r3, r9
	mov	r0, r8
	str	r3, [r0, #0x10]
	mov	r3, #0xef
	str	r3, [r0, #8]
	mov	r1, #0xef
.Lf27b2:
	mov	r2, #0x8b
	add	r3, r1, #1
	lsl	r2, #1
	mov	r1, r8
	str	r3, [r1, #8]
	cmp	r3, r2
	ble	.Lf27c2
	b	.Lf28fa
.Lf27c2:
	ldr	r5, [r1, #0xc]
	mov	r1, #3
	mov	r0, r5
	bl	__modsi3
	cmp	r0, #0
	bne	.Lf280a
	mov	r0, r10
	ldrh	r3, [r0, #6]
	ldr	r1, =0xffff
	mov	r2, r10
	add	r3, r1
	strh	r3, [r2, #6]
	ldrh	r3, [r2, #6]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lf280a
	mov	r0, r8
	ldr	r3, [r0]
	lsl	r2, r3, #4
	sub	r2, r3
	ldr	r0, =ewram_2012580
	ldr	r1, =0x6004b00
	lsl	r2, #6
	sub	r0, r2
	sub	r1, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x800001e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, r8
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	ldr	r5, [r1, #0xc]
.Lf280a:
	mov	r3, r9
	and	r3, r5
	cmp	r3, #0
	bne	.Lf28ec
	mov	r2, r10
	ldrh	r3, [r2, #0xa]
	ldr	r0, =0xffff
	mov	r1, r10
	add	r3, r0
	strh	r3, [r1, #0xa]
	ldrh	r2, [r1, #0xa]
	mov	r3, #7
	and	r2, r3
	cmp	r2, #0
	bne	.Lf28ec
	mov	r0, r8
	ldr	r3, [r0, #4]
	lsl	r1, r3, #3
	cmp	r1, #0x18
	bgt	.Lf288c
	lsl	r1, r3, #4
	sub	r1, r3
	ldr	r2, =0x600e4c0
	ldr	r0, =ewram_20199c0
	lsl	r1, #7
	sub	r0, r1
	ldr	r3, =REG_DMA3SAD
	sub	r1, r2, r1
	ldr	r2, =0x800003c0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.Lf28e4

	.pool_aligned

.Lf288c:
	mov	r3, r11
	mov	r0, #0xa0
	strh	r2, [r3]
	sub	r0, r1
	mov	r1, #0xa0
	bl	__modsi3
	lsl	r1, r0, #4
	sub	r1, r0
	ldr	r2, =0x6004ec0
	lsl	r1, #4
	add	r1, r2
	ldr	r3, =REG_DMA3SAD
	mov	r0, r11
	ldr	r2, =0x810003c0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =0x600f6c0
	ldr	r3, .Lf28d0	@ 0x13b
	mov	r7, #0
.Lf28b4:
	mov	r6, #0
.Lf28b6:
	add	r6, #1
	strh	r3, [r1]
	add	r1, #2
	cmp	r6, #0x1d
	bls	.Lf28b6
	strh	r3, [r1]
	add	r7, #1
	add	r1, #2
	strh	r3, [r1]
	add	r1, #2
	cmp	r7, #4
	bls	.Lf28b4
	b	.Lf28e4

	.align	2, 0
.Lf28d0:
	.word	0x13b
	.pool

.Lf28e4:
	mov	r0, r8
	ldr	r3, [r0, #4]
	add	r3, #1
	str	r3, [r0, #4]
.Lf28ec:
	mov	r1, r8
	ldr	r3, [r1, #8]
	cmp	r3, #0xef
	bne	.Lf29bc
	mov	r2, r9
	str	r2, [r1, #0x10]
	b	.Lf29bc
.Lf28fa:
	ldr	r0, =0x119
	cmp	r3, r0
	bne	.Lf2908
	mov	r3, #2
	mov	r1, r8
	str	r3, [r1, #0x10]
	b	.Lf29bc
.Lf2908:
	ldr	r2, =0x121
	cmp	r3, r2
	bne	.Lf2920
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x10]
	b	.Lf29bc

	.pool_aligned

.Lf2920:
	mov	r1, #0x8c
	lsl	r1, #1
	cmp	r3, r1
	bne	.Lf29bc
	mov	r0, #1
	bl	Func_8003bf8
	ldr	r0, =Func_80f2028
	bl	StopTask
	ldr	r3, =iwram_3001d18
	mov	r2, r9
	strb	r2, [r3]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lf2978	@ 0x681
	strh	r3, [r2]
	ldr	r3, .Lf297c	@ 0x1440
	sub	r2, #0xc
	strh	r3, [r2]
	ldr	r3, .Lf2980	@ 0
	mov	r0, r10
	strh	r3, [r0, #0xa]
	ldr	r0, =_FILE_16
	bl	GetFile
	mov	r1, #0xa0
	mov	r4, r0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000078
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	lsl	r2, #2
	ldr	r5, =gBuffer
	mov	r3, #0xa0
	add	r4, r2
	lsl	r3, #19
	strh	r1, [r3]
	mov	r0, r4
	b	.Lf29a0

	.align	2, 0
.Lf2978:
	.word	0x681
.Lf297c:
	.word	0x1440
.Lf2980:
	.word	0
	.pool

.Lf29a0:
	mov	r1, r5
	bl	DecompressLZ1
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x6004000
	ldr	r2, =0x80004b00
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	ldr	r1, =0x6003000
	lsl	r3, #1
	mov	r7, #0
	b	.Lf29ea
.Lf29bc:
	mov	r0, #1
	bl	WaitFrames
	b	.Lf278e
.Lf29c4:
	mov	r6, #0
.Lf29c6:
	mov	r2, r3
	mov	r0, #0x80
	lsl	r3, r2, #16
	lsl	r0, #9
	add	r3, r0
	add	r6, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r6, #0x1d
	bls	.Lf29c6
	ldr	r2, =0x1ff
	ldr	r0, =0x1ff
	strh	r2, [r1]
	add	r1, #2
	strh	r0, [r1]
	add	r7, #1
	add	r1, #2
.Lf29ea:
	cmp	r7, #0x13
	bls	.Lf29c4
	bl	LoadStaticUIGFX
	bl	ClearVRAM
	ldr	r1, [sp, #0xc]
	cmp	r1, #0
	beq	.Lf2a40
	mov	r1, #0x80
	lsl	r1, #3
	mov	r0, #0xe
	bl	galloc_ewram
	mov	r6, r0
	mov	r1, r6
	ldr	r0, =.Lf38bc
	bl	DecompressLZ1
	mov	r5, r8
	add	r5, #0x80
	mov	r7, #0
.Lf2a16:
	bl	AllocSpriteSlot
	lsl	r2, r7, #8
	lsr	r2, #1
	add	r2, r6, r2
	mov	r1, #0x80
	bl	UploadSpriteGFX
	mov	r2, r5
	mov	r3, #0
	stmia	r2!, {r3}
	ldr	r3, =0x40004000
	stmia	r2!, {r3}
	add	r7, #1
	add	r5, #0xc
	str	r0, [r2]
	cmp	r7, #4
	bls	.Lf2a16
	mov	r0, #0xe
	bl	gfree
.Lf2a40:
	mov	r0, #0x1e
	bl	Func_8003c3c
	bl	Func_8003ce0
	ldr	r3, .Lf2a6c	@ 0x1540
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, [sp, #0xc]
	mov	r2, #0x96
	lsl	r2, #1
	mov	r9, r2
	cmp	r3, #0
	beq	.Lf2a8c
	mov	r0, #0xe1
	lsl	r0, #4
	mov	r9, r0
	b	.Lf2a8c
.Lf2a66:
	mov	r1, #1
	str	r1, [sp, #8]
	b	.Lf2b1c

	.align	2, 0
.Lf2a6c:
	.word	0x1540
	.pool

.Lf2a8c:
	mov	r7, #0
	cmp	r7, r9
	bcs	.Lf2b1c
	ldr	r2, =REG_BLDALPHA
	mov	r11, r2
.Lf2a96:
	ldr	r3, [sp, #0xc]
	cmp	r3, #0
	beq	.Lf2b04
	ldr	r0, =0xfffffe00
	mov	r5, r8
	add	r5, #0x80
	mov	r6, #0
	mov	r4, #0x50
	mov	r10, r0
.Lf2aa8:
	ldr	r3, .Lf2ae0	@ 0x1ff
	mov	r2, r4
	and	r2, r3
	ldrh	r3, [r5, #6]
	mov	r1, r10
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #6]
	mov	r3, #0x7c
	strb	r3, [r5, #4]
	mov	r0, r5
	mov	r1, #0
	str	r4, [sp]
	bl	Func_8003dec
	ldr	r4, [sp]
	add	r6, #1
	add	r4, #0x20
	add	r5, #0xc
	cmp	r6, #2
	bls	.Lf2aa8
	mov	r1, #0x3c
	mov	r0, r7
	bl	__umodsi3
	ldr	r2, =.Lf39b1
	b	.Lf2af0

	.align	2, 0
.Lf2ae0:
	.word	0x1ff
	.pool

.Lf2af0:
	ldr	r3, =0x2f50
	ldrb	r1, [r2, r0]
	ldr	r2, =REG_BLDCNT
	strh	r3, [r2]
	mov	r3, #0x10
	sub	r3, r1
	lsl	r3, #8
	add	r3, r1
	mov	r0, r11
	strh	r3, [r0]
.Lf2b04:
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
	cmp	r3, #0
	bne	.Lf2a66
	mov	r0, #1
	add	r7, #1
	bl	WaitFrames
	cmp	r7, r9
	bcc	.Lf2a96
.Lf2b1c:
	add	r1, sp, #4
	ldrb	r1, [r1]
	ldr	r3, =iwram_3001f58
	mov	r0, #0x2b
	b	.Lf2b38

	.pool_aligned

.Lf2b38:
	strb	r1, [r3]
	bl	gfree
	ldr	r2, =0
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [sp, #8]
	add	sp, #0x14
	b	.Lf2b5c

	.pool_aligned

.Lf2b5c:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end StartTitleScreen

