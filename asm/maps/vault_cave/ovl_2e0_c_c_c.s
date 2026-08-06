	.include "macros.inc"
	.include "gba.inc"

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
