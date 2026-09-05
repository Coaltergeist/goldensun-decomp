	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm921_3190
	.global .Lm921_31a8
	.global .Lm921_31c0
	.global .Lm921_31d6
	.global gScript_921__0200a4f4
	.global .Lm921_2508
	.global gScript_921__0200a564
	.global .Lm921_31c0
	.global .Lm921_31d6
	.global .Lm921_29e0
	.global gOvl_0200aa58
	.global .Lm921_2ad0
	.global .Lm921_2c80
	.global .Lm921_2db8
	.global .Lm921_2798
	.global .Lm921_28a0

.Lm921_23f0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x23f0, (0x2430-0x23f0)
.Lm921_2430:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2430, (0x24f4-0x2430)
gScript_921__0200a4f4:
	.incbin "overlays/rom_7a7298/orig.bin", 0x24f4, (0x2508-0x24f4)
.Lm921_2508:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2508, (0x2564-0x2508)
gScript_921__0200a564:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2564, (0x25ec-0x2564)
	.global gScript_921__0200a5ec
gScript_921__0200a5ec:
	.incbin "overlays/rom_7a7298/orig.bin", 0x25ec, (0x264c-0x25ec)
	.global gScript_921__0200a64c
gScript_921__0200a64c:
	.incbin "overlays/rom_7a7298/orig.bin", 0x264c, (0x2670-0x264c)
	.global gScript_921__0200a670
gScript_921__0200a670:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2670, (0x26e0-0x2670)
	.global gScript_921__0200a6e0
gScript_921__0200a6e0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x26e0, (0x274c-0x26e0)
	.global gScript_921__0200a74c
gScript_921__0200a74c:
	.incbin "overlays/rom_7a7298/orig.bin", 0x274c, (0x2760-0x274c)
	.global gScript_921__0200a760
gScript_921__0200a760:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2760, (0x2798-0x2760)
.Lm921_2798:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2798, (0x28a0-0x2798)
.Lm921_28a0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x28a0, (0x2990-0x28a0)
	.global gOvl_0200a990
gOvl_0200a990:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2990, (0x29e0-0x2990)
.Lm921_29e0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x29e0, (0x2a58-0x29e0)
gOvl_0200aa58:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2a58, (0x2ad0-0x2a58)
.Lm921_2ad0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2ad0, (0x2c80-0x2ad0)
.Lm921_2c80:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2c80, (0x2db8-0x2c80)
.Lm921_2db8:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2db8, (0x3190-0x2db8)
.Lm921_3190:
	.incbin "overlays/rom_7a7298/orig.bin", 0x3190, (0x31a8-0x3190)
.Lm921_31a8:
	.incbin "overlays/rom_7a7298/orig.bin", 0x31a8, (0x31c0-0x31a8)
.Lm921_31c0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x31c0, (0x31d6-0x31c0)
.Lm921_31d6:
	.incbin "overlays/rom_7a7298/orig.bin", 0x31d6

	.section .bss
	.global .Lm921_31f0

	.lcomm	.Lm921_31f0, 0xc
