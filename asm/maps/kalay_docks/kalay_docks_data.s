	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gScript_930__020096b8
	.global .Lm942_16ce
	.global .Lm942_18d4
	.global gOvl_020098ec
	.global .Lm942_19c4
	.global .Lm942_1acc
	.global gOvl_02009ba4
	.global .Lm942_1c7c
	.global .Lm942_1d24
	.global .Lm942_1dcc
	.global .Lm942_1e74
	.global .Lm942_1e80
	.global GFX_Thermometer
	.global .Lm942_2018
	.global .Lm942_2120
	.global .Lm942_224c
	.global .Lm942_230c
	.global .Lm942_2390
	.global .Lm942_1708
	.global .Lm942_1738
	.global .Lm942_17c8
	.global .Lm942_1840

gScript_930__020096b8:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x16b8, (0x16ce-0x16b8)
.Lm942_16ce:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x16ce, (0x16e4-0x16ce)
	.global gScript_942__020096e4
gScript_942__020096e4:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x16e4, (0x1708-0x16e4)
.Lm942_1708:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1708, (0x1738-0x1708)
.Lm942_1738:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1738, (0x17c8-0x1738)
.Lm942_17c8:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x17c8, (0x1840-0x17c8)
.Lm942_1840:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1840, (0x18a0-0x1840)
	.global gOvl_020098a0
gOvl_020098a0:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x18a0, (0x18d4-0x18a0)
.Lm942_18d4:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x18d4, (0x18ec-0x18d4)
gOvl_020098ec:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x18ec, (0x19c4-0x18ec)
.Lm942_19c4:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x19c4, (0x1acc-0x19c4)
.Lm942_1acc:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1acc, (0x1ba4-0x1acc)
gOvl_02009ba4:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1ba4, (0x1c7c-0x1ba4)
.Lm942_1c7c:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1c7c, (0x1d24-0x1c7c)
.Lm942_1d24:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1d24, (0x1dcc-0x1d24)
.Lm942_1dcc:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1dcc, (0x1e74-0x1dcc)
.Lm942_1e74:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1e74, (0x1e80-0x1e74)
.Lm942_1e80:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1e80, (0x1fa0-0x1e80)
GFX_Thermometer:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1fa0, (0x2018-0x1fa0)
.Lm942_2018:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x2018, (0x2120-0x2018)
.Lm942_2120:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x2120, (0x224c-0x2120)
.Lm942_224c:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x224c, (0x230c-0x224c)
.Lm942_230c:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x230c, (0x2390-0x230c)
.Lm942_2390:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x2390
