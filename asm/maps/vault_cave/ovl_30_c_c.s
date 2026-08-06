	.include "macros.inc"

	.section .mdata2, "aw", %progbits
	.global .Lm935_1c7c
	.global .Lm935_1c80
	.global .Lm935_1cc0
	.global .Lm935_1cfc
	.global .Lm935_1d1c
	.global .Lm935_1d34
	.global .Lm935_1d4c
	.global gScript_887__02009ecc
	.global .Lm935_189c
	.global .Lm935_18cc
	.global .Lm935_1a34
	.global .Lm935_1b9c

.Lm935_189c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x189c, (0x18cc-0x189c)
.Lm935_18cc:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x18cc, (0x1a34-0x18cc)
.Lm935_1a34:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1a34, (0x1b9c-0x1a34)
.Lm935_1b9c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1b9c, (0x1c5c-0x1b9c)
	.global gOvl_02009c5c
gOvl_02009c5c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1c5c, (0x1c7c-0x1c5c)
.Lm935_1c7c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1c7c, (0x1c80-0x1c7c)
.Lm935_1c80:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1c80, (0x1cc0-0x1c80)
.Lm935_1cc0:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1cc0, (0x1cfc-0x1cc0)
.Lm935_1cfc:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1cfc, (0x1d1c-0x1cfc)
.Lm935_1d1c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1d1c, (0x1d34-0x1d1c)
.Lm935_1d34:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1d34, (0x1d4c-0x1d34)
.Lm935_1d4c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1d4c, (0x1ecc-0x1d4c)
gScript_887__02009ecc:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1ecc, (0x1f8c-0x1ecc)
