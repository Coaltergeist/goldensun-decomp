	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gScript_923__0200a7b8
	.global gScript_923__0200a7c4
	.global gScript_923__0200a7d0
	.global gScript_923__0200a7dc
	.global gScript_923__0200a7e8
	.global .L27f4

gScript_923__0200a7b8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27b8, (0x27c4-0x27b8)
gScript_923__0200a7c4:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27c4, (0x27d0-0x27c4)
gScript_923__0200a7d0:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27d0, (0x27dc-0x27d0)
gScript_923__0200a7dc:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27dc, (0x27e8-0x27dc)
gScript_923__0200a7e8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27e8, (0x27f4-0x27e8)
.L27f4:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27f4, (0x2814-0x27f4)
