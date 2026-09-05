	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gOvl_02008cf0

	.global ActorCmd_ARRAY_889__02008c00
ActorCmd_ARRAY_889__02008c00:
	.incbin "overlays/rom_78ac38/orig.bin", 0xc00, (0xc64-0xc00)
	.global gScript_889__02008c64
gScript_889__02008c64:
	.incbin "overlays/rom_78ac38/orig.bin", 0xc64, (0xcb4-0xc64)
	.global gScript_889__02008cb4
gScript_889__02008cb4:
	.incbin "overlays/rom_78ac38/orig.bin", 0xcb4, (0xcf0-0xcb4)
gOvl_02008cf0:
	.incbin "overlays/rom_78ac38/orig.bin", 0xcf0, (0xd38-0xcf0)
	.global gOvl_02008d38
gOvl_02008d38:
	.incbin "overlays/rom_78ac38/orig.bin", 0xd38, (0xd44-0xd38)
	.global gOvl_02008d44
gOvl_02008d44:
	.incbin "overlays/rom_78ac38/orig.bin", 0xd44, (0xe94-0xd44)
	.global gOvl_02008e94
gOvl_02008e94:
	.incbin "overlays/rom_78ac38/orig.bin", 0xe94, (0xea0-0xe94)
.Lm889_ea0:
	.incbin "overlays/rom_78ac38/orig.bin", 0xea0
