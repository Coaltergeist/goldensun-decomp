	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm929_a28
	.global .Lm929_d4c
	.global .Lm929_890
	.global .Lm929_9c8
	.global gOvl_02008778

gOvl_02008778:
	.incbin "overlays/rom_7b7790/orig.bin", 0x778, (0x868-0x778)
	.global gOvl_02008868
gOvl_02008868:
	.incbin "overlays/rom_7b7790/orig.bin", 0x868, (0x890-0x868)
.Lm929_890:
	.incbin "overlays/rom_7b7790/orig.bin", 0x890, (0x9c8-0x890)
.Lm929_9c8:
	.incbin "overlays/rom_7b7790/orig.bin", 0x9c8, (0xa28-0x9c8)
.Lm929_a28:
	.incbin "overlays/rom_7b7790/orig.bin", 0xa28, (0xd4c-0xa28)
.Lm929_d4c:
	.incbin "overlays/rom_7b7790/orig.bin", 0xd4c
