	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_879_2008454
	push	{r5, r6, lr}
	mov	r0, #0
	ldr	r5, =0x1a
	bl	__Func_8003b70
	ldr	r2, =REG_BG2CNT
	ldr	r3, .L498	@ 0x681
	strh	r3, [r2]
	ldr	r2, =iwram_3001ad0
	mov	r3, #0
	strh	r3, [r2, #0xa]
	mov	r0, r5
	bl	__GetFile
	mov	r1, #0xa0
	ldr	r6, =0x1ff
	mov	r4, r0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xe0
	lsl	r3, #1
	add	r4, r3
	mov	r0, r4
	ldr	r1, =gBuffer
	bl	__DecompressLZ
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =gBuffer
	ldr	r1, =0x6006800
	ldr	r2, =0x84002580
	b	.L4c0

	.align	2, 0
.L498:
	.word	0x681
	.pool

.L4c0:
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xd0
	ldr	r1, =0x6003000
	lsl	r3, #1
	mov	r4, #0
.L4cc:
	mov	r0, #0
.L4ce:
	mov	r2, r3
	mov	r5, #0x80
	lsl	r3, r2, #16
	lsl	r5, #9
	add	r3, r5
	add	r0, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r0, #0x1d
	bls	.L4ce
	strh	r6, [r1]
	add	r4, #1
	add	r1, #2
	strh	r6, [r1]
	add	r1, #2
	cmp	r4, #0x13
	bls	.L4cc
	ldr	r3, =iwram_3001ad0
	mov	r4, #0
	mov	r2, #0
.L4f8:
	add	r4, #1
	strh	r2, [r3, #2]
	strh	r2, [r3]
	add	r3, #4
	cmp	r4, #3
	bls	.L4f8
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =iwram_3001ad0
	ldr	r1, =REG_BG0HOFS
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_3001e70
	ldr	r2, [r3]
	mov	r3, #0xa0
	lsl	r3, #5
	strh	r3, [r2, #0x14]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_879_2008454

	.section .data
	.global gOvl_020085f8
	.global MapEntrance_ARRAY_879__020085f8
gOvl_020085f8:
MapEntrance_ARRAY_879__020085f8:
	.incbin "overlays/rom_779188/orig.bin", 0x5f8, (0x628-0x5f8)
	.global gOvl_02008628
gOvl_02008628:
	.incbin "overlays/rom_779188/orig.bin", 0x628, (0x62c-0x628)
	.global gOvl_0200862c
gOvl_0200862c:
	.incbin "overlays/rom_779188/orig.bin", 0x62c, (0x644-0x62c)
	.global gOvl_02008644
gOvl_02008644:
	.incbin "overlays/rom_779188/orig.bin", 0x644, (0x650-0x644)
.L650:
	.incbin "overlays/rom_779188/orig.bin", 0x650

	.section .bss

	.lcomm	.Lunused_658, 0x34
	.lcomm	.L68c, 4
	.lcomm	.Lunused_690, 0x10
	.lcomm	.L6a0, 0xc
