	.include "macros.inc"

	.section .data
	.global gOvl_0200aafc
	.global MapEntrance_ARRAY_890__0200aafc
gOvl_0200aafc:
MapEntrance_ARRAY_890__0200aafc:
	.incbin "overlays/rom_78b2ac/orig.bin", 0x2afc, (0x2bec-0x2afc)
	.global gOvl_0200abec
gOvl_0200abec:
	.incbin "overlays/rom_78b2ac/orig.bin", 0x2bec, (0x2c14-0x2bec)
	.global gScript_884__0200ac14
gScript_884__0200ac14:
	.incbin "overlays/rom_78b2ac/orig.bin", 0x2c14, (0x2d34-0x2c14)
	.global gOvl_0200ad34
gOvl_0200ad34:
	.incbin "overlays/rom_78b2ac/orig.bin", 0x2d34

	.section .bss
	.global .Lm890_2ddc
	.global .Lm890_2de0
	.global .Lm890_2de4
	.global .Lm890_2de8
	.global .Lm890_2dec

	.lcomm	.Lm890_2ddc, 4
	.lcomm	.Lm890_2de0, 4
	.lcomm	.Lm890_2de4, 4
	.lcomm	.Lm890_2de8, 4
	.lcomm	.Lm890_2dec, 4
