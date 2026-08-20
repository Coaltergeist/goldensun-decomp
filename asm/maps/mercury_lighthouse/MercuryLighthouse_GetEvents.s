	.include "macros.inc"

.thumb_func_start MercuryLighthouse_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x36
	cmp	r2, r3
	bne	.Lm924_f48
	ldr	r0, =.Lm924_6ad8
	b	.Lm924_f5e
.Lm924_f48:
	ldr	r3, =0x37
	cmp	r2, r3
	bne	.Lm924_f52
	ldr	r0, =.Lm924_6c10
	b	.Lm924_f5e
.Lm924_f52:
	ldr	r3, =0x38
	cmp	r2, r3
	bne	.Lm924_f5c
	ldr	r0, =.Lm924_6d60
	b	.Lm924_f5e
.Lm924_f5c:
	ldr	r0, =.Lm924_6ec8
.Lm924_f5e:
	pop	{r1}
	bx	r1
.func_end MercuryLighthouse_GetEvents

	.section .mdata7, "aw", %progbits
	.global .Lm924_66e8
	.global .Lm924_6700
	.global .Lm924_67a8
	.global .Lm924_6838
	.global .Lm924_6988
	.global .Lm924_60ec
	.global .Lm924_623c
	.global .Lm924_635c
	.global .Lm924_650c

.Lm924_60ec:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x60ec, (0x623c-0x60ec)
.Lm924_623c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x623c, (0x635c-0x623c)
.Lm924_635c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x635c, (0x650c-0x635c)
.Lm924_650c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x650c, (0x6614-0x650c)
	.global gScript_883__0200e614
gScript_883__0200e614:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6614, (0x66e8-0x6614)
.Lm924_66e8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x66e8, (0x6700-0x66e8)
.Lm924_6700:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6700, (0x67a8-0x6700)
.Lm924_67a8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x67a8, (0x6838-0x67a8)
.Lm924_6838:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6838, (0x6988-0x6838)
.Lm924_6988:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6988, (0x6ad8-0x6988)
.Lm924_6ad8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6ad8, (0x6c10-0x6ad8)
.Lm924_6c10:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6c10, (0x6d60-0x6c10)
.Lm924_6d60:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6d60, (0x6ec8-0x6d60)
.Lm924_6ec8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6ec8
