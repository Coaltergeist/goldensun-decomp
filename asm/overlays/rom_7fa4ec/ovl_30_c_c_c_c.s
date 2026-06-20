	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_20091c4
	push	{r5, r6, r7, lr}
	ldr	r3, =.L1c1a
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =gSpriteSlots
	lsl	r3, #2
	add	r3, r2
	ldr	r2, =.L1c18
	ldrh	r3, [r3, #2]
	mov	r14, r2
	lsr	r3, #5
	mov	r1, r14
	mov	r12, r3
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	ldr	r0, =.L1af8
	ldrh	r2, [r2]
	cmp	r3, #0
	beq	.L11f0
	sub	r3, r2, #1
	mov	r2, r14
	strh	r3, [r2]
.L11f0:
	mov	r5, #0
.L11f2:
	mov	r4, r14
	ldrh	r3, [r4]
	lsl	r4, r3, #16
	asr	r1, r4, #16
	neg	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r2, #0
	mov	r7, #0xff
	stmia	r0!, {r2}
	and	r3, r7
	lsl	r2, r5, #21
	ldr	r6, =0x80004000
	orr	r3, r2
	orr	r3, r6
	stmia	r0!, {r3}
	mov	r2, r12
	add	r5, #1
	stmia	r0!, {r2}
	cmp	r5, #7
	bls	.L11f2
	lsr	r3, r4, #31
	add	r3, r1, r3
	asr	r3, #1
	mov	r2, r3
	add	r2, #0x88
	and	r2, r7
	mov	r5, #0
	mov	r7, #0
	mov	r4, r6
	mov	r1, r0
.L1232:
	lsl	r3, r5, #21
	orr	r3, r2
	orr	r3, r4
	str	r3, [r1, #4]
	add	r5, #1
	mov	r3, r12
	str	r7, [r1]
	str	r3, [r1, #8]
	add	r0, #0xc
	add	r1, #0xc
	cmp	r5, #7
	bls	.L1232
	ldr	r3, =.L1c18
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r2, r3, #16
	lsr	r3, #31
	add	r2, r3
	asr	r2, #1
	add	r2, #0x98
	mov	r3, #0xff
	ldr	r4, =0x80004000
	mov	r5, #0
	and	r2, r3
	mov	r6, #0
	mov	r1, r0
.L1266:
	lsl	r3, r5, #21
	orr	r3, r2
	orr	r3, r4
	str	r3, [r1, #4]
	add	r5, #1
	mov	r3, r12
	str	r6, [r1]
	str	r3, [r1, #8]
	add	r1, #0xc
	cmp	r5, #7
	bls	.L1266
	ldr	r6, =.L1af8
	mov	r5, #0
.L1280:
	mov	r0, r6
	mov	r1, #0xff
	add	r5, #1
	bl	__Func_8003dec
	add	r6, #0xc
	cmp	r5, #0x17
	bls	.L1280
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_20091c4

.thumb_func_start OvlFunc_970_20092ac
	push	{r5, r6, lr}
	mov	r0, #0x80
	lsl	r0, #1
	sub	sp, #4
	bl	__Func_8004970
	ldr	r5, =.L1c1a
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
	ldr	r2, =.L1c18
	ldr	r3, .L12f8	@ 0x30
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
.L12f8:
	.word	0x30
	.pool
.func_end OvlFunc_970_20092ac

	.section .data
	.global .L14ac
	.global .L14c8
	.global .L17ec
	.global .L17f0
	.global .L17f4
	.global .L17f8
	.global .L17fc
	.global .L1800
	.global .L1804
	.global .L1808
	.global .L180c
	.global .L1810
	.global .L1818
	.global .L181c
	.global gOvl_020096c8

.L14ac:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x14ac, (0x14c4-0x14ac)
	.global gScript_970__020094c4
gScript_970__020094c4:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x14c4, (0x14c8-0x14c4)
.L14c8:
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
.L17ec:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17ec, (0x17f0-0x17ec)
.L17f0:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17f0, (0x17f4-0x17f0)
.L17f4:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17f4, (0x17f8-0x17f4)
.L17f8:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17f8, (0x17fc-0x17f8)
.L17fc:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17fc, (0x1800-0x17fc)
.L1800:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1800, (0x1804-0x1800)
.L1804:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1804, (0x1808-0x1804)
.L1808:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1808, (0x180c-0x1808)
.L180c:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x180c, (0x1810-0x180c)
.L1810:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1810, (0x1814-0x1810)
	.global gOvl_02009814
gOvl_02009814:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1814, (0x1818-0x1814)
.L1818:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1818, (0x181c-0x1818)
.L181c:
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

	.lcomm	.L1af8, 0x120
	.lcomm	.L1c18, 2
	.lcomm	.L1c1a, 2
