
	.section .data
	.global .Lec8
	.global .Lf08
	.global .Lf20
	.global gOvl_02008f80

.Lec8:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xec8, (0xf08-0xec8)
.Lf08:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xf08, (0xf20-0xf08)
.Lf20:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xf20, (0xf80-0xf20)
gOvl_02008f80:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xf80, (0xfe0-0xf80)
	.global gOvl_02008fe0
gOvl_02008fe0:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xfe0, (0xff0-0xfe0)
	.global gOvl_02008ff0
gOvl_02008ff0:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xff0, (0x1068-0xff0)
	.global gOvl_02009068
gOvl_02009068:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0x1068

	.section .bss
	.global .L17b0
	.global .L10b0

	.lcomm	.Lunused_10a8, 4
	.lcomm	.Lunused_10ac, 4
	.lcomm	.L10b0, 0x700
	.lcomm	.L17b0, 0x700
