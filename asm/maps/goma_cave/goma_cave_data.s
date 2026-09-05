	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gOvl_02008920
	.global .Lm906_948
	.global .Lm906_978
	.global .Lm906_990
	.global .Lm906_9f0
	.global .Lm906_818
	.global .Lm906_8d8

.Lm906_818:
	.incbin "overlays/rom_79aad8/orig.bin", 0x818, (0x8d8-0x818)
.Lm906_8d8:
	.incbin "overlays/rom_79aad8/orig.bin", 0x8d8, (0x920-0x8d8)
gOvl_02008920:
	.incbin "overlays/rom_79aad8/orig.bin", 0x920, (0x948-0x920)
.Lm906_948:
	.incbin "overlays/rom_79aad8/orig.bin", 0x948, (0x978-0x948)
.Lm906_978:
	.incbin "overlays/rom_79aad8/orig.bin", 0x978, (0x990-0x978)
.Lm906_990:
	.incbin "overlays/rom_79aad8/orig.bin", 0x990, (0x9f0-0x990)
.Lm906_9f0:
	.incbin "overlays/rom_79aad8/orig.bin", 0x9f0
