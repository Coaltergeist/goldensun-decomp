	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm954_441c
	.global gOvl_0200c194

gOvl_0200c194:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4194, (0x41dc-0x4194)
	.global gOvl_0200c1dc
gOvl_0200c1dc:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x41dc, (0x41f4-0x41dc)
	.global gOvl_0200c1f4
gOvl_0200c1f4:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x41f4, (0x441c-0x41f4)
.Lm954_441c:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x441c, (0x4420-0x441c)
	.global gOvl_0200c420
gOvl_0200c420:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4420, (0x457c-0x4420)
