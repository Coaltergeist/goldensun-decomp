	.include "macros.inc"

	.section .data
	.global .L1d8
	.global .L1ec
	.global .L264
	.global .L1a8

	.incbin "overlays/rom_7fc618/orig.bin", 0xc8, (0x1a8-0xc8)
.L1a8:
	.incbin "overlays/rom_7fc618/orig.bin", 0x1a8, (0x1d8-0x1a8)
.L1d8:
	.incbin "overlays/rom_7fc618/orig.bin", 0x1d8, (0x1ec-0x1d8)
.L1ec:
	.incbin "overlays/rom_7fc618/orig.bin", 0x1ec, (0x264-0x1ec)
.L264:
	.incbin "overlays/rom_7fc618/orig.bin", 0x264
