	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gScript_928__020095b0
	.global gScript_928__020096a0
	.global .Lm928_1714
	.global .Lm928_1778
	.global .Lm928_178e
	.global .Lm928_17a4
	.global .Lm928_17ba
	.global .Lm928_17d0
	.global .Lm928_1900
	.global .Lm928_1740
	.global gOvl_020097e8

gScript_928__020095b0:
	.incbin "overlays/rom_7b6668/orig.bin", 0x15b0, (0x16a0-0x15b0)
gScript_928__020096a0:
	.incbin "overlays/rom_7b6668/orig.bin", 0x16a0, (0x1714-0x16a0)
.Lm928_1714:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1714, (0x1740-0x1714)
.Lm928_1740:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1740, (0x1778-0x1740)
.Lm928_1778:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1778, (0x178e-0x1778)
.Lm928_178e:
	.incbin "overlays/rom_7b6668/orig.bin", 0x178e, (0x17a4-0x178e)
.Lm928_17a4:
	.incbin "overlays/rom_7b6668/orig.bin", 0x17a4, (0x17ba-0x17a4)
.Lm928_17ba:
	.incbin "overlays/rom_7b6668/orig.bin", 0x17ba, (0x17d0-0x17ba)
.Lm928_17d0:
	.incbin "overlays/rom_7b6668/orig.bin", 0x17d0, (0x17e8-0x17d0)
gOvl_020097e8:
	.incbin "overlays/rom_7b6668/orig.bin", 0x17e8, (0x18d8-0x17e8)
	.global gOvl_020098d8
gOvl_020098d8:
	.incbin "overlays/rom_7b6668/orig.bin", 0x18d8, (0x1900-0x18d8)
.Lm928_1900:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1900, (0x1ac8-0x1900)
	.global gOvl_02009ac8
gOvl_02009ac8:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1ac8
