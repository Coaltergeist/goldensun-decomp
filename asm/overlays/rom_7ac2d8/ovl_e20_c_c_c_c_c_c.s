	.include "macros.inc"

.thumb_func_start OvlFunc_924_2008f14
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1637
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2008f14

.thumb_func_start OvlFunc_924_2008f30
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x36
	cmp	r2, r3
	bne	.Lf48
	ldr	r0, =.L6ad8
	b	.Lf5e
.Lf48:
	ldr	r3, =0x37
	cmp	r2, r3
	bne	.Lf52
	ldr	r0, =.L6c10
	b	.Lf5e
.Lf52:
	ldr	r3, =0x38
	cmp	r2, r3
	bne	.Lf5c
	ldr	r0, =.L6d60
	b	.Lf5e
.Lf5c:
	ldr	r0, =.L6ec8
.Lf5e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_924_2008f30

	.section .data
	.global .L66e8
	.global .L6700
	.global .L67a8
	.global .L6838
	.global .L6988
	.global .L60ec
	.global .L623c
	.global .L635c
	.global .L650c

.L60ec:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x60ec, (0x623c-0x60ec)
.L623c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x623c, (0x635c-0x623c)
.L635c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x635c, (0x650c-0x635c)
.L650c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x650c, (0x6614-0x650c)
	.global gScript_883__0200e614
gScript_883__0200e614:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6614, (0x66e8-0x6614)
.L66e8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x66e8, (0x6700-0x66e8)
.L6700:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6700, (0x67a8-0x6700)
.L67a8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x67a8, (0x6838-0x67a8)
.L6838:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6838, (0x6988-0x6838)
.L6988:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6988, (0x6ad8-0x6988)
.L6ad8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6ad8, (0x6c10-0x6ad8)
.L6c10:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6c10, (0x6d60-0x6c10)
.L6d60:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6d60, (0x6ec8-0x6d60)
.L6ec8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6ec8
