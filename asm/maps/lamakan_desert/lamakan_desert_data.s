	.include "macros.inc"
	.include "gba.inc"

	.section .mdata2, "aw", %progbits
	.global .Lm933_23b0
	.global .Lm933_23c8
	.global .Lm933_2410
	.global .Lm933_24b8
	.global .Lm933_212c
	.global .Lm933_2174
	.global .Lm933_21d4
	.global .Lm933_2234
	.global .Lm933_22dc

.Lm933_212c:
	.incbin "overlays/rom_7bc690/orig.bin", 0x212c, (0x2174-0x212c)
.Lm933_2174:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2174, (0x21d4-0x2174)
.Lm933_21d4:
	.incbin "overlays/rom_7bc690/orig.bin", 0x21d4, (0x2234-0x21d4)
.Lm933_2234:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2234, (0x22dc-0x2234)
.Lm933_22dc:
	.incbin "overlays/rom_7bc690/orig.bin", 0x22dc, (0x236c-0x22dc)
	.global gOvl_0200a36c
gOvl_0200a36c:
	.incbin "overlays/rom_7bc690/orig.bin", 0x236c, (0x23b0-0x236c)
.Lm933_23b0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x23b0, (0x23c8-0x23b0)
.Lm933_23c8:
	.incbin "overlays/rom_7bc690/orig.bin", 0x23c8, (0x2410-0x23c8)
.Lm933_2410:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2410, (0x24b8-0x2410)
.Lm933_24b8:
	.incbin "overlays/rom_7bc690/orig.bin", 0x24b8, (0x2500-0x24b8)
	.global gOvl_0200a500
gOvl_0200a500:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2500, (0x26bc-0x2500)

	.section .mdata3, "aw", %progbits
	.global gOvl_0200a6bc
	.global .Lm933_26be
	.global .Lm933_26c0

gOvl_0200a6bc:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26bc, (0x26be-0x26bc)
.Lm933_26be:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26be, (0x26c0-0x26be)
.Lm933_26c0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26c0

	.section .bss
	.global .Lm933_26d0
	.global .Lm933_26e0
	.global .Lm933_2730
	.global .Lm933_3030

	.lcomm	.Lm933_unused_26c8, 8
	.lcomm	.Lm933_26d0, 0x10
	.lcomm	.Lm933_26e0, 0x50
	.lcomm	.Lm933_2730, 0x900
	.lcomm	.Lm933_3030, 4

	.section .mdata1, "aw", %progbits
	.global	OvlData_933_2009f80
OvlData_933_2009f80:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1f80, (0x1fa0-0x1f80)
	.ssize	OvlData_933_2009fa0

	.global	OvlData_933_2009fa0
OvlData_933_2009fa0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1fa0, (0x2120-0x1fa0)
	.ssize	OvlData_933_2009fa0
