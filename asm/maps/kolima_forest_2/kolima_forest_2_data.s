	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm914_ec8
	.global .Lm914_f08
	.global .Lm914_f20
	.global gOvl_02008f80

.Lm914_ec8:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xec8, (0xf08-0xec8)
.Lm914_f08:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xf08, (0xf20-0xf08)
.Lm914_f20:
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
	.global .Lm914_10b0
	.global .Lm914_17b0
	.global .Lm914_17b0
	.global .Lm914_10b0

	.lcomm	.Lm914_unused_10a8, 4
	.lcomm	.Lm914_unused_10ac, 4
	.lcomm	.Lm914_10b0, 0x700
	.lcomm	.Lm914_17b0, 0x700
