	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .L5e08
	.global .L5e14
	.global .L5e20
	.global .L5e2c
	.global .L5e38
	.global .L5e44

.L5e08:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e08, (0x5e14-0x5e08)
.L5e14:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e14, (0x5e20-0x5e14)
.L5e20:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e20, (0x5e2c-0x5e20)
.L5e2c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e2c, (0x5e38-0x5e2c)
.L5e38:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e38, (0x5e44-0x5e38)
.L5e44:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e44, (0x5e64-0x5e44)
