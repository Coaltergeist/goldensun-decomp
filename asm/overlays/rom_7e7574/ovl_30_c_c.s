	.include "macros.inc"

	.section .text.after_8608, "ax", %progbits



	.section .data
	.global .L5ed8
	.global .L5f18
	.global .L5f30

.L5ed8:
	.incbin "overlays/rom_7e7574/orig.bin", 0x5ed8, (0x5f18-0x5ed8)
.L5f18:
	.incbin "overlays/rom_7e7574/orig.bin", 0x5f18, (0x5f30-0x5f18)
.L5f30:
	.incbin "overlays/rom_7e7574/orig.bin", 0x5f30, (0x5f90-0x5f30)
