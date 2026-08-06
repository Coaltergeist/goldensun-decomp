	.include "macros.inc"

	.section .mdata4, "aw", %progbits
	.global .Lm924_6008
	.global .Lm924_600c

	.global gScript_969__0200e004
gScript_969__0200e004:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6004, (0x6008-0x6004)
.Lm924_6008:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6008, (0x600c-0x6008)
.Lm924_600c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x600c, (0x6010-0x600c)
