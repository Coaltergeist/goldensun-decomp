	.include "macros.inc"
	.include "gba.inc"

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
