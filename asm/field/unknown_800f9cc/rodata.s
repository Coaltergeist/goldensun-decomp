	.include "macros.inc"

	.section .rodata.rom_f9cc_c
	.global gMapData

gMapData:
	.incrom 0x13784, 0x1404c
	.section .rodata.rom_108e4
.L132cc:
	.incrom 0x132cc, 0x132fc
	.section .rodata.rom_11ce0_c_c
	.global gHeightTileFuncs
	.global gScript_080132fc
	.global gScript_080133fc

gScript_080132fc:
	.incrom 0x132fc, 0x133fc
gScript_080133fc:
	.incrom 0x133fc, 0x134fc
gHeightTileFuncs:
	.word	HeightTile_0
	.word	HeightTile_1
	.word	HeightTile_2
	.word	HeightTile_3
	.word	HeightTile_4
	.word	HeightTile_5
	.word	HeightTile_6
	.word	HeightTile_7
	.word	HeightTile_8
	.word	HeightTile_9
	.word	HeightTile_A
	.word	HeightTile_B
	.word	HeightTile_C
	.word	HeightTile_D
	.word	HeightTile_E
	.word	HeightTile_F
