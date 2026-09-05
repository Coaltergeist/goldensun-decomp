	.include "macros.inc"
	.include "gba.inc"

	.section .mdata3, "aw", %progbits
	.global gScript_924__0200df20
gScript_924__0200df20:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5f20, (0x5f60-0x5f20)
	.global gScript_924__0200df60
gScript_924__0200df60:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5f60, (0x5fa8-0x5f60)
	.global gScript_924__0200dfa8
gScript_924__0200dfa8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5fa8, (0x5ff0-0x5fa8)
	.global gScript_924__0200dff0
gScript_924__0200dff0:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5ff0, (0x6004-0x5ff0)
