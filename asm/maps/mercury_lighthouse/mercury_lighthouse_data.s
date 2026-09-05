	.include "macros.inc"
	.include "gba.inc"

	.section .mdata4, "aw", %progbits
	.global .Lm924_6008
	.global .Lm924_600c

	.global gScript_969__0200e004
gScript_969__0200e004:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6004, (0x6008-0x6004)
.Lm924_6008:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6008, (0x600c-0x6008)
.Lm924_600c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x600c, (0x6010-0x600c)

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

	.section .mdata1, "aw", %progbits
	.global gScript_924__0200de08
	.global gScript_924__0200de14
	.global gScript_924__0200de20
	.global gScript_924__0200de2c
	.global gScript_924__0200de38
	.global .Lm924_5e44

gScript_924__0200de08:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e08, (0x5e14-0x5e08)
gScript_924__0200de14:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e14, (0x5e20-0x5e14)
gScript_924__0200de20:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e20, (0x5e2c-0x5e20)
gScript_924__0200de2c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e2c, (0x5e38-0x5e2c)
gScript_924__0200de38:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e38, (0x5e44-0x5e38)
.Lm924_5e44:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e44, (0x5e64-0x5e44)

	.section .data
	.global .Lm924_5d50
	.global .Lm924_5d90
	.global .Lm924_5da8

.Lm924_5d50:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5d50, (0x5d90-0x5d50)
.Lm924_5d90:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5d90, (0x5da8-0x5d90)
.Lm924_5da8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5da8, (0x5e08-0x5da8)

	.section .mdata5, "aw", %progbits
	.global .Lm924_6010
	.global .Lm924_603a

.Lm924_6010:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6010, (0x603a-0x6010)
.Lm924_603a:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x603a, (0x6064-0x603a)
.Lm924_6064:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6064, (0x608e-0x6064)
.Lm924_608e:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x608e, (0x60b8-0x608e)

	.section .mdata6, "aw", %progbits
.Lm924_60b8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x60b8, (0x60ec-0x60b8)

	.section .mdata2, "aw", %progbits
.Lm924_5e70:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e70, (0x5f20-0x5e70)

	.section .mdata3, "aw", %progbits
	.global gScript_924__0200df20
gScript_924__0200df20:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5f20, (0x5f60-0x5f20)
	.global gScript_924__0200df60
gScript_924__0200df60:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5f60, (0x5fa8-0x5f60)
	.global gScript_924__0200dfa8
gScript_924__0200dfa8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5fa8, (0x5ff0-0x5fa8)
	.global gScript_924__0200dff0
gScript_924__0200dff0:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5ff0, (0x6004-0x5ff0)
