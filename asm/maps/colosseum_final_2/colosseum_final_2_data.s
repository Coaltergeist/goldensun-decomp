	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm955_40c0

.Lm955_40c0:
	.incbin "build/usa/reference/overlays/rom_7ddb88/orig.bin", 0x40c0, (0x40c4-0x40c0)

	.section .data1
	.global .Lm955_4834
	.global .Lm955_4838
	.global gOvl_0200c474
	.global gOvl_0200c48c
	.global gOvl_0200c414

gOvl_0200c414:
	.incbin "build/usa/reference/overlays/rom_7ddb88/orig.bin", 0x4414, (0x4474-0x4414)
gOvl_0200c474:
	.incbin "build/usa/reference/overlays/rom_7ddb88/orig.bin", 0x4474, (0x448c-0x4474)
gOvl_0200c48c:
	.incbin "build/usa/reference/overlays/rom_7ddb88/orig.bin", 0x448c, (0x4834-0x448c)
.Lm955_4834:
	.incbin "build/usa/reference/overlays/rom_7ddb88/orig.bin", 0x4834, (0x4838-0x4834)
.Lm955_4838:
	.incbin "build/usa/reference/overlays/rom_7ddb88/orig.bin", 0x4838, (0x483c-0x4838)
	.global gOvl_0200c83c
gOvl_0200c83c:
	.incbin "build/usa/reference/overlays/rom_7ddb88/orig.bin", 0x483c, (0x4a1c-0x483c)
