	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm939_1bec
	.global gOvl_02009d3c
	.global .Lm939_1dcc
	.global gScript_918__02009e04
	.global gOvl_02009e14
	.global .Lm939_1f64
	.global .Lm939_1fc4
	.global .Lm939_21bc
	.global .Lm939_23b4
	.global .Lm939_250c

.Lm939_1bec:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1bec, (0x1d3c-0x1bec)
gOvl_02009d3c:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1d3c, (0x1dcc-0x1d3c)
.Lm939_1dcc:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1dcc, (0x1e04-0x1dcc)
gScript_918__02009e04:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1e04, (0x1e14-0x1e04)
gOvl_02009e14:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1e14, (0x1f64-0x1e14)
.Lm939_1f64:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1f64, (0x1fc4-0x1f64)
.Lm939_1fc4:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1fc4, (0x21bc-0x1fc4)
.Lm939_21bc:
	.incbin "overlays/rom_7c460c/orig.bin", 0x21bc, (0x23b4-0x21bc)
.Lm939_23b4:
	.incbin "overlays/rom_7c460c/orig.bin", 0x23b4, (0x250c-0x23b4)
.Lm939_250c:
	.incbin "overlays/rom_7c460c/orig.bin", 0x250c
