	.include "macros.inc"

	.section .data
	.global .Lm963_b90
	.global .Lm963_ba8
	.global .Lm963_c98
	.global .Lm963_d10
	.global .Lm963_ddc
	.global .Lm963_e54
	.global gOvl_02008998
	.global .Lm963_a40
	.global .Lm963_ad0

	.incbin "overlays/rom_7ec968/orig.bin", 0x974, (0x998-0x974)
gOvl_02008998:
	.incbin "overlays/rom_7ec968/orig.bin", 0x998, (0xa40-0x998)
.Lm963_a40:
	.incbin "overlays/rom_7ec968/orig.bin", 0xa40, (0xad0-0xa40)
.Lm963_ad0:
	.incbin "overlays/rom_7ec968/orig.bin", 0xad0, (0xb48-0xad0)
	.global gOvl_02008b48
gOvl_02008b48:
	.incbin "overlays/rom_7ec968/orig.bin", 0xb48, (0xb90-0xb48)
.Lm963_b90:
	.incbin "overlays/rom_7ec968/orig.bin", 0xb90, (0xba8-0xb90)
.Lm963_ba8:
	.incbin "overlays/rom_7ec968/orig.bin", 0xba8, (0xc50-0xba8)
	.global gOvl_02008c50
gOvl_02008c50:
	.incbin "overlays/rom_7ec968/orig.bin", 0xc50, (0xc98-0xc50)
.Lm963_c98:
	.incbin "overlays/rom_7ec968/orig.bin", 0xc98, (0xd10-0xc98)
.Lm963_d10:
	.incbin "overlays/rom_7ec968/orig.bin", 0xd10, (0xddc-0xd10)
.Lm963_ddc:
	.incbin "overlays/rom_7ec968/orig.bin", 0xddc, (0xe54-0xddc)
.Lm963_e54:
	.incbin "overlays/rom_7ec968/orig.bin", 0xe54
