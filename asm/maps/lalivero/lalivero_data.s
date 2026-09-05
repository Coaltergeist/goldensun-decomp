	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm966_1d04
	.global .Lm966_1ee4
	.global .Lm966_1900
	.global .Lm966_1a98
	.global .Lm966_1ca8
	.global .Lm966_1cd8
	.global .Lm966_1cee
	.global gOvl_0200975c

	.global ActorCmd_ARRAY_966__02009638
ActorCmd_ARRAY_966__02009638:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1638, (0x175c-0x1638)
gOvl_0200975c:
	.incbin "overlays/rom_7f148c/orig.bin", 0x175c, (0x18c4-0x175c)
	.global gOvl_020098c4
gOvl_020098c4:
	.incbin "overlays/rom_7f148c/orig.bin", 0x18c4, (0x1900-0x18c4)
.Lm966_1900:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1900, (0x1a98-0x1900)
.Lm966_1a98:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1a98, (0x1ca8-0x1a98)
.Lm966_1ca8:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1ca8, (0x1cd8-0x1ca8)
.Lm966_1cd8:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1cd8, (0x1cee-0x1cd8)
.Lm966_1cee:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1cee, (0x1d04-0x1cee)
.Lm966_1d04:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1d04, (0x1ee4-0x1d04)
.Lm966_1ee4:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1ee4
