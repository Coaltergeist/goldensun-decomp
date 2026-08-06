	.include "macros.inc"

	.section .mdata2, "aw", %progbits
	.global .Lm933_23b0
	.global .Lm933_23c8
	.global .Lm933_2410
	.global .Lm933_24b8
	.global .Lm933_212c
	.global .Lm933_2174
	.global .Lm933_21d4
	.global .Lm933_2234
	.global .Lm933_22dc

.Lm933_212c:
	.incbin "overlays/rom_7bc690/orig.bin", 0x212c, (0x2174-0x212c)
.Lm933_2174:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2174, (0x21d4-0x2174)
.Lm933_21d4:
	.incbin "overlays/rom_7bc690/orig.bin", 0x21d4, (0x2234-0x21d4)
.Lm933_2234:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2234, (0x22dc-0x2234)
.Lm933_22dc:
	.incbin "overlays/rom_7bc690/orig.bin", 0x22dc, (0x236c-0x22dc)
	.global gOvl_0200a36c
gOvl_0200a36c:
	.incbin "overlays/rom_7bc690/orig.bin", 0x236c, (0x23b0-0x236c)
.Lm933_23b0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x23b0, (0x23c8-0x23b0)
.Lm933_23c8:
	.incbin "overlays/rom_7bc690/orig.bin", 0x23c8, (0x2410-0x23c8)
.Lm933_2410:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2410, (0x24b8-0x2410)
.Lm933_24b8:
	.incbin "overlays/rom_7bc690/orig.bin", 0x24b8, (0x2500-0x24b8)
	.global gOvl_0200a500
gOvl_0200a500:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2500, (0x26bc-0x2500)
