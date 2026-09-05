	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global ActorCmd_ARRAY_907__020091c0
	.global gScript_944__02009480
	.global .Lm907_1498
	.global .Lm907_1600
	.global .Lm907_16f0
	.global .Lm907_1738
	.global .Lm907_1744
	.global .Lm907_1a2c
	.global .Lm907_1bc4
	.global .Lm907_1cf0
	.global .Lm907_1d0c
	.global .Lm907_1d28
	.global .Lm907_11d4
	.global .Lm907_11ec
	.global .Lm907_130c
	.global .Lm907_136c
	.global gOvl_020093fc

ActorCmd_ARRAY_907__020091c0:
	.incbin "overlays/rom_79b154/orig.bin", 0x11c0, (0x11d4-0x11c0)
.Lm907_11d4:
	.incbin "overlays/rom_79b154/orig.bin", 0x11d4, (0x11ec-0x11d4)
.Lm907_11ec:
	.incbin "overlays/rom_79b154/orig.bin", 0x11ec, (0x130c-0x11ec)
.Lm907_130c:
	.incbin "overlays/rom_79b154/orig.bin", 0x130c, (0x136c-0x130c)
.Lm907_136c:
	.incbin "overlays/rom_79b154/orig.bin", 0x136c, (0x13fc-0x136c)
gOvl_020093fc:
	.incbin "overlays/rom_79b154/orig.bin", 0x13fc, (0x142c-0x13fc)
	.global gOvl_0200942c
gOvl_0200942c:
	.incbin "overlays/rom_79b154/orig.bin", 0x142c, (0x1480-0x142c)
gScript_944__02009480:
	.incbin "overlays/rom_79b154/orig.bin", 0x1480, (0x1498-0x1480)
.Lm907_1498:
	.incbin "overlays/rom_79b154/orig.bin", 0x1498, (0x1600-0x1498)
.Lm907_1600:
	.incbin "overlays/rom_79b154/orig.bin", 0x1600, (0x16f0-0x1600)
.Lm907_16f0:
	.incbin "overlays/rom_79b154/orig.bin", 0x16f0, (0x1738-0x16f0)
.Lm907_1738:
	.incbin "overlays/rom_79b154/orig.bin", 0x1738, (0x1744-0x1738)
.Lm907_1744:
	.incbin "overlays/rom_79b154/orig.bin", 0x1744, (0x1a2c-0x1744)
.Lm907_1a2c:
	.incbin "overlays/rom_79b154/orig.bin", 0x1a2c, (0x1bc4-0x1a2c)
.Lm907_1bc4:
	.incbin "overlays/rom_79b154/orig.bin", 0x1bc4, (0x1cf0-0x1bc4)
.Lm907_1cf0:
	.incbin "overlays/rom_79b154/orig.bin", 0x1cf0, (0x1d0c-0x1cf0)
.Lm907_1d0c:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d0c, (0x1d28-0x1d0c)
.Lm907_1d28:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d28, (0x1d3c-0x1d28)
	.global gOvl_02009d3c
gOvl_02009d3c:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d3c, (0x1d7c-0x1d3c)
	.global gScript_907__02009d7c
gScript_907__02009d7c:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d7c, (0x1d88-0x1d7c)
.Lm907_1d88:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d88
