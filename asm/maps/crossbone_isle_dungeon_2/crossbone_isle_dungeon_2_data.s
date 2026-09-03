	.include "macros.inc"
	.include "gba.inc"

	.section .mdata1, "aw", %progbits
	.global	OvlData_947_200ad64
OvlData_947_200ad64:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2d64, (0x2da8-0x2d64)
	.ssize	OvlData_947_200ad64

	.section .data
	.global .Lm947_2ce0
	.global gScript_884__0200acf8
	.global .Lm947_2ca0
	.global .Lm947_2ce0
	.global gScript_884__0200acf8

.Lm947_2ca0:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ca0, (0x2ce0-0x2ca0)
.Lm947_2ce0:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ce0, (0x2cf8-0x2ce0)
gScript_884__0200acf8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2cf8, (0x2d58-0x2cf8)

	.section .mdata4, "aw", %progbits
	.global .Lm947_339c
	.global .Lm947_33a8
	.global .Lm947_3438
	.global .Lm947_3498
	.global .Lm947_351c
	.global .Lm947_3618

.Lm947_339c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x339c, (0x33a8-0x339c)
.Lm947_33a8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x33a8, (0x3438-0x33a8)
.Lm947_3438:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3438, (0x3498-0x3438)
.Lm947_3498:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3498, (0x351c-0x3498)
.Lm947_351c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x351c, (0x3618-0x351c)
.Lm947_3618:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3618
