	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm901_1740
	.global .Lm901_1756
	.global gOvl_0200976c
	.global .Lm901_1782
	.global .Lm901_1798
	.global .Lm901_17ae
	.global .Lm901_17c4
	.global gScript_944__02009450

	.incbin "overlays/rom_797990/orig.bin", 0x12a8, (0x1450-0x12a8)
gScript_944__02009450:
	.incbin "overlays/rom_797990/orig.bin", 0x1450, (0x15a0-0x1450)
	.global gOvl_020095a0
gOvl_020095a0:
	.incbin "overlays/rom_797990/orig.bin", 0x15a0, (0x15d8-0x15a0)
	.global gOvl_020095d8
gOvl_020095d8:
	.incbin "overlays/rom_797990/orig.bin", 0x15d8, (0x1740-0x15d8)
.Lm901_1740:
	.incbin "overlays/rom_797990/orig.bin", 0x1740, (0x1756-0x1740)
.Lm901_1756:
	.incbin "overlays/rom_797990/orig.bin", 0x1756, (0x176c-0x1756)
gOvl_0200976c:
	.incbin "overlays/rom_797990/orig.bin", 0x176c, (0x1782-0x176c)
.Lm901_1782:
	.incbin "overlays/rom_797990/orig.bin", 0x1782, (0x1798-0x1782)
.Lm901_1798:
	.incbin "overlays/rom_797990/orig.bin", 0x1798, (0x17ae-0x1798)
.Lm901_17ae:
	.incbin "overlays/rom_797990/orig.bin", 0x17ae, (0x17c4-0x17ae)
.Lm901_17c4:
	.incbin "overlays/rom_797990/orig.bin", 0x17c4, (0x17dc-0x17c4)
	.global gOvl_020097dc
gOvl_020097dc:
	.incbin "overlays/rom_797990/orig.bin", 0x17dc
