	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gScript_924__0200de08
	.global gScript_924__0200de14
	.global gScript_924__0200de20
	.global gScript_924__0200de2c
	.global gScript_924__0200de38
	.global .L5e44

gScript_924__0200de08:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e08, (0x5e14-0x5e08)
gScript_924__0200de14:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e14, (0x5e20-0x5e14)
gScript_924__0200de20:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e20, (0x5e2c-0x5e20)
gScript_924__0200de2c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e2c, (0x5e38-0x5e2c)
gScript_924__0200de38:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e38, (0x5e44-0x5e38)
.L5e44:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e44, (0x5e64-0x5e44)
