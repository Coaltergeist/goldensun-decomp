	.include "macros.inc"

	.section .data
	.global .Lm920_1064
	.global gOvl_02008bcc
	.global .Lm920_c14
	.global .Lm920_c2c
	.global .Lm920_c5c
	.global .Lm920_cbc
	.global .Lm920_e9c
	.global .Lm920_ea8
	.global .Lm920_efc
	.global gOvl_02008f80
	.global .Lm920_9bc
	.global .Lm920_9ec
	.global .Lm920_a64
	.global .Lm920_b24

	.incbin "overlays/rom_7a6ae4/orig.bin", 0x9b0, (0x9bc-0x9b0)
.Lm920_9bc:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0x9bc, (0x9ec-0x9bc)
.Lm920_9ec:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0x9ec, (0xa64-0x9ec)
.Lm920_a64:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xa64, (0xb24-0xa64)
.Lm920_b24:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xb24, (0xbcc-0xb24)
gOvl_02008bcc:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xbcc, (0xc14-0xbcc)
.Lm920_c14:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xc14, (0xc2c-0xc14)
.Lm920_c2c:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xc2c, (0xc5c-0xc2c)
.Lm920_c5c:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xc5c, (0xcbc-0xc5c)
.Lm920_cbc:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xcbc, (0xe9c-0xcbc)
.Lm920_e9c:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xe9c, (0xea8-0xe9c)
.Lm920_ea8:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xea8, (0xefc-0xea8)
.Lm920_efc:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xefc, (0xf80-0xefc)
gOvl_02008f80:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xf80, (0x1064-0xf80)
.Lm920_1064:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0x1064
