	.include "macros.inc"

	.section .data
	.global .Lm961_5d0
	.global .Lm961_5e8
	.global .Lm961_5fe
	.global .Lm961_614
	.global .Lm961_758
	.global .Lm961_3f0
	.global .Lm961_4e0
	.global gOvl_020082f0
	.global MapEntrance_ARRAY_961__020082f0
gOvl_020082f0:
MapEntrance_ARRAY_961__020082f0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x2f0, (0x3c8-0x2f0)
	.global gOvl_020083c8
gOvl_020083c8:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x3c8, (0x3f0-0x3c8)
.Lm961_3f0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x3f0, (0x4e0-0x3f0)
.Lm961_4e0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x4e0, (0x5d0-0x4e0)
.Lm961_5d0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x5d0, (0x5e8-0x5d0)
.Lm961_5e8:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x5e8, (0x5fe-0x5e8)
.Lm961_5fe:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x5fe, (0x614-0x5fe)
.Lm961_614:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x614, (0x758-0x614)
.Lm961_758:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x758
