	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gOvl_02009658

.L14d4:
	.incbin "overlays/rom_7795e8/orig.bin", 0x14d4, (0x14dc-0x14d4)
.L14dc:
	.incbin "overlays/rom_7795e8/orig.bin", 0x14dc, (0x1658-0x14dc)
gOvl_02009658:
	.incbin "overlays/rom_7795e8/orig.bin", 0x1658, (0x1688-0x1658)
	.global gScript_958__02009688
gScript_958__02009688:
	.incbin "overlays/rom_7795e8/orig.bin", 0x1688, (0x168c-0x1688)
	.global gOvl_0200968c
gOvl_0200968c:
	.incbin "overlays/rom_7795e8/orig.bin", 0x168c, (0x16a4-0x168c)
	.global gOvl_020096a4
gOvl_020096a4:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16a4, (0x16b0-0x16a4)
.L16b0:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b0, (0x16b2-0x16b0)
.L16b2:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b2, (0x16b4-0x16b2)
.L16b4:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b4, (0x16b6-0x16b4)
.L16b6:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b6, (0x16b8-0x16b6)
	.global gScript_930__020096b8
gScript_930__020096b8:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b8, (0x16ba-0x16b8)
.L16ba:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16ba, (0x16bc-0x16ba)
.L16bc:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16bc, (0x16c0-0x16bc)
.L16c0:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16c0, (0x16d0-0x16c0)
	.global gOvl_020096d0
gOvl_020096d0:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16d0, (0x16dc-0x16d0)
.L16dc:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16dc, (0x16ec-0x16dc)
.L16ec:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16ec
