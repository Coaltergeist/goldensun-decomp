	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm967_1734
	.global .Lm967_189c
	.global .Lm967_1974
	.global gOvl_02009690
	.global .Lm967_16b0

	.global ActorCmd_ARRAY_944__02009314
	.global ActorCmd_ARRAY_967__02009314
ActorCmd_ARRAY_944__02009314:
ActorCmd_ARRAY_967__02009314:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1314, (0x1438-0x1314)
	.global gOvl_02009438
gOvl_02009438:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1438, (0x1690-0x1438)
gOvl_02009690:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1690, (0x16b0-0x1690)
.Lm967_16b0:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x16b0, (0x16d0-0x16b0)
	.global gOvl_020096d0
gOvl_020096d0:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x16d0, (0x1734-0x16d0)
.Lm967_1734:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1734, (0x189c-0x1734)
.Lm967_189c:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x189c, (0x1974-0x189c)
.Lm967_1974:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1974, (0x1a94-0x1974)
.Lm967_1a94:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1a94, (0x1ca4-0x1a94)
	.global gScript_887__02009ca4
gScript_887__02009ca4:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1ca4, (0x1eb4-0x1ca4)
.Lm967_1eb4:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x1eb4, (0x2010-0x1eb4)
.Lm967_2010:
	.incbin "overlays/rom_7f21b8/orig.bin", 0x2010
