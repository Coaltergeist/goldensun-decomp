	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_20092ac
	push	{r5, r6, lr}
	mov	r0, #0x80
	lsl	r0, #1
	sub	sp, #4
	bl	__alloc_ewram
	ldr	r5, =.Lm970_1c1a
	mov	r6, r0
	bl	__AllocSpriteSlot
	ldr	r3, =0x11111111
	strh	r0, [r5]
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r6
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0x80
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	mov	r2, r6
	lsl	r1, #1
	bl	__UploadSpriteGFX
	ldr	r2, =.Lm970_1c18
	ldr	r3, .Lm970_12f8	@ 0x30
	mov	r1, #0xc8
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_970_20091c4
	bl	__StartTask
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lm970_12f8:
	.word	0x30
	.pool
.func_end OvlFunc_970_20092ac

	.section .data
	.global .Lm970_14ac
	.global .Lm970_14c8
	.global .Lm970_17ec
	.global .Lm970_17f0
	.global .Lm970_17f4
	.global .Lm970_17f8
	.global .Lm970_17fc
	.global .Lm970_1800
	.global .Lm970_1804
	.global .Lm970_1808
	.global .Lm970_180c
	.global .Lm970_1810
	.global .Lm970_1818
	.global .Lm970_181c
	.global gOvl_020096c8

.Lm970_14ac:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x14ac, (0x14c4-0x14ac)
	.global gScript_970__020094c4
gScript_970__020094c4:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x14c4, (0x14c8-0x14c4)
.Lm970_14c8:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x14c8, (0x16c8-0x14c8)
gOvl_020096c8:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x16c8, (0x1710-0x16c8)
	.global gOvl_02009710
gOvl_02009710:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1710, (0x171c-0x1710)
	.global gOvl_0200971c
gOvl_0200971c:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x171c, (0x17ac-0x171c)
	.global gOvl_020097ac
gOvl_020097ac:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17ac, (0x17e8-0x17ac)
	.global gOvl_020097e8
gOvl_020097e8:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17e8, (0x17ec-0x17e8)
.Lm970_17ec:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17ec, (0x17f0-0x17ec)
.Lm970_17f0:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17f0, (0x17f4-0x17f0)
.Lm970_17f4:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17f4, (0x17f8-0x17f4)
.Lm970_17f8:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17f8, (0x17fc-0x17f8)
.Lm970_17fc:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17fc, (0x1800-0x17fc)
.Lm970_1800:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1800, (0x1804-0x1800)
.Lm970_1804:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1804, (0x1808-0x1804)
.Lm970_1808:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1808, (0x180c-0x1808)
.Lm970_180c:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x180c, (0x1810-0x180c)
.Lm970_1810:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1810, (0x1814-0x1810)
	.global gOvl_02009814
gOvl_02009814:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1814, (0x1818-0x1814)
.Lm970_1818:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1818, (0x181c-0x1818)
.Lm970_181c:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x181c, (0x1820-0x181c)
	.global gScript_970__02009820
gScript_970__02009820:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1820, (0x18e0-0x1820)
	.global gScript_970__020098e0
gScript_970__020098e0:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x18e0, (0x198c-0x18e0)
	.global gScript_970__0200998c
gScript_970__0200998c:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x198c, (0x1a4c-0x198c)
	.global gScript_970__02009a4c
gScript_970__02009a4c:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1a4c

	.section .bss

	.lcomm	.Lm970_1af8, 0x120
	.lcomm	.Lm970_1c18, 2
	.lcomm	.Lm970_1c1a, 2
