	.include "macros.inc"

	.section .mdata3, "aw", %progbits
	.global .Lm923_291c
	.global gOvl_0200a920
	.global .Lm923_2924

.Lm923_291c:
	.incbin "overlays/rom_7aa430/orig.bin", 0x291c, (0x2920-0x291c)
gOvl_0200a920:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2920, (0x2924-0x2920)
.Lm923_2924:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2924, (0x2928-0x2924)
