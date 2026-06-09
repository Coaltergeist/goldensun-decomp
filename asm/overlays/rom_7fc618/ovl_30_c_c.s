	.include "macros.inc"

	.section .data
	.global gOvl_020081d8
	.global gOvl_020081ec
	.global gOvl_02008264
	.global gOvl_020081a8

	.incbin "overlays/rom_7fc618/orig.bin", 0xc8, (0x1a8-0xc8)
gOvl_020081a8:
	.incbin "overlays/rom_7fc618/orig.bin", 0x1a8, (0x1d8-0x1a8)
gOvl_020081d8:
	.incbin "overlays/rom_7fc618/orig.bin", 0x1d8, (0x1ec-0x1d8)
gOvl_020081ec:
	.incbin "overlays/rom_7fc618/orig.bin", 0x1ec, (0x264-0x1ec)
gOvl_02008264:
	.incbin "overlays/rom_7fc618/orig.bin", 0x264
