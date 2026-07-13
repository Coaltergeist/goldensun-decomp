	.include "macros.inc"

	.section .text.after_88ec, "ax", %progbits



	.section .data
	.global .L16c0
	.global .L1700
	.global .L1718

.L16c0:
	.incbin "overlays/rom_7e636c/orig.bin", 0x16c0, (0x1700-0x16c0)
.L1700:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1700, (0x1718-0x1700)
.L1718:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1718, (0x1778-0x1718)
