	.include "macros.inc"

	.section .data
	.global .L1c7c
	.global .L1c80
	.global .L1cc0
	.global .L1cfc
	.global .L1d1c
	.global .L1d34
	.global .L1d4c
	.global .L1ecc
	.global .L189c
	.global .L18cc
	.global .L1a34
	.global .L1b9c

.L189c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x189c, (0x18cc-0x189c)
.L18cc:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x18cc, (0x1a34-0x18cc)
.L1a34:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1a34, (0x1b9c-0x1a34)
.L1b9c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1b9c, (0x1c5c-0x1b9c)
.L1c5c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1c5c, (0x1c7c-0x1c5c)
.L1c7c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1c7c, (0x1c80-0x1c7c)
.L1c80:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1c80, (0x1cc0-0x1c80)
.L1cc0:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1cc0, (0x1cfc-0x1cc0)
.L1cfc:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1cfc, (0x1d1c-0x1cfc)
.L1d1c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1d1c, (0x1d34-0x1d1c)
.L1d34:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1d34, (0x1d4c-0x1d34)
.L1d4c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1d4c, (0x1ecc-0x1d4c)
.L1ecc:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1ecc, (0x1f8c-0x1ecc)
