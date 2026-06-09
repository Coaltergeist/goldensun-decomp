	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gOvl_02009390
	.global gScript_944__0200939c
	.global gScript_960__020093b4
	.global Events
	.global .L1684
	.global gOvl_020093c8
	.global gOvl_020093f8
	.global gOvl_020093fc

	.incbin "overlays/rom_7fcd20/orig.bin", 0x12b0, (0x1390-0x12b0)
gOvl_02009390:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x1390, (0x139c-0x1390)
gScript_944__0200939c:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x139c, (0x13b4-0x139c)
gScript_960__020093b4:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x13b4, (0x13c8-0x13b4)
gOvl_020093c8:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x13c8, (0x13f8-0x13c8)
gOvl_020093f8:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x13f8, (0x13fc-0x13f8)
gOvl_020093fc:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x13fc, (0x1564-0x13fc)
Events:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x1564, (0x1684-0x1564)
.L1684:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x1684
