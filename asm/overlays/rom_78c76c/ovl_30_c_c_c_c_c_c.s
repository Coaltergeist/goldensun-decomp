	.include "macros.inc"

	.section .data
	.global .L256c
	.global .L2974
	.global .L25c0

.L256c:
	.incbin "overlays/rom_78c76c/orig.bin", 0x256c, (0x25c0-0x256c)
.L25c0:
	.incbin "overlays/rom_78c76c/orig.bin", 0x25c0, (0x2698-0x25c0)
.L2698:
	.incbin "overlays/rom_78c76c/orig.bin", 0x2698, (0x26bc-0x2698)
.L26bc:
	.incbin "overlays/rom_78c76c/orig.bin", 0x26bc, (0x280c-0x26bc)
.L280c:
	.incbin "overlays/rom_78c76c/orig.bin", 0x280c, (0x2974-0x280c)
.L2974:
	.incbin "overlays/rom_78c76c/orig.bin", 0x2974

	.section .bss
	.global .L2980
	.global .L2a50

	.lcomm	.Lunused_2978, 8
	.lcomm	.L2980,	0xc4
	.lcomm	.Lunused_2a48, 8
	.lcomm	.L2a50, 8
