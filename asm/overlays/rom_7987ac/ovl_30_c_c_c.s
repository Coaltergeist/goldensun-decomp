	.include "macros.inc"


	.section .data
	.global .L7f4
	.global gOvl_020086dc
	.global MapEntrance_ARRAY_902__020086dc
gOvl_020086dc:
MapEntrance_ARRAY_902__020086dc:
	.incbin "overlays/rom_7987ac/orig.bin", 0x6dc, (0x7cc-0x6dc)
	.global gOvl_020087cc
gOvl_020087cc:
	.incbin "overlays/rom_7987ac/orig.bin", 0x7cc, (0x7f4-0x7cc)
.L7f4:
	.incbin "overlays/rom_7987ac/orig.bin", 0x7f4, (0x98c-0x7f4)
	.global gOvl_0200898c
gOvl_0200898c:
	.incbin "overlays/rom_7987ac/orig.bin", 0x98c
