	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80046c4  @ 0x080046c4
	push	{r5, lr}
	ldr	r3, =iwram_3001ac4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L4700
	ldr	r4, =iwram_3001cbc
	ldrb	r3, [r0]
	ldr	r2, [r4]
	mov	r1, #0
	add	r0, #1
	cmp	r3, #0
	beq	.L46fe
	mov	r5, #0xf0
	ldr	r4, =0x6002500
	lsl	r5, #8
.L46e2:
	orr	r3, r5
	strh	r3, [r2]
	add	r2, #2
	cmp	r2, r4
	bne	.L46ee
	ldr	r2, =0x6002000
.L46ee:
	add	r1, #1
	cmp	r1, #0x1f
	bhi	.L46fc
	ldrb	r3, [r0]
	add	r0, #1
	cmp	r3, #0
	bne	.L46e2
.L46fc:
	ldr	r4, =iwram_3001cbc
.L46fe:
	str	r2, [r4]
.L4700:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80046c4

.thumb_func_start Func_8004718  @ 0x08004718
	push	{r5, lr}
	mov	r5, r1
	sub	r3, r5, #1
	cmp	r3, #7
	bls	.L4724
	mov	r5, #8
.L4724:
	bl	Debug_PrintHex
	ldr	r0, =iwram_3001f78
	sub	r0, r5
	bl	Func_80046c4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8004718

.thumb_func_start Func_800473c  @ 0x0800473c
	push	{r5, lr}
	mov	r5, r1
	sub	r3, r5, #1
	cmp	r3, #9
	bls	.L4748
	mov	r5, #0xa
.L4748:
	bl	Func_8004620
	ldr	r0, =iwram_3001f7a
	sub	r0, r5
	bl	Func_80046c4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_800473c

.thumb_func_start ClearVRAM  @ 0x08004760
	sub	sp, #4
	ldr	r3, =0xf000f000
	mov	r0, sp
	str	r3, [r0]
	ldr	r1, =0x6002000
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000140
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =iwram_3001cbc
	ldr	r3, =0x6002000
	str	r3, [r2]
	mov	r2, #0x80
	ldr	r3, =REG_BG0CNT
	lsl	r2, #3
	strh	r2, [r3]
	add	sp, #4
	bx	lr
.func_end ClearVRAM

.thumb_func_start Func_800479c  @ 0x0800479c
	push	{lr}
	ldr	r0, =_FILE_13
	bl	GetFile
	mov	r1, #0xc0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =.L777c
	ldr	r1, =0x50001e0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	mov	r2, #0x83
	ldr	r3, =0x50001e8
	lsl	r2, #7
	strh	r2, [r3]
	ldr	r2, =0x3960
	add	r3, #2
	strh	r2, [r3]
	mov	r2, #0xc5
	lsl	r2, #6
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, =0x2920
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, =0x49a0
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, =0x51c0
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, =0x59e0
	add	r3, #2
	strh	r2, [r3]
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =PAL_Sprites
	add	r1, #0x20
	ldr	r2, =0x800000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	pop	{r0}
	bx	r0
.func_end Func_800479c

.thumb_func_start LoadSpritePalette  @ 0x08004838
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =PAL_Sprites
	ldr	r1, =0x5000200
	ldr	r2, =0x800000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end LoadSpritePalette

	.section .rodata
	.global .L795c
	.global .L7970
	.global PAL_Sprites

.align 2,0
.L777c:
	.incrom 0x777c, 0x779c
PAL_Sprites:
	.incrom 0x779c, 0x795c
.L795c:
	.incrom 0x795c, 0x7970
.L7970:
	.incrom 0x7970, 0x7994
