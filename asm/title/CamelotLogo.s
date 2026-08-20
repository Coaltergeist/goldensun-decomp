	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CamelotLogo  @ 0x080f2d54
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r2, =iwram_3001d18
	mov	r3, #1
	strb	r3, [r2]
	ldr	r6, =0x19
	bl	ClearTasks
	mov	r0, #1
	bl	Func_8003b70
	bl	ClearVRAM
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lf2db0	@ 0x685
	strh	r3, [r2]
	ldr	r3, .Lf2db4	@ 0x1440
	sub	r2, #0xc
	strh	r3, [r2]
	ldr	r3, =iwram_3001ad0
	mov	r5, #0
	strh	r5, [r3, #0xa]
	ldr	r5, =gBuffer
	mov	r0, r6
	mov	r8, r3
	bl	GetFile
	mov	r1, r5
	bl	DecompressLZ
	mov	r6, r5
	mov	r1, #0xa0
	ldr	r3, =REG_DMA3SAD
	mov	r0, r6
	lsl	r1, #19
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xe0
	lsl	r3, #1
	add	r6, r3
	b	.Lf2dd4

	.align	2, 0
.Lf2db0:
	.word	0x685
.Lf2db4:
	.word	0x1440
	.pool

.Lf2dd4:
	mov	r0, r6
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x6003000
	ldr	r2, =0x84000200
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	lsl	r3, #4
	add	r6, r3
	mov	r0, r6
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x6004000
	ldr	r2, =0x84001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	lsl	r3, #7
	add	r6, r3
	mov	r5, #0
	mov	r2, #0
	mov	r3, r8
.Lf2dfe:
	add	r5, #1
	strh	r2, [r3, #2]
	strh	r2, [r3]
	add	r3, #4
	cmp	r5, #3
	bls	.Lf2dfe
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =iwram_3001ad0
	ldr	r1, =REG_BG0HOFS
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	LoadStaticUIGFX
	bl	ClearVRAM
	mov	r0, #1
	bl	Func_8003c3c
	bl	Func_8003ce0
	ldr	r3, .Lf2e40	@ 0x1540
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r0, [r3]
	mov	r3, #3
	lsr	r0, #3
	and	r0, r3
	lsl	r0, #10
	mov	r5, #0
	b	.Lf2e80

	.align	2, 0
.Lf2e40:
	.word	0x1540
	.pool

.Lf2e68:
	mov	r0, #1
	add	r5, #1
	bl	WaitFrames
	cmp	r5, #0x77
	bhi	.Lf2e98
	ldr	r3, =iwram_3001e40
	ldr	r0, [r3]
	mov	r3, #3
	lsr	r0, #3
	and	r0, r3
	lsl	r0, #10
.Lf2e80:
	ldr	r3, =REG_DMA3SAD
	add	r0, r6
	ldr	r1, =0x6004100
	ldr	r2, =0x840000d0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
	cmp	r3, #0
	beq	.Lf2e68
.Lf2e98:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end CamelotLogo

