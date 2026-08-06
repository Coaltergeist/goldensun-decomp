	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm947_2ce0
	.global gScript_884__0200acf8
	.global .Lm947_2ca0
	.global .Lm947_2ce0
	.global gScript_884__0200acf8

.Lm947_2ca0:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ca0, (0x2ce0-0x2ca0)
.Lm947_2ce0:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ce0, (0x2cf8-0x2ce0)
gScript_884__0200acf8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2cf8, (0x2d58-0x2cf8)
