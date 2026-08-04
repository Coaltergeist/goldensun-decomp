	.include "macros.inc"

	.section .data
	.global gScript_949__02008ec0
	.global gScript_949__02008f90
	.global .L14a8
	.global gScript_960__020097a8
	.global .L1a9c
	.global .L1d00
	.global gOvl_02009060

	.incbin "overlays/rom_7d4af4/orig.bin", 0xea8, (0xec0-0xea8)
gScript_949__02008ec0:
	.incbin "overlays/rom_7d4af4/orig.bin", 0xec0, (0xf90-0xec0)
gScript_949__02008f90:
	.incbin "overlays/rom_7d4af4/orig.bin", 0xf90, (0x1060-0xf90)
gOvl_02009060:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x1060, (0x11f8-0x1060)
	.global gOvl_020091f8
gOvl_020091f8:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x11f8, (0x1238-0x11f8)
	.global gOvl_02009238
gOvl_02009238:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x1238, (0x14a8-0x1238)
.L14a8:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x14a8, (0x17a8-0x14a8)
gScript_960__020097a8:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x17a8, (0x1a9c-0x17a8)
.L1a9c:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x1a9c, (0x1d00-0x1a9c)
.L1d00:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x1d00
