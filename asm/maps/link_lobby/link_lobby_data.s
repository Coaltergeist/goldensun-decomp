	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global CHAR_ARRAY_ARRAY_971__02009928
	.global .L1940
	.global gOvl_02009948
	.global gOvl_020099f0
	.global .L19f4
	.global gScript_887__02009c04

CHAR_ARRAY_ARRAY_971__02009928:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1928, (0x1940-0x1928)
.L1940:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1940, (0x1948-0x1940)
gOvl_02009948:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1948, (0x19f0-0x1948)
gOvl_020099f0:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x19f0, (0x19f4-0x19f0)
.L19f4:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x19f4, (0x1c04-0x19f4)
gScript_887__02009c04:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1c04, (0x1e14-0x1c04)
	.global gOvl_02009e14
gOvl_02009e14:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1e14

	.section .bss
	.global .L1f4c
	.global .L1f50

	.lcomm	.L1f4c, 4
	.lcomm	.L1f50, 4
