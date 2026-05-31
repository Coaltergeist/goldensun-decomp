	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .L1390
	.global .L139c
	.global .L13b4
	.global .L1564
	.global .L1684
	.global .L13c8
	.global .L13f8
	.global .L13fc

	.incbin "overlays/rom_7fcd20/orig.bin", 0x12b0, (0x1390-0x12b0)
.L1390:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x1390, (0x139c-0x1390)
.L139c:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x139c, (0x13b4-0x139c)
.L13b4:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x13b4, (0x13c8-0x13b4)
.L13c8:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x13c8, (0x13f8-0x13c8)
.L13f8:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x13f8, (0x13fc-0x13f8)
.L13fc:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x13fc, (0x1564-0x13fc)
.L1564:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x1564, (0x1684-0x1564)
.L1684:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x1684
