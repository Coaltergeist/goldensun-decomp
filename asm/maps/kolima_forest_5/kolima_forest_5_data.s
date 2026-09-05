	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gScript_917__02009d9c
	.global ActorCmd_ARRAY_917__02009ab8
	.global gScript_917__02009af4
	.global gScript_917__02009b30
	.global gScript_917__02009b6c

ActorCmd_ARRAY_917__02009ab8:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1ab8, (0x1af4-0x1ab8)
gScript_917__02009af4:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1af4, (0x1b30-0x1af4)
gScript_917__02009b30:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1b30, (0x1b6c-0x1b30)
gScript_917__02009b6c:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1b6c, (0x1ba4-0x1b6c)
	.global gOvl_02009ba4
gOvl_02009ba4:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1ba4, (0x1c04-0x1ba4)
	.global gScript_887__02009c04
gScript_887__02009c04:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1c04, (0x1c24-0x1c04)
	.global gOvl_02009c24
gOvl_02009c24:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1c24, (0x1c34-0x1c24)
	.global gOvl_02009c34
	.global MapEntrance_ARRAY_941__02009c34
	.global gScript_885__02009c34
gOvl_02009c34:
MapEntrance_ARRAY_941__02009c34:
gScript_885__02009c34:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1c34, (0x1d3c-0x1c34)
	.global gOvl_02009d3c
gOvl_02009d3c:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1d3c, (0x1d9c-0x1d3c)
gScript_917__02009d9c:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1d9c

	.section .bss
	.global .Lm917_24e0
	.global .Lm917_1dc0
	.global .Lm917_1dcc
	.global .Lm917_1dd0
	.global .Lm917_1dd4
	.global .Lm917_1de0
	.global .Lm917_1dc0
	.global .Lm917_1dcc
	.global .Lm917_1dd0
	.global .Lm917_1dd4

	.lcomm	.Lm917_1dc0, 0xc
	.lcomm	.Lm917_1dcc, 4
	.lcomm	.Lm917_1dd0, 4
	.lcomm	.Lm917_1dd4, 4
	.lcomm	.Lm917_unused_1dd8, 4
	.lcomm	.Lm917_1de0, 0x700
	.lcomm	.Lm917_24e0, 0x700

