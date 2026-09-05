	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm905_1554
	.global .Lm905_1594
	.global .Lm905_15ac
	.global .Lm905_160c
	.global gOvl_02009690

.Lm905_1554:
	.incbin "overlays/rom_799abc/orig.bin", 0x1554, (0x1594-0x1554)
.Lm905_1594:
	.incbin "overlays/rom_799abc/orig.bin", 0x1594, (0x15ac-0x1594)
.Lm905_15ac:
	.incbin "overlays/rom_799abc/orig.bin", 0x15ac, (0x160c-0x15ac)
.Lm905_160c:
	.incbin "overlays/rom_799abc/orig.bin", 0x160c, (0x1690-0x160c)
gOvl_02009690:
	.incbin "overlays/rom_799abc/orig.bin", 0x1690, (0x1750-0x1690)
	.global gOvl_02009750
gOvl_02009750:
	.incbin "overlays/rom_799abc/orig.bin", 0x1750, (0x176c-0x1750)
	.global gOvl_0200976c
gOvl_0200976c:
	.incbin "overlays/rom_799abc/orig.bin", 0x176c, (0x1814-0x176c)
	.global gOvl_02009814
gOvl_02009814:
	.incbin "overlays/rom_799abc/orig.bin", 0x1814, (0x18ec-0x1814)
	.global gOvl_020098ec
gOvl_020098ec:
	.incbin "overlays/rom_799abc/orig.bin", 0x18ec
