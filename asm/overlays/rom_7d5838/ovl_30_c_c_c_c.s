	.include "macros.inc"

	.section .data
	.global .Le00
	.global .L1040
	.global gScript_886__02009310
	.global .L1670
	.global .L19d0
	.global .L1dcc
	.global gOvl_02008bb4

	.incbin "overlays/rom_7d5838/orig.bin", 0xa90, (0xbb4-0xa90)
gOvl_02008bb4:
	.incbin "overlays/rom_7d5838/orig.bin", 0xbb4, (0xdac-0xbb4)
	.global gOvl_02008dac
gOvl_02008dac:
	.incbin "overlays/rom_7d5838/orig.bin", 0xdac, (0xe00-0xdac)
.Le00:
	.incbin "overlays/rom_7d5838/orig.bin", 0xe00, (0x1040-0xe00)
.L1040:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1040, (0x1310-0x1040)
gScript_886__02009310:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1310, (0x1670-0x1310)
.L1670:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1670, (0x19d0-0x1670)
.L19d0:
	.incbin "overlays/rom_7d5838/orig.bin", 0x19d0, (0x1dcc-0x19d0)
.L1dcc:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1dcc
