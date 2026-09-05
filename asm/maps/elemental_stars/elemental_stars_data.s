	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gScript_896__0200cbd0
	.global .Lm896_5088
	.global gOvl_0200cd88

gScript_896__0200cbd0:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4bd0, (0x4be4-0x4bd0)
	.global gScript_881__0200cbe4
	.global gScript_896__0200cbe4
gScript_881__0200cbe4:
gScript_896__0200cbe4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4be4, (0x4d88-0x4be4)
gOvl_0200cd88:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4d88, (0x4db8-0x4d88)
	.global gOvl_0200cdb8
gOvl_0200cdb8:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4db8, (0x4dc4-0x4db8)
	.global gOvl_0200cdc4
gOvl_0200cdc4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4dc4, (0x4fa4-0x4dc4)
	.global gOvl_0200cfa4
gOvl_0200cfa4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4fa4, (0x5088-0x4fa4)
.Lm896_5088:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5088, (0x50e4-0x5088)
	.global gOvl_0200d0e4
gOvl_0200d0e4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x50e4, (0x5102-0x50e4)
.Lm896_5102:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5102, (0x5120-0x5102)
	.global gScript_936__0200d120
gScript_936__0200d120:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5120, (0x5140-0x5120)
.Lm896_5140:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5140, (0x5168-0x5140)
.Lm896_5168:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5168
