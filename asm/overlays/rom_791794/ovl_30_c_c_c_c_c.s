	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .L3684
	.global gScript_897__0200ba00
	.global gOvl_0200b6d4
	.global gOvl_0200b704
	.global gOvl_0200b710
	.global gOvl_0200b998

	.incbin "overlays/rom_791794/orig.bin", 0x362c, (0x3684-0x362c)
.L3684:
	.incbin "overlays/rom_791794/orig.bin", 0x3684, (0x36d4-0x3684)
gOvl_0200b6d4:
	.incbin "overlays/rom_791794/orig.bin", 0x36d4, (0x3704-0x36d4)
gOvl_0200b704:
	.incbin "overlays/rom_791794/orig.bin", 0x3704, (0x3710-0x3704)
gOvl_0200b710:
	.incbin "overlays/rom_791794/orig.bin", 0x3710, (0x3998-0x3710)
gOvl_0200b998:
	.incbin "overlays/rom_791794/orig.bin", 0x3998, (0x3a00-0x3998)
gScript_897__0200ba00:
	.incbin "overlays/rom_791794/orig.bin", 0x3a00, (0x3a0c-0x3a00)
	.global .L3a0c
.L3a0c:
	.incbin "overlays/rom_791794/orig.bin", 0x3a0c, (0x3a2a-0x3a0c)
	.global .L3a2a
.L3a2a:
	.incbin "overlays/rom_791794/orig.bin", 0x3a2a, (0x3a48-0x3a2a)
	.global .L3a48
.L3a48:
	.incbin "overlays/rom_791794/orig.bin", 0x3a48, (0x3a68-0x3a48)
	.global .L3a68
.L3a68:
	.incbin "overlays/rom_791794/orig.bin", 0x3a68, (0x3a90-0x3a68)
	.global .L3a90
.L3a90:
	.incbin "overlays/rom_791794/orig.bin", 0x3a90

	.section .bss
	.global .L3ac0
	.global .L3b00
	.global .L3b10
	.global .L3b40
	.global .L3b68
	.global .L3b6c
	.global .L3b70

	.lcomm	.Lunused_3ab8, 4
	.lcomm	.Lunused_3abc, 4
	.lcomm	.L3ac0, 0x40
	.lcomm	.L3b00, 4
	.lcomm	.Lunused_3b04, 4
	.lcomm	.Lunused_3b08, 4
	.lcomm	.Lunused_3b0c, 4
	.lcomm	.L3b10, 0x28
	.lcomm	.Lunused_3b38, 4
	.lcomm	.Lunused_3b3c, 4
	.lcomm	.L3b40, 0x28
	.lcomm	.L3b68, 4
	.lcomm	.L3b6c, 4
	.lcomm	.L3b70, 4
