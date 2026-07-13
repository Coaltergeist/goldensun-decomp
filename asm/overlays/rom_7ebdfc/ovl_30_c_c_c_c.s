	.include "macros.inc"

	.section .data
	.global .L5d0
	.global .L5e8
	.global .L5fe
	.global .L614
	.global .L758
	.global .L3f0
	.global .L4e0
	.global gOvl_020082f0
	.global MapEntrance_ARRAY_961__020082f0
gOvl_020082f0:
MapEntrance_ARRAY_961__020082f0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x2f0, (0x3c8-0x2f0)
	.global gOvl_020083c8
gOvl_020083c8:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x3c8, (0x3f0-0x3c8)
.L3f0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x3f0, (0x4e0-0x3f0)
.L4e0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x4e0, (0x5d0-0x4e0)
.L5d0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x5d0, (0x5e8-0x5d0)
.L5e8:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x5e8, (0x5fe-0x5e8)
.L5fe:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x5fe, (0x614-0x5fe)
.L614:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x614, (0x758-0x614)
.L758:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x758
