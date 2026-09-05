	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm909_299c
	.global .Lm909_29b4
	.global .Lm909_2c9c
	.global .Lm909_2ca8
	.global gOvl_0200a638

	.global gOvl_0200a5c0
	.global ActorCmd_ARRAY_909__0200a5c0
gOvl_0200a5c0:
ActorCmd_ARRAY_909__0200a5c0:
	.incbin "overlays/rom_79c738/orig.bin", 0x25c0, (0x25d4-0x25c0)
	.global gScript_909__0200a5d4
gScript_909__0200a5d4:
	.incbin "overlays/rom_79c738/orig.bin", 0x25d4, (0x2638-0x25d4)
gOvl_0200a638:
	.incbin "overlays/rom_79c738/orig.bin", 0x2638, (0x2920-0x2638)
	.global gOvl_0200a920
gOvl_0200a920:
	.incbin "overlays/rom_79c738/orig.bin", 0x2920, (0x299c-0x2920)
.Lm909_299c:
	.incbin "overlays/rom_79c738/orig.bin", 0x299c, (0x29b4-0x299c)
.Lm909_29b4:
	.incbin "overlays/rom_79c738/orig.bin", 0x29b4, (0x2c9c-0x29b4)
.Lm909_2c9c:
	.incbin "overlays/rom_79c738/orig.bin", 0x2c9c, (0x2ca8-0x2c9c)
.Lm909_2ca8:
	.incbin "overlays/rom_79c738/orig.bin", 0x2ca8
