	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gScript_926__0200c638
	.global .Lm926_477a
	.global .Lm926_4790
	.global .Lm926_48f0
	.global .Lm926_4998
	.global .Lm926_4ae8
	.global .Lm926_4b90
	.global .Lm926_4d40
	.global .Lm926_5184
	.global gScript_943__0200c7a8
	.global .Lm926_4838

gScript_926__0200c638:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4638, (0x4764-0x4638)
	.global gScript_943__0200c764
gScript_943__0200c764:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4764, (0x477a-0x4764)
.Lm926_477a:
	.incbin "overlays/rom_7b2078/orig.bin", 0x477a, (0x4790-0x477a)
.Lm926_4790:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4790, (0x47a8-0x4790)
gScript_943__0200c7a8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x47a8, (0x4838-0x47a8)
.Lm926_4838:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4838, (0x48c8-0x4838)
	.global gOvl_0200c8c8
gOvl_0200c8c8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x48c8, (0x48f0-0x48c8)
.Lm926_48f0:
	.incbin "overlays/rom_7b2078/orig.bin", 0x48f0, (0x4998-0x48f0)
.Lm926_4998:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4998, (0x4ae8-0x4998)
.Lm926_4ae8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4ae8, (0x4b90-0x4ae8)
.Lm926_4b90:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4b90, (0x4d40-0x4b90)
.Lm926_4d40:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4d40, (0x5184-0x4d40)
.Lm926_5184:
	.incbin "overlays/rom_7b2078/orig.bin", 0x5184, (0x51d8-0x5184)
.Lm926_51d8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x51d8
