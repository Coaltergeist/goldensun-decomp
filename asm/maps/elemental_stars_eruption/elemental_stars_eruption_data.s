	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm897_3684
	.global gScript_897__0200ba00
	.global gOvl_0200b6d4
	.global gOvl_0200b704
	.global gOvl_0200b710
	.global gOvl_0200b998

	.incbin "overlays/rom_791794/orig.bin", 0x362c, (0x3684-0x362c)
.Lm897_3684:
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
.Lm897_3a0c:
	.incbin "overlays/rom_791794/orig.bin", 0x3a0c, (0x3a2a-0x3a0c)
.Lm897_3a2a:
	.incbin "overlays/rom_791794/orig.bin", 0x3a2a, (0x3a48-0x3a2a)
.Lm897_3a48:
	.incbin "overlays/rom_791794/orig.bin", 0x3a48, (0x3a68-0x3a48)
.Lm897_3a68:
	.incbin "overlays/rom_791794/orig.bin", 0x3a68, (0x3a90-0x3a68)
.Lm897_3a90:
	.incbin "overlays/rom_791794/orig.bin", 0x3a90

	.section .bss
	.global .Lm897_3ac0
	.global .Lm897_3b00
	.global .Lm897_3b10
	.global .Lm897_3b40
	.global .Lm897_3b68
	.global .Lm897_3b6c
	.global .Lm897_3b70

	.lcomm	.Lm897_unused_3ab8, 4
	.lcomm	.Lm897_unused_3abc, 4
	.lcomm	.Lm897_3ac0, 0x40
	.lcomm	.Lm897_3b00, 4
	.lcomm	.Lm897_unused_3b04, 4
	.lcomm	.Lm897_unused_3b08, 4
	.lcomm	.Lm897_unused_3b0c, 4
	.lcomm	.Lm897_3b10, 0x28
	.lcomm	.Lm897_unused_3b38, 4
	.lcomm	.Lm897_unused_3b3c, 4
	.lcomm	.Lm897_3b40, 0x28
	.lcomm	.Lm897_3b68, 4
	.lcomm	.Lm897_3b6c, 4
	.lcomm	.Lm897_3b70, 4
