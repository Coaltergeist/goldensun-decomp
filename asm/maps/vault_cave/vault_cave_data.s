	.include "macros.inc"
	.include "gba.inc"

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

	.section .data
	.global .Lm935_1844

.Lm935_1844:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1844, (0x1884-0x1844)

	.section .mdata3, "aw", %progbits
	.global .Lm935_2214
	.global .Lm935_2224
	.global .Lm935_2228
	.global .Lm935_222c
	.global .Lm935_2230
	.global .Lm935_1f8c
	.global .Lm935_1f98
	.global .Lm935_2064
	.global .Lm935_2190

.Lm935_1f8c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1f8c, (0x1f98-0x1f8c)
.Lm935_1f98:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1f98, (0x2064-0x1f98)
.Lm935_2064:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2064, (0x2190-0x2064)
.Lm935_2190:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2190, (0x2214-0x2190)
.Lm935_2214:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2214, (0x2224-0x2214)
.Lm935_2224:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2224, (0x2228-0x2224)
.Lm935_2228:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2228, (0x222c-0x2228)
.Lm935_222c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x222c, (0x2230-0x222c)
.Lm935_2230:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2230

	.section .mdata1, "aw", %progbits
	.global gScript_935__02009884
gScript_935__02009884:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1884, (0x1888-0x1884)
