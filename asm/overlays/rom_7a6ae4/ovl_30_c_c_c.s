	.include "macros.inc"

	.section .data
	.global .L1064
	.global .Lbcc
	.global .Lc14
	.global .Lc2c
	.global .Lc5c
	.global .Lcbc
	.global .Le9c
	.global .Lea8
	.global .Lefc
	.global .Lf80
	.global .L9bc
	.global .L9ec
	.global .La64
	.global .Lb24

	.incbin "overlays/rom_7a6ae4/orig.bin", 0x9b0, (0x9bc-0x9b0)
.L9bc:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0x9bc, (0x9ec-0x9bc)
.L9ec:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0x9ec, (0xa64-0x9ec)
.La64:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xa64, (0xb24-0xa64)
.Lb24:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xb24, (0xbcc-0xb24)
.Lbcc:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xbcc, (0xc14-0xbcc)
.Lc14:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xc14, (0xc2c-0xc14)
.Lc2c:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xc2c, (0xc5c-0xc2c)
.Lc5c:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xc5c, (0xcbc-0xc5c)
.Lcbc:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xcbc, (0xe9c-0xcbc)
.Le9c:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xe9c, (0xea8-0xe9c)
.Lea8:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xea8, (0xefc-0xea8)
.Lefc:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xefc, (0xf80-0xefc)
.Lf80:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0xf80, (0x1064-0xf80)
.L1064:
	.incbin "overlays/rom_7a6ae4/orig.bin", 0x1064
