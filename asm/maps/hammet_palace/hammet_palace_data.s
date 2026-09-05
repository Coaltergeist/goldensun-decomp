	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm938_1df4
	.global .Lm938_1f2c
	.global .Lm938_1f38
	.global .Lm938_1bd4
	.global gScript_887__02009c04

	.global ActorCmd_ARRAY_938__02009b94
ActorCmd_ARRAY_938__02009b94:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1b94, (0x1bd4-0x1b94)
.Lm938_1bd4:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1bd4, (0x1c04-0x1bd4)
gScript_887__02009c04:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1c04, (0x1d9c-0x1c04)
	.global gScript_917__02009d9c
gScript_917__02009d9c:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1d9c, (0x1ddc-0x1d9c)
	.global gScript_918__02009ddc
gScript_918__02009ddc:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1ddc, (0x1df4-0x1ddc)
.Lm938_1df4:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1df4, (0x1f2c-0x1df4)
.Lm938_1f2c:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1f2c, (0x1f38-0x1f2c)
.Lm938_1f38:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1f38
