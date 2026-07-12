	.include "macros.inc"

	.section .data
	.global .L2700
	.global .L2740
	.global .L2758

.L2700:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2700, (0x2740-0x2700)
.L2740:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2740, (0x2758-0x2740)
.L2758:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2758, (0x27b8-0x2758)
