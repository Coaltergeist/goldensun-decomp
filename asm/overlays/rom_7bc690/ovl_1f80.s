	.include "macros.inc"

	.section .data

	.global	OvlData_933_2009f80
OvlData_933_2009f80:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1f80, (0x1fa0-0x1f80)
	.ssize	OvlData_933_2009fa0

	.global	OvlData_933_2009fa0
OvlData_933_2009fa0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1fa0, (0x2120-0x1fa0)
	.ssize	OvlData_933_2009fa0
