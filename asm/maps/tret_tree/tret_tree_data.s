	.include "macros.inc"
	.include "gba.inc"

	.section .mdata1, "aw", %progbits
	.global gScript_918__02009db4
	.global gScript_898__02009db4
	.global gScript_918__02009ddc
	.global gScript_918__02009e04
	.global gScript_918__02009e2c
	.global gScript_918__02009e54
	.global gScript_918__02009ec8

gScript_918__02009db4:
gScript_898__02009db4:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1db4, (0x1ddc-0x1db4)
gScript_918__02009ddc:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1ddc, (0x1e04-0x1ddc)
gScript_918__02009e04:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1e04, (0x1e2c-0x1e04)
gScript_918__02009e2c:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1e2c, (0x1e54-0x1e2c)
gScript_918__02009e54:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1e54, (0x1ec8-0x1e54)
gScript_918__02009ec8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1ec8, (0x1f00-0x1ec8)
.Lm918_1f00:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1f00, (0x25cc-0x1f00)
	.global gOvl_0200a5cc
gOvl_0200a5cc:
	.incbin "overlays/rom_7a5214/orig.bin", 0x25cc, (0x29d4-0x25cc)
	.global gOvl_0200a9d4
gOvl_0200a9d4:
	.incbin "overlays/rom_7a5214/orig.bin", 0x29d4, (0x2a14-0x29d4)
	.global gOvl_0200aa14
gOvl_0200aa14:
	.incbin "overlays/rom_7a5214/orig.bin", 0x2a14, (0x2a58-0x2a14)
	.global gOvl_0200aa58
gOvl_0200aa58:
	.incbin "overlays/rom_7a5214/orig.bin", 0x2a58, (0x2ae8-0x2a58)
	.global gOvl_0200aae8
gOvl_0200aae8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x2ae8, (0x2db8-0x2ae8)
.Lm918_2db8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x2db8

	.section .bss
	.global .Lm918_2dc0
	.global .Lm918_2dcc
	.global .Lm918_2dd0
	.global .Lm918_2dd0

	.lcomm	.Lm918_2dc0, 0xc
	.lcomm	.Lm918_2dcc, 4
	.lcomm	.Lm918_2dd0, 4

	.section .data
	.global .Lm918_1ca8

.Lm918_1ca8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1ca8, (0x1da8-0x1ca8)
