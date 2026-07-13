	.include "macros.inc"

	.section .data
	.global .La28
	.global .Ld4c
	.global .L890
	.global .L9c8
	.global gOvl_02008778

gOvl_02008778:
	.incbin "overlays/rom_7b7790/orig.bin", 0x778, (0x868-0x778)
	.global gOvl_02008868
gOvl_02008868:
	.incbin "overlays/rom_7b7790/orig.bin", 0x868, (0x890-0x868)
.L890:
	.incbin "overlays/rom_7b7790/orig.bin", 0x890, (0x9c8-0x890)
.L9c8:
	.incbin "overlays/rom_7b7790/orig.bin", 0x9c8, (0xa28-0x9c8)
.La28:
	.incbin "overlays/rom_7b7790/orig.bin", 0xa28, (0xd4c-0xa28)
.Ld4c:
	.incbin "overlays/rom_7b7790/orig.bin", 0xd4c
