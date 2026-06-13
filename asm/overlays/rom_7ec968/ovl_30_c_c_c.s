	.include "macros.inc"

	.section .data
	.global .Lb90
	.global .Lba8
	.global .Lc98
	.global .Ld10
	.global .Lddc
	.global .Le54
	.global gOvl_02008998
	.global .La40
	.global .Lad0

	.incbin "overlays/rom_7ec968/orig.bin", 0x974, (0x998-0x974)
gOvl_02008998:
	.incbin "overlays/rom_7ec968/orig.bin", 0x998, (0xa40-0x998)
.La40:
	.incbin "overlays/rom_7ec968/orig.bin", 0xa40, (0xad0-0xa40)
.Lad0:
	.incbin "overlays/rom_7ec968/orig.bin", 0xad0, (0xb48-0xad0)
	.global gOvl_02008b48
gOvl_02008b48:
	.incbin "overlays/rom_7ec968/orig.bin", 0xb48, (0xb90-0xb48)
.Lb90:
	.incbin "overlays/rom_7ec968/orig.bin", 0xb90, (0xba8-0xb90)
.Lba8:
	.incbin "overlays/rom_7ec968/orig.bin", 0xba8, (0xc50-0xba8)
	.global gOvl_02008c50
gOvl_02008c50:
	.incbin "overlays/rom_7ec968/orig.bin", 0xc50, (0xc98-0xc50)
.Lc98:
	.incbin "overlays/rom_7ec968/orig.bin", 0xc98, (0xd10-0xc98)
.Ld10:
	.incbin "overlays/rom_7ec968/orig.bin", 0xd10, (0xddc-0xd10)
.Lddc:
	.incbin "overlays/rom_7ec968/orig.bin", 0xddc, (0xe54-0xddc)
.Le54:
	.incbin "overlays/rom_7ec968/orig.bin", 0xe54
