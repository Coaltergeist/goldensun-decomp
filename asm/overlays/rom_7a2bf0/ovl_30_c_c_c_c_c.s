	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lf10
	.global .Lf50
	.global .Lf68
	.global gOvl_02008fc8

.Lf10:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xf10, (0xf50-0xf10)
.Lf50:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xf50, (0xf68-0xf50)
.Lf68:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xf68, (0xfc8-0xf68)
gOvl_02008fc8:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xfc8, (0x1028-0xfc8)
	.global gOvl_02009028
gOvl_02009028:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0x1028, (0x1038-0x1028)
	.global gOvl_02009038
gOvl_02009038:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0x1038, (0x1098-0x1038)
	.global gOvl_02009098
gOvl_02009098:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0x1098

	.section .bss
	.global .L17e0
	.global .L10e0

	.lcomm	.Lunused_10d8, 4
	.lcomm	.Lunused_10dc, 4
	.lcomm	.L10e0, 0x700
	.lcomm	.L17e0, 0x700
