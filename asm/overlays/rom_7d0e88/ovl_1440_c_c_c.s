	.include "macros.inc"

	.section .data
	.global .L2e7c
	.global .L2eac
	.global .L2ef4
	.global .L2f3c
	.global .L2f84
	.global .L2fcc
	.global OvlData_947_3174
	.global OvlData_947_3264
	.global OvlData_947_32dc

.L2e7c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e7c, (0x2eac-0x2e7c)
.L2eac:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2eac, (0x2ef4-0x2eac)
.L2ef4:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ef4, (0x2f3c-0x2ef4)
.L2f3c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2f3c, (0x2f84-0x2f3c)
.L2f84:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2f84, (0x2fcc-0x2f84)
.L2fcc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2fcc, (0x3014-0x2fcc)
	.global gOvl_0200b014
gOvl_0200b014:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3014, (0x306c-0x3014)
	.global gOvl_0200b06c
gOvl_0200b06c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x306c, (0x30e4-0x306c)
	.global gOvl_0200b0e4
gOvl_0200b0e4:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x30e4, (0x3174-0x30e4)
OvlData_947_3174:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3174, (0x3264-0x3174)
OvlData_947_3264:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3264, (0x32dc-0x3264)
OvlData_947_32dc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x32dc, (0x339c-0x32dc)
