	.include "macros.inc"

	.section .data
	.global .Lm885_1efc
	.global .Lm885_1fb0
	.global .Lm885_2028
	.global .Lm885_20ac
	.global gOvl_02009cf4

	.global ActorCmd_ARRAY_885__02009bdc
ActorCmd_ARRAY_885__02009bdc:
	.incbin "overlays/rom_78603c/orig.bin", 0x1bdc, (0x1c34-0x1bdc)
	.global gOvl_02009c34
	.global MapEntrance_ARRAY_941__02009c34
	.global gScript_885__02009c34
gOvl_02009c34:
MapEntrance_ARRAY_941__02009c34:
gScript_885__02009c34:
	.incbin "overlays/rom_78603c/orig.bin", 0x1c34, (0x1ce0-0x1c34)
	.global gScript_885__02009ce0
gScript_885__02009ce0:
	.incbin "overlays/rom_78603c/orig.bin", 0x1ce0, (0x1cf4-0x1ce0)
gOvl_02009cf4:
	.incbin "overlays/rom_78603c/orig.bin", 0x1cf4, (0x1db4-0x1cf4)
	.global gScript_918__02009db4
	.global gScript_898__02009db4
gScript_918__02009db4:
gScript_898__02009db4:
	.incbin "overlays/rom_78603c/orig.bin", 0x1db4, (0x1ddc-0x1db4)
	.global gScript_918__02009ddc
gScript_918__02009ddc:
	.incbin "overlays/rom_78603c/orig.bin", 0x1ddc, (0x1efc-0x1ddc)
.Lm885_1efc:
	.incbin "overlays/rom_78603c/orig.bin", 0x1efc, (0x1fb0-0x1efc)
.Lm885_1fb0:
	.incbin "overlays/rom_78603c/orig.bin", 0x1fb0, (0x2028-0x1fb0)
.Lm885_2028:
	.incbin "overlays/rom_78603c/orig.bin", 0x2028, (0x20ac-0x2028)
.Lm885_20ac:
	.incbin "overlays/rom_78603c/orig.bin", 0x20ac
