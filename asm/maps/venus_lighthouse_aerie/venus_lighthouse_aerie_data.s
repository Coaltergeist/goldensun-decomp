	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gScript_969__0200dfc4
	.global gScript_969__0200e004
	.global gScript_969__0200e03c
	.global gScript_969__0200e074
	.global gScript_969__0200e088
	.global gScript_969__0200e0ac
	.global gScript_969__0200e0d0
	.global gScript_969__0200e0f4
	.global gScript_969__0200e130
	.global gScript_969__0200e16c
	.global gScript_969__0200e22c
	.global gScript_969__0200e324
	.global gScript_969__0200e360
	.global gScript_969__0200e39c
	.global gScript_969__0200e3c0
	.global gOvl_0200e464
	.global gOvl_0200e478
	.global .Lm969_66e8
	.global gOvl_0200e6ec
	.global gOvl_0200e3d4

gScript_969__0200dfc4:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x5fc4, (0x6004-0x5fc4)
gScript_969__0200e004:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6004, (0x603c-0x6004)
gScript_969__0200e03c:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x603c, (0x6074-0x603c)
gScript_969__0200e074:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6074, (0x6088-0x6074)
gScript_969__0200e088:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6088, (0x60ac-0x6088)
gScript_969__0200e0ac:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x60ac, (0x60d0-0x60ac)
gScript_969__0200e0d0:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x60d0, (0x60f4-0x60d0)
gScript_969__0200e0f4:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x60f4, (0x6130-0x60f4)
gScript_969__0200e130:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6130, (0x616c-0x6130)
gScript_969__0200e16c:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x616c, (0x61cc-0x616c)
	.global gScript_969__0200e1cc
gScript_969__0200e1cc:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x61cc, (0x622c-0x61cc)
gScript_969__0200e22c:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x622c, (0x62d0-0x622c)
	.global gScript_969__0200e2d0
gScript_969__0200e2d0:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x62d0, (0x6324-0x62d0)
gScript_969__0200e324:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6324, (0x6360-0x6324)
gScript_969__0200e360:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6360, (0x639c-0x6360)
gScript_969__0200e39c:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x639c, (0x63c0-0x639c)
gScript_969__0200e3c0:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x63c0, (0x63d4-0x63c0)
gOvl_0200e3d4:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x63d4, (0x6464-0x63d4)
gOvl_0200e464:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6464, (0x6478-0x6464)
gOvl_0200e478:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6478, (0x66e8-0x6478)
.Lm969_66e8:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x66e8, (0x66ec-0x66e8)
gOvl_0200e6ec:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x66ec, (0x6734-0x66ec)
	.global gScript_969__0200e734
gScript_969__0200e734:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6734

	.section .bss
	.global .Lm969_6760
	.global .Lm969_6764

	.lcomm	.Lm969_6760, 4
	.lcomm	.Lm969_6764, 4
