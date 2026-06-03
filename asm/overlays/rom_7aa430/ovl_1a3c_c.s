	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .L27b8
	.global .L27c4
	.global .L27d0
	.global .L27dc
	.global .L27e8
	.global .L27f4

.L27b8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27b8, (0x27c4-0x27b8)
.L27c4:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27c4, (0x27d0-0x27c4)
.L27d0:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27d0, (0x27dc-0x27d0)
.L27dc:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27dc, (0x27e8-0x27dc)
.L27e8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27e8, (0x27f4-0x27e8)
.L27f4:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27f4, (0x2814-0x27f4)
