	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .L2214
	.global .L2224
	.global .L2228
	.global .L222c
	.global .L2230
	.global .L1f8c
	.global .L1f98
	.global .L2064
	.global .L2190

.L1f8c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1f8c, (0x1f98-0x1f8c)
.L1f98:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1f98, (0x2064-0x1f98)
.L2064:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2064, (0x2190-0x2064)
.L2190:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2190, (0x2214-0x2190)
.L2214:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2214, (0x2224-0x2214)
.L2224:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2224, (0x2228-0x2224)
.L2228:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2228, (0x222c-0x2228)
.L222c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x222c, (0x2230-0x222c)
.L2230:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2230
