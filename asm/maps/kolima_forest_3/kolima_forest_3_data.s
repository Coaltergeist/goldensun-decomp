	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm915_f10
	.global .Lm915_f50
	.global .Lm915_f68
	.global gOvl_02008fc8

.Lm915_f10:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xf10, (0xf50-0xf10)
.Lm915_f50:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xf50, (0xf68-0xf50)
.Lm915_f68:
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
	.global .Lm915_17e0
	.global .Lm915_10e0

	.lcomm	.Lm915_unused_10d8, 4
	.lcomm	.Lm915_unused_10dc, 4
	.lcomm	.Lm915_10e0, 0x700
	.lcomm	.Lm915_17e0, 0x700
