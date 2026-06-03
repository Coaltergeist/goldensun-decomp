	.include "macros.inc"

	.section .data
	.global .L824
	.global .La64
	.global .Lc98
	.global .L4f8

.L4f8:
	.incbin "overlays/rom_7c5974/orig.bin", 0x4f8, (0x630-0x4f8)
.L630:
	.incbin "overlays/rom_7c5974/orig.bin", 0x630, (0x65c-0x630)
.L65c:
	.incbin "overlays/rom_7c5974/orig.bin", 0x65c, (0x824-0x65c)
.L824:
	.incbin "overlays/rom_7c5974/orig.bin", 0x824, (0xa64-0x824)
.La64:
	.incbin "overlays/rom_7c5974/orig.bin", 0xa64, (0xc98-0xa64)
.Lc98:
	.incbin "overlays/rom_7c5974/orig.bin", 0xc98
