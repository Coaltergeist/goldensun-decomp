	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gScript_930__0200962c
	.global gScript_930__020096b8
	.global .Lm930_1788
	.global .Lm930_179e
	.global .Lm930_1918
	.global .Lm930_1a38
	.global .Lm930_17b4
	.global .Lm930_1844

	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1620, (0x162c-0x1620)
gScript_930__0200962c:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x162c, (0x16b8-0x162c)
gScript_930__020096b8:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x16b8, (0x1730-0x16b8)
	.global gScript_930__02009730
gScript_930__02009730:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1730, (0x1788-0x1730)
.Lm930_1788:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1788, (0x179e-0x1788)
.Lm930_179e:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x179e, (0x17b4-0x179e)
.Lm930_17b4:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x17b4, (0x1844-0x17b4)
.Lm930_1844:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1844, (0x18ec-0x1844)
	.global gOvl_020098ec
gOvl_020098ec:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x18ec, (0x1918-0x18ec)
.Lm930_1918:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1918, (0x1a38-0x1918)
.Lm930_1a38:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1a38, (0x1b10-0x1a38)
.Lm930_1b10:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1b10, (0x1c9c-0x1b10)
.Lm930_1c9c:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1c9c
