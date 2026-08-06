	.include "macros.inc"

	.section .data
	.global .Lm940_824
	.global .Lm940_a64
	.global .Lm940_c98
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
.Lm940_824:
	.incbin "overlays/rom_7c5974/orig.bin", 0x824, (0xa64-0x824)
.Lm940_a64:
	.incbin "overlays/rom_7c5974/orig.bin", 0xa64, (0xc98-0xa64)
.Lm940_c98:
	.incbin "overlays/rom_7c5974/orig.bin", 0xc98
