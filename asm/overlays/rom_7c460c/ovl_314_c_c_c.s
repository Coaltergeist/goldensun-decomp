
	.section .data
	.global .L1bec
	.global gOvl_02009d3c
	.global .L1dcc
	.global gScript_918__02009e04
	.global gOvl_02009e14
	.global .L1f64
	.global .L1fc4
	.global .L21bc
	.global .L23b4
	.global .L250c

.L1bec:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1bec, (0x1d3c-0x1bec)
gOvl_02009d3c:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1d3c, (0x1dcc-0x1d3c)
.L1dcc:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1dcc, (0x1e04-0x1dcc)
gScript_918__02009e04:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1e04, (0x1e14-0x1e04)
gOvl_02009e14:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1e14, (0x1f64-0x1e14)
.L1f64:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1f64, (0x1fc4-0x1f64)
.L1fc4:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1fc4, (0x21bc-0x1fc4)
.L21bc:
	.incbin "overlays/rom_7c460c/orig.bin", 0x21bc, (0x23b4-0x21bc)
.L23b4:
	.incbin "overlays/rom_7c460c/orig.bin", 0x23b4, (0x250c-0x23b4)
.L250c:
	.incbin "overlays/rom_7c460c/orig.bin", 0x250c
