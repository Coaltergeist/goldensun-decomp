	.include "macros.inc"

	.section .data
	.global .L23b0
	.global .L23c8
	.global .L2410
	.global .L24b8
	.global .L212c
	.global .L2174
	.global .L21d4
	.global .L2234
	.global .L22dc

.L212c:
	.incbin "overlays/rom_7bc690/orig.bin", 0x212c, (0x2174-0x212c)
.L2174:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2174, (0x21d4-0x2174)
.L21d4:
	.incbin "overlays/rom_7bc690/orig.bin", 0x21d4, (0x2234-0x21d4)
.L2234:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2234, (0x22dc-0x2234)
.L22dc:
	.incbin "overlays/rom_7bc690/orig.bin", 0x22dc, (0x236c-0x22dc)
	.global gOvl_0200a36c
gOvl_0200a36c:
	.incbin "overlays/rom_7bc690/orig.bin", 0x236c, (0x23b0-0x236c)
.L23b0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x23b0, (0x23c8-0x23b0)
.L23c8:
	.incbin "overlays/rom_7bc690/orig.bin", 0x23c8, (0x2410-0x23c8)
.L2410:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2410, (0x24b8-0x2410)
.L24b8:
	.incbin "overlays/rom_7bc690/orig.bin", 0x24b8, (0x2500-0x24b8)
	.global gOvl_0200a500
gOvl_0200a500:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2500, (0x26bc-0x2500)
