	.include "macros.inc"

	.section .data

	.global	OvlData_947_200ad64
OvlData_947_200ad64:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2d64, (0x2da8-0x2d64)
	.ssize	OvlData_947_200ad64
