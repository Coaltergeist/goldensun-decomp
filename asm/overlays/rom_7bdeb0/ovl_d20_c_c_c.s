	.include "macros.inc"

	.section .data
	.global .L2234
	.global .L22c4
	.global .L239c
	.global .L1f6c
	.global .L1f9c
	.global .L2014
	.global .L2134

.L1f6c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f6c, (0x1f9c-0x1f6c)
.L1f9c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f9c, (0x2014-0x1f9c)
.L2014:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2014, (0x2134-0x2014)
.L2134:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2134, (0x21dc-0x2134)
	.global gOvl_0200a1dc
gOvl_0200a1dc:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x21dc, (0x2234-0x21dc)
.L2234:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2234, (0x22c4-0x2234)
.L22c4:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x22c4, (0x239c-0x22c4)
.L239c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x239c, (0x2414-0x239c)
