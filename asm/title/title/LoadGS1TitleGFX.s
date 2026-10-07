	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LoadGS1TitleGFX  @ 0x080f24a0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001efc
	ldr	r6, .Lf24e0	@ 0
	ldr	r7, [r3]
	mov	r3, #0x80
	lsl	r3, #19
	strh	r6, [r3]
	ldr	r0, =_FILE_15
	bl	GetFile
	ldr	r3, =REG_DMA3SAD
	mov	r4, r0
	ldr	r1, =0x5000200
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x5000200
	strh	r6, [r3]
	mov	r3, #0x80
	lsl	r3, #2
	mov	r8, r3
	ldr	r5, =gBuffer
	add	r4, r8
	mov	r1, r5
	mov	r0, r4
	bl	DecompressLZ1
	ldr	r3, =REG_DMA3SAD
	b	.Lf24fc

	.align	2, 0
.Lf24e0:
	.word	0
	.pool

.Lf24fc:
	mov	r0, r5
	ldr	r1, =0x6010000
	ldr	r2, =0x80000f00
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =_FILE_17
	bl	GetFile
	mov	r1, #0xa0
	mov	r4, r0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xa0
	lsl	r3, #19
	add	r4, r8
	strh	r6, [r3]
	mov	r1, r5
	mov	r0, r4
	bl	DecompressLZ1
	mov	r1, #0xc0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =ewram_2012940
	lsl	r1, #19
	ldr	r2, =0x80002760
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =ewram_201a140
	ldr	r1, =0x6004ec0
	ldr	r2, =0x80004ec0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, =0x1ff
	ldr	r1, =0x600f000
	ldr	r3, =0x267
	mov	r4, #0
.Lf254a:
	mov	r0, #0x1d
.Lf254c:
	mov	r2, r3
	mov	r6, #0x80
	lsl	r3, r2, #16
	lsl	r6, #9
	add	r3, r6
	sub	r0, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r0, #0
	bge	.Lf254c
	strh	r5, [r1]
	add	r4, #1
	add	r1, #2
	strh	r5, [r1]
	add	r1, #2
	cmp	r4, #0xa
	ble	.Lf254a
	ldr	r3, =0x13b
	mov	r4, #0xb
.Lf2574:
	mov	r0, #0x1d
.Lf2576:
	mov	r2, r3
	mov	r6, #0x80
	lsl	r3, r2, #16
	lsl	r6, #9
	add	r3, r6
	sub	r0, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r0, #0
	bge	.Lf2576
	strh	r5, [r1]
	add	r4, #1
	add	r1, #2
	strh	r5, [r1]
	add	r1, #2
	cmp	r4, #0x1f
	ble	.Lf2574
	mov	r3, #0x96
	ldr	r1, =0x600f800
	lsl	r3, #1
	mov	r4, #0
.Lf25a2:
	mov	r0, #0x1d
.Lf25a4:
	mov	r2, r3
	mov	r6, #0x80
	lsl	r3, r2, #16
	lsl	r6, #9
	add	r3, r6
	sub	r0, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r0, #0
	bge	.Lf25a4
	strh	r5, [r1]
	add	r4, #1
	add	r1, #2
	strh	r5, [r1]
	add	r1, #2
	cmp	r4, #0xa
	ble	.Lf25a2
	mov	r3, #0
	mov	r4, #0xb
.Lf25cc:
	mov	r0, #0x1d
.Lf25ce:
	mov	r2, r3
	mov	r6, #0x80
	lsl	r3, r2, #16
	lsl	r6, #9
	add	r3, r6
	sub	r0, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r0, #0
	bge	.Lf25ce
	strh	r5, [r1]
	add	r4, #1
	add	r1, #2
	strh	r5, [r1]
	add	r1, #2
	cmp	r4, #0x1f
	ble	.Lf25cc
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Lf2620	@ 0x1f43
	strh	r3, [r2]
	ldr	r3, .Lf2624	@ 0x1e81
	add	r2, #2
	strh	r3, [r2]
	ldr	r1, .Lf2628	@ 0xf0
	ldr	r3, =REG_WIN0H
	ldr	r2, .Lf262c	@ 0x9f
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lf2630	@ 0x1616
	strh	r3, [r2]
	ldr	r3, =iwram_3001ad0
	mov	r2, #0
	mov	r4, #3
	b	.Lf2680

	.align	2, 0
.Lf2620:
	.word	0x1f43
.Lf2624:
	.word	0x1e81
.Lf2628:
	.word	0xf0
.Lf262c:
	.word	0x9f
.Lf2630:
	.word	0x1616
	.pool

.Lf2680:
	sub	r4, #1
	strh	r2, [r3, #2]
	strh	r2, [r3]
	add	r3, #4
	cmp	r4, #0
	bge	.Lf2680
	ldr	r0, =iwram_3001ad0
	mov	r3, #0
	mov	r2, #0x60
	strh	r2, [r0, #6]
	strh	r2, [r0, #0xa]
	str	r3, [r7, #8]
	str	r3, [r7]
	str	r3, [r7, #4]
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x14]
	str	r3, [r7, #0x10]
	ldr	r1, =REG_BG0HOFS
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, .Lf26c0	@ 0x3fbf
	add	r1, #0x40
	strh	r3, [r1]
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Lf26c4	@ 0x1010
	strh	r3, [r2]
	ldr	r3, .Lf26c8	@ 0x3f44
	strh	r3, [r1]
	b	.Lf26e0

	.align	2, 0
.Lf26c0:
	.word	0x3fbf
.Lf26c4:
	.word	0x1010
.Lf26c8:
	.word	0x3f44
	.pool

.Lf26e0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end LoadGS1TitleGFX

