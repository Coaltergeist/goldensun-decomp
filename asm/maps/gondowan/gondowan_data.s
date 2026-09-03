	.include "macros.inc"
	.include "gba.inc"

	.section .mdata1, "aw", %progbits
	.global gOvl_0200991c
	.global .Lm958_195c
	.global .Lm958_1974
	.global .Lm958_19d4
	.global gScript_970__02009a4c
	.global .Lm958_1aac
	.global .Lm958_1b3c
	.global .Lm958_1b48
	.global .Lm958_1bcc
	.global .Lm958_1c80
	.global gScript_885__02009ce0
	.global .Lm958_1784
	.global .Lm958_17b4
	.global .Lm958_17fc
	.global .Lm958_1874

.Lm958_1784:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1784, (0x17b4-0x1784)
.Lm958_17b4:
	.incbin "overlays/rom_7e636c/orig.bin", 0x17b4, (0x17fc-0x17b4)
.Lm958_17fc:
	.incbin "overlays/rom_7e636c/orig.bin", 0x17fc, (0x1874-0x17fc)
.Lm958_1874:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1874, (0x191c-0x1874)
gOvl_0200991c:
	.incbin "overlays/rom_7e636c/orig.bin", 0x191c, (0x195c-0x191c)
.Lm958_195c:
	.incbin "overlays/rom_7e636c/orig.bin", 0x195c, (0x1974-0x195c)
.Lm958_1974:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1974, (0x19d4-0x1974)
.Lm958_19d4:
	.incbin "overlays/rom_7e636c/orig.bin", 0x19d4, (0x1a4c-0x19d4)
gScript_970__02009a4c:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1a4c, (0x1aac-0x1a4c)
.Lm958_1aac:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1aac, (0x1b3c-0x1aac)
.Lm958_1b3c:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1b3c, (0x1b48-0x1b3c)
.Lm958_1b48:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1b48, (0x1bcc-0x1b48)
.Lm958_1bcc:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1bcc, (0x1c80-0x1bcc)
.Lm958_1c80:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1c80, (0x1ce0-0x1c80)
gScript_885__02009ce0:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1ce0
