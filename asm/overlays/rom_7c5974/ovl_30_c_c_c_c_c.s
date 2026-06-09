	.include "macros.inc"

	.section .data
	.global .L824
	.global .La64
	.global .Lc98
	.global gOvl_020084f8
	.global MapEntrance_ARRAY_940__020084f8
gOvl_020084f8:
MapEntrance_ARRAY_940__020084f8:
	.incbin "overlays/rom_7c5974/orig.bin", 0x4f8, (0x630-0x4f8)
	.global gOvl_02008630
gOvl_02008630:
	.incbin "overlays/rom_7c5974/orig.bin", 0x630, (0x65c-0x630)
	.global gOvl_0200865c
gOvl_0200865c:
	.incbin "overlays/rom_7c5974/orig.bin", 0x65c, (0x824-0x65c)
.L824:
	.incbin "overlays/rom_7c5974/orig.bin", 0x824, (0xa64-0x824)
.La64:
	.incbin "overlays/rom_7c5974/orig.bin", 0xa64, (0xc98-0xa64)
.Lc98:
	.incbin "overlays/rom_7c5974/orig.bin", 0xc98
